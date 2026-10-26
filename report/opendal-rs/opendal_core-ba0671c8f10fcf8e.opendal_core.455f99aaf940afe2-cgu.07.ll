Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.07?download=true
inline.NumInlined: 369
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB2_11ReadContext21observe_read_response:bb.a
bb.k:                                             ; preds = %_RINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i
  %.sroa.4.8.copyload1.i = load ptr, ptr %i.l, align 8, !noalias !504 ; 3 uses
  %.sroa.7.8..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx2.i, i64 32, i1 false), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !501
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.4.8.copyload1.i, ptr %i.t, align 8, !noalias !502
  store i64 1, ptr %i.b, align 8, !noalias !502
  %i.u = icmp eq ptr %.sroa.4.8.copyload1.i, null
  br i1 %i.u, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = atomicrmw add ptr %.sroa.4.8.copyload1.i, i64 -1 release, align 8, !noalias !505
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !502
  br label %.sink.split

.body:                                            ; preds = %bb.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_8OpDelete12into_version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2_13CompactValues7replace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.i, %bb.e
  %i.b = phi ptr [ %i.g, %bb.i ], [ %.pr, %bb.e ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.f, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !527
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %1, align 8, !alias.scope !528
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !531, !noundef !6 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !532
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.n, align 8
  br label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_.exit: ; preds = %bb.g, %bb.f, %bb.h
  store ptr %i.g, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.o, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_6OpRead17from_read_options(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(320) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [176 x i8], align 8               ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [12 x i8], align 1                ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [12 x i8], align 1                ; 6 uses
  %i.k = alloca [176 x i8], align 8               ; 25 uses
  %i.l = alloca [176 x i8], align 8               ; 26 uses
  %i.m = alloca [9 x i8], align 1                 ; 5 uses
  %i.n = alloca [13 x i8], align 1                ; 5 uses
  %i.o = alloca [13 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.p = trunc nuw i64 %.sroa.0.0.copyload to i1  ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, i8 0, i64 12, i1 false), !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !546
  store i64 %.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !546
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull %i.j, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !546
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !546
  store i32 %.sroa.5.0.copyload, ptr %i.h, align 4, !noalias !546
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull %i.q, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %storemerge70 = phi i8 [ 1, %bb.e ], [ 0, %bb.a ]
  store i8 %storemerge70, ptr %i.o, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load i64, ptr %i.r, align 8
  %i.s = trunc nuw i64 %.sroa.01.0.copyload to i1 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.l, %.noexc61, %bb.f, %.noexc, %bb.b, %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.dl, %bb.k ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11ReadOptionsEBH_(ptr noalias nofree noundef align 8 dereferenceable(320) %0) #23
          to label %bb.q unwind label %bb.p

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !546
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) %i.j, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !546
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.53.0.copyload = load i32, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !547
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, i8 0, i64 12, i1 false), !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !547
  store i64 %.sroa.42.0.copyload, ptr %i.f, align 8, !noalias !547
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull %i.g, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115)
          to label %.noexc61 unwind label %bb.d

.noexc61:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !547
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !547
  store i32 %.sroa.53.0.copyload, ptr %i.e, align 4, !noalias !547
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull %i.v, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.c, %bb.h
  %storemerge71 = phi i8 [ 1, %bb.h ], [ 0, %bb.c ]
  store i8 %storemerge71, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !range !8, !noundef !6
  %i.y = trunc nuw i64 %i.x to i1                 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !547
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.z, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !547
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i64 %i.ab, ptr %i.ac, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %storemerge = phi i8 [ 1, %bb.i ], [ 0, %bb.g ]
  store i8 %storemerge, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load i64, ptr %i.ad, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.ae, -1                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load i64, ptr %i.ah, align 8
  %.sroa.59.0 = select i1 %.not, i64 undef, i64 %i.ai
  %.sroa.08.0 = select i1 %.not, ptr null, ptr %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !noundef !6
  %.not53 = icmp eq i64 %i.ak, -1                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.513.0 = select i1 %.not53, i64 undef, i64 %i.ao
  %.sroa.012.0 = select i1 %.not53, ptr null, ptr %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load i64, ptr %i.ap, align 8, !range !7, !noundef !6
  %.not54 = icmp eq i64 %i.aq, -1                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = load i64, ptr %i.at, align 8
  %.sroa.517.0 = select i1 %.not54, i64 undef, i64 %i.au
  %.sroa.016.0 = select i1 %.not54, ptr null, ptr %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aw = load i64, ptr %i.av, align 8, !range !7, !noundef !6
  %.not55 = icmp eq i64 %i.aw, -1                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ba = load i64, ptr %i.az, align 8
  %.sroa.521.0 = select i1 %.not55, i64 undef, i64 %i.ba
  %.sroa.020.0 = select i1 %.not55, ptr null, ptr %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.024.0 = select i1 %i.p, ptr %i.bb, ptr null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.027.0 = select i1 %i.s, ptr %i.bc, ptr null
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.be = load i64, ptr %i.bd, align 8, !range !7, !noundef !6
  %.not56 = icmp eq i64 %i.be, -1                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bi = load i64, ptr %i.bh, align 8
  %.sroa.531.0 = select i1 %.not56, i64 undef, i64 %i.bi
  %.sroa.030.0 = select i1 %.not56, ptr null, ptr %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = load i64, ptr %i.bj, align 8, !range !7, !noundef !6
  %.not57 = icmp eq i64 %i.bk, -1                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bo = load i64, ptr %i.bn, align 8
  %.sroa.535.0 = select i1 %.not57, i64 undef, i64 %i.bo
  %.sroa.034.0 = select i1 %.not57, ptr null, ptr %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = load i64, ptr %i.bp, align 8, !range !7, !noundef !6
  %.not58 = icmp eq i64 %i.bq, -1                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bu = load i64, ptr %i.bt, align 8
  %.sroa.539.0 = select i1 %.not58, i64 undef, i64 %i.bu
  %.sroa.038.0 = select i1 %.not58, ptr null, ptr %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = load i64, ptr %i.bv, align 8, !range !7, !noundef !6
  %.not59 = icmp eq i64 %i.bw, -1                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i64, ptr %i.bz, align 8
  %.sroa.543.0 = select i1 %.not59, i64 undef, i64 %i.ca
  %.sroa.042.0 = select i1 %.not59, ptr null, ptr %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.046.0 = select i1 %i.y, ptr %i.cb, ptr null
  store ptr %.sroa.08.0, ptr %i.l, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.59.0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.012.0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.513.0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.016.0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.517.0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %.sroa.020.0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.521.0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %.sroa.024.0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 12, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %.sroa.027.0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 12, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %.sroa.030.0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 %.sroa.531.0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %.sroa.034.0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i64 %.sroa.535.0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store ptr %.sroa.038.0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i64 %.sroa.539.0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store ptr %.sroa.042.0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store i64 %.sroa.543.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr %.sroa.046.0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store i64 8, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !548
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.d, ptr %i.c, align 8, !noalias !548
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !548
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.cz, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !549
  store ptr %i.c, ptr %i.b, align 8, !noalias !550
  %i.da = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  %i.db = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc3.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dc = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc4.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc4.i:                                        ; preds = %.noexc3.i
  %i.dd = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %.noexc5.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc5.i:                                        ; preds = %.noexc4.i
  %i.de = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 4)
          to label %.noexc6.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc6.i:                                        ; preds = %.noexc5.i
  %i.df = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 5)
          to label %.noexc7.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.dg = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 6)
          to label %.noexc8.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc8.i:                                        ; preds = %.noexc7.i
  %i.dh = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 7)
          to label %.noexc9.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc9.i:                                        ; preds = %.noexc8.i
  %i.di = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8)
          to label %.noexc10.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.dj = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 9)
          to label %.noexc11.i unwind label %bb.k, !noalias !548 ; 2 uses

.noexc11.i:                                       ; preds = %.noexc10.i
  %i.dk = invoke { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 10)
          to label %bb.l unwind label %bb.k, !noalias !548 ; 2 uses

bb.k:                                             ; preds = %.noexc11.i, %.noexc10.i, %.noexc9.i, %.noexc8.i, %.noexc7.i, %.noexc6.i, %.noexc5.i, %.noexc4.i, %.noexc3.i, %.noexc.i, %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1m_17NeverShortCircuitIBR_jEE10wrap_mut_1BQ_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2z_13CompactValues6encodeKjb_E0E0ENtNtB1o_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.m, !noalias !548

bb.l:                                             ; preds = %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !549
  invoke void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1m_17NeverShortCircuitIBR_jEE10wrap_mut_1BQ_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2z_13CompactValues6encodeKjb_E0E0ENtNtB1o_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.d

bb.m:                                             ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !548
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.dn = extractvalue { i64, i64 } %i.dk, 1
  %i.do = extractvalue { i64, i64 } %i.dk, 0
  %i.dp = extractvalue { i64, i64 } %i.da, 0
  %i.dq = extractvalue { i64, i64 } %i.da, 1
  %i.dr = extractvalue { i64, i64 } %i.db, 0
  %i.ds = extractvalue { i64, i64 } %i.db, 1
  %i.dt = extractvalue { i64, i64 } %i.dc, 0
  %i.du = extractvalue { i64, i64 } %i.dc, 1
  %i.dv = extractvalue { i64, i64 } %i.dd, 0
  %i.dw = extractvalue { i64, i64 } %i.dd, 1
  %i.dx = extractvalue { i64, i64 } %i.de, 0
  %i.dy = extractvalue { i64, i64 } %i.de, 1
  %i.dz = extractvalue { i64, i64 } %i.df, 0
  %i.ea = extractvalue { i64, i64 } %i.df, 1
  %i.eb = extractvalue { i64, i64 } %i.dg, 0
  %i.ec = extractvalue { i64, i64 } %i.dg, 1
  %i.ed = extractvalue { i64, i64 } %i.dh, 0
  %i.ee = extractvalue { i64, i64 } %i.dh, 1
  %i.ef = extractvalue { i64, i64 } %i.di, 0
  %i.eg = extractvalue { i64, i64 } %i.di, 1
  %i.eh = extractvalue { i64, i64 } %i.dj, 0
  %i.ei = extractvalue { i64, i64 } %i.dj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !548
  store i64 %i.dp, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.dq, ptr %.sroa.4.0..sroa_idx66, align 8
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx68, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.ds, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.dt, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.du, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.dv, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.dw, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.dx, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 %i.dy, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 %i.dz, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i64 %i.ea, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i64 %i.eb, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 %i.ec, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i64 %i.ed, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i64 %i.ee, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.ef, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i64 %i.eg, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i64 %i.eh, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store i64 %i.ei, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store i64 %i.do, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store i64 %i.dn, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ej = invoke { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKjb_NCINvB2_6encodeKB1l_Es_0EB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11ReadOptionsEBH_(ptr noalias nofree noundef align 8 dereferenceable(320) %0)
  ret { ptr, i64 } %i.ej

bb.p:                                             ; preds = %.body
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_0
