Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString8contains:bb.a
.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive0E0B1m_.exit.loopexit.us.i.i
  %i.eo = phi i64 [ %i.eq, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive0E0B1m_.exit.loopexit.us.i.i ], [ %i.ah, %.lr.ph.split.us.i.i ]
  %i.ep = phi ptr [ %i.er, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive0E0B1m_.exit.loopexit.us.i.i ], [ %i.ag, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.eq = add nsw i64 %i.eo, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5743)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.us.i.i94, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.us.i.i93, i64 1
  %i.eu = add nsw i64 %.sroa.58.0.i.i.i.us.i.i92, -1 ; 2 uses
  %.not.i.i.i.us.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.us.i.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us.split.i.i, %bb.af
  %.sroa.0.0.i.i.i.us.i.i94 = phi ptr [ %i.ep, %.lr.ph.split.us.split.i.i ], [ %i.es, %bb.af ] ; 2 uses
  %.sroa.05.0.i.i.i.us.i.i93 = phi ptr [ %i.aj, %.lr.ph.split.us.split.i.i ], [ %i.et, %bb.af ] ; 2 uses
  %.sroa.58.0.i.i.i.us.i.i92 = phi i64 [ %i.ak, %.lr.ph.split.us.split.i.i ], [ %i.eu, %bb.af ]
  %i.ev = load i8, ptr %.sroa.0.0.i.i.i.us.i.i94, align 1, !alias.scope !5744, !noalias !5745, !noundef !4 ; 2 uses
  %i.ew = add i8 %i.ev, -65
  %i.ex = icmp ult i8 %i.ew, 26
  %i.ey = select i1 %i.ex, i8 32, i8 0
  %.sroa.012.0.i.i.i.us.i.i = or i8 %i.ey, %i.ev
  %i.ez = load i8, ptr %.sroa.05.0.i.i.i.us.i.i93, align 1, !alias.scope !5746, !noalias !5747, !noundef !4 ; 2 uses
  %i.fa = add i8 %i.ez, -65
  %i.fb = icmp ult i8 %i.fa, 26
  %i.fc = select i1 %i.fb, i8 32, i8 0
  %.sroa.013.0.i.i.i.us.i.i = or i8 %i.fc, %i.ez
  %i.fd = icmp eq i8 %.sroa.012.0.i.i.i.us.i.i, %.sroa.013.0.i.i.i.us.i.i
  br i1 %i.fd, label %bb.af, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive0E0B1m_.exit.loopexit.us.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive0E0B1m_.exit.loopexit.us.i.i: ; preds = %bb.ag
  %.not27.i.i = icmp ugt i64 %i.ak, %i.eq
  br i1 %.not27.i.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive.exit, label %.lr.ph.split.us.split.i.i

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.thread
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17, %bb.aq, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %i.gd, %bb.aq ], [ %.pn.i18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #44
          to label %common.resume unwind label %bb.av

bb.ai:                                            ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5749
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.fj, align 8, !alias.scope !5748, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val2.i = load i64, ptr %i.fk, align 8, !alias.scope !5748, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5749
  store i8 1, ptr %i.b, align 1, !noalias !5749
  invoke void @_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder25build_forward_with_rankerNtNtNtNtB8_4arch3all10packedpair20DefaultFrequencyRankShECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val2.i)
          to label %bb.am unwind label %bb.aj, !noalias !5749

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17: ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i18 = phi { ptr, i32 } [ %i.fl, %bb.aj ], [ %i.fm, %bb.ak ], [ %i.fm, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #44
          to label %.body unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17

bb.ak:                                            ; preds = %bb.an
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5750)
  call void @llvm.experimental.noalias.scope.decl(metadata !5751)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !5752)
  call void @llvm.experimental.noalias.scope.decl(metadata !5753)
  %i.fo = load i64, ptr %i.fn, align 32, !range !11, !alias.scope !5754, !noalias !5749, !noundef !4
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = icmp eq i64 %.sroa.6.0.i.i20, 0
  %or.cond.i23 = or i1 %i.fq, %i.fp
  br i1 %or.cond.i23, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i22, i64 noundef range(i64 1, 0) %.sroa.6.0.i.i20, i64 noundef 1) #48, !noalias !5755
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(288) %i.d, ptr noundef nonnull align 32 dereferenceable(288) %i.c, i64 288, i1 false), !noalias !5749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5749
  call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5757
  store i32 1, ptr %i.a, align 4, !noalias !5757
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.fr, align 4, !noalias !5757
  %.sroa.6.0.in.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %.sroa.6.0.i.i20 = load i64, ptr %.sroa.6.0.in.i.i19, align 16, !alias.scope !5756, !noalias !5749, !noundef !4 ; 6 uses
  %i.fs = icmp ult i64 %i.fi, %.sroa.6.0.i.i20
  br i1 %i.fs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.01.0.in.i.i21 = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.sroa.01.0.i.i22 = load ptr, ptr %.sroa.01.0.in.i.i21, align 8, !alias.scope !5756, !noalias !5749, !nonnull !4, !noundef !4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !5756, !noalias !5749, !nonnull !4, !noundef !4
  %i.fv = invoke { i64, i64 } %i.fu(ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(288) %i.d, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef range(i64 0, -9223372036854775808) %i.fi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i22, i64 noundef %.sroa.6.0.i.i20)
          to label %.noexc.i24 unwind label %bb.ak, !noalias !5748, !inline_history !5630

.noexc.i24:                                       ; preds = %bb.an
  %i.fw = extractvalue { i64, i64 } %i.fv, 0
  %i.fx = icmp eq i64 %i.fw, 1
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc.i24, %bb.am
  %.sroa.0.0.i.i26 = phi i1 [ %i.fx, %.noexc.i24 ], [ false, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5757
  call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  call void @llvm.experimental.noalias.scope.decl(metadata !5759)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !5760)
  call void @llvm.experimental.noalias.scope.decl(metadata !5761)
  %i.fz = load i64, ptr %i.fy, align 32, !range !11, !alias.scope !5762, !noalias !5749, !noundef !4
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = icmp eq i64 %.sroa.6.0.i.i20, 0
  %or.cond6.i = or i1 %i.gb, %i.ga
  br i1 %or.cond6.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit5.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.val.i.i.i.i4.i = load ptr, ptr %i.gc, align 8, !alias.scope !5762, !noalias !5749, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i4.i, i64 noundef range(i64 1, 0) %.sroa.6.0.i.i20, i64 noundef 1) #48, !noalias !5763
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit5.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit5.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5749
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit5.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit5.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice4findINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.ah

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr9ext_slice6FinderECs7gfv9tzbXmh_6yara_x.exit.i17
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice4findINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.at

bb.at:                                            ; preds = %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice4findINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice4findINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtNtCs7gfv9tzbXmh_6yara_x4wasm6string31contains_ascii_case_insensitive.exit

bb.av:                                            ; preds = %.body
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct10enum_value(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5766)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5766, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %1, align 8, !range !11, !alias.scope !5766, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = trunc nuw i64 %i.d to i1
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !5766, !nonnull !4
  %.sroa.0.0.v.i = select i1 %i.f, i64 16, i64 72
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.v.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 88
  %i.i = load i64, ptr %i.h, align 8, !noalias !5766, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !noalias !5766, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !5766, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !5766, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !5766, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %_RNvMs0_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_19EnumValueDescriptor5proto.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #47, !noalias !5766
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #47, !noalias !5766
  unreachable

_RNvMs0_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_19EnumValueDescriptor5proto.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !5766, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !align !5, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  %_RNvNvXs1s_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_16EnumValueOptionsNtNtBa_7message7Message16default_instance8instance. = select i1 %.not, ptr @_RNvNvXs1s_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_16EnumValueOptionsNtNtBa_7message7Message16default_instance8instance, ptr %i.y
  call void @_RNvMs_NtCsg2CeFYmfPbl_8protobuf3extINtB4_16ExtFieldOptionalNtNtB6_10descriptor16EnumValueOptionsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsE3getB1E_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) @216, ptr noundef nonnull align 8 %_RNvNvXs1s_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_16EnumValueOptionsNtNtBa_7message7Message16default_instance8instance.)
  %i.z = load i64, ptr %i.a, align 16, !range !23, !noundef !4 ; 2 uses
  %.not5 = icmp eq i64 %i.z, -1
  br i1 %.not5, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_19EnumValueDescriptor5proto.exit
  %2 = load <2 x i64>, ptr %i.a, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 16 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.512.0.copyload, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsEBJ_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.512.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef 32, i64 noundef 8) #48
  resume { ptr, i32 } %i.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef 32, i64 noundef 8) #48
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsEBJ_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsEBJ_.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not6 = icmp eq i64 %i.z, 2
  br i1 %.not6, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvMs0_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_19EnumValueDescriptor5proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsEBJ_.exit
  %i.ac = call noundef i32 @_RNvMs0_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_19EnumValueDescriptor5value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara16EnumValueOptionsEBJ_.exit
  store <2 x i64> %2, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct12value_as_f64(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -3
  %i.c = icmp samesign ugt i64 %i.a, 2
  %i.d = select i1 %i.c, i64 %i.b, i64 10
  switch i64 %i.d, label %bb.b [
    i64 4, label %bb.c
    i64 5, label %bb.d
  ], !prof !53

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #45
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 8, !noundef !4
  %i.g = fpext float %i.f to double
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load double, ptr %i.h, align 8, !noundef !4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi double [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  ret double %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #44
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct12value_as_i64(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -3
  %i.c = icmp samesign ugt i64 %i.a, 2
  %i.d = select i1 %i.c, i64 %i.b, i64 10
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 9, label %bb.g
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #45
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !4
  %i.g = zext i32 %i.f to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !noundef !4
  %i.l = sext i32 %i.k to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !noundef !4
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5782)
  %i.s = load i64, ptr %i.r, align 8, !range !11, !alias.scope !5783, !noundef !4
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5785)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5786, !nonnull !4, !noundef !4
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !5786
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.03 = phi i64 [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %i.q, %bb.h ], [ %i.n, %bb.f ], [ %i.l, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  ret i64 %.sroa.0.03

bb.j:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #44
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.b
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.m:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct13value_as_bool(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4
  %i.b = icmp eq i64 %i.a, 9
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit, label %bb.b, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #45
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_ref15ReflectValueRefECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #44
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct14enum_value_i64(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6Struct10enum_value(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !4 ; 2 uses
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 undef, i64 %i.e
  %not. = xor i64 %i.b, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %not., 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}
end_hunk_0
