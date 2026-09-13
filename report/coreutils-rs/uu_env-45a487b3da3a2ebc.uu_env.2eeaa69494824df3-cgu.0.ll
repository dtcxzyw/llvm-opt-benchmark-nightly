Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXs4_Cs41JD7yXDh97_6uu_envNtB5_8EnvErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  br i1 %.not103137.i680, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph141.i681

.lr.ph.i671:                                      ; preds = %bb.hw, %bb.hz
  %.sroa.0.1136.i672 = phi ptr [ %i.afl, %bb.hz ], [ %i.afi, %bb.hw ] ; 2 uses
  %.sroa.26.1135.i673 = phi i64 [ %i.afm, %bb.hz ], [ %i.afj, %bb.hw ]
  %.sroa.084.0134.i674 = phi i64 [ %i.afx, %bb.hz ], [ 0, %bb.hw ]
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i672, i64 1
  %i.afm = add nsw i64 %.sroa.26.1135.i673, -1    ; 2 uses
  %i.afn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i674, i64 10) ; 2 uses
  %i.afo = extractvalue { i64, i1 } %i.afn, 0
  %i.afp = extractvalue { i64, i1 } %i.afn, 1
  br i1 %i.afp, label %.loopexit1170, label %bb.hx, !prof !10

bb.hx:                                            ; preds = %.lr.ph.i671
  %i.afq = load i8, ptr %.sroa.0.1136.i672, align 1, !alias.scope !3361, !noalias !3362, !noundef !5
  %i.afr = zext i8 %i.afq to i32
  %i.afs = add nsw i32 %i.afr, -48                ; 2 uses
  %i.aft = icmp ult i32 %i.afs, 10
  br i1 %i.aft, label %bb.hy, label %.loopexit1170

bb.hy:                                            ; preds = %bb.hx
  %i.afu = zext nneg i32 %i.afs to i64
  %i.afv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.afo, i64 %i.afu) ; 2 uses
  %i.afw = extractvalue { i64, i1 } %i.afv, 1
  br i1 %i.afw, label %.loopexit1170, label %bb.hz, !prof !10

bb.hz:                                            ; preds = %bb.hy
  %i.afx = extractvalue { i64, i1 } %i.afv, 0     ; 2 uses
  %.not102.i676 = icmp eq i64 %i.afm, 0
  br i1 %.not102.i676, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph.i671

.lr.ph141.i681:                                   ; preds = %.preheader114.i679, %bb.ia
  %.sroa.0.2140.i682 = phi ptr [ %i.age, %bb.ia ], [ %i.afi, %.preheader114.i679 ] ; 2 uses
  %.sroa.26.2139.i683 = phi i64 [ %i.agd, %bb.ia ], [ %i.afj, %.preheader114.i679 ]
  %.sroa.084.2138.i684 = phi i64 [ %i.agg, %bb.ia ], [ 0, %.preheader114.i679 ]
  %i.afy = load i8, ptr %.sroa.0.2140.i682, align 1, !alias.scope !3361, !noalias !3362, !noundef !5
  %i.afz = zext i8 %i.afy to i32
  %i.aga = add nsw i32 %i.afz, -48                ; 2 uses
  %i.agb = icmp ult i32 %i.aga, 10
  br i1 %i.agb, label %bb.ia, label %.loopexit1170

bb.ia:                                            ; preds = %.lr.ph141.i681
  %i.agc = mul i64 %.sroa.084.2138.i684, 10
  %i.agd = add nsw i64 %.sroa.26.2139.i683, -1    ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i682, i64 1
  %i.agf = zext nneg i32 %i.aga to i64
  %i.agg = sub i64 %i.agc, %i.agf                 ; 2 uses
  %.not103.i685 = icmp eq i64 %i.agd, 0
  br i1 %.not103.i685, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph141.i681

bb.ib:                                            ; preds = %bb.hv, %bb.hu
  %.sroa.26.0.i686 = phi i64 [ %i.afh, %bb.hv ], [ %i.aew, %bb.hu ] ; 4 uses
  %.sroa.0.0.i687 = phi ptr [ %i.afg, %bb.hv ], [ %i.afc, %bb.hu ] ; 2 uses
  %i.agh = icmp samesign ult i64 %.sroa.26.0.i686, 16
  br i1 %i.agh, label %.preheader.i694, label %.preheader111.i688

.preheader.i694:                                  ; preds = %bb.ib
  %.not105146.i695 = icmp eq i64 %.sroa.26.0.i686, 0
  br i1 %.not105146.i695, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph150.i696

.preheader111.i688:                               ; preds = %bb.ib, %bb.ie
  %.sroa.0.3145.i689 = phi ptr [ %i.agi, %bb.ie ], [ %.sroa.0.0.i687, %bb.ib ] ; 2 uses
  %.sroa.26.3144.i690 = phi i64 [ %i.agj, %bb.ie ], [ %.sroa.26.0.i686, %bb.ib ]
  %.sroa.084.3143.i691 = phi i64 [ %i.agu, %bb.ie ], [ 0, %bb.ib ]
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i689, i64 1
  %i.agj = add nsw i64 %.sroa.26.3144.i690, -1    ; 2 uses
  %i.agk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i691, i64 10) ; 2 uses
  %i.agl = extractvalue { i64, i1 } %i.agk, 0
  %i.agm = extractvalue { i64, i1 } %i.agk, 1
  br i1 %i.agm, label %.loopexit1170, label %bb.ic, !prof !10

bb.ic:                                            ; preds = %.preheader111.i688
  %i.agn = load i8, ptr %.sroa.0.3145.i689, align 1, !alias.scope !3361, !noalias !3362, !noundef !5
  %i.ago = zext i8 %i.agn to i32
  %i.agp = add nsw i32 %i.ago, -48                ; 2 uses
  %i.agq = icmp ult i32 %i.agp, 10
  br i1 %i.agq, label %bb.id, label %.loopexit1170

bb.id:                                            ; preds = %bb.ic
  %i.agr = zext nneg i32 %i.agp to i64
  %i.ags = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.agl, i64 %i.agr) ; 2 uses
  %i.agt = extractvalue { i64, i1 } %i.ags, 1
  br i1 %i.agt, label %.loopexit1170, label %bb.ie, !prof !10

bb.ie:                                            ; preds = %bb.id
  %i.agu = extractvalue { i64, i1 } %i.ags, 0     ; 2 uses
  %.not104.i693 = icmp eq i64 %i.agj, 0
  br i1 %.not104.i693, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.preheader111.i688

.lr.ph150.i696:                                   ; preds = %.preheader.i694, %bb.if
  %.sroa.0.4149.i697 = phi ptr [ %i.ahb, %bb.if ], [ %.sroa.0.0.i687, %.preheader.i694 ] ; 2 uses
  %.sroa.26.4148.i698 = phi i64 [ %i.aha, %bb.if ], [ %.sroa.26.0.i686, %.preheader.i694 ]
  %.sroa.084.4147.i699 = phi i64 [ %i.ahd, %bb.if ], [ 0, %.preheader.i694 ]
  %i.agv = load i8, ptr %.sroa.0.4149.i697, align 1, !alias.scope !3361, !noalias !3362, !noundef !5
  %i.agw = zext i8 %i.agv to i32
  %i.agx = add nsw i32 %i.agw, -48                ; 2 uses
  %i.agy = icmp ult i32 %i.agx, 10
  br i1 %i.agy, label %bb.if, label %.loopexit1170

bb.if:                                            ; preds = %.lr.ph150.i696
  %i.agz = mul i64 %.sroa.084.4147.i699, 10
  %i.aha = add nsw i64 %.sroa.26.4148.i698, -1    ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i697, i64 1
  %i.ahc = zext nneg i32 %i.agx to i64
  %i.ahd = add i64 %i.agz, %i.ahc                 ; 2 uses
  %.not105.i700 = icmp eq i64 %i.aha, 0
  br i1 %.not105.i700, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph150.i696

bb.ig:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aey, ptr nonnull align 1 %i.aeu, i64 %i.aew, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089

.loopexit1170:                                    ; preds = %.lr.ph.i671, %bb.hy, %bb.hx, %.lr.ph141.i681, %.preheader111.i688, %bb.ic, %bb.id, %.lr.ph150.i696, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669, %bb.ht, %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afc, i64 noundef %i.aew) #27
  %i.ahe = load i8, ptr %i.o, align 8, !range !16, !noundef !5
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %bb.ij, label %bb.ik

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703: ; preds = %bb.hz, %bb.ia, %bb.ie, %bb.if, %.preheader.i694, %.preheader114.i679
  %.sroa.15796.0 = phi i64 [ %i.ahd, %bb.if ], [ %i.agg, %bb.ia ], [ %i.agu, %bb.ie ], [ 0, %.preheader.i694 ], [ 0, %.preheader114.i679 ], [ %i.afx, %bb.hz ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, i64 noundef %.sroa.15796.0) #26
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ik, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.aex, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afc, i64 noundef %i.aew, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3363
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706

bb.ij:                                            ; preds = %.loopexit1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.aew, ptr %i.n, align 8
  %.sroa.5789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.afc, ptr %.sroa.5789.0..sroa_idx, align 8
  %.sroa.9791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.aew, ptr %.sroa.9791.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706

bb.ik:                                            ; preds = %.loopexit1170
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ahh = load double, ptr %i.ahg, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, double noundef %i.ahh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ih

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706: ; preds = %bb.ii, %bb.ih, %bb.ij
  %i.ahi = icmp eq i64 %i.ec, 0
  %or.cond1108 = or i1 %.sroa.04.0.not, %i.ahi
  br i1 %or.cond1108, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712, label %bb.im

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712: ; preds = %bb.im, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.t, ptr %i.l, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4180.0..sroa_idx, align 8
  %i.ahj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ahm = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ahj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ahl, ptr noundef nonnull @42, ptr noundef nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  %.val.i707 = load i64, ptr %i.t, align 8, !range !6, !alias.scope !3364, !noundef !5 ; 2 uses
  %i.ahn = icmp eq i64 %.val.i707, 0
  br i1 %i.ahn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709, label %bb.il

bb.il:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712
  %i.aho = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i708 = load ptr, ptr %i.aho, align 8, !alias.scope !3364, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i708, i64 noundef %.val.i707, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3364
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bd

bb.im:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aes, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3365
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertRINtNtCs7tKScEop1B6_5alloc3vec3VecReEIB18_INtNtB1c_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3386)
  %i.e = mul nuw nsw i64 %i.d, 24                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %i.d, 384307168202282325
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.preheader.new, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3387
  %i.g = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #26, !noalias !3387 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.preheader.i.i.i.preheader.new, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %xtraiter = and i64 %i.d, 1
  %i.i = icmp eq i64 %i.d, 1
  br i1 %i.i, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i
  %xtraiter.a = and i64 %i.d, 576460752303423486
  br label %.preheader.i.i.i

.preheader.i.i.i.preheader.new:                   ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #30, !noalias !3386
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  %i.j = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.r, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !3388, !nonnull !5, !noundef !5
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val12.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !3388, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.j ; 3 uses
  store i64 -1, ptr %i.m, align 8, !noalias !3389
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.val11.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3389
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3389
  %i.n = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.o, align 8, !noalias !3388, !nonnull !5, !noundef !5
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.p, align 8, !noalias !3388, !noundef !5
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.n ; 3 uses
  store i64 -1, ptr %i.q, align 8, !noalias !3389
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.val11.i.i.i.i.i.i.1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3389
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val12.i.i.i.i.i.i.1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3389
  %i.r = add nuw nsw i64 %i.j, 2                  ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %xtraiter.a
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i ], [ %i.r, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.epil.init ; 2 uses
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.s, align 8, !noalias !3388, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.t, align 8, !noalias !3388, !noundef !5
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.u, align 8, !noalias !3389
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3389
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3389
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.10.0.i7.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.g, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa ], [ %i.g, %.preheader.i.i.i.epil.preheader ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !3386
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3386
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3386
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs5_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertINtNtCs7tKScEop1B6_5alloc3vec3VecReEIB17_INtNtB1b_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  %i.g = mul nuw nsw i64 %i.d, 24                 ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.d, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %._crit_edge.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3418
  %i.i = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #26, !noalias !3418 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.k = add nuw nsw i64 %i.d, 1152921504606846975 ; 2 uses
  %i.l = and i64 %i.k, 1152921504606846975        ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #30, !noalias !3419
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3420, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !3420, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.o ; 3 uses
  store i64 -1, ptr %i.u, align 8, !noalias !3421
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3421
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.s, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3422
  %i.v = load ptr, ptr %i.t, align 8, !noalias !3420, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noalias !3420, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.o ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 -1, ptr %i.aa, align 8, !noalias !3421
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.v, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3421
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.x, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3422
  %i.ab = add nuw nsw i64 %i.o, 2                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init8 = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ad = load ptr, ptr %.epil.init8, align 8, !noalias !3420, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.epil.init8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3420, !noundef !5
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.ag, align 8, !noalias !3421
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ad, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3421
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.af, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3422
  %i.ah = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.b
  %.sroa.10.0.i.i5 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.42.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.ai = icmp eq i64 %i.f, 0
  br i1 %i.ai, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aj = shl nuw i64 %i.f, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3420
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  store i64 %i.d, ptr %0, align 8, !alias.scope !3417, !noalias !3423
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i5, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3417, !noalias !3423
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3417, !noalias !3423
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertRINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB1c_6string6StringEIB18_INtNtB1c_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %.idx = mul nuw nsw i64 %i.d, 24                ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3445
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #26, !noalias !3445 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %xtraiter = and i64 %i.d, 1
  %i.h = icmp eq i64 %i.d, 1
  br i1 %i.h, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #30, !noalias !3444
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.s, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !3446, !nonnull !5, !noundef !5
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !3446, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 3 uses
  store i64 -1, ptr %i.m, align 8, !noalias !3447
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.val11.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3447
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3447
  %i.n = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.p, align 8, !noalias !3446, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.q, align 8, !noalias !3446, !noundef !5
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.n ; 3 uses
  store i64 -1, ptr %i.r, align 8, !noalias !3447
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val11.i.i.i.i.i.i.1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3447
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val12.i.i.i.i.i.i.1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3447
  %i.s = add nuw i64 %i.i, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.s, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.epil.init ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.u, align 8, !noalias !3446, !nonnull !5, !noundef !5
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.v, align 8, !noalias !3446, !noundef !5
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.w, align 8, !noalias !3447
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3447
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3447
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.10.0.i8.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa ], [ %i.f, %.preheader.i.i.i.epil.preheader ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !3444
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3444
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3444
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError5usage(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs7_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB1b_6string6StringEIB17_INtNtB1b_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB2M_7ConvertB2l_INtNtB6_6borrow3CowShEE7convertEB3N_EB2O_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !6, !noundef !5
  store i64 %i.f, ptr %0, align 8, !alias.scope !3451, !noalias !3452
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !alias.scope !3451, !noalias !3452
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.h, align 8, !alias.scope !3451, !noalias !3452
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 5) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3457, !noundef !5 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !6, !alias.scope !3458, !noundef !5
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs41JD7yXDh97_6uu_env.exit.i, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #26
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs41JD7yXDh97_6uu_env.exit.i
end_hunk_0
