Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.08?download=true
inline.NumInlined: 6681
inline.NumDeleted: 2341
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMNtCs8tMIthlWNBj_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE10to_rfc3339CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 11 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  invoke void @_RNvMNtNtCs8tMIthlWNBj_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k, i32 noundef 0)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !11027)
  call void @llvm.experimental.noalias.scope.decl(metadata !11028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11029
  %i.x = load i32, ptr %i.m, align 4, !range !91, !alias.scope !11028, !noalias !11027, !noundef !17 ; 2 uses
  %i.y = ashr i32 %i.x, 13                        ; 3 uses
  store i32 %i.y, ptr %i.j, align 4, !noalias !11029
  %spec.select.i.i = icmp ult i32 %i.y, 10000
  br i1 %spec.select.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11029
  store ptr %i.j, ptr %i.i, align 8, !noalias !11029
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !11029
  %i.z = invoke noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @57, ptr noundef nonnull %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11029
  br i1 %i.z, label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.lhs.trunc.i = trunc nuw nsw i32 %i.y to i16   ; 2 uses
  %i.aa = udiv i16 %.lhs.trunc.i, 100
  %i.ab = urem i16 %.lhs.trunc.i, 100
  %i.ac = trunc nuw nsw i16 %i.aa to i8
  %i.ad = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.ac)
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.g
  br i1 %i.ad, label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.i

bb.h:                                             ; preds = %.noexc5, %.noexc
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11030, !noalias !11028, !noundef !17 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc4 unwind label %bb.c

.noexc4:                                          ; preds = %bb.h
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !11030, !noalias !11028, !nonnull !17, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 45, ptr %i.ah, align 1, !noalias !11028
  %i.ai = add nuw i64 %i.ae, 1
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11030, !noalias !11028
  %i.aj = lshr i32 %i.x, 3                        ; 2 uses
  %i.ak = and i32 %i.aj, 1023                     ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = icmp samesign ult i32 %i.ak, 733
  br i1 %i.am, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.noexc3
  %i.an = trunc nuw nsw i16 %i.ab to i8
  %i.ao = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.an)
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %bb.i
  br i1 %i.ao, label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.h

bb.j:                                             ; preds = %.noexc4
  %i.ap = getelementptr inbounds nuw i8, ptr @58, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !11029, !noundef !17 ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ak, %i.ar
  %i.at = lshr i32 %i.as, 6
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.au)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %bb.j
  br i1 %i.av, label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.l

bb.k:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #43
          to label %.noexc7 unwind label %bb.c

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc6
  %i.aw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11031, !noalias !11028, !noundef !17 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %bb.l
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !11031, !noalias !11028, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 45, ptr %i.az, align 1, !noalias !11028
  %i.ba = add nuw i64 %i.aw, 1
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11031, !noalias !11028
  %i.bb = trunc i32 %i.aj to i8
  %i.bc = add i8 %i.aq, %i.bb
  %i.bd = lshr i8 %i.bc, 1
  %i.be = and i8 %i.bd, 31
  %i.bf = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.be)
          to label %.noexc9 unwind label %bb.c

.noexc9:                                          ; preds = %.noexc8
  br i1 %i.bf, label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.bg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11032, !noalias !11028, !noundef !17 ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  call void @llvm.assume(i1 %i.bh)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc10 unwind label %bb.c

.noexc10:                                         ; preds = %bb.m
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !11032, !noalias !11028, !nonnull !17, !noundef !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 84, ptr %i.bj, align 1, !noalias !11028
  %i.bk = add nuw i64 %i.bg, 1
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11032, !noalias !11028
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !11028, !noalias !11027, !noundef !17 ; 3 uses
  %i.bn = urem i32 %i.bm, 60
  %i.bo = udiv i32 %i.bm, 60
  %i.bp = udiv i32 %i.bm, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11029
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !11028, !noalias !11027, !noundef !17 ; 3 uses
  %i.bs = icmp ugt i32 %i.br, 999999999           ; 2 uses
  %i.bt = add i32 %i.br, -1000000000
  %storemerge.i = select i1 %i.bs, i32 %i.bt, i32 %i.br ; 6 uses
  %i.bu = zext i1 %i.bs to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.bn, %i.bu
  store i32 %storemerge.i, ptr %i.h, align 4, !noalias !11029
  %i.bv = trunc i32 %i.bp to i8
  %i.bw = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.bv)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %.noexc10
  br i1 %i.bw, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.noexc11
  %i.bx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11033, !noalias !11028, !noundef !17 ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %bb.n
  %i.bz = urem i32 %i.bo, 60
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !11033, !noalias !11028, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  store i8 58, ptr %i.cb, align 1, !noalias !11028
  %i.cc = add nuw i64 %i.bx, 1
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11033, !noalias !11028
  %i.cd = trunc nuw nsw i32 %i.bz to i8
  %i.ce = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.cd)
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %.noexc12
  br i1 %i.ce, label %bb.w, label %bb.o

bb.o:                                             ; preds = %.noexc13
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11034, !noalias !11028, !noundef !17 ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %bb.o
  %i.ch = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !11034, !noalias !11028, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 58, ptr %i.ci, align 1, !noalias !11028
  %i.cj = add nuw i64 %i.cf, 1
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11034, !noalias !11028
  %i.ck = trunc nuw nsw i32 %.sroa.04.0.i to i8
  %i.cl = invoke noundef zeroext i1 @_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting14write_hundredsNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.ck)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %.noexc14
  br i1 %i.cl, label %bb.w, label %bb.q

bb.p:                                             ; preds = %.noexc19, %.noexc18, %.noexc17, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11029
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.b, align 4, !noalias !11029
  %i.cm = invoke noundef zeroext i1 @_RINvMs0_NtNtCs8tMIthlWNBj_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 0)
          to label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.c

bb.q:                                             ; preds = %.noexc15
  %i.cn = icmp eq i32 %storemerge.i, 0
  br i1 %i.cn, label %bb.p, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = urem i32 %storemerge.i, 1000000
  %i.cp = udiv exact i32 %storemerge.i, 1000000
  %i.cq = icmp eq i32 %i.co, 0
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11029
  store i32 %i.cp, ptr %i.g, align 4, !noalias !11029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11029
  store ptr %i.g, ptr %i.f, align 8, !noalias !11029
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !11029
  %i.cr = invoke noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @61, ptr noundef nonnull %i.f)
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11029
  br i1 %i.cr, label %bb.w, label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.cs = urem i32 %storemerge.i, 1000
  %i.ct = udiv exact i32 %storemerge.i, 1000
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11029
  store i32 %i.ct, ptr %i.e, align 4, !noalias !11029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11029
  store ptr %i.e, ptr %i.d, align 8, !noalias !11029
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !11029
  %i.cv = invoke noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @62, ptr noundef nonnull %i.d)
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11029
  br i1 %i.cv, label %bb.w, label %bb.p

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11029
  store ptr %i.h, ptr %i.c, align 8, !noalias !11029
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !11029
  %i.cw = invoke noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @63, ptr noundef nonnull %i.c)
          to label %.noexc19 unwind label %bb.c

.noexc19:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11029
  br i1 %i.cw, label %bb.w, label %bb.p

bb.w:                                             ; preds = %.noexc19, %.noexc18, %.noexc17, %.noexc15, %.noexc13, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11029
  br label %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %.noexc, %.noexc3, %.noexc5, %.noexc6, %.noexc9, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11029
  br label %bb.x

_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11029
  br i1 %i.cm, label %bb.x, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !26

bb.x:                                             ; preds = %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #43
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %bb.x
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtNtCs8tMIthlWNBj_6chrono6format10formatting13write_rfc3339NtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.y:                                             ; preds = %bb.c
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.z:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsPDBpS1owJq_14http_body_util9collectedINtB2_9CollectedNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE10push_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = load i64, ptr %1, align 8, !range !45, !noundef !17 ; 2 uses
  %.not = icmp eq i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = invoke noundef zeroext i1 @_RNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !11054)
  call void @llvm.experimental.noalias.scope.decl(metadata !11055)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !11056, !noundef !17
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !11056, !nonnull !17, !align !23, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !11056, !nonnull !17, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !11056, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !11056, !noundef !17
  call void %i.l(ptr noundef %i.i, ptr noundef %i.n, i64 noundef %i.p), !noalias !11056, !inline_history !1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE13push_back_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6P5GRezSnwZ_4http6header3map9HeaderMapINtNtCshmaE5oGZBqQ_9http_body5frame5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.f
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.h, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.af, %bb.n ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !11057)
  call void @llvm.experimental.noalias.scope.decl(metadata !11058)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !11059, !noundef !17
  %i.v = load ptr, ptr %i.d, align 8, !alias.scope !11059, !nonnull !17, !align !23, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !11059, !nonnull !17, !noundef !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !11059, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !11059, !noundef !17
  invoke void %i.x(ptr noundef %i.u, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h, %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.j:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i64 %i.e, ptr %i.ad, align 8
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.ad, i64 96, i1 false)
  %i.ae = load i64, ptr %0, align 8, !range !45, !noundef !17
  %.not12 = icmp eq i64 %i.ae, -1
  br i1 %.not12, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvXs6_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMapINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !range !19, !noundef !17
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8, !range !19
  %i.ai = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6P5GRezSnwZ_4http6header3map9HeaderMapINtNtCshmaE5oGZBqQ_9http_body5frame5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit

.thread:                                          ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.ad, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6P5GRezSnwZ_4http6header3map9HeaderMapINtNtCshmaE5oGZBqQ_9http_body5frame5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6P5GRezSnwZ_4http6header3map9HeaderMapINtNtCshmaE5oGZBqQ_9http_body5frame5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %i.b) #44
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !11060)
  call void @llvm.experimental.noalias.scope.decl(metadata !11061)
  call void @llvm.experimental.noalias.scope.decl(metadata !11062)
  %i.aj = load i64, ptr %i.ad, align 8, !range !45, !alias.scope !11063, !noundef !17
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !11064)
  call void @llvm.experimental.noalias.scope.decl(metadata !11065)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_0
