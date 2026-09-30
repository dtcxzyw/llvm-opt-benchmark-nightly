Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsfIwuYbgPzJV_5uu_du10du_regular:bb.a
  %.sroa.26.1135.i.i = phi i64 [ %i.cn, %bb.m ], [ %i.ck, %bb.j ]
  %.sroa.084.0134.i.i = phi i64 [ %i.cy, %bb.m ], [ 0, %bb.j ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.cn = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.co = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0
  %i.cq = extractvalue { i64, i1 } %i.co, 1
  br i1 %i.cq, label %.loopexit.i, label %bb.k, !prof !12

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cr = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !1087, !noalias !1088, !noundef !8
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -48                  ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 10
  br i1 %i.cu, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cp, i64 %i.cv) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  br i1 %i.cx, label %.loopexit.i, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.cy = extractvalue { i64, i1 } %i.cw, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.n
  %.sroa.0.2140.i.i = phi ptr [ %i.df, %bb.n ], [ %i.cj, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.de, %bb.n ], [ %i.ck, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.dh, %bb.n ], [ 0, %.preheader114.i.i ]
  %i.cz = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !1087, !noalias !1088, !noundef !8
  %i.da = zext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10
  br i1 %i.dc, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %.lr.ph141.i.i
  %i.dd = mul i64 %.sroa.084.2138.i.i, 10
  %i.de = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.dg = zext nneg i32 %i.db to i64
  %i.dh = sub i64 %i.dd, %i.dg                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.de, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.o:                                             ; preds = %bb.i, %bb.h
  %.sroa.26.0.i.i = phi i64 [ %i.ci, %bb.i ], [ %.sroa.8.0.copyload7.i, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ch, %bb.i ], [ %.sroa.5.0.copyload4.i, %bb.h ] ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.di, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i.i = phi ptr [ %i.dj, %bb.r ], [ %.sroa.0.0.i.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.dk, %bb.r ], [ %.sroa.26.0.i.i, %bb.o ]
  %.sroa.084.3143.i.i = phi i64 [ %i.dv, %bb.r ], [ 0, %bb.o ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.dk = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.dl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.dm = extractvalue { i64, i1 } %i.dl, 0
  %i.dn = extractvalue { i64, i1 } %i.dl, 1
  br i1 %i.dn, label %.loopexit.i, label %bb.p, !prof !12

bb.p:                                             ; preds = %.preheader111.i.i
  %i.do = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !1087, !noalias !1088, !noundef !8
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nsw i32 %i.dp, -48                  ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 10
  br i1 %i.dr, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dm, i64 %i.ds) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.du, label %.loopexit.i, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.dv = extractvalue { i64, i1 } %i.dt, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.s
  %.sroa.0.4149.i.i = phi ptr [ %i.ec, %bb.s ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.eb, %bb.s ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ee, %bb.s ], [ 0, %.preheader.i.i ]
  %i.dw = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !1087, !noalias !1088, !noundef !8
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -48                  ; 2 uses
  %i.dz = icmp ult i32 %i.dy, 10
  br i1 %i.dz, label %bb.s, label %.loopexit.i

bb.s:                                             ; preds = %.lr.ph150.i.i
  %i.ea = mul i64 %.sroa.084.4147.i.i, 10
  %i.eb = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.ed = zext nneg i32 %i.dy to i64
  %i.ee = add i64 %i.ea, %i.ed                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.loopexit.i:                                      ; preds = %bb.l, %bb.k, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.q, %bb.p, %.preheader111.i.i, %.lr.ph150.i.i, %bb.g, %bb.g, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsfIwuYbgPzJV_5uu_du.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1083
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i, i64 noundef %.sroa.8.0.copyload7.i) #28, !noalias !1083
  %i.ef = load i8, ptr %i.x, align 8, !range !17, !noalias !1083, !noundef !8
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i.i, %.preheader114.i.i
  %.sroa.1511.0.i = phi i64 [ %i.ee, %bb.s ], [ %i.dh, %bb.n ], [ %i.dv, %bb.r ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.cy, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, i64 noundef %.sroa.1511.0.i) #25, !noalias !1083
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !1083
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1083
  %i.eh = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.eh, label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1089
  br label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit

bb.v:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1083
  store i64 %.sroa.0.0.copyload1.i, ptr %i.w, align 8, !noalias !1083
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.5.0.copyload4.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !1083
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.8.0.copyload7.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1083
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #25, !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !1083
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1083
  br label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit

bb.w:                                             ; preds = %.loopexit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !noalias !1083, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, double noundef %i.ej) #25, !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1083
  br label %bb.t

_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit:  ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1083
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1090
  %i.ek = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1090 ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.x:                                             ; preds = %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1090
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regular0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %.sroa.4466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %.sink1.i, ptr %.sroa.4466.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.ek, ptr %i.em, align 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @71, ptr %i.en, align 8
  store i128 2, ptr %i.bm, align 16
  %.val166 = load i64, ptr %5, align 8, !range !31, !noundef !8
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val167 = load ptr, ptr %i.eo, align 8
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1s_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.bn, i64 %.val166, ptr %.val167, ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.bm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.ep = load i128, ptr %i.bn, align 16, !range !30, !noundef !8
  %.not132.a = icmp eq i128 %i.ep, -1
  br i1 %.not132.a, label %bb.fj, label %bb.fh

bb.y:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %.sink1.i, ptr %i.bl, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.bz, ptr %i.eq, align 8
  call void @_RNvXsz_NtCs2vKOLqTMYjT_3std2fsNtB5_7ReadDirNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  %i.er = load i64, ptr %i.bk, align 8, !range !11, !noundef !8
  %i.es = trunc nuw i64 %i.er to i1
  br i1 %i.es, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !range !32 ; 3 uses
  %i.ez = icmp ne i64 %i.ey, -9223372036854775807 ; 2 uses
  %i.fa = icmp ne i64 %i.ey, -9223372036854775808 ; 2 uses
  %i.fb = add i64 %.sroa.016.0, 1                 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.42.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.53.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.4.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i193 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx2.i199 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val162 = load i64, ptr %5, align 8, !range !31 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.val163 = load ptr, ptr %i.fl, align 8         ; 2 uses
  %.sroa.10.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %.sroa.12.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %.sroa.15368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 108 ; 2 uses
  %.sroa.17376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 236
  %.sroa.19389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 256
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 264
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 280
  %.not = icmp eq i64 %i.ey, -9223372036854775808
  %spec.select.sroa.sel345.v.sroa.sel.v.sroa.sel.v = select i1 %.not119, ptr %i.bo, ptr %6
  %spec.select.sroa.sel345.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel345.v.sroa.sel.v.sroa.sel.v, i64 24
  %.sroa.gep694 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.sroa.gep695 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %spec.select.sroa.sel348.v.sroa.sel = select i1 %.not119, ptr %.sroa.gep694, ptr %.sroa.gep695
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %.idx = mul nuw nsw i64 %i.fp, 56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx
  %i.fr = icmp eq i64 %i.fp, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.6507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.8510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fw = load i8, ptr %i.fv, align 4, !range !17
  %i.fx = trunc nuw i8 %i.fw to i1
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.4.0..sroa_idx.i284 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i285 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.5436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 51
  %i.gg = load i8, ptr %i.gf, align 1, !range !17
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gn = load i8, ptr %i.gm, align 8, !range !17
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = add i64 %3, 1                           ; 3 uses
  %.sroa.093.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.093.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.093.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.093.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %.sroa.093.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  %.sroa.093.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %.sroa.093.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %.sroa.093.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 236
  %.sroa.093.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %.sroa.093.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 248
  %.sroa.093.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %.sroa.093.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %.sroa.093.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 272
  %.sroa.093.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.gr = load i8, ptr %i.gq, align 2, !range !17
  %i.gs = trunc nuw i8 %i.gr to i1
  %.sroa.10.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.12.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.15.0..sroa_idx367 = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.15368.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %.sroa.17.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.at, i64 108
  %.sroa.17376.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %.sroa.18.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  %.sroa.19.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.at, i64 236
  %.sroa.19389.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %.sroa.21.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %i.at, i64 248
  %.sroa.25.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  %.sroa.27.0..sroa_idx406 = getelementptr inbounds nuw i8, ptr %i.at, i64 264
  %.sroa.28.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %i.at, i64 272
  %.sroa.29.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %i.at, i64 280
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %.sroa.8113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 236
  %.sroa.9114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 264
  %.sroa.11116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 280
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.gu = load i8, ptr %i.gt, align 1, !range !17
  %i.gv = trunc nuw i8 %i.gu to i1
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 236
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 264
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 272
  %.sroa.1177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 280
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 288
  %.val156 = load i64, ptr %5, align 8, !range !31 ; 3 uses
  %.val157 = load ptr, ptr %i.fl, align 8         ; 3 uses
  %.sroa.4.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.42.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.53.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx.i.i236 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i237 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx2.i243 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %brmerge = select i1 %i.fa, i1 true, i1 %i.fc
  %.sroa.016.0.mux = select i1 %i.fa, i64 %.sroa.016.0, i64 %i.fb
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph626, %.backedge
  %.sroa.021.0.copyload = load ptr, ptr %i.et, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.he = icmp eq ptr %.sroa.021.0.copyload, null
  br i1 %i.he, label %bb.ah, label %bb.ai

._crit_edge627:                                   ; preds = %.backedge, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.hf = load ptr, ptr %i.bl, align 8, !alias.scope !1095, !nonnull !8, !noundef !8
  %i.hg = atomicrmw sub ptr %i.hf, i64 1 release, align 8, !noalias !1095
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.aa, label %bb.c

bb.aa:                                            ; preds = %._crit_edge627
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #28
  br label %bb.c

bb.ab:                                            ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.hi = trunc i128 %.sroa.9.0.copyload to i64
  %i.hj = mul i64 %i.hi, -1065810590584100411
  %i.hk = lshr i128 %.sroa.9.0.copyload, 64
  %i.hl = trunc nuw i128 %i.hk to i64
  %i.hm = add i64 %i.hj, %i.hl
  %i.hn = mul i64 %i.hm, -1065810590584100411
  %i.ho = add i64 %i.hn, %.sroa.11.0.copyload
  %i.hp = mul i64 %i.ho, -1065810590584100411     ; 2 uses
  %i.hq = call noundef i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.hr = lshr i64 %i.hq, 57
  %i.hs = trunc nuw nsw i64 %i.hr to i8
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not119, ptr %i.bo, ptr %6
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.ht = load i64, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !1101, !noalias !1102, !noundef !8 ; 3 uses
  %i.hu = load ptr, ptr %spec.select, align 8, !alias.scope !1101, !noalias !1102, !nonnull !8, !noundef !8 ; 4 uses
  %i.hv = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.ip, %bb.ae ]
  %.pn.i.i.i.i = phi i64 [ %i.hq, %bb.ab ], [ %i.iq, %bb.ae ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ht ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !noalias !1103 ; 2 uses
  %i.hy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hw
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.io, %bb.ad ], [ %i.hz, %bb.ac ] ; 3 uses
  %i.ia = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = add i64 %.sroa.01.0.i.i.i.i.i, %i.ib
  %i.id = and i64 %i.ic, %i.ht                    ; 3 uses
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds [32 x i8], ptr %i.hu, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.ig, align 16, !noalias !1104, !noundef !8
  %i.ih = getelementptr i8, ptr %i.if, i64 -16
  %.val3.i.i.i.i.i = load i64, ptr %i.ih, align 16, !noalias !1104
  %i.ii = icmp eq i128 %.sroa.9.0.copyload, %.val2.i.i.i.i.i
  %i.ij = icmp eq i64 %.sroa.11.0.copyload, %.val3.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBS_.exit.i.i.i, label %bb.ad, !prof !14

._crit_edge.i.i.i.i:                              ; preds = %bb.ad, %bb.ac
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.il = bitcast <16 x i1> %i.ik to i16
  %i.im = icmp eq i16 %i.il, 0
  br i1 %i.im, label %bb.ae, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeBO_EBQ_.exit, !prof !12

end_hunk_0
begin_hunk_1_@_RNvCsfIwuYbgPzJV_5uu_du10du_regular:bb.a
.lr.ph.i.i245:                                    ; preds = %bb.bn, %bb.bq
  %.sroa.0.1136.i.i246 = phi ptr [ %i.ne, %bb.bq ], [ %i.nb, %bb.bn ] ; 2 uses
  %.sroa.26.1135.i.i247 = phi i64 [ %i.nf, %bb.bq ], [ %i.nc, %bb.bn ]
  %.sroa.084.0134.i.i248 = phi i64 [ %i.nq, %bb.bq ], [ 0, %bb.bn ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i246, i64 1
  %i.nf = add nsw i64 %.sroa.26.1135.i.i247, -1   ; 2 uses
  %i.ng = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i248, i64 10) ; 2 uses
  %i.nh = extractvalue { i64, i1 } %i.ng, 0
  %i.ni = extractvalue { i64, i1 } %i.ng, 1
  br i1 %i.ni, label %.loopexit.i242, label %bb.bo, !prof !12

bb.bo:                                            ; preds = %.lr.ph.i.i245
  %i.nj = load i8, ptr %.sroa.0.1136.i.i246, align 1, !alias.scope !1126, !noalias !1127, !noundef !8
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.bp, label %.loopexit.i242

bb.bp:                                            ; preds = %bb.bo
  %i.nn = zext nneg i32 %i.nl to i64
  %i.no = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.nh, i64 %i.nn) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  br i1 %i.np, label %.loopexit.i242, label %bb.bq, !prof !12

bb.bq:                                            ; preds = %bb.bp
  %i.nq = extractvalue { i64, i1 } %i.no, 0       ; 2 uses
  %.not102.i.i249 = icmp eq i64 %i.nf, 0
  br i1 %.not102.i.i249, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250, label %.lr.ph.i.i245

.lr.ph141.i.i254:                                 ; preds = %.preheader114.i.i252, %bb.br
  %.sroa.0.2140.i.i255 = phi ptr [ %i.nx, %bb.br ], [ %i.nb, %.preheader114.i.i252 ] ; 2 uses
  %.sroa.26.2139.i.i256 = phi i64 [ %i.nw, %bb.br ], [ %i.nc, %.preheader114.i.i252 ]
  %.sroa.084.2138.i.i257 = phi i64 [ %i.nz, %bb.br ], [ 0, %.preheader114.i.i252 ]
  %i.nr = load i8, ptr %.sroa.0.2140.i.i255, align 1, !alias.scope !1126, !noalias !1127, !noundef !8
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nsw i32 %i.ns, -48                  ; 2 uses
  %i.nu = icmp ult i32 %i.nt, 10
  br i1 %i.nu, label %bb.br, label %.loopexit.i242

bb.br:                                            ; preds = %.lr.ph141.i.i254
  %i.nv = mul i64 %.sroa.084.2138.i.i257, 10
  %i.nw = add nsw i64 %.sroa.26.2139.i.i256, -1   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i255, i64 1
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = sub i64 %i.nv, %i.ny                    ; 2 uses
  %.not103.i.i258 = icmp eq i64 %i.nw, 0
  br i1 %.not103.i.i258, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250, label %.lr.ph141.i.i254

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.26.0.i.i259 = phi i64 [ %i.na, %bb.bm ], [ %.sroa.8.0.copyload7.i241, %bb.bl ] ; 4 uses
  %.sroa.0.0.i.i260 = phi ptr [ %i.mz, %bb.bm ], [ %.sroa.5.0.copyload4.i240, %bb.bl ] ; 2 uses
  %i.oa = icmp samesign ult i64 %.sroa.26.0.i.i259, 16
  br i1 %i.oa, label %.preheader.i.i266, label %.preheader111.i.i261

.preheader.i.i266:                                ; preds = %bb.bs
  %.not105146.i.i267 = icmp eq i64 %.sroa.26.0.i.i259, 0
  br i1 %.not105146.i.i267, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250, label %.lr.ph150.i.i268

.preheader111.i.i261:                             ; preds = %bb.bs, %bb.bv
  %.sroa.0.3145.i.i262 = phi ptr [ %i.ob, %bb.bv ], [ %.sroa.0.0.i.i260, %bb.bs ] ; 2 uses
  %.sroa.26.3144.i.i263 = phi i64 [ %i.oc, %bb.bv ], [ %.sroa.26.0.i.i259, %bb.bs ]
  %.sroa.084.3143.i.i264 = phi i64 [ %i.on, %bb.bv ], [ 0, %bb.bs ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i262, i64 1
  %i.oc = add nsw i64 %.sroa.26.3144.i.i263, -1   ; 2 uses
  %i.od = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i264, i64 10) ; 2 uses
  %i.oe = extractvalue { i64, i1 } %i.od, 0
  %i.of = extractvalue { i64, i1 } %i.od, 1
  br i1 %i.of, label %.loopexit.i242, label %bb.bt, !prof !12

bb.bt:                                            ; preds = %.preheader111.i.i261
  %i.og = load i8, ptr %.sroa.0.3145.i.i262, align 1, !alias.scope !1126, !noalias !1127, !noundef !8
  %i.oh = zext i8 %i.og to i32
  %i.oi = add nsw i32 %i.oh, -48                  ; 2 uses
  %i.oj = icmp ult i32 %i.oi, 10
  br i1 %i.oj, label %bb.bu, label %.loopexit.i242

bb.bu:                                            ; preds = %bb.bt
  %i.ok = zext nneg i32 %i.oi to i64
  %i.ol = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.oe, i64 %i.ok) ; 2 uses
  %i.om = extractvalue { i64, i1 } %i.ol, 1
  br i1 %i.om, label %.loopexit.i242, label %bb.bv, !prof !12

bb.bv:                                            ; preds = %bb.bu
  %i.on = extractvalue { i64, i1 } %i.ol, 0       ; 2 uses
  %.not104.i.i265 = icmp eq i64 %i.oc, 0
  br i1 %.not104.i.i265, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250, label %.preheader111.i.i261

.lr.ph150.i.i268:                                 ; preds = %.preheader.i.i266, %bb.bw
  %.sroa.0.4149.i.i269 = phi ptr [ %i.ou, %bb.bw ], [ %.sroa.0.0.i.i260, %.preheader.i.i266 ] ; 2 uses
  %.sroa.26.4148.i.i270 = phi i64 [ %i.ot, %bb.bw ], [ %.sroa.26.0.i.i259, %.preheader.i.i266 ]
  %.sroa.084.4147.i.i271 = phi i64 [ %i.ow, %bb.bw ], [ 0, %.preheader.i.i266 ]
  %i.oo = load i8, ptr %.sroa.0.4149.i.i269, align 1, !alias.scope !1126, !noalias !1127, !noundef !8
  %i.op = zext i8 %i.oo to i32
  %i.oq = add nsw i32 %i.op, -48                  ; 2 uses
  %i.or = icmp ult i32 %i.oq, 10
  br i1 %i.or, label %bb.bw, label %.loopexit.i242

bb.bw:                                            ; preds = %.lr.ph150.i.i268
  %i.os = mul i64 %.sroa.084.4147.i.i271, 10
  %i.ot = add nsw i64 %.sroa.26.4148.i.i270, -1   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i269, i64 1
  %i.ov = zext nneg i32 %i.oq to i64
  %i.ow = add i64 %i.os, %i.ov                    ; 2 uses
  %.not105.i.i272 = icmp eq i64 %i.ot, 0
  br i1 %.not105.i.i272, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250, label %.lr.ph150.i.i268

.loopexit.i242:                                   ; preds = %bb.bp, %bb.bo, %.lr.ph.i.i245, %.lr.ph141.i.i254, %bb.bu, %bb.bt, %.preheader111.i.i261, %.lr.ph150.i.i268, %bb.bk, %bb.bk, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsfIwuYbgPzJV_5uu_du.exit.i238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1122
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i240, i64 noundef %.sroa.8.0.copyload7.i241) #28, !noalias !1122
  %i.ox = load i8, ptr %i.i, align 8, !range !17, !noalias !1122, !noundef !8
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.bz, label %bb.ca

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250: ; preds = %bb.bq, %bb.br, %bb.bv, %bb.bw, %.preheader.i.i266, %.preheader114.i.i252
  %.sroa.1511.0.i251 = phi i64 [ %i.ow, %bb.bw ], [ %i.nz, %bb.br ], [ %i.on, %bb.bv ], [ 0, %.preheader.i.i266 ], [ 0, %.preheader114.i.i252 ], [ %i.nq, %bb.bq ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, i64 noundef %.sroa.1511.0.i251) #25, !noalias !1122
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1122
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1122
  %i.oz = icmp eq i64 %.sroa.0.0.copyload1.i239, 0
  br i1 %i.oz, label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i240, i64 noundef %.sroa.0.0.copyload1.i239, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1128
  br label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit

bb.bz:                                            ; preds = %.loopexit.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1122
  store i64 %.sroa.0.0.copyload1.i239, ptr %i.h, align 8, !noalias !1122
  store ptr %.sroa.5.0.copyload4.i240, ptr %.sroa.5.0..sroa_idx2.i243, align 8, !noalias !1122
  store i64 %.sroa.8.0.copyload7.i241, ptr %.sroa.8.0..sroa_idx.i244, align 8, !noalias !1122
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h) #25, !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1122
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1122
  br label %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit

bb.ca:                                            ; preds = %.loopexit.i242
  %i.pa = load double, ptr %i.gz, align 8, !noalias !1122, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, double noundef %i.pa) #25, !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1122
  br label %bb.bx

_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit: ; preds = %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0469, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1129
  %i.pb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1129 ; 4 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.cb, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit275, !prof !12

bb.cb:                                            ; preds = %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1129
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit275: ; preds = %_RNCNvCsfIwuYbgPzJV_5uu_du10du_regulars0_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0469, i64 24, i1 false)
  %.sroa.4470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  store ptr %i.mv, ptr %.sroa.4470.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0469)
  store ptr %i.pb, ptr %i.ha, align 16
  store ptr @71, ptr %i.hb, align 8
  store i128 2, ptr %i.an, align 16
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1s_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.ao, i64 %.val156, ptr %.val157, ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.an) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.pd = load i128, ptr %i.ao, align 16, !range !30, !noundef !8
  %.not129.a = icmp eq i128 %i.pd, -1
  br i1 %.not129.a, label %bb.ev, label %bb.et

bb.cc:                                            ; preds = %bb.am
  %.sroa.10.0.copyload = load i128, ptr %.sroa.10.0..sroa_idx354, align 16 ; 9 uses
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx360, align 16 ; 8 uses
  %.sroa.15368.0.copyload = load i32, ptr %.sroa.15368.0..sroa_idx, align 8 ; 4 uses
  %.sroa.17376.0.copyload = load i64, ptr %.sroa.17376.0..sroa_idx, align 16 ; 6 uses
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 8 ; 6 uses
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4 ; 2 uses
  %.sroa.19389.0.copyload = load i64, ptr %.sroa.19389.0..sroa_idx, align 16 ; 6 uses
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 9 uses
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 16 ; 4 uses
  %i.pe = load <2 x i64>, ptr %.sroa.27.0..sroa_idx, align 8 ; 5 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8 ; 2 uses
  br i1 %.sroa.029.0.not, label %.loopexit562, label %bb.cd

.loopexit562:                                     ; preds = %._crit_edge.i.i, %bb.cf, %bb.cd, %bb.ce, %bb.cc
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  br label %bb.cl

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 %i.ez)
  br i1 %.not, label %bb.ce, label %.loopexit562

bb.ce:                                            ; preds = %bb.cd
  %i.pf = and i32 %.sroa.15368.0.copyload, 61440
  %i.pg = icmp eq i32 %i.pf, 16384
  %i.ph = trunc nuw i128 %i.kk to i1
  %or.cond = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond, label %bb.cf, label %.loopexit562

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.pi = load i64, ptr %spec.select.sroa.sel345.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !1130, !noundef !8
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %.loopexit562, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pk = trunc i128 %.sroa.10.0.copyload to i64
  %i.pl = mul i64 %i.pk, -1065810590584100411
  %i.pm = lshr i128 %.sroa.10.0.copyload, 64
  %i.pn = trunc nuw i128 %i.pm to i64
  %i.po = add i64 %i.pl, %i.pn
  %i.pp = mul i64 %i.po, -1065810590584100411
  %i.pq = add i64 %i.pp, %.sroa.12.0.copyload
  %i.pr = mul i64 %i.pq, -1065810590584100411     ; 2 uses
  %i.ps = call noundef i64 @llvm.fshl.i64(i64 %i.pr, i64 %i.pr, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.pt = lshr i64 %i.ps, 57
  %i.pu = trunc nuw nsw i64 %i.pt to i8
  %i.pv = load i64, ptr %spec.select.sroa.sel348.v.sroa.sel, align 8, !alias.scope !1133, !noalias !1134, !noundef !8 ; 2 uses
  %i.pw = load ptr, ptr %spec.select, align 8, !alias.scope !1133, !noalias !1134, !nonnull !8, !noundef !8 ; 2 uses
  %i.px = insertelement <16 x i8> poison, i8 %i.pu, i64 0
  %i.py = shufflevector <16 x i8> %i.px, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %bb.cg
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.cg ], [ %i.qr, %bb.cj ]
  %.pn.i.i = phi i64 [ %i.ps, %bb.cg ], [ %i.qs, %bb.cj ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.pv     ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.pz, align 1, !noalias !1135 ; 2 uses
  %i.qa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.py
  %i.qb = bitcast <16 x i1> %i.qa to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.qb, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i276

.lr.ph.i.i276:                                    ; preds = %bb.ch, %bb.ci
  %.sroa.06.0.i31.i.i = phi i16 [ %i.qq, %bb.ci ], [ %i.qb, %bb.ch ] ; 3 uses
  %i.qc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = add i64 %.sroa.01.0.i.i.i, %i.qd
  %i.qf = and i64 %i.qe, %i.pv
  %i.qg = sub nsw i64 0, %i.qf
  %i.qh = getelementptr inbounds [32 x i8], ptr %i.pw, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -32
  %.val2.i.i.i = load i128, ptr %i.qi, align 16, !noalias !1136, !noundef !8
  %i.qj = getelementptr i8, ptr %i.qh, i64 -16
  %.val3.i.i.i = load i64, ptr %i.qj, align 16, !noalias !1136
  %i.qk = icmp eq i128 %.sroa.10.0.copyload, %.val2.i.i.i
  %i.ql = icmp eq i64 %.sroa.12.0.copyload, %.val3.i.i.i
  %.sroa.0.0.i.i.i.i.i.i277 = select i1 %i.qk, i1 %i.ql, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i277, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12contains_keyBO_EBQ_.exit, label %bb.ci, !prof !14

._crit_edge.i.i:                                  ; preds = %bb.ci, %bb.ch
  %i.qm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.qn = bitcast <16 x i1> %i.qm to i16
  %i.qo = icmp eq i16 %i.qn, 0
  br i1 %i.qo, label %bb.cj, label %.loopexit562, !prof !12

bb.ci:                                            ; preds = %.lr.ph.i.i276
  %i.qp = add i16 %.sroa.06.0.i31.i.i, -1
  %i.qq = and i16 %i.qp, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.qq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i276

bb.cj:                                            ; preds = %._crit_edge.i.i
  %i.qr = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.qs = add i64 %.sroa.01.0.i.i.i, %i.qr
  br label %bb.ch

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12contains_keyBO_EBQ_.exit: ; preds = %.lr.ph.i.i276, %bb.dw, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12contains_keyBO_EBQ_.exit307, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit293
  %i.qt = icmp eq i64 %.sroa.19389.0.copyload, 0
  br i1 %i.qt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du4StatEBD_.exit, label %bb.ck

bb.ck:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12contains_keyBO_EBQ_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.21.0.copyload, i64 noundef %.sroa.19389.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1137
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du4StatEBD_.exit

bb.cl:                                            ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit
  %.sroa.031.0624 = phi ptr [ %i.fn, %.lr.ph ], [ %i.qu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit ] ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.031.0624, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.21.0.copyload, i64 noundef %.sroa.25.0.copyload) #25
  %i.qv = load i64, ptr %i.bd, align 8, !range !15, !noundef !8 ; 3 uses
  %i.qw = load ptr, ptr %i.fs, align 8            ; 3 uses
  %i.qx = load i64, ptr %i.ft, align 8
  %i.qy = call noundef zeroext i1 @_RNvMsa_Cs8P23TVsEbeF_4globNtB5_7Pattern7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.031.0624, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qw, i64 noundef %i.qx) #25
  %i.qz = icmp sgt i64 %i.qv, 0                   ; 2 uses
  br i1 %i.qy, label %bb.co, label %bb.cm

._crit_edge:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit, %.loopexit562
  %i.ra = trunc nuw i128 %i.kk to i1              ; 2 uses
  br i1 %i.ra, label %bb.dp, label %bb.du

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.qz, label %bb.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qw, i64 noundef %i.qv, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1138
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvMsA_NtCs2vKOLqTMYjT_3std2fsNtB5_8DirEntry9file_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bj) #25
  %.sroa.0505.0.copyload = load i64, ptr %i.bc, align 8 ; 3 uses
  %.sroa.6507.0.copyload = load i64, ptr %.sroa.6507.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8510.0.copyload = load i64, ptr %.sroa.8510.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1139
  %i.rb = inttoptr i64 %.sroa.6507.0.copyload to ptr ; 3 uses
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rb, i64 noundef %.sroa.8510.0.copyload) #25, !noalias !1139
  %i.rc = load i64, ptr %i.d, align 8, !range !11, !noalias !1139, !noundef !8
  %i.rd = trunc nuw i64 %i.rc to i1
  br i1 %i.rd, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1139
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit
  %.sroa.8517.24.copyload = load i64, ptr %i.fu, align 8, !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1139
  %.not121 = icmp eq i64 %.sroa.0505.0.copyload, -1
  br i1 %.not121, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge, label %bb.cq

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge: ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  %.pre = inttoptr i64 %.sroa.8510.0.copyload to ptr
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit

bb.co:                                            ; preds = %bb.cl
  br i1 %i.qz, label %bb.cp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit280

bb.cp:                                            ; preds = %bb.co
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qw, i64 noundef %i.qv, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1140
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit280

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit280: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283

bb.cq:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1141
  store i64 %.sroa.0505.0.copyload, ptr %i.ab, align 8, !noalias !1142
  %.sroa.9424.8..sroa_idx427 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.rb, ptr %.sroa.9424.8..sroa_idx427, align 8, !noalias !1142
  %.sroa.10429.8..sroa_idx432 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.8510.0.copyload, ptr %.sroa.10429.8..sroa_idx432, align 8, !noalias !1142
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #29, !noalias !1141
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread
  %.pre-phi = phi ptr [ %.pre, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge ], [ %i.rb, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ] ; 3 uses
  %.sroa.7473.sroa.7.sroa.7.0528 = phi i64 [ %.sroa.8517.24.copyload, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge ], [ %.sroa.8510.0.copyload, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  %.sroa.7473.sroa.0.0526 = phi i64 [ %.sroa.6507.0.copyload, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit._RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit_crit_edge ], [ %.sroa.0505.0.copyload, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.re = call noundef zeroext i1 @_RNvMsa_Cs8P23TVsEbeF_4globNtB5_7Pattern7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.031.0624, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre-phi, i64 noundef %.sroa.7473.sroa.7.sroa.7.0528) #25
  %i.rf = icmp eq i64 %.sroa.7473.sroa.0.0526, 0  ; 2 uses
  br i1 %i.re, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit
  br i1 %i.rf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre-phi, i64 noundef %.sroa.7473.sroa.0.0526, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1143
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.cr, %bb.cs
  %i.rg = icmp eq ptr %i.qu, %i.fq
  br i1 %i.rg, label %._crit_edge, label %bb.cl

bb.ct:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCsfIwuYbgPzJV_5uu_du.exit
  br i1 %i.rf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre-phi, i64 noundef %.sroa.7473.sroa.0.0526, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1144
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283: ; preds = %bb.cu, %bb.ct, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfIwuYbgPzJV_5uu_du.exit280
  br i1 %i.fx, label %bb.cv, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12contains_keyBO_EBQ_.exit

bb.cv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.499.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5100.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 1, ptr %i.az, align 8
  store ptr %.sroa.21.0.copyload, ptr %.sroa.4102.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesINtNtNtB12_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du:bb.a
  %.sroa.10.0.copyload7.i.i = phi i64 [ 0, %bb.e ], [ %spec.select.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit12.i.i.i ], [ 0, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit.i.i.i ], [ %.sroa.0.012.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit.i.i.i ]
  %.sroa.02.0.copyload3.i.i = load i64, ptr %i.c, align 8, !noalias !4191
  br label %_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit.i.i

_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i, %bb.g, %bb.f
  %.sroa.10.0.i.i = phi i64 [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.10.0.copyload7.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i ]
  %.sroa.9.1.i.i = phi ptr [ %.sroa.9.0.i.i, %bb.f ], [ %.sroa.9.0.i.i, %bb.g ], [ %i.g, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i ] ; 2 uses
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0.i.i, %bb.f ], [ %.sroa.02.0.i.i, %bb.g ], [ %.sroa.02.0.copyload3.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4181
  switch i64 %.sroa.02.1.i.i, label %.thread [
    i64 -2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7tKScEop1B6_5alloc6string6StringEECsfIwuYbgPzJV_5uu_du.exit
    i64 -1, label %bb.h
  ]

bb.h:                                             ; preds = %_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4180, !noalias !4192, !noundef !8 ; 4 uses
  %i.ab = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECsfIwuYbgPzJV_5uu_du.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4193
  %i.ac = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ad = and i64 %i.ac, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
    i64 1, label %bb.k
  ], !prof !19

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.ac, 1095216660480
  %i.ag = icmp ne i64 %i.af, 1095216660480
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.ag)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !4194, !noalias !4193
  store i8 3, ptr %i.a, align 8, !alias.scope !4194, !noalias !4193
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #25, !noalias !4195
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4193
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECsfIwuYbgPzJV_5uu_du.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECsfIwuYbgPzJV_5uu_du.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.h
  store ptr %.sroa.9.1.i.i, ptr %i.e, align 8, !alias.scope !4180, !noalias !4192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7tKScEop1B6_5alloc6string6StringEECsfIwuYbgPzJV_5uu_du.exit

.thread:                                          ; preds = %_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit.i.i
  store i64 %.sroa.02.1.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.1.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7tKScEop1B6_5alloc6string6StringEECsfIwuYbgPzJV_5uu_du.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7tKScEop1B6_5alloc6string6StringEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECsfIwuYbgPzJV_5uu_du.exit.i.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8
  %i.c = tail call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25 ; 2 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i
    i64 1, label %bb.e
  ], !prof !19

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !4198
  store i8 3, ptr %i.a, align 8, !alias.scope !4198
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit
  ret i1 %.not
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_CsfIwuYbgPzJV_5uu_duNtB5_9ThresholdNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.b, label %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit.thread, label %bb.b

_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !alias.scope !4212, !noalias !4213, !noundef !8 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit12.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit12.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = and i8 %i.c, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i8, ptr %i.e, align 1, !alias.scope !4212, !noalias !4213, !noundef !8
  %i.j = shl nuw nsw i32 %i.g, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit14.i.i.i.i, label %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i8, ptr %i.p, align 1, !alias.scope !4212, !noalias !4213, !noundef !8
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit16.i.i.i.i, label %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit14.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aa = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.z, align 1, !alias.scope !4212, !noalias !4213, !noundef !8
  %i.ac = shl nuw nsw i32 %i.g, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit

_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit12.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit14.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit16.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.x, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit14.i.i.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit16.i.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfIwuYbgPzJV_5uu_du.exit12.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.aj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nsw i32 %.sroa.4.0.i.ph.i.i.i, -43
  %switch.and.i = and i32 %i.ak, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %switch.and.i, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit
  %.not.i.not = icmp eq i64 %2, 1
  br i1 %.not.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !4214, !noundef !8
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit.thread, %bb.e, %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit
  %i.ao = phi i64 [ 0, %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit.thread ], [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_prefix_ofCsfIwuYbgPzJV_5uu_du.exit ], [ 1, %bb.d ] ; 2 uses
  %i.ap = sub nuw i64 %2, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14parse_size_u64(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ap) #25
  %i.ar = load i64, ptr %i.a, align 8, !range !36, !noundef !8 ; 2 uses
  %.not28 = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 4 uses
  br i1 %.not28, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ar, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.b, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.i
  %rhsc = load i8, ptr %1, align 1
  %i.au = icmp eq i8 %rhsc, 45
  br i1 %i.au, label %bb.j, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.j:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, label %bb.k

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.j
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !4215
  %i.ay = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4215 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.bb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.l:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %2) #30
  unreachable

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtCs8P23TVsEbeF_4glob12PatternErrorNtB6_5Debug3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4219
  store ptr %i.b, ptr %i.a, align 8, !noalias !4219
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 3, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @230, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @231) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4219
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_5Debug3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !8
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  ret i32 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exactCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4247, !noalias !4248, !noundef !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4247, !noalias !4248, !noundef !8
  %i.g = sub nuw i64 %i.f, %i.d
  %.not.i.not = icmp ugt i64 %2, %i.g
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !alias.scope !4247, !noalias !4248, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !4249, !noalias !4250
  %i.j = add i64 %i.d, %2
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !4247, !noalias !4248
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.0.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.118.i, %bb.q ] ; 5 uses
  %.sroa.7.025.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.116.i, %bb.q ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !4255, !noalias !4256, !noundef !8 ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !4255, !noalias !4256, !noundef !8 ; 3 uses
  %i.t = icmp ne i64 %i.r, %i.s
  %i.u = load i64, ptr %i.k, align 8, !alias.scope !4255, !noalias !4256 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.7.025.i, %i.u
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
end_hunk_2
