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

bb.s:                                             ; preds = %.critedge160.thread.i, %.critedge159.i, %bb.dp, %bb.dn, %bb.dl, %bb.cx, %bb.cw, %bb.af, %bb.r
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
  %i.cy = zext i16 %i.cv to i64                   ; 8 uses
  %i.cz = add i64 %.pre264.i, %i.cr
  %i.da = urem i64 %i.cz, %i.cy                   ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.al, %bb.ab, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i
  %i.dc = phi i64 [ %.pre264.i, %bb.ab ], [ %.pre.i, %bb.al ], [ %.pre264.i, %bb.w ], [ %.pre264.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8yaccCKGz54_10ruff_graph.exit.i ] ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !67
  %i.de = load ptr, ptr %i.bf, align 8, !noalias !67, !nonnull !3, !noundef !3
  invoke void @_RINvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, i64 noundef %.val.i, i64 noundef 0, i64 undef, i64 noundef 0, i16 noundef %i.cc, i16 %i.ce, i64 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.dc)
          to label %bb.am unwind label %bb.f, !noalias !69

bb.y:                                             ; preds = %bb.ag
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.df = sub nuw nsw i64 %i.cy, %i.da            ; 3 uses
  %5 = icmp samesign ult i64 %i.df, 6
  br i1 %5, label %6, label %bb.ab

6:                                                ; preds = %bb.z
  %7 = add nuw nsw i64 %i.df, %i.cy               ; 3 uses
  %8 = icmp samesign ult i64 %7, 6
  br i1 %8, label %9, label %bb.ab

9:                                                ; preds = %6
  %10 = add nuw nsw i64 %7, %i.cy                 ; 3 uses
  %11 = icmp samesign ult i64 %10, 6
  br i1 %11, label %12, label %bb.ab

12:                                               ; preds = %9
  %13 = add nuw nsw i64 %10, %i.cy                ; 3 uses
  %14 = icmp samesign ult i64 %13, 6
  br i1 %14, label %15, label %bb.ab

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %13, %i.cy                ; 3 uses
  %17 = icmp samesign ult i64 %16, 6
  br i1 %17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %15
  %18 = add nuw nsw i64 %16, %i.cy                ; 3 uses
  %i.dg = icmp samesign ult i64 %18, 6
  %i.dh = add nuw nsw i64 %18, %i.cy
  %spec.select = select i1 %i.dg, i64 %i.dh, i64 %18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %15, %12, %9, %6, %bb.z
  %.sroa.018.0.i.lcssa = phi i64 [ %i.df, %bb.z ], [ %7, %6 ], [ %10, %9 ], [ %13, %12 ], [ %16, %15 ], [ %spec.select, %bb.aa ] ; 2 uses
  %i.di = add nuw i64 %.sroa.018.0.i.lcssa, %.pre264.i
  %i.dj = icmp ugt i64 %i.di, 65535
  br i1 %i.dj, label %bb.x, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !67
  %i.dk = add nsw i64 %.sroa.018.0.i.lcssa, -4    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 -65536, 65537) %i.dk, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc179.i unwind label %bb.f, !noalias !69

.noexc179.i:                                      ; preds = %bb.ac
  %i.dl = load i64, ptr %i.e, align 8, !range !4, !noalias !78, !noundef !3
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !7, !noalias !78, !noundef !3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.ad, label %bb.ae, !prof !8

bb.ad:                                            ; preds = %.noexc179.i
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !78
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ad, %bb.p
  %i.dr = phi i64 [ %i.do, %bb.ad ], [ %i.ci, %bb.p ]
  %i.ds = phi i64 [ %i.dq, %bb.ad ], [ %i.ck, %bb.p ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.ds) #20
          to label %.cont.i unwind label %bb.f, !noalias !69

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %.noexc179.i
  %i.dt = load ptr, ptr %i.dp, align 8, !noalias !78, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78
  store i64 %i.do, ptr %i.w, align 8, !alias.scope !77, !noalias !67
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %i.dt, ptr %i.du, align 8, !alias.scope !77, !noalias !67
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store i64 %i.dk, ptr %i.dv, align 8, !alias.scope !77, !noalias !67
  %.sroa.022.0.extract.trunc.i = trunc i16 %i.cv to i8
  store i8 %.sroa.022.0.extract.trunc.i, ptr %i.dt, align 1, !noalias !69
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !67, !noundef !3 ; 2 uses
  %i.dx = icmp ugt i64 %i.dw, 1
  br i1 %i.dx, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ah, %bb.ag
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w) #19
          to label %.critedge160.thread.i unwind label %bb.s, !noalias !69

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.y unwind label %bb.af, !noalias !69

bb.ah:                                            ; preds = %bb.ae
  %.sroa.423.0.extract.shift.i = lshr i16 %i.cv, 8
  %.sroa.423.0.extract.trunc.i = trunc nuw i16 %.sroa.423.0.extract.shift.i to i8
  %i.dz = load ptr, ptr %i.du, align 8, !noalias !67, !nonnull !3, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 %.sroa.423.0.extract.trunc.i, ptr %i.ea, align 1, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !67
  %i.eb = load ptr, ptr %i.du, align 8, !noalias !67, !nonnull !3, !noundef !3
  %i.ec = load i64, ptr %i.dv, align 8, !noalias !67, !noundef !3
  invoke void @_RNvMs2_NtCsb9zoKkpXuBA_3zip5writeNtB5_19ExtendedFileOptions24add_extra_data_unchecked(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i16 noundef -24290, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ec)
          to label %bb.ai unwind label %bb.af, !noalias !69

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load i64, ptr %i.v, align 8, !range !5, !noalias !67, !noundef !3
  %.not135.i = icmp eq i64 %i.ed, -2
  br i1 %.not135.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %.critedge.i unwind label %bb.f, !noalias !69

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %bb.al unwind label %bb.f, !noalias !69

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !67
  %.pre.i = load i64, ptr %i.bg, align 8, !noalias !67
  br label %bb.x

.critedge.i:                                      ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !67
  br label %bb.dd

.thread233.i:                                     ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockyE15get_or_try_initNCINvB2_11get_or_initNCINvMsd_NtCsb9zoKkpXuBA_3zip5writeINtNtB1G_10zip_writer9ZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE11start_entryReuE0E0zECs8yaccCKGz54_10ruff_graph.exit.i, %bb.cr, %bb.ca, %bb.bz, %bb.bw, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bj, %bb.bg, %bb.be, %bb.bb, %bb.ba, %bb.ax, %bb.as, %bb.ar, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i
  %.sroa.086.7.ph.i = phi i8 [ 1, %bb.be ], [ 1, %bb.bg ], [ 1, %bb.bj ], [ 1, %bb.bn ], [ 0, %bb.bp ], [ 0, %bb.bq ], [ %.sroa.086.9.i, %bb.bm ], [ %.sroa.086.9.i, %bb.bw ], [ 1, %bb.bb ], [ %.sroa.086.9.i, %bb.bz ], [ %.sroa.086.9.i, %bb.ca ], [ %.sroa.086.9.i, %bb.cr ], [ %.sroa.086.9.i, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockyE15get_or_try_initNCINvB2_11get_or_initNCINvMsd_NtCsb9zoKkpXuBA_3zip5writeINtNtB1G_10zip_writer9ZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE11start_entryReuE0E0zECs8yaccCKGz54_10ruff_graph.exit.i ], [ 1, %bb.ba ], [ 1, %bb.ax ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i ], [ 1, %bb.ar ], [ 1, %bb.as ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge160.i

bb.am:                                            ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 4339
  %i.ef = load i8, ptr %i.ee, align 1, !range !6, !alias.scope !65, !noalias !79, !noundef !3
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !range !80, !alias.scope !66, !noalias !70
  %i.ej = trunc nuw nsw i32 %i.ei to i8
  %.sroa.027.0.i = select i1 %i.eg, i8 %i.ej, i8 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 222
  store i8 %.sroa.027.0.i, ptr %i.ek, align 2, !noalias !67
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 225 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !noalias !67, !noundef !3
  %i.en = invoke noundef i16 @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.u)
          to label %bb.an unwind label %bb.dg, !noalias !69

bb.an:                                            ; preds = %bb.am
  %i.eo = trunc i16 %i.en to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.eo, i8 %i.em)
  store i8 %.sroa.0.0.i.i, ptr %i.el, align 1, !noalias !67
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %i.ep, align 8, !noalias !67
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %i.cr, ptr %i.eq, align 8, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(232) %i.u, i64 232, i1 false), !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !67
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4200 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.et = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE12get_index_ofBO_ECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.es)
          to label %bb.ao unwind label %bb.at, !noalias !81

bb.ao:                                            ; preds = %bb.an
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  store ptr %i.ew, ptr %i.c, align 8, !noalias !82
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs8yaccCKGz54_10ruff_graph, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !82
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @14, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i unwind label %bb.at, !noalias !81

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  %i.ex = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.es)
          to label %bb.ar unwind label %bb.at, !noalias !81 ; 2 uses

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  %.sroa.0197.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !83 ; 2 uses
  %.sroa.6198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ey = load <2 x i64>, ptr %.sroa.6198.0..sroa_idx.i, align 8, !noalias !83
  %.sroa.6198.0.copyload.i = load i64, ptr %.sroa.6198.0..sroa_idx.i, align 8, !noalias !83
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.t)
          to label %bb.av unwind label %.thread233.i, !noalias !69

bb.ar:                                            ; preds = %bb.aq
  %i.ez = extractvalue { ptr, i64 } %i.ex, 0
  %i.fa = extractvalue { ptr, i64 } %i.ex, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 232, i1 false), !noalias !84
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE11insert_fullCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.er, ptr noalias noundef nonnull %i.ez, i64 noundef %i.fa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
          to label %.noexc182.i unwind label %.thread233.i, !noalias !69

.noexc182.i:                                      ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  %i.fb = load i64, ptr %i.b, align 8, !noalias !82, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !range !9, !alias.scope !85, !noalias !82, !noundef !3
  %i.fe = icmp eq i64 %i.fd, 2
  br i1 %i.fe, label %.thread237.i, label %bb.as

bb.as:                                            ; preds = %.noexc182.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.fc)
          to label %.thread237.i unwind label %.thread233.i, !noalias !69

.thread237.i:                                     ; preds = %bb.as, %.noexc182.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !67
  br label %bb.ax

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.t) #19
          to label %.critedge160.thread.i unwind label %bb.au, !noalias !81

bb.au:                                            ; preds = %bb.at
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !81
  unreachable

bb.av:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8yaccCKGz54_10ruff_graph.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !67
  %.not136.i = icmp eq i64 %.sroa.0197.0.copyload.i, -2
  br i1 %.not136.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i64 %.sroa.0197.0.copyload.i, ptr %i.ah, align 8, !alias.scope !64, !noalias !68
  %.sroa.4119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <2 x i64> %i.ey, ptr %.sroa.4119.0..sroa_idx.i, align 8, !alias.scope !64, !noalias !68
end_hunk_0
