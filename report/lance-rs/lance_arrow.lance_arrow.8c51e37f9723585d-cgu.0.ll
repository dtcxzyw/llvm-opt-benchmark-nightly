Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCsc2V0exE7CWf_11lance_arrow:bb.a
  %i.bn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6348, !nonnull !10, !noundef !10
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %i.bi, ptr %i.bo, align 8
  %i.bp = add i64 %i.bk, 1
  store i64 %i.bp, ptr %.sroa.5.0..sroa_idx34, align 8, !alias.scope !6348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i64 184, i1 false)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !noundef !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bv, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 22, i64 24, i1 false), !noalias !6349
  %i.bw = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.t, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.bx, %bb.p ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.l) #37
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.v, !noalias !6349

bb.p:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.s, label %bb.r, !prof !15

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 22, i64 24, i1 false), !noalias !6349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6349
  store ptr @224, ptr %i.j, align 8, !noalias !6349
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !6349
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @254, ptr %i.by, align 8, !noalias !6349
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !6349
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.bz, align 8, !noalias !6349
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !6349
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeBM_ECs4ytUTZt2Gw9_11arrow_array(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noundef nonnull @438, ptr nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #36
          to label %bb.u unwind label %bb.t, !noalias !6349

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.l)
          to label %bb.x unwind label %bb.w, !noalias !6349

bb.t:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.k) #37
          to label %bb.o unwind label %bb.v, !noalias !6349

bb.u:                                             ; preds = %bb.y, %bb.r
  unreachable

bb.v:                                             ; preds = %.noexc32.i, %bb.ax, %.body30.i, %bb.an, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i, %bb.t, %bb.o
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6349
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.an, %.body.i, %bb.w, %bb.o
  %.pn24.i = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %.pn.i, %bb.o ], [ %eh.lpad-body.i, %bb.an ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.n) #37
          to label %.body30.i unwind label %bb.v

bb.w:                                             ; preds = %bb.y, %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6349
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !6349, !noundef !10 ; 3 uses
  store i64 %i.ce, ptr %i.i, align 8, !noalias !6349
  %i.cf = icmp ult i64 %i.ce, 384307168202282326
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %i.ce, 2
  br i1 %i.cg, label %bb.z, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6349
  store ptr @224, ptr %i.h, align 8, !noalias !6349
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !6349
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @254, ptr %i.ch, align 8, !noalias !6349
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !6349
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @440, ptr noundef nonnull @441, ptr nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #36
          to label %bb.u unwind label %bb.w, !noalias !6349

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6349
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !6349, !nonnull !10, !noundef !10 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !6349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6349
  store i64 0, ptr %i.cd, align 8, !noalias !6349
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !6349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6349
  call void @llvm.experimental.noalias.scope.decl(metadata !6350)
  %i.cl = icmp eq i64 %i.bs, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !6350, !noalias !6351
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond.i.i = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %or.cond.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !6351
  %i.cp = add i64 %i.bs, 1
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bu, i64 noundef %i.cp)
          to label %.noexc.i30 unwind label %bb.am, !noalias !6349

.noexc.i30:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6352
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6353
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 8)
          to label %.noexc.i.i unwind label %.body.thread9.i.i, !noalias !6352

.body.thread9.i.i:                                ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6353
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cs = load ptr, ptr %i.cr, align 16, !noalias !6353, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !6353, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6353
  store i64 1, ptr %i.a, align 8, !noalias !6353
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cv, align 8, !noalias !6353
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cs, ptr %i.cw, align 8, !noalias !6353
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6353
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6353
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cx = load <2 x i64>, ptr %i.c, align 16, !noalias !6353
  store <2 x i64> %i.cx, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6353
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6354
  %i.cy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !6354 ; 5 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ac, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.ac:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i.i unwind label %bb.ad, !noalias !6353

.noexc.i.i.i:                                     ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #37
          to label %.body.thread.i.i unwind label %bb.ae, !noalias !6353

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6353
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !6353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6353
  store ptr %i.cy, ptr %i.b, align 8, !noalias !6353
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cs, ptr %i.dc, align 8, !noalias !6353
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cu, ptr %i.dd, align 8, !noalias !6353
  %i.de = ptrtoint ptr %i.cs to i64
  %i.df = and i64 %i.de, 7
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.ai, label %.invoke.i.i.i.i, !prof !15

bb.af:                                            ; preds = %.invoke.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !6355
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ag, label %.body.thread.i.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i.i unwind label %bb.ah, !noalias !6356

.invoke.i.i.i.i:                                  ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !6357, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.dl, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @435, ptr @437
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #36
          to label %.cont.i.i.i.i unwind label %bb.af, !noalias !6357

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6356
  unreachable

bb.ai:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6353
  call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  %i.dn = load ptr, ptr %i.f, align 8, !alias.scope !6362, !noalias !6351, !nonnull !10, !noundef !10
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !6363
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.aj, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.am, !noalias !6349

.body.thread.i.i:                                 ; preds = %bb.ag, %bb.af, %bb.ad, %.body.thread9.i.i
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.cq, %.body.thread9.i.i ], [ %i.dh, %bb.af ], [ %i.dh, %bb.ag ], [ %i.da, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6364)
  call void @llvm.experimental.noalias.scope.decl(metadata !6365)
  call void @llvm.experimental.noalias.scope.decl(metadata !6366)
  %i.dq = load ptr, ptr %i.f, align 8, !alias.scope !6367, !noalias !6351, !nonnull !10, !noundef !10
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !6368
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ak, label %.body.i

bb.ak:                                            ; preds = %.body.thread.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.al, !noalias !6351

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6351
  unreachable

bb.am:                                            ; preds = %bb.aj, %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.ak, %.body.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.du, %bb.am ], [ %eh.lpad-body8.i.i, %bb.ak ], [ %eh.lpad-body8.i.i, %.body.thread.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6369)
  call void @llvm.experimental.noalias.scope.decl(metadata !6370)
  call void @llvm.experimental.noalias.scope.decl(metadata !6371)
  %i.dv = load ptr, ptr %i.g, align 8, !alias.scope !6372, !noalias !6349, !nonnull !10, !noundef !10
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !6373
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i

bb.an:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.v, !noalias !6349

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.aj, %bb.ai, %.noexc.i30
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !6374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !6374
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !6374
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6349
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !10 ; 4 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i, label %.lr.ph

bb.ao:                                            ; preds = %.lr.ph
  %i.eg = icmp eq i64 %i.ei, %i.ee
  br i1 %i.eg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i, %bb.ao
  %.sroa.0.0.i.i.i54 = phi i64 [ %i.ei, %bb.ao ], [ 0, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [136 x i8], ptr %i.ec, i64 %.sroa.0.0.i.i.i54
  %i.ei = add i64 %.sroa.0.0.i.i.i54, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.eh) #40
          to label %bb.ao unwind label %bb.aq, !noalias !6375, !inline_history !4

bb.ap:                                            ; preds = %.lr.ph56
  %i.ej = add i64 %.sroa.0.1.i.i.i55, 1           ; 2 uses
  %i.ek = icmp eq i64 %i.ej, %i.ee
  br i1 %i.ek, label %.body.i.i, label %.lr.ph56

bb.aq:                                            ; preds = %.lr.ph
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = icmp eq i64 %i.ei, %i.ee
  br i1 %i.em, label %.body.i.i, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.aq, %bb.ap
  %.sroa.0.1.i.i.i55 = phi i64 [ %i.ej, %bb.ap ], [ %i.ei, %bb.aq ] ; 2 uses
  %i.en = getelementptr inbounds nuw [136 x i8], ptr %i.ec, i64 %.sroa.0.1.i.i.i55
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.en) #41
          to label %bb.ap unwind label %bb.ar, !noalias !6375, !inline_history !4

bb.ar:                                            ; preds = %.lr.ph56
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6375, !inline_history !4
  unreachable

.body.i.i:                                        ; preds = %bb.ap, %bb.aq
  %.val2.i.i = load i64, ptr %i.n, align 8, !range !13, !noundef !10 ; 2 uses
  %i.ep = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ep, label %.body30.i, label %bb.as

bb.as:                                            ; preds = %.body.i.i
  %i.eq = mul nuw i64 %.val2.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !6375, !inline_history !28
  br label %.body30.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %bb.ao, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow.exit.i
  %.val.i.i = load i64, ptr %i.n, align 8, !range !13, !noundef !10 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i, 0
  br i1 %i.er, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i, label %bb.at

bb.at:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %i.es = mul nuw i64 %.val.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !6375, !inline_history !28
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i

.body30.i:                                        ; preds = %bb.as, %.body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i
  %.pn24.pn.i = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.el, %.body.i.i ], [ %i.el, %bb.as ] ; 2 uses
  %cond.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i ], [ true, %.body.i.i ], [ true, %bb.as ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.o) #37
          to label %bb.au unwind label %bb.v, !noalias !6349

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.at, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.au:                                            ; preds = %.body30.i
  br i1 %cond.i, label %.body32.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !6376)
  %i.et = load ptr, ptr %i.p, align 8, !alias.scope !6376, !noalias !6349, !noundef !10 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.noexc32.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !6377
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ax, label %.noexc32.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc32.i unwind label %bb.v, !noalias !6349

.noexc32.i:                                       ; preds = %bb.ax, %bb.aw, %bb.av
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.q) #37
          to label %.body32.thread unwind label %bb.v, !noalias !6349

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsc2V0exE7CWf_11lance_arrow:bb.a
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6470, !nonnull !10, !noundef !10
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bm
  store i32 %i.bl, ptr %i.bq, align 4
  %i.br = add i64 %i.bm, 1
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx34, align 8, !alias.scope !6470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i64 184, i1 false)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 24, i64 24, i1 false), !noalias !6471
  %i.by = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.w, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.bz, %bb.s ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.l) #37
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.y, !noalias !6471

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  br i1 %i.by, label %bb.v, label %bb.u, !prof !15

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 24, i64 24, i1 false), !noalias !6471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6471
  store ptr @218, ptr %i.j, align 8, !noalias !6471
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !6471
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @258, ptr %i.ca, align 8, !noalias !6471
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !6471
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.cb, align 8, !noalias !6471
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !6471
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeBM_ECs4ytUTZt2Gw9_11arrow_array(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noundef nonnull @438, ptr nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #36
          to label %bb.x unwind label %bb.w, !noalias !6471

bb.v:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.z, !noalias !6471

bb.w:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.k) #37
          to label %bb.r unwind label %bb.y, !noalias !6471

bb.x:                                             ; preds = %bb.ab, %bb.u
  unreachable

bb.y:                                             ; preds = %.noexc32.i, %bb.ba, %.body30.i, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i, %bb.w, %bb.r
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6471
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.aq, %.body.i, %bb.z, %bb.r
  %.pn24.i = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %.pn.i, %bb.r ], [ %eh.lpad-body.i, %bb.aq ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.n) #37
          to label %.body30.i unwind label %bb.y

bb.z:                                             ; preds = %bb.ab, %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6471
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !6471, !noundef !10 ; 3 uses
  store i64 %i.cg, ptr %i.i, align 8, !noalias !6471
  %i.ch = icmp ult i64 %i.cg, 384307168202282326
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %i.cg, 2
  br i1 %i.ci, label %bb.ac, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6471
  store ptr @218, ptr %i.h, align 8, !noalias !6471
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !6471
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @258, ptr %i.cj, align 8, !noalias !6471
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !6471
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @440, ptr noundef nonnull @441, ptr nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #36
          to label %bb.x unwind label %bb.z, !noalias !6471

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6471
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !6471, !nonnull !10, !noundef !10 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !6471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6471
  store i64 0, ptr %i.cf, align 8, !noalias !6471
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !6471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6471
  call void @llvm.experimental.noalias.scope.decl(metadata !6472)
  %i.cn = icmp eq i64 %i.bu, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !6472, !noalias !6473
  %i.cq = icmp eq i64 %i.cp, 0
  %or.cond.i.i = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %or.cond.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !6473
  %i.cr = add i64 %i.bu, 1
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i64 noundef %i.cr)
          to label %.noexc.i30 unwind label %bb.ap, !noalias !6471

.noexc.i30:                                       ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6474
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6475
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4)
          to label %.noexc.i.i unwind label %.body.thread9.i.i, !noalias !6474

.body.thread9.i.i:                                ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6475
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cu = load ptr, ptr %i.ct, align 16, !noalias !6475, !nonnull !10, !noundef !10 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !6475, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6475
  store i64 1, ptr %i.a, align 8, !noalias !6475
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cx, align 8, !noalias !6475
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cu, ptr %i.cy, align 8, !noalias !6475
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6475
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6475
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cz = load <2 x i64>, ptr %i.c, align 16, !noalias !6475
  store <2 x i64> %i.cz, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6475
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6476
  %i.da = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !6476 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.af, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.af:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !6475

.noexc.i.i.i:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #37
          to label %.body.thread.i.i unwind label %bb.ah, !noalias !6475

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6475
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !6475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6475
  store ptr %i.da, ptr %i.b, align 8, !noalias !6475
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cu, ptr %i.de, align 8, !noalias !6475
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cw, ptr %i.df, align 8, !noalias !6475
  %i.dg = ptrtoint ptr %i.cu to i64
  %i.dh = and i64 %i.dg, 3
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.al, label %.invoke.i.i.i.i, !prof !15

bb.ai:                                            ; preds = %.invoke.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !6477
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.aj, label %.body.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i.i unwind label %bb.ak, !noalias !6478

.invoke.i.i.i.i:                                  ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !6479, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.dn, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @435, ptr @437
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #36
          to label %.cont.i.i.i.i unwind label %bb.ai, !noalias !6479

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6478
  unreachable

bb.al:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6475
  call void @llvm.experimental.noalias.scope.decl(metadata !6481)
  call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  call void @llvm.experimental.noalias.scope.decl(metadata !6483)
  %i.dp = load ptr, ptr %i.f, align 8, !alias.scope !6484, !noalias !6473, !nonnull !10, !noundef !10
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !6485
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.am, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.ap, !noalias !6471

.body.thread.i.i:                                 ; preds = %bb.aj, %bb.ai, %bb.ag, %.body.thread9.i.i
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.cs, %.body.thread9.i.i ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.aj ], [ %i.dc, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  call void @llvm.experimental.noalias.scope.decl(metadata !6487)
  call void @llvm.experimental.noalias.scope.decl(metadata !6488)
  %i.ds = load ptr, ptr %i.f, align 8, !alias.scope !6489, !noalias !6473, !nonnull !10, !noundef !10
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !6490
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.an, label %.body.i

bb.an:                                            ; preds = %.body.thread.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.ao, !noalias !6473

bb.ao:                                            ; preds = %bb.an
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6473
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.an, %.body.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dw, %bb.ap ], [ %eh.lpad-body8.i.i, %bb.an ], [ %eh.lpad-body8.i.i, %.body.thread.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6491)
  call void @llvm.experimental.noalias.scope.decl(metadata !6492)
  call void @llvm.experimental.noalias.scope.decl(metadata !6493)
  %i.dx = load ptr, ptr %i.g, align 8, !alias.scope !6494, !noalias !6471, !nonnull !10, !noundef !10
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !6495
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i

bb.aq:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.y, !noalias !6471

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.am, %bb.al, %.noexc.i30
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !6496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !6496
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !6496
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6471
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !10 ; 4 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i, label %.lr.ph

bb.ar:                                            ; preds = %.lr.ph
  %i.ei = icmp eq i64 %i.ek, %i.eg
  br i1 %i.ei, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i, %bb.ar
  %.sroa.0.0.i.i.i55 = phi i64 [ %i.ek, %bb.ar ], [ 0, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [136 x i8], ptr %i.ee, i64 %.sroa.0.0.i.i.i55
  %i.ek = add i64 %.sroa.0.0.i.i.i55, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.ej) #40
          to label %bb.ar unwind label %bb.at, !noalias !6497, !inline_history !4

bb.as:                                            ; preds = %.lr.ph57
  %i.el = add i64 %.sroa.0.1.i.i.i56, 1           ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eg
  br i1 %i.em, label %.body.i.i, label %.lr.ph57

bb.at:                                            ; preds = %.lr.ph
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = icmp eq i64 %i.ek, %i.eg
  br i1 %i.eo, label %.body.i.i, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.at, %bb.as
  %.sroa.0.1.i.i.i56 = phi i64 [ %i.el, %bb.as ], [ %i.ek, %bb.at ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [136 x i8], ptr %i.ee, i64 %.sroa.0.1.i.i.i56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.ep) #41
          to label %bb.as unwind label %bb.au, !noalias !6497, !inline_history !4

bb.au:                                            ; preds = %.lr.ph57
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6497, !inline_history !4
  unreachable

.body.i.i:                                        ; preds = %bb.as, %bb.at
  %.val2.i.i = load i64, ptr %i.n, align 8, !range !13, !noundef !10 ; 2 uses
  %i.er = icmp eq i64 %.val2.i.i, 0
  br i1 %i.er, label %.body30.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i
  %i.es = mul nuw i64 %.val2.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !6497, !inline_history !28
  br label %.body30.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %bb.ar, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow.exit.i
  %.val.i.i = load i64, ptr %i.n, align 8, !range !13, !noundef !10 ; 2 uses
  %i.et = icmp eq i64 %.val.i.i, 0
  br i1 %i.et, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %i.eu = mul nuw i64 %.val.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !6497, !inline_history !28
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i

.body30.i:                                        ; preds = %bb.av, %.body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i
  %.pn24.pn.i = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.en, %.body.i.i ], [ %i.en, %bb.av ] ; 2 uses
  %cond.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i ], [ true, %.body.i.i ], [ true, %bb.av ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.o) #37
          to label %bb.ax unwind label %bb.y, !noalias !6471

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.aw, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.ax:                                            ; preds = %.body30.i
  br i1 %cond.i, label %.body32.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !6498)
  %i.ev = load ptr, ptr %i.p, align 8, !alias.scope !6498, !noalias !6471, !noundef !10 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.noexc32.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ex = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !6499
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ba, label %.noexc32.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc32.i unwind label %bb.y, !noalias !6471

.noexc32.i:                                       ; preds = %bb.ba, %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.q) #37
          to label %.body32.thread unwind label %bb.y, !noalias !6471

end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow:bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39
  br i1 %2, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %3) #39
  br label %bb.h

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array5value(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @245, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val8 = load i32, ptr %i.h, align 8, !noundef !10 ; 2 uses
  switch i32 %.val8, label %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array15value_unchecked.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #36
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #36
  unreachable

_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array15value_unchecked.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.i, align 8, !noundef !10
  %i.j = trunc i64 %1 to i32
  %i.k = mul i32 %.val8, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  %i.n = load i16, ptr %i.m, align 1
  ret i16 %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !6800, !noundef !10
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_array20FixedSizeBinaryArrayNtB6_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6799, !noundef !10
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !6799
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6799, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6799, !noundef !10
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !6799, !noundef !10
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  br label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_array20FixedSizeBinaryArrayNtB6_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_array20FixedSizeBinaryArrayNtB6_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.r, %bb.d ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtCs2k6O4uMwKJm_4half8binary163f16E3newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 1
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %.invoke, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %3, 0
  br i1 %i.d, label %.invoke, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @250, %bb.a ], [ @247, %bb.b ]
  %i.g = phi ptr [ @251, %bb.a ], [ @249, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #36
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6822)
  call void @llvm.experimental.noalias.scope.decl(metadata !6823)
  call void @llvm.experimental.noalias.scope.decl(metadata !6824)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !6825, !nonnull !10, !noundef !10
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !6825
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6827)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6827, !noalias !6826, !noundef !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !15

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6828
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !6826

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !6827, !noalias !6826, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !6829, !noundef !10
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @435, ptr @437
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #36
          to label %.cont.i unwind label %bb.g, !noalias !6829

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6826
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !6829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6832)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6833, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !6833
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @250, %bb.a ], [ @247, %bb.b ]
  %i.g = phi ptr [ @251, %bb.a ], [ @249, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #36
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  call void @llvm.experimental.noalias.scope.decl(metadata !6856)
  call void @llvm.experimental.noalias.scope.decl(metadata !6857)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !6858, !nonnull !10, !noundef !10
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !6858
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6860)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6860, !noalias !6859, !noundef !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !15

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6861
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !6859

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !6860, !noalias !6859, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !6862, !noundef !10
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @435, ptr @437
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #36
          to label %.cont.i unwind label %bb.g, !noalias !6862

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6859
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !6862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6865)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6866, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !6866
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @250, %bb.a ], [ @247, %bb.b ]
  %i.g = phi ptr [ @251, %bb.a ], [ @249, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #36
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6888)
  call void @llvm.experimental.noalias.scope.decl(metadata !6889)
  call void @llvm.experimental.noalias.scope.decl(metadata !6890)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !6891, !nonnull !10, !noundef !10
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !6891
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6893)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6893, !noalias !6892, !noundef !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !15

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6894
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !6892

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !6893, !noalias !6892, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !6895, !noundef !10
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @435, ptr @437
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #36
          to label %.cont.i unwind label %bb.g, !noalias !6895

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6892
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !6895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6899, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !6899
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @250, %bb.a ], [ @247, %bb.b ]
  %i.g = phi ptr [ @251, %bb.a ], [ @249, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #36
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6921)
  call void @llvm.experimental.noalias.scope.decl(metadata !6922)
  call void @llvm.experimental.noalias.scope.decl(metadata !6923)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !6924, !nonnull !10, !noundef !10
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !6924
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6926)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6926, !noalias !6925, !noundef !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !15

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6927
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !6925

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !6926, !noalias !6925, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !6928, !noundef !10
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @435, ptr @437
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #36
          to label %.cont.i unwind label %bb.g, !noalias !6928

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6925
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !6928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6931)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6932, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !6932
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsc2V0exE7CWf_11lance_arrow(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 1                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @259, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsc2V0exE7CWf_11lance_arrow(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @259, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !noundef !10  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !10
  %i.k = lshr i64 %i.j, 2                         ; 2 uses
  %.not12 = icmp eq i64 %i.h, %i.k
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 11, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECsc2V0exE7CWf_11lance_arrow.exit18

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @261, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECsc2V0exE7CWf_11lance_arrow.exit18: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit16, %bb.c
  ret void

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !6973
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !6974
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit16

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
end_hunk_2
begin_hunk_3_@_RNvXs0_NtCsc2V0exE7CWf_11lance_arrow6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaNtB5_9SchemaExt18try_with_column_at:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #37
          to label %.body21 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.an, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.an, ptr %i.a, align 8, !noalias !9168
  %i.ar = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ugt i64 %2, %i.t
  br i1 %i.as, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %2, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #36
          to label %bb.u unwind label %bb.r, !noalias !9168

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge41 unwind label %bb.r

._crit_edge41:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9168
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %2 ; 3 uses
  %i.au = icmp samesign ult i64 %2, %i.t
  br i1 %i.au, label %bb.t, label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !9169
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.s, label %.body21

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body21 unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = sub nuw nsw i64 %i.t, %2
  %i.ba = shl nuw nsw i64 %i.az, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.at, i64 %i.ba, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.p
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.w:                                             ; preds = %bb.t, %._crit_edge41
  store ptr %i.an, ptr %i.at, align 8
  %i.bc = add nuw nsw i64 %i.t, 1
  store i64 %i.bc, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bd = load ptr, ptr %i.j, align 8, !nonnull !10, !align !12, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be)
          to label %bb.x unwind label %bb.z

.body23:                                          ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bg = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.y unwind label %.body23, !noalias !9170 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.bh, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %.sroa.427.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.z:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.body21, %bb.z
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body21:                                          ; preds = %bb.r, %bb.s, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.av, %bb.r ], [ %i.av, %bb.s ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.f) #37
          to label %common.resume unwind label %bb.aa

bb.ab:                                            ; preds = %bb.f, %bb.c, %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %3) #37
          to label %common.resume unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @224, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @254, ptr %i.h, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.48.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !12, !noundef !10
  %i.l = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @326, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.l, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9207)
  call void @llvm.experimental.noalias.scope.decl(metadata !9208)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !9209, !noalias !9208, !noundef !10
  %i.o = lshr i64 %i.n, 3                         ; 7 uses
  %i.p = add nsw i64 %i.o, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9210, !noalias !9208, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.r, null            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9207, !noalias !9208 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9207, !noalias !9208 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !9207, !noalias !9208 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9207, !noalias !9208 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !9207, !noalias !9208 ; 8 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0126.us.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.015.0126.us.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9211)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.ah, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.us.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.ai = icmp samesign ult i64 %i.ac, %i.o
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !9212, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.015.0126.us.i
  %i.am = load i64, ptr %i.al, align 8, !noalias !9212, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9213
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9214
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak
  %i.ao = icmp eq i64 %i.ak, %i.am
  br i1 %i.ao, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i, label %.lr.ph.i.i.preheader.i119.us.i

.lr.ph.i.i.preheader.i119.us.i:                   ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.us.i
  %i.ap = getelementptr inbounds i8, ptr %i.ab, i64 %i.am
  br label %.lr.ph.i.i.i120.us.i

.lr.ph.i.i.i120.us.i:                             ; preds = %.lr.ph.i.i.i120.us.i, %.lr.ph.i.i.preheader.i119.us.i
  %.sroa.0.07.i.i.i121.us.i = phi ptr [ %i.aq, %.lr.ph.i.i.i120.us.i ], [ %i.ap, %.lr.ph.i.i.preheader.i119.us.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i121.us.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9215
  store ptr %.sroa.0.07.i.i.i121.us.i, ptr %i.a, align 8, !noalias !9215
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !9216 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9215
  %i.as = icmp eq ptr %i.aq, %i.an
  br i1 %i.as, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i, label %.lr.ph.i.i.i120.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i: ; preds = %.lr.ph.i.i.i120.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.us.i
  %i.at = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !9216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9213
  br i1 %i.at, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i
  %i.au = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.av = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.ay, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond145.not.i = icmp eq i64 %i.ac, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.az = icmp ugt i64 %i.p, 10
  br i1 %i.az, label %bb.f, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0126.i = phi i64 [ %i.ba, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ba = add nuw nsw i64 %.sroa.015.0126.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9211)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0126.i, %i.t
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !9217
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.bb = add i64 %.sroa.015.0126.i, %i.x         ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !9217, !noundef !10
  %i.bf = trunc i64 %i.bb to i8
  %i.bg = and i8 %i.bf, 7
  %i.bh = xor i8 %i.be, -1
  %i.bi = lshr i8 %i.bh, %i.bg
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10 ; 2 uses
  %i.bl = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !10, !noalias !9207, !nonnull !10 ; 2 uses
  br i1 %i.bj, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bo = icmp ugt i64 %i.p, 20
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9218
  %i.bp = add nsw i64 %i.o, -21
  store i64 %i.bp, ptr %i.f, align 8, !noalias !9218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9218
  store ptr %i.f, ptr %i.e, align 8, !noalias !9218
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !9218
  %i.bq = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.br = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.bs = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @27, ptr noundef nonnull %i.e), !noalias !9207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9218
  br i1 %i.bs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = add nsw i64 %i.o, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bu = icmp ult i64 %.sroa.0.0.i110.i, %i.p
  br i1 %i.bu, label %.lr.ph129.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph129.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i, label %.lr.ph129.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i: ; preds = %.lr.ph129.i, %bb.j
  %.sroa.068.0127.us.i = phi i64 [ %i.bv, %bb.j ], [ %.sroa.0.0.i110.i, %.lr.ph129.i ] ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.068.0127.us.i, 1 ; 4 uses
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.bx = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.ca = call noundef zeroext i1 %i.bz(ptr noundef nonnull %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.ca, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.us.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i
  %i.cb = icmp ult i64 %i.bv, %i.o
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !9219, !noundef !10 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.068.0127.us.i
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !9219, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9220
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9221
  %i.cg = getelementptr inbounds i8, ptr %i.ab, i64 %i.cd
  %i.ch = icmp eq i64 %i.cd, %i.cf
  br i1 %i.ch, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i, label %.lr.ph.i.i.preheader.i.us.i

.lr.ph.i.i.preheader.i.us.i:                      ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.us.i
  %i.ci = getelementptr inbounds i8, ptr %i.ab, i64 %i.cf
  br label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.i.i.i.us.i, %.lr.ph.i.i.preheader.i.us.i
  %.sroa.0.07.i.i.i.us.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.us.i ], [ %i.ci, %.lr.ph.i.i.preheader.i.us.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.us.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9222
  store ptr %.sroa.0.07.i.i.i.us.i, ptr %i.c, align 8, !noalias !9222
  %i.ck = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !9223 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9222
  %i.cl = icmp eq ptr %i.cj, %i.cg
  br i1 %i.cl, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i, label %.lr.ph.i.i.i.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i: ; preds = %.lr.ph.i.i.i.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.us.i
  %i.cm = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !9223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9220
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i
  %i.cn = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.co = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull %i.cn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.cr, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond147.not.i = icmp eq i64 %i.bv, %i.p
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i

.lr.ph129.split.i:                                ; preds = %.lr.ph129.i, %bb.m
  %.sroa.068.0127.i = phi i64 [ %i.cs, %bb.m ], [ %.sroa.0.0.i110.i, %.lr.ph129.i ] ; 4 uses
  %i.cs = add i64 %.sroa.068.0127.i, 1            ; 4 uses
  %i.ct = icmp ult i64 %.sroa.068.0127.i, %i.t
  br i1 %i.ct, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.i, label %bb.k, !prof !15

bb.k:                                             ; preds = %.lr.ph129.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !9224
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.i: ; preds = %.lr.ph129.split.i
  %i.cu = add i64 %.sroa.068.0127.i, %i.x         ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !9224, !noundef !10
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = xor i8 %i.cx, -1
  %i.db = lshr i8 %i.da, %i.cz
  %i.dc = trunc i8 %i.db to i1
  %i.dd = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10 ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !10, !noalias !9207, !nonnull !10 ; 2 uses
  br i1 %i.dc, label %bb.n, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.i
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.dh, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.i
  %i.di = icmp ult i64 %i.cs, %i.o
  call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cs
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !9219, !noundef !10 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.068.0127.i
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !9219, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9220
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9221
  %i.dn = getelementptr inbounds i8, ptr %i.ab, i64 %i.dk
  %i.do = icmp eq i64 %i.dk, %i.dm
  br i1 %i.do, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.ab, i64 %i.dm
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %i.dp, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9222
  store ptr %.sroa.0.07.i.i.i.i, ptr %i.c, align 8, !noalias !9222
  %i.dr = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !9223 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9222
  %i.ds = icmp eq ptr %i.dq, %i.dn
  br i1 %i.ds, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i, label %.lr.ph.i.i.i.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.i.i.i.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %i.dt = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !9223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9220
  br i1 %i.dt, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i
  %i.du = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.dv = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull %i.du, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.dy, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %exitcond146.not.i = icmp eq i64 %i.cs, %i.p
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph129.split.i

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.i
  %i.dz = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !9207, !inline_history !9180
  br i1 %i.dz, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.m

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.ea = call noundef zeroext i1 %i.bn(ptr noundef nonnull %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.ea, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.eb = icmp samesign ult i64 %i.ba, %i.o
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ba
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !9212, !noundef !10 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.015.0126.i
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !9212, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9213
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9214
  %i.eg = getelementptr inbounds i8, ptr %i.ab, i64 %i.ed
  %i.eh = icmp eq i64 %i.ed, %i.ef
  br i1 %i.eh, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i, label %.lr.ph.i.i.preheader.i119.i

.lr.ph.i.i.preheader.i119.i:                      ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.i
  %i.ei = getelementptr inbounds i8, ptr %i.ab, i64 %i.ef
  br label %.lr.ph.i.i.i120.i

.lr.ph.i.i.i120.i:                                ; preds = %.lr.ph.i.i.i120.i, %.lr.ph.i.i.preheader.i119.i
  %.sroa.0.07.i.i.i121.i = phi ptr [ %i.ej, %.lr.ph.i.i.i120.i ], [ %i.ei, %.lr.ph.i.i.preheader.i119.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i121.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9215
  store ptr %.sroa.0.07.i.i.i121.i, ptr %i.a, align 8, !noalias !9215
  %i.ek = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !9216 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9215
  %i.el = icmp eq ptr %i.ej, %i.eg
  br i1 %i.el, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i, label %.lr.ph.i.i.i120.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i: ; preds = %.lr.ph.i.i.i120.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow.exit.i118.i
  %i.em = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !9216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9213
  br i1 %i.em, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i
  %i.en = load ptr, ptr %1, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !noundef !10
  %i.eo = load ptr, ptr %i.j, align 8, !alias.scope !9208, !noalias !9207, !nonnull !10, !align !12, !noundef !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !invariant.load !10, !noalias !9207, !nonnull !10
  %i.er = call noundef zeroext i1 %i.eq(ptr noundef nonnull %i.en, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !9207, !inline_history !9180
  br i1 %i.er, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond144.not.i = icmp eq i64 %i.ba, %.sroa.0.0.i.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.es = call noundef zeroext i1 %i.bn(ptr noundef nonnull %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !9207, !inline_history !9180
  br i1 %i.es, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.m, %bb.j, %bb.h, %._crit_edge.i, %bb.b
  %i.et = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.eu = load ptr, ptr %i.j, align 8, !nonnull !10, !align !12, !noundef !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !invariant.load !10, !nonnull !10
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef nonnull %i.et, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.o, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.q, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.i, %bb.l, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i, %bb.n, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i, %bb.i, %bb.a, %bb.g, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i ], [ %i.ex, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.us.i ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.us.i ], [ true, %bb.n ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit.i ], [ true, %bb.l ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.q ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit122.i ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @218, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @258, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.48.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @326, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9251)
  call void @llvm.experimental.noalias.scope.decl(metadata !9252)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !9253, !noalias !9252, !noundef !10
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %i.l = add nsw i64 %i.k, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9254, !noalias !9252, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !9251, !noalias !9252 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9251, !noalias !9252 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9251, !noalias !9252 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9251, !noalias !9252 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !9251, !noalias !9252 ; 4 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0122.us.i = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.015.0122.us.i, 1  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9255)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !noundef !10
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !align !12, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !10, !noalias !9251, !nonnull !10
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !9251, !inline_history !9234
  br i1 %i.ad, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit118.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit118.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.ae = icmp samesign ult i64 %i.y, %i.k
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noalias !9256, !noundef !10
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.015.0122.us.i
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !9256, !noundef !10 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = sub i32 %i.ag, %i.ai                    ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  %i.an = zext nneg i32 %i.al to i64
  call void @llvm.assume(i1 %i.am)
  %i.ao = call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9257
  br i1 %i.ao, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow.exit118.us.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !noundef !10
  %i.aq = load ptr, ptr %i.f, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !align !12, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !10, !noalias !9251, !nonnull !10
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !9251, !inline_history !9234
  br i1 %i.at, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond141.not.i = icmp eq i64 %i.y, %.sroa.0.0.i.i
  br i1 %exitcond141.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.au = icmp ugt i64 %i.l, 10
  br i1 %i.au, label %bb.f, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0122.i = phi i64 [ %i.av, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.av = add nuw nsw i64 %.sroa.015.0122.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9255)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0122.i, %i.p
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !9258
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.aw = add i64 %.sroa.015.0122.i, %i.t         ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !9258, !noundef !10
  %i.ba = trunc i64 %i.aw to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = xor i8 %i.az, -1
  %i.bd = lshr i8 %i.bc, %i.bb
  %i.be = trunc i8 %i.bd to i1
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !noundef !10 ; 2 uses
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !align !12, !noundef !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !10, !noalias !9251, !nonnull !10 ; 2 uses
  br i1 %i.be, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bj = icmp ugt i64 %i.l, 20
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9259
  %i.bk = add nsw i64 %i.k, -21
  store i64 %i.bk, ptr %i.b, align 8, !noalias !9259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9259
  store ptr %i.b, ptr %i.a, align 8, !noalias !9259
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !9259
  %i.bl = load ptr, ptr %1, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !noundef !10
  %i.bm = load ptr, ptr %i.f, align 8, !alias.scope !9252, !noalias !9251, !nonnull !10, !align !12, !noundef !10
  %i.bn = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull @27, ptr noundef nonnull %i.a), !noalias !9251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9259
  br i1 %i.bn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = add nsw i64 %i.k, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bp = icmp ult i64 %.sroa.0.0.i110.i, %i.l
  br i1 %i.bp, label %.lr.ph125.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph125.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit113.thread.us.i, label %.lr.ph125.split.i

end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow:bb.a
  store <2 x i64> %i.ac, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10230, !noalias !10231
  call fastcc void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array8is_emptyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9data_typeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !10
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array18logical_null_countCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array21get_array_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !10
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array22get_buffer_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !10
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array3lenCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5sliceCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10274
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !10275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10274
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10277
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10278, !noalias !10279, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !10277
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10278, !noalias !10279, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10278, !noalias !10279, !noundef !10
  store ptr %i.h, ptr %i.b, align 8, !noalias !10277
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !10277
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !10277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10280)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10281
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !10282

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @250, %bb.b ], [ @247, %bb.c ]
  %i.v = phi ptr [ @251, %bb.b ], [ @249, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #36
          to label %.cont.i.i.i unwind label %bb.e, !noalias !10281

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10283)
  call void @llvm.experimental.noalias.scope.decl(metadata !10284)
  call void @llvm.experimental.noalias.scope.decl(metadata !10285)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !10286, !noalias !10282, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !10287
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !10282

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10288)
  call void @llvm.experimental.noalias.scope.decl(metadata !10289)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10289, !noalias !10290, !noundef !10
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !15

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !10291
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !10292

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !10289, !noalias !10290, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !10293, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @435, ptr @437
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #36
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !10293

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10292
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10294, !noalias !10295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10281
  call void @llvm.experimental.noalias.scope.decl(metadata !10296)
  call void @llvm.experimental.noalias.scope.decl(metadata !10297)
  call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !10299, !noalias !10282, !nonnull !10, !noundef !10
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !10300
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !10274

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10282
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.u, !noalias !10275

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10277
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10273, !noalias !10275, !noundef !10
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10274
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !10275

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10301)
  call void @llvm.experimental.noalias.scope.decl(metadata !10302)
  call void @llvm.experimental.noalias.scope.decl(metadata !10303)
  call void @llvm.experimental.noalias.scope.decl(metadata !10304)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !10305, !noalias !10274, !nonnull !10, !noundef !10
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !10306
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !10275

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !10274
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10274
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10275
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10273
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10307
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !10307 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit, !prof !11

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @338, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6as_anyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @341, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6offsetCsc2V0exE7CWf_11lance_arrow(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10313
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !10311
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10312, !noalias !10311, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !10313
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10312, !noalias !10311, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_4
begin_hunk_5_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10313
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEE4fromCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array8is_emptyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array9data_typeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !10
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array18logical_null_countCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array21get_array_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !10
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array22get_buffer_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !10
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array3lenCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5sliceCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10355
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !10356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10355
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10358
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10359, !noalias !10360, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !10358
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10359, !noalias !10360, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10359, !noalias !10360, !noundef !10
  store ptr %i.h, ptr %i.b, align 8, !noalias !10358
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !10358
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !10358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10361)
  %i.q = shl nuw i64 %1, 3
  %i.r = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10362
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !10363

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @250, %bb.b ], [ @247, %bb.c ]
  %i.v = phi ptr [ @251, %bb.b ], [ @249, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #36
          to label %.cont.i.i.i unwind label %bb.e, !noalias !10362

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10364)
  call void @llvm.experimental.noalias.scope.decl(metadata !10365)
  call void @llvm.experimental.noalias.scope.decl(metadata !10366)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !10367, !noalias !10363, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !10368
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !10363

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10369)
  call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10370, !noalias !10371, !noundef !10
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !15

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !10372
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !10373

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !10370, !noalias !10371, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !10374, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @435, ptr @437
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #36
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !10374

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10373
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10375, !noalias !10376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10362
  call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  call void @llvm.experimental.noalias.scope.decl(metadata !10379)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !10380, !noalias !10363, !nonnull !10, !noundef !10
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !10381
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !10355

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10363
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.u, !noalias !10356

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10358
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10354, !noalias !10356, !noundef !10
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10355
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !10356

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  call void @llvm.experimental.noalias.scope.decl(metadata !10383)
  call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !10386, !noalias !10355, !nonnull !10, !noundef !10
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !10387
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !10356

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !10355
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10355
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10356
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10354
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10388
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !10388 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit, !prof !11

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @293, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6as_anyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @342, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6offsetCsc2V0exE7CWf_11lance_arrow(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10394
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !10392
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10393, !noalias !10392, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !10394
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10393, !noalias !10392, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10430
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEE4fromCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array8is_emptyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ult i64 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array9data_typeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array13shrink_to_fitCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !10
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array18logical_null_countCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array21get_array_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !10
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array22get_buffer_memory_sizeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !10
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array3lenCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5sliceCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10472
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !10473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10472
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10475
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10476, !noalias !10477, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !10475
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10476, !noalias !10477, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10476, !noalias !10477, !noundef !10
  store ptr %i.h, ptr %i.b, align 8, !noalias !10475
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !10475
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !10475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10478)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10479
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !10480

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @250, %bb.b ], [ @247, %bb.c ]
  %i.v = phi ptr [ @251, %bb.b ], [ @249, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #36
          to label %.cont.i.i.i unwind label %bb.e, !noalias !10479

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10481)
  call void @llvm.experimental.noalias.scope.decl(metadata !10482)
  call void @llvm.experimental.noalias.scope.decl(metadata !10483)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !10484, !noalias !10480, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !10485
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !10480

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10486)
  call void @llvm.experimental.noalias.scope.decl(metadata !10487)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10487, !noalias !10488, !noundef !10
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !15

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !10489
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !10490

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !10487, !noalias !10488, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !10491, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @435, ptr @437
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #36
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !10491

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10490
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10492, !noalias !10493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10479
  call void @llvm.experimental.noalias.scope.decl(metadata !10494)
  call void @llvm.experimental.noalias.scope.decl(metadata !10495)
  call void @llvm.experimental.noalias.scope.decl(metadata !10496)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !10497, !noalias !10480, !nonnull !10, !noundef !10
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !10498
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !10472

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10480
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.u, !noalias !10473

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10475
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10471, !noalias !10473, !noundef !10
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10472
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !10473

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10499)
  call void @llvm.experimental.noalias.scope.decl(metadata !10500)
  call void @llvm.experimental.noalias.scope.decl(metadata !10501)
  call void @llvm.experimental.noalias.scope.decl(metadata !10502)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !10503, !noalias !10472, !nonnull !10, !noundef !10
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !10504
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !10473

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !10472
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10472
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10473
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10471
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10505
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !10505 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit, !prof !11

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsc2V0exE7CWf_11lance_arrow.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @288, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6as_anyCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @344, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6offsetCsc2V0exE7CWf_11lance_arrow(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7to_dataCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10511
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !10509
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10510, !noalias !10509, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !10511
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10510, !noalias !10509, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_6
begin_hunk_7_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.ko, label %.body.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kp = atomicrmw sub ptr %i.kn, i64 1 release, align 8, !noalias !12627
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.bk, label %.body.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.km)
          to label %.body.i.i.i.i unwind label %bb.bt, !noalias !12621

bb.bl:                                            ; preds = %bb.bh
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bm:                                            ; preds = %bb.bh
  %i.ks = extractvalue { i32, float } %i.kl, 0
  %i.kt = extractvalue { i32, float } %i.kl, 1
  %i.ku = trunc i32 %i.ks to i1
  br i1 %i.ku, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kv = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.kv)
  %i.kw = load i64, ptr %i.bo, align 8, !range !13, !alias.scope !12628, !noalias !12629, !noundef !10
  %i.kx = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.kw
  br i1 %i.kx, label %bb.bs, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !12630)
  call void @llvm.experimental.noalias.scope.decl(metadata !12631)
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12633)
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !12634, !noalias !12621, !noundef !10 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lb = atomicrmw sub ptr %i.kz, i64 1 release, align 8, !noalias !12635
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %bb.bq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ky)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i unwind label %bb.bu, !noalias !12606

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i, %bb.bn
  %i.ld = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i ], [ %i.kk, %bb.bn ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.sroa.7.0.copyload.i.i
  store float %i.kt, ptr %i.le, align 4, !noalias !12636
  %i.lf = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.lf, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12628, !noalias !12629
  br label %bb.bh

bb.br:                                            ; preds = %bb.bs
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bs:                                            ; preds = %bb.bn
  %.val6.i.i.i.i.i.i = load i64, ptr %i.ki, align 8, !alias.scope !12637, !noalias !12621, !noundef !10
  %.val.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !12637, !noalias !12621, !noundef !10
  %i.lh = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.li = call i64 @llvm.uadd.sat.i64(i64 %i.lh, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef range(i64 1, 0) %i.li, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i unwind label %bb.br, !noalias !12629

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.bs
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12628, !noalias !12629
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bk
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12621
  unreachable

bb.bu:                                            ; preds = %bb.bq
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bu, %bb.bk, %bb.bj, %bb.bi
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.lk, %bb.bu ], [ %.pn.i.i.i.i.i.i, %bb.bk ], [ %.pn.i.i.i.i.i.i, %bb.bj ], [ %.pn.i.i.i.i.i.i, %bb.bi ] ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !12606 ; 2 uses
  %i.ll = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ll, label %.body11.i, label %bb.bv

bb.bv:                                            ; preds = %.body.i.i.i.i
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12606, !nonnull !10, !noundef !10
  %i.lm = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12606
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12606
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bo, align 8, !noalias !12638
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !12606
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i

bb.bw:                                            ; preds = %bb.bz
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12607
  unreachable

bb.bx:                                            ; preds = %bb.bc, %bb.ax
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.jt, %bb.ax ], [ %i.kb, %bb.bc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12639)
  call void @llvm.experimental.noalias.scope.decl(metadata !12640)
  call void @llvm.experimental.noalias.scope.decl(metadata !12641)
  call void @llvm.experimental.noalias.scope.decl(metadata !12642)
  %i.lo = load ptr, ptr %.sroa.0782.sroa.5.0..sroa_idx, align 8, !alias.scope !12643, !noalias !12607, !noundef !10 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %.body11.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lq = atomicrmw sub ptr %i.lo, i64 1 release, align 8, !noalias !12644
  %i.lr = icmp eq i64 %i.lq, 1
  br i1 %i.lr, label %bb.bz, label %.body11.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0782.sroa.5.0..sroa_idx)
          to label %.body11.i unwind label %bb.bw, !noalias !12607

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i, %bb.bb, %bb.ba, %bb.az
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.az ], [ inttoptr (i64 4 to ptr), %bb.ba ], [ inttoptr (i64 4 to ptr), %bb.bb ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12600
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.ls = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.lu = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.lv = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.lt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !12600
  store i64 1, ptr %i.bp, align 8, !noalias !12600
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.lw, align 8, !noalias !12600
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.lx, align 8, !noalias !12600
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %i.lv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12600
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12600
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12600
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 %i.lu, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12600
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12645
  %i.ly = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12645 ; 4 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.ca, label %bb.cd, !prof !11

bb.ca:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i unwind label %bb.cb, !noalias !12600

.noexc.i.i:                                       ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.ca
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bp) #37
          to label %.body11.i unwind label %bb.cc, !noalias !12600

bb.cc:                                            ; preds = %bb.cb
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12600
  unreachable

bb.cd:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ly, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !12600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12600
  store ptr %i.ly, ptr %i.bx, align 8, !alias.scope !12599, !noalias !12646
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.mc, align 8, !alias.scope !12599, !noalias !12646
  %i.md = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.lv, ptr %i.md, align 8, !alias.scope !12599, !noalias !12646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !12598
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %bb.ce unwind label %bb.cv, !noalias !12598

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !12598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !12598
  call void @llvm.experimental.noalias.scope.decl(metadata !12647)
  %i.me = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !alias.scope !12647, !noalias !12648, !noundef !10
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 3
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %bb.cj, label %.invoke.i.i, !prof !15

bb.cf:                                            ; preds = %.invoke.i.i
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mk = atomicrmw sub ptr %i.mm, i64 1 release, align 8, !noalias !12649
  %i.ml = icmp eq i64 %i.mk, 1
  br i1 %i.ml, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.cr unwind label %bb.ch, !noalias !12648

.invoke.i.i:                                      ; preds = %bb.ce
  %i.mm = load ptr, ptr %i.bu, align 8, !alias.scope !12647, !noalias !12648, !nonnull !10, !noundef !10 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !12650, !noundef !10
  %.not.i.i = icmp eq ptr %i.mo, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @435, ptr @437
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #36
          to label %.cont.i.i unwind label %bb.cf, !noalias !12650

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12648
  unreachable

bb.ci:                                            ; preds = %bb.cj
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !12598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 48, i1 false), !noalias !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !12598
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.bs, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bt)
          to label %bb.ck unwind label %bb.ci, !noalias !12598

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !12651)
  call void @llvm.experimental.noalias.scope.decl(metadata !12652)
  %i.mr = load i8, ptr %i.bs, align 8, !range !23, !alias.scope !12652, !noalias !12653, !noundef !10
  %i.ms = icmp eq i8 %i.mr, -1
  br i1 %i.ms, label %bb.cl, label %bb.cp, !prof !11

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !12654
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mt, i64 32, i1 false), !noalias !12653
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.cn unwind label %bb.cm, !noalias !12654

bb.cm:                                            ; preds = %bb.cl
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.br) #37
          to label %.body11.i unwind label %bb.co, !noalias !12654

bb.cn:                                            ; preds = %bb.cl
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12654
  unreachable

bb.cp:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dy, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.bs, i64 96, i1 false), !alias.scope !12655, !noalias !12656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !12598
  %i.mw = load i64, ptr %i.by, align 8, !range !14, !alias.scope !12657, !noalias !12598, !noundef !10
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %bb.cx unwind label %.body351.thread914

bb.cr:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !12658)
  %i.my = load ptr, ptr %i.bw, align 8, !alias.scope !12658, !noalias !12598, !noundef !10 ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %.body11.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.na = atomicrmw sub ptr %i.my, i64 1 release, align 8, !noalias !12659
  %i.nb = icmp eq i64 %i.na, 1
  br i1 %i.nb, label %bb.ct, label %.body11.i

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %.body11.i unwind label %bb.cu, !noalias !12598

bb.cu:                                            ; preds = %bb.cw, %bb.ct, %bb.av
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12598
  unreachable

bb.cv:                                            ; preds = %bb.cd
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ne = atomicrmw sub ptr %i.ly, i64 1 release, align 8, !noalias !12660
  %i.nf = icmp eq i64 %i.ne, 1
  br i1 %i.nf, label %bb.cw, label %.body11.i

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body11.i unwind label %bb.cu, !noalias !12598

bb.cx:                                            ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store i64 1, ptr %i.cq, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 1, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.nh, ptr noundef nonnull align 8 dereferenceable(96) %i.dy, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12661
  %i.ni = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !12661 ; 3 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.cy, label %bb.db, !prof !11

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc387 unwind label %bb.cz

.noexc387:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.nk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.nh)
          to label %.body351.thread unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.db:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ni, ptr noundef nonnull align 8 dereferenceable(112) %i.cq, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8, !noundef !10 ; 3 uses
  %.not341 = icmp eq ptr %i.nn, null
  br i1 %.not341, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.no = atomicrmw add ptr %i.nn, i64 1 monotonic, align 8
  %i.np = icmp slt i64 %i.no, 0
  br i1 %i.np, label %bb.dg, label %bb.df

bb.dd:                                            ; preds = %bb.db
  store ptr null, ptr %i.dw, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %bb.dd
  %i.nq = load ptr, ptr %i.ea, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.nq, i32 noundef %i.eu, ptr noundef nonnull %i.ni, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @288, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.qe

bb.df:                                            ; preds = %bb.dc
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8, !noundef !10
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.nn, ptr %i.dw, align 8
  %.sroa.0156.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ns, ptr %.sroa.0156.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0156.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.nv = load <2 x i64>, ptr %i.nt, align 8
  store <2 x i64> %i.nv, ptr %.sroa.0156.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0156.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.nw = load <2 x i64>, ptr %i.nu, align 8
  store <2 x i64> %i.nw, ptr %.sroa.0156.sroa.5.0..sroa_idx, align 8
  br label %bb.de

end_hunk_7
begin_hunk_8_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.ql, label %.body.i.i.i.i449, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qm = atomicrmw sub ptr %i.qk, i64 1 release, align 8, !noalias !12711
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %bb.ep, label %.body.i.i.i.i449

bb.ep:                                            ; preds = %bb.eo
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qj)
          to label %.body.i.i.i.i449 unwind label %bb.ey, !noalias !12705

bb.eq:                                            ; preds = %bb.em
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.er:                                            ; preds = %bb.em
  %i.qp = extractvalue { i32, float } %i.qi, 0
  %i.qq = extractvalue { i32, float } %i.qi, 1
  %i.qr = trunc i32 %i.qp to i1
  br i1 %i.qr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.qs = icmp samesign ult i64 %.sroa.7.0.copyload.i.i447, 2305843009213693952
  call void @llvm.assume(i1 %i.qs)
  %i.qt = load i64, ptr %i.bb, align 8, !range !13, !alias.scope !12712, !noalias !12713, !noundef !10
  %i.qu = icmp eq i64 %.sroa.7.0.copyload.i.i447, %i.qt
  br i1 %i.qu, label %bb.ex, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i455

bb.et:                                            ; preds = %bb.er
  call void @llvm.experimental.noalias.scope.decl(metadata !12714)
  call void @llvm.experimental.noalias.scope.decl(metadata !12715)
  call void @llvm.experimental.noalias.scope.decl(metadata !12716)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12717)
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !12718, !noalias !12705, !noundef !10 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qy = atomicrmw sub ptr %i.qw, i64 1 release, align 8, !noalias !12719
  %i.qz = icmp eq i64 %i.qy, 1
  br i1 %i.qz, label %bb.ev, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.ev:                                            ; preds = %bb.eu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qv)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ez, !noalias !12690

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i455: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i458, %bb.es
  %i.ra = phi ptr [ %.pre.i.i.i.i459, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i458 ], [ %i.qh, %bb.es ] ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.sroa.7.0.copyload.i.i447
  store float %i.qq, ptr %i.rb, align 4, !noalias !12720
  %i.rc = add nuw nsw i64 %.sroa.7.0.copyload.i.i447, 1 ; 2 uses
  store i64 %i.rc, ptr %.sroa.6.0..sroa_idx.i.i.i.i446, align 8, !alias.scope !12712, !noalias !12713
  br label %bb.em

bb.ew:                                            ; preds = %bb.ex
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ex:                                            ; preds = %bb.es
  %.val6.i.i.i.i.i.i456 = load i64, ptr %i.qf, align 8, !alias.scope !12721, !noalias !12705, !noundef !10
  %.val.i.i.i.i.i.i457 = load i64, ptr %i.qg, align 8, !alias.scope !12721, !noalias !12705, !noundef !10
  %i.re = sub i64 %.val6.i.i.i.i.i.i456, %.val.i.i.i.i.i.i457
  %i.rf = call i64 @llvm.uadd.sat.i64(i64 %i.re, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %.sroa.7.0.copyload.i.i447, i64 noundef range(i64 1, 0) %i.rf, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i458 unwind label %bb.ew, !noalias !12713

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i458: ; preds = %bb.ex
  %.pre.i.i.i.i459 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i445, align 8, !alias.scope !12712, !noalias !12713
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i455

bb.ey:                                            ; preds = %bb.ep
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12705
  unreachable

bb.ez:                                            ; preds = %bb.ev
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i449

.body.i.i.i.i449:                                 ; preds = %bb.ez, %bb.ep, %bb.eo, %bb.en
  %eh.lpad-body.i.i.i.i450 = phi { ptr, i32 } [ %i.rh, %bb.ez ], [ %.pn.i.i.i.i.i.i448, %bb.ep ], [ %.pn.i.i.i.i.i.i448, %bb.eo ], [ %.pn.i.i.i.i.i.i448, %bb.en ] ; 2 uses
  %.val.i.i.i.i451 = load i64, ptr %i.bb, align 8, !noalias !12690 ; 2 uses
  %i.ri = icmp eq i64 %.val.i.i.i.i451, 0
  br i1 %i.ri, label %.body11.i423, label %bb.fa

bb.fa:                                            ; preds = %.body.i.i.i.i449
  %.val7.i.i.i.i452 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i445, align 8, !noalias !12690, !nonnull !10, !noundef !10
  %i.rj = shl nuw i64 %.val.i.i.i.i451, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i452, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12690
  br label %.body11.i423

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.ev, %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12690
  %.sroa.0.0.copyload.i.i453 = load i64, ptr %i.bb, align 8, !noalias !12722
  %.sroa.5.0.copyload.i.i454 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i445, align 8, !noalias !12722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12690
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.fb:                                            ; preds = %bb.fe
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12691
  unreachable

bb.fc:                                            ; preds = %bb.eh, %bb.ec
  %.pn.ph.i.i.i.i422 = phi { ptr, i32 } [ %i.pq, %bb.ec ], [ %i.py, %bb.eh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12723)
  call void @llvm.experimental.noalias.scope.decl(metadata !12724)
  call void @llvm.experimental.noalias.scope.decl(metadata !12725)
  call void @llvm.experimental.noalias.scope.decl(metadata !12726)
  %i.rl = load ptr, ptr %.sroa.0798.sroa.5.0..sroa_idx, align 8, !alias.scope !12727, !noalias !12691, !noundef !10 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %.body11.i423, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.rn = atomicrmw sub ptr %i.rl, i64 1 release, align 8, !noalias !12728
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.fe, label %.body11.i423

bb.fe:                                            ; preds = %bb.fd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0798.sroa.5.0..sroa_idx)
          to label %.body11.i423 unwind label %bb.fb, !noalias !12691

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.eg, %bb.ef, %bb.ee
  %.sroa.7.0.i.i426 = phi i64 [ %.sroa.7.0.copyload.i.i447, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.ee ], [ 0, %bb.ef ], [ 0, %bb.eg ] ; 2 uses
  %.sroa.5.0.i.i427 = phi ptr [ %.sroa.5.0.copyload.i.i454, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.ee ], [ inttoptr (i64 4 to ptr), %bb.ef ], [ inttoptr (i64 4 to ptr), %bb.eg ] ; 3 uses
  %.sroa.0.0.i.i428 = phi i64 [ %.sroa.0.0.copyload.i.i453, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.ee ], [ 0, %bb.ef ], [ 0, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !12684
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i427) ]
  %i.rp = icmp samesign ult i64 %.sroa.7.0.i.i426, 2305843009213693952
  call void @llvm.assume(i1 %i.rp)
  %i.rq = icmp samesign ult i64 %.sroa.0.0.i.i428, 2305843009213693952
  %i.rr = shl nuw nsw i64 %.sroa.0.0.i.i428, 2
  %i.rs = shl nuw nsw i64 %.sroa.7.0.i.i426, 2    ; 2 uses
  call void @llvm.assume(i1 %i.rq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !12684
  store i64 1, ptr %i.bc, align 8, !noalias !12684
  %i.rt = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 1, ptr %i.rt, align 8, !noalias !12684
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %.sroa.5.0.i.i427, ptr %i.ru, align 8, !noalias !12684
  %.sroa.4.0..sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.rs, ptr %.sroa.4.0..sroa_idx.i.i429, align 8, !noalias !12684
  %.sroa.5.0..sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i430, align 8, !noalias !12684
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i431 = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i431, align 8, !noalias !12684
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i432 = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i64 %i.rr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i432, align 8, !noalias !12684
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12729
  %i.rv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12729 ; 4 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.ff, label %bb.fi, !prof !11

bb.ff:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i439 unwind label %bb.fg, !noalias !12684

.noexc.i.i439:                                    ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.ff
  %i.rx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bc) #37
          to label %.body11.i423 unwind label %bb.fh, !noalias !12684

bb.fh:                                            ; preds = %bb.fg
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12684
  unreachable

bb.fi:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.rv, ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i64 56, i1 false), !noalias !12684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !12684
  store ptr %i.rv, ptr %i.bk, align 8, !alias.scope !12683, !noalias !12730
  %i.rz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.5.0.i.i427, ptr %i.rz, align 8, !alias.scope !12683, !noalias !12730
  %i.sa = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.rs, ptr %i.sa, align 8, !alias.scope !12683, !noalias !12730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12682
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %bb.fj unwind label %bb.ga, !noalias !12682

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !12682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !12682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !12682
  call void @llvm.experimental.noalias.scope.decl(metadata !12731)
  %i.sb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !alias.scope !12731, !noalias !12732, !noundef !10
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = and i64 %i.sd, 3
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %bb.fo, label %.invoke.i.i433, !prof !15

bb.fk:                                            ; preds = %.invoke.i.i433
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.sh = atomicrmw sub ptr %i.sj, i64 1 release, align 8, !noalias !12733
  %i.si = icmp eq i64 %i.sh, 1
  br i1 %i.si, label %bb.fl, label %bb.fw

bb.fl:                                            ; preds = %bb.fk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.fw unwind label %bb.fm, !noalias !12732

.invoke.i.i433:                                   ; preds = %bb.fj
  %i.sj = load ptr, ptr %i.bh, align 8, !alias.scope !12731, !noalias !12732, !nonnull !10, !noundef !10 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !12734, !noundef !10
  %.not.i.i434 = icmp eq ptr %i.sl, null          ; 3 uses
  %.2.i.i435 = select i1 %.not.i.i434, ptr @435, ptr @437
  %.1.i.i436 = select i1 %.not.i.i434, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i437 = select i1 %.not.i.i434, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i437, ptr noundef nonnull %.1.i.i436, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i435) #36
          to label %.cont.i.i438 unwind label %bb.fk, !noalias !12734

.cont.i.i438:                                     ; preds = %.invoke.i.i433
  unreachable

bb.fm:                                            ; preds = %bb.fl
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12732
  unreachable

bb.fn:                                            ; preds = %bb.fo
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i423

bb.fo:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !12682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !12682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false), !noalias !12682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !12682
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bg)
          to label %bb.fp unwind label %bb.fn, !noalias !12682

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !12735)
  call void @llvm.experimental.noalias.scope.decl(metadata !12736)
  %i.so = load i8, ptr %i.bf, align 8, !range !23, !alias.scope !12736, !noalias !12737, !noundef !10
  %i.sp = icmp eq i8 %i.so, -1
  br i1 %i.sp, label %bb.fq, label %bb.fu, !prof !11

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !12738
  %i.sq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.sq, i64 32, i1 false), !noalias !12737
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.fs unwind label %bb.fr, !noalias !12738

bb.fr:                                            ; preds = %bb.fq
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be) #37
          to label %.body11.i423 unwind label %bb.ft, !noalias !12738

bb.fs:                                            ; preds = %bb.fq
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12738
  unreachable

bb.fu:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.bf, i64 96, i1 false), !alias.scope !12739, !noalias !12740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !12682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !12682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !12682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !12682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12682
  %i.st = load i64, ptr %i.bl, align 8, !range !14, !alias.scope !12741, !noalias !12682, !noundef !10
  %i.su = icmp eq i64 %i.st, 0
  br i1 %i.su, label %bb.gc, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %bb.gc unwind label %.body348.thread928

bb.fw:                                            ; preds = %bb.fl, %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !12742)
  %i.sv = load ptr, ptr %i.bj, align 8, !alias.scope !12742, !noalias !12682, !noundef !10 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %.body11.i423, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.sx = atomicrmw sub ptr %i.sv, i64 1 release, align 8, !noalias !12743
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %bb.fy, label %.body11.i423

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %.body11.i423 unwind label %bb.fz, !noalias !12682

bb.fz:                                            ; preds = %bb.gb, %bb.fy, %bb.ea
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12682
  unreachable

bb.ga:                                            ; preds = %bb.fi
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tb = atomicrmw sub ptr %i.rv, i64 1 release, align 8, !noalias !12744
  %i.tc = icmp eq i64 %i.tb, 1
  br i1 %i.tc, label %bb.gb, label %.body11.i423

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body11.i423 unwind label %bb.fz, !noalias !12682

bb.gc:                                            ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 1, ptr %i.cn, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 1, ptr %i.td, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.te, ptr noundef nonnull align 8 dereferenceable(96) %i.dt, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12745
  %i.tf = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !12745 ; 3 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.gd, label %bb.gg, !prof !11

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc466 unwind label %bb.ge

.noexc466:                                        ; preds = %bb.gd
  unreachable

bb.ge:                                            ; preds = %bb.gd
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.te)
          to label %.body348.thread unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.gg:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.tf, ptr noundef nonnull align 8 dereferenceable(112) %i.cn, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !noundef !10 ; 3 uses
  %.not339 = icmp eq ptr %i.tk, null
  br i1 %.not339, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.tl = atomicrmw add ptr %i.tk, i64 1 monotonic, align 8
  %i.tm = icmp slt i64 %i.tl, 0
  br i1 %i.tm, label %bb.gl, label %bb.gk

bb.gi:                                            ; preds = %bb.gg
  store ptr null, ptr %i.dr, align 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gk, %bb.gi
  %i.tn = load ptr, ptr %i.dv, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.tn, i32 noundef %i.fh, ptr noundef nonnull %i.tf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @288, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.qe

bb.gk:                                            ; preds = %bb.gh
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.tp = load ptr, ptr %i.to, align 8, !noundef !10
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.tk, ptr %i.dr, align 8
  %.sroa.0186.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.tp, ptr %.sroa.0186.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0186.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ts = load <2 x i64>, ptr %i.tq, align 8
  store <2 x i64> %i.ts, ptr %.sroa.0186.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0186.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.tt = load <2 x i64>, ptr %i.tr, align 8
  store <2 x i64> %i.tt, ptr %.sroa.0186.sroa.5.0..sroa_idx, align 8
  br label %bb.gj

end_hunk_8
begin_hunk_9_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.wh, label %.body.i.i.i.i529, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wi = atomicrmw sub ptr %i.wg, i64 1 release, align 8, !noalias !12795
  %i.wj = icmp eq i64 %i.wi, 1
  br i1 %i.wj, label %bb.hs, label %.body.i.i.i.i529

bb.hs:                                            ; preds = %bb.hr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.wf)
          to label %.body.i.i.i.i529 unwind label %bb.ib, !noalias !12789

bb.ht:                                            ; preds = %bb.hp
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hu:                                            ; preds = %bb.hp
  %i.wl = extractvalue { i32, float } %i.we, 0
  %i.wm = extractvalue { i32, float } %i.we, 1
  %i.wn = trunc i32 %i.wl to i1
  br i1 %i.wn, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.wo = icmp samesign ult i64 %.sroa.7.0.copyload.i.i527, 2305843009213693952
  call void @llvm.assume(i1 %i.wo)
  %i.wp = load i64, ptr %i.ao, align 8, !range !13, !alias.scope !12796, !noalias !12797, !noundef !10
  %i.wq = icmp eq i64 %.sroa.7.0.copyload.i.i527, %i.wp
  br i1 %i.wq, label %bb.ia, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i535

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !12798)
  call void @llvm.experimental.noalias.scope.decl(metadata !12799)
  call void @llvm.experimental.noalias.scope.decl(metadata !12800)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12801)
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !12802, !noalias !12789, !noundef !10 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wu = atomicrmw sub ptr %i.ws, i64 1 release, align 8, !noalias !12803
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.hy:                                            ; preds = %bb.hx
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.wr)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ic, !noalias !12774

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i535: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i538, %bb.hv
  %i.ww = phi ptr [ %.pre.i.i.i.i539, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i538 ], [ %i.wd, %bb.hv ] ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.sroa.7.0.copyload.i.i527
  store float %i.wm, ptr %i.wx, align 4, !noalias !12804
  %i.wy = add nuw nsw i64 %.sroa.7.0.copyload.i.i527, 1 ; 2 uses
  store i64 %i.wy, ptr %.sroa.6.0..sroa_idx.i.i.i.i526, align 8, !alias.scope !12796, !noalias !12797
  br label %bb.hp

bb.hz:                                            ; preds = %bb.ia
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.ia:                                            ; preds = %bb.hv
  %.val6.i.i.i.i.i.i536 = load i64, ptr %i.wb, align 8, !alias.scope !12805, !noalias !12789, !noundef !10
  %.val.i.i.i.i.i.i537 = load i64, ptr %i.wc, align 8, !alias.scope !12805, !noalias !12789, !noundef !10
  %i.xa = sub i64 %.val6.i.i.i.i.i.i536, %.val.i.i.i.i.i.i537
  %i.xb = call i64 @llvm.uadd.sat.i64(i64 %i.xa, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %.sroa.7.0.copyload.i.i527, i64 noundef range(i64 1, 0) %i.xb, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i538 unwind label %bb.hz, !noalias !12797

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i538: ; preds = %bb.ia
  %.pre.i.i.i.i539 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i525, align 8, !alias.scope !12796, !noalias !12797
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i535

bb.ib:                                            ; preds = %bb.hs
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12789
  unreachable

bb.ic:                                            ; preds = %bb.hy
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i529

.body.i.i.i.i529:                                 ; preds = %bb.ic, %bb.hs, %bb.hr, %bb.hq
  %eh.lpad-body.i.i.i.i530 = phi { ptr, i32 } [ %i.xd, %bb.ic ], [ %.pn.i.i.i.i.i.i528, %bb.hs ], [ %.pn.i.i.i.i.i.i528, %bb.hr ], [ %.pn.i.i.i.i.i.i528, %bb.hq ] ; 2 uses
  %.val.i.i.i.i531 = load i64, ptr %i.ao, align 8, !noalias !12774 ; 2 uses
  %i.xe = icmp eq i64 %.val.i.i.i.i531, 0
  br i1 %i.xe, label %.body11.i503, label %bb.id

bb.id:                                            ; preds = %.body.i.i.i.i529
  %.val7.i.i.i.i532 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i525, align 8, !noalias !12774, !nonnull !10, !noundef !10
  %i.xf = shl nuw i64 %.val.i.i.i.i531, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i532, i64 noundef %i.xf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12774
  br label %.body11.i503

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.hy, %bb.hx, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12774
  %.sroa.0.0.copyload.i.i533 = load i64, ptr %i.ao, align 8, !noalias !12806
  %.sroa.5.0.copyload.i.i534 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i525, align 8, !noalias !12806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12774
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.ie:                                            ; preds = %bb.ih
  %i.xg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12775
  unreachable

bb.if:                                            ; preds = %bb.hk, %bb.hf
  %.pn.ph.i.i.i.i502 = phi { ptr, i32 } [ %i.vm, %bb.hf ], [ %i.vu, %bb.hk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12807)
  call void @llvm.experimental.noalias.scope.decl(metadata !12808)
  call void @llvm.experimental.noalias.scope.decl(metadata !12809)
  call void @llvm.experimental.noalias.scope.decl(metadata !12810)
  %i.xh = load ptr, ptr %.sroa.0814.sroa.5.0..sroa_idx, align 8, !alias.scope !12811, !noalias !12775, !noundef !10 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, null
  br i1 %i.xi, label %.body11.i503, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.xj = atomicrmw sub ptr %i.xh, i64 1 release, align 8, !noalias !12812
  %i.xk = icmp eq i64 %i.xj, 1
  br i1 %i.xk, label %bb.ih, label %.body11.i503

bb.ih:                                            ; preds = %bb.ig
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0814.sroa.5.0..sroa_idx)
          to label %.body11.i503 unwind label %bb.ie, !noalias !12775

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.hj, %bb.hi, %bb.hh
  %.sroa.7.0.i.i506 = phi i64 [ %.sroa.7.0.copyload.i.i527, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.hh ], [ 0, %bb.hi ], [ 0, %bb.hj ] ; 2 uses
  %.sroa.5.0.i.i507 = phi ptr [ %.sroa.5.0.copyload.i.i534, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.hh ], [ inttoptr (i64 4 to ptr), %bb.hi ], [ inttoptr (i64 4 to ptr), %bb.hj ] ; 3 uses
  %.sroa.0.0.i.i508 = phi i64 [ %.sroa.0.0.copyload.i.i533, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.hh ], [ 0, %bb.hi ], [ 0, %bb.hj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12768
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i507) ]
  %i.xl = icmp samesign ult i64 %.sroa.7.0.i.i506, 2305843009213693952
  call void @llvm.assume(i1 %i.xl)
  %i.xm = icmp samesign ult i64 %.sroa.0.0.i.i508, 2305843009213693952
  %i.xn = shl nuw nsw i64 %.sroa.0.0.i.i508, 2
  %i.xo = shl nuw nsw i64 %.sroa.7.0.i.i506, 2    ; 2 uses
  call void @llvm.assume(i1 %i.xm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12768
  store i64 1, ptr %i.ap, align 8, !noalias !12768
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.xp, align 8, !noalias !12768
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.5.0.i.i507, ptr %i.xq, align 8, !noalias !12768
  %.sroa.4.0..sroa_idx.i.i509 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.xo, ptr %.sroa.4.0..sroa_idx.i.i509, align 8, !noalias !12768
  %.sroa.5.0..sroa_idx.i.i510 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i510, align 8, !noalias !12768
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i511 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i511, align 8, !noalias !12768
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i512 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i64 %i.xn, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i512, align 8, !noalias !12768
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12813
  %i.xr = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12813 ; 4 uses
  %i.xs = icmp eq ptr %i.xr, null
  br i1 %i.xs, label %bb.ii, label %bb.il, !prof !11

bb.ii:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i519 unwind label %bb.ij, !noalias !12768

.noexc.i.i519:                                    ; preds = %bb.ii
  unreachable

bb.ij:                                            ; preds = %bb.ii
  %i.xt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ap) #37
          to label %.body11.i503 unwind label %bb.ik, !noalias !12768

bb.ik:                                            ; preds = %bb.ij
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12768
  unreachable

bb.il:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xr, ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i64 56, i1 false), !noalias !12768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12768
  store ptr %i.xr, ptr %i.ax, align 8, !alias.scope !12767, !noalias !12814
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.i.i507, ptr %i.xv, align 8, !alias.scope !12767, !noalias !12814
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.xo, ptr %i.xw, align 8, !alias.scope !12767, !noalias !12814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !12766
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %bb.im unwind label %bb.jd, !noalias !12766

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !12766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !12766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !12766
  call void @llvm.experimental.noalias.scope.decl(metadata !12815)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !alias.scope !12815, !noalias !12816, !noundef !10
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = and i64 %i.xz, 3
  %i.yb = icmp eq i64 %i.ya, 0
  br i1 %i.yb, label %bb.ir, label %.invoke.i.i513, !prof !15

bb.in:                                            ; preds = %.invoke.i.i513
  %i.yc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.yd = atomicrmw sub ptr %i.yf, i64 1 release, align 8, !noalias !12817
  %i.ye = icmp eq i64 %i.yd, 1
  br i1 %i.ye, label %bb.io, label %bb.iz

bb.io:                                            ; preds = %bb.in
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.iz unwind label %bb.ip, !noalias !12816

.invoke.i.i513:                                   ; preds = %bb.im
  %i.yf = load ptr, ptr %i.au, align 8, !alias.scope !12815, !noalias !12816, !nonnull !10, !noundef !10 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !noalias !12818, !noundef !10
  %.not.i.i514 = icmp eq ptr %i.yh, null          ; 3 uses
  %.2.i.i515 = select i1 %.not.i.i514, ptr @435, ptr @437
  %.1.i.i516 = select i1 %.not.i.i514, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i517 = select i1 %.not.i.i514, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i517, ptr noundef nonnull %.1.i.i516, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i515) #36
          to label %.cont.i.i518 unwind label %bb.in, !noalias !12818

.cont.i.i518:                                     ; preds = %.invoke.i.i513
  unreachable

bb.ip:                                            ; preds = %bb.io
  %i.yi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12816
  unreachable

bb.iq:                                            ; preds = %bb.ir
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i503

bb.ir:                                            ; preds = %bb.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !12766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !12766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !noalias !12766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12766
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.at)
          to label %bb.is unwind label %bb.iq, !noalias !12766

bb.is:                                            ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !12819)
  call void @llvm.experimental.noalias.scope.decl(metadata !12820)
  %i.yk = load i8, ptr %i.as, align 8, !range !23, !alias.scope !12820, !noalias !12821, !noundef !10
  %i.yl = icmp eq i8 %i.yk, -1
  br i1 %i.yl, label %bb.it, label %bb.ix, !prof !11

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12822
  %i.ym = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ym, i64 32, i1 false), !noalias !12821
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.iv unwind label %bb.iu, !noalias !12822

bb.iu:                                            ; preds = %bb.it
  %i.yn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar) #37
          to label %.body11.i503 unwind label %bb.iw, !noalias !12822

bb.iv:                                            ; preds = %bb.it
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.yo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12822
  unreachable

bb.ix:                                            ; preds = %bb.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.as, i64 96, i1 false), !alias.scope !12823, !noalias !12824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12766
  %i.yp = load i64, ptr %i.ay, align 8, !range !14, !alias.scope !12825, !noalias !12766, !noundef !10
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %bb.jf, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %bb.jf unwind label %.body.thread942

bb.iz:                                            ; preds = %bb.io, %bb.in
  call void @llvm.experimental.noalias.scope.decl(metadata !12826)
  %i.yr = load ptr, ptr %i.aw, align 8, !alias.scope !12826, !noalias !12766, !noundef !10 ; 2 uses
  %i.ys = icmp eq ptr %i.yr, null
  br i1 %i.ys, label %.body11.i503, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.yt = atomicrmw sub ptr %i.yr, i64 1 release, align 8, !noalias !12827
  %i.yu = icmp eq i64 %i.yt, 1
  br i1 %i.yu, label %bb.jb, label %.body11.i503

bb.jb:                                            ; preds = %bb.ja
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw)
          to label %.body11.i503 unwind label %bb.jc, !noalias !12766

bb.jc:                                            ; preds = %bb.je, %bb.jb, %bb.hd
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12766
  unreachable

bb.jd:                                            ; preds = %bb.il
  %i.yw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yx = atomicrmw sub ptr %i.xr, i64 1 release, align 8, !noalias !12828
  %i.yy = icmp eq i64 %i.yx, 1
  br i1 %i.yy, label %bb.je, label %.body11.i503

bb.je:                                            ; preds = %bb.jd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body11.i503 unwind label %bb.jc, !noalias !12766

bb.jf:                                            ; preds = %bb.ix, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !12766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store i64 1, ptr %i.ck, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 1, ptr %i.yz, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.za, ptr noundef nonnull align 8 dereferenceable(96) %i.do, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12829
  %i.zb = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !12829 ; 3 uses
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %bb.jg, label %bb.jj, !prof !11

bb.jg:                                            ; preds = %bb.jf
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc546 unwind label %bb.jh

.noexc546:                                        ; preds = %bb.jg
  unreachable

bb.jh:                                            ; preds = %bb.jg
  %i.zd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.za)
          to label %.body.thread unwind label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.ze = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.jj:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.zb, ptr noundef nonnull align 8 dereferenceable(112) %i.ck, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zg = load ptr, ptr %i.zf, align 8, !noundef !10 ; 3 uses
  %.not337 = icmp eq ptr %i.zg, null
  br i1 %.not337, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.zh = atomicrmw add ptr %i.zg, i64 1 monotonic, align 8
  %i.zi = icmp slt i64 %i.zh, 0
  br i1 %i.zi, label %bb.jo, label %bb.jn

bb.jl:                                            ; preds = %bb.jj
  store ptr null, ptr %i.dm, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jn, %bb.jl
  %i.zj = load ptr, ptr %i.dq, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.zj, i32 noundef %i.fu, ptr noundef nonnull %i.zb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @288, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.qe

bb.jn:                                            ; preds = %bb.jk
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.zl = load ptr, ptr %i.zk, align 8, !noundef !10
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.zg, ptr %i.dm, align 8
  %.sroa.0216.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.zl, ptr %.sroa.0216.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0216.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.zo = load <2 x i64>, ptr %i.zm, align 8
  store <2 x i64> %i.zo, ptr %.sroa.0216.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0216.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.zp = load <2 x i64>, ptr %i.zn, align 8
  store <2 x i64> %i.zp, ptr %.sroa.0216.sroa.5.0..sroa_idx, align 8
  br label %bb.jm

end_hunk_9
begin_hunk_10_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.acd, label %.body.i.i.i.i609, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ace = atomicrmw sub ptr %i.acc, i64 1 release, align 8, !noalias !12879
  %i.acf = icmp eq i64 %i.ace, 1
  br i1 %i.acf, label %bb.kv, label %.body.i.i.i.i609

bb.kv:                                            ; preds = %bb.ku
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acb)
          to label %.body.i.i.i.i609 unwind label %bb.le, !noalias !12873

bb.kw:                                            ; preds = %bb.ks
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.kx:                                            ; preds = %bb.ks
  %i.ach = extractvalue { i64, double } %i.aca, 0
  %i.aci = extractvalue { i64, double } %i.aca, 1
  %i.acj = trunc nuw i64 %i.ach to i1
  br i1 %i.acj, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.ack = icmp samesign ult i64 %.sroa.7.0.copyload.i.i607, 1152921504606846976
  call void @llvm.assume(i1 %i.ack)
  %i.acl = load i64, ptr %i.ab, align 8, !range !13, !alias.scope !12880, !noalias !12881, !noundef !10
  %i.acm = icmp eq i64 %.sroa.7.0.copyload.i.i607, %i.acl
  br i1 %i.acm, label %bb.ld, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.experimental.noalias.scope.decl(metadata !12882)
  call void @llvm.experimental.noalias.scope.decl(metadata !12883)
  call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12885)
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !12886, !noalias !12873, !noundef !10 ; 2 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.acq = atomicrmw sub ptr %i.aco, i64 1 release, align 8, !noalias !12887
  %i.acr = icmp eq i64 %i.acq, 1
  br i1 %i.acr, label %bb.lb, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.lb:                                            ; preds = %bb.la
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acn)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.lf, !noalias !12858

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i, %bb.ky
  %i.acs = phi ptr [ %.pre.i.i.i.i617, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i ], [ %i.abz, %bb.ky ] ; 2 uses
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %.sroa.7.0.copyload.i.i607
  store double %i.aci, ptr %i.act, align 8, !noalias !12888
  %i.acu = add nuw nsw i64 %.sroa.7.0.copyload.i.i607, 1 ; 2 uses
  store i64 %i.acu, ptr %.sroa.6.0..sroa_idx.i.i.i.i606, align 8, !alias.scope !12880, !noalias !12881
  br label %bb.ks

bb.lc:                                            ; preds = %bb.ld
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.ld:                                            ; preds = %bb.ky
  %.val6.i.i.i.i.i.i615 = load i64, ptr %i.abx, align 8, !alias.scope !12889, !noalias !12873, !noundef !10
  %.val.i.i.i.i.i.i616 = load i64, ptr %i.aby, align 8, !alias.scope !12889, !noalias !12873, !noundef !10
  %i.acw = sub i64 %.val6.i.i.i.i.i.i615, %.val.i.i.i.i.i.i616
  %i.acx = call i64 @llvm.uadd.sat.i64(i64 %i.acw, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.sroa.7.0.copyload.i.i607, i64 noundef %i.acx, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i unwind label %bb.lc, !noalias !12881

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ld
  %.pre.i.i.i.i617 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i605, align 8, !alias.scope !12880, !noalias !12881
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.le:                                            ; preds = %bb.kv
  %i.acy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12873
  unreachable

bb.lf:                                            ; preds = %bb.lb
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i609

.body.i.i.i.i609:                                 ; preds = %bb.lf, %bb.kv, %bb.ku, %bb.kt
  %eh.lpad-body.i.i.i.i610 = phi { ptr, i32 } [ %i.acz, %bb.lf ], [ %.pn.i.i.i.i.i.i608, %bb.kv ], [ %.pn.i.i.i.i.i.i608, %bb.ku ], [ %.pn.i.i.i.i.i.i608, %bb.kt ] ; 2 uses
  %.val.i.i.i.i611 = load i64, ptr %i.ab, align 8, !noalias !12858 ; 2 uses
  %i.ada = icmp eq i64 %.val.i.i.i.i611, 0
  br i1 %i.ada, label %.body11.i583, label %bb.lg

bb.lg:                                            ; preds = %.body.i.i.i.i609
  %.val7.i.i.i.i612 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i605, align 8, !noalias !12858, !nonnull !10, !noundef !10
  %i.adb = shl nuw i64 %.val.i.i.i.i611, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i612, i64 noundef %i.adb, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !12858
  br label %.body11.i583

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.lb, %bb.la, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12858
  %.sroa.0.0.copyload.i.i613 = load i64, ptr %i.ab, align 8, !noalias !12890
  %.sroa.5.0.copyload.i.i614 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i605, align 8, !noalias !12890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12858
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.lh:                                            ; preds = %bb.lk
  %i.adc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12859
  unreachable

bb.li:                                            ; preds = %bb.kn, %bb.ki
  %.pn.ph.i.i.i.i582 = phi { ptr, i32 } [ %i.abi, %bb.ki ], [ %i.abq, %bb.kn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12891)
  call void @llvm.experimental.noalias.scope.decl(metadata !12892)
  call void @llvm.experimental.noalias.scope.decl(metadata !12893)
  call void @llvm.experimental.noalias.scope.decl(metadata !12894)
  %i.add = load ptr, ptr %.sroa.0830.sroa.5.0..sroa_idx, align 8, !alias.scope !12895, !noalias !12859, !noundef !10 ; 2 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %.body11.i583, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.adf = atomicrmw sub ptr %i.add, i64 1 release, align 8, !noalias !12896
  %i.adg = icmp eq i64 %i.adf, 1
  br i1 %i.adg, label %bb.lk, label %.body11.i583

bb.lk:                                            ; preds = %bb.lj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0830.sroa.5.0..sroa_idx)
          to label %.body11.i583 unwind label %bb.lh, !noalias !12859

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.km, %bb.kl, %bb.kk
  %.sroa.7.0.i.i586 = phi i64 [ %.sroa.7.0.copyload.i.i607, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.kk ], [ 0, %bb.kl ], [ 0, %bb.km ] ; 2 uses
  %.sroa.5.0.i.i587 = phi ptr [ %.sroa.5.0.copyload.i.i614, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.kk ], [ inttoptr (i64 8 to ptr), %bb.kl ], [ inttoptr (i64 8 to ptr), %bb.km ] ; 3 uses
  %.sroa.0.0.i.i588 = phi i64 [ %.sroa.0.0.copyload.i.i613, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.kk ], [ 0, %bb.kl ], [ 0, %bb.km ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !12852
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i587) ]
  %i.adh = icmp samesign ult i64 %.sroa.7.0.i.i586, 1152921504606846976
  call void @llvm.assume(i1 %i.adh)
  %i.adi = icmp samesign ult i64 %.sroa.0.0.i.i588, 1152921504606846976
  %i.adj = shl nuw nsw i64 %.sroa.0.0.i.i588, 3
  %i.adk = shl nuw nsw i64 %.sroa.7.0.i.i586, 3   ; 2 uses
  call void @llvm.assume(i1 %i.adi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12852
  store i64 1, ptr %i.ac, align 8, !noalias !12852
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.adl, align 8, !noalias !12852
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.5.0.i.i587, ptr %i.adm, align 8, !noalias !12852
  %.sroa.4.0..sroa_idx.i.i589 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.adk, ptr %.sroa.4.0..sroa_idx.i.i589, align 8, !noalias !12852
  %.sroa.5.0..sroa_idx.i.i590 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i590, align 8, !noalias !12852
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i591 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i591, align 8, !noalias !12852
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i592 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.adj, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i592, align 8, !noalias !12852
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12897
  %i.adn = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12897 ; 4 uses
  %i.ado = icmp eq ptr %i.adn, null
  br i1 %i.ado, label %bb.ll, label %bb.lo, !prof !11

bb.ll:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i599 unwind label %bb.lm, !noalias !12852

.noexc.i.i599:                                    ; preds = %bb.ll
  unreachable

bb.lm:                                            ; preds = %bb.ll
  %i.adp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac) #37
          to label %.body11.i583 unwind label %bb.ln, !noalias !12852

bb.ln:                                            ; preds = %bb.lm
  %i.adq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12852
  unreachable

bb.lo:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.adn, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !12852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12852
  store ptr %i.adn, ptr %i.ak, align 8, !alias.scope !12851, !noalias !12898
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.5.0.i.i587, ptr %i.adr, align 8, !alias.scope !12851, !noalias !12898
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.adk, ptr %i.ads, align 8, !alias.scope !12851, !noalias !12898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !12850
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %bb.lp unwind label %bb.mg, !noalias !12850

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !12850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !12850
  call void @llvm.experimental.noalias.scope.decl(metadata !12899)
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.adu = load ptr, ptr %i.adt, align 8, !alias.scope !12899, !noalias !12900, !noundef !10
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = and i64 %i.adv, 7
  %i.adx = icmp eq i64 %i.adw, 0
  br i1 %i.adx, label %bb.lu, label %.invoke.i.i593, !prof !15

bb.lq:                                            ; preds = %.invoke.i.i593
  %i.ady = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.adz = atomicrmw sub ptr %i.aeb, i64 1 release, align 8, !noalias !12901
  %i.aea = icmp eq i64 %i.adz, 1
  br i1 %i.aea, label %bb.lr, label %bb.mc

bb.lr:                                            ; preds = %bb.lq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.mc unwind label %bb.ls, !noalias !12900

.invoke.i.i593:                                   ; preds = %bb.lp
  %i.aeb = load ptr, ptr %i.ah, align 8, !alias.scope !12899, !noalias !12900, !nonnull !10, !noundef !10 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8, !noalias !12902, !noundef !10
  %.not.i.i594 = icmp eq ptr %i.aed, null         ; 3 uses
  %.2.i.i595 = select i1 %.not.i.i594, ptr @435, ptr @437
  %.1.i.i596 = select i1 %.not.i.i594, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i597 = select i1 %.not.i.i594, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i597, ptr noundef nonnull %.1.i.i596, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i595) #36
          to label %.cont.i.i598 unwind label %bb.lq, !noalias !12902

.cont.i.i598:                                     ; preds = %.invoke.i.i593
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.aee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12900
  unreachable

bb.lt:                                            ; preds = %bb.lu
  %i.aef = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i583

bb.lu:                                            ; preds = %bb.lp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !12850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !12850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false), !noalias !12850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12850
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ag)
          to label %bb.lv unwind label %bb.lt, !noalias !12850

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.experimental.noalias.scope.decl(metadata !12903)
  call void @llvm.experimental.noalias.scope.decl(metadata !12904)
  %i.aeg = load i8, ptr %i.af, align 8, !range !23, !alias.scope !12904, !noalias !12905, !noundef !10
  %i.aeh = icmp eq i8 %i.aeg, -1
  br i1 %i.aeh, label %bb.lw, label %bb.ma, !prof !11

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12906
  %i.aei = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aei, i64 32, i1 false), !noalias !12905
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.ly unwind label %bb.lx, !noalias !12906

bb.lx:                                            ; preds = %bb.lw
  %i.aej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae) #37
          to label %.body11.i583 unwind label %bb.lz, !noalias !12906

bb.ly:                                            ; preds = %bb.lw
  unreachable

bb.lz:                                            ; preds = %bb.lx
  %i.aek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12906
  unreachable

bb.ma:                                            ; preds = %bb.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.af, i64 96, i1 false), !alias.scope !12907, !noalias !12908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !12850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !12850
  %i.ael = load i64, ptr %i.al, align 8, !range !14, !alias.scope !12909, !noalias !12850, !noundef !10
  %i.aem = icmp eq i64 %i.ael, 0
  br i1 %i.aem, label %bb.mi, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %bb.mi unwind label %.body359.thread956

bb.mc:                                            ; preds = %bb.lr, %bb.lq
  call void @llvm.experimental.noalias.scope.decl(metadata !12910)
  %i.aen = load ptr, ptr %i.aj, align 8, !alias.scope !12910, !noalias !12850, !noundef !10 ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %.body11.i583, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aep = atomicrmw sub ptr %i.aen, i64 1 release, align 8, !noalias !12911
  %i.aeq = icmp eq i64 %i.aep, 1
  br i1 %i.aeq, label %bb.me, label %.body11.i583

bb.me:                                            ; preds = %bb.md
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %.body11.i583 unwind label %bb.mf, !noalias !12850

bb.mf:                                            ; preds = %bb.mh, %bb.me, %bb.kg
  %i.aer = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12850
  unreachable

bb.mg:                                            ; preds = %bb.lo
  %i.aes = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aet = atomicrmw sub ptr %i.adn, i64 1 release, align 8, !noalias !12912
  %i.aeu = icmp eq i64 %i.aet, 1
  br i1 %i.aeu, label %bb.mh, label %.body11.i583

bb.mh:                                            ; preds = %bb.mg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body11.i583 unwind label %bb.mf, !noalias !12850

bb.mi:                                            ; preds = %bb.ma, %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !12850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store i64 1, ptr %i.ch, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 1, ptr %i.aev, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aew, ptr noundef nonnull align 8 dereferenceable(96) %i.dj, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12913
  %i.aex = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !12913 ; 3 uses
  %i.aey = icmp eq ptr %i.aex, null
  br i1 %i.aey, label %bb.mj, label %bb.mm, !prof !11

bb.mj:                                            ; preds = %bb.mi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc624 unwind label %bb.mk

.noexc624:                                        ; preds = %bb.mj
  unreachable

bb.mk:                                            ; preds = %bb.mj
  %i.aez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aew)
          to label %.body359.thread unwind label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.afa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.mm:                                            ; preds = %bb.mi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aex, ptr noundef nonnull align 8 dereferenceable(112) %i.ch, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afc = load ptr, ptr %i.afb, align 8, !noundef !10 ; 3 uses
  %.not335 = icmp eq ptr %i.afc, null
  br i1 %.not335, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.afd = atomicrmw add ptr %i.afc, i64 1 monotonic, align 8
  %i.afe = icmp slt i64 %i.afd, 0
  br i1 %i.afe, label %bb.mr, label %bb.mq

bb.mo:                                            ; preds = %bb.mm
  store ptr null, ptr %i.dh, align 8
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mq, %bb.mo
  %i.aff = load ptr, ptr %i.dl, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.aff, i32 noundef %i.gh, ptr noundef nonnull %i.aex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @289, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.qe

bb.mq:                                            ; preds = %bb.mn
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.afh = load ptr, ptr %i.afg, align 8, !noundef !10
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.afc, ptr %i.dh, align 8
  %.sroa.0246.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.afh, ptr %.sroa.0246.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0246.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.afk = load <2 x i64>, ptr %i.afi, align 8
  store <2 x i64> %i.afk, ptr %.sroa.0246.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0246.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.afl = load <2 x i64>, ptr %i.afj, align 8
  store <2 x i64> %i.afl, ptr %.sroa.0246.sroa.5.0..sroa_idx, align 8
  br label %bb.mp

end_hunk_10
begin_hunk_11_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.ahy, label %.body.i.i.i.i686, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ahz = atomicrmw sub ptr %i.ahx, i64 1 release, align 8, !noalias !12963
  %i.aia = icmp eq i64 %i.ahz, 1
  br i1 %i.aia, label %bb.nx, label %.body.i.i.i.i686

bb.nx:                                            ; preds = %bb.nw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ahw)
          to label %.body.i.i.i.i686 unwind label %bb.og, !noalias !12957

bb.ny:                                            ; preds = %bb.nu
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.nz:                                            ; preds = %bb.nu
  %i.aic = extractvalue { i64, double } %i.ahv, 0
  %i.aid = extractvalue { i64, double } %i.ahv, 1
  %i.aie = trunc nuw i64 %i.aic to i1
  br i1 %i.aie, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.aif = icmp samesign ult i64 %.sroa.7.0.copyload.i.i684, 1152921504606846976
  call void @llvm.assume(i1 %i.aif)
  %i.aig = load i64, ptr %i.o, align 8, !range !13, !alias.scope !12964, !noalias !12965, !noundef !10
  %i.aih = icmp eq i64 %.sroa.7.0.copyload.i.i684, %i.aig
  br i1 %i.aih, label %bb.of, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i692

bb.ob:                                            ; preds = %bb.nz
  call void @llvm.experimental.noalias.scope.decl(metadata !12966)
  call void @llvm.experimental.noalias.scope.decl(metadata !12967)
  call void @llvm.experimental.noalias.scope.decl(metadata !12968)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12969)
  %i.aij = load ptr, ptr %i.aii, align 8, !alias.scope !12970, !noalias !12957, !noundef !10 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, null
  br i1 %i.aik, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.ail = atomicrmw sub ptr %i.aij, i64 1 release, align 8, !noalias !12971
  %i.aim = icmp eq i64 %i.ail, 1
  br i1 %i.aim, label %bb.od, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.od:                                            ; preds = %bb.oc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aii)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.oh, !noalias !12942

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i692: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i695, %bb.oa
  %i.ain = phi ptr [ %.pre.i.i.i.i696, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i695 ], [ %i.ahu, %bb.oa ] ; 2 uses
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.ain, i64 %.sroa.7.0.copyload.i.i684
  store double %i.aid, ptr %i.aio, align 8, !noalias !12972
  %i.aip = add nuw nsw i64 %.sroa.7.0.copyload.i.i684, 1 ; 2 uses
  store i64 %i.aip, ptr %.sroa.6.0..sroa_idx.i.i.i.i683, align 8, !alias.scope !12964, !noalias !12965
  br label %bb.nu

bb.oe:                                            ; preds = %bb.of
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.of:                                            ; preds = %bb.oa
  %.val6.i.i.i.i.i.i693 = load i64, ptr %i.ahs, align 8, !alias.scope !12973, !noalias !12957, !noundef !10
  %.val.i.i.i.i.i.i694 = load i64, ptr %i.aht, align 8, !alias.scope !12973, !noalias !12957, !noundef !10
  %i.air = sub i64 %.val6.i.i.i.i.i.i693, %.val.i.i.i.i.i.i694
  %i.ais = call i64 @llvm.uadd.sat.i64(i64 %i.air, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.sroa.7.0.copyload.i.i684, i64 noundef %i.ais, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i695 unwind label %bb.oe, !noalias !12965

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i695: ; preds = %bb.of
  %.pre.i.i.i.i696 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i682, align 8, !alias.scope !12964, !noalias !12965
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i692

bb.og:                                            ; preds = %bb.nx
  %i.ait = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12957
  unreachable

bb.oh:                                            ; preds = %bb.od
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i686

.body.i.i.i.i686:                                 ; preds = %bb.oh, %bb.nx, %bb.nw, %bb.nv
  %eh.lpad-body.i.i.i.i687 = phi { ptr, i32 } [ %i.aiu, %bb.oh ], [ %.pn.i.i.i.i.i.i685, %bb.nx ], [ %.pn.i.i.i.i.i.i685, %bb.nw ], [ %.pn.i.i.i.i.i.i685, %bb.nv ] ; 2 uses
  %.val.i.i.i.i688 = load i64, ptr %i.o, align 8, !noalias !12942 ; 2 uses
  %i.aiv = icmp eq i64 %.val.i.i.i.i688, 0
  br i1 %i.aiv, label %.body11.i660, label %bb.oi

bb.oi:                                            ; preds = %.body.i.i.i.i686
  %.val7.i.i.i.i689 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i682, align 8, !noalias !12942, !nonnull !10, !noundef !10
  %i.aiw = shl nuw i64 %.val.i.i.i.i688, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i689, i64 noundef %i.aiw, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !12942
  br label %.body11.i660

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.od, %bb.oc, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12942
  %.sroa.0.0.copyload.i.i690 = load i64, ptr %i.o, align 8, !noalias !12974
  %.sroa.5.0.copyload.i.i691 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i682, align 8, !noalias !12974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12942
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.oj:                                            ; preds = %bb.om
  %i.aix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12943
  unreachable

bb.ok:                                            ; preds = %bb.np, %bb.nk
  %.pn.ph.i.i.i.i659 = phi { ptr, i32 } [ %i.ahd, %bb.nk ], [ %i.ahl, %bb.np ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12975)
  call void @llvm.experimental.noalias.scope.decl(metadata !12976)
  call void @llvm.experimental.noalias.scope.decl(metadata !12977)
  call void @llvm.experimental.noalias.scope.decl(metadata !12978)
  %i.aiy = load ptr, ptr %.sroa.0846.sroa.5.0..sroa_idx, align 8, !alias.scope !12979, !noalias !12943, !noundef !10 ; 2 uses
  %i.aiz = icmp eq ptr %i.aiy, null
  br i1 %i.aiz, label %.body11.i660, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.aja = atomicrmw sub ptr %i.aiy, i64 1 release, align 8, !noalias !12980
  %i.ajb = icmp eq i64 %i.aja, 1
  br i1 %i.ajb, label %bb.om, label %.body11.i660

bb.om:                                            ; preds = %bb.ol
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0846.sroa.5.0..sroa_idx)
          to label %.body11.i660 unwind label %bb.oj, !noalias !12943

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.no, %bb.nn, %bb.nm
  %.sroa.7.0.i.i663 = phi i64 [ %.sroa.7.0.copyload.i.i684, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.nm ], [ 0, %bb.nn ], [ 0, %bb.no ] ; 2 uses
  %.sroa.5.0.i.i664 = phi ptr [ %.sroa.5.0.copyload.i.i691, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.nm ], [ inttoptr (i64 8 to ptr), %bb.nn ], [ inttoptr (i64 8 to ptr), %bb.no ] ; 3 uses
  %.sroa.0.0.i.i665 = phi i64 [ %.sroa.0.0.copyload.i.i690, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.nm ], [ 0, %bb.nn ], [ 0, %bb.no ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12936
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i664) ]
  %i.ajc = icmp samesign ult i64 %.sroa.7.0.i.i663, 1152921504606846976
  call void @llvm.assume(i1 %i.ajc)
  %i.ajd = icmp samesign ult i64 %.sroa.0.0.i.i665, 1152921504606846976
  %i.aje = shl nuw nsw i64 %.sroa.0.0.i.i665, 3
  %i.ajf = shl nuw nsw i64 %.sroa.7.0.i.i663, 3   ; 2 uses
  call void @llvm.assume(i1 %i.ajd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12936
  store i64 1, ptr %i.p, align 8, !noalias !12936
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.ajg, align 8, !noalias !12936
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.5.0.i.i664, ptr %i.ajh, align 8, !noalias !12936
  %.sroa.4.0..sroa_idx.i.i666 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ajf, ptr %.sroa.4.0..sroa_idx.i.i666, align 8, !noalias !12936
  %.sroa.5.0..sroa_idx.i.i667 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i667, align 8, !noalias !12936
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i668 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i668, align 8, !noalias !12936
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i669 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.aje, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i669, align 8, !noalias !12936
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12981
  %i.aji = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12981 ; 4 uses
  %i.ajj = icmp eq ptr %i.aji, null
  br i1 %i.ajj, label %bb.on, label %bb.oq, !prof !11

bb.on:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i676 unwind label %bb.oo, !noalias !12936

.noexc.i.i676:                                    ; preds = %bb.on
  unreachable

bb.oo:                                            ; preds = %bb.on
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #37
          to label %.body11.i660 unwind label %bb.op, !noalias !12936

bb.op:                                            ; preds = %bb.oo
  %i.ajl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12936
  unreachable

bb.oq:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aji, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !12936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12936
  store ptr %i.aji, ptr %i.x, align 8, !alias.scope !12935, !noalias !12982
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.i.i664, ptr %i.ajm, align 8, !alias.scope !12935, !noalias !12982
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ajf, ptr %i.ajn, align 8, !alias.scope !12935, !noalias !12982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12934
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.or unwind label %bb.pi, !noalias !12934

bb.or:                                            ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !12934
  call void @llvm.experimental.noalias.scope.decl(metadata !12983)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8, !alias.scope !12983, !noalias !12984, !noundef !10
  %i.ajq = ptrtoint ptr %i.ajp to i64
  %i.ajr = and i64 %i.ajq, 7
  %i.ajs = icmp eq i64 %i.ajr, 0
  br i1 %i.ajs, label %bb.ow, label %.invoke.i.i670, !prof !15

bb.os:                                            ; preds = %.invoke.i.i670
  %i.ajt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aju = atomicrmw sub ptr %i.ajw, i64 1 release, align 8, !noalias !12985
  %i.ajv = icmp eq i64 %i.aju, 1
  br i1 %i.ajv, label %bb.ot, label %bb.pe

bb.ot:                                            ; preds = %bb.os
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.pe unwind label %bb.ou, !noalias !12984

.invoke.i.i670:                                   ; preds = %bb.or
  %i.ajw = load ptr, ptr %i.u, align 8, !alias.scope !12983, !noalias !12984, !nonnull !10, !noundef !10 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 32
  %i.ajy = load ptr, ptr %i.ajx, align 8, !noalias !12986, !noundef !10
  %.not.i.i671 = icmp eq ptr %i.ajy, null         ; 3 uses
  %.2.i.i672 = select i1 %.not.i.i671, ptr @435, ptr @437
  %.1.i.i673 = select i1 %.not.i.i671, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i674 = select i1 %.not.i.i671, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i674, ptr noundef nonnull %.1.i.i673, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i672) #36
          to label %.cont.i.i675 unwind label %bb.os, !noalias !12986

.cont.i.i675:                                     ; preds = %.invoke.i.i670
  unreachable

bb.ou:                                            ; preds = %bb.ot
  %i.ajz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12984
  unreachable

bb.ov:                                            ; preds = %bb.ow
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i660

bb.ow:                                            ; preds = %bb.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !12934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12934
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.t)
          to label %bb.ox unwind label %bb.ov, !noalias !12934

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.experimental.noalias.scope.decl(metadata !12987)
  call void @llvm.experimental.noalias.scope.decl(metadata !12988)
  %i.akb = load i8, ptr %i.s, align 8, !range !23, !alias.scope !12988, !noalias !12989, !noundef !10
  %i.akc = icmp eq i8 %i.akb, -1
  br i1 %i.akc, label %bb.oy, label %bb.pc, !prof !11

bb.oy:                                            ; preds = %bb.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12990
  %i.akd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.akd, i64 32, i1 false), !noalias !12989
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.pa unwind label %bb.oz, !noalias !12990

bb.oz:                                            ; preds = %bb.oy
  %i.ake = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r) #37
          to label %.body11.i660 unwind label %bb.pb, !noalias !12990

bb.pa:                                            ; preds = %bb.oy
  unreachable

bb.pb:                                            ; preds = %bb.oz
  %i.akf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12990
  unreachable

bb.pc:                                            ; preds = %bb.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.s, i64 96, i1 false), !alias.scope !12991, !noalias !12992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12934
  %i.akg = load i64, ptr %i.y, align 8, !range !14, !alias.scope !12993, !noalias !12934, !noundef !10
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %bb.pk, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.pk unwind label %.body356.thread970

bb.pe:                                            ; preds = %bb.ot, %bb.os
  call void @llvm.experimental.noalias.scope.decl(metadata !12994)
  %i.aki = load ptr, ptr %i.w, align 8, !alias.scope !12994, !noalias !12934, !noundef !10 ; 2 uses
  %i.akj = icmp eq ptr %i.aki, null
  br i1 %i.akj, label %.body11.i660, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.akk = atomicrmw sub ptr %i.aki, i64 1 release, align 8, !noalias !12995
  %i.akl = icmp eq i64 %i.akk, 1
  br i1 %i.akl, label %bb.pg, label %.body11.i660

bb.pg:                                            ; preds = %bb.pf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body11.i660 unwind label %bb.ph, !noalias !12934

bb.ph:                                            ; preds = %bb.pj, %bb.pg, %bb.ni
  %i.akm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12934
  unreachable

bb.pi:                                            ; preds = %bb.oq
  %i.akn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ako = atomicrmw sub ptr %i.aji, i64 1 release, align 8, !noalias !12996
  %i.akp = icmp eq i64 %i.ako, 1
  br i1 %i.akp, label %bb.pj, label %.body11.i660

bb.pj:                                            ; preds = %bb.pi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body11.i660 unwind label %bb.ph, !noalias !12934

bb.pk:                                            ; preds = %bb.pc, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i64 1, ptr %i.ce, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 1, ptr %i.akq, align 8
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.akr, ptr noundef nonnull align 8 dereferenceable(96) %i.de, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12997
  %i.aks = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !12997 ; 3 uses
  %i.akt = icmp eq ptr %i.aks, null
  br i1 %i.akt, label %bb.pl, label %bb.po, !prof !11

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc703 unwind label %bb.pm

.noexc703:                                        ; preds = %bb.pl
  unreachable

bb.pm:                                            ; preds = %bb.pl
  %i.aku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.akr)
          to label %.body356.thread unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.po:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aks, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akx = load ptr, ptr %i.akw, align 8, !noundef !10 ; 3 uses
  %.not333 = icmp eq ptr %i.akx, null
  br i1 %.not333, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.aky = atomicrmw add ptr %i.akx, i64 1 monotonic, align 8
  %i.akz = icmp slt i64 %i.aky, 0
  br i1 %i.akz, label %bb.pt, label %bb.ps

bb.pq:                                            ; preds = %bb.po
  store ptr null, ptr %i.dc, align 8
  br label %bb.pr

bb.pr:                                            ; preds = %bb.ps, %bb.pq
  %i.ala = load ptr, ptr %i.dg, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.ala, i32 noundef %i.gu, ptr noundef nonnull %i.aks, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @289, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.qe

bb.ps:                                            ; preds = %bb.pp
  %i.alb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.alc = load ptr, ptr %i.alb, align 8, !noundef !10
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.akx, ptr %i.dc, align 8
  %.sroa.0276.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.alc, ptr %.sroa.0276.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0276.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.alf = load <2 x i64>, ptr %i.ald, align 8
  store <2 x i64> %i.alf, ptr %.sroa.0276.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0276.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.alg = load <2 x i64>, ptr %i.ale, align 8
  store <2 x i64> %i.alg, ptr %.sroa.0276.sroa.5.0..sroa_idx, align 8
  br label %bb.pr

end_hunk_11
begin_hunk_12_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  br i1 %i.anv, label %.body.i.i.i.i757, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.anw = atomicrmw sub ptr %i.anu, i64 1 release, align 8, !noalias !13048
  %i.anx = icmp eq i64 %i.anw, 1
  br i1 %i.anx, label %bb.rb, label %.body.i.i.i.i757

bb.rb:                                            ; preds = %bb.ra
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ant)
          to label %.body.i.i.i.i757 unwind label %bb.rk, !noalias !13042

bb.rc:                                            ; preds = %bb.qy
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.rd:                                            ; preds = %bb.qy
  %i.anz = extractvalue { i64, double } %i.ans, 0
  %i.aoa = extractvalue { i64, double } %i.ans, 1
  %i.aob = trunc nuw i64 %i.anz to i1
  br i1 %i.aob, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.aoc = icmp samesign ult i64 %.sroa.7.0.copyload.i.i755, 1152921504606846976
  call void @llvm.assume(i1 %i.aoc)
  %i.aod = load i64, ptr %i.b, align 8, !range !13, !alias.scope !13049, !noalias !13050, !noundef !10
  %i.aoe = icmp eq i64 %.sroa.7.0.copyload.i.i755, %i.aod
  br i1 %i.aoe, label %bb.rj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i763

bb.rf:                                            ; preds = %bb.rd
  call void @llvm.experimental.noalias.scope.decl(metadata !13051)
  call void @llvm.experimental.noalias.scope.decl(metadata !13052)
  call void @llvm.experimental.noalias.scope.decl(metadata !13053)
  %i.aof = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13054)
  %i.aog = load ptr, ptr %i.aof, align 8, !alias.scope !13055, !noalias !13042, !noundef !10 ; 2 uses
  %i.aoh = icmp eq ptr %i.aog, null
  br i1 %i.aoh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.aoi = atomicrmw sub ptr %i.aog, i64 1 release, align 8, !noalias !13056
  %i.aoj = icmp eq i64 %i.aoi, 1
  br i1 %i.aoj, label %bb.rh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i

bb.rh:                                            ; preds = %bb.rg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aof)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i unwind label %bb.rl, !noalias !13027

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i763: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i766, %bb.re
  %i.aok = phi ptr [ %.pre.i.i.i.i767, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i766 ], [ %i.anr, %bb.re ] ; 2 uses
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %.sroa.7.0.copyload.i.i755
  store double %i.aoa, ptr %i.aol, align 8, !noalias !13057
  %i.aom = add nuw nsw i64 %.sroa.7.0.copyload.i.i755, 1 ; 2 uses
  store i64 %i.aom, ptr %.sroa.6.0..sroa_idx.i.i.i.i754, align 8, !alias.scope !13049, !noalias !13050
  br label %bb.qy

bb.ri:                                            ; preds = %bb.rj
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.rj:                                            ; preds = %bb.re
  %.val6.i.i.i.i.i.i764 = load i64, ptr %i.anp, align 8, !alias.scope !13058, !noalias !13042, !noundef !10
  %.val.i.i.i.i.i.i765 = load i64, ptr %i.anq, align 8, !alias.scope !13058, !noalias !13042, !noundef !10
  %i.aoo = sub i64 %.val6.i.i.i.i.i.i764, %.val.i.i.i.i.i.i765
  %i.aop = call i64 @llvm.uadd.sat.i64(i64 %i.aoo, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.7.0.copyload.i.i755, i64 noundef %i.aop, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i766 unwind label %bb.ri, !noalias !13050

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i766: ; preds = %bb.rj
  %.pre.i.i.i.i767 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i753, align 8, !alias.scope !13049, !noalias !13050
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i763

bb.rk:                                            ; preds = %bb.rb
  %i.aoq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13042
  unreachable

bb.rl:                                            ; preds = %bb.rh
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i757

.body.i.i.i.i757:                                 ; preds = %bb.rl, %bb.rb, %bb.ra, %bb.qz
  %eh.lpad-body.i.i.i.i758 = phi { ptr, i32 } [ %i.aor, %bb.rl ], [ %.pn.i.i.i.i.i.i756, %bb.rb ], [ %.pn.i.i.i.i.i.i756, %bb.ra ], [ %.pn.i.i.i.i.i.i756, %bb.qz ] ; 2 uses
  %.val.i.i.i.i759 = load i64, ptr %i.b, align 8, !noalias !13027 ; 2 uses
  %i.aos = icmp eq i64 %.val.i.i.i.i759, 0
  br i1 %i.aos, label %.body11.i731, label %bb.rm

bb.rm:                                            ; preds = %.body.i.i.i.i757
  %.val7.i.i.i.i760 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i753, align 8, !noalias !13027, !nonnull !10, !noundef !10
  %i.aot = shl nuw i64 %.val.i.i.i.i759, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i760, i64 noundef %i.aot, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !13027
  br label %.body11.i731

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i: ; preds = %bb.rh, %bb.rg, %bb.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13027
  %.sroa.0.0.copyload.i.i761 = load i64, ptr %i.b, align 8, !noalias !13059
  %.sroa.5.0.copyload.i.i762 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i753, align 8, !noalias !13059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13027
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i

bb.rn:                                            ; preds = %bb.rq
  %i.aou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13028
  unreachable

bb.ro:                                            ; preds = %bb.qt, %bb.qo
  %.pn.ph.i.i.i.i730 = phi { ptr, i32 } [ %i.ana, %bb.qo ], [ %i.ani, %bb.qt ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13060)
  call void @llvm.experimental.noalias.scope.decl(metadata !13061)
  call void @llvm.experimental.noalias.scope.decl(metadata !13062)
  call void @llvm.experimental.noalias.scope.decl(metadata !13063)
  %i.aov = load ptr, ptr %.sroa.0862.sroa.5.0..sroa_idx, align 8, !alias.scope !13064, !noalias !13028, !noundef !10 ; 2 uses
  %i.aow = icmp eq ptr %i.aov, null
  br i1 %i.aow, label %.body11.i731, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.aox = atomicrmw sub ptr %i.aov, i64 1 release, align 8, !noalias !13065
  %i.aoy = icmp eq i64 %i.aox, 1
  br i1 %i.aoy, label %bb.rq, label %.body11.i731

bb.rq:                                            ; preds = %bb.rp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0862.sroa.5.0..sroa_idx)
          to label %.body11.i731 unwind label %bb.rn, !noalias !13028

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i, %bb.qs, %bb.qr, %bb.qq
  %.sroa.7.0.i.i734 = phi i64 [ %.sroa.7.0.copyload.i.i755, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ 0, %bb.qq ], [ 0, %bb.qr ], [ 0, %bb.qs ] ; 2 uses
  %.sroa.5.0.i.i735 = phi ptr [ %.sroa.5.0.copyload.i.i762, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.qq ], [ inttoptr (i64 8 to ptr), %bb.qr ], [ inttoptr (i64 8 to ptr), %bb.qs ] ; 3 uses
  %.sroa.0.0.i.i736 = phi i64 [ %.sroa.0.0.copyload.i.i761, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ 0, %bb.qq ], [ 0, %bb.qr ], [ 0, %bb.qs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13021
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i735) ]
  %i.aoz = icmp samesign ult i64 %.sroa.7.0.i.i734, 1152921504606846976
  call void @llvm.assume(i1 %i.aoz)
  %i.apa = icmp samesign ult i64 %.sroa.0.0.i.i736, 1152921504606846976
  %i.apb = shl nuw nsw i64 %.sroa.0.0.i.i736, 3
  %i.apc = shl nuw nsw i64 %.sroa.7.0.i.i734, 3   ; 2 uses
  call void @llvm.assume(i1 %i.apa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13021
  store i64 1, ptr %i.c, align 8, !noalias !13021
  %i.apd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.apd, align 8, !noalias !13021
  %i.ape = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.0.i.i735, ptr %i.ape, align 8, !noalias !13021
  %.sroa.4.0..sroa_idx.i.i737 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.apc, ptr %.sroa.4.0..sroa_idx.i.i737, align 8, !noalias !13021
  %.sroa.5.0..sroa_idx.i.i738 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i738, align 8, !noalias !13021
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i739 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i739, align 8, !noalias !13021
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i740 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.apb, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i740, align 8, !noalias !13021
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13066
  %i.apf = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !13066 ; 4 uses
  %i.apg = icmp eq ptr %i.apf, null
  br i1 %i.apg, label %bb.rr, label %bb.ru, !prof !11

bb.rr:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i747 unwind label %bb.rs, !noalias !13021

.noexc.i.i747:                                    ; preds = %bb.rr
  unreachable

bb.rs:                                            ; preds = %bb.rr
  %i.aph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #37
          to label %.body11.i731 unwind label %bb.rt, !noalias !13021

bb.rt:                                            ; preds = %bb.rs
  %i.api = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13021
  unreachable

bb.ru:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.apf, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !13021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13021
  store ptr %i.apf, ptr %i.k, align 8, !alias.scope !13020, !noalias !13067
  %i.apj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.i.i735, ptr %i.apj, align 8, !alias.scope !13020, !noalias !13067
  %i.apk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.apc, ptr %i.apk, align 8, !alias.scope !13020, !noalias !13067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13019
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.rv unwind label %bb.sm, !noalias !13019

bb.rv:                                            ; preds = %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !13019
  call void @llvm.experimental.noalias.scope.decl(metadata !13068)
  %i.apl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8, !alias.scope !13068, !noalias !13069, !noundef !10
  %i.apn = ptrtoint ptr %i.apm to i64
  %i.apo = and i64 %i.apn, 7
  %i.app = icmp eq i64 %i.apo, 0
  br i1 %i.app, label %bb.sa, label %.invoke.i.i741, !prof !15

bb.rw:                                            ; preds = %.invoke.i.i741
  %i.apq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.apr = atomicrmw sub ptr %i.apt, i64 1 release, align 8, !noalias !13070
  %i.aps = icmp eq i64 %i.apr, 1
  br i1 %i.aps, label %bb.rx, label %bb.si

bb.rx:                                            ; preds = %bb.rw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.si unwind label %bb.ry, !noalias !13069

.invoke.i.i741:                                   ; preds = %bb.rv
  %i.apt = load ptr, ptr %i.h, align 8, !alias.scope !13068, !noalias !13069, !nonnull !10, !noundef !10 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 32
  %i.apv = load ptr, ptr %i.apu, align 8, !noalias !13071, !noundef !10
  %.not.i.i742 = icmp eq ptr %i.apv, null         ; 3 uses
  %.2.i.i743 = select i1 %.not.i.i742, ptr @435, ptr @437
  %.1.i.i744 = select i1 %.not.i.i742, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i745 = select i1 %.not.i.i742, ptr @434, ptr @436
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i745, ptr noundef nonnull %.1.i.i744, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i743) #36
          to label %.cont.i.i746 unwind label %bb.rw, !noalias !13071

.cont.i.i746:                                     ; preds = %.invoke.i.i741
  unreachable

bb.ry:                                            ; preds = %bb.rx
  %i.apw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13069
  unreachable

bb.rz:                                            ; preds = %bb.sa
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i731

bb.sa:                                            ; preds = %bb.rv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !13019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !13019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13019
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.sb unwind label %bb.rz, !noalias !13019

bb.sb:                                            ; preds = %bb.sa
  call void @llvm.experimental.noalias.scope.decl(metadata !13072)
  call void @llvm.experimental.noalias.scope.decl(metadata !13073)
  %i.apy = load i8, ptr %i.f, align 8, !range !23, !alias.scope !13073, !noalias !13074, !noundef !10
  %i.apz = icmp eq i8 %i.apy, -1
  br i1 %i.apz, label %bb.sc, label %bb.sg, !prof !11

bb.sc:                                            ; preds = %bb.sb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13075
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aqa, i64 32, i1 false), !noalias !13074
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
          to label %bb.se unwind label %bb.sd, !noalias !13075

bb.sd:                                            ; preds = %bb.sc
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #37
          to label %.body11.i731 unwind label %bb.sf, !noalias !13075

bb.se:                                            ; preds = %bb.sc
  unreachable

bb.sf:                                            ; preds = %bb.sd
  %i.aqc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13075
  unreachable

bb.sg:                                            ; preds = %bb.sb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.f, i64 96, i1 false), !alias.scope !13076, !noalias !13077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13019
  %i.aqd = load i64, ptr %i.l, align 8, !range !14, !alias.scope !13078, !noalias !13019, !noundef !10
  %i.aqe = icmp eq i64 %i.aqd, 0
  br i1 %i.aqe, label %bb.so, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.so unwind label %.body354.thread984

bb.si:                                            ; preds = %bb.rx, %bb.rw
  call void @llvm.experimental.noalias.scope.decl(metadata !13079)
  %i.aqf = load ptr, ptr %i.j, align 8, !alias.scope !13079, !noalias !13019, !noundef !10 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqf, null
  br i1 %i.aqg, label %.body11.i731, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.aqh = atomicrmw sub ptr %i.aqf, i64 1 release, align 8, !noalias !13080
  %i.aqi = icmp eq i64 %i.aqh, 1
  br i1 %i.aqi, label %bb.sk, label %.body11.i731

bb.sk:                                            ; preds = %bb.sj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body11.i731 unwind label %bb.sl, !noalias !13019

bb.sl:                                            ; preds = %bb.sn, %bb.sk, %bb.qm
  %i.aqj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13019
  unreachable

bb.sm:                                            ; preds = %bb.ru
  %i.aqk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aql = atomicrmw sub ptr %i.apf, i64 1 release, align 8, !noalias !13081
  %i.aqm = icmp eq i64 %i.aql, 1
  br i1 %i.aqm, label %bb.sn, label %.body11.i731

bb.sn:                                            ; preds = %bb.sm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body11.i731 unwind label %bb.sl, !noalias !13019

bb.so:                                            ; preds = %bb.sg, %bb.sh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i64 1, ptr %i.cb, align 8
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 1, ptr %i.aqn, align 8
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aqo, ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13082
  %i.aqp = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #39, !noalias !13082 ; 3 uses
  %i.aqq = icmp eq ptr %i.aqp, null
  br i1 %i.aqq, label %bb.sp, label %bb.ss, !prof !11

bb.sp:                                            ; preds = %bb.so
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #36
          to label %.noexc774 unwind label %bb.sq

.noexc774:                                        ; preds = %bb.sp
  unreachable

bb.sq:                                            ; preds = %bb.sp
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aqo)
          to label %.body354.thread unwind label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.aqs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ss:                                            ; preds = %bb.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aqp, ptr noundef nonnull align 8 dereferenceable(112) %i.cb, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aqu = load ptr, ptr %i.aqt, align 8, !noundef !10 ; 3 uses
  %.not331 = icmp eq ptr %i.aqu, null
  br i1 %.not331, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.aqv = atomicrmw add ptr %i.aqu, i64 1 monotonic, align 8
  %i.aqw = icmp slt i64 %i.aqv, 0
  br i1 %i.aqw, label %bb.sx, label %bb.sw

bb.su:                                            ; preds = %bb.ss
  store ptr null, ptr %i.cx, align 8
  br label %bb.sv

bb.sv:                                            ; preds = %bb.sw, %bb.su
  %i.aqx = load ptr, ptr %i.db, align 8, !nonnull !10, !noundef !10
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.aqx, i32 noundef %i.hh, ptr noundef nonnull %i.aqp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @289, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.qe

bb.sw:                                            ; preds = %bb.st
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aqz = load ptr, ptr %i.aqy, align 8, !noundef !10
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.aqu, ptr %i.cx, align 8
  %.sroa.0306.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.aqz, ptr %.sroa.0306.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0306.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.arc = load <2 x i64>, ptr %i.ara, align 8
  store <2 x i64> %i.arc, ptr %.sroa.0306.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0306.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.ard = load <2 x i64>, ptr %i.arb, align 8
  store <2 x i64> %i.ard, ptr %.sroa.0306.sroa.5.0..sroa_idx, align 8
  br label %bb.sv

end_hunk_12
