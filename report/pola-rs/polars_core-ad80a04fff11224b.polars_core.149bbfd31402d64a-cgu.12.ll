Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11trusted_lenINtNtB9_5utils6NoNullINtB7_12ChunkedArrayNtNtB9_9datatypes9UInt8TypeEEINtNtNtCs8774dFTUdNv_12polars_arrow6legacy5utils22FromTrustedLenIteratorhE24from_iter_trusted_lengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtB3R_3rev3RevINtNtNtB3V_5slice4iter4IterhEEEEB9_:bb.a
  store i8 %i.ag, ptr %.sroa.02.09.i.i, align 1, !dbg !83090, !noalias !83050
  %i.ah = invoke { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc4.i unwind label %.loopexit.i, !dbg !83087, !noalias !83050 ; 2 uses

.noexc4.i:                                        ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.09.i.i, i64 1, !dbg !83091
  %i.aj = extractvalue { i1, i8 } %i.ah, 0, !dbg !83087
  br i1 %i.aj, label %.lr.ph.i.i, label %.loopexit, !dbg !83087

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.c, %.noexc1.i, %bb.b, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #52
          to label %common.resume unwind label %bb.e, !dbg !83092, !noalias !83050

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !83093, !noalias !83050
  unreachable, !dbg !83093

common.resume:                                    ; preds = %bb.f, %.thread11, %bb.t, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.d ], [ %eh.lpad-body, %.thread11 ], [ %eh.lpad-body, %bb.f ], [ %i.az, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !83094

bb.f:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread11, label %common.resume, !dbg !83095

bb.g:                                             ; preds = %.loopexit, %bb.l
  %.sroa.01.1 = phi i1 [ true, %.loopexit ], [ false, %bb.l ], !dbg !83096
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !83097

.body:                                            ; preds = %bb.o, %bb.i, %bb.g
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.i ], [ %.sroa.01.1, %bb.g ], [ false, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.al, %bb.g ], [ %i.ax, %bb.o ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l) #52
          to label %bb.f unwind label %bb.u, !dbg !83097

.loopexit:                                        ; preds = %.noexc4.i, %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !83098, !noalias !83052
  %i.am = load i64, ptr %i.r, align 8, !dbg !83099, !alias.scope !83051, !noalias !83050, !noundef !4867 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !83100
  call void @llvm.assume(i1 %i.an), !dbg !83101
  %i.ao = add i64 %i.am, %i.w, !dbg !83102
  store i64 %i.ao, ptr %i.r, align 8, !dbg !83103, !alias.scope !83051, !noalias !83050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !83104, !noalias !83052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !83105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !83092, !noalias !83050
  %i.ap = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !83106
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %i.ap), !dbg !83107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !83108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !83109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !83110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !83110
  store i8 1, ptr %i.l, align 16, !dbg !83111, !alias.scope !83056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !83112, !noalias !83057
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, i16 noundef 1) #55
          to label %.noexc unwind label %bb.g, !dbg !83113

.noexc:                                           ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !83058), !dbg !83114
  call void @llvm.experimental.noalias.scope.decl(metadata !83059), !dbg !83114
  %i.aq = load i64, ptr %i.b, align 8, !dbg !83115, !range !5058, !alias.scope !83059, !noalias !83060, !noundef !4867
  %.not.i.i = icmp eq i64 %i.aq, 18, !dbg !83115
  br i1 %.not.i.i, label %bb.l, label %bb.h, !dbg !83116, !prof !5059

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !83117, !noalias !83061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !83117, !noalias !83060
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #53
          to label %bb.j unwind label %bb.i, !dbg !83118, !noalias !83062

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.k, !dbg !83119, !noalias !83062

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !83120, !noalias !83062
  unreachable, !dbg !83120

bb.l:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !83121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.at, i64 32, i1 false), !dbg !83121, !alias.scope !83063, !noalias !83064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !83122, !noalias !83057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !83123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !83123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !83124
  store ptr null, ptr %i.j, align 8, !dbg !83124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !83125
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE7try_newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.m unwind label %bb.g, !dbg !83125

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !83066), !dbg !83126
  call void @llvm.experimental.noalias.scope.decl(metadata !83067), !dbg !83126
  %i.au = load i8, ptr %i.h, align 8, !dbg !83127, !range !5534, !alias.scope !83067, !noalias !83066, !noundef !4867
  %i.av = icmp eq i8 %i.au, 42, !dbg !83127
  br i1 %i.av, label %bb.n, label %bb.r, !dbg !83128, !prof !4879

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !83129, !noalias !83068
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !83129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !83129, !noalias !83066
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #53
          to label %bb.p unwind label %bb.o, !dbg !83130, !noalias !83068

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #52
          to label %.body unwind label %bb.q, !dbg !83131, !noalias !83068

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !83132, !noalias !83068
  unreachable, !dbg !83132

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.h, i64 88, i1 false), !dbg !83133, !alias.scope !83068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !83134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !83135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !83135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !83135
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l)
          to label %bb.s unwind label %bb.t, !dbg !83097

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !83097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !83136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !dbg !83136
  call void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEE4fromB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.i), !dbg !83137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !83138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !83139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !83095
  ret void, !dbg !83140

bb.t:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(88) %i.n) #52
          to label %common.resume unwind label %bb.u, !dbg !83139

bb.u:                                             ; preds = %.thread11, %bb.t, %.body
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !83141
  unreachable, !dbg !83141

.thread11:                                        ; preds = %bb.f
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.u, !dbg !83142
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !83143 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = icmp ult i32 %1, %2, !dbg !83194
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !83195

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %1, 1, !dbg !83196           ; 2 uses
  %i.f = icmp ult i32 %i.e, %2, !dbg !83197
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !83198

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !83199
  store i32 0, ptr %i.g, align 8, !dbg !83199
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !83199
  store i32 1, ptr %i.h, align 4, !dbg !83199
  store ptr null, ptr %0, align 8, !dbg !83199
  br label %bb.i, !dbg !83182

bb.d:                                             ; preds = %bb.b
  %i.i = add nuw i32 %1, 2, !dbg !83200           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !83201
  %narrow.i = sub nuw i32 %2, %i.i, !dbg !83202
  %.sink1.i = zext i32 %narrow.i to i64, !dbg !83202
  %i.j = add nuw nsw i64 %.sink1.i, 2, !dbg !83203 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !83204
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !83204
  %i.k = load i64, ptr %i.a, align 8, !dbg !83204, !range !5019, !noundef !4867
  %i.l = trunc nuw i64 %i.k to i1, !dbg !83205
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !83206
  %i.n = load i64, ptr %i.m, align 8, !dbg !83206, !range !5020, !noundef !4867 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !83206 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !83205, !prof !4879

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %1 to i64, !dbg !83207
  %i.p = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !83207
  store ptr %i.p, ptr %0, align 8, !dbg !83208
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !83208
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !83208
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !83208
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !83208
  br label %bb.i, !dbg !83209

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !dbg !83210
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #53, !dbg !83211
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !dbg !83212, !nonnull !4867, !noundef !4867 ; 3 uses
  %i.s = icmp samesign ule i64 %i.j, %i.n, !dbg !83213
  tail call void @llvm.assume(i1 %i.s), !dbg !83214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !83215
  store i64 %i.n, ptr %i.c, align 8, !dbg !83216
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !83216
  store ptr %i.r, ptr %i.t, align 8, !dbg !83216
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !83216
  store i32 %1, ptr %i.r, align 4, !dbg !83217
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !83218
  store i32 %i.e, ptr %i.v, align 4, !dbg !83219
  store i64 2, ptr %i.u, align 8, !dbg !83220, !alias.scope !83192
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtCscgRAwXFJnXP_4core3ops5range5RangemEE11spec_extendCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.i, i32 noundef %2)
          to label %bb.h unwind label %bb.j, !dbg !83221

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !83222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !83222
  call void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !83223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !83224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !83225
  br label %bb.i, !dbg !83226

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  ret void, !dbg !83227

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %bb.l unwind label %bb.k, !dbg !83225

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !83228
  unreachable, !dbg !83228

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !83228
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXso_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !83229 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !83308
  %i.b = load i8, ptr %i.a, align 1, !dbg !83308, !range !5093, !alias.scope !83290, !noundef !4867 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !83309
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !83309

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !83310
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !83311
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !83311
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !83312

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !83313, !alias.scope !83290, !noundef !4867
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !83314
  %i.h = load i64, ptr %i.g, align 8, !dbg !83314, !alias.scope !83290, !noundef !4867
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !83315

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !83316 ; 10 uses
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !83317 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83291), !dbg !83318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83293), !dbg !83318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83294), !dbg !83319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83295), !dbg !83319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83296), !dbg !83320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83297), !dbg !83320
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !83321 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !83321, !alias.scope !83298, !noalias !83299, !noundef !4867 ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshr.i64(i64 %i.j, i64 %i.j, i64 %.sroa.01.0.i), !dbg !83322 ; 6 uses
  store i64 %i.k, ptr %i.i, align 8, !dbg !83323, !alias.scope !83298, !noalias !83299
  %i.l = icmp samesign ult i64 %.sroa.01.0.i, 17, !dbg !83324
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !83325
  %i.n = load ptr, ptr %i.m, align 16, !dbg !83325, !alias.scope !83298, !noalias !83299, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !83324, !prof !5059

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.o = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n) #56, !dbg !83326, !noalias !83298
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher5write.exit.i, !dbg !83327

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83300), !dbg !83328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83301), !dbg !83328
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !83329
  %i.q = load i64, ptr %i.p, align 8, !dbg !83329, !alias.scope !83301, !noalias !83302, !noundef !4867 ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.01.0.i, 7, !dbg !83330
  br i1 %i.r, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %bb.f, !dbg !83330

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i64 %.sroa.01.0.i, 3, !dbg !83331
  br i1 %i.s, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %bb.g, !dbg !83331

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.e
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.0.i, align 1, !dbg !83332, !alias.scope !83303, !noalias !83304
  %i.t = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.k, !dbg !83333
  %i.u = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.01.0.i, !dbg !83334
  %i.v = getelementptr i8, ptr %i.u, i64 -8, !dbg !83334
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.v, align 1, !dbg !83335, !alias.scope !83303, !noalias !83304
  %i.w = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.q, !dbg !83336
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i, !dbg !83337

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i64 %.sroa.01.0.i, 0, !dbg !83338
  br i1 %.not.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.h, !dbg !83338

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.01.0.i, !dbg !83339
  %i.y = getelementptr i8, ptr %i.x, i64 -4, !dbg !83339
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.y, align 1, !dbg !83340, !alias.scope !83303, !noalias !83304
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %.sroa.0.0.i, align 1, !dbg !83341, !alias.scope !83303, !noalias !83304
  %i.z = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64, !dbg !83342
  %i.aa = xor i64 %i.k, %i.z, !dbg !83343
  %i.ab = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64, !dbg !83344
  %i.ac = xor i64 %i.q, %i.ab, !dbg !83345
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i, !dbg !83346

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %.sroa.0.0.i, align 1, !dbg !83347, !alias.scope !83303, !noalias !83304, !noundef !4867
  %i.ae = lshr i64 %.sroa.01.0.i, 1, !dbg !83348
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.ae, !dbg !83349
  %i.ag = load i8, ptr %i.af, align 1, !dbg !83349, !alias.scope !83303, !noalias !83304, !noundef !4867
  %i.ah = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.01.0.i, !dbg !83350
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1, !dbg !83350
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !83350, !alias.scope !83303, !noalias !83304, !noundef !4867
  %i.ak = zext i8 %i.ad to i64, !dbg !83351
  %i.al = xor i64 %i.k, %i.ak, !dbg !83352
  %i.am = zext i8 %i.aj to i64, !dbg !83353
  %i.an = shl nuw nsw i64 %i.am, 8, !dbg !83354
  %i.ao = zext i8 %i.ag to i64, !dbg !83355
  %i.ap = or disjoint i64 %i.an, %i.ao, !dbg !83354
  %i.aq = xor i64 %i.ap, %i.q, !dbg !83356
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i, !dbg !83357

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.h, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, %bb.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.w, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], [ %i.ac, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], [ %i.aq, %bb.h ], [ %i.q, %bb.g ], !dbg !83358
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.t, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], [ %i.al, %bb.h ], [ %i.k, %bb.g ]
  %i.ar = zext i64 %.sroa.0.0.i.i.i.i to i128, !dbg !83359
  %i.as = zext i64 %.sroa.04.0.i.i.i.i to i128, !dbg !83360
  %i.at = mul nuw i128 %i.ar, %i.as, !dbg !83361  ; 2 uses
  %i.au = lshr i128 %i.at, 64, !dbg !83362
  %i.av = xor i128 %i.au, %i.at, !dbg !83363
  %i.aw = trunc i128 %i.av to i64, !dbg !83363
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher5write.exit.i, !dbg !83327

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i, %bb.d
  %storemerge.i.i.i = phi i64 [ %i.o, %bb.d ], [ %i.aw, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i ], !dbg !83325 ; 2 uses
  store i64 %storemerge.i.i.i, ptr %i.i, align 8, !dbg !83325, !alias.scope !83298, !noalias !83299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83305), !dbg !83364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83306), !dbg !83365
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !83366 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 16, !dbg !83366, !alias.scope !83307, !noalias !83293, !noundef !4867 ; 3 uses
  %i.az = icmp ugt i8 %i.ay, 120, !dbg !83366
  br i1 %i.az, label %bb.j, label %bb.i, !dbg !83366

bb.i:                                             ; preds = %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher5write.exit.i
  %i.ba = zext nneg i8 %i.ay to i128, !dbg !83367
  %i.bb = shl nuw i128 255, %i.ba, !dbg !83367
  %i.bc = load i128, ptr %1, align 16, !dbg !83368, !alias.scope !83307, !noalias !83293, !noundef !4867
  %i.bd = or i128 %i.bc, %i.bb, !dbg !83368
  %i.be = add nuw i8 %i.ay, 8, !dbg !83369
  br label %_RNvYNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher9write_strCs1LHh8CLbVkQ_11polars_core.exit, !dbg !83370

bb.j:                                             ; preds = %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher5write.exit.i
  %i.bf = load i128, ptr %1, align 16, !dbg !83371, !alias.scope !83307, !noalias !83293, !noundef !4867 ; 2 uses
  %i.bg = trunc i128 %i.bf to i64, !dbg !83371
  %i.bh = lshr i128 %i.bf, 64, !dbg !83372
  %i.bi = xor i64 %storemerge.i.i.i, %i.bg, !dbg !83373
  %i.bj = load i64, ptr %i.n, align 8, !dbg !83374, !noalias !83307, !noundef !4867
  %i.bk = zext i64 %i.bi to i128, !dbg !83375
end_hunk_0
begin_hunk_1_@_RNvMsc_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtB7_6series6Series8fmt_list:bb.a
  %i.ad = icmp eq i8 %.val110, 24, !dbg !174842
  br i1 %i.ad, label %bb.c, label %bb.b, !dbg !174838, !prof !4879

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.val109, i64 440, !dbg !174843
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !174843, !invariant.load !4867, !nonnull !4867
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull %i.z) #55, !dbg !174844
  br i1 %i.ag, label %bb.e, label %bb.d, !dbg !174843

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @940, ptr noundef nonnull inttoptr (i64 213 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @941) #57, !dbg !174845
  unreachable, !dbg !174845

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !174846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !174847
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !174847
  %i.ah = load i64, ptr %i.f, align 8, !dbg !174847, !range !5019, !noundef !4867
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !174848
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !174849
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !174849, !range !5020, !noundef !4867 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !174849 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g, !dbg !174848, !prof !4879

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !174850
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !174850
  %i.am = load i64, ptr %i.g, align 8, !dbg !174850, !range !5019, !noundef !4867
  %i.an = trunc nuw i64 %i.am to i1, !dbg !174851
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !174852
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !174852, !range !5020, !noundef !4867 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !174852 ; 2 uses
  br i1 %i.an, label %bb.bn, label %bb.bo, !dbg !174851, !prof !4879

bb.f:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.al, align 8, !dbg !174853
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.ar) #53, !dbg !174854
  unreachable, !dbg !174854

bb.g:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.al, align 8, !dbg !174855, !nonnull !4867, !noundef !4867 ; 2 uses
  %i.at = icmp ne i64 %i.ak, 0, !dbg !174856
  tail call void @llvm.assume(i1 %i.at), !dbg !174857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !174858
  store i8 91, ptr %i.as, align 1, !dbg !174859
  store i64 %i.ak, ptr %i.s, align 8, !dbg !174860
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !174860 ; 4 uses
  store ptr %i.as, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !174860
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !174860 ; 8 uses
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !dbg !174860
  %i.au = invoke fastcc noundef range(i64 -1, -9223372036854775808) i64 @_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt19parse_env_var_limit(ptr noalias noundef nonnull readonly captures(address, read_provenance) @978, i64 noundef 30, i64 noundef 3)
          to label %_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt18get_list_len_limit.exit unwind label %bb.h, !dbg !174861 ; 4 uses

.body114:                                         ; preds = %.loopexit.split-lp200, %bb.az, %.loopexit.split-lp, %bb.w, %bb.i, %bb.h
  %.pn89 = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %.pn84, %.loopexit.split-lp ], [ %i.av, %bb.h ], [ %.pn84, %bb.w ], [ %.pn87, %bb.az ], [ %.pn87, %.loopexit.split-lp200 ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #52
          to label %bb.bm unwind label %bb.au, !dbg !174862

bb.h:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8truncate.exit, %bb.bg, %bb.bd, %bb.at, %bb.j, %_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt18get_list_len_limit.exit, %bb.g, %bb.o, %bb.av, %bb.s, %bb.q, %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body114

_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt18get_list_len_limit.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !174863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !174864
  invoke void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @968, i64 noundef 27)
          to label %.noexc112 unwind label %bb.h, !dbg !174864

.noexc112:                                        ; preds = %_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt18get_list_len_limit.exit
  %i.aw = load i64, ptr %i.d, align 8, !dbg !174865, !range !5019, !noundef !4867
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !174866 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !174866
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !174866, !nonnull !4867
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !174866
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !174866
  %.sroa.32.0.i = select i1 %i.ax, i64 0, i64 %i.bb, !dbg !174866
  %.sroa.01.0.i = select i1 %i.ax, ptr inttoptr (i64 1 to ptr), ptr %i.az, !dbg !174866
  %i.bc = invoke noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.32.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @969, i64 noundef 5)
          to label %bb.j unwind label %bb.i, !dbg !174867

bb.i:                                             ; preds = %.noexc112
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(32) %i.d) #52
          to label %.body114 unwind label %bb.k, !dbg !174868

bb.j:                                             ; preds = %.noexc112
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.h, !dbg !174868

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !174869
  unreachable, !dbg !174869

bb.l:                                             ; preds = %bb.j
  %..i = select i1 %i.bc, ptr @971, ptr @970, !dbg !174870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !174868
  store ptr %..i, ptr %i.r, align 8, !dbg !174871
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !174871
  store i64 3, ptr %i.bf, align 8, !dbg !174871
  %i.bg = icmp eq i64 %i.au, 0, !dbg !174872
  br i1 %i.bg, label %bb.m, label %bb.q, !dbg !174872

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !174873
  store ptr %i.r, ptr %i.q, align 8, !dbg !174873
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !174873
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !174873
  %i.bh = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @608, ptr noundef nonnull @931, ptr noundef nonnull %i.q)
          to label %bb.n unwind label %bb.h, !dbg !174874

bb.n:                                             ; preds = %bb.m
  br i1 %i.bh, label %bb.o, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit96, !dbg !174875, !prof !4879

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #53
          to label %.noexc95 unwind label %bb.h, !dbg !174876

.noexc95:                                         ; preds = %bb.o
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit96: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !174877
  br label %bb.p, !dbg !174877

bb.p:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit146, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit128, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !174878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !174879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !174862
  br label %bb.bh, !dbg !174880

bb.q:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.val109, i64 432, !dbg !174881
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !174881, !invariant.load !4867, !nonnull !4867 ; 2 uses
  %i.bk = invoke noundef i64 %i.bj(ptr noundef nonnull %i.z)
          to label %bb.r unwind label %bb.h, !dbg !174882

bb.r:                                             ; preds = %bb.q
  %.not = icmp ult i64 %i.au, %i.bk, !dbg !174883
  br i1 %.not, label %bb.s, label %bb.av, !dbg !174883

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !174884
  %i.bl = getelementptr inbounds nuw i8, ptr %.val109, i64 352, !dbg !174885
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !174885, !invariant.load !4867, !nonnull !4867
  %i.bn = invoke { ptr, ptr } %i.bm(ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef %i.au)
          to label %bb.t unwind label %bb.h, !dbg !174886 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0, !dbg !174885 ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1, !dbg !174885 ; 5 uses
  store ptr %i.bo, ptr %i.m, align 8, !dbg !174885
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !174885
  store ptr %i.bp, ptr %i.bq, align 8, !dbg !174885
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !174887
  %i.bs = load i64, ptr %i.br, align 8, !dbg !174887, !range !5045, !invariant.load !4867, !noalias !174784
  %i.bt = add nsw i64 %i.bs, -1, !dbg !174887
  %i.bu = and i64 %i.bt, -16, !dbg !174887
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu, !dbg !174887
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16, !dbg !174887 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 312, !dbg !174888
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !174888, !invariant.load !4867, !noalias !174784, !nonnull !4867
  %i.bz = invoke noundef nonnull align 8 ptr %i.by(ptr noundef nonnull %i.bw) #55
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174889, !inline_history !5684 ; 2 uses

.noexc116:                                        ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !174890
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !174890, !noalias !174784, !noundef !4867 ; 3 uses
  %.not.i = icmp eq i64 %i.cb, 0, !dbg !174891
  br i1 %.not.i, label %bb.v, label %bb.u, !dbg !174891

bb.u:                                             ; preds = %.noexc116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !174892
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !174892, !noalias !174784, !nonnull !4867, !noundef !4867 ; 5 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !174893, !noalias !174784, !nonnull !4867, !noundef !4867
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !174893
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !174893, !noalias !174784, !nonnull !4867, !align !5034, !noundef !4867
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48, !dbg !174893
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !174893, !invariant.load !4867, !noalias !174784, !nonnull !4867
  %i.cj = invoke noundef i64 %i.ci(ptr noundef nonnull %i.ce) #55
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174894, !inline_history !5684

.noexc117:                                        ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 304, !dbg !174895
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !174895, !invariant.load !4867, !noalias !174784, !nonnull !4867
  %i.cm = invoke noundef nonnull align 16 ptr %i.cl(ptr noundef nonnull %i.bw) #55
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174896, !inline_history !5684

.noexc118:                                        ; preds = %.noexc117
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 432, !dbg !174897
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !174897, !invariant.load !4867, !noalias !174784, !nonnull !4867
  %i.cp = invoke noundef i64 %i.co(ptr noundef nonnull %i.bw) #55
          to label %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174898, !inline_history !5684 ; 0 uses

_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader: ; preds = %.noexc118
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.9174.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %2 = add nsw i64 %i.au, -1
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cr = add i64 %i.cb, -1, !dbg !174899         ; 2 uses
  br label %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit, !dbg !174899

bb.v:                                             ; preds = %.noexc116
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @835) #57
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174891

.noexc120:                                        ; preds = %bb.v
  unreachable, !dbg !174891

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body
  %.pn84 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit192, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174785), !dbg !174900
  call void @llvm.experimental.noalias.scope.decl(metadata !174786), !dbg !174901
  call void @llvm.experimental.noalias.scope.decl(metadata !174787), !dbg !174902
  %i.cs = load ptr, ptr %i.m, align 8, !dbg !174903, !alias.scope !174788, !nonnull !4867, !noundef !4867
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !dbg !174904, !noalias !174788
  %i.cu = icmp eq i64 %i.ct, 1, !dbg !174905
  br i1 %i.cu, label %bb.w, label %.body114, !dbg !174905

bb.w:                                             ; preds = %.loopexit.split-lp
  fence acquire, !dbg !174906
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #56
          to label %.body114 unwind label %bb.au, !dbg !174907

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, %bb.x, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit94
  %lpad.loopexit192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa, %bb.v, %.noexc118, %.noexc117, %bb.u, %bb.t, %bb.aq
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit: ; preds = %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader, %bb.ae
  %.sroa.9169.0 = phi i64 [ %i.dt, %bb.ae ], [ 0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader ], !dbg !174908 ; 2 uses
  %.sroa.14.0 = phi i64 [ %.sroa.14.3, %bb.ae ], [ %i.cj, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader ], !dbg !174908 ; 2 uses
  %.sroa.18.0 = phi i64 [ %.sroa.18.3, %bb.ae ], [ 0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader ], !dbg !174908 ; 3 uses
  %.sroa.27.0 = phi i64 [ %i.du, %bb.ae ], [ 0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit.preheader ], !dbg !174908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cv = icmp ult i64 %.sroa.9169.0, %.sroa.14.0, !dbg !174899
  br i1 %i.cv, label %_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph.i.i, !dbg !174899

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit
  %i.cw = add i64 %.sroa.18.0, 1, !dbg !174909    ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.cb, !dbg !174909
  br i1 %i.cx, label %bb.x, label %.thread, !dbg !174909

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cw, !dbg !174910 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !174911, !noalias !174789, !nonnull !4867, !noundef !4867
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8, !dbg !174911
  %i.db = load ptr, ptr %i.da, align 8, !dbg !174911, !noalias !174789, !nonnull !4867, !align !5034, !noundef !4867
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48, !dbg !174911
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !174911, !invariant.load !4867, !noalias !174789, !nonnull !4867
  %i.de = invoke noundef i64 %i.dd(ptr noundef nonnull %i.cz) #55
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit, !dbg !174912, !inline_history !2364 ; 2 uses

.noexc123:                                        ; preds = %bb.x
  %.not.i.peel.i = icmp eq i64 %i.de, 0, !dbg !174899
  br i1 %.not.i.peel.i, label %.peel.next.i.preheader, label %_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, !dbg !174899

.peel.next.i.preheader:                           ; preds = %.noexc123
  %exitcond.not260 = icmp eq i64 %i.cw, %i.cr, !dbg !174909
  br i1 %exitcond.not260, label %.thread, label %.lr.ph261, !dbg !174909

.lr.ph261:                                        ; preds = %.peel.next.i.preheader
  %i.df = add i64 %.sroa.18.0, 2, !dbg !174909
  br label %bb.y, !dbg !174909

.peel.next.i:                                     ; preds = %.noexc124
  %i.dg = add nuw i64 %i.dh, 1, !dbg !174909
  %exitcond.not = icmp eq i64 %i.dh, %i.cr, !dbg !174909
  br i1 %exitcond.not, label %.thread, label %bb.y, !dbg !174909, !llvm.loop !174602

bb.y:                                             ; preds = %.lr.ph261, %.peel.next.i
  %i.dh = phi i64 [ %i.df, %.lr.ph261 ], [ %i.dg, %.peel.next.i ] ; 4 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.dh, !dbg !174910 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !174911, !noalias !174789, !nonnull !4867, !noundef !4867
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8, !dbg !174911
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !174911, !noalias !174789, !nonnull !4867, !align !5034, !noundef !4867
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48, !dbg !174911
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !174911, !invariant.load !4867, !noalias !174789, !nonnull !4867
  %i.do = invoke noundef i64 %i.dn(ptr noundef nonnull %i.dj) #55
          to label %.noexc124 unwind label %.loopexit, !dbg !174912, !inline_history !2364 ; 2 uses

.noexc124:                                        ; preds = %bb.y
  %.not.i.i = icmp eq i64 %i.do, 0, !dbg !174899
  br i1 %.not.i.i, label %.peel.next.i, label %_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, !dbg !174899, !llvm.loop !174602

_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %.noexc124, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit, %.noexc123
  %.sroa.14.3 = phi i64 [ %.sroa.14.0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit ], [ %i.de, %.noexc123 ], [ %i.do, %.noexc124 ], !dbg !174908
  %.sroa.18.3 = phi i64 [ %.sroa.18.0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit ], [ %i.cw, %.noexc123 ], [ %i.dh, %.noexc124 ], !dbg !174908 ; 2 uses
  %.lcssa.i.i = phi i64 [ %.sroa.9169.0, %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit ], [ 0, %.noexc123 ], [ 0, %.noexc124 ], !dbg !174899 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.18.3, !dbg !174913 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !174914, !noalias !174789, !nonnull !4867, !noundef !4867
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !174914
  %i.ds = load ptr, ptr %i.dr, align 8, !dbg !174914, !noalias !174789, !nonnull !4867, !align !5034, !noundef !4867
  invoke fastcc void @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9any_value16arr_to_any_value(ptr noalias noundef align 16 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ds, i64 noundef %.lcssa.i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cm) #55
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit, !dbg !174915

.noexc125:                                        ; preds = %_RNvXs3_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB5_10SeriesIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.dt = add nuw i64 %.lcssa.i.i, 1, !dbg !174916
  %.sroa.0.0.copyload1.i = load i8, ptr %i.c, align 16, !dbg !174917, !noalias !174790 ; 2 uses
  %.not.i122 = icmp eq i8 %.sroa.0.0.copyload1.i, 35, !dbg !174918
  br i1 %.not.i122, label %.thread, label %bb.z, !dbg !174919

.thread:                                          ; preds = %.lr.ph.i.i, %.noexc125, %.peel.next.i.preheader, %.peel.next.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !174920
  br label %bb.aa, !dbg !174921

bb.z:                                             ; preds = %.noexc125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !174922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9174.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %i.cq, i64 47, i1 false), !dbg !174923
  %i.du = add nuw i64 %.sroa.27.0, 1, !dbg !174924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !174920
  store i8 %.sroa.0.0.copyload1.i, ptr %i.l, align 16, !dbg !174922
  %i.dv = icmp eq i64 %.sroa.27.0, %2, !dbg !174925
  br i1 %i.dv, label %bb.af, label %bb.ab, !dbg !174925

bb.aa:                                            ; preds = %.thread, %bb.ar
  %i.dw = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !dbg !174926, !alias.scope !174791, !noundef !4867 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1, !dbg !174927
  call void @llvm.assume(i1 %i.dx), !dbg !174928
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef 1)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174929

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !174930
  store ptr %i.l, ptr %i.h, align 8, !dbg !174930
  store ptr @_RNvXs9_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtNtB7_9datatypes9any_value8AnyValueNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8, !dbg !174930
  %i.dy = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @608, ptr noundef nonnull @933, ptr noundef nonnull %i.h)
          to label %bb.ac unwind label %.loopexit195, !dbg !174931

.body:                                            ; preds = %.loopexit195, %.loopexit.split-lp196, %bb.aj, %bb.an
  %.pn = phi { ptr, i32 } [ %i.el, %bb.an ], [ %i.eg, %bb.aj ], [ %lpad.loopexit197, %.loopexit195 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp196 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l) #52
          to label %.loopexit.split-lp unwind label %bb.au, !dbg !174932

.loopexit195:                                     ; preds = %bb.ab
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp196:                            ; preds = %bb.af, %bb.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit92, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dy, label %bb.ad, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit94, !dbg !174933, !prof !4879

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @934) #53
          to label %.noexc93 unwind label %.loopexit.split-lp196, !dbg !174934

.noexc93:                                         ; preds = %bb.ad
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit94: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !174935
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit, !dbg !174932

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !174932
  br label %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core6series8iteratorNtB7_6Series4iter.exit, !dbg !174936

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !174937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !174937
  %i.dz = invoke noundef i64 %i.bj(ptr noundef nonnull %i.z)
          to label %bb.ag unwind label %.loopexit.split-lp196, !dbg !174938

bb.ag:                                            ; preds = %bb.af
  %i.ea = add i64 %i.dz, -1, !dbg !174939
  %i.eb = getelementptr inbounds nuw i8, ptr %.val109, i64 576, !dbg !174937
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !174937, !invariant.load !4867, !nonnull !4867
  invoke void %i.ec(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.j, ptr noundef nonnull %i.z, i64 noundef %i.ea)
          to label %bb.ah unwind label %.loopexit.split-lp196, !dbg !174940

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !174797), !dbg !174941
  call void @llvm.experimental.noalias.scope.decl(metadata !174798), !dbg !174941
  %i.ed = load i64, ptr %i.j, align 16, !dbg !174942, !range !5019, !alias.scope !174798, !noalias !174799, !noundef !4867
  %i.ee = trunc nuw i64 %i.ed to i1, !dbg !174943
  br i1 %i.ee, label %bb.ai, label %bb.am, !dbg !174943, !prof !4879

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !174944, !noalias !174800
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !174944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ef, i64 72, i1 false), !dbg !174944, !noalias !174799
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @935) #53
          to label %bb.ak unwind label %bb.aj, !dbg !174945, !noalias !174801

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #52
          to label %.body unwind label %bb.al, !dbg !174946, !noalias !174801

bb.ak:                                            ; preds = %bb.ai
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !174947, !noalias !174801
  unreachable, !dbg !174947

bb.am:                                            ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !174948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.k, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.ei, i64 48, i1 false), !dbg !174948, !alias.scope !174801, !noalias !174802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !174949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !174950
  store ptr %i.r, ptr %i.i, align 8, !dbg !174950
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !174950
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.443.0..sroa_idx, align 8, !dbg !174950
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !174950
  store ptr %i.k, ptr %i.ej, align 8, !dbg !174950
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !174950
  store ptr @_RNvXs9_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtNtB7_9datatypes9any_value8AnyValueNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !174950
  %i.ek = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @608, ptr noundef nonnull @936, ptr noundef nonnull %i.i)
          to label %bb.ao unwind label %bb.an, !dbg !174951

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.k) #52
          to label %.body unwind label %bb.au, !dbg !174952

bb.ao:                                            ; preds = %bb.am
  br i1 %i.ek, label %bb.ap, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit92, !dbg !174953, !prof !4879

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @937) #53
          to label %.noexc91 unwind label %bb.an, !dbg !174954

.noexc91:                                         ; preds = %bb.ap
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit92: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !174952
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.k)
          to label %bb.aq unwind label %.loopexit.split-lp196, !dbg !174952

bb.aq:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !174952
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !174932

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !174932
  br label %bb.aa, !dbg !174955

bb.as:                                            ; preds = %bb.aa
  %i.em = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !174956, !alias.scope !174791, !nonnull !4867, !noundef !4867
  %i.en = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !dbg !174957, !alias.scope !174791, !noundef !4867 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, -1, !dbg !174958
  call void @llvm.assume(i1 %i.eo), !dbg !174959
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en, !dbg !174960
  store i8 93, ptr %i.ep, align 1, !dbg !174961
  %i.eq = add nuw i64 %i.dw, 1, !dbg !174962
  store i64 %i.eq, ptr %.sroa.68.0..sroa_idx, align 8, !dbg !174963, !alias.scope !174791
  call void @llvm.experimental.noalias.scope.decl(metadata !174809), !dbg !174900
  call void @llvm.experimental.noalias.scope.decl(metadata !174810), !dbg !174964
  call void @llvm.experimental.noalias.scope.decl(metadata !174811), !dbg !174965
  %i.er = load ptr, ptr %i.m, align 8, !dbg !174966, !alias.scope !174812, !nonnull !4867, !noundef !4867
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !dbg !174967, !noalias !174812
  %i.et = icmp eq i64 %i.es, 1, !dbg !174968
  br i1 %i.et, label %bb.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit128, !dbg !174968

bb.at:                                            ; preds = %bb.as
  fence acquire, !dbg !174969
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit128 unwind label %bb.h, !dbg !174970

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit128: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !174900
  br label %bb.p, !dbg !174900

bb.au:                                            ; preds = %bb.az, %bb.w, %bb.bi, %bb.an, %.body, %.body114
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !174971
  unreachable, !dbg !174971

bb.av:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !174972
  %i.ev = getelementptr inbounds nuw i8, ptr %.val109, i64 456, !dbg !174972
  %i.ew = load ptr, ptr %i.ev, align 8, !dbg !174972, !invariant.load !4867, !nonnull !4867
  %i.ex = invoke { ptr, ptr } %i.ew(ptr noundef nonnull %i.z)
          to label %bb.aw unwind label %bb.h, !dbg !174973 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ey = extractvalue { ptr, ptr } %i.ex, 0, !dbg !174972 ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ex, 1, !dbg !174972 ; 5 uses
  store ptr %i.ey, ptr %i.p, align 8, !dbg !174972
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !174972
  store ptr %i.ez, ptr %i.fa, align 8, !dbg !174972
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16, !dbg !174974
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !174974, !range !5045, !invariant.load !4867, !noalias !174813
  %i.fd = add nsw i64 %i.fc, -1, !dbg !174974
  %i.fe = and i64 %i.fd, -16, !dbg !174974
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fe, !dbg !174974
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16, !dbg !174974 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 312, !dbg !174975
  %i.fi = load ptr, ptr %i.fh, align 8, !dbg !174975, !invariant.load !4867, !noalias !174813, !nonnull !4867
  %i.fj = invoke noundef nonnull align 8 ptr %i.fi(ptr noundef nonnull %i.fg) #55
          to label %.noexc130 unwind label %.loopexit.split-lp200.loopexit.split-lp, !dbg !174976, !inline_history !5684 ; 2 uses

.noexc130:                                        ; preds = %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16, !dbg !174977
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !174977, !noalias !174813, !noundef !4867 ; 4 uses
  %.not.i129 = icmp eq i64 %i.fl, 0, !dbg !174978
end_hunk_1
