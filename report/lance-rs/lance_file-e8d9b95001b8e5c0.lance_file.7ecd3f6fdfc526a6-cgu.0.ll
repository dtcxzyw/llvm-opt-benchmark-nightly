Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvCsc2V0exE7CWf_11lance_arrow26try_new_generic_list_arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtB1y_5types9Int32TypeECsaSXGKSfiU2E_10lance_file:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ck = load i64, ptr %i.ag, align 8, !range !64, !noundef !62 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 32, i1 false)
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bw

bb.af:                                            ; preds = %bb.ad
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.ck, ptr %i.ah, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.ab)
          to label %bb.ag unwind label %bb.bx

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx49, align 8
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.850.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !229
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !229
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !229, !noundef !62 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cr, 1
  br i1 %i.ct, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !229
  store i64 %i.cr, ptr %i.r, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !229
  store ptr %i.r, ptr %i.q, align 8, !noalias !229
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !229
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @698, ptr noundef nonnull %i.q)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.aj, !noalias !229

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !229
  store i64 0, ptr %i.cq, align 8, !noalias !229
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !229, !nonnull !62, !noundef !62
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !229
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !229, !noundef !62 ; 4 uses
  %i.cy = icmp ult i64 %i.cx, 67818912035696881
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cx, 1
  br i1 %i.cz, label %bb.am, label %bb.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i: ; preds = %bb.bj, %.thread90.thread.i, %bb.au, %bb.at, %bb.aj
  %.pn48.i = phi { ptr, i32 } [ %i.da, %bb.aj ], [ %.pn4689.i, %.thread90.thread.i ], [ %.pn4689.i, %bb.bj ], [ %i.dp, %bb.at ], [ %i.dp, %bb.au ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.t) #50
          to label %.body.i unwind label %bb.aw, !noalias !229

bb.aj:                                            ; preds = %bb.ba, %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !229
  store i64 %i.cx, ptr %i.n, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !229
  store ptr %i.n, ptr %i.m, align 8, !noalias !229
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !229
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @697, ptr noundef nonnull %i.m)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i unwind label %.thread.i, !noalias !229

.thread.i:                                        ; preds = %bb.ax, %bb.ak
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.thread.i

bb.al:                                            ; preds = %bb.aq
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.thread.i

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !229
  store i64 0, ptr %i.cw, align 8, !noalias !229
  %i.dc = load i64, ptr %i.t, align 8, !range !65, !noalias !229, !noundef !62 ; 2 uses
  %i.dd = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !229, !nonnull !62, !noundef !62 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %i.df, i64 136, i1 false), !noalias !229
  %.val60.i = load i8, ptr %i.w, align 8, !range !66, !noalias !229, !noundef !62
  %.not.i37 = icmp eq i8 %.val60.i, 27
  br i1 %.not.i37, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.val61.i = load ptr, ptr %i.dg, align 8, !noalias !229
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !229
  store ptr %i.dh, ptr %i.k, align 8, !noalias !229
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.dj = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh)
          to label %bb.ap unwind label %bb.bb, !noalias !229

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !229
  store ptr %i.w, ptr %i.f, align 8, !noalias !229
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !229
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @696, ptr noundef nonnull %i.f)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i unwind label %bb.bb, !noalias !229

bb.ap:                                            ; preds = %bb.an
  br i1 %i.dj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.l, i64 136, i1 false), !noalias !229
  %i.dk = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.d)
          to label %bb.as unwind label %bb.al, !noalias !229 ; 2 uses

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !229
  store ptr %i.di, ptr %i.i, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !229
  store ptr %i.i, ptr %i.h, align 8, !noalias !229
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.dl, align 8, !noalias !229
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !229
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @695, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i unwind label %bb.bb, !noalias !229

bb.as:                                            ; preds = %bb.aq
  %i.dm = extractvalue { ptr, ptr } %i.dk, 0      ; 4 uses
  %i.dn = extractvalue { ptr, ptr } %i.dk, 1      ; 3 uses
  store ptr %i.dm, ptr %i.e, align 8, !noalias !229
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !229
  invoke fastcc void @_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.648.0.copyload)
          to label %bb.av unwind label %bb.at, !noalias !229

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !230
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i unwind label %bb.aw, !noalias !229

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  %.sroa.051.0.copyload52 = load i8, ptr %i.w, align 8, !noalias !231 ; 2 uses
  %.sroa.9.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx54, i64 7, i1 false), !noalias !231
  %.sroa.955.0.copyload57 = load i64, ptr %i.dg, align 8, !noalias !231 ; 2 uses
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.14.0.copyload60 = load i64, ptr %.sroa.14.0..sroa_idx59, align 8, !noalias !231 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !229
  %i.ds = mul nuw i64 %i.dc, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !232, !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !229
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dt = icmp eq i8 %.sroa.051.0.copyload52, -1
  %i.du = insertelement <2 x ptr> poison, ptr %i.dm, i64 0
  %i.dv = insertelement <2 x ptr> %i.du, ptr %i.dn, i64 1
  br i1 %i.dt, label %bb.br, label %bb.bv, !prof !68

.body.i:                                          ; preds = %bb.bh, %.body.i68.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i
  %.pn48.pn.i = phi { ptr, i32 } [ %.pn48.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i ], [ %i.eq, %bb.bh ], [ %i.eq, %.body.i68.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %.thread112.i unwind label %bb.aw, !noalias !229

bb.aw:                                            ; preds = %bb.bq, %bb.bp, %bb.bj, %bb.bb, %.body.i, %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !229
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !229
  %.sroa.14.16.copyload63 = load i64, ptr %i.j, align 8, !noalias !231
  %.sroa.18.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dx = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx68, align 8, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !229
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i
  %.sroa.14.2 = phi i64 [ %.sroa.14.16.copyload63, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i ], [ %.sroa.14.16.copyload62, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i ]
  %i.dy = phi <2 x ptr> [ %i.dx, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i ], [ %i.dz, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.l)
          to label %bb.ay unwind label %.thread.i, !noalias !229

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !229
  %.sroa.14.16.copyload62 = load i64, ptr %i.g, align 8, !noalias !231
  %.sroa.18.16..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dz = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx66, align 8, !noalias !231
  br label %bb.ax

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !229
  br label %bb.az

bb.az:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i, %bb.ay
  %.sroa.14.1 = phi i64 [ %.sroa.14.2, %bb.ay ], [ %.sroa.14.16.copyload61, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  %i.ea = phi i64 [ 0, %bb.ay ], [ %i.cx, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  %i.eb = phi <2 x ptr> [ %i.dy, %bb.ay ], [ %i.ef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ec = load ptr, ptr %i.p, align 8, !alias.scope !236, !noalias !229, !nonnull !62, !noundef !62
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !237
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.aj, !noalias !229

bb.bb:                                            ; preds = %bb.ar, %bb.ao, %bb.an
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.l) #50
          to label %.thread90.thread.i unwind label %bb.aw, !noalias !229

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !229
  %.sroa.14.16.copyload61 = load i64, ptr %i.o, align 8, !noalias !231
  %.sroa.18.16..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ef = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx64, align 8, !noalias !231
  br label %bb.az

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !229
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.14.0 = phi i64 [ %.sroa.14.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %.sroa.14.16.copyload, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ]
  %i.eg = phi i64 [ %i.ea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %.pre.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ] ; 4 uses
  %i.eh = phi <2 x ptr> [ %i.eb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.fb, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !239, !noalias !229, !nonnull !62, !noundef !62 ; 4 uses
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i, label %.lr.ph

bb.bd:                                            ; preds = %.lr.ph
  %i.el = icmp eq i64 %i.en, %i.eg
  br i1 %i.el, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %.sroa.0.0.i.i66.i123 = phi i64 [ %i.en, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.em = getelementptr inbounds nuw [136 x i8], ptr %i.ej, i64 %.sroa.0.0.i.i66.i123
  %i.en = add i64 %.sroa.0.0.i.i66.i123, 1        ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.em) #52
          to label %bb.bd unwind label %bb.bf, !noalias !240, !inline_history !0

bb.be:                                            ; preds = %.lr.ph125
  %i.eo = add i64 %.sroa.0.1.i.i67.i124, 1        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %i.eg
  br i1 %i.ep, label %.body.i68.i, label %.lr.ph125

bb.bf:                                            ; preds = %.lr.ph
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = icmp eq i64 %i.en, %i.eg
  br i1 %i.er, label %.body.i68.i, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.bf, %bb.be
  %.sroa.0.1.i.i67.i124 = phi i64 [ %i.eo, %bb.be ], [ %i.en, %bb.bf ] ; 2 uses
  %i.es = getelementptr inbounds nuw [136 x i8], ptr %i.ej, i64 %.sroa.0.1.i.i67.i124
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.es) #53
          to label %bb.be unwind label %bb.bg, !noalias !240, !inline_history !0

bb.bg:                                            ; preds = %.lr.ph125
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !240, !inline_history !0
  unreachable

.body.i68.i:                                      ; preds = %bb.be, %bb.bf
  %.val2.i69.i = load i64, ptr %i.t, align 8, !range !65, !alias.scope !238, !noalias !229, !noundef !62 ; 2 uses
  %i.eu = icmp eq i64 %.val2.i69.i, 0
  br i1 %i.eu, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %.body.i68.i
  %i.ev = mul nuw i64 %.val2.i69.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !240, !inline_history !67
  br label %.body.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i: ; preds = %bb.bd, %bb.bc
  %.val.i72.i = load i64, ptr %i.t, align 8, !range !65, !alias.scope !238, !noalias !229, !noundef !62 ; 2 uses
  %i.ew = icmp eq i64 %.val.i72.i, 0
  br i1 %i.ew, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i, label %bb.bi

bb.bi:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i
  %i.ex = mul nuw i64 %.val.i72.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !240, !inline_history !67
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i

.thread90.thread.i:                               ; preds = %bb.bb, %bb.al, %.thread.i
  %.pn4689.i = phi { ptr, i32 } [ %i.db, %.thread.i ], [ %lpad.thr_comm.i, %bb.bb ], [ %lpad.thr_comm.split-lp.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ey = load ptr, ptr %i.p, align 8, !alias.scope !244, !noalias !229, !nonnull !62, !noundef !62
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !245
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.bj:                                            ; preds = %.thread90.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i unwind label %bb.aw, !noalias !229

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !229
  %.sroa.14.16.copyload = load i64, ptr %i.s, align 8, !noalias !231
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fb = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx, align 8, !noalias !231
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !239, !noalias !229
  br label %bb.bc

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i: ; preds = %bb.bi, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !229
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %bb.bk unwind label %.thread116.i, !noalias !229

.thread116.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.i

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !229
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.fd = load ptr, ptr %i.v, align 8, !alias.scope !246, !noalias !229, !noundef !62 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ff = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !247
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.bn, !noalias !229

bb.bn:                                            ; preds = %bb.bm
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !229
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.br

.thread112.i:                                     ; preds = %.thread116.i, %.body.i
  %.pn48.pn.pn115.i = phi { ptr, i32 } [ %i.fc, %.thread116.i ], [ %.pn48.pn.i, %.body.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvCsc2V0exE7CWf_11lance_arrow26try_new_generic_list_arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtB1y_5types9Int64TypeECsaSXGKSfiU2E_10lance_file:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ck = load i64, ptr %i.ag, align 8, !range !64, !noundef !62 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 32, i1 false)
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bw

bb.af:                                            ; preds = %bb.ad
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.ck, ptr %i.ah, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.ab)
          to label %bb.ag unwind label %bb.bx

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx49, align 8
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.850.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !320
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !320
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !320, !noundef !62 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cr, 1
  br i1 %i.ct, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !320
  store i64 %i.cr, ptr %i.r, align 8, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !320
  store ptr %i.r, ptr %i.q, align 8, !noalias !320
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !320
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @698, ptr noundef nonnull %i.q)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.aj, !noalias !320

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !320
  store i64 0, ptr %i.cq, align 8, !noalias !320
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !320, !nonnull !62, !noundef !62
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !320
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !320, !noundef !62 ; 4 uses
  %i.cy = icmp ult i64 %i.cx, 67818912035696881
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cx, 1
  br i1 %i.cz, label %bb.am, label %bb.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i: ; preds = %bb.bj, %.thread90.thread.i, %bb.au, %bb.at, %bb.aj
  %.pn48.i = phi { ptr, i32 } [ %i.da, %bb.aj ], [ %.pn4689.i, %.thread90.thread.i ], [ %.pn4689.i, %bb.bj ], [ %i.dp, %bb.at ], [ %i.dp, %bb.au ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.t) #50
          to label %.body.i unwind label %bb.aw, !noalias !320

bb.aj:                                            ; preds = %bb.ba, %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !320
  store i64 %i.cx, ptr %i.n, align 8, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !320
  store ptr %i.n, ptr %i.m, align 8, !noalias !320
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !320
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @697, ptr noundef nonnull %i.m)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i unwind label %.thread.i, !noalias !320

.thread.i:                                        ; preds = %bb.ax, %bb.ak
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.thread.i

bb.al:                                            ; preds = %bb.aq
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.thread.i

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !320
  store i64 0, ptr %i.cw, align 8, !noalias !320
  %i.dc = load i64, ptr %i.t, align 8, !range !65, !noalias !320, !noundef !62 ; 2 uses
  %i.dd = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !320, !nonnull !62, !noundef !62 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %i.df, i64 136, i1 false), !noalias !320
  %.val60.i = load i8, ptr %i.w, align 8, !range !66, !noalias !320, !noundef !62
  %.not.i37 = icmp eq i8 %.val60.i, 30
  br i1 %.not.i37, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.val61.i = load ptr, ptr %i.dg, align 8, !noalias !320
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !320
  store ptr %i.dh, ptr %i.k, align 8, !noalias !320
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.dj = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh)
          to label %bb.ap unwind label %bb.bb, !noalias !320

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !320
  store ptr %i.w, ptr %i.f, align 8, !noalias !320
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !320
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @696, ptr noundef nonnull %i.f)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i unwind label %bb.bb, !noalias !320

bb.ap:                                            ; preds = %bb.an
  br i1 %i.dj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.l, i64 136, i1 false), !noalias !320
  %i.dk = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.d)
          to label %bb.as unwind label %bb.al, !noalias !320 ; 2 uses

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !320
  store ptr %i.di, ptr %i.i, align 8, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !320
  store ptr %i.i, ptr %i.h, align 8, !noalias !320
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !320
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.dl, align 8, !noalias !320
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !320
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @695, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i unwind label %bb.bb, !noalias !320

bb.as:                                            ; preds = %bb.aq
  %i.dm = extractvalue { ptr, ptr } %i.dk, 0      ; 4 uses
  %i.dn = extractvalue { ptr, ptr } %i.dk, 1      ; 3 uses
  store ptr %i.dm, ptr %i.e, align 8, !noalias !320
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !320
  invoke fastcc void @_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.648.0.copyload)
          to label %bb.av unwind label %bb.at, !noalias !320

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !321
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i unwind label %bb.aw, !noalias !320

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %.sroa.051.0.copyload52 = load i8, ptr %i.w, align 8, !noalias !322 ; 2 uses
  %.sroa.9.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx54, i64 7, i1 false), !noalias !322
  %.sroa.955.0.copyload57 = load i64, ptr %i.dg, align 8, !noalias !322 ; 2 uses
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.14.0.copyload60 = load i64, ptr %.sroa.14.0..sroa_idx59, align 8, !noalias !322 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !320
  %i.ds = mul nuw i64 %i.dc, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !323, !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !320
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dt = icmp eq i8 %.sroa.051.0.copyload52, -1
  %i.du = insertelement <2 x ptr> poison, ptr %i.dm, i64 0
  %i.dv = insertelement <2 x ptr> %i.du, ptr %i.dn, i64 1
  br i1 %i.dt, label %bb.br, label %bb.bv, !prof !68

.body.i:                                          ; preds = %bb.bh, %.body.i68.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i
  %.pn48.pn.i = phi { ptr, i32 } [ %.pn48.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i ], [ %i.eq, %bb.bh ], [ %i.eq, %.body.i68.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %.thread112.i unwind label %bb.aw, !noalias !320

bb.aw:                                            ; preds = %bb.bq, %bb.bp, %bb.bj, %bb.bb, %.body.i, %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !320
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !320
  %.sroa.14.16.copyload63 = load i64, ptr %i.j, align 8, !noalias !322
  %.sroa.18.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dx = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx68, align 8, !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !320
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i
  %.sroa.14.2 = phi i64 [ %.sroa.14.16.copyload63, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i ], [ %.sroa.14.16.copyload62, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i ]
  %i.dy = phi <2 x ptr> [ %i.dx, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit64.i ], [ %i.dz, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.l)
          to label %bb.ay unwind label %.thread.i, !noalias !320

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit63.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !320
  %.sroa.14.16.copyload62 = load i64, ptr %i.g, align 8, !noalias !322
  %.sroa.18.16..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dz = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx66, align 8, !noalias !322
  br label %bb.ax

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !320
  br label %bb.az

bb.az:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i, %bb.ay
  %.sroa.14.1 = phi i64 [ %.sroa.14.2, %bb.ay ], [ %.sroa.14.16.copyload61, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  %i.ea = phi i64 [ 0, %bb.ay ], [ %i.cx, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  %i.eb = phi <2 x ptr> [ %i.dy, %bb.ay ], [ %i.ef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.ec = load ptr, ptr %i.p, align 8, !alias.scope !327, !noalias !320, !nonnull !62, !noundef !62
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !328
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.aj, !noalias !320

bb.bb:                                            ; preds = %bb.ar, %bb.ao, %bb.an
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.l) #50
          to label %.thread90.thread.i unwind label %bb.aw, !noalias !320

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit62.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !320
  %.sroa.14.16.copyload61 = load i64, ptr %i.o, align 8, !noalias !322
  %.sroa.18.16..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ef = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx64, align 8, !noalias !322
  br label %bb.az

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !320
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.14.0 = phi i64 [ %.sroa.14.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %.sroa.14.16.copyload, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ]
  %i.eg = phi i64 [ %i.ea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %.pre.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ] ; 4 uses
  %i.eh = phi <2 x ptr> [ %i.eb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.fb, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !330, !noalias !320, !nonnull !62, !noundef !62 ; 4 uses
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i, label %.lr.ph

bb.bd:                                            ; preds = %.lr.ph
  %i.el = icmp eq i64 %i.en, %i.eg
  br i1 %i.el, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %.sroa.0.0.i.i66.i123 = phi i64 [ %i.en, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.em = getelementptr inbounds nuw [136 x i8], ptr %i.ej, i64 %.sroa.0.0.i.i66.i123
  %i.en = add i64 %.sroa.0.0.i.i66.i123, 1        ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.em) #52
          to label %bb.bd unwind label %bb.bf, !noalias !331, !inline_history !0

bb.be:                                            ; preds = %.lr.ph125
  %i.eo = add i64 %.sroa.0.1.i.i67.i124, 1        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %i.eg
  br i1 %i.ep, label %.body.i68.i, label %.lr.ph125

bb.bf:                                            ; preds = %.lr.ph
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = icmp eq i64 %i.en, %i.eg
  br i1 %i.er, label %.body.i68.i, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.bf, %bb.be
  %.sroa.0.1.i.i67.i124 = phi i64 [ %i.eo, %bb.be ], [ %i.en, %bb.bf ] ; 2 uses
  %i.es = getelementptr inbounds nuw [136 x i8], ptr %i.ej, i64 %.sroa.0.1.i.i67.i124
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.es) #53
          to label %bb.be unwind label %bb.bg, !noalias !331, !inline_history !0

bb.bg:                                            ; preds = %.lr.ph125
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !331, !inline_history !0
  unreachable

.body.i68.i:                                      ; preds = %bb.be, %bb.bf
  %.val2.i69.i = load i64, ptr %i.t, align 8, !range !65, !alias.scope !329, !noalias !320, !noundef !62 ; 2 uses
  %i.eu = icmp eq i64 %.val2.i69.i, 0
  br i1 %i.eu, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %.body.i68.i
  %i.ev = mul nuw i64 %.val2.i69.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !331, !inline_history !67
  br label %.body.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i: ; preds = %bb.bd, %bb.bc
  %.val.i72.i = load i64, ptr %i.t, align 8, !range !65, !alias.scope !329, !noalias !320, !noundef !62 ; 2 uses
  %i.ew = icmp eq i64 %.val.i72.i, 0
  br i1 %i.ew, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i, label %bb.bi

bb.bi:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i
  %i.ex = mul nuw i64 %.val.i72.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !331, !inline_history !67
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i

.thread90.thread.i:                               ; preds = %bb.bb, %bb.al, %.thread.i
  %.pn4689.i = phi { ptr, i32 } [ %i.db, %.thread.i ], [ %lpad.thr_comm.i, %bb.bb ], [ %lpad.thr_comm.split-lp.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ey = load ptr, ptr %i.p, align 8, !alias.scope !335, !noalias !320, !nonnull !62, !noundef !62
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !336
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i

bb.bj:                                            ; preds = %.thread90.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit77.i unwind label %bb.aw, !noalias !320

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !320
  %.sroa.14.16.copyload = load i64, ptr %i.s, align 8, !noalias !322
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fb = load <2 x ptr>, ptr %.sroa.18.16..sroa_idx, align 8, !noalias !322
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !330, !noalias !320
  br label %bb.bc

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i: ; preds = %bb.bi, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !320
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %bb.bk unwind label %.thread116.i, !noalias !320

.thread116.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.i

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !320
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.fd = load ptr, ptr %i.v, align 8, !alias.scope !337, !noalias !320, !noundef !62 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ff = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !338
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.bn, !noalias !320

bb.bn:                                            ; preds = %bb.bm
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !320
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.br

.thread112.i:                                     ; preds = %.thread116.i, %.body.i
  %.pn48.pn.pn115.i = phi { ptr, i32 } [ %i.fc, %.thread116.i ], [ %.pn48.pn.i, %.body.i ] ; 3 uses
end_hunk_1
