Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE6finishCs9KQ7US1M400_11lance_table:bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o) #81
          to label %bb.as unwind label %bb.f, !noalias !50772

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50772
  unreachable

.body:                                            ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !50772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50772
  store ptr %i.ag, ptr %i.p, align 8, !alias.scope !50771, !noalias !50774
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.al, align 8, !alias.scope !50771, !noalias !50774
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ad, ptr %i.am, align 8, !alias.scope !50771, !noalias !50774
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !68 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !68 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !50775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !50775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50775
  store ptr %i.n, ptr %i.f, align 8, !noalias !50776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 5, i64 24, i1 false), !noalias !50777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 5, i64 24, i1 false), !noalias !50777
  %i.at = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81
          to label %bb.k unwind label %bb.m, !noalias !50778

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE13is_compatibleCs9KQ7US1M400_11lance_table.exit.i.i unwind label %bb.l, !noalias !50778

bb.k:                                             ; preds = %bb.l, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.au, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81
          to label %.body.i unwind label %bb.m, !noalias !50778

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50778
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE13is_compatibleCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50777
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %.noexc.i17 unwind label %bb.r, !noalias !50775

.noexc.i17:                                       ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE13is_compatibleCs9KQ7US1M400_11lance_table.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50777
  br i1 %i.at, label %bb.s, label %bb.n, !prof !80

bb.n:                                             ; preds = %.noexc.i17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 5, i64 24, i1 false), !noalias !50776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50776
  store ptr %i.e, ptr %i.d, align 8, !noalias !50776
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !50776
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.ax, align 8, !noalias !50776
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !50776
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1143, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1144) #80
          to label %bb.p unwind label %bb.o, !noalias !50775

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
          to label %.body.i unwind label %bb.q, !noalias !50775

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50775
  unreachable

bb.r:                                             ; preds = %bb.ae, %bb.t, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE13is_compatibleCs9KQ7US1M400_11lance_table.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %.body.i.i, %bb.r, %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %.pn.i.i.i, %bb.k ], [ %i.ba, %bb.r ], [ %eh.lpad-body.i.i, %bb.y ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.k) #81
          to label %.body9.i unwind label %bb.ao

bb.s:                                             ; preds = %.noexc.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !50775
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !50775, !noundef !68 ; 3 uses
  store i64 %i.bc, ptr %i.i, align 8, !noalias !50775
  %i.bd = icmp ult i64 %i.bc, 384307168202282326
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 1
  br i1 %i.be, label %bb.u, label %bb.t, !prof !80

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @156, ptr noundef nonnull @2005, ptr nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2006) #80
          to label %bb.ag unwind label %bb.r, !noalias !50775

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !50775
  store i64 0, ptr %i.bb, align 8, !noalias !50775
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !50775, !nonnull !68, !noundef !68
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !50775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !50779)
  %i.bh = shl nuw i64 %i.ar, 3
  %i.bi = icmp ugt i64 %i.ar, 2305843009213693951
  br i1 %i.bi, label %.invoke.i.i, label %bb.v, !prof !71

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.bj, label %.invoke.i.i, label %bb.w, !prof !71

bb.w:                                             ; preds = %bb.v
  %i.bk = shl nuw i64 %i.ap, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50780
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i64 noundef %i.bh, i64 noundef %i.bk)
          to label %bb.z unwind label %bb.x, !noalias !50781

.invoke.i.i:                                      ; preds = %bb.v, %bb.u
  %i.bl = phi ptr [ @1129, %bb.u ], [ @1126, %bb.v ]
  %i.bm = phi ptr [ @1130, %bb.u ], [ @1128, %bb.v ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm) #80
          to label %.cont.i.i unwind label %bb.x, !noalias !50780

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.x:                                             ; preds = %.invoke.i.i, %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.aa, %bb.x
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bn, %bb.x ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50782)
  call void @llvm.experimental.noalias.scope.decl(metadata !50783)
  call void @llvm.experimental.noalias.scope.decl(metadata !50784)
  %i.bo = load ptr, ptr %i.h, align 8, !alias.scope !50785, !noalias !50781, !nonnull !68, !noundef !68
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !50786
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.y, label %.body.i

bb.y:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !50781

bb.z:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !50787)
  call void @llvm.experimental.noalias.scope.decl(metadata !50788)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !50788, !noalias !50789, !noundef !68
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ad, label %.invoke.i.i.i, !prof !80

bb.aa:                                            ; preds = %.invoke.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !50790
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ab, label %.body.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.ac, !noalias !50791

.invoke.i.i.i:                                    ; preds = %bb.z
  %i.bz = load ptr, ptr %i.a, align 8, !alias.scope !50788, !noalias !50789, !nonnull !68, !noundef !68 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !50792, !noundef !68
  %.not.i.i.i = icmp eq ptr %i.cb, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @1650, ptr @1652
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @1649, ptr @1651
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #80
          to label %.cont.i.i.i unwind label %bb.aa, !noalias !50792

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50791
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !50793, !noalias !50794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50780
  call void @llvm.experimental.noalias.scope.decl(metadata !50795)
  call void @llvm.experimental.noalias.scope.decl(metadata !50796)
  call void @llvm.experimental.noalias.scope.decl(metadata !50797)
  %i.cd = load ptr, ptr %i.h, align 8, !alias.scope !50798, !noalias !50781, !nonnull !68, !noundef !68
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !50799
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ae, label %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.r, !noalias !50775

bb.af:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50781
  unreachable

bb.ag:                                            ; preds = %bb.t
  unreachable

_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !50800
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !50800
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !50800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !50775
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !68, !noundef !68 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !68 ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.co = icmp eq i64 %i.cq, %i.cm
  br i1 %i.co, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i, %bb.ah
  %.sroa.0.0.i.i.i40 = phi i64 [ %i.cq, %bb.ah ], [ 0, %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %i.ck, i64 %.sroa.0.0.i.i.i40
  %i.cq = add i64 %.sroa.0.0.i.i.i40, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(136) %i.cp) #83
          to label %bb.ah unwind label %bb.aj, !noalias !50801, !inline_history !50746

bb.ai:                                            ; preds = %.lr.ph42
  %i.cr = add i64 %.sroa.0.1.i.i.i41, 1           ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.cm
  br i1 %i.cs, label %.body.i8.i, label %.lr.ph42

bb.aj:                                            ; preds = %.lr.ph
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq i64 %i.cq, %i.cm
  br i1 %i.cu, label %.body.i8.i, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.aj, %bb.ai
  %.sroa.0.1.i.i.i41 = phi i64 [ %i.cr, %bb.ai ], [ %i.cq, %bb.aj ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [136 x i8], ptr %i.ck, i64 %.sroa.0.1.i.i.i41
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(136) %i.cv) #84
          to label %bb.ai unwind label %bb.ak, !noalias !50801, !inline_history !50746

bb.ak:                                            ; preds = %.lr.ph42
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50801, !inline_history !50746
  unreachable

.body.i8.i:                                       ; preds = %bb.ai, %bb.aj
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !72, !noundef !68 ; 2 uses
  %i.cx = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cx, label %.body9.i, label %bb.al

bb.al:                                            ; preds = %.body.i8.i
  %i.cy = mul nuw i64 %.val2.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !50801, !inline_history !141
  br label %.body9.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.ah, %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs9KQ7US1M400_11lance_table.exit.i
  %.val.i.i = load i64, ptr %i.k, align 8, !range !72, !noundef !68 ; 2 uses
  %i.cz = icmp eq i64 %.val.i.i, 0
  br i1 %i.cz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9KQ7US1M400_11lance_table.exit.i, label %bb.am

bb.am:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i
  %i.da = mul nuw i64 %.val.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !50801, !inline_history !141
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9KQ7US1M400_11lance_table.exit.i

.body9.i:                                         ; preds = %bb.al, %.body.i8.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ct, %.body.i8.i ], [ %i.ct, %bb.al ] ; 2 uses
  %cond.i = phi i1 [ false, %.body.i ], [ true, %.body.i8.i ], [ true, %bb.al ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.l) #81
          to label %bb.an unwind label %bb.ao, !noalias !50775

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.am, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !50775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !50775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.an:                                            ; preds = %.body9.i
  br i1 %cond.i, label %.thread25, label %bb.ap

bb.ao:                                            ; preds = %.noexc11.i, %bb.ar, %.body9.i, %.body.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !50775
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !50802)
  %i.dc = load ptr, ptr %i.m, align 8, !alias.scope !50802, !noalias !50775, !noundef !68 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.noexc11.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !50803
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ar, label %.noexc11.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc11.i unwind label %bb.ao, !noalias !50775

.noexc11.i:                                       ; preds = %bb.ar, %bb.aq, %bb.ap
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.n) #81
          to label %.thread25 unwind label %bb.ao, !noalias !50775

bb.as:                                            ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(184) %i.r) #81
          to label %.thread unwind label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

.thread25:                                        ; preds = %bb.au, %.thread, %bb.av, %.noexc11.i, %bb.an
  %.pn23 = phi { ptr, i32 } [ %.pn.i, %.noexc11.i ], [ %.pn24, %bb.au ], [ %.pn.i, %bb.an ], [ %.pn24, %bb.av ], [ %.pn24, %.thread ]
  resume { ptr, i32 } %.pn23

.thread:                                          ; preds = %.body, %bb.as, %bb.b
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.ak, %.body ], [ %i.ai, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50804)
  %i.dh = load ptr, ptr %i.u, align 8, !alias.scope !50804, !noundef !68 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread25, label %bb.au

bb.au:                                            ; preds = %.thread
  %i.dj = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !50805
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.av, label %.thread25

bb.av:                                            ; preds = %bb.au
  fence acquire
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8Fragment9from_json:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !55906
  br label %bb.ip

bb.io:                                            ; preds = %bb.il
  %i.uf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !55906
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ig, %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit: ; preds = %.loopexit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs9KQ7US1M400_11lance_table.exit24.sink.split.i
  %.sroa.10.3 = phi ptr [ %.sroa.10.1.i.i.i, %.loopexit.i ], [ %.sroa.10.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs9KQ7US1M400_11lance_table.exit24.sink.split.i ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.09.1.i.i.i, %.loopexit.i ], [ %.sroa.0.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs9KQ7US1M400_11lance_table.exit24.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !55906
  %i.ug = icmp eq i64 %.sroa.0.3, -1
  br i1 %i.ug, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit.thread, %_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit
  %.sroa.10.315 = phi ptr [ %.sroa.10.1, %_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit.thread ], [ %.sroa.10.3, %_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.315) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXsg_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.uh, ptr noalias noundef nonnull align 8 %.sroa.10.315, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1119)
  store i64 -1, ptr %0, align 8
  br label %bb.ir

bb.iq:                                            ; preds = %_RINvNtCs5QD3CVEMyfH_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEB19_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.16, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store i64 %.sroa.0.3, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.3, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorE12invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18content_unexpected(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE8push_mutBL_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(176) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !68 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !72, !noundef !68
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !68, !noundef !68
  %i.g = getelementptr inbounds nuw [176 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEBH_(ptr noalias noundef align 8 dereferenceable(176) %1) #81
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileE8push_mutBL_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !68 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !72, !noundef !68
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !68, !noundef !68
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileEBH_(ptr noalias noundef align 8 dereferenceable(80) %1) #81
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE8push_mutBL_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !68 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !72, !noundef !68
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !68, !noundef !68
  %i.g = getelementptr inbounds nuw [240 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.g, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEBH_(ptr noalias noundef align 8 dereferenceable(240) %1) #81
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !71

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @1129, %bb.a ], [ @1126, %bb.b ]
  %i.g = phi ptr [ @1130, %bb.a ], [ @1128, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #80
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56198)
  call void @llvm.experimental.noalias.scope.decl(metadata !56199)
  call void @llvm.experimental.noalias.scope.decl(metadata !56200)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !56201, !nonnull !68, !noundef !68
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !56201
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56203)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !56203, !noalias !56202, !noundef !68
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !80

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !56204
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !56202

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !56203, !noalias !56202, !nonnull !68, !noundef !68 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !56205, !noundef !68
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @1650, ptr @1652
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @1649, ptr @1651
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #80
          to label %.cont.i unwind label %bb.g, !noalias !56205

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !56202
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !56205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56208)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !56209, !nonnull !68, !noundef !68
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !56209
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9KQ7US1M400_11lance_table.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE10new_scalarCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 8, i64 24, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76
  %i.c = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #76 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81
          to label %common.resume unwind label %bb.g

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56218
  store i64 1, ptr %i.a, align 8, !noalias !56218
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !56218
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8, !noalias !56218
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !56218
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !56218
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !56218
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 4, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !56218
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !56219
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !56219 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCs9KQ7US1M400_11lance_table.exit, !prof !75

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #80
          to label %.noexc.i unwind label %bb.e, !noalias !56218

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #81
          to label %.body unwind label %bb.f, !noalias !56218

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !56218
  unreachable

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !56218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !alias.scope !56220
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx7, align 8, !alias.scope !56220
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx8, align 8, !alias.scope !56220
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !56220
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !56220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.g:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56257
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !56256, !noalias !56258, !nonnull !68, !noundef !68 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !56257
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !56256, !noalias !56258, !noundef !68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !56256, !noalias !56258, !noundef !68
  store ptr %i.g, ptr %i.b, align 8, !noalias !56257
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !56257
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !56257
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56259)
  %i.p = shl nuw i64 %2, 2
  %i.q = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.q, label %.invoke.i.i, label %bb.c, !prof !71

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !71

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56260
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.p, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e, !noalias !56261

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ @1129, %bb.b ], [ @1126, %bb.c ]
  %i.u = phi ptr [ @1130, %bb.b ], [ @1128, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #80
          to label %.cont.i.i unwind label %bb.e, !noalias !56260

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56262)
  call void @llvm.experimental.noalias.scope.decl(metadata !56263)
  call void @llvm.experimental.noalias.scope.decl(metadata !56264)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !56265, !noalias !56261, !nonnull !68, !noundef !68
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !56266
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !56261

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !56267)
  call void @llvm.experimental.noalias.scope.decl(metadata !56268)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !56268, !noalias !56269, !noundef !68
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %.invoke.i.i.i, !prof !80

bb.h:                                             ; preds = %.invoke.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !56270
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.j, !noalias !56271

.invoke.i.i.i:                                    ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !alias.scope !56268, !noalias !56269, !nonnull !68, !noundef !68 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !56272, !noundef !68
  %.not.i.i.i = icmp eq ptr %i.aj, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @1650, ptr @1652
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @1649, ptr @1651
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #80
          to label %.cont.i.i.i unwind label %bb.h, !noalias !56272

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !56271
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !56273, !noalias !56274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56260
  call void @llvm.experimental.noalias.scope.decl(metadata !56275)
  call void @llvm.experimental.noalias.scope.decl(metadata !56276)
  call void @llvm.experimental.noalias.scope.decl(metadata !56277)
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !56278, !noalias !56261, !nonnull !68, !noundef !68
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !56279
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !56261
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.s, %bb.t, %bb.o, %bb.f, %.body.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i, %bb.f ], [ %i.au, %bb.t ], [ %i.au, %bb.s ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
          to label %bb.w unwind label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56257
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !68
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %2, i64 noundef %3)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.u
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.u ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56280)
  call void @llvm.experimental.noalias.scope.decl(metadata !56281)
  call void @llvm.experimental.noalias.scope.decl(metadata !56282)
  call void @llvm.experimental.noalias.scope.decl(metadata !56283)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !56284, !nonnull !68, !noundef !68
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !56284
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load ptr, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE7try_newCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !noundef !68  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !68 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !68
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %.not12 = icmp eq i64 %i.h, %i.k
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECs9KQ7US1M400_11lance_table.exit18

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
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1142, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECs9KQ7US1M400_11lance_table.exit18: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9KQ7US1M400_11lance_table.exit16, %bb.c
  ret void

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !56325
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9KQ7US1M400_11lance_table.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9KQ7US1M400_11lance_table.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_RNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_14FragReuseIndex19remap_row_ids_array:bb.a
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.gw = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.gx = icmp samesign ult i64 %i.gw, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gx, label %.invoke.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.gw, %bb.x ]
  %i.gy = shl nuw nsw i64 %i.gs, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.gy, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !57800

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.y
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !57812, !noalias !57811
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %bb.v
  %i.gz = phi i64 [ %i.gp, %bb.v ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  %i.ha = load ptr, ptr %i.ax, align 8, !alias.scope !57812, !noalias !57811, !nonnull !68, !noundef !68
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hb, i8 0, i64 %i.gr, i1 false), !noalias !57811
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !57812, !noalias !57811
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  store i64 %i.gl, ptr %i.au, align 8, !alias.scope !57812, !noalias !57811
  %i.hc = load ptr, ptr %i.ax, align 8, !noalias !57811, !nonnull !68, !noundef !68
  %i.hd = trunc i64 %i.gk to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = shl nuw i8 1, %i.he
  %i.hg = lshr i64 %i.gk, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !57811, !noundef !68
  %i.hj = or i8 %i.hi, %i.hf
  store i8 %i.hj, ptr %i.hh, align 1, !noalias !57811
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionyEuNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB1s_14FragReuseIndex19remap_row_ids_array0NCIB2_BV_yuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3p_14PrimitiveArrayNtNtB3t_5types10UInt64TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB5a_8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7A_3VecyE14extend_trustedIB5X_B5W_B3g_EE0E0E0E0B1w_.exit.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %_RNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB7_14FragReuseIndex19remap_row_ids_array0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.hk = load i64, ptr %i.ad, align 8, !noalias !57811, !noundef !68
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.ad, align 8, !noalias !57811
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionyEuNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB1s_14FragReuseIndex19remap_row_ids_array0NCIB2_BV_yuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3p_14PrimitiveArrayNtNtB3t_5types10UInt64TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB5a_8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7A_3VecyE14extend_trustedIB5X_B5W_B3g_EE0E0E0E0B1w_.exit.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.hm = load i64, ptr %i.au, align 8, !alias.scope !57814, !noalias !57811, !noundef !68
  %i.hn = add i64 %i.hm, 1                        ; 3 uses
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = and i64 %i.hn, 7
  %.not.i4.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.hp, 0
  %i.hq = zext i1 %.not.i4.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.ho, %i.hq ; 8 uses
  %i.hr = load i64, ptr %i.av, align 8, !alias.scope !57814, !noalias !57811, !noundef !68 ; 3 uses
  %i.hs = icmp ugt i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hr
  br i1 %i.hs, label %bb.ab, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ht = sub nuw nsw i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hr
  %i.hu = load i64, ptr %i.aw, align 8, !alias.scope !57815, !noalias !57811, !noundef !68 ; 2 uses
  %i.hv = icmp ugt i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hu
  br i1 %i.hv, label %bb.ac, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

bb.ac:                                            ; preds = %bb.ab
  %i.hw = and i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %reass.sub.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.hy = add nuw nsw i64 %reass.sub.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.hz = icmp samesign ult i64 %i.hy, %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hz, label %.invoke.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.hy, %bb.ad ]
  %i.ia = shl nuw nsw i64 %i.hu, 1
  %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ia, i64 %.sroa.4.0.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !57800

.noexc12.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  %.pre.i10.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !57814, !noalias !57811
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i6.i.i.i.i.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.ad, %bb.x
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @925, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #80
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !57800

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i6.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i.i.i.i.i.i.i, %bb.ab
  %i.ib = phi i64 [ %i.hr, %bb.ab ], [ %.pre.i10.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i.i.i.i.i ]
  %i.ic = load ptr, ptr %i.ax, align 8, !alias.scope !57814, !noalias !57811, !nonnull !68, !noundef !68
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ib
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.id, i8 0, i64 %i.ht, i1 false), !noalias !57811
  store i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !57814, !noalias !57811
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  store i64 %i.hn, ptr %i.au, align 8, !alias.scope !57814, !noalias !57811
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionyEuNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB1s_14FragReuseIndex19remap_row_ids_array0NCIB2_BV_yuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3p_14PrimitiveArrayNtNtB3t_5types10UInt64TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB5a_8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7A_3VecyE14extend_trustedIB5X_B5W_B3g_EE0E0E0E0B1w_.exit.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #80
          to label %.noexc14.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !57800

.noexc14.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.af
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionyEuNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB1s_14FragReuseIndex19remap_row_ids_array0NCIB2_BV_yuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3p_14PrimitiveArrayNtNtB3t_5types10UInt64TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB5a_8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7A_3VecyE14extend_trustedIB5X_B5W_B3g_EE0E0E0E0B1w_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i8.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.sroa.3.0.i8.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ie, align 8, !noalias !57816
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_3ops5range5RangejENCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB2L_14FragReuseIndex19remap_row_ids_array0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4y_14PrimitiveArrayNtNtB4C_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionyEE9from_iterB25_E0EE9from_iterB2P_.exit.i.i, label %bb.m

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ae, %bb.y, %_RNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB7_14FragReuseIndex19remap_row_ids_array0Bb_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.af, %.invoke.i.i.i.i, %bb.p, %bb.o
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ]
  %i.if = shl nuw i64 %.sroa.4.0.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !57817
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_3ops5range5RangejENCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB2L_14FragReuseIndex19remap_row_ids_array0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4y_14PrimitiveArrayNtNtB4C_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionyEE9from_iterB25_E0EE9from_iterB2P_.exit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionyEuNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB1s_14FragReuseIndex19remap_row_ids_array0NCIB2_BV_yuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3p_14PrimitiveArrayNtNtB3t_5types10UInt64TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB5a_8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7A_3VecyE14extend_trustedIB5X_B5W_B3g_EE0E0E0E0B1w_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.ig = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp samesign ult i64 %.sroa.4.0.i.i.i.i.i, 1152921504606846976
  %i.ii = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i, 3
  %i.ij = and i64 %i.ab, 9223372036854775800      ; 2 uses
  call void @llvm.assume(i1 %i.ih)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57818
  store i64 1, ptr %i.d, align 8, !noalias !57818
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ik, align 8, !noalias !57818
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.il, align 8, !noalias !57818
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ij, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !57818
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !57818
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !57818
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.ii, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !57818
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !57819
  %i.im = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !57819 ; 4 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.ag, label %bb.aj, !prof !75

bb.ag:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_3ops5range5RangejENCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB2L_14FragReuseIndex19remap_row_ids_array0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4y_14PrimitiveArrayNtNtB4C_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionyEE9from_iterB25_E0EE9from_iterB2P_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #80
          to label %.noexc.i.i unwind label %bb.ah, !noalias !57818

.noexc.i.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #81
          to label %.body11.i unwind label %bb.ai, !noalias !57818

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !57818
  unreachable

bb.aj:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_3ops5range5RangejENCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB2L_14FragReuseIndex19remap_row_ids_array0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4y_14PrimitiveArrayNtNtB4C_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionyEE9from_iterB25_E0EE9from_iterB2P_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.im, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !57818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57818
  store ptr %i.im, ptr %i.k, align 8, !alias.scope !57794, !noalias !57820
  %i.iq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.iq, align 8, !alias.scope !57794, !noalias !57820
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ij, ptr %i.ir, align 8, !alias.scope !57794, !noalias !57820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !57793
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.ak unwind label %bb.bb, !noalias !57793

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !57793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !57793
  call void @llvm.experimental.noalias.scope.decl(metadata !57821)
  %i.is = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !57821, !noalias !57822, !noundef !68
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = and i64 %i.iu, 7
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.ap, label %.invoke.i.i, !prof !80

bb.al:                                            ; preds = %.invoke.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.iy = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !57823
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ax unwind label %bb.an, !noalias !57822

.invoke.i.i:                                      ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.h, align 8, !alias.scope !57821, !noalias !57822, !nonnull !68, !noundef !68 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !57824, !noundef !68
  %.not.i.i = icmp eq ptr %i.jc, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @1650, ptr @1652
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @1649, ptr @1651
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #80
          to label %.cont.i.i unwind label %bb.al, !noalias !57824

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !57822
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !57793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !57793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !57793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !57793
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE7try_newCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.aq unwind label %bb.ao, !noalias !57793

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !57825)
  call void @llvm.experimental.noalias.scope.decl(metadata !57826)
  %i.jf = load i8, ptr %i.f, align 8, !range !195, !alias.scope !57826, !noalias !57827, !noundef !68
  %i.jg = icmp eq i8 %i.jf, -1
  br i1 %i.jg, label %bb.ar, label %bb.av, !prof !71

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !57828
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.jh, i64 32, i1 false), !noalias !57827
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @908, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @912, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #80
          to label %bb.at unwind label %bb.as, !noalias !57828

bb.as:                                            ; preds = %bb.ar
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #81
          to label %.body11.i unwind label %bb.au, !noalias !57828

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !57828
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.f, i64 96, i1 false), !alias.scope !57829, !noalias !57830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !57793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !57793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !57793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !57793
  %i.jk = load i64, ptr %i.l, align 8, !range !117, !alias.scope !57831, !noalias !57793, !noundef !68
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.be, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.be unwind label %bb.b

bb.ax:                                            ; preds = %bb.am, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !57832)
  %i.jm = load ptr, ptr %i.j, align 8, !alias.scope !57832, !noalias !57793, !noundef !68 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %.body11.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jo = atomicrmw sub ptr %i.jm, i64 1 release, align 8, !noalias !57833
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.az, label %.body11.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body11.i unwind label %bb.ba, !noalias !57793

bb.ba:                                            ; preds = %bb.bc, %bb.az, %bb.h
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !57793
  unreachable

bb.bb:                                            ; preds = %bb.aj
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = atomicrmw sub ptr %i.im, i64 1 release, align 8, !noalias !57834
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.bc, label %.body11.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body11.i unwind label %bb.ba, !noalias !57793

bb.bd:                                            ; preds = %bb.f
  unreachable

bb.be:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !57793
  call void @llvm.experimental.noalias.scope.decl(metadata !57835)
  call void @llvm.experimental.noalias.scope.decl(metadata !57836)
  %i.ju = load ptr, ptr %i.n, align 8, !alias.scope !57837, !nonnull !68, !noundef !68
  %i.jv = atomicrmw sub ptr %i.ju, i64 1 release, align 8, !noalias !57837
  %i.jw = icmp eq i64 %i.jv, 1
  br i1 %i.jw, label %bb.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit3

bb.bf:                                            ; preds = %bb.be
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit3

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit3: ; preds = %bb.be, %bb.bf
  ret void

bb.bg:                                            ; preds = %bb.c
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_14FragReuseIndex21remap_fragment_bitmap(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !68, !noundef !68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !68 ; 2 uses
  %.idx = shl nuw nsw i64 %i.k, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

.loopexit49:                                      ; preds = %.backedge, %bb.b
  %i.u = icmp eq ptr %i.v, %i.l
  br i1 %i.u, label %._crit_edge61, label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %.loopexit49
  %.sroa.0.058 = phi ptr [ %i.i, %.lr.ph60 ], [ %i.v, %.loopexit49 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletes:bb.a
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store ptr %i.av, ptr %.sroa.438.0..sroa_idx.i, align 8, !alias.scope !64175, !noalias !64176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !64177
  %i.kv = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEIB2f_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB2W_6rowidsNtB4d_13RowIdSequence6selectB1q_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5b_14PrimitiveArrayNtNtB5f_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratoryE9from_iterBW_E0ENtNtB6W_8iterator8Iterator4nextB2W_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.an)
          to label %.noexc9.i unwind label %bb.dd, !noalias !64173 ; 2 uses

.body11.i:                                        ; preds = %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.dy, %bb.dt, %bb.dp, %bb.di, %bb.dg, %bb.df, %bb.dd
  %.pn.pn.i = phi { ptr, i32 } [ %i.me, %bb.di ], [ %i.nh, %bb.ec ], [ %i.ky, %bb.dd ], [ %lpad.loopexit.i.i.i.i, %bb.df ], [ %lpad.phi15.i.i.i.i, %bb.dg ], [ %i.nh, %bb.ed ], [ %i.my, %bb.dt ], [ %i.mu, %bb.dp ], [ %i.mn, %bb.ea ], [ %i.mn, %bb.dy ], [ %i.mn, %bb.dz ] ; 2 uses
  %i.kw = load i64, ptr %i.av, align 8, !range !117, !alias.scope !64178, !noalias !64173, !noundef !68
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %.body347, label %bb.dc

bb.dc:                                            ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %.body347 unwind label %bb.eb, !noalias !64173

bb.dd:                                            ; preds = %bb.de, %bb.db
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.noexc9.i:                                        ; preds = %bb.db
  %i.kz = extractvalue { i64, i64 } %i.kv, 0
  %i.la = extractvalue { i64, i64 } %i.kv, 1
  %i.lb = trunc nuw i64 %i.kz to i1
  br i1 %i.lb, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_7flatten7FlatMapINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEIB3r_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB49_6rowidsNtB5q_13RowIdSequence6selectB2A_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6o_14PrimitiveArrayNtNtB6s_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratoryE9from_iterB25_E0EE9from_iterB49_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64179
  %i.lc = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #76, !noalias !64179 ; 6 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.de, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i.i.i

bb.de:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #80
          to label %.noexc10.i unwind label %bb.dd, !noalias !64173

.noexc10.i:                                       ; preds = %bb.de
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i
  store i64 %i.la, ptr %i.lc, align 8, !noalias !64177
  store i64 4, ptr %i.al, align 8, !noalias !64177
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  store ptr %i.lc, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !64177
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !64177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !64177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.an, i64 144, i1 false), !noalias !64180
  call void @llvm.experimental.noalias.scope.decl(metadata !64181)
  call void @llvm.experimental.noalias.scope.decl(metadata !64182)
  %i.le = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEIB2f_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB2W_6rowidsNtB4d_13RowIdSequence6selectB1q_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5b_14PrimitiveArrayNtNtB5f_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratoryE9from_iterBW_E0ENtNtB6W_8iterator8Iterator4nextB2W_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.noexc.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !64177 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.lf = extractvalue { i64, i64 } %i.le, 0
  %i.lg = trunc nuw i64 %i.lf to i1
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i, %.noexc9.i.i.i.i
  %i.lh = phi ptr [ %i.ln, %.noexc9.i.i.i.i ], [ %i.lc, %.noexc.i.i.i.i ]
  %i.li = phi i64 [ %i.lo, %.noexc9.i.i.i.i ], [ 4, %.noexc.i.i.i.i ] ; 3 uses
  %i.lj = phi i64 [ %i.lq, %.noexc9.i.i.i.i ], [ 1, %.noexc.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi { i64, i64 } [ %i.lr, %.noexc9.i.i.i.i ], [ %i.le, %.noexc.i.i.i.i ]
  %i.lk = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i, 1
  %i.ll = icmp samesign ult i64 %i.lj, 1152921504606846976
  call void @llvm.assume(i1 %i.ll)
  %i.lm = icmp eq i64 %i.lj, %i.li
  br i1 %i.lm, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.li, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8.i.i.i.i unwind label %bb.df, !noalias !64177

.noexc8.i.i.i.i:                                  ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i
  %.pre6.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !72, !alias.scope !64183, !noalias !64184
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !64183, !noalias !64184
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ln = phi ptr [ %.pre.i.i.i.i, %.noexc8.i.i.i.i ], [ %i.lh, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.lo = phi i64 [ %.pre6.i.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %i.li, %.lr.ph.i.i.i.i.i.i ]
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lj
  store i64 %i.lk, ptr %i.lp, align 8, !noalias !64185
  %i.lq = add nuw nsw i64 %i.lj, 1                ; 3 uses
  store i64 %i.lq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !64183, !noalias !64184
  %i.lr = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEIB2f_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB2W_6rowidsNtB4d_13RowIdSequence6selectB1q_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5b_14PrimitiveArrayNtNtB5f_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratoryE9from_iterBW_E0ENtNtB6W_8iterator8Iterator4nextB2W_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.noexc9.i.i.i.i unwind label %bb.df, !noalias !64177 ; 2 uses

.noexc9.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.ls = extractvalue { i64, i64 } %i.lr, 0
  %i.lt = trunc nuw i64 %i.ls to i1
  br i1 %i.lt, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i

.thread.i.i.i.i:                                  ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.df:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !64177 ; 2 uses
  %i.lu = icmp eq i64 %.val.pre.i.i.i.i, 0
  br i1 %i.lu, label %.body11.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.df
  %.val7.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !64177
  %i.lv = shl nuw i64 %.val.pre.i.i.i.i, 3
  br label %bb.dg

bb.dg:                                            ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %.val7.i.i.i.i = phi ptr [ %i.lc, %.thread.i.i.i.i ], [ %.val7.i.pre.i.i.i, %._crit_edge.i.i.i ]
  %lpad.phi15.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.thread.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %._crit_edge.i.i.i ]
  %.val14.i.i.i.i = phi i64 [ 32, %.thread.i.i.i.i ], [ %i.lv, %._crit_edge.i.i.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %.val14.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !64177
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i: ; preds = %.noexc9.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i = load i64, ptr %i.al, align 8, !noalias !64186
  %.sroa.5.0.copyload.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !64186
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i, %.noexc.i.i.i.i
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.lq, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i ], [ 1, %.noexc.i.i.i.i ]
  %.sroa.5.0.copyload.i.i = phi ptr [ %.sroa.5.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i ], [ %i.lc, %.noexc.i.i.i.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.loopexit.i.i ], [ 4, %.noexc.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !64177
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_7flatten7FlatMapINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEIB3r_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB49_6rowidsNtB5q_13RowIdSequence6selectB2A_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6o_14PrimitiveArrayNtNtB6s_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratoryE9from_iterB25_E0EE9from_iterB49_.exit.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_7flatten7FlatMapINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEIB3r_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB49_6rowidsNtB5q_13RowIdSequence6selectB2A_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6o_14PrimitiveArrayNtNtB6s_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratoryE9from_iterB25_E0EE9from_iterB49_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i, %.noexc9.i
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.noexc9.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterINtNtNtB1l_3ops5range5RangeyEEIB3m_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB44_6rowidsNtB5l_13RowIdSequence6selectB2v_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6j_14PrimitiveArrayNtNtB6n_5types10UInt64TypeEINtNtNtB1j_6traits7collect12FromIteratoryE9from_iterB20_E0EE11spec_extendB44_.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !64177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !64171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.lw = icmp samesign ult i64 %.sroa.7.0.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.lw)
  %i.lx = icmp samesign ult i64 %.sroa.0.0.i.i, 1152921504606846976
  %i.ly = shl nuw nsw i64 %.sroa.0.0.i.i, 3
  %i.lz = shl nuw nsw i64 %.sroa.7.0.i.i, 3       ; 2 uses
  call void @llvm.assume(i1 %i.lx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !64171
  store i64 1, ptr %i.am, align 8, !noalias !64171
  %i.ma = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 1, ptr %i.ma, align 8, !noalias !64171
  %i.mb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.mb, align 8, !noalias !64171
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.lz, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !64171
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !64171
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !64171
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %i.ly, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !64171
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64187
  %i.mc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !64187 ; 4 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.dh, label %bb.dk, !prof !75

bb.dh:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_7flatten7FlatMapINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEIB3r_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB49_6rowidsNtB5q_13RowIdSequence6selectB2A_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6o_14PrimitiveArrayNtNtB6s_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratoryE9from_iterB25_E0EE9from_iterB49_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #80
          to label %.noexc.i.i unwind label %bb.di, !noalias !64171

.noexc.i.i:                                       ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am) #81
          to label %.body11.i unwind label %bb.dj, !noalias !64171

bb.dj:                                            ; preds = %bb.di
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64171
  unreachable

bb.dk:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_7flatten7FlatMapINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEIB3r_jENCNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletess_0ENCINvMs1_NtB49_6rowidsNtB5q_13RowIdSequence6selectB2A_Es0_0ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6o_14PrimitiveArrayNtNtB6s_5types10UInt64TypeEINtNtNtB1o_6traits7collect12FromIteratoryE9from_iterB25_E0EE9from_iterB49_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mc, ptr noundef nonnull align 8 dereferenceable(56) %i.am, i64 56, i1 false), !noalias !64171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !64171
  store ptr %i.mc, ptr %i.au, align 8, !alias.scope !64174, !noalias !64188
  %i.mg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.mg, align 8, !alias.scope !64174, !noalias !64188
  %i.mh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.lz, ptr %i.mh, align 8, !alias.scope !64174, !noalias !64188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !64173
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %bb.dl unwind label %bb.ec, !noalias !64173

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !64173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !64173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !64173
  call void @llvm.experimental.noalias.scope.decl(metadata !64189)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !64189, !noalias !64190, !noundef !68
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 7
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.dq, label %.invoke.i.i, !prof !80

bb.dm:                                            ; preds = %.invoke.i.i
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mo = atomicrmw sub ptr %i.mq, i64 1 release, align 8, !noalias !64191
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.dn, label %bb.dy

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.dy unwind label %bb.do, !noalias !64190

.invoke.i.i:                                      ; preds = %bb.dl
  %i.mq = load ptr, ptr %i.ar, align 8, !alias.scope !64189, !noalias !64190, !nonnull !68, !noundef !68 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = load ptr, ptr %i.mr, align 8, !noalias !64192, !noundef !68
  %.not.i.i = icmp eq ptr %i.ms, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @1650, ptr @1652
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @1649, ptr @1651
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #80
          to label %.cont.i.i unwind label %bb.dm, !noalias !64192

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.do:                                            ; preds = %bb.dn
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64190
  unreachable

bb.dp:                                            ; preds = %bb.dq
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.dq:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !64173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !64173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !64173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !64173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !64173
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE7try_newCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.ap, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.aq)
          to label %bb.dr unwind label %bb.dp, !noalias !64173

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !64193)
  call void @llvm.experimental.noalias.scope.decl(metadata !64194)
  %i.mv = load i8, ptr %i.ap, align 8, !range !195, !alias.scope !64194, !noalias !64195, !noundef !68
  %i.mw = icmp eq i8 %i.mv, -1
  br i1 %i.mw, label %bb.ds, label %bb.dw, !prof !71

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !64196
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mx, i64 32, i1 false), !noalias !64195
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @908, i64 noundef 43, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @912, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #80
          to label %bb.du unwind label %bb.dt, !noalias !64196

bb.dt:                                            ; preds = %bb.ds
  %i.my = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao) #81
          to label %.body11.i unwind label %bb.dv, !noalias !64196

bb.du:                                            ; preds = %bb.ds
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64196
  unreachable

bb.dw:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ap, i64 96, i1 false), !alias.scope !64197, !noalias !64198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !64173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !64173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !64173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !64173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !64173
  %i.na = load i64, ptr %i.av, align 8, !range !117, !alias.scope !64199, !noalias !64173, !noundef !68
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.ee, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %bb.ee unwind label %bb.cy

bb.dy:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !64200)
  %i.nc = load ptr, ptr %i.at, align 8, !alias.scope !64200, !noalias !64173, !noundef !68 ; 2 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %.body11.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ne = atomicrmw sub ptr %i.nc, i64 1 release, align 8, !noalias !64201
  %i.nf = icmp eq i64 %i.ne, 1
  br i1 %i.nf, label %bb.ea, label %.body11.i

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at)
          to label %.body11.i unwind label %bb.eb, !noalias !64173

bb.eb:                                            ; preds = %bb.ed, %bb.ea, %bb.dc
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64173
  unreachable

bb.ec:                                            ; preds = %bb.dk
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = atomicrmw sub ptr %i.mc, i64 1 release, align 8, !noalias !64202
  %i.nj = icmp eq i64 %i.ni, 1
  br i1 %i.nj, label %bb.ed, label %.body11.i

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body11.i unwind label %bb.eb, !noalias !64173

bb.ee:                                            ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !64173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 1, ptr %i.bp, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.nl, ptr noundef nonnull align 8 dereferenceable(96) %i.cv, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64203
  %i.nm = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !64203 ; 3 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.ef, label %bb.ei, !prof !75

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #80
          to label %.noexc416 unwind label %bb.eg

.noexc416:                                        ; preds = %bb.ef
  unreachable

bb.eg:                                            ; preds = %bb.ef
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.nl)
          to label %.body347 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.ei:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.nm, ptr noundef nonnull align 8 dereferenceable(112) %i.bp, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store ptr %i.nm, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.nq = icmp eq i64 %.sroa.0641.0.copyload, 0
  br i1 %i.nq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9KQ7US1M400_11lance_table.exit420, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.nr = shl nuw i64 %.sroa.0641.0.copyload, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.nr, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9KQ7US1M400_11lance_table.exit420

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9KQ7US1M400_11lance_table.exit420: ; preds = %bb.ei, %bb.ej, %bb.em
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span11EnteredSpanECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(40) %i.db)
          to label %bb.ep unwind label %bb.bs

bb.ek:                                            ; preds = %bb.rs, %bb.rd, %bb.rb, %bb.qy, %bb.qj, %bb.qh, %bb.pt, %bb.pm, %bb.pk, %bb.ph, %bb.na, %bb.fg, %bb.ba, %bb.ru, %bb.rt, %.thread715, %bb.pn, %bb.pe, %.thread758, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECs9KQ7US1M400_11lance_table.exit534, %.body506, %bb.lr, %.body, %.body596, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECs9KQ7US1M400_11lance_table.exit, %.body353, %.body355, %.body400, %.thread685
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.el:                                            ; preds = %bb.cg
  %i.nt = atomicrmw add ptr %i.js, i64 1 monotonic, align 8
  %i.nu = icmp slt i64 %i.nt, 0
  br i1 %i.nu, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.cg, %bb.en
  %storemerge = phi ptr [ %i.nv, %bb.en ], [ null, %bb.cg ]
  store ptr %storemerge, ptr %i.dc, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9KQ7US1M400_11lance_table.exit420

bb.en:                                            ; preds = %bb.el
  %i.nv = load ptr, ptr %i.dn, align 8, !nonnull !68, !noundef !68
  br label %bb.em

bb.eo:                                            ; preds = %bb.el
  call void @llvm.trap()
  unreachable

bb.ep:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9KQ7US1M400_11lance_table.exit420
end_hunk_3
