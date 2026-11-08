Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/miniz?download=true
inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN12duckdb_miniz17mz_zip_reader_endEPNS_14mz_zip_archiveE:bb.a
  tail call void %i.f(ptr noundef %i.k, ptr noundef %i.l), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !166
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !168
  tail call void %i.n(ptr noundef %i.o, ptr noundef %i.p), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !166
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !168
  tail call void %i.r(ptr noundef %i.s, ptr noundef %i.t), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !166
  tail call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.b), !inline_history !3
  store i32 0, ptr %i.g, align 4, !tbaa !164
  br label %_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit

_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit: ; preds = %bb.a, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12duckdb_miniz18mz_zip_reader_initEPNS_14mz_zip_archiveEmj(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !guid !396 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit, label %bb.c

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.c, align 4, !tbaa !165
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %.not29.i = icmp eq ptr %i.e, null
  br i1 %.not29.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164
  %.not30.i = icmp eq i32 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.h, align 4, !tbaa !165
  br label %.split

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162  ; 2 uses
  %.not31.i = icmp eq ptr %i.j, null
  br i1 %.not31.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, ptr %i.i, align 8, !tbaa !162
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi ptr [ @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, %bb.g ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_, ptr %i.l, align 8, !tbaa !163
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @_ZN12duckdb_miniz22miniz_def_realloc_funcEPvS0_mm, ptr %i.n, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !165
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !166
  %i.s = tail call noundef ptr %i.k(ptr noundef %i.r, i64 noundef 1, i64 noundef 152), !inline_history !4 ; 3 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i, label %bb.m

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i: ; preds = %bb.l
  store i32 16, ptr %i.p, align 4, !tbaa !165
  br label %.split

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.s, i8 0, i64 152, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !161  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 4, ptr %i.w, align 8, !tbaa !174
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i32 4, ptr %i.x, align 8, !tbaa !175
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 %2, ptr %i.y, align 8, !tbaa !176
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  store i32 0, ptr %i.z, align 4, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i32 0, ptr %i.aa, align 8, !tbaa !178
  store i32 1, ptr %i.f, align 4, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.ab, align 8, !tbaa !179
  store i64 %1, ptr %0, align 8, !tbaa !180
  %i.ac = tail call fastcc noundef i32 @_ZN12duckdb_minizL30mz_zip_reader_read_central_dirEPNS_14mz_zip_archiveEj(ptr noundef nonnull %0, i32 noundef %2)
  %.not15 = icmp eq i32 %i.ac, 0
  br i1 %.not15, label %bb.n, label %.split

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !162
  %.not24.i = icmp eq ptr %i.ae, null
  br i1 %.not24.i, label %.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !163 ; 2 uses
  %.not25.i = icmp eq ptr %i.af, null
  br i1 %.not25.i, label %.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !164
  %.not26.i = icmp eq i32 %i.ag, 1
  br i1 %.not26.i, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.d, align 8, !tbaa !161
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !166
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !168
  tail call void %i.af(ptr noundef %i.ah, ptr noundef %i.ai), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !163
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !166
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !168
  tail call void %i.ak(ptr noundef %i.al, ptr noundef %i.am), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !163
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !166
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !168
  tail call void %i.ao(ptr noundef %i.ap, ptr noundef %i.aq), !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false)
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !163
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !166
  tail call void %i.ar(ptr noundef %i.as, ptr noundef nonnull %i.ad), !inline_history !3
  store i32 0, ptr %i.f, align 4, !tbaa !164
  br label %.split

.split:                                           ; preds = %bb.e, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a, %bb.m, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit
  %.0 = phi i32 [ 0, %bb.r ], [ 0, %bb.a ], [ 1, %bb.m ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN12duckdb_minizL30mz_zip_reader_read_central_dirEPNS_14mz_zip_archiveEj(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) unnamed_addr #9 !guid !401 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = alloca [1024 x i32], align 16            ; 10 uses
  %i.c = alloca [5 x i32], align 16               ; 7 uses
  %i.d = alloca [14 x i32], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.e = and i32 %1, 2048
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.g = load i64, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit404, label %bb.b

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit404: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.i, align 4, !tbaa !165
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4096)
  %spec.select.i = add nsw i64 %i.j, -4096
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv.i.a = phi i64 [ %i.g, %bb.b ], [ %i.ac, %bb.h ]
  %.045.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.af, %bb.h ] ; 6 uses
  %i.m = sub i64 %indvars.iv.i.a, %.045.i         ; 2 uses
  %spec.select5465.i = call i64 @llvm.umin.i64(i64 %i.m, i64 4096) ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.p = call noundef i64 %i.n(ptr noundef %i.o, i64 noundef %.045.i, ptr noundef nonnull %i.a, i64 noundef %spec.select5465.i), !inline_history !397
  %.not.i413 = icmp eq i64 %i.p, %spec.select5465.i
  br i1 %.not.i413, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.m, 3
  br i1 %i.q, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = add nuw nsw i64 %spec.select5465.i, 4294967292
  %i.s = and i64 %i.r, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv71.i = phi i64 [ %i.s, %.lr.ph.i ], [ %indvars.iv.next72.i, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71.i
  %i.u = load i32, ptr %i.t, align 1
  %i.v = icmp eq i32 %i.u, 101010256
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %0, align 8, !tbaa !180
  %i.x = add i64 %indvars.iv71.i, %.045.i         ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 21
  br i1 %i.z, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, -1
  %i.aa = trunc nuw i64 %indvars.iv71.i to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.critedge.i, !llvm.loop !398

.critedge.i:                                      ; preds = %bb.g, %bb.d
  %.not53.i = icmp eq i64 %.045.i, 0
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ac = load i64, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.ad = sub i64 %i.ac, %.045.i
  %i.ae = icmp ugt i64 %i.ad, 65556
  %i.af = add i64 %.045.i, -4093
  br i1 %i.ae, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i401 = icmp eq ptr %0, null
  br i1 %.not.i401, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.ag, align 4, !tbaa !165
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.aj = call noundef i64 %i.ah(ptr noundef %i.ai, i64 noundef %i.x, ptr noundef nonnull %i.b, i64 noundef 22)
  %.not335 = icmp eq i64 %i.aj, 22
  br i1 %.not335, label %bb.l, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit400

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit400: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.ak, align 4, !tbaa !165
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.b, align 16
  %.not336 = icmp eq i32 %i.al, 101010256
  br i1 %.not336, label %bb.m, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit398

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit398: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.am, align 4, !tbaa !165
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.an = icmp sgt i64 %i.x, 75
  br i1 %i.an, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.aq = add nsw i64 %i.x, -20
  %i.ar = call noundef i64 %i.ao(ptr noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.c, i64 noundef 20)
  %i.as = icmp eq i64 %i.ar, 20
  %i.at = load i32, ptr %i.c, align 16
  %i.au = icmp eq i32 %i.at, 117853008
  %or.cond456 = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond456, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw i64 %i.ba, 32
  %i.bc = or disjoint i64 %i.bb, %i.ax            ; 2 uses
  %i.bd = load i64, ptr %0, align 8, !tbaa !180
  %i.be = add i64 %i.bd, -56
  %i.bf = icmp ugt i64 %i.bc, %i.be
  br i1 %i.bf, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit396, label %bb.p

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit396: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.bg, align 4, !tbaa !165
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.bj = call noundef i64 %i.bh(ptr noundef %i.bi, i64 noundef %i.bc, ptr noundef nonnull %i.d, i64 noundef 56)
  %i.bk = icmp eq i64 %i.bj, 56
  %i.bl = load i32, ptr %i.d, align 16
  %i.bm = icmp eq i32 %i.bl, 101075792
  %or.cond458 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond458, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !161
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 100
  store i32 1, ptr %i.bp, align 4, !tbaa !177
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !182
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.by = load i16, ptr %i.bx, align 4
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 100
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !177
  %.not337 = icmp eq i32 %i.cl, 0
  br i1 %.not337, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cn = load i32, ptr %i.cm, align 16           ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = or disjoint i64 %i.da, %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp ult i64 %i.db, 44
  br i1 %i.dg, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit394, label %bb.t

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit394: ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dh, align 4, !tbaa !165
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dj = load i32, ptr %i.di, align 16
  %.not338 = icmp eq i32 %i.dj, 1
  br i1 %.not338, label %bb.u, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit392

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit392: ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.dk, align 4, !tbaa !165
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  %.not339 = icmp eq i32 %i.cp, 0
  br i1 %.not339, label %bb.v, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit390

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit390: ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dl, align 4, !tbaa !165
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 %i.cn, ptr %i.bt, align 8, !tbaa !182
  %.not340 = icmp eq i32 %i.ct, 0
  br i1 %.not340, label %bb.w, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit388

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit388: ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dm, align 4, !tbaa !165
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %.not341 = icmp eq i32 %i.df, 0
  br i1 %.not341, label %bb.x, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit386

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit386: ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 15, ptr %i.dn, align 4, !tbaa !165
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = load i32, ptr %i.do, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dt = load i32, ptr %i.ds, align 16
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw i64 %i.dx, 32
  %i.dz = or disjoint i64 %i.dy, %i.du
  br label %bb.y

end_hunk_0
