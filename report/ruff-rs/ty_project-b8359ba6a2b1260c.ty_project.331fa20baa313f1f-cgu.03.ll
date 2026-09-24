Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.03?download=true
inline.NumInlined: 1216
inline.NumDeleted: 541
begin_hunk_0_@_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2u_7SpannedpENtB1i_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs4o81Y09oZk1_10ty_project:bb.a
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1497
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project.exit.i.i22.i: ; preds = %bb.bd
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeFloatECs4o81Y09oZk1_10ty_project.exit23.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeFloatECs4o81Y09oZk1_10ty_project.exit23.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project.exit.i.i22.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1497
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeFloatECs4o81Y09oZk1_10ty_project.exit23.i, %.noexc21, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false), !noalias !1497
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1504
  invoke void @_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.c)
          to label %bb.bi unwind label %bb.bh, !noalias !1505

bb.bh:                                            ; preds = %bb.bg
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #15
          to label %.body.thread61 unwind label %bb.bk, !noalias !1505

bb.bi:                                            ; preds = %bb.bg
  %i.cr = load i64, ptr %i.b, align 8, !range !16, !noalias !1504, !noundef !8
  %.not.i.i = icmp eq i64 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1504
  br i1 %.not.i.i, label %bb.bj, label %_RNCINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB8_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2t_7SpannedpENtB1k_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE0Cs4o81Y09oZk1_10ty_project.exit.i

bb.bj:                                            ; preds = %bb.bi
  store i64 1, ptr %i.c, align 8, !alias.scope !1503, !noalias !1505
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.1650.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1503, !noalias !1505
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.17.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1503, !noalias !1505
  br label %_RNCINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB8_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2t_7SpannedpENtB1k_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE0Cs4o81Y09oZk1_10ty_project.exit.i

bb.bk:                                            ; preds = %bb.bh
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1505
  unreachable

_RNCINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB8_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2t_7SpannedpENtB1k_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE0Cs4o81Y09oZk1_10ty_project.exit.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1497
  br label %bb.bx

.noexc24:                                         ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1497
  %i.ct = icmp ult i64 %.sroa.14.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.12.0.copyload, i64 %.sroa.14.0.copyload
  store ptr %.sroa.12.0.copyload, ptr %i.d, align 8, !noalias !1497
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.12.0.copyload, ptr %.sroa.4.0..sroa_idx.i12, align 8, !noalias !1497
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1497
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cu, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !1497
  call void @_RINvYINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtBc_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtB17_7Visitor9visit_seqNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5array14ArraySeqAccessECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1497
  br label %.noexc

.noexc25:                                         ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1497
  store i64 %.sroa.6.0.copyload, ptr %i.cv, align 8, !noalias !1496
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.8..sroa_idx, align 8, !noalias !1496
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.8..sroa_idx, align 8, !noalias !1496
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.16.0.copyload, ptr %.sroa.16.8..sroa_idx, align 8, !noalias !1496
  store i64 %.sroa.1650.0.copyload, ptr %i.e, align 8, !noalias !1497
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.17.0.copyload, ptr %i.cw, align 8, !noalias !1497
  call void @_RINvXs_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5tableNtB5_17TableDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2q_7SpannedpENtB1h_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1497
  br label %.noexc

bb.bl:                                            ; preds = %.noexc
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !noalias !1506
  store i64 2, ptr %0, align 8, !alias.scope !1496, !noalias !1506
  br label %bb.bx

bb.bm:                                            ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load <2 x i64>, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.db = icmp eq i8 %.sroa.0.0.copyload.pre68, 6
  br i1 %i.db, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value20validate_struct_keys(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.bo unwind label %.body

bb.bo:                                            ; preds = %bb.bn
  %i.dd = load i64, ptr %i.t, align 8, !range !14, !noundef !8
  %.not = icmp eq i64 %i.dd, 2
  br i1 %.not, label %._crit_edge, label %bb.bp

._crit_edge:                                      ; preds = %bb.bo
  %.sroa.0.0.copyload.pre.pre = load i8, ptr %1, align 8
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1508
  invoke void @_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.r)
          to label %bb.br unwind label %bb.bq, !noalias !1509

bb.bq:                                            ; preds = %bb.bp
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.r) #15
          to label %.body.thread unwind label %bb.bt, !noalias !1509

bb.br:                                            ; preds = %bb.bp
  %i.df = load i64, ptr %i.a, align 8, !range !16, !noalias !1508, !noundef !8
  %.not.i26 = icmp eq i64 %i.df, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1508
  br i1 %.not.i26, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  store i64 1, ptr %i.r, align 8, !alias.scope !1507, !noalias !1509
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <2 x i64> %i.da, ptr %.sroa.4.0..sroa_idx.i27, align 8, !alias.scope !1507, !noalias !1509
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1509
  unreachable

bb.bu:                                            ; preds = %._crit_edge, %bb.bm
  %.sroa.0.0.copyload.pre = phi i8 [ %.sroa.0.0.copyload.pre.pre, %._crit_edge ], [ %.sroa.0.0.copyload.pre68, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.o

bb.bv:                                            ; preds = %bb.bs, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

bb.bw:                                            ; preds = %bb.by, %bb.bx, %bb.n
  ret void

bb.bx:                                            ; preds = %bb.bl, %_RNCINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB8_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2t_7SpannedpENtB1k_11Deserialize11deserialize14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE0Cs4o81Y09oZk1_10ty_project.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1497
  br label %bb.bw

bb.by:                                            ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val10 = load i64, ptr %i.dh, align 8, !alias.scope !17, !noundef !8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11 = load i64, ptr %i.di, align 8, !alias.scope !18, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store i64 1, ptr %i.v, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.val10, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.val11, ptr %i.dm, align 8
  call void @_RINvXNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB9_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeINtB3_14SpannedVisitorNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtB14_7Visitor9visit_mapINtNtBb_2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB4f_5error5ErrorEECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bw

.body.thread61:                                   ; preds = %.body.thread, %bb.bh, %bb.be, %bb.ba, %bb.au, %bb.ag, %bb.aa, %bb.w, %bb.u
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.bj, %bb.aa ], [ %eh.lpad-body60, %.body.thread ], [ %i.cq, %bb.bh ], [ %i.be, %bb.u ], [ %i.bq, %bb.ag ], [ %i.ck, %bb.ba ], [ %i.co, %bb.be ], [ %i.bf, %bb.w ], [ %i.ce, %bb.au ]
  resume { ptr, i32 } %eh.lpad-body59

.body.thread:                                     ; preds = %bb.bq, %bb.i, %.body
  %eh.lpad-body60 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.ay, %bb.i ], [ %i.de, %bb.bq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.body.thread61 unwind label %bb.bz

bb.bz:                                            ; preds = %.body.thread
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB2s_18EnvironmentOptionsNtB1i_11Deserialize11deserialize9___VisitorEB2w_(ptr dead_on_unwind noalias nofree noundef writable sret([248 x i8]) align 8 captures(address) dereferenceable(248) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.387.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.3190.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.3200.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.3205.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.3.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.3195.i = alloca [16 x i8], align 8       ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.676.i = alloca [56 x i8], align 8        ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.667.i = alloca [56 x i8], align 8        ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.658.i = alloca [24 x i8], align 8        ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.649.i = alloca [56 x i8], align 8        ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.640.i = alloca [32 x i8], align 8        ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 15 uses
  %i.o = alloca [56 x i8], align 8                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 19 uses
  %i.q = alloca [56 x i8], align 8                ; 15 uses
  %i.r = alloca [32 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 19 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0100.i.i = alloca [144 x i8], align 8    ; 6 uses
  %i.u = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.6.sroa.798.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.v = alloca [88 x i8], align 8                ; 8 uses
  %i.w = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.6.sroa.780.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.x = alloca [88 x i8], align 8                ; 8 uses
  %i.y = alloca [56 x i8], align 8                ; 8 uses
  %i.z = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.6.sroa.762.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.aa = alloca [88 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [88 x i8], align 8               ; 4 uses
  %.sroa.6.sroa.744.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.ad = alloca [88 x i8], align 8               ; 8 uses
  %i.ae = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.6.sroa.726.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.af = alloca [88 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [88 x i8], align 8               ; 4 uses
  %.sroa.6.sroa.7.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.ai = alloca [88 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [88 x i8], align 8               ; 9 uses
  %i.am = alloca [32 x i8], align 8               ; 14 uses
  %i.an = alloca [48 x i8], align 8               ; 9 uses
  %i.ao = alloca [24 x i8], align 4               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [88 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 16 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [88 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 16              ; 6 uses
  %i.av = alloca [32 x i8], align 16              ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 17 uses
  %i.ax = alloca [24 x i8], align 8               ; 9 uses
  %i.ay = alloca [248 x i8], align 8              ; 62 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [88 x i8], align 8               ; 8 uses
  %i.bb = alloca [88 x i8], align 8               ; 8 uses
  %i.bc = alloca [88 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 4               ; 4 uses
  %i.be = alloca [96 x i8], align 8               ; 17 uses
  switch i64 %3, label %thread-pre-split [
    i64 32, label %bb.b
    i64 24, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.bf = load i128, ptr %2, align 1
  %i.bg = xor i128 %i.bf, 133449461371513873610045673065794199332
  %i.bh = getelementptr i8, ptr %2, i64 16
  %i.bi = load i128, ptr %i.bh, align 1
  %i.bj = xor i128 %i.bi, 133449461371513722494322706217924980831
  %i.bk = or i128 %i.bg, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.dy, label %thread-pre-split

bb.c:                                             ; preds = %bb.a
  %i.bo = load i128, ptr %2, align 1
  %i.bp = xor i128 %i.bo, 126803442063571521786421803935237889828
  %i.bq = getelementptr i8, ptr %2, i64 16
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = zext i64 %i.br to i128
  %i.bt = xor i128 %i.bs, 7308613718931431748
  %i.bu = or i128 %i.bp, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.e, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.copyload.pre147.pr = load i8, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.e
  %.sroa.0.0.copyload.pre147 = phi i8 [ %.sroa.0.0.copyload.pre147.pr, %thread-pre-split ], [ %i.cd, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bz = load i8, ptr %i.by, align 8, !range !19, !noundef !8
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.dm, label %bb.o

.body:                                            ; preds = %bb.f, %bb.dn
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load <2 x i64>, ptr %i.cb, align 8
  %i.cd = load i8, ptr %1, align 8                ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 4
  br i1 %i.ce, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bd, ptr noundef nonnull align 4 dereferenceable(24) %i.cf, i64 24, i1 false)
  invoke fastcc void @_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_mapINtNtCsekQk4x1rPVl_13toml_datetime2de20DatetimeDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEEBf_(ptr noalias noundef align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.bd)
          to label %bb.g unwind label %.body

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.cg = load i64, ptr %0, align 8, !range !11, !noundef !8
  %i.ch = icmp eq i64 %i.cg, -2
  br i1 %i.ch, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %i.ci, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1602
  invoke void @_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bb)
          to label %bb.j unwind label %bb.i, !noalias !1603

bb.i:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bb) #15
          to label %.body.thread unwind label %bb.l, !noalias !1603

bb.j:                                             ; preds = %bb.h
  %i.ck = load i64, ptr %i.az, align 8, !range !16, !noalias !1602, !noundef !8
  %.not.i = icmp eq i64 %i.ck, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1602
  br i1 %.not.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store i64 1, ptr %i.bb, align 8, !alias.scope !1601, !noalias !1603
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store <2 x i64> %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1601, !noalias !1603
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1603
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ci, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dv, %bb.m
  store i64 -2, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.g
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.dw

bb.o:                                             ; preds = %bb.du, %bb.d
  %.sroa.0.0.copyload = phi i8 [ %.sroa.0.0.copyload.pre, %bb.du ], [ %.sroa.0.0.copyload.pre147, %bb.d ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.sroa.3.0.copyload = load i32, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 12 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8 ; 9 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.1655.0.copyload = load i64, ptr %.sroa.1655.0..sroa_idx, align 8 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1605
  switch i8 %.sroa.0.0.copyload, label %default.unreachable37.i [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %.noexc13
    i8 5, label %bb.bl
    i8 6, label %.noexc24
  ]

default.unreachable37.i:                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %.not.i12 = icmp eq i64 %.sroa.6.0.copyload, -1
  br i1 %.not.i12, label %bb.z, label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1605
  store i64 %.sroa.6.0.copyload, ptr %i.aw, align 8, !noalias !1604
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.8..sroa_idx41, align 8, !noalias !1604
  %.sroa.14.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.8..sroa_idx47, align 8, !noalias !1604
  %.sroa.16.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.16.0.copyload, ptr %.sroa.16.8..sroa_idx53, align 8, !noalias !1604
  %i.cm = invoke { i64, i64 } @_RNvMNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalueNtB2_9DeInteger6to_i64(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.ab unwind label %bb.aa, !noalias !1605 ; 2 uses

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1605
  store i64 %.sroa.6.0.copyload, ptr %i.ar, align 8, !noalias !1604
  %.sroa.12.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.8..sroa_idx43, align 8, !noalias !1604
  %.sroa.14.8..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.8..sroa_idx49, align 8, !noalias !1604
  %i.cn = invoke { i64, double } @_RNvMs1_NtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalueNtB5_7DeFloat6to_f64(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.av unwind label %bb.au, !noalias !1605 ; 2 uses

bb.s:                                             ; preds = %bb.o
  %i.co = trunc nuw i8 %.sroa.4.0.copyload to i1
  call void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor10visit_boolNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.ay, i1 noundef zeroext %i.co)
  br label %.noexc

.noexc13:                                         ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1605
  store i32 %.sroa.5.sroa.3.0.copyload, ptr %i.ao, align 4, !noalias !1604
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 4, !noalias !1604
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.4..sroa_idx, align 4, !noalias !1604
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %.sroa.14.0.extract.trunc = trunc i64 %.sroa.14.0.copyload to i32
  store i32 %.sroa.14.0.extract.trunc, ptr %.sroa.14.4..sroa_idx, align 4, !noalias !1604
  call fastcc void @_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_mapINtNtCsekQk4x1rPVl_13toml_datetime2de20DatetimeDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEEBf_(ptr noalias noundef align 8 captures(none) dereferenceable(248) %i.ay, ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1605
  br label %.noexc

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1605
  store i64 %.sroa.6.0.copyload, ptr %i.ax, align 8, !noalias !1604
  %.sroa.12.8..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.8..sroa_idx45, align 8, !noalias !1604
  %.sroa.14.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.8..sroa_idx51, align 8, !noalias !1604
  invoke void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.v unwind label %bb.u, !noalias !1606

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax) #15
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECs4o81Y09oZk1_10ty_project.exit unwind label %bb.y, !noalias !1607

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_.exit.i unwind label %bb.w, !noalias !1607

bb.w:                                             ; preds = %bb.v
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECs4o81Y09oZk1_10ty_project.exit unwind label %bb.x, !noalias !1607

bb.x:                                             ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1607
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1607
  unreachable

_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_.exit.i: ; preds = %bb.v
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1605
  br label %.noexc

bb.z:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  call void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12.0.copyload, i64 noundef %.sroa.14.0.copyload)
  br label %.noexc

.noexc:                                           ; preds = %bb.z, %bb.s, %.noexc24, %_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5array14ArraySeqAccessEBf_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeFloatECs4o81Y09oZk1_10ty_project.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue9DeIntegerECs4o81Y09oZk1_10ty_project.exit.i, %_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_.exit.i, %.noexc13
  %i.ct = load i64, ptr %i.ay, align 8, !range !11, !noalias !1605, !noundef !8
  %i.cu = icmp eq i64 %i.ct, -2
  br i1 %i.cu, label %bb.bg, label %bb.dl

bb.aa:                                            ; preds = %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ad, %bb.ac, %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue9DeIntegerECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.aw) #15
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECs4o81Y09oZk1_10ty_project.exit unwind label %bb.at, !noalias !1605

bb.ab:                                            ; preds = %bb.q
  %i.cw = extractvalue { i64, i64 } %i.cm, 0
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cy = extractvalue { i64, i64 } %i.cm, 1
  invoke void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_i64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.ay, i64 noundef %i.cy)
          to label %bb.ae unwind label %bb.aa, !noalias !1605

bb.ad:                                            ; preds = %bb.ab
  %i.cz = invoke { i64, i64 } @_RNvMNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalueNtB2_9DeInteger6to_u64(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.ai unwind label %bb.aa, !noalias !1605 ; 2 uses

bb.ae:                                            ; preds = %bb.as, %bb.ao, %bb.aj, %bb.ac
  %i.da = load i64, ptr %i.aw, align 8, !range !10, !alias.scope !1608, !noalias !1605, !noundef !8
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue9DeIntegerECs4o81Y09oZk1_10ty_project.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project.exit.i.i.i unwind label %bb.ag, !noalias !1605

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECs4o81Y09oZk1_10ty_project.exit unwind label %bb.ah, !noalias !1605

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1605
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project.exit.i.i.i: ; preds = %bb.af
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue9DeIntegerECs4o81Y09oZk1_10ty_project.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue9DeIntegerECs4o81Y09oZk1_10ty_project.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1605
  br label %.noexc

bb.ai:                                            ; preds = %bb.ad
  %i.de = extractvalue { i64, i64 } %i.cz, 0
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = extractvalue { i64, i64 } %i.cz, 1
  invoke void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.ay, i64 noundef %i.dg)
          to label %bb.ae unwind label %bb.aa, !noalias !1605

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1605
  invoke void @_RNvMNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalueNtB2_9DeInteger7to_i128(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.al unwind label %bb.aa, !noalias !1605

bb.al:                                            ; preds = %bb.ak
  %i.dh = load i128, ptr %i.av, align 16, !range !20, !noalias !1605, !noundef !8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB2s_18EnvironmentOptionsNtB1i_11Deserialize11deserialize9___VisitorEB2w_:bb.a
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error14invalid_lengthCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.u, i64 noundef 5, ptr noundef nonnull @18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
          to label %bb.cx unwind label %bb.cs, !noalias !1617

bb.cx:                                            ; preds = %bb.cw
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fn, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false), !noalias !1618
  store i64 -2, ptr %i.ay, align 8, !alias.scope !1615, !noalias !1618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1616
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ct
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB13_(ptr noalias noundef align 8 dereferenceable(56) %i.y)
          to label %bb.cz unwind label %bb.cm, !noalias !1617

bb.cz:                                            ; preds = %bb.cy, %bb.cr, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1616
  %i.fo = load i64, ptr %i.ab, align 8, !range !10, !alias.scope !1619, !noalias !1616, !noundef !8
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB1z_.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i.i.i unwind label %bb.db, !noalias !1617

bb.db:                                            ; preds = %bb.da
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i.i unwind label %bb.dc, !noalias !1617

bb.dc:                                            ; preds = %bb.db
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i.i.i: ; preds = %bb.da
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB1z_.exit.i.i unwind label %bb.cf, !noalias !1617

bb.dd:                                            ; preds = %bb.cs, %bb.cl, %.body.i.i, %bb.by, %bb.bs, %.body213.i.i
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB1z_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i.i.i, %bb.cz, %bb.ck, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1616
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCs2O29vuvTAEJ_14ty_python_core8platform14PythonPlatformEEECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(56) %i.ae)
          to label %bb.de unwind label %bb.bz, !noalias !1617

bb.de:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB1z_.exit.i.i, %bb.ce, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1616
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.ft = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !1620, !noalias !1616, !noundef !8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.fv = icmp eq i64 %i.ft, 0
  br i1 %i.fv, label %bb.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i

bb.dg:                                            ; preds = %bb.df
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !1625, !noalias !1616, !nonnull !8, !noundef !8
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !1626
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i unwind label %bb.bt, !noalias !1617

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i: ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1616
  %i.ga = load i64, ptr %i.aj, align 8, !range !10, !alias.scope !1627, !noalias !1616, !noundef !8
  %i.gb = icmp eq i64 %i.ga, -1
  br i1 %i.gb, label %_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5array14ArraySeqAccessEBf_.exit.i, label %bb.di

bb.di:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i212.i.i unwind label %bb.dj, !noalias !1617

bb.dj:                                            ; preds = %bb.di
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body213.i.i unwind label %bb.dk, !noalias !1617

bb.dk:                                            ; preds = %bb.dj
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i212.i.i: ; preds = %bb.di
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5array14ArraySeqAccessEBf_.exit.i unwind label %bb.bm, !noalias !1617

_RINvXs0_NvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBb_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5array14ArraySeqAccessEBf_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i212.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEEEB1Q_.exit.i.i, %bb.cv, %bb.br, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1616
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.798.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.780.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.762.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.744.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.726.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1605
  br label %.noexc

.noexc24:                                         ; preds = %bb.o
  %i.ge = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1605
  store i64 %.sroa.6.0.copyload, ptr %i.ge, align 8, !noalias !1604
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.8..sroa_idx, align 8, !noalias !1604
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.8..sroa_idx, align 8, !noalias !1604
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %.sroa.16.0.copyload, ptr %.sroa.16.8..sroa_idx, align 8, !noalias !1604
  store i64 %.sroa.1655.0.copyload, ptr %i.an, align 8, !noalias !1605
  %i.gf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.sroa.17.0.copyload, ptr %i.gf, align 8, !noalias !1605
  call void @_RINvXs_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5tableNtB5_17TableDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB2o_18EnvironmentOptionsNtB1h_11Deserialize11deserialize9___VisitorEB2s_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1605
  br label %.noexc

bb.dl:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.ay, i64 248, i1 false), !noalias !1614
  br label %bb.dx

bb.dm:                                            ; preds = %bb.d
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gh = load <2 x i64>, ptr %i.gg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.gi = icmp eq i8 %.sroa.0.0.copyload.pre147, 6
  br i1 %i.gi, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value20validate_struct_keys(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.do unwind label %.body

bb.do:                                            ; preds = %bb.dn
  %i.gk = load i64, ptr %i.bc, align 8, !range !14, !noundef !8
  %.not = icmp eq i64 %i.gk, 2
  br i1 %.not, label %._crit_edge, label %bb.dp

._crit_edge:                                      ; preds = %bb.do
  %.sroa.0.0.copyload.pre.pre = load i8, ptr %1, align 8
  br label %bb.du

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ba, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1629
  invoke void @_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ba)
          to label %bb.dr unwind label %bb.dq, !noalias !1630

bb.dq:                                            ; preds = %bb.dp
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ba) #15
          to label %.body.thread unwind label %bb.dt, !noalias !1630

bb.dr:                                            ; preds = %bb.dp
  %i.gm = load i64, ptr %i.t, align 8, !range !16, !noalias !1629, !noundef !8
  %.not.i25 = icmp eq i64 %i.gm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1629
  br i1 %.not.i25, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  store i64 1, ptr %i.ba, align 8, !alias.scope !1628, !noalias !1630
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x i64> %i.gh, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !1628, !noalias !1630
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dq
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !1630
  unreachable

bb.du:                                            ; preds = %._crit_edge, %bb.dm
  %.sroa.0.0.copyload.pre = phi i8 [ %.sroa.0.0.copyload.pre.pre, %._crit_edge ], [ %.sroa.0.0.copyload.pre147, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.o

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.go, ptr noundef nonnull align 8 dereferenceable(88) %i.ba, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %.sink.split

bb.dw:                                            ; preds = %bb.ic, %bb.dx, %bb.n
  ret void

bb.dx:                                            ; preds = %bb.dl, %_RNCINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB8_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB2r_18EnvironmentOptionsNtB1k_11Deserialize11deserialize9___VisitorE0B2v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1605
  br label %bb.dw

bb.dy:                                            ; preds = %bb.b
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9 = load i64, ptr %i.gp, align 8, !alias.scope !17, !noundef !8
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10 = load i64, ptr %i.gq, align 8, !alias.scope !18, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gr, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store i64 1, ptr %i.be, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.val9, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.val10, ptr %i.gu, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.387.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3190.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3200.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3205.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3195.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.676.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.649.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.640.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1633
  store i64 -2, ptr %i.s, align 8, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1633
  store i64 -2, ptr %i.r, align 8, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1633
  store i64 -2, ptr %i.q, align 8, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1633
  store i64 -2, ptr %i.p, align 8, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1633
  store i64 -2, ptr %i.o, align 8, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1633
  store i64 -2, ptr %i.n, align 8, !noalias !1633
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.dz

bb.dz:                                            ; preds = %.backedge, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1633
  invoke void @_RINvXs_NtCs9VIZOfz6gNk_13serde_spanned2deINtB5_19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB1a_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB4h_18EnvironmentOptionsNtB2y_11Deserialize11deserialize7___FieldEEB4l_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be)
          to label %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB3o_18EnvironmentOptionsNtB2t_11Deserialize11deserialize7___FieldEB3s_.exit.i unwind label %.loopexit.i, !noalias !1631

bb.ea:                                            ; preds = %bb.gg, %bb.fz, %.body260.i, %bb.fj, %bb.fc, %.body.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.je, %bb.gg ], [ %eh.lpad-body.i, %.body.i ], [ %i.if, %bb.fc ], [ %i.il, %bb.fj ], [ %eh.lpad-body261.i, %.body260.i ], [ %i.iy, %bb.fz ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.hd = load i64, ptr %i.n, align 8, !range !11, !noalias !1633, !noundef !8
  %.not227.i = icmp eq i64 %i.hd, -2
  br i1 %.not227.i, label %bb.gw, label %bb.hv

.loopexit.i:                                      ; preds = %bb.gb, %bb.fu, %bb.fl, %bb.fe, %bb.eu, %bb.el, %bb.dz
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp.i:                             ; preds = %bb.ga, %bb.ft, %bb.fk, %bb.fd, %bb.et, %bb.ek
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB3o_18EnvironmentOptionsNtB2t_11Deserialize11deserialize7___FieldEB3s_.exit.i: ; preds = %bb.dz
  %i.he = load i64, ptr %i.m, align 8, !range !14, !noalias !1633, !noundef !8 ; 2 uses
  %.not.i31 = icmp eq i64 %i.he, 2
  %i.hf = load i8, ptr %i.gv, align 8, !noalias !1633 ; 2 uses
  br i1 %.not.i31, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB3o_18EnvironmentOptionsNtB2t_11Deserialize11deserialize7___FieldEB3s_.exit.i
  %.sroa.5125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5128.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5125.0..sroa_idx.i, i64 79, i1 false), !noalias !1632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1633
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hg, align 8, !alias.scope !1631, !noalias !1632
  %.sroa.4127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.hf, ptr %.sroa.4127.0..sroa_idx.i, align 8, !alias.scope !1631, !noalias !1632
  store i64 -2, ptr %0, align 8, !alias.scope !1631, !noalias !1632
  br label %bb.gh

bb.ec:                                            ; preds = %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtB3o_18EnvironmentOptionsNtB2t_11Deserialize11deserialize7___FieldEB3s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1633
  switch i8 %i.hf, label %default.unreachable [
    i8 -1, label %bb.ed
    i8 0, label %bb.ee
    i8 1, label %bb.ef
    i8 2, label %bb.eg
    i8 3, label %bb.eh
    i8 4, label %bb.ei
    i8 5, label %bb.ej
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.hh = load i64, ptr %i.s, align 8, !range !12, !noalias !1633, !noundef !8 ; 2 uses
  %.not208.i = icmp eq i64 %i.hh, -2
  br i1 %.not208.i, label %bb.gj, label %bb.gi

default.unreachable:                              ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.hi = load i64, ptr %i.s, align 8, !range !12, !noalias !1633, !noundef !8
  %.not224.i = icmp eq i64 %i.hi, -2
  br i1 %.not224.i, label %bb.el, label %bb.ek, !prof !21

bb.ef:                                            ; preds = %bb.ec
  %i.hj = load i64, ptr %i.r, align 8, !range !11, !noalias !1633, !noundef !8
  %.not222.i = icmp eq i64 %i.hj, -2
  br i1 %.not222.i, label %bb.eu, label %bb.et, !prof !21

bb.eg:                                            ; preds = %bb.ec
  %i.hk = load i64, ptr %i.q, align 8, !range !11, !noalias !1633, !noundef !8
  %.not220.i = icmp eq i64 %i.hk, -2
  br i1 %.not220.i, label %bb.fe, label %bb.fd, !prof !21

bb.eh:                                            ; preds = %bb.ec
  %i.hl = load i64, ptr %i.p, align 8, !range !12, !noalias !1633, !noundef !8
  %.not218.i = icmp eq i64 %i.hl, -2
  br i1 %.not218.i, label %bb.fl, label %bb.fk, !prof !21

bb.ei:                                            ; preds = %bb.ec
  %i.hm = load i64, ptr %i.o, align 8, !range !11, !noalias !1633, !noundef !8
  %.not216.i = icmp eq i64 %i.hm, -2
  br i1 %.not216.i, label %bb.fu, label %bb.ft, !prof !21

bb.ej:                                            ; preds = %bb.ec
  %i.hn = load i64, ptr %i.n, align 8, !range !11, !noalias !1633, !noundef !8
  %.not214.i = icmp eq i64 %i.hn, -2
  br i1 %.not214.i, label %bb.gb, label %bb.ga, !prof !21

bb.ek:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1633
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error15duplicate_fieldCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4)
          to label %bb.em unwind label %.loopexit.split-lp.i, !noalias !1631

bb.el:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1633
  invoke void @_RINvXs_NtCs9VIZOfz6gNk_13serde_spanned2deINtB5_19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB1a_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB3z_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEEB5b_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be)
          to label %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB4y_.exit.i unwind label %.loopexit.i, !noalias !1631

bb.em:                                            ; preds = %bb.ek
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ho, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !1632
  store i64 -2, ptr %0, align 8, !alias.scope !1631, !noalias !1632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1633
  br label %bb.gh

_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB4y_.exit.i: ; preds = %bb.el
  %i.hp = load i64, ptr %i.k, align 8, !range !14, !noalias !1633, !noundef !8 ; 2 uses
  %.not225.i = icmp eq i64 %i.hp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !noalias !1633
  br i1 %.not225.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB4y_.exit.i
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.5137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5137.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5134.0..sroa_idx.i, i64 56, i1 false), !noalias !1632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1633
  %.sroa.4136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4136.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1632
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hp, ptr %i.hq, align 8, !alias.scope !1631, !noalias !1632
  store i64 -2, ptr %0, align 8, !alias.scope !1631, !noalias !1632
  br label %bb.gh

bb.eo:                                            ; preds = %_RINvYINtNtCs9VIZOfz6gNk_13serde_spanned2de19SpannedDeserializerNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerNtNtB15_5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEB4y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1633
  %i.hr = load i64, ptr %i.s, align 8, !range !12, !alias.scope !1634, !noalias !1633, !noundef !8
  %switch.i.i = icmp ugt i64 %i.hr, -3
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEEEB1D_.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEEB1d_.exit.i.i.i32 unwind label %bb.eq, !noalias !1631

bb.eq:                                            ; preds = %bb.ep
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.er, !noalias !1631

bb.er:                                            ; preds = %bb.eq
end_hunk_1
