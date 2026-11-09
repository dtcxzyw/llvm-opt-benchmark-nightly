Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.14?download=true
inline.NumInlined: 2022
inline.NumDeleted: 953
begin_hunk_0_@_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnostics:bb.a

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ca

bb.bf:                                            ; preds = %bb.bd
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.03.0821, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !8, !noundef !8
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.03.0821, i64 64
  %i.iz = load i64, ptr %i.iy, align 8, !noundef !8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.bf
  %storemerge917 = phi ptr [ %i.ix, %bb.bf ], [ @181, %bb.bd ] ; 2 uses
  %storemerge = phi i64 [ %i.iz, %bb.bf ], [ 8, %bb.bd ] ; 2 uses
  store ptr %storemerge917, ptr %i.be, align 8
  store i64 %storemerge, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 -1, ptr %.sroa.11.0..sroa_idx492, align 8
  store i64 -1, ptr %.sroa.12505.0..sroa_idx514, align 8
  store ptr null, ptr %.sroa.13527.0..sroa_idx536, align 8
  store i8 %i.gy, ptr %.sroa.14556.0..sroa_idx565, align 8
  store i8 0, ptr %.sroa.15.0..sroa_idx579, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %.sroa.03.0821, ptr %i.ba, align 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  store ptr %i.be, ptr %i.gm, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4KzxGwe94yc_9yara_x_ls, ptr %.sroa.4103.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @182, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit293 unwind label %bb.bj

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit293: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss3_0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %storemerge917, i64 noundef %storemerge, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.bh unwind label %.loopexit722

bb.bh:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.ja = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bd)
          to label %bb.bi unwind label %.loopexit722 ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.ca

bb.bj:                                            ; preds = %bb.bg
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bc) #22
          to label %.body283 unwind label %bb.r

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit292: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss2_0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg)
          to label %bb.bk unwind label %.loopexit722

bb.bk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.jc = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bi)
          to label %bb.bl unwind label %.loopexit722 ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.ca

bb.bm:                                            ; preds = %bb.ba
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bh) #22
          to label %.body283 unwind label %bb.r

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit291: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss1_0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bk)
          to label %bb.bn unwind label %.loopexit722

bb.bn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.je = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bm)
          to label %bb.bo unwind label %.loopexit722 ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ca

bb.bp:                                            ; preds = %bb.ay
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bl) #22
          to label %.body283 unwind label %bb.r

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss0_0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bo)
          to label %bb.bq unwind label %.loopexit722

bb.bq:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.jg = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bq)
          to label %bb.br unwind label %.loopexit722 ; 0 uses

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.ca

bb.bs:                                            ; preds = %bb.aw
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bp) #22
          to label %.body283 unwind label %bb.r

bb.bt:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.hq, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 -1, ptr %.sroa.11.0..sroa_idx494, align 8
  store i64 -1, ptr %.sroa.12505.0..sroa_idx516, align 8
  store ptr null, ptr %.sroa.13527.0..sroa_idx538, align 8
  store i8 %i.gy, ptr %.sroa.14556.0..sroa_idx567, align 8
  store i8 0, ptr %.sroa.15.0..sroa_idx581, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %.sroa.03.0821, ptr %i.bv, align 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.477.0..sroa_idx, align 8
  store ptr %i.bz, ptr %i.gn, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs4KzxGwe94yc_9yara_x_ls, ptr %.sroa.481.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noundef nonnull @186, ptr noundef nonnull %i.bv)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit294 unwind label %bb.bx

bb.bu:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 -1, ptr %.sroa.11.0..sroa_idx496, align 8
  store i64 -1, ptr %.sroa.12505.0..sroa_idx518, align 8
  store ptr null, ptr %.sroa.13527.0..sroa_idx540, align 8
  store i8 %i.gy, ptr %.sroa.14556.0..sroa_idx569, align 8
  store i8 0, ptr %.sroa.15.0..sroa_idx583, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr %.sroa.03.0821, ptr %i.br, align 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noundef nonnull @187, ptr noundef nonnull %i.br)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit295 unwind label %bb.cb

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit294: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnostics0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bw)
          to label %bb.bv unwind label %.loopexit722

bb.bv:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.ji = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.by)
          to label %bb.bw unwind label %.loopexit722 ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bt
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bx) #22
          to label %.body283 unwind label %bb.r

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit295: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_8Metadata9validatorNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss_0NtNtCsexYYUdYSQU6_5alloc6string6StringEB1i_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs)
          to label %bb.by unwind label %.loopexit722

bb.by:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4KzxGwe94yc_9yara_x_ls.exit295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.jk = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bu)
          to label %bb.bz unwind label %.loopexit722 ; 0 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.be, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bw, %bb.bz, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.jl = icmp eq ptr %i.gv, %i.gj
  br i1 %i.jl, label %._crit_edge, label %bb.ap

bb.cb:                                            ; preds = %bb.bu
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters8MetadataECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bt) #22
          to label %.body283 unwind label %bb.r

bb.cc:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.ca

bb.cd:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.val267 = load i64, ptr %i.ax, align 8, !range !1236, !noundef !8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val268 = load ptr, ptr %i.jn, align 8         ; 142 uses
  %3 = icmp eq i64 %.val267, -1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECs4KzxGwe94yc_9yara_x_ls.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val268) ]
  switch i64 %.val267, label %4 [
    i64 0, label %.invoke.invoke.i.i
    i64 1, label %bb.cr
    i64 2, label %bb.cs
    i64 3, label %bb.cz
    i64 4, label %bb.df
    i64 5, label %.invoke.invoke.i.i
    i64 6, label %bb.do
    i64 7, label %bb.du
    i64 8, label %bb.eb
    i64 9, label %bb.eh
    i64 10, label %.invoke.invoke.i.i
    i64 11, label %bb.eo
    i64 12, label %.invoke.invoke.i.i
    i64 13, label %bb.eu
    i64 14, label %bb.fa
    i64 15, label %bb.fg
    i64 16, label %bb.fm
    i64 17, label %bb.fs
    i64 18, label %bb.fy
    i64 19, label %bb.gh
    i64 20, label %bb.gn
    i64 21, label %bb.hb
    i64 22, label %bb.hp
    i64 23, label %bb.hv
    i64 24, label %bb.if
    i64 25, label %bb.il
    i64 26, label %bb.ir
    i64 27, label %.invoke.invoke.i.i
    i64 28, label %.invoke.invoke.i.i
    i64 29, label %bb.ja
    i64 30, label %bb.jj
    i64 31, label %bb.jt
    i64 32, label %bb.kd
    i64 33, label %.invoke.invoke.i.i
    i64 34, label %bb.kf
    i64 35, label %bb.km
    i64 36, label %bb.ks
    i64 37, label %.invoke.invoke.i.i
    i64 38, label %.invoke.invoke.i.i
    i64 39, label %.invoke.invoke.i.i
    i64 40, label %bb.kv
    i64 41, label %bb.lb
    i64 42, label %bb.ll
    i64 43, label %bb.lr
    i64 44, label %bb.lx
    i64 45, label %bb.mi
    i64 46, label %bb.mo
  ]

4:                                                ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val268)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %4
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jp) #22
          to label %.body.i.i.i.i unwind label %bb.cq

bb.cg:                                            ; preds = %4
  %i.jq = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %.body.i.i.i.i unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i: ; preds = %bb.cg
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i unwind label %bb.cj

.body.i.i.i.i:                                    ; preds = %bb.cj, %bb.ch, %bb.cf
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.jo, %bb.cf ], [ %i.ju, %bb.cj ], [ %i.jr, %bb.ch ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jt) #22
          to label %.body6.i.i.i.i unwind label %bb.cq

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i.i.i unwind label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %.body6.i.i.i.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i.i.i unwind label %bb.cm

.body6.i.i.i.i:                                   ; preds = %bb.cm, %bb.ck, %.body.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.jz, %bb.cm ], [ %i.jw, %bb.ck ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.val268, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jy) #22
          to label %common.resume.i.i unwind label %bb.cq

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.val268, i64 216 ; 4 uses
  %i.kb = load i64, ptr %i.ka, align 8, !range !9, !alias.scope !1237, !noundef !8
  %i.kc = icmp eq i64 %i.kb, -1
  br i1 %i.kc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %common.resume.i.i unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i: ; preds = %bb.hk, %bb.cn
  %i.kf = phi ptr [ %i.ka, %bb.cn ], [ %i.po, %bb.hk ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.ho

bb.cq:                                            ; preds = %.body6.i.i.i.i, %.body.i.i.i.i, %bb.cf
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i.i:                                ; preds = %bb.mv, %bb.ms, %bb.mp, %bb.ml, %bb.mj, %bb.mh, %bb.me, %.body.i.i157.i.i, %bb.lu, %bb.ls, %bb.lo, %bb.lm, %bb.li, %.body.i.i147.i.i, %bb.ky, %bb.kw, %bb.ku, %bb.kt, %bb.kp, %bb.kn, %bb.kj, %bb.kg, %bb.ke, %bb.kc, %bb.jz, %.body.i.i135.i.i, %bb.jq, %.body.i.i129.i.i, %bb.jg, %.body.i.i123.i.i, %bb.ix, %.body.i.i117.i.i, %bb.io, %bb.im, %bb.ii, %bb.ig, %bb.ic, %.body.i.i107.i.i, %bb.hs, %bb.hq, %bb.ho, %bb.hl, %.body6.i.i97.i.i, %bb.ha, %bb.gx, %.body6.i.i87.i.i, %bb.gk, %bb.gi, %bb.ge, %.body.i.i77.i.i, %bb.fv, %bb.ft, %bb.fp, %bb.fn, %bb.fj, %bb.fh, %bb.fd, %bb.fb, %bb.ex, %bb.ev, %bb.er, %bb.ep, %bb.el, %bb.ei, %bb.ee, %bb.ec, %bb.ea, %bb.dx, %bb.dv, %bb.dr, %bb.dp, %bb.dl, %.body.i.i52.i.i, %bb.dc, %bb.da, %bb.cw, %bb.ct, %bb.co, %.body6.i.i.i.i
  %.sink.i.i = phi i64 [ 208, %bb.mj ], [ 232, %.body.i.i157.i.i ], [ 208, %bb.ls ], [ 208, %bb.lm ], [ 232, %.body.i.i147.i.i ], [ 208, %bb.kw ], [ 208, %bb.ii ], [ 184, %bb.ku ], [ 208, %bb.kp ], [ 208, %bb.kn ], [ 192, %bb.kt ], [ 208, %bb.kg ], [ 248, %bb.jz ], [ 248, %.body.i.i135.i.i ], [ 200, %bb.ke ], [ 232, %.body.i.i129.i.i ], [ 248, %.body.i.i123.i.i ], [ 248, %bb.jg ], [ 232, %bb.ix ], [ 232, %.body.i.i117.i.i ], [ 208, %bb.im ], [ 208, %bb.ig ], [ 232, %.body.i.i107.i.i ], [ 208, %bb.hq ], [ 256, %.body6.i.i97.i.i ], [ 272, %.body6.i.i87.i.i ], [ 208, %bb.gi ], [ 232, %.body.i.i77.i.i ], [ 208, %bb.ft ], [ 208, %bb.fn ], [ 208, %bb.fh ], [ 208, %bb.fb ], [ 208, %bb.ev ], [ 208, %bb.er ], [ 208, %bb.ep ], [ 208, %bb.el ], [ 208, %bb.ei ], [ 208, %bb.ec ], [ 224, %bb.dv ], [ 224, %bb.dp ], [ 232, %bb.dl ], [ 232, %.body.i.i52.i.i ], [ 208, %bb.da ], [ 208, %bb.ct ], [ 256, %bb.co ], [ 208, %bb.ms ], [ 256, %.body6.i.i.i.i ], [ 208, %bb.mp ], [ 208, %bb.mv ], [ 208, %bb.cw ], [ 208, %bb.ml ], [ 208, %bb.dc ], [ 208, %bb.io ], [ 232, %bb.me ], [ 224, %bb.dr ], [ 224, %bb.ea ], [ 224, %bb.dx ], [ 232, %bb.mh ], [ 208, %bb.ee ], [ 208, %bb.lu ], [ 208, %bb.hs ], [ 208, %bb.lo ], [ 208, %bb.ex ], [ 248, %bb.kc ], [ 208, %bb.fd ], [ 232, %bb.li ], [ 208, %bb.fj ], [ 232, %bb.ic ], [ 208, %bb.fp ], [ 208, %bb.ky ], [ 208, %bb.fv ], [ 232, %bb.jq ], [ 232, %bb.ge ], [ 208, %bb.kj ], [ 208, %bb.gk ], [ 272, %bb.ha ], [ 272, %bb.gx ], [ 256, %bb.ho ], [ 256, %bb.hl ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.vh, %bb.mj ], [ %.pn.i.i158.i.i, %.body.i.i157.i.i ], [ %i.un, %bb.ls ], [ %i.uh, %bb.lm ], [ %.pn.i.i148.i.i, %.body.i.i147.i.i ], [ %i.tn, %bb.kw ], [ %i.qr, %bb.ii ], [ %i.tm, %bb.ku ], [ %i.ti, %bb.kp ], [ %i.tf, %bb.kn ], [ %i.tl, %bb.kt ], [ %i.sx, %bb.kg ], [ %i.ss, %bb.jz ], [ %.pn.i.i136.i.i, %.body.i.i135.i.i ], [ %i.sw, %bb.ke ], [ %.pn.i.i130.i.i, %.body.i.i129.i.i ], [ %.pn.i.i124.i.i, %.body.i.i123.i.i ], [ %i.rt, %bb.jg ], [ %i.ri, %bb.ix ], [ %.pn.i.i118.i.i, %.body.i.i117.i.i ], [ %i.qu, %bb.im ], [ %i.qo, %bb.ig ], [ %.pn.i.i108.i.i, %.body.i.i107.i.i ], [ %i.pv, %bb.hq ], [ %.pn2.i.i98.i.i, %.body6.i.i97.i.i ], [ %.pn2.i.i88.i.i, %.body6.i.i87.i.i ], [ %i.od, %bb.gi ], [ %.pn.i.i78.i.i, %.body.i.i77.i.i ], [ %i.nm, %bb.ft ], [ %i.ng, %bb.fn ], [ %i.na, %bb.fh ], [ %i.mu, %bb.fb ], [ %i.mo, %bb.ev ], [ %i.ml, %bb.er ], [ %i.mi, %bb.ep ], [ %i.mf, %bb.el ], [ %i.ma, %bb.ei ], [ %i.lu, %bb.ec ], [ %i.ln, %bb.dv ], [ %i.lg, %bb.dp ], [ %i.ld, %bb.dl ], [ %.pn.i.i53.i.i, %.body.i.i52.i.i ], [ %i.kp, %bb.da ], [ %i.kh, %bb.ct ], [ %i.kd, %bb.co ], [ %i.vt, %bb.ms ], [ %.pn2.i.i.i.i, %.body6.i.i.i.i ], [ %i.vo, %bb.mp ], [ %i.vw, %bb.mv ], [ %i.km, %bb.cw ], [ %i.vk, %bb.ml ], [ %i.ks, %bb.dc ], [ %i.qx, %bb.io ], [ %i.vd, %bb.me ], [ %i.lj, %bb.dr ], [ %i.lt, %bb.ea ], [ %i.lq, %bb.dx ], [ %i.vg, %bb.mh ], [ %i.lx, %bb.ee ], [ %i.uq, %bb.lu ], [ %i.py, %bb.hs ], [ %i.uk, %bb.lo ], [ %i.mr, %bb.ex ], [ %i.sv, %bb.kc ], [ %i.mx, %bb.fd ], [ %i.ud, %bb.li ], [ %i.nd, %bb.fj ], [ %i.ql, %bb.ic ], [ %i.nj, %bb.fp ], [ %i.tq, %bb.ky ], [ %i.np, %bb.fv ], [ %i.sh, %bb.jq ], [ %i.oa, %bb.ge ], [ %i.tc, %bb.kj ], [ %i.og, %bb.gk ], [ %i.pb, %bb.ha ], [ %i.oy, %bb.gx ], [ %i.pu, %bb.ho ], [ %i.pr, %bb.hl ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val268, i64 noundef %.sink.i.i, i64 noundef 8) #25
  br label %.body283

bb.cr:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.mv

bb.cs:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %i.ki = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ki) #22
          to label %common.resume.i.i unwind label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.kj = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 4 uses
  %i.kk = load i64, ptr %i.kj, align 8, !range !9, !alias.scope !1238, !noundef !8
  %i.kl = icmp eq i64 %i.kk, -1
  br i1 %i.kl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kj)
          to label %common.resume.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cy:                                            ; preds = %bb.ct
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cz:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.db unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kq) #22
          to label %common.resume.i.i unwind label %bb.de

bb.db:                                            ; preds = %bb.cz
  %i.kr = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %common.resume.i.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.de:                                            ; preds = %bb.da
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.df:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kv = landingpad { ptr, i32 }
          cleanup
  %i.kw = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kw) #22
          to label %.body.i.i52.i.i unwind label %bb.dn

bb.dh:                                            ; preds = %bb.df
  %i.kx = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i55.i.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %.body.i.i52.i.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i55.i.i: ; preds = %bb.dh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i56.i.i unwind label %bb.dk

.body.i.i52.i.i:                                  ; preds = %bb.dk, %bb.di, %bb.dg
  %.pn.i.i53.i.i = phi { ptr, i32 } [ %i.kv, %bb.dg ], [ %i.lb, %bb.dk ], [ %i.ky, %bb.di ]
  %i.la = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.la) #22
          to label %common.resume.i.i unwind label %bb.dn

bb.dk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i55.i.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i52.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i56.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i55.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i56.i.i
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %common.resume.i.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dn:                                            ; preds = %.body.i.i52.i.i, %bb.dg
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.do:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val268)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lh) #22
          to label %common.resume.i.i unwind label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %i.li = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %common.resume.i.i unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i: ; preds = %bb.dw, %bb.dq
  %i.ll = phi ptr [ %i.li, %bb.dq ], [ %i.lp, %bb.dw ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ll)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.ea

bb.dt:                                            ; preds = %bb.dp
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.du:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val268)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ln = landingpad { ptr, i32 }
          cleanup
  %i.lo = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lo) #22
          to label %common.resume.i.i unwind label %bb.dz

bb.dw:                                            ; preds = %bb.du
  %i.lp = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %common.resume.i.i unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dz:                                            ; preds = %bb.dv
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ea:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.eb:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ed unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.lu = landingpad { ptr, i32 }
          cleanup
  %i.lv = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lv) #22
          to label %common.resume.i.i unwind label %bb.eg

bb.ed:                                            ; preds = %bb.eb
  %i.lw = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %common.resume.i.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.eg:                                            ; preds = %bb.ec
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.eh:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.mb) #22
          to label %common.resume.i.i unwind label %bb.en

bb.ej:                                            ; preds = %bb.eh
  %i.mc = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 4 uses
  %i.md = load i64, ptr %i.mc, align 8, !range !9, !alias.scope !1239, !noundef !8
  %i.me = icmp eq i64 %i.md, -1
  br i1 %i.me, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %common.resume.i.i unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.en:                                            ; preds = %bb.ei
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.eo:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.eq unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mi = landingpad { ptr, i32 }
          cleanup
  %i.mj = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mj) #22
          to label %common.resume.i.i unwind label %bb.et

bb.eq:                                            ; preds = %bb.eo
  %i.mk = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %common.resume.i.i unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.et:                                            ; preds = %bb.ep
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.eu:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ew unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mp) #22
          to label %common.resume.i.i unwind label %bb.ez

bb.ew:                                            ; preds = %bb.eu
  %i.mq = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %common.resume.i.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ez:                                            ; preds = %bb.ev
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fa:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.fc unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv) #22
          to label %common.resume.i.i unwind label %bb.ff

bb.fc:                                            ; preds = %bb.fa
  %i.mw = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %common.resume.i.i unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ff:                                            ; preds = %bb.fb
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fg:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.na = landingpad { ptr, i32 }
          cleanup
  %i.nb = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nb) #22
          to label %common.resume.i.i unwind label %bb.fl

bb.fi:                                            ; preds = %bb.fg
  %i.nc = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %common.resume.i.i unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fl:                                            ; preds = %bb.fh
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fm:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.fo unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nh) #22
          to label %common.resume.i.i unwind label %bb.fr

bb.fo:                                            ; preds = %bb.fm
  %i.ni = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni)
          to label %common.resume.i.i unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fr:                                            ; preds = %bb.fn
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fs:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.fu unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.nm = landingpad { ptr, i32 }
          cleanup
  %i.nn = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nn) #22
          to label %common.resume.i.i unwind label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.no = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %common.resume.i.i unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fx:                                            ; preds = %bb.ft
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.fy:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.ga unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ns = landingpad { ptr, i32 }
          cleanup
  %i.nt = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nt) #22
          to label %.body.i.i77.i.i unwind label %bb.gg

bb.ga:                                            ; preds = %bb.fy
  %i.nu = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i80.i.i unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %.body.i.i77.i.i unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i80.i.i: ; preds = %bb.ga
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i81.i.i unwind label %bb.gd

.body.i.i77.i.i:                                  ; preds = %bb.gd, %bb.gb, %bb.fz
  %.pn.i.i78.i.i = phi { ptr, i32 } [ %i.ns, %bb.fz ], [ %i.ny, %bb.gd ], [ %i.nv, %bb.gb ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx) #22
          to label %common.resume.i.i unwind label %bb.gg

bb.gd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i80.i.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i77.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i81.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i80.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i81.i.i
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %common.resume.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.gg:                                            ; preds = %.body.i.i77.i.i, %bb.fz
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.gh:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oe) #22
          to label %common.resume.i.i unwind label %bb.gm

bb.gj:                                            ; preds = %bb.gh
  %i.of = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.of)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.of)
          to label %common.resume.i.i unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.gm:                                            ; preds = %bb.gi
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.gn:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %.val268)
          to label %bb.gp unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.oj = landingpad { ptr, i32 }
          cleanup
  %i.ok = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #22
          to label %.body.i.i85.i.i unwind label %bb.gz

bb.gp:                                            ; preds = %bb.gn
  %i.ol = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ol)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i90.i.i unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ol)
          to label %.body.i.i85.i.i unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i90.i.i: ; preds = %bb.gp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ol)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i91.i.i unwind label %bb.gs

.body.i.i85.i.i:                                  ; preds = %bb.gs, %bb.gq, %bb.go
  %.pn.i.i86.i.i = phi { ptr, i32 } [ %i.oj, %bb.go ], [ %i.op, %bb.gs ], [ %i.om, %bb.gq ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oo) #22
          to label %.body6.i.i87.i.i unwind label %bb.gz

bb.gs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i90.i.i
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i85.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i91.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i90.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i92.i.i unwind label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i91.i.i
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %.body6.i.i87.i.i unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i92.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i91.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i93.i.i unwind label %bb.gv

.body6.i.i87.i.i:                                 ; preds = %bb.gv, %bb.gt, %.body.i.i85.i.i
  %.pn2.i.i88.i.i = phi { ptr, i32 } [ %.pn.i.i86.i.i, %.body.i.i85.i.i ], [ %i.ou, %bb.gv ], [ %i.or, %bb.gt ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.val268, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ot) #22
          to label %common.resume.i.i unwind label %bb.gz

bb.gv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i92.i.i
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i87.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i92.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.val268, i64 216 ; 4 uses
  %i.ow = load i64, ptr %i.ov, align 8, !range !9, !alias.scope !1240, !noundef !8
  %i.ox = icmp eq i64 %i.ow, -1
  br i1 %i.ox, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.gw

bb.gw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i93.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i94.i.i unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.oy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %common.resume.i.i unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.oz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i94.i.i: ; preds = %bb.gw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.ha

bb.gz:                                            ; preds = %.body6.i.i87.i.i, %.body.i.i85.i.i, %bb.go
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ha:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i94.i.i
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.hb:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val268)
          to label %bb.hd unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pd) #22
          to label %.body.i.i95.i.i unwind label %bb.hn

bb.hd:                                            ; preds = %bb.hb
  %i.pe = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pe)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i100.i.i unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.pf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pe)
          to label %.body.i.i95.i.i unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i100.i.i: ; preds = %bb.hd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pe)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i101.i.i unwind label %bb.hg

.body.i.i95.i.i:                                  ; preds = %bb.hg, %bb.he, %bb.hc
  %.pn.i.i96.i.i = phi { ptr, i32 } [ %i.pc, %bb.hc ], [ %i.pi, %bb.hg ], [ %i.pf, %bb.he ]
  %i.ph = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ph) #22
          to label %.body6.i.i97.i.i unwind label %bb.hn

bb.hg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i100.i.i
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i101.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i100.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i102.i.i unwind label %bb.hh

bb.hh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i101.i.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %.body6.i.i97.i.i unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i102.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i101.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i103.i.i unwind label %bb.hj

.body6.i.i97.i.i:                                 ; preds = %bb.hj, %bb.hh, %.body.i.i95.i.i
  %.pn2.i.i98.i.i = phi { ptr, i32 } [ %.pn.i.i96.i.i, %.body.i.i95.i.i ], [ %i.pn, %bb.hj ], [ %i.pk, %bb.hh ]
  %i.pm = getelementptr inbounds nuw i8, ptr %.val268, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pm) #22
          to label %common.resume.i.i unwind label %bb.hn

bb.hj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i102.i.i
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i97.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i103.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i5.i.i102.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %.val268, i64 216 ; 4 uses
  %i.pp = load i64, ptr %i.po, align 8, !range !9, !alias.scope !1241, !noundef !8
  %i.pq = icmp eq i64 %i.pp, -1
  br i1 %i.pq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i103.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.po)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.po)
          to label %common.resume.i.i unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.hn:                                            ; preds = %.body6.i.i97.i.i, %.body.i.i95.i.i, %bb.hc
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ho:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.hp:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.hr unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.pv = landingpad { ptr, i32 }
          cleanup
  %i.pw = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pw) #22
          to label %common.resume.i.i unwind label %bb.hu

bb.hr:                                            ; preds = %bb.hp
  %i.px = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.px)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.px)
          to label %common.resume.i.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.hu:                                            ; preds = %bb.hq
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.hv:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.qb = landingpad { ptr, i32 }
          cleanup
  %i.qc = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qc) #22
          to label %.body.i.i107.i.i unwind label %bb.ie

bb.hx:                                            ; preds = %bb.hv
  %i.qd = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i110.i.i unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %.body.i.i107.i.i unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.qf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i110.i.i: ; preds = %bb.hx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i111.i.i unwind label %bb.ia

.body.i.i107.i.i:                                 ; preds = %bb.ia, %bb.hy, %bb.hw
  %.pn.i.i108.i.i = phi { ptr, i32 } [ %i.qb, %bb.hw ], [ %i.qh, %bb.ia ], [ %i.qe, %bb.hy ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qg) #22
          to label %common.resume.i.i unwind label %bb.ie

bb.ia:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i110.i.i
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i107.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i111.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i110.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 4 uses
  %i.qj = load i64, ptr %i.qi, align 8, !range !9, !alias.scope !1242, !noundef !8
  %i.qk = icmp eq i64 %i.qj, -1
  br i1 %i.qk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i111.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ql = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qi)
          to label %common.resume.i.i unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ie:                                            ; preds = %.body.i.i107.i.i, %bb.hw
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.if:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ih unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.qo = landingpad { ptr, i32 }
          cleanup
  %i.qp = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qp) #22
          to label %common.resume.i.i unwind label %bb.ik

bb.ih:                                            ; preds = %bb.if
  %i.qq = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qq)
          to label %common.resume.i.i unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ik:                                            ; preds = %bb.ig
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.il:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.in unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.qu = landingpad { ptr, i32 }
          cleanup
  %i.qv = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qv) #22
          to label %common.resume.i.i unwind label %bb.iq

bb.in:                                            ; preds = %bb.il
  %i.qw = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.qx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qw)
          to label %common.resume.i.i unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.iq:                                            ; preds = %bb.im
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ir:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.it unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ra = landingpad { ptr, i32 }
          cleanup
  %i.rb = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rb) #22
          to label %.body.i.i117.i.i unwind label %bb.iz

bb.it:                                            ; preds = %bb.ir
  %i.rc = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i120.i.i unwind label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %.body.i.i117.i.i unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i120.i.i: ; preds = %bb.it
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i121.i.i unwind label %bb.iw

.body.i.i117.i.i:                                 ; preds = %bb.iw, %bb.iu, %bb.is
  %.pn.i.i118.i.i = phi { ptr, i32 } [ %i.ra, %bb.is ], [ %i.rg, %bb.iw ], [ %i.rd, %bb.iu ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rf) #22
          to label %common.resume.i.i unwind label %bb.iz

bb.iw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i120.i.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i117.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i121.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i120.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ix

bb.ix:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i121.i.i
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rh)
          to label %common.resume.i.i unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.iz:                                            ; preds = %.body.i.i117.i.i, %bb.is
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ja:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val268)
          to label %bb.jc unwind label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.rl = landingpad { ptr, i32 }
          cleanup
  %i.rm = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm) #22
          to label %.body.i.i123.i.i unwind label %bb.ji

bb.jc:                                            ; preds = %bb.ja
  %i.rn = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i126.i.i unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %.body.i.i123.i.i unwind label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i126.i.i: ; preds = %bb.jc
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i127.i.i unwind label %bb.jf

.body.i.i123.i.i:                                 ; preds = %bb.jf, %bb.jd, %bb.jb
  %.pn.i.i124.i.i = phi { ptr, i32 } [ %i.rl, %bb.jb ], [ %i.rr, %bb.jf ], [ %i.ro, %bb.jd ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rq) #22
          to label %common.resume.i.i unwind label %bb.ji

bb.jf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i126.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i127.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i126.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i unwind label %bb.jg

bb.jg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i127.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rs)
          to label %common.resume.i.i unwind label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i139.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i127.i.i
  %i.rv = phi ptr [ %i.rs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i127.i.i ], [ %i.sr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i139.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.kc

bb.ji:                                            ; preds = %.body.i.i123.i.i, %bb.jb
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.jj:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.jl unwind label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.rx = landingpad { ptr, i32 }
          cleanup
  %i.ry = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ry) #22
          to label %.body.i.i129.i.i unwind label %bb.js

bb.jl:                                            ; preds = %bb.jj
  %i.rz = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i132.i.i unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.sa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rz)
          to label %.body.i.i129.i.i unwind label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.sb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i132.i.i: ; preds = %bb.jl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i133.i.i unwind label %bb.jo

.body.i.i129.i.i:                                 ; preds = %bb.jo, %bb.jm, %bb.jk
  %.pn.i.i130.i.i = phi { ptr, i32 } [ %i.rx, %bb.jk ], [ %i.sd, %bb.jo ], [ %i.sa, %bb.jm ]
  %i.sc = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.sc) #22
          to label %common.resume.i.i unwind label %bb.js

bb.jo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i132.i.i
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i129.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i133.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i132.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 4 uses
  %i.sf = load i64, ptr %i.se, align 8, !range !9, !alias.scope !1243, !noundef !8
  %i.sg = icmp eq i64 %i.sf, -1
  br i1 %i.sg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.jp

bb.jp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i133.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.se)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.sh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.se)
          to label %common.resume.i.i unwind label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.si = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.js:                                            ; preds = %.body.i.i129.i.i, %bb.jk
  %i.sj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.jt:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val268)
          to label %bb.jv unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.sk = landingpad { ptr, i32 }
          cleanup
  %i.sl = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sl) #22
          to label %.body.i.i135.i.i unwind label %bb.kb

bb.jv:                                            ; preds = %bb.jt
  %i.sm = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i138.i.i unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.sn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm)
          to label %.body.i.i135.i.i unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i138.i.i: ; preds = %bb.jv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i139.i.i unwind label %bb.jy

.body.i.i135.i.i:                                 ; preds = %bb.jy, %bb.jw, %bb.ju
  %.pn.i.i136.i.i = phi { ptr, i32 } [ %i.sk, %bb.ju ], [ %i.sq, %bb.jy ], [ %i.sn, %bb.jw ]
  %i.sp = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sp) #22
          to label %common.resume.i.i unwind label %bb.kb

bb.jy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i138.i.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i139.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i138.i.i
  %i.sr = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i unwind label %bb.jz

bb.jz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i139.i.i
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sr)
          to label %common.resume.i.i unwind label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.kb:                                            ; preds = %.body.i.i135.i.i, %bb.ju
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.kc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.kd:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.val268)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.kf:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.kh unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.sx = landingpad { ptr, i32 }
          cleanup
  %i.sy = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.sy) #22
          to label %common.resume.i.i unwind label %bb.kl

bb.kh:                                            ; preds = %bb.kf
  %i.sz = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 4 uses
  %i.ta = load i64, ptr %i.sz, align 8, !range !9, !alias.scope !1244, !noundef !8
  %i.tb = icmp eq i64 %i.ta, -1
  br i1 %i.tb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sz)
          to label %common.resume.i.i unwind label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.kl:                                            ; preds = %bb.kg
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.km:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ko unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.tf = landingpad { ptr, i32 }
          cleanup
  %i.tg = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tg) #22
          to label %common.resume.i.i unwind label %bb.kr

bb.ko:                                            ; preds = %bb.km
  %i.th = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.th)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.th)
          to label %common.resume.i.i unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.kr:                                            ; preds = %bb.kn
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ks:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %.val268)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

.invoke.invoke.i.i:                               ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.val268)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.ku

bb.ku:                                            ; preds = %.invoke.invoke.i.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.kv:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.kx unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.tn = landingpad { ptr, i32 }
          cleanup
  %i.to = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.to) #22
          to label %common.resume.i.i unwind label %bb.la

bb.kx:                                            ; preds = %bb.kv
  %i.tp = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %common.resume.i.i unwind label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.la:                                            ; preds = %bb.kw
  %i.ts = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.lb:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.ld unwind label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.tt = landingpad { ptr, i32 }
          cleanup
  %i.tu = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tu) #22
          to label %.body.i.i147.i.i unwind label %bb.lk

bb.ld:                                            ; preds = %bb.lb
  %i.tv = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i150.i.i unwind label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.tw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tv)
          to label %.body.i.i147.i.i unwind label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.tx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i150.i.i: ; preds = %bb.ld
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i151.i.i unwind label %bb.lg

.body.i.i147.i.i:                                 ; preds = %bb.lg, %bb.le, %bb.lc
  %.pn.i.i148.i.i = phi { ptr, i32 } [ %i.tt, %bb.lc ], [ %i.tz, %bb.lg ], [ %i.tw, %bb.le ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ty) #22
          to label %common.resume.i.i unwind label %bb.lk

bb.lg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i150.i.i
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i147.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i151.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i150.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 4 uses
  %i.ub = load i64, ptr %i.ua, align 8, !range !9, !alias.scope !1245, !noundef !8
  %i.uc = icmp eq i64 %i.ub, -1
  br i1 %i.uc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.lh

bb.lh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i151.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ua)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ud = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ua)
          to label %common.resume.i.i unwind label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i: ; preds = %bb.md, %bb.lh, %bb.jp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i121.i.i, %bb.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i81.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i56.i.i
  %i.uf = phi ptr [ %i.ua, %bb.lh ], [ %i.se, %bb.jp ], [ %i.rh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i121.i.i ], [ %i.qi, %bb.ib ], [ %i.nz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i81.i.i ], [ %i.lc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i56.i.i ], [ %i.va, %bb.md ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.mh

bb.lk:                                            ; preds = %.body.i.i147.i.i, %bb.lc
  %i.ug = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ll:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.ln unwind label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.uh = landingpad { ptr, i32 }
          cleanup
  %i.ui = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ui) #22
          to label %common.resume.i.i unwind label %bb.lq

bb.ln:                                            ; preds = %bb.ll
  %i.uj = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.uk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %common.resume.i.i unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.lq:                                            ; preds = %bb.lm
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.lr:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.lt unwind label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.un = landingpad { ptr, i32 }
          cleanup
  %i.uo = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uo) #22
          to label %common.resume.i.i unwind label %bb.lw

bb.lt:                                            ; preds = %bb.lr
  %i.up = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.up)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.uq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.up)
          to label %common.resume.i.i unwind label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ur = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.lw:                                            ; preds = %bb.ls
  %i.us = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.lx:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val268)
          to label %bb.lz unwind label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.ut = landingpad { ptr, i32 }
          cleanup
  %i.uu = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uu) #22
          to label %.body.i.i157.i.i unwind label %bb.mg

bb.lz:                                            ; preds = %bb.lx
  %i.uv = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i160.i.i unwind label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uv)
          to label %.body.i.i157.i.i unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i160.i.i: ; preds = %bb.lz
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i161.i.i unwind label %bb.mc

.body.i.i157.i.i:                                 ; preds = %bb.mc, %bb.ma, %bb.ly
  %.pn.i.i158.i.i = phi { ptr, i32 } [ %i.ut, %bb.ly ], [ %i.uz, %bb.mc ], [ %i.uw, %bb.ma ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.val268, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.uy) #22
          to label %common.resume.i.i unwind label %bb.mg

bb.mc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i160.i.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i157.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i161.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i160.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %.val268, i64 192 ; 4 uses
  %i.vb = load i64, ptr %i.va, align 8, !range !9, !alias.scope !1246, !noundef !8
  %i.vc = icmp eq i64 %i.vb, -1
  br i1 %i.vc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.md

bb.md:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i161.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.vd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %common.resume.i.i unwind label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.mg:                                            ; preds = %.body.i.i157.i.i, %bb.ly
  %i.vf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.mh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.mi:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.mk unwind label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.vh = landingpad { ptr, i32 }
          cleanup
  %i.vi = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vi) #22
          to label %common.resume.i.i unwind label %bb.mn

bb.mk:                                            ; preds = %bb.mi
  %i.vj = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.vk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vj)
          to label %common.resume.i.i unwind label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i: ; preds = %bb.mr, %bb.mk, %bb.lt, %bb.ln, %bb.kx, %bb.ko, %bb.ki, %bb.in, %bb.ih, %bb.hr, %bb.gj, %bb.fu, %bb.fo, %bb.fi, %bb.fc, %bb.ew, %bb.eq, %bb.ek, %bb.ed, %bb.db, %bb.cv
  %i.vm = phi ptr [ %i.vj, %bb.mk ], [ %i.up, %bb.lt ], [ %i.uj, %bb.ln ], [ %i.tp, %bb.kx ], [ %i.th, %bb.ko ], [ %i.sz, %bb.ki ], [ %i.qw, %bb.in ], [ %i.qq, %bb.ih ], [ %i.px, %bb.hr ], [ %i.of, %bb.gj ], [ %i.no, %bb.fu ], [ %i.ni, %bb.fo ], [ %i.nc, %bb.fi ], [ %i.mw, %bb.fc ], [ %i.mq, %bb.ew ], [ %i.mk, %bb.eq ], [ %i.mc, %bb.ek ], [ %i.lw, %bb.ed ], [ %i.kr, %bb.db ], [ %i.kj, %bb.cv ], [ %i.vq, %bb.mr ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.mv

bb.mn:                                            ; preds = %bb.mj
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.mo:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val268)
          to label %bb.mq unwind label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.vo = landingpad { ptr, i32 }
          cleanup
  %i.vp = getelementptr inbounds nuw i8, ptr %.val268, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.vp) #22
          to label %common.resume.i.i unwind label %bb.mu

bb.mq:                                            ; preds = %bb.mo
  %i.vq = getelementptr inbounds nuw i8, ptr %.val268, i64 168 ; 4 uses
  %i.vr = load i64, ptr %i.vq, align 8, !range !9, !alias.scope !1247, !noundef !8
  %i.vs = icmp eq i64 %i.vr, -1
  br i1 %i.vs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i unwind label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.vt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vq)
          to label %common.resume.i.i unwind label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.mu:                                            ; preds = %bb.mp
  %i.vv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.mv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i, %bb.cr
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.mq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i161.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i151.i.i, %.invoke.invoke.i.i, %bb.ks, %bb.kh, %bb.kd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i133.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i111.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i103.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i93.i.i, %bb.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i, %bb.cu, %bb.cr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i.i.i
  %.sink1.i.i = phi i64 [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i94.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.invoke.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i103.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i161.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i152.invoke.invoke.i.i ], [ 208, %bb.cu ], [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i93.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit8.i.i.i.i ], [ 184, %.invoke.invoke.i.i ], [ 192, %bb.ks ], [ 208, %bb.cr ], [ 208, %bb.ej ], [ 208, %bb.kh ], [ 200, %bb.kd ], [ 208, %bb.mq ], [ 208, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i164.invoke.invoke.i.i ], [ 248, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit4.i.i128.invoke.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i133.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i111.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i151.i.i ], [ 224, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i58.invoke.i.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val268, i64 noundef %.sink1.i.i, i64 noundef 8) #25
  %.pre = load ptr, ptr %i.cj, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECs4KzxGwe94yc_9yara_x_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i, %bb.cd
  %i.vx = phi ptr [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECs4KzxGwe94yc_9yara_x_ls.exit.i ], [ %i.ck, %bb.cd ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 0, ptr %i.av, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.vz, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  store i64 0, ptr %i.wa, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ce, i64 2704
  %i.wc = load ptr, ptr %i.wb, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ce, i64 2712
  %i.we = load i64, ptr %i.wd, align 8, !noundef !8 ; 2 uses
  %.idx831 = shl nuw nsw i64 %i.we, 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx831
  %i.wg = icmp eq i64 %i.we, 0
  br i1 %i.wg, label %._crit_edge825, label %.lr.ph824

.lr.ph824:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECs4KzxGwe94yc_9yara_x_ls.exit
  %i.wh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.715.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.wk = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.wo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ak, i64 42
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.wz = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.xa = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.xb = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.xc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ah, i64 184 ; 6 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ah, i64 112 ; 2 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 7 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ah, i64 208 ; 7 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ap, i64 284
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.xw = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.vx, i64 44
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vx, i64 64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vx, i64 42
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vx, i64 60
  %i.yc = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vx, i64 28
  %i.ye = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vx, i64 36
  br label %bb.mz

._crit_edge825:                                   ; preds = %.loopexit707, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECs4KzxGwe94yc_9yara_x_ls.exit
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2000
  %i.yh = load ptr, ptr %i.yg, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ce, i64 2008
  %i.yj = load i64, ptr %i.yi, align 8, !noundef !8 ; 2 uses
  %.idx833 = shl nuw nsw i64 %i.yj, 4
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 %.idx833
  %i.yl = icmp eq i64 %i.yj, 0
  br i1 %i.yl, label %._crit_edge830, label %.lr.ph829

.lr.ph829:                                        ; preds = %._crit_edge825
  %i.ym = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.yn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.726.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.yt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.yv = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.yx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.yy = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  %i.yz = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.za = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.zb = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.zc = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.zd = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ze = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.zh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.zk = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  %i.zl = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 6 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 7 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.t, i64 160 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.t, i64 208 ; 7 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ab, i64 284
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.zv = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %.pre900 = load ptr, ptr %i.cj, align 8         ; 12 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.pre900, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %.pre900, i64 8
  %i.aac = getelementptr inbounds nuw i8, ptr %.pre900, i64 44
  %i.aad = getelementptr inbounds nuw i8, ptr %.pre900, i64 64
  %i.aae = getelementptr inbounds nuw i8, ptr %.pre900, i64 40
  %i.aaf = getelementptr inbounds nuw i8, ptr %.pre900, i64 42
  %i.aag = getelementptr inbounds nuw i8, ptr %.pre900, i64 60
  %i.aah = getelementptr inbounds nuw i8, ptr %.pre900, i64 24
end_hunk_0
