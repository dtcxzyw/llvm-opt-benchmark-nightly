Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16mappings_to_rows:bb.a
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !247186

bb.b:                                             ; preds = %bb.a
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !247188
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !247189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.540.0..sroa_idx, i64 56, i1 false), !dbg !247188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !247190
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247189
  store i64 %.sroa.039.0.copyload, ptr %i.ab, align 8, !dbg !247189
  store i64 1, ptr %0, align 8, !dbg !247189
  br label %bb.v, !dbg !247191

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !247190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !247192
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.039.0.copyload, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !247192
  %i.ac = load i64, ptr %i.f, align 8, !dbg !247192, !range !5041, !noundef !4981
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !247193
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !247194
  %i.af = load i64, ptr %i.ae, align 8, !dbg !247194, !range !5042, !noundef !4981 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !247194 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e, !dbg !247193, !prof !5043

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !247195
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #53, !dbg !247196
  unreachable, !dbg !247196

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ag, align 8, !dbg !247197, !nonnull !4981, !noundef !4981
  %i.aj = icmp ule i64 %.sroa.039.0.copyload, %i.af, !dbg !247198
  tail call void @llvm.assume(i1 %i.aj), !dbg !247199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !247200
  store i64 %i.af, ptr %i.x, align 8, !dbg !247201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !247201 ; 3 uses
  store ptr %i.ai, ptr %i.ak, align 8, !dbg !247201
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !247201 ; 5 uses
  store i64 0, ptr %i.al, align 8, !dbg !247201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !247202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !247111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !247203
  store i8 0, ptr %i.t, align 16, !dbg !247203
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.t, i64 noundef %3)
          to label %bb.g unwind label %.body91.thread102, !dbg !247204

bb.f:                                             ; preds = %.body89
  br i1 %.sroa.036.2, label %.body91.thread, label %common.resume, !dbg !247205

.body91.thread102:                                ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit.i, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body91.thread, !dbg !247205

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !247111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !247206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !247207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !247208
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %3, !dbg !247209
  store ptr %2, ptr %i.r, align 8, !dbg !247210
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !247210
  store ptr %i.am, ptr %i.an, align 8, !dbg !247210
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !247210
  store ptr %i.a, ptr %i.ao, align 8, !dbg !247210
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB18_5types6string8PyStringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16mappings_to_rows0EE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.i unwind label %bb.h, !dbg !247211

.body89:                                          ; preds = %bb.bp, %bb.h, %bb.j
  %.sroa.036.2 = phi i1 [ true, %bb.j ], [ %.sroa.036.3, %bb.h ], [ true, %bb.bp ], !dbg !247212
  %.pn70 = phi { ptr, i32 } [ %.pn68, %bb.j ], [ %i.ap, %bb.h ], [ %i.di, %bb.bp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.v) #55
          to label %bb.f unwind label %bb.bb, !dbg !247213

bb.h:                                             ; preds = %bb.bq, %bb.t, %bb.g
  %.sroa.036.3 = phi i1 [ true, %bb.bq ], [ false, %bb.t ], [ true, %bb.g ], !dbg !247214
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !247121
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.l unwind label %bb.k, !dbg !247215

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn68 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn66, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1i_5types6string8PyStringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.s) #55
          to label %.body89 unwind label %bb.bb, !dbg !247216

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.q, align 8, !dbg !247217, !range !5041, !noundef !4981
  %i.as = trunc nuw i64 %i.ar to i1, !dbg !247218
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !247219
  %.sroa.045.0.copyload = load ptr, ptr %i.at, align 8, !dbg !247219 ; 2 uses
  br i1 %i.as, label %bb.m, label %bb.n, !dbg !247218

bb.m:                                             ; preds = %bb.l
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !247220
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !247221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.546.0..sroa_idx, i64 56, i1 false), !dbg !247220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !247222
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247221
  store ptr %.sroa.045.0.copyload, ptr %i.au, align 8, !dbg !247221
  store i64 1, ptr %0, align 8, !dbg !247221
  br label %bb.bo, !dbg !247223

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !247222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !247121
  store ptr %.sroa.045.0.copyload, ptr %i.p, align 8, !dbg !247121
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o, !dbg !247224

bb.o:                                             ; preds = %bb.bm, %bb.n
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.r unwind label %bb.q, !dbg !247225

bb.p:                                             ; preds = %.body84, %bb.q
  %.pn66 = phi { ptr, i32 } [ %i.be, %bb.q ], [ %.pn64, %.body84 ]
  %.val81 = load ptr, ptr %i.p, align 8, !dbg !247226, !nonnull !4981, !noundef !4981
  call void @_Py_DecRef(ptr noundef nonnull %.val81) #49, !dbg !247227
  br label %bb.j, !dbg !247228

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.bf = load i64, ptr %i.o, align 8, !dbg !247225, !range !5119, !noundef !4981 ; 2 uses
  %.not = icmp eq i64 %i.bf, 2, !dbg !247225
  br i1 %.not, label %bb.t, label %bb.s, !dbg !247225

bb.s:                                             ; preds = %bb.r
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !dbg !247229 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !247230
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !247231
  br i1 %i.bg, label %bb.w, label %bb.x, !dbg !247231

bb.t:                                             ; preds = %bb.r
  %.val80 = load ptr, ptr %i.p, align 8, !dbg !247226, !nonnull !4981, !noundef !4981
  call void @_Py_DecRef(ptr noundef nonnull %.val80) #49, !dbg !247232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !247226
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !247234
  store i64 0, ptr %0, align 8, !dbg !247233
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1i_5types6string8PyStringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.u unwind label %bb.h, !dbg !247216

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !247216
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !247213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !247213
  br label %bb.v, !dbg !247235

bb.v:                                             ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !247205
  ret void, !dbg !247235

bb.w:                                             ; preds = %bb.s
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !247236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.254.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, i64 56, i1 false), !dbg !247237
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247236
  store ptr %.sroa.212.0.copyload, ptr %i.bi, align 8, !dbg !247236
  store i64 1, ptr %0, align 8, !dbg !247236
  br label %bb.bn, !dbg !247238

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload) ]
  store ptr %.sroa.212.0.copyload, ptr %i.n, align 8, !dbg !247239
  %i.bj = icmp eq ptr %.sroa.212.0.copyload, @_Py_NoneStruct, !dbg !247240
  br i1 %i.bj, label %bb.z, label %bb.y, !dbg !247241

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !247132
  invoke fastcc void @_RINvMs_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyE4castNtNtBP_7mapping9PyMappingECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247242

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !247243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !247244
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247244

.body84:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bj, %bb.ax, %bb.ah, %bb.be
  %.pn64 = phi { ptr, i32 } [ %i.cq, %bb.ax ], [ %.pn107, %bb.be ], [ %i.bz, %bb.ah ], [ %i.dd, %bb.bj ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload) #49, !dbg !247245
  br label %bb.p, !dbg !247246

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ac, %bb.z, %bb.y, %bb.ay, %bb.ae, %bb.ab
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.aa:                                            ; preds = %bb.y
  %i.bk = load ptr, ptr %i.l, align 8, !dbg !247247, !noundef !4981 ; 2 uses
  %.not62 = icmp eq ptr %i.bk, null, !dbg !247247
  %i.bl = load ptr, ptr %i.av, align 8, !dbg !247248, !nonnull !4981, !noundef !4981 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !247249
  br i1 %.not62, label %bb.ac, label %bb.ab, !dbg !247250

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !247251
  invoke void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247251

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !247252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !247253
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %3, i1 noundef zeroext false, i64 noundef 16, i64 noundef 48)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247253

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load i64, ptr %i.c, align 8, !dbg !247253, !range !5041, !noundef !4981
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !247254
  %i.bo = load i64, ptr %i.aw, align 8, !dbg !247255, !range !5042, !noundef !4981 ; 3 uses
  br i1 %i.bn, label %bb.ae, label %bb.af, !dbg !247254, !prof !5043

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i64, ptr %i.ax, align 8, !dbg !247256
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bp) #53
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247257

bb.af:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.ax, align 8, !dbg !247258, !nonnull !4981, !noundef !4981
  %i.br = icmp samesign ule i64 %3, %i.bo, !dbg !247259
  call void @llvm.assume(i1 %i.br), !dbg !247260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !247261
  store i64 %i.bo, ptr %i.k, align 8, !dbg !247262
  store ptr %i.bq, ptr %i.ay, align 8, !dbg !247262
  store i64 0, ptr %i.az, align 8, !dbg !247262
  %i.bs = load ptr, ptr %i.ba, align 8, !dbg !247263, !nonnull !4981, !noundef !4981 ; 2 uses
  %i.bt = load i64, ptr %i.bb, align 8, !dbg !247264, !noundef !4981 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bt, 3, !dbg !247265
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx, !dbg !247265
  %.not110137 = icmp eq i64 %i.bt, 0, !dbg !247266
  br i1 %.not110137, label %._crit_edge, label %.lr.ph, !dbg !247159

.lr.ph:                                           ; preds = %bb.af, %bb.ba
  %.sroa.022.0138 = phi ptr [ %i.bv, %bb.ba ], [ %i.bs, %bb.af ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.022.0138, i64 8, !dbg !247267 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !247268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !247165
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemRINtBF_2PyNtNtB7_6string8PyStringEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.022.0138)
          to label %bb.aj unwind label %.thread108, !dbg !247269

._crit_edge:                                      ; preds = %bb.ba, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !247270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !247271
  %i.bw = load i64, ptr %i.al, align 8, !dbg !247272, !alias.scope !247162, !noundef !4981 ; 3 uses
  %i.bx = load i64, ptr %i.x, align 8, !dbg !247273, !range !5107, !alias.scope !247162, !noundef !4981
  %i.by = icmp eq i64 %i.bw, %i.bx, !dbg !247274
  br i1 %i.by, label %bb.ag, label %bb.bd, !dbg !247274

bb.ag:                                            ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowE8grow_oneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bd unwind label %bb.ah, !dbg !247275, !noalias !247164

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #55
          to label %.body84 unwind label %bb.ai, !dbg !247276

bb.ai:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !247277
  unreachable, !dbg !247277

.thread108:                                       ; preds = %.lr.ph
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.be, !dbg !247278

bb.aj:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.i, align 8, !dbg !247279, !range !5041, !noundef !4981
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !247280
  %.sroa.057.0.copyload = load ptr, ptr %i.bc, align 8, !dbg !247281 ; 6 uses
  br i1 %i.cd, label %bb.ak, label %bb.al, !dbg !247280

bb.ak:                                            ; preds = %bb.aj
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !247282
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !247283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.558.0..sroa_idx, i64 56, i1 false), !dbg !247282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !247284
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247283
  store ptr %.sroa.057.0.copyload, ptr %i.ce, align 8, !dbg !247283
  store i64 1, ptr %0, align 8, !dbg !247283
  br label %bb.aw, !dbg !247285

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !247284
  store ptr %.sroa.057.0.copyload, ptr %i.j, align 8, !dbg !247286
  %i.cf = icmp eq ptr %.sroa.057.0.copyload, @_Py_NoneStruct, !dbg !247287
  br i1 %i.cf, label %bb.an, label %bb.am, !dbg !247288

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python10conversion9any_value22py_object_to_any_value(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i1 noundef zeroext %4, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.ao, !dbg !247172

bb.an:                                            ; preds = %bb.al
  store i8 0, ptr %i.h, align 16, !dbg !247289
  br label %bb.as, !dbg !247290

bb.ao:                                            ; preds = %bb.am
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !247291

.thread:                                          ; preds = %bb.au, %bb.ao
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.co, %bb.au ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #49, !dbg !247292
  br label %bb.be, !dbg !247278

bb.ap:                                            ; preds = %bb.am
  %i.ch = load i64, ptr %i.b, align 16, !dbg !247293, !range !5041, !noundef !4981
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !247294
  br i1 %i.ci, label %bb.aq, label %bb.ar, !dbg !247294

bb.aq:                                            ; preds = %bb.ap
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !247295
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(64) %i.cj, i64 64, i1 false), !dbg !247297
  store i64 1, ptr %0, align 8, !dbg !247296
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #49, !dbg !247298
  br label %bb.aw, !dbg !247299

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.bd, i64 48, i1 false), !dbg !247172
  br label %bb.as, !dbg !247290

bb.as:                                            ; preds = %bb.ar, %bb.an
  %i.cl = load i64, ptr %i.az, align 8, !dbg !247300, !alias.scope !247175, !noundef !4981 ; 3 uses
  %i.cm = load i64, ptr %i.k, align 8, !dbg !247301, !range !5107, !alias.scope !247175, !noundef !4981
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !247302
  br i1 %i.cn, label %bb.at, label %bb.ba, !dbg !247302

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ba unwind label %bb.au, !dbg !247303, !noalias !247177

bb.au:                                            ; preds = %bb.at
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.h) #55
          to label %.thread unwind label %bb.av, !dbg !247304

bb.av:                                            ; preds = %bb.au
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !247305
  unreachable, !dbg !247305

bb.aw:                                            ; preds = %bb.aq, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !247291
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ay unwind label %bb.ax, !dbg !247306

bb.ax:                                            ; preds = %bb.aw
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body84 unwind label %bb.az, !dbg !247307

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !247308

bb.az:                                            ; preds = %bb.ax
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !247306
  unreachable, !dbg !247306

bb.ba:                                            ; preds = %bb.as, %bb.at
  %i.cs = load ptr, ptr %i.ay, align 8, !dbg !247309, !alias.scope !247175, !nonnull !4981, !noundef !4981
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %i.cl, !dbg !247310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ct, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !247311
  %i.cu = add i64 %i.cl, 1, !dbg !247312
  store i64 %i.cu, ptr %i.az, align 8, !dbg !247312, !alias.scope !247175
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #49, !dbg !247313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !247291
  %.not110 = icmp eq ptr %i.bv, %i.bu, !dbg !247266
  br i1 %.not110, label %._crit_edge, label %.lr.ph, !dbg !247159

end_hunk_0
