Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_lite-e70a0891ea48dde5.regex_lite.c95cdb2f3cf4675d-cgu.01?download=true
inline.NumInlined: 135
inline.NumDeleted: 74
begin_hunk_0_@_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_bounded:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !198
  %i.k = load ptr, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.q = load i32, ptr %i.p, align 4, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.r = icmp eq i32 %4, %5
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.s, align 4, !noalias !199
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.t, align 2, !noalias !199
  store i8 3, ptr %i.a, align 8, !noalias !199
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler3add(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  %i.u = load ptr, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %.not43 = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not43, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.x, align 4
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.v, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.u, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.v, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = xor i1 %3, true
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ae = zext i1 %i.ab to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %4) ; 2 uses
  %exitcond.not138 = icmp eq i32 %4, %umax
  br i1 %exitcond.not138, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i32 %i.aj, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.sroa.09.0.lcssa = phi i32 [ %i.q, %bb.g ], [ %i.av, %bb.h ]
  %i.ai = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %.sroa.09.0.lcssa, i32 noundef %i.aa) ; 2 uses
  %.not44 = icmp eq ptr %i.ai, null
  br i1 %.not44, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.0.0140 = phi i32 [ %i.aj, %bb.h ], [ %4, %bb.g ]
  %.sroa.09.0139 = phi i32 [ %i.av, %bb.h ], [ %i.q, %bb.g ]
  %i.aj = add i32 %.sroa.0.0140, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.ac, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 %i.ae, ptr %i.ad, align 1
  store i8 2, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler3add(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ak = load ptr, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %.not45 = icmp eq ptr %i.ak, null
  br i1 %.not45, label %bb.m, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.ai, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.al, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aa, ptr %i.an, align 4
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.e, %bb.l, %bb.t, %bb.r, %bb.p, %bb.n, %bb.i, %bb.f, %bb.j
  ret void

bb.l:                                             ; preds = %.lr.ph
  %i.ao = load i64, ptr %i.af, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ak, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  br label %bb.k

bb.m:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %i.af, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler1c(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.ar = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not46 = icmp eq ptr %i.ar, null
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.ag, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ar, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8
  br label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.ag, align 8, !noundef !3
  %i.av = load i32, ptr %i.ah, align 4, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %.sroa.09.0139, i32 noundef %i.aq) ; 2 uses
  %.not47 = icmp eq ptr %i.aw, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.aw, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.ax, align 8
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.ay = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %i.aq, i32 noundef %i.au) ; 2 uses
  %.not48 = icmp eq ptr %i.ay, null
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ay, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.az, align 8
  br label %bb.k

bb.s:                                             ; preds = %bb.q
  %i.ba = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %i.aq, i32 noundef %i.aa) ; 2 uses
  %.not49 = icmp eq ptr %i.ba, null
  br i1 %.not49, label %bb.h, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.ba, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.bb, align 8
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_capture(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !222, !noundef !3 ; 3 uses
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 6 uses
  %i.m = icmp ult i64 %i.l, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %.not66.not = icmp samesign ult i64 %i.l, %i.n
  br i1 %.not66.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit
  %6 = sub nuw nsw i64 %i.n, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %7 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %bb.c

._crit_edge:                                      ; preds = %bb.au, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit
  %i.q = phi i64 [ %i.l, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit ], [ %i.du, %bb.au ] ; 3 uses
  %i.r = phi i64 [ %i.i, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_.exit ], [ %i.dw, %bb.au ]
  %.not = icmp samesign ugt i64 %i.l, %i.n
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.au
  %i.s = phi i64 [ %i.l, %.lr.ph ], [ %i.du, %bb.au ] ; 3 uses
  %i.t = phi i64 [ %i.i, %.lr.ph ], [ %i.dw, %bb.au ]
  %.sroa.025.065 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.au ]
  %i.u = add nuw nsw i64 %.sroa.025.065, 1        ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.ar, label %bb.at, !prof !9

bb.d:                                             ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit46, %._crit_edge
  %i.w = shl nuw i32 %2, 1                        ; 2 uses
  %i.x = icmp slt i32 %2, 0
  br i1 %i.x, label %bb.af, label %bb.ae, !prof !12

bb.e:                                             ; preds = %._crit_edge
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = tail call { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECshhQDFPpdXZx_10regex_lite(ptr noundef nonnull %i.ab, i64 noundef %i.aa)
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad ; 2 uses
  store ptr %i.ae, ptr %i.g, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store i64 %i.aa, ptr %i.af, align 8
  %i.ag = load i64, ptr %i.h, align 8, !noundef !3
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %i.r, 0
  br i1 %i.ai, label %bb.aa, label %bb.ac, !prof !9

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %i.h, align 8
  %i.aj = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %bb.z unwind label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.am = load i64, ptr %i.af, align 8, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ao = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceEmNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull %i.al, i64 noundef %i.am, i32 noundef %2)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ]
  %i.aq = load i64, ptr %i.h, align 8, !noundef !3
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.h, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ax = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aw, ptr %i.a, align 8, !noalias !223
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !noalias !223
  %i.az = load i64, ptr %i.k, align 8, !alias.scope !223, !noundef !3 ; 3 uses
  %i.ba = load i64, ptr %i.av, align 8, !range !10, !alias.scope !223, !noundef !3
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.w unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !224
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %.body, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.bg = load ptr, ptr %i.g, align 8, !alias.scope !227, !nonnull !3, !noundef !3
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !227
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit unwind label %bb.y

bb.v:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.w:                                             ; preds = %bb.n, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !223, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.ax, ptr %i.bn, align 8
  %i.bo = add i64 %i.az, 1
  store i64 %i.bo, ptr %i.k, align 8, !alias.scope !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load i64, ptr %i.af, align 8, !noundef !3
  %i.bq = add i64 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !3
  %i.bt = add i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.br, align 8
  %i.bu = load i64, ptr %i.h, align 8, !noundef !3
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.bw = load ptr, ptr %i.g, align 8, !alias.scope !230, !nonnull !3, !noundef !3
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !230
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit46

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit46: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.y:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.z:                                             ; preds = %bb.i
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit.sink.split: ; preds = %.body48, %.body52
  %.pn38.ph = phi { ptr, i32 } [ %i.cf, %.body48 ], [ %i.dr, %.body52 ]
  %i.ca = load i64, ptr %i.h, align 8, !noundef !3
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.h, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit.sink.split, %bb.t, %bb.u
  %.pn38 = phi { ptr, i32 } [ %.pn, %bb.u ], [ %.pn, %bb.t ], [ %.pn38.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit.sink.split ]
  resume { ptr, i32 } %.pn38

bb.aa:                                            ; preds = %bb.g
  store i64 -1, ptr %i.h, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !10, !alias.scope !231, !noundef !3
  %i.ce = icmp eq i64 %i.q, %i.cd
  br i1 %i.ce, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.ad unwind label %.body48

.body48:                                          ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit.sink.split

bb.ac:                                            ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !231, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.q
  store ptr null, ptr %i.ci, align 8
  %i.cj = add i64 %i.q, 1
  store i64 %i.cj, ptr %i.k, align 8, !alias.scope !231
  %i.ck = load i64, ptr %i.h, align 8, !noundef !3
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.h, align 8
  br label %bb.d

bb.ae:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.w, ptr %i.cn, align 8
  store i8 4, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler3add(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = load ptr, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %.not33 = icmp eq ptr %i.co, null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not33, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.d
  store ptr @17, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 29, ptr %i.cq, align 8
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.cr = load i64, ptr %i.cp, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.co, ptr %0, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cr, ptr %i.cs, align 8
  br label %bb.aq

bb.ah:                                            ; preds = %bb.ae
  %i.ct = load i32, ptr %i.cp, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler1c(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %5)
  %i.cu = load ptr, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %.not34 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not34, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.cu, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cx, align 8
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load i32, ptr %i.cv, align 8, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = or disjoint i32 %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.db, ptr %i.dd, align 8
  store i8 4, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler3add(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.de = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not35 = icmp eq ptr %i.de, null
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not35, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = load i64, ptr %i.df, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.de, ptr %0, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %i.dh, align 8
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %i.df, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dj = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %i.ct, i32 noundef %i.cy) ; 2 uses
  %.not36 = icmp eq ptr %i.dj, null
  br i1 %.not36, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.dj, ptr %0, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.dk, align 8
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.dl = call fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 %1, i32 noundef %i.da, i32 noundef %i.di) ; 2 uses
  %.not37 = icmp eq ptr %i.dl, null
  br i1 %.not37, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %i.dl, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.dm, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ct, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.di, ptr %i.do, align 4
  store ptr null, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.af, %bb.ai, %bb.ao, %bb.am, %bb.ak, %bb.ag, %bb.ap
  ret void

bb.ar:                                            ; preds = %bb.c
  store i64 -1, ptr %i.h, align 8
  %i.dp = load i64, ptr %i.o, align 8, !range !10, !alias.scope !232, !noundef !3
  %i.dq = icmp eq i64 %i.s, %i.dp
  br i1 %i.dq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.au unwind label %.body52

.body52:                                          ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECshhQDFPpdXZx_10regex_lite.exit.sink.split

bb.at:                                            ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.ds = load ptr, ptr %i.p, align 8, !alias.scope !232, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.s
  store ptr null, ptr %i.dt, align 8
  %i.du = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.du, ptr %i.k, align 8, !alias.scope !232
  %i.dv = load i64, ptr %i.h, align 8, !noundef !3
  %i.dw = add i64 %i.dv, 1                        ; 3 uses
  store i64 %i.dw, ptr %i.h, align 8
  %exitcond.not = icmp eq i64 %i.u, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCshhQDFPpdXZx_10regex_lite3nfaNtB4_3NFA3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !242
  store i64 0, ptr %i.d, align 8, !noalias !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !242
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8, !noalias !242
  %i.i = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshhQDFPpdXZx_10regex_lite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @6)
          to label %bb.f unwind label %bb.b, !noalias !242 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %bb.d unwind label %bb.c, !noalias !242

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !242
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(24) %i.e) #16
          to label %common.resume unwind label %bb.c, !noalias !242

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.l, %.invoke.i, %bb.i, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAEEB10_(ptr noalias noundef align 8 dereferenceable(160) %i.p) #16
          to label %common.resume unwind label %bb.p, !noalias !243

bb.f:                                             ; preds = %bb.a
  %i.m = extractvalue { i64, i64 } %i.i, 0
  %i.n = extractvalue { i64, i64 } %i.i, 1
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !alias.scope !242
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !242
  store i64 %1, ptr %i.f, align 8, !alias.scope !240, !noalias !241
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.o, align 8, !alias.scope !240, !noalias !241
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !240, !noalias !241
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !240, !noalias !241
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !240, !noalias !241
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false), !noalias !241
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i64 %i.m, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !240, !noalias !241
  %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i64 %i.n, ptr %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !240, !noalias !241
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 14, i1 false), !alias.scope !240, !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !8, !alias.scope !246, !noalias !247, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 172
  store i8 %i.r, ptr %i.t, align 4, !alias.scope !245, !noalias !243
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 57
  %i.v = load i8, ptr %i.u, align 1, !range !8, !alias.scope !246, !noalias !247, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 173
  store i8 %i.v, ptr %i.w, align 1, !alias.scope !245, !noalias !243
  %i.x = load <2 x i64>, ptr %4, align 8, !alias.scope !246, !noalias !247
  store <2 x i64> %i.x, ptr %i.s, align 8, !alias.scope !245, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !248
  invoke fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_capture(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %i.f, i32 noundef 0, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4)
          to label %bb.g unwind label %bb.e, !noalias !244

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.c, align 8, !noalias !248, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.z, align 8, !noalias !248, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !248
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.z, align 8, !noalias !248, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !248, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  store i8 6, ptr %i.a, align 8, !noalias !248
  invoke fastcc void @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler3add(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.e, !noalias !243

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !248, !noundef !3 ; 2 uses
  %.not12.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.af, align 8, !noalias !248, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !248
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.af, align 8, !noalias !248, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !248
  %i.ai = invoke fastcc ptr @_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler5patch(ptr noundef nonnull align 8 dereferenceable(176) %i.f, i32 noundef %i.ad, i32 noundef %i.ah)
          to label %._crit_edge unwind label %bb.e ; 2 uses

._crit_edge:                                      ; preds = %bb.l
  %.not13.i = icmp eq ptr %i.ai, null
  br i1 %.not13.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.aj = load i64, ptr %i.p, align 8, !alias.scope !245, !noalias !243, !noundef !3
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %.invoke.i, !prof !9

.invoke.i:                                        ; preds = %bb.m
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #17
          to label %.cont.i unwind label %bb.e, !noalias !243

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i32 %i.ab, ptr %i.al, align 8, !alias.scope !245, !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.s, i64 152, i1 false), !alias.scope !247, !noalias !246
  br label %_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7compile.exit

bb.o:                                             ; preds = %._crit_edge, %bb.k, %bb.h
  %.sink26.i = phi ptr [ %i.ae, %bb.k ], [ %i.y, %bb.h ], [ %i.ai, %._crit_edge ]
  %.sink.i = phi i64 [ %i.ag, %bb.k ], [ %i.aa, %bb.h ], [ 34, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink26.i, ptr %i.am, align 8, !alias.scope !244, !noalias !249
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.an, align 8, !alias.scope !244, !noalias !249
  store i64 2, ptr %0, align 8, !alias.scope !244, !noalias !249
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAEEB10_(ptr noalias noundef align 8 dereferenceable(160) %i.p), !noalias !243
  br label %_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7compile.exit

bb.p:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !243
  unreachable

_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7compile.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs_NtCshhQDFPpdXZx_10regex_lite3nfaNtB4_3NFA8to_index(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !262, !noalias !263, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceEmNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3geteECshhQDFPpdXZx_10regex_lite.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = tail call noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !266, !noalias !267, !noundef !3 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !266, !noalias !267, !nonnull !3, !noundef !3 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  %i.di = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !3, !align !4, !noundef !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !3, !nonnull !3
  %i.dn = tail call noundef zeroext i1 %i.dm(ptr noundef nonnull %i.di, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 4)
  br label %bb.i

bb.y:                                             ; preds = %bb.a
  %i.do = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !3, !align !4, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !3, !nonnull !3
  %i.dt = tail call noundef zeroext i1 %i.ds(ptr noundef nonnull %i.do, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 5)
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtCshhQDFPpdXZx_10regex_lite3hirNtB5_4LookNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i16, ptr %0, align 2, !range !7, !noundef !3
  %i.b = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.a, i1 true) ; 2 uses
  %i.c = zext nneg i16 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsF_NtCshhQDFPpdXZx_10regex_lite3hirNtB5_4LookNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i16 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsF_NtCshhQDFPpdXZx_10regex_lite3hirNtB5_4LookNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.15, i64 %i.d
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !287, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshhQDFPpdXZx_10regex_lite.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshhQDFPpdXZx_10regex_lite(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshhQDFPpdXZx_10regex_lite.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshhQDFPpdXZx_10regex_lite.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshhQDFPpdXZx_10regex_lite(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECshhQDFPpdXZx_10regex_lite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEENtNtNtBJ_3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTccEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEENtNtNtBQ_3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTccEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArceEmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentINtNtCscdodAO9FK5_5alloc4sync3ArceEE10equivalentCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshhQDFPpdXZx_10regex_lite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTccEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeENCNvMs4_NtB2U_3nfaNtB3J_8Compiler7c_class0EE9from_iterB2U_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArceEmNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(48), ptr noundef nonnull, i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECshhQDFPpdXZx_10regex_lite(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCshhQDFPpdXZx_10regex_lite(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 8}
!5 = !{i8 0, i8 7}
!6 = !{i32 0, i32 1114112}
!7 = !{i16 1, i16 2049}
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 0, i64 2}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!14 = distinct !{!14, !13, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!15 = distinct !{!15, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_"}
!16 = distinct !{!16, !15, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 0"}
!17 = distinct !{!17, !13, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!18 = distinct !{!18, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCshhQDFPpdXZx_10regex_lite"}
!19 = distinct !{!19, !18, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCshhQDFPpdXZx_10regex_lite: argument 0"}
!20 = distinct !{!20, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCshhQDFPpdXZx_10regex_lite"}
!21 = distinct !{!21, !20, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCshhQDFPpdXZx_10regex_lite: argument 0"}
!22 = distinct !{!22, !15, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 1"}
!23 = distinct !{!23, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler9c_exactly0B9_"}
!24 = distinct !{!24, !23, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler9c_exactly0B9_: argument 1"}
!25 = distinct !{!25, !23, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler9c_exactly0B9_: argument 0"}
!26 = distinct !{null, null}
!27 = distinct !{!27, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty"}
!28 = distinct !{!28, !27, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty: argument 0"}
!29 = distinct !{!29, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!30 = distinct !{!30, !29, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!31 = distinct !{!31, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_"}
!32 = distinct !{!32, !31, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 1"}
!33 = distinct !{!33, !31, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangemENCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB1w_8Compiler9c_exactly0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 0"}
!34 = distinct !{!34, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler9c_exactly0B9_"}
!35 = distinct !{!35, !34, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler9c_exactly0B9_: argument 1"}
!36 = !{!14}
!37 = !{!16}
!38 = !{!17}
!39 = !{!14, !21, !19}
!40 = !{!17, !16}
!41 = !{!17, !21, !19}
!42 = !{!14, !16}
!43 = !{!16, !22}
!44 = !{!24}
!45 = !{!25, !16}
!46 = !{!24, !16}
!47 = !{!22}
!48 = !{!28}
!49 = !{!30, !28}
!50 = !{!33, !32}
!51 = !{!35, !33}
!52 = !{!32}
!53 = distinct !{!53, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty"}
!54 = distinct !{!54, !53, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty: argument 0"}
!55 = distinct !{!55, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!56 = distinct !{!56, !55, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!57 = distinct !{!57, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_char"}
!58 = distinct !{!58, !57, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_char: argument 0"}
!59 = distinct !{!59, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_class"}
!60 = distinct !{!60, !59, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_class: argument 0"}
!61 = distinct !{!61, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_look"}
!62 = distinct !{!62, !61, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_look: argument 0"}
!63 = distinct !{!63, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler12c_repetition"}
!64 = distinct !{!64, !63, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler12c_repetition: argument 1"}
!65 = distinct !{!65, !63, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler12c_repetition: argument 0"}
!66 = distinct !{!66, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler13c_zero_or_one"}
!67 = distinct !{!67, !66, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler13c_zero_or_one: argument 0"}
!68 = distinct !{!68, !66, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler13c_zero_or_one: argument 1"}
!69 = distinct !{null, null}
!70 = distinct !{!70, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!71 = distinct !{!71, !70, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!72 = distinct !{!72, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler10c_at_least"}
!73 = distinct !{!73, !72, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler10c_at_least: argument 0"}
!74 = distinct !{!74, !72, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler10c_at_least: argument 1"}
!75 = distinct !{null, null}
!76 = distinct !{!76, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!77 = distinct !{!77, !76, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!78 = distinct !{!78, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly"}
!79 = distinct !{!79, !78, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly: argument 1"}
!80 = distinct !{!80, !78, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly: argument 0"}
!81 = distinct !{null, null, null}
!82 = distinct !{null}
!83 = distinct !{!83, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly"}
!84 = distinct !{!84, !83, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly: argument 1"}
!85 = distinct !{!85, !83, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly: argument 0"}
!86 = distinct !{null, null}
!87 = distinct !{!87, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler8c_concatINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1c0EEB8_"}
!88 = distinct !{!88, !87, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler8c_concatINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1c0EEB8_: argument 0"}
!89 = distinct !{!89, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!90 = distinct !{!90, !89, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!91 = distinct !{!91, !89, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!92 = distinct !{!92, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1c0B9_"}
!93 = distinct !{!93, !92, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1c0B9_: argument 1"}
!94 = distinct !{null, null, null}
!95 = distinct !{!95, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty"}
!96 = distinct !{!96, !95, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler7c_empty: argument 0"}
!97 = distinct !{!97, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!98 = distinct !{!98, !97, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!99 = distinct !{!99, !87, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler8c_concatINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1c0EEB8_: argument 1"}
!100 = distinct !{!100, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!101 = distinct !{!101, !100, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!102 = distinct !{!102, !100, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1c0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!103 = distinct !{!103, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1c0B9_"}
!104 = distinct !{!104, !103, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1c0B9_: argument 1"}
!105 = distinct !{!105, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler13c_alternationINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1cs_0EEB8_"}
!106 = distinct !{!106, !105, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler13c_alternationINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1cs_0EEB8_: argument 0"}
!107 = distinct !{!107, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!108 = distinct !{!108, !107, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!109 = distinct !{!109, !107, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!110 = distinct !{!110, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_"}
!111 = distinct !{!111, !110, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_: argument 1"}
!112 = distinct !{null, null, null}
!113 = distinct !{!113, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_fail"}
!114 = distinct !{!114, !113, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler6c_fail: argument 0"}
!115 = distinct !{!115, !105, !"_RINvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB6_8Compiler13c_alternationINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterNtNtB8_3hir3HirENCNvB2_1cs_0EEB8_: argument 1"}
!116 = distinct !{!116, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!117 = distinct !{!117, !116, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!118 = distinct !{!118, !116, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!119 = distinct !{!119, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_"}
!120 = distinct !{!120, !119, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_: argument 1"}
!121 = distinct !{null}
!122 = distinct !{!122, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty"}
!123 = distinct !{!123, !122, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9add_empty: argument 0"}
!124 = distinct !{!124, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!125 = distinct !{!125, !124, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!126 = distinct !{!126, !124, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENCNvMs4_NtB1q_3nfaNtB27_8Compiler1cs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!127 = distinct !{!127, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_"}
!128 = distinct !{!128, !127, !"_RNCNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB7_8Compiler1cs_0B9_: argument 1"}
!129 = !{i16 0, i16 8}
!130 = !{!54}
!131 = !{!56, !54}
!132 = !{!58}
!133 = !{!60}
!134 = !{!62}
!135 = !{!64}
!136 = !{!65}
!137 = !{i32 0, i32 2}
!138 = !{!67}
!139 = !{!67, !68, !64}
!140 = !{!68, !64}
!141 = !{!67, !64}
!142 = !{!71, !67, !68, !64}
!143 = !{!73}
!144 = !{!74}
!145 = !{!73, !64}
!146 = !{!73, !74, !64}
!147 = !{!74, !64}
!148 = !{!77, !73, !74, !64}
!149 = !{!80, !79, !73, !74, !64}
!150 = !{!85, !84, !64}
!151 = !{!88}
!152 = !{!91, !90, !88}
!153 = !{!93, !91, !90, !88}
!154 = !{!90, !88}
!155 = !{!96}
!156 = !{!98, !96}
!157 = !{!99}
!158 = !{!102, !101, !88}
!159 = !{!104, !102, !101, !88}
!160 = !{!101, !88}
!161 = !{!106}
!162 = !{!109, !108, !106}
!163 = !{!111, !109, !108, !106}
!164 = !{!108, !106}
!165 = !{!114}
!166 = !{!115}
!167 = !{!118, !117, !106}
!168 = !{!120, !118, !117, !106}
!169 = !{!117, !106}
!170 = !{!106, !115}
!171 = !{!123, !106}
!172 = !{!126, !125, !106}
!173 = !{!128, !126, !125, !106}
!174 = !{!125, !106}
!175 = distinct !{!175, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_"}
!176 = distinct !{!176, !175, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_: argument 0"}
!177 = distinct !{!177, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateE8push_mutBI_"}
!178 = distinct !{!178, !177, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateE8push_mutBI_: argument 0"}
!179 = distinct !{!179, !177, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3nfa5StateE8push_mutBI_: argument 1"}
!180 = !{!176}
!181 = !{!178}
!182 = !{!179}
!183 = distinct !{!183, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_"}
!184 = distinct !{!184, !183, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_: argument 0"}
!185 = distinct !{!185, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCshhQDFPpdXZx_10regex_lite"}
!186 = distinct !{!186, !185, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCshhQDFPpdXZx_10regex_lite: argument 0"}
!187 = distinct !{!187, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_"}
!188 = distinct !{!188, !187, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtCshhQDFPpdXZx_10regex_lite3nfa3NFAE6borrowBN_: argument 0"}
!189 = !{!184}
!190 = !{!186}
!191 = !{!188}
!192 = distinct !{!192, !"_RNvMs4_NtCshhQDFPpdXZx_10regex_lite3nfaNtB5_8Compiler9c_exactly"}
end_hunk_1
