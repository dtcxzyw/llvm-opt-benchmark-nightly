Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_graph-16977beae1024313.ruff_graph.63996861029cb498-cgu.01?download=true
inline.NumInlined: 161
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsd_NtCsb9zoKkpXuBA_3zip5writeINtNtB6_10zip_writer9ZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE10start_fileReuECs8yaccCKGz54_10ruff_graph:bb.a
  br label %.critedge160.thread.i

bb.g:                                             ; preds = %.noexc26
  %i.be = getelementptr i8, ptr %i.ba, i64 24
  %.val.i = load i64, ptr %i.be, align 8, !noalias !69, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false), !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !67
  store i64 0, ptr %i.ab, align 8, !noalias !67
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bf, align 8, !noalias !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 7 uses
  store i64 0, ptr %i.bg, align 8, !noalias !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 50
  %i.bi = load i8, ptr %i.bh, align 2, !range !6, !alias.scope !66, !noalias !70, !noundef !3
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_RNvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB2_24Zip64ExtendedInformation9new_local.exit.i, label %bb.o

_RNvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB2_24Zip64ExtendedInformation9new_local.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !67
  store i64 1, ptr %i.aa, align 8, !noalias !67
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !67
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !67
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !67
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !67
  %.sroa.10196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i16 1, ptr %.sroa.10196.0..sroa_idx.i, align 8, !noalias !67
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 16, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !67
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !67
  %i.bk = invoke { ptr, i64 } @_RNvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB2_24Zip64ExtendedInformation9serialize(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa)
          to label %bb.h unwind label %bb.f, !noalias !69 ; 2 uses

bb.h:                                             ; preds = %_RNvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB2_24Zip64ExtendedInformation9new_local.exit.i
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1      ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  store i64 %i.bm, ptr %i.z, align 8, !noalias !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bo, align 8, !noalias !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %i.bm, ptr %i.bp, align 8, !noalias !67
  %i.bq = load ptr, ptr %i.bf, align 8, !noalias !67, !nonnull !3, !noundef !3
  %i.br = load i64, ptr %i.bg, align 8, !noalias !67, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.br)
          to label %.noexc.i unwind label %bb.r, !noalias !69

.noexc.i:                                         ; preds = %bb.h
  %i.bs = load i64, ptr %i.bp, align 8, !alias.scope !71, !noalias !67, !noundef !3 ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  call void @llvm.assume(i1 %i.bt)
  %.not.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  %i.bu = load ptr, ptr %i.bo, align 8, !alias.scope !71, !noalias !67, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.bq, i64 %i.br, i1 false), !noalias !69
  %.pre.i.i = load i64, ptr %i.bp, align 8, !alias.scope !71, !noalias !67
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8yaccCKGz54_10ruff_graph.exit.i.i: ; preds = %bb.n, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ca, %bb.n ], [ %i.by, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !67
  br label %.critedge160.thread.i

bb.j:                                             ; preds = %bb.i, %.noexc.i
  %i.bw = phi i64 [ %.pre.i.i, %bb.i ], [ %i.bs, %.noexc.i ]
  %i.bx = add i64 %i.bw, %i.br
  store i64 %i.bx, ptr %i.bp, align 8, !alias.scope !71, !noalias !67
  store i64 0, ptr %i.bg, align 8, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !67
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.l unwind label %bb.k, !noalias !69

bb.k:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8yaccCKGz54_10ruff_graph.exit.i.i unwind label %bb.m, !noalias !69

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i unwind label %bb.n, !noalias !69

bb.m:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !69
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8yaccCKGz54_10ruff_graph.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !67
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.cc = load i16, ptr %i.cb, align 8, !range !63, !alias.scope !66, !noalias !70, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 42
  %i.ce = load i16, ptr %i.cd, align 2, !alias.scope !66, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !74
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc174.i unwind label %bb.f, !noalias !69

.noexc174.i:                                      ; preds = %bb.o
  %i.cf = load i64, ptr %i.f, align 8, !range !4, !noalias !74, !noundef !3
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !7, !noalias !74, !noundef !3 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.cg, label %bb.p, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i.i, !prof !8

bb.p:                                             ; preds = %.noexc174.i
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !74
  br label %.invoke.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i.i: ; preds = %.noexc174.i
  %i.cl = load ptr, ptr %i.cj, align 8, !noalias !74, !nonnull !3, !noundef !3 ; 2 uses
  %i.cm = icmp ule i64 %3, %i.ci
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !74
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !75
  br label %bb.t

bb.r:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.z) #19
          to label %.critedge160.thread.i unwind label %bb.s, !noalias !69

bb.s:                                             ; preds = %.critedge160.thread.i, %.critedge159.i, %bb.dq, %bb.do, %bb.dm, %bb.cy, %bb.cx, %bb.ag, %bb.r
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !69
  unreachable

bb.t:                                             ; preds = %bb.q, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i.i
  store i64 %i.ci, ptr %i.x, align 8, !alias.scope !76, !noalias !67
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cl, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !76, !noalias !67
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !76, !noalias !67
  %i.cp = icmp sgt i64 %3, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw i64 %3, 30
  %i.cr = add i64 %i.cq, %.val.i                  ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i.i unwind label %bb.u, !noalias !69

bb.u:                                             ; preds = %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.critedge160.thread.i unwind label %bb.v, !noalias !69

bb.v:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !69
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i unwind label %bb.f, !noalias !69

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !67
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.cv = load i16, ptr %i.cu, align 8, !alias.scope !66, !noalias !70, !noundef !3 ; 4 uses
  %i.cw = icmp ugt i16 %i.cv, 1
  %.pre264.i = load i64, ptr %i.bg, align 8, !noalias !67 ; 6 uses
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i
  %i.cx = icmp sgt i64 %.pre264.i, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = zext i16 %i.cv to i64                   ; 5 uses
  %i.cz = add i64 %.pre264.i, %i.cr
  %i.da = urem i64 %i.cz, %i.cy                   ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.am, %bb.ac, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i
  %i.dc = phi i64 [ %.pre264.i, %bb.ac ], [ %.pre.i, %bb.am ], [ %.pre264.i, %bb.w ], [ %.pre264.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i ] ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !67
  %i.de = load ptr, ptr %i.bf, align 8, !noalias !67, !nonnull !3, !noundef !3
  invoke void @_RINvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, i64 noundef %.val.i, i64 noundef 0, i64 undef, i64 noundef 0, i16 noundef %i.cc, i16 %i.ce, i64 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.dc)
          to label %bb.an unwind label %bb.f, !noalias !69

bb.y:                                             ; preds = %bb.ah
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.df = sub nuw nsw i64 %i.cy, %i.da            ; 3 uses
  %i.dg = icmp samesign ult i64 %i.df, 6
  br i1 %i.dg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dh = add nuw nsw i64 %i.df, %i.cy            ; 3 uses
  %i.di = icmp samesign ult i64 %i.dh, 6
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = add nuw nsw i64 %i.dh, %i.cy            ; 3 uses
  %i.dk = icmp samesign ult i64 %i.dj, 6
  %i.dl = add nuw nsw i64 %i.dj, %i.cy
  %spec.select = select i1 %i.dk, i64 %i.dl, i64 %i.dj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.018.0.i.lcssa = phi i64 [ %i.df, %bb.z ], [ %i.dh, %bb.aa ], [ %spec.select, %bb.ab ] ; 2 uses
  %i.dm = add nuw i64 %.sroa.018.0.i.lcssa, %.pre264.i
  %i.dn = icmp ugt i64 %i.dm, 65535
  br i1 %i.dn, label %bb.x, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !67
  %i.do = add nsw i64 %.sroa.018.0.i.lcssa, -4    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 -65536, 65537) %i.do, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc179.i unwind label %bb.f, !noalias !69

.noexc179.i:                                      ; preds = %bb.ad
  %i.dp = load i64, ptr %i.e, align 8, !range !4, !noalias !78, !noundef !3
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !7, !noalias !78, !noundef !3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dq, label %bb.ae, label %bb.af, !prof !8

bb.ae:                                            ; preds = %.noexc179.i
  %i.du = load i64, ptr %i.dt, align 8, !noalias !78
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ae, %bb.p
  %i.dv = phi i64 [ %i.ds, %bb.ae ], [ %i.ci, %bb.p ]
  %i.dw = phi i64 [ %i.du, %bb.ae ], [ %i.ck, %bb.p ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dw) #20
          to label %.cont.i unwind label %bb.f, !noalias !69

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.af:                                            ; preds = %.noexc179.i
  %i.dx = load ptr, ptr %i.dt, align 8, !noalias !78, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78
  store i64 %i.ds, ptr %i.w, align 8, !alias.scope !77, !noalias !67
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !77, !noalias !67
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store i64 %i.do, ptr %i.dz, align 8, !alias.scope !77, !noalias !67
  %.sroa.022.0.extract.trunc.i = trunc i16 %i.cv to i8
  store i8 %.sroa.022.0.extract.trunc.i, ptr %i.dx, align 1, !noalias !69
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !67, !noundef !3 ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 1
  br i1 %i.eb, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ai, %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w) #19
          to label %.critedge160.thread.i unwind label %bb.s, !noalias !69

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.y unwind label %bb.ag, !noalias !69

bb.ai:                                            ; preds = %bb.af
  %.sroa.423.0.extract.shift.i = lshr i16 %i.cv, 8
  %.sroa.423.0.extract.trunc.i = trunc nuw i16 %.sroa.423.0.extract.shift.i to i8
  %i.ed = load ptr, ptr %i.dy, align 8, !noalias !67, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %.sroa.423.0.extract.trunc.i, ptr %i.ee, align 1, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !67
  %i.ef = load ptr, ptr %i.dy, align 8, !noalias !67, !nonnull !3, !noundef !3
  %i.eg = load i64, ptr %i.dz, align 8, !noalias !67, !noundef !3
  invoke void @_RNvMs2_NtCsb9zoKkpXuBA_3zip5writeNtB5_19ExtendedFileOptions24add_extra_data_unchecked(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i16 noundef -24290, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef %i.eg)
          to label %bb.aj unwind label %bb.ag, !noalias !69

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i64, ptr %i.v, align 8, !range !5, !noalias !67, !noundef !3
  %.not135.i = icmp eq i64 %i.eh, -2
  br i1 %.not135.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %.critedge.i unwind label %bb.f, !noalias !69

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %bb.am unwind label %bb.f, !noalias !69

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !67
  %.pre.i = load i64, ptr %i.bg, align 8, !noalias !67
  br label %bb.x

.critedge.i:                                      ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !67
  br label %bb.de

.thread233.i:                                     ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockyE15get_or_try_initNCINvB2_11get_or_initNCINvMsd_NtCsb9zoKkpXuBA_3zip5writeINtNtB1G_10zip_writer9ZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE11start_entryReuE0E0zECs8yaccCKGz54_10ruff_graph.exit.i, %bb.cs, %bb.cb, %bb.ca, %bb.bx, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bk, %bb.bh, %bb.bf, %bb.bc, %bb.bb, %bb.ay, %bb.at, %bb.as, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i
  %.sroa.086.7.ph.i = phi i8 [ 1, %bb.bf ], [ 1, %bb.bh ], [ 1, %bb.bk ], [ 1, %bb.bo ], [ 0, %bb.bq ], [ 0, %bb.br ], [ %.sroa.086.9.i, %bb.bn ], [ %.sroa.086.9.i, %bb.bx ], [ 1, %bb.bc ], [ %.sroa.086.9.i, %bb.ca ], [ %.sroa.086.9.i, %bb.cb ], [ %.sroa.086.9.i, %bb.cs ], [ %.sroa.086.9.i, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockyE15get_or_try_initNCINvB2_11get_or_initNCINvMsd_NtCsb9zoKkpXuBA_3zip5writeINtNtB1G_10zip_writer9ZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE11start_entryReuE0E0zECs8yaccCKGz54_10ruff_graph.exit.i ], [ 1, %bb.bb ], [ 1, %bb.ay ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i ], [ 1, %bb.as ], [ 1, %bb.at ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge160.i

bb.an:                                            ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4339
  %i.ej = load i8, ptr %i.ei, align 1, !range !6, !alias.scope !65, !noalias !79, !noundef !3
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !range !80, !alias.scope !66, !noalias !70
  %i.en = trunc nuw nsw i32 %i.em to i8
  %.sroa.027.0.i = select i1 %i.ek, i8 %i.en, i8 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 222
  store i8 %.sroa.027.0.i, ptr %i.eo, align 2, !noalias !67
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 225 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !67, !noundef !3
  %i.er = invoke noundef i16 @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.u)
          to label %bb.ao unwind label %bb.dh, !noalias !69

bb.ao:                                            ; preds = %bb.an
  %i.es = trunc i16 %i.er to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.es, i8 %i.eq)
  store i8 %.sroa.0.0.i.i, ptr %i.ep, align 1, !noalias !67
  %i.et = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %i.et, align 8, !noalias !67
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %i.cr, ptr %i.eu, align 8, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(232) %i.u, i64 232, i1 false), !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !67
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4200 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.ex = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE12get_index_ofBO_ECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %bb.ap unwind label %bb.au, !noalias !81

bb.ap:                                            ; preds = %bb.ao
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  store ptr %i.fa, ptr %i.c, align 8, !noalias !82
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs8yaccCKGz54_10ruff_graph, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !82
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @14, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i unwind label %bb.au, !noalias !81

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  %i.fb = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %bb.as unwind label %bb.au, !noalias !81 ; 2 uses

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  %.sroa.0197.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !83 ; 2 uses
  %.sroa.6198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.fc = load <2 x i64>, ptr %.sroa.6198.0..sroa_idx.i, align 8, !noalias !83
  %.sroa.6198.0.copyload.i = load i64, ptr %.sroa.6198.0..sroa_idx.i, align 8, !noalias !83
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.t)
          to label %bb.aw unwind label %.thread233.i, !noalias !69

bb.as:                                            ; preds = %bb.ar
  %i.fd = extractvalue { ptr, i64 } %i.fb, 0
  %i.fe = extractvalue { ptr, i64 } %i.fb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 232, i1 false), !noalias !84
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE11insert_fullCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noalias noundef nonnull %i.fd, i64 noundef %i.fe, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
          to label %.noexc182.i unwind label %.thread233.i, !noalias !69

.noexc182.i:                                      ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  %i.ff = load i64, ptr %i.b, align 8, !noalias !82, !noundef !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !range !9, !alias.scope !85, !noalias !82, !noundef !3
  %i.fi = icmp eq i64 %i.fh, 2
  br i1 %i.fi, label %.thread237.i, label %bb.at

bb.at:                                            ; preds = %.noexc182.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.fg)
          to label %.thread237.i unwind label %.thread233.i, !noalias !69

.thread237.i:                                     ; preds = %bb.at, %.noexc182.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !67
  br label %bb.ay

bb.au:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.t) #19
          to label %.critedge160.thread.i unwind label %bb.av, !noalias !81

bb.av:                                            ; preds = %bb.au
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !81
  unreachable

bb.aw:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !67
end_hunk_0
