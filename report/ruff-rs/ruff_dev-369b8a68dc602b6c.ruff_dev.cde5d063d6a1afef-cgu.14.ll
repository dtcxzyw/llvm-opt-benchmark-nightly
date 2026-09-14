Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.14?download=true
inline.NumInlined: 1259
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCshFZivb7RUAJ_8ruff_dev13generate_docs4main:bb.a
          cleanup
  br label %.body212

bb.bf:                                            ; preds = %bb.az
  %i.iv = extractvalue { ptr, i64 } %i.is, 0
  %i.iw = extractvalue { ptr, i64 } %i.is, 1
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.iv, i64 noundef %i.iw)
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.ix = load ptr, ptr %.sroa.495.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.iy = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iy)
          to label %bb.bi unwind label %bb.bh

.body207:                                         ; preds = %bb.bk, %bb.bh, %bb.bj
  %.pn156 = phi { ptr, i32 } [ %i.ja, %bb.bj ], [ %i.iz, %bb.bh ], [ %i.jb, %bb.bk ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw) #30
          to label %.body212 unwind label %bb.by

bb.bh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i206, %bb.bg
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr %i.bw, ptr %i.bu, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  store ptr %i.bv, ptr %i.ed, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bx, ptr noundef nonnull @114, ptr noundef nonnull %i.bu)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit204 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv) #30
          to label %.body207 unwind label %bb.by

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit204: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i206 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit204
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body207 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i206: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit204
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit209 unwind label %bb.bh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit209: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i211 unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit209
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body212 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i211: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit209
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit214 unwind label %bb.be

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit214: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.jf = invoke { ptr, i64 } @_RNvXsh_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_6LinterNtB5_13RuleNamespace4name(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ce)
          to label %bb.bp unwind label %bb.bo     ; 2 uses

bb.bo:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit214
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by) #30
          to label %.body212 unwind label %bb.by

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit214
  %i.jh = extractvalue { ptr, i64 } %i.jf, 0
  %i.ji = extractvalue { ptr, i64 } %i.jf, 1
  store ptr %i.jh, ptr %i.bt, align 8
  store i64 %i.ji, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr %i.bt, ptr %i.bs, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.4109.0..sroa_idx, align 8
  store ptr %i.by, ptr %i.ef, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.jj = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @89, ptr noundef nonnull @115, ptr noundef nonnull %i.bs)
          to label %bb.bq unwind label %bb.bo     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.jk = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1742, !noundef !5 ; 4 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.br unwind label %bb.bo

bb.br:                                            ; preds = %bb.bq
  %i.jm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1742, !nonnull !5, !noundef !5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 10, ptr %i.jn, align 1
  %i.jo = add nuw nsw i64 %i.jk, 1                ; 2 uses
  store i64 %i.jo, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1742
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.bs unwind label %bb.bo

bb.bs:                                            ; preds = %bb.br
  %i.jp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1743, !nonnull !5, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  store i8 10, ptr %i.jq, align 1
  %i.jr = add nuw i64 %i.jk, 2
  store i64 %i.jr, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1743
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i217 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body212 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i217: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit220 unwind label %bb.be

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit220: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i222 unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit220
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %.body194 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i222: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit220
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit225 unwind label %.loopexit371

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit225: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit225
  %i.jw = invoke noundef zeroext i1 @_RNvMs65_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_4Rule13is_deprecated(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.dd)
          to label %bb.bz unwind label %.loopexit371

bb.by:                                            ; preds = %bb.kz, %.thread, %.body288, %.body282, %.body277, %bb.jm, %bb.ji, %bb.jf, %bb.jc, %.body268, %bb.cr, %bb.bo, %bb.bj, %.body207, %.body212, %bb.ak, %bb.v, %.body, %.body189, %.body194
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.jw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 77)
          to label %bb.cc unwind label %.loopexit371

bb.cb:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit227, %bb.bz
  %i.jy = invoke noundef zeroext i1 @_RNvMs65_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_4Rule10is_removed(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.dd)
          to label %bb.ce unwind label %.loopexit371

bb.cc:                                            ; preds = %bb.ca
  %i.jz = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1744, !noundef !5 ; 5 uses
  %1 = icmp sgt i64 %i.jz, -1
  call void @llvm.assume(i1 %1)
  %i.ka = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1744, !nonnull !5, !noundef !5
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(77) %i.kb, ptr noundef nonnull align 1 dereferenceable(77) @117, i64 77, i1 false)
  %i.kc = add nuw nsw i64 %i.jz, 77               ; 2 uses
  store i64 %i.kc, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1744
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.cd unwind label %.loopexit371

bb.cd:                                            ; preds = %bb.cc
  %i.kd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1745, !nonnull !5, !noundef !5
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc
  store i8 10, ptr %i.ke, align 1
  %i.kf = add nuw nsw i64 %i.jz, 78               ; 2 uses
  store i64 %i.kf, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1745
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit227 unwind label %.loopexit371

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit227: ; preds = %bb.cd
  %i.kg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1746, !nonnull !5, !noundef !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kf
  store i8 10, ptr %i.kh, align 1
  %i.ki = add nuw i64 %i.jz, 79
  store i64 %i.ki, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1746
  br label %bb.cb

bb.ce:                                            ; preds = %bb.cb
  br i1 %i.jy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 103)
          to label %bb.ch unwind label %.loopexit371

bb.cg:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit231, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.kj = invoke noundef i8 @_RNvMsk_NtCsEhZmuQNqkz_11ruff_linter5codesNtB5_4Rule7fixable(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.dd)
          to label %bb.cj unwind label %.loopexit371 ; 2 uses

bb.ch:                                            ; preds = %bb.cf
  %i.kk = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1747, !noundef !5 ; 5 uses
  %2 = icmp sgt i64 %i.kk, -1
  call void @llvm.assume(i1 %2)
  %i.kl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1747, !nonnull !5, !noundef !5
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %i.km, ptr noundef nonnull align 1 dereferenceable(103) @118, i64 103, i1 false)
  %i.kn = add nuw nsw i64 %i.kk, 103              ; 2 uses
  store i64 %i.kn, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1747
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.ci unwind label %.loopexit371

bb.ci:                                            ; preds = %bb.ch
  %i.ko = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1748, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kn
  store i8 10, ptr %i.kp, align 1
  %i.kq = add nuw nsw i64 %i.kk, 104              ; 2 uses
  store i64 %i.kq, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1748
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit231 unwind label %.loopexit371

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit231: ; preds = %bb.ci
  %i.kr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1749, !nonnull !5, !noundef !5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kq
  store i8 10, ptr %i.ks, align 1
  %i.kt = add nuw i64 %i.kk, 105
  store i64 %i.kt, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1749
  br label %bb.cg

bb.cj:                                            ; preds = %bb.cg
  store i8 %i.kj, ptr %i.br, align 1
  %i.ku = icmp eq i8 %i.kj, 2
  br i1 %i.ku, label %bb.cw, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1750
  store i64 0, ptr %i.ay, align 8, !noalias !1750
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i232, align 8, !noalias !1750
  store i64 0, ptr %.sroa.53.0..sroa_idx.i233, align 8, !noalias !1750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1750
  store i32 1610612768, ptr %i.eg, align 8, !noalias !1750
  store i16 0, ptr %.sroa.4.0..sroa_idx.i234, align 4, !noalias !1750
  store i16 0, ptr %.sroa.5.0..sroa_idx.i235, align 2, !noalias !1750
  store ptr %i.ay, ptr %i.ax, align 8, !noalias !1750
  store ptr @89, ptr %i.eh, align 8, !noalias !1750
  %i.kv = invoke noundef zeroext i1 @_RNvXNtCsEhZmuQNqkz_11ruff_linter9violationNtB2_15FixAvailabilityNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.cm unwind label %.loopexit386, !noalias !1751

.loopexit386:                                     ; preds = %bb.ck
  %lpad.loopexit388 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp387:                            ; preds = %bb.cn
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.split-lp387, %.loopexit386
  %lpad.phi390 = phi { ptr, i32 } [ %lpad.loopexit388, %.loopexit386 ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp387 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay) #30
          to label %.body194 unwind label %bb.co, !noalias !1751

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.kv, label %bb.cn, label %bb.cp, !prof !6

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #29
          to label %.noexc.i236 unwind label %.loopexit.split-lp387, !noalias !1751

.noexc.i236:                                      ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cl
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1751
  unreachable

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1750
  %i.kx = load ptr, ptr %i.ei, align 8, !nonnull !5, !noundef !5
  %i.ky = load i64, ptr %i.ej, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %i.ky)
          to label %.noexc unwind label %bb.cr

.noexc:                                           ; preds = %bb.cp
  %i.kz = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1753, !noundef !5 ; 3 uses
  %i.la = icmp sgt i64 %i.kz, -1
  call void @llvm.assume(i1 %i.la)
  %.not.i = icmp eq i64 %i.ky, 0
  br i1 %.not.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %.noexc
  %i.lb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1753, !nonnull !5, !noundef !5
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lc, ptr nonnull readonly align 1 %i.kx, i64 %i.ky, i1 false)
  %.pre.i239 = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1753
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq) #30
          to label %.body194 unwind label %bb.by

bb.cs:                                            ; preds = %bb.cq, %.noexc
  %i.le = phi i64 [ %.pre.i239, %bb.cq ], [ %i.kz, %.noexc ]
  %i.lf = add i64 %i.le, %i.ky
  store i64 %i.lf, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1753
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i242 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body194 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i242: ; preds = %bb.cs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit246 unwind label %.loopexit371

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit246: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.li = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1754, !noundef !5 ; 4 uses
  %i.lj = icmp sgt i64 %i.li, -1
  call void @llvm.assume(i1 %i.lj)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.cv unwind label %.loopexit371

bb.cv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit246
  %i.lk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1754, !nonnull !5, !noundef !5
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.li
  store i8 10, ptr %i.ll, align 1
  %i.lm = add nuw nsw i64 %i.li, 1                ; 2 uses
  store i64 %i.lm, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1754
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit250 unwind label %.loopexit371

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit250: ; preds = %bb.cv
  %i.ln = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1755, !nonnull !5, !noundef !5
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lm
  store i8 10, ptr %i.lo, align 1
  %i.lp = add nuw i64 %i.li, 2
  store i64 %i.lp, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1755
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit250, %bb.cj
  %i.lq = invoke noundef zeroext i1 @_RNvMs65_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_4Rule10is_preview(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.dd)
          to label %bb.cx unwind label %.loopexit371

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.lq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 96)
          to label %bb.da unwind label %.loopexit371

bb.cz:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit257, %bb.cx
  %i.lr = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go)
          to label %bb.dc unwind label %.loopexit371 ; 2 uses

bb.da:                                            ; preds = %bb.cy
  %i.ls = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1756, !noundef !5 ; 5 uses
  %3 = icmp sgt i64 %i.ls, -1
  call void @llvm.assume(i1 %3)
  %i.lt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1756, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.lu, ptr noundef nonnull align 1 dereferenceable(96) @119, i64 96, i1 false)
  %i.lv = add nuw nsw i64 %i.ls, 96               ; 2 uses
  store i64 %i.lv, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1756
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %bb.db unwind label %.loopexit371

bb.db:                                            ; preds = %bb.da
  %i.lw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1757, !nonnull !5, !noundef !5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lv
  store i8 10, ptr %i.lx, align 1
  %i.ly = add nuw nsw i64 %i.ls, 97               ; 2 uses
  store i64 %i.ly, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1757
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit257 unwind label %.loopexit371

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit257: ; preds = %bb.db
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1758, !nonnull !5, !noundef !5
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  store i8 10, ptr %i.ma, align 1
  %i.mb = add nuw i64 %i.ls, 98
  store i64 %i.mb, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1758
  br label %bb.cz

bb.dc:                                            ; preds = %bb.cz
  %i.mc = extractvalue { ptr, i64 } %i.lr, 0      ; 10 uses
  %i.md = extractvalue { ptr, i64 } %i.lr, 1      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_RNvMs65_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_4Rule9noqa_code(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bo, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.dd)
          to label %bb.dd unwind label %.loopexit371

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1759
  store i64 0, ptr %i.aw, align 8, !noalias !1759
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i258, align 8, !noalias !1759
  store i64 0, ptr %.sroa.53.0..sroa_idx.i259, align 8, !noalias !1759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1759
  store i32 1610612768, ptr %i.ek, align 8, !noalias !1759
  store i16 0, ptr %.sroa.4.0..sroa_idx.i260, align 4, !noalias !1759
  store i16 0, ptr %.sroa.5.0..sroa_idx.i261, align 2, !noalias !1759
  store ptr %i.aw, ptr %i.av, align 8, !noalias !1759
  store ptr @89, ptr %i.el, align 8, !noalias !1759
  %i.me = invoke noundef zeroext i1 @_RNvXs0_NtCsEhZmuQNqkz_11ruff_linter5codesNtB5_8NoqaCodeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.df unwind label %.loopexit391, !noalias !1760

.loopexit391:                                     ; preds = %bb.dd
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp392:                            ; preds = %bb.dg
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.de:                                            ; preds = %.loopexit.split-lp392, %.loopexit391
  %lpad.phi395 = phi { ptr, i32 } [ %lpad.loopexit393, %.loopexit391 ], [ %lpad.loopexit.split-lp394, %.loopexit.split-lp392 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #30
          to label %.body194 unwind label %bb.dh, !noalias !1760

bb.df:                                            ; preds = %bb.dd
  br i1 %i.me, label %bb.dg, label %bb.di, !prof !6

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #29
          to label %.noexc.i262 unwind label %.loopexit.split-lp392, !noalias !1760

.noexc.i262:                                      ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.de
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1760
  unreachable

bb.di:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1759
  %i.mg = load ptr, ptr %i.em, align 8, !nonnull !5, !noundef !5
  %i.mh = load i64, ptr %i.en, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.mg, ptr %i.au, align 8, !noalias !1764
  store i64 %i.mh, ptr %i.eo, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1764
  store i64 0, ptr %i.at, align 8, !noalias !1764
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !1764
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1764
  %i.mi = load i8, ptr %i.eq, align 8, !range !12, !noalias !1765, !noundef !5
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %._crit_edge265.i, label %bb.dj, !prof !8

._crit_edge265.i:                                 ; preds = %bb.di
  %.pre.i267 = load i64, ptr %i.ep, align 8, !noalias !1766
  %.pre266.i = load i64, ptr %i.er, align 8, !noalias !1766
  br label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.mk = invoke { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc184.i unwind label %bb.dm ; 2 uses

.noexc184.i:                                      ; preds = %bb.dj
  %i.ml = extractvalue { i64, i64 } %i.mk, 0      ; 2 uses
  %i.mm = extractvalue { i64, i64 } %i.mk, 1      ; 2 uses
  store i64 %i.ml, ptr %i.ep, align 8, !noalias !1767
  store i64 %i.mm, ptr %i.er, align 8, !noalias !1767
  store i8 1, ptr %i.eq, align 8, !noalias !1767
  br label %bb.dn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetReEECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %.body141.i, %bb.dm
  %.pn137.pn.pn.i = phi { ptr, i32 } [ %i.mp, %bb.dm ], [ %.pn137.pn.i, %.body141.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i343 unwind label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetReEECshFZivb7RUAJ_8ruff_dev.exit.i
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body344 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i343: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetReEECshFZivb7RUAJ_8ruff_dev.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body268 unwind label %bb.hw

bb.dm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev.exit.i, %bb.dj
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetReEECshFZivb7RUAJ_8ruff_dev.exit.i

bb.dn:                                            ; preds = %.noexc184.i, %._crit_edge265.i
  %i.mq = phi i64 [ %.pre266.i, %._crit_edge265.i ], [ %i.mm, %.noexc184.i ]
  %i.mr = phi i64 [ %.pre.i267, %._crit_edge265.i ], [ %i.ml, %.noexc184.i ] ; 2 uses
  %i.ms = add i64 %i.mr, 1
  store i64 %i.ms, ptr %i.ep, align 8, !noalias !1766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @16, i64 32, i1 false), !noalias !1764
  store i64 %i.mr, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1764
  store i64 %i.mq, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1764
  invoke void @_RNvMs3_NtNtCs44bUZaa7qIB_5regex5regex6stringNtB5_5Regex3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 23)
          to label %bb.dp unwind label %bb.do

.body141.i:                                       ; preds = %bb.hf, %.body.i, %.body144.i, %bb.dr, %bb.do
  %.pn137.pn.i = phi { ptr, i32 } [ %.pn137.i, %.body.i ], [ %eh.lpad-body145.i, %.body144.i ], [ %i.mx, %bb.dr ], [ %i.mt, %bb.do ], [ %i.sz, %bb.hf ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetReEECshFZivb7RUAJ_8ruff_dev.exit.i unwind label %bb.hw

bb.do:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.dn
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body141.i

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.mu = load ptr, ptr %i.ap, align 8, !alias.scope !1769, !noalias !1770, !noundef !5
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.dq, label %bb.du, !prof !6

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1771
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.mw, i64 24, i1 false), !noalias !1770
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 43, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #29
          to label %bb.ds unwind label %bb.dr, !noalias !1772

bb.dr:                                            ; preds = %bb.dq
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs44bUZaa7qIB_5regex5error5ErrorECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #30
          to label %.body141.i unwind label %bb.dt, !noalias !1772

bb.ds:                                            ; preds = %bb.dq
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1772
  unreachable

bb.du:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !alias.scope !1772, !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1764
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1776
end_hunk_0
