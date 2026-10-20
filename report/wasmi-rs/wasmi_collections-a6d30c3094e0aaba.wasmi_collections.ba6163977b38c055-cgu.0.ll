Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_collections-a6d30c3094e0aaba.wasmi_collections.ba6163977b38c055-cgu.0?download=true
inline.NumInlined: 148
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB4_14StringInterner22get_or_intern_hint_new:bb.a

_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.h, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i7 = phi i8 [ %i.cp, %bb.h ], [ %i.cl, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i.i7, label %.split19.us.i.i.i [
    i8 -1, label %.loopexit6.i.i
    i8 0, label %.loopexit.i
    i8 1, label %.split.i.i.i
  ]

.split19.us.i.i.i:                                ; preds = %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  unreachable

.loopexit6.i.i:                                   ; preds = %.split.i.i.i, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %.split.i.preheader.i.i
  %.sroa.4.0.i.ph.ph7.i.i = phi i64 [ %i.ce, %.split.i.preheader.i.i ], [ %i.ce, %.split.i.i.i ], [ %.sroa.8.0.i.i.i491, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  %i.cq = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.cq, label %.loopexit37.i, label %bb.i

bb.i:                                             ; preds = %.loopexit6.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 232
  %i.cs = icmp samesign ult i64 %.sroa.4.0.i.ph.ph7.i.i, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.4.0.i.ph.ph7.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !182, !nonnull !5, !noundef !5
  %i.cv = add i64 %.sroa.3.0.i.i, -1
  br label %.split.i.preheader.i.i

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us.i.i, %.preheader.i.i.us.i.us.i.i.preheader, %.lr.ph.6, %.preheader.i.i.us.i.us.i.i, %.preheader.i.i.us.i.us.i.i.1, %.preheader.i.i.us.i.us.i.i.2, %.preheader.i.i.us.i.us.i.i.3, %.preheader.i.i.us.i.us.i.i.4, %.preheader.i.i.us.i.us.i.i.5
  %.us-phi36.sink.i.ph.i = phi ptr [ %.sroa.0.0.us.i.i, %.lr.ph.6 ], [ %.sroa.0.0.us.i.i, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.5 ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.4 ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.3 ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.2 ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.1 ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i ], [ %.sroa.0.0.us.i.i, %.preheader.i.i.us.i.us.i.i.preheader ], [ %.sroa.0.0.i.i, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %.us-phi35.sink.i.ph.i = phi i64 [ %.sroa.8.0.us.i.us.i.i500, %.lr.ph.6 ], [ %.sroa.8.0.us.i.us.i.i500, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.5 ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.4 ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.3 ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.2 ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.1 ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i ], [ %.sroa.8.0.us.i.us.i.i500, %.preheader.i.i.us.i.us.i.i.preheader ], [ %.sroa.8.0.i.i.i491, %_RNvXs0_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %i.cw = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !186
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCsg06799QCvd1_17wasmi_collections(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.j) #21, !noalias !187
  br label %bb.k

.loopexit37.i:                                    ; preds = %.loopexit6.i.i, %.loopexit4.us.i.i
  %.us-phi36.sink.i.i = phi ptr [ %.sroa.0.0.us.i.i, %.loopexit4.us.i.i ], [ %.sroa.0.0.i.i, %.loopexit6.i.i ]
  %.us-phi35.sink.i.i = phi i64 [ %.sroa.4.0.i.ph.ph.us.i.i, %.loopexit4.us.i.i ], [ %.sroa.4.0.i.ph.ph7.i.i, %.loopexit6.i.i ]
  %i.cy = ptrtoint ptr %.us-phi36.sink.i.i to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi36.sink.i.ph.i) ]
  %i.cz = icmp samesign ult i64 %.us-phi35.sink.i.ph.i, 11
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %.us-phi36.sink.i.ph.i, i64 184
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.us-phi35.sink.i.ph.i
  %i.dc = load i32, ptr %i.db, align 4, !noundef !5
  br label %bb.ch

bb.l:                                             ; preds = %_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsg06799QCvd1_17wasmi_collections.exit, %.loopexit37.i
  %.sroa.21.0 = phi i64 [ %.us-phi35.sink.i.i, %.loopexit37.i ], [ undef, %_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsg06799QCvd1_17wasmi_collections.exit ]
  %.sroa.15.0 = phi i64 [ %i.cy, %.loopexit37.i ], [ 0, %_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsg06799QCvd1_17wasmi_collections.exit ]
  %.sroa.11.0 = ptrtoint ptr %i.m to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.t, ptr %i.l, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 4 uses
  %i.df = icmp ult i64 %i.de, 576460752303423488
  tail call void @llvm.assume(i1 %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.de, ptr %i.i, align 8
  %i.dg = icmp samesign ugt i64 %i.de, 4294967295
  %i.dh = shl nuw i64 %i.de, 32
  %.sroa.02.0.insert.insert.i = select i1 %i.dg, i64 513, i64 %i.dh ; 2 uses
  %i.di = trunc i64 %.sroa.02.0.insert.insert.i to i1
  br i1 %i.di, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RNCNvMNtCsg06799QCvd1_17wasmi_collections15string_internerNtB4_3Sym10from_usize0B6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #18
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.o:                                             ; preds = %bb.l
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.02.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dk = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.t, ptr %i.h, align 8, !noalias !188
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %i.dm, align 8, !noalias !188
  %i.dn = load i64, ptr %i.dd, align 8, !alias.scope !188, !noundef !5 ; 3 uses
  %i.do = load i64, ptr %0, align 8, !range !4, !alias.scope !188, !noundef !5
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArceEE8grow_oneCsg06799QCvd1_17wasmi_collections(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !189
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.s, label %bb.ci

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCsg06799QCvd1_17wasmi_collections(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.h) #21, !noalias !188
  br label %bb.ci

bb.t:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !188, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dn ; 2 uses
  store ptr %i.t, ptr %i.dv, align 8, !noalias !188
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %2, ptr %i.dw, align 8, !noalias !188
  %i.dx = add i64 %i.dn, 1
  store i64 %i.dx, ptr %i.dd, align 8, !alias.scope !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !190, !noundef !5 ; 13 uses
  %.not.i8 = icmp eq ptr %i.dz, null
  br i1 %.not.i8, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !190, !nonnull !5, !noundef !5 ; 3 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !191
  %i.ec = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef 8) #20, !noalias !191 ; 7 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.w, label %bb.x, !prof !179

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #19
          to label %.noexc.i unwind label %bb.cf, !noalias !191

.noexc.i:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 176
  store ptr null, ptr %i.ee, align 8, !noalias !191
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 230
  store ptr %i.ec, ptr %i.eb, align 8, !noalias !191
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 0, ptr %i.eg, align 8, !noalias !191
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !190, !noundef !5
  %i.ej = load ptr, ptr %i.k, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  store i16 1, ptr %i.ef, align 2, !noalias !192
  store ptr %i.ej, ptr %i.ec, align 8, !noalias !192
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ei, ptr %i.ek, align 8, !noalias !192
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 184
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.el, align 8, !noalias !192
  br label %bb.cg

bb.y:                                             ; preds = %bb.u
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.415.0.copyload.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !190 ; 3 uses
  %.sroa.6.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i9, align 8, !alias.scope !190 ; 11 uses
  %i.em = load ptr, ptr %i.k, align 8, !alias.scope !190, !nonnull !5, !noundef !5 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !190, !noundef !5 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val9.i = load ptr, ptr %i.ep, align 8, !alias.scope !190 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !193
  store ptr %i.em, ptr %i.f, align 8, !noalias !194
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.eo, ptr %i.eq, align 8, !noalias !194
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 230 ; 4 uses
  %i.es = load i16, ptr %i.er, align 2, !noalias !194, !noundef !5 ; 3 uses
  %i.et = icmp ugt i16 %i.es, 10
  br i1 %i.et, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp ult i64 %.sroa.6.0.copyload.i, 5
  br i1 %i.eu, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ev = zext nneg i16 %i.es to i64              ; 2 uses
  %i.ew = add i64 %.sroa.6.0.copyload.i, 1        ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ew, %i.ev
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %.sroa.6.0.copyload.i ; 5 uses
  br i1 %.not.i.i.i.i, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i.i.i.i, label %bb.ab

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i.i.i.i: ; preds = %bb.aa
  store ptr %i.em, ptr %i.ex, align 8, !alias.scope !195, !noalias !196
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %i.eo, ptr %i.ey, align 8, !alias.scope !195, !noalias !196
  br label %bb.aq

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ew
  %i.fa = sub nsw i64 %i.ev, %.sroa.6.0.copyload.i ; 2 uses
  %i.fb = shl nuw nsw i64 %i.fa, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull align 8 %i.ex, i64 %i.fb, i1 false), !alias.scope !195, !noalias !196
  store ptr %i.em, ptr %i.ex, align 8, !alias.scope !195, !noalias !196
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %i.eo, ptr %i.fc, align 8, !alias.scope !195, !noalias !196
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 184 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.6.0.copyload.i
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ew
  %i.fg = shl nuw nsw i64 %i.fa, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr nonnull align 4 %i.fe, i64 %i.fg, i1 false), !alias.scope !197, !noalias !196
  br label %bb.aq

bb.ac:                                            ; preds = %bb.z
  switch i64 %.sroa.6.0.copyload.i, label %bb.ad [
    i64 5, label %bb.af
    i64 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.fh = add i64 %.sroa.6.0.copyload.i, -7
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.ae ], [ true, %bb.ad ], [ false, %bb.z ], [ false, %bb.ac ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.fh, %bb.ad ], [ %.sroa.6.0.copyload.i, %bb.z ], [ %.sroa.6.0.copyload.i, %bb.ac ] ; 6 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.ae ], [ 6, %bb.ad ], [ 4, %bb.z ], [ %.sroa.6.0.copyload.i, %bb.ac ] ; 5 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !198
  %i.fi = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef 8) #20, !noalias !198 ; 9 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.ag, label %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inB1v_.exit.i.i.i.i, !prof !179

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #19
          to label %.noexc.i.i.i unwind label %bb.al, !noalias !194

.noexc.i.i.i:                                     ; preds = %bb.ag
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inB1v_.exit.i.i.i.i: ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 176
  store ptr null, ptr %i.fk, align 8, !noalias !198
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.fm = load i16, ptr %i.er, align 2, !noalias !200, !noundef !5
  %i.fn = zext i16 %i.fm to i64
  %i.fo = xor i64 %.sroa.013.0.i.i.i, -1
  %i.fp = add nsw i64 %i.fn, %i.fo                ; 5 uses
  %i.fq = trunc i64 %i.fp to i16
  store i16 %i.fq, ptr %i.fl, align 2, !alias.scope !199, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !200
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !200, !nonnull !5, !noundef !5 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !200, !noundef !5 ; 3 uses
  store ptr %i.fs, ptr %i.e, align 8, !noalias !200
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !noalias !200
  %i.fw = icmp ult i64 %i.fp, 12
  br i1 %i.fw, label %bb.am, label %bb.ah, !prof !201

bb.ah:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inB1v_.exit.i.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fp, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
          to label %bb.ak unwind label %bb.ai, !noalias !200

bb.ai:                                            ; preds = %bb.ah
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !202
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.aj, label %.thread.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCsg06799QCvd1_17wasmi_collections(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e) #21, !noalias !200
  br label %.thread.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.aj, %bb.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fi, i64 noundef 232, i64 noundef 8) #20, !noalias !198
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inB1v_.exit.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dz, i64 184 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.sroa.013.0.i.i.i
  %i.gd = load i32, ptr %i.gc, align 4, !noalias !200, !noundef !5 ; 2 uses
  %i.ge = add nuw nsw i64 %.sroa.013.0.i.i.i, 1   ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ge
  %i.gg = shl nuw nsw i64 %i.fp, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(232) %i.fi, ptr nonnull readonly align 8 %i.gf, i64 %i.gg, i1 false), !alias.scope !203, !noalias !204
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  %i.gj = shl nuw nsw i64 %i.fp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull readonly align 4 %i.gh, i64 %i.gj, i1 false), !alias.scope !205, !noalias !204
  %i.gk = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.gk, ptr %i.er, align 2, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !200
  %spec.select31.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.fi, ptr %i.dz ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 230 ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !noalias !206, !noundef !5 ; 2 uses
  %i.gn = zext i16 %i.gm to i64                   ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.gn
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i ; 5 uses
  br i1 %.not.i16.not.i.i.i, label %bb.an, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i17.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i17.i.i.i: ; preds = %bb.am
  store ptr %i.em, ptr %i.go, align 8, !alias.scope !207, !noalias !206
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.eo, ptr %i.gp, align 8, !alias.scope !207, !noalias !206
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.gq = add nuw nsw i64 %.sroa.510.0.i.i.i, 1   ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %spec.select31.i.i.i, i64 %i.gq
  %i.gs = sub nuw nsw i64 %i.gn, %.sroa.510.0.i.i.i ; 2 uses
  %i.gt = shl nuw nsw i64 %i.gs, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull align 8 %i.go, i64 %i.gt, i1 false), !alias.scope !207, !noalias !206
  store ptr %i.em, ptr %i.go, align 8, !alias.scope !207, !noalias !206
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.eo, ptr %i.gu, align 8, !alias.scope !207, !noalias !206
  %i.gv = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 184 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.510.0.i.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gq
  %i.gy = shl nuw nsw i64 %i.gs, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gx, ptr nonnull align 4 %i.gw, i64 %i.gy, i1 false), !alias.scope !208, !noalias !206
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.fx, %.thread.i.i.i.i ], [ %i.ga, %bb.al ] ; 2 uses
  %i.gz = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !209
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %.body.sink.split, label %.body

bb.ap:                                            ; preds = %bb.an, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i17.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 184
  %3 = add i16 %i.gm, 1
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.sroa.510.0.i.i.i
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.hc, align 4, !alias.scope !208, !noalias !206
  store i16 %3, ptr %i.gl, align 2, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dz, i64 176
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !210, !noundef !5 ; 2 uses
  %.not.i158.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i158.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hj = icmp eq i64 %.sroa.415.0.copyload.i, 0
  %.sroa.5.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ab, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEB1a_.exit.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dz, i64 184
  %4 = add nuw nsw i16 %i.es, 1
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.sroa.6.0.copyload.i
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %5, align 4, !alias.scope !197, !noalias !196
  store i16 %4, ptr %i.er, align 2, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193
  br label %bb.cg

._crit_edge.i.i:                                  ; preds = %.loopexit44.i.i, %bb.ap
  %.sroa.29.0.i.i = phi i32 [ undef, %bb.ap ], [ %.sroa.5.i.sroa.7.0.copyload.i.i, %.loopexit44.i.i ]
  %.sroa.27.0.i.i = phi i32 [ %i.gd, %bb.ap ], [ %i.lw, %.loopexit44.i.i ] ; 2 uses
  %.sroa.25.0.i.i = phi i64 [ %i.fu, %bb.ap ], [ %i.lp, %.loopexit44.i.i ] ; 3 uses
  %.sroa.21.0.i.i = phi ptr [ %i.fs, %bb.ap ], [ %i.ln, %.loopexit44.i.i ] ; 5 uses
  %.lcssa137.i.i = phi i64 [ %.sroa.415.0.copyload.i, %bb.ap ], [ %i.il, %.loopexit44.i.i ]
  %.lcssa.i.i = phi ptr [ %i.dz, %bb.ap ], [ %i.ig, %.loopexit44.i.i ]
  %.lcssa72.i.i = phi i64 [ 0, %bb.ap ], [ %i.il, %.loopexit44.i.i ] ; 2 uses
  %.lcssa65.i.i = phi ptr [ %i.fi, %bb.ap ], [ %i.ld, %.loopexit44.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !193
  store ptr %.lcssa.i.i, ptr %i.g, align 8, !noalias !193
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.lcssa137.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !193
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.21.0.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !193
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.25.0.i.i, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !193
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %.sroa.27.0.i.i, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !193
  %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i32 %.sroa.29.0.i.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !193
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %.lcssa65.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !193
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.lcssa72.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.hl = load ptr, ptr %.val9.i, align 8, !noalias !211, !noundef !5 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i19.i.i, label %bb.ar, label %bb.at, !prof !179

bb.ar:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
          to label %bb.as unwind label %bb.bb, !noalias !211

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !212, !noalias !211, !noundef !5 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !213
  %i.ho = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef 8) #20, !noalias !213 ; 12 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.au, label %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i.i.i.i, !prof !179

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #19
          to label %.noexc.i.i.i.i unwind label %bb.ay, !noalias !213

.noexc.i.i.i.i:                                   ; preds = %bb.au
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 176
  store ptr null, ptr %i.hq, align 8, !noalias !213
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 230 ; 2 uses
  store i16 0, ptr %i.hr, align 2, !noalias !213
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 232
  store ptr %i.hl, ptr %i.hs, align 8, !noalias !213
  %i.ht = add i64 %i.hn, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.az, !prof !179

bb.av:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
          to label %bb.aw unwind label %bb.ax, !noalias !213

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ho, i64 noundef 328, i64 noundef 8) #20, !noalias !213
  br label %.body.i.i.i.i

bb.ay:                                            ; preds = %bb.au
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ay, %bb.ax
  tail call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 176
  store ptr %i.ho, ptr %i.hw, align 8, !noalias !214
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 228
  store i16 0, ptr %i.hx, align 4, !noalias !215
  store ptr %i.ho, ptr %.val9.i, align 8, !alias.scope !212, !noalias !211
  store i64 %i.ht, ptr %i.hm, align 8, !alias.scope !212, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !211
  store ptr %.sroa.21.0.i.i, ptr %i.d, align 8, !noalias !211
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.25.0.i.i, ptr %i.hy, align 8, !noalias !211
  %i.hz = icmp eq i64 %.lcssa72.i.i, %i.hn
  br i1 %i.hz, label %bb.ce, label %.invoke.i.i.i.i, !prof !6

.invoke.i.i.i.i:                                  ; preds = %bb.az
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %.cont.i.i.i.i unwind label %bb.ba, !noalias !211

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %.invoke.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = atomicrmw sub ptr %.sroa.21.0.i.i, i64 1 release, align 8, !noalias !216
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %.body.sink.split, label %.body

bb.bb:                                            ; preds = %bb.ar
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = atomicrmw sub ptr %.sroa.21.0.i.i, i64 1 release, align 8, !noalias !217
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %.body.sink.split, label %.body

bb.bc:                                            ; preds = %.loopexit44.i.i, %.lr.ph.i.i
  %.sroa.27.1.i.i = phi i32 [ %i.gd, %.lr.ph.i.i ], [ %i.lw, %.loopexit44.i.i ] ; 4 uses
  %.sroa.25.1.i.i = phi i64 [ %i.fu, %.lr.ph.i.i ], [ %i.lp, %.loopexit44.i.i ] ; 5 uses
  %.sroa.21.1.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %i.ln, %.loopexit44.i.i ] ; 6 uses
  %i.ig = phi ptr [ %i.he, %.lr.ph.i.i ], [ %i.ql, %.loopexit44.i.i ] ; 20 uses
  %i.ih = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.ig, %.loopexit44.i.i ]
  %i.ii = phi i64 [ %.sroa.415.0.copyload.i, %.lr.ph.i.i ], [ %i.il, %.loopexit44.i.i ]
  %i.ij = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %i.ld, %.loopexit44.i.i ] ; 2 uses
  %i.ik = phi i1 [ %i.hj, %.lr.ph.i.i ], [ true, %.loopexit44.i.i ]
  %i.il = add i64 %i.ii, 1                        ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 228
  %i.in = load i16, ptr %i.im, align 4, !noalias !210 ; 4 uses
  %i.io = zext i16 %i.in to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !193
  store ptr %.sroa.21.1.i.i, ptr %i.c, align 8, !noalias !218
  store i64 %.sroa.25.1.i.i, ptr %i.hf, align 8, !noalias !218
  br i1 %i.ik, label %bb.be, label %bb.bd, !prof !6

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %bb.bg unwind label %bb.bf, !noalias !218

bb.be:                                            ; preds = %bb.bc
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 230 ; 4 uses
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !218, !noundef !5 ; 5 uses
  %i.ir = icmp ult i16 %i.iq, 11
  br i1 %i.ir, label %bb.bi, label %bb.bh

bb.bf:                                            ; preds = %bb.bo, %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bg:                                            ; preds = %bb.bd
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.it = icmp ult i16 %i.in, 5
  br i1 %i.it, label %bb.bn, label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.iu = zext nneg i16 %i.iq to i64              ; 4 uses
  %i.iv = add nuw nsw i16 %i.iq, 1
  %i.iw = add nuw nsw i64 %i.io, 1                ; 7 uses
  %.not.i.i28.not.i.i = icmp ult i16 %i.in, %i.iq
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.io ; 5 uses
  br i1 %.not.i.i28.not.i.i, label %bb.bj, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymEB18_.exit.i.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymEB18_.exit.i.i.i.i: ; preds = %bb.bi
  store ptr %.sroa.21.1.i.i, ptr %i.ix, align 8, !alias.scope !219, !noalias !220
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %.sroa.25.1.i.i, ptr %i.iy, align 8, !alias.scope !219, !noalias !220
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 184
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.io
  store i32 %.sroa.27.1.i.i, ptr %i.ja, align 4, !alias.scope !221, !noalias !220
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB28_3SymEEEB2a_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.iw
  %i.jc = sub nuw nsw i64 %i.iu, %i.io            ; 3 uses
  %i.jd = shl nuw nsw i64 %i.jc, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr nonnull align 8 %i.ix, i64 %i.jd, i1 false), !alias.scope !219, !noalias !220
  store ptr %.sroa.21.1.i.i, ptr %i.ix, align 8, !alias.scope !219, !noalias !220
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %.sroa.25.1.i.i, ptr %i.je, align 8, !alias.scope !219, !noalias !220
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ig, i64 184 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.io ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.iw
  %i.ji = shl nuw nsw i64 %i.jc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr nonnull align 4 %i.jg, i64 %i.ji, i1 false), !alias.scope !221, !noalias !220
  store i32 %.sroa.27.1.i.i, ptr %i.jg, align 4, !alias.scope !221, !noalias !220
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ig, i64 232 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.iw
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.io
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = shl nuw nsw i64 %i.jc, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr nonnull align 8 %i.jk, i64 %i.jn, i1 false), !alias.scope !222, !noalias !220
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB28_3SymEEEB2a_.exit.i.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB28_3SymEEEB2a_.exit.i.i.i.i: ; preds = %bb.bj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymEB18_.exit.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ig, i64 232 ; 6 uses
  %i.jp = add nuw nsw i64 %i.iu, 2                ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.iw
  store ptr %i.ij, ptr %i.jq, align 8, !alias.scope !222, !noalias !220
  store i16 %i.iv, ptr %i.ip, align 2, !noalias !220
  %i.jr = icmp samesign ult i64 %i.iw, %i.jp
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB28_3SymEEEB2a_.exit.i.i.i.i
  %i.js = add nuw nsw i64 %i.iu, 1
  %i.jt = sub nsw i64 %i.js, %i.io
  %i.ju = sub nsw i64 %i.iu, %i.io
  %xtraiter627 = and i64 %i.jt, 3                 ; 2 uses
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod628.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.jv, %.lr.ph.i.i.i.i.i.prol ], [ %i.iw, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter629 = phi i64 [ %prol.iter629.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.jv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.jw = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 176
  store ptr %i.ig, ptr %i.jz, align 8, !noalias !220
  %i.ka = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 228
  store i16 %i.ka, ptr %i.kb, align 4, !noalias !220
  %prol.iter629.next = add i64 %prol.iter629, 1   ; 2 uses
  %prol.iter629.cmp.not = icmp eq i64 %prol.iter629.next, %xtraiter627
  br i1 %prol.iter629.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !114

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.jv, %.lr.ph.i.i.i.i.i.prol ]
  %i.kc = icmp ult i64 %i.ju, 3
  br i1 %i.kc, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.sroa.0.06.i.i.i.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 176
  store ptr %i.ig, ptr %i.kg, align 8, !noalias !220
  %i.kh = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 228
  store i16 %i.kh, ptr %i.ki, align 4, !noalias !220
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 176
  store ptr %i.ig, ptr %i.km, align 8, !noalias !220
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 228
  store i16 %i.kn, ptr %i.ko, align 4, !noalias !220
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.kj
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 176
  store ptr %i.ig, ptr %i.ks, align 8, !noalias !220
  %i.kt = trunc nuw nsw i64 %i.kj to i16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 228
  store i16 %i.kt, ptr %i.ku, align 4, !noalias !220
  %i.kv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.kw = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.kp
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 176
  store ptr %i.ig, ptr %i.kz, align 8, !noalias !220
  %i.la = trunc nuw nsw i64 %i.kp to i16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 228
  store i16 %i.la, ptr %i.lb, align 4, !noalias !220
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.kv, %i.jp
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bh
  switch i16 %i.in, label %bb.bl [
    i16 5, label %bb.bn
    i16 6, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.lc = add nsw i64 %i.io, -7
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bh
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bm ], [ 6, %bb.bl ], [ 4, %bb.bh ], [ 5, %bb.bk ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.lc, %bb.bl ], [ %i.io, %bb.bh ], [ 5, %bb.bk ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bm ], [ true, %bb.bl ], [ false, %bb.bh ], [ false, %bb.bk ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !224
  %i.ld = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef 8) #20, !noalias !224 ; 15 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bo, label %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i, !prof !179

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #19
          to label %.noexc.i27.i.i unwind label %bb.bf, !noalias !218

.noexc.i27.i.i:                                   ; preds = %bb.bo
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i: ; preds = %bb.bn
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 176
  store ptr null, ptr %i.lf, align 8, !noalias !224
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 230 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.lh = load i16, ptr %i.ip, align 2, !noalias !227, !noundef !5
  %i.li = zext i16 %i.lh to i64
  %i.lj = xor i64 %.sroa.06.0.i.i.i, -1
  %i.lk = add nsw i64 %i.li, %i.lj                ; 5 uses
  %i.ll = trunc i64 %i.lk to i16
  store i16 %i.ll, ptr %i.lg, align 2, !alias.scope !226, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %.sroa.06.0.i.i.i ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !227, !nonnull !5, !noundef !5 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !227, !noundef !5 ; 4 uses
  store ptr %i.ln, ptr %i.a, align 8, !noalias !227
  store i64 %i.lp, ptr %i.hg, align 8, !noalias !227
  %i.lq = icmp ult i64 %i.lk, 12
  br i1 %i.lq, label %bb.bs, label %bb.bp, !prof !201

bb.bp:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lk, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
          to label %bb.br unwind label %bb.bq, !noalias !227

bb.bq:                                            ; preds = %bb.bp
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = atomicrmw sub ptr %i.ln, i64 1 release, align 8, !noalias !228
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %.sink.split.i.i.i.i, label %bb.ca

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1y_3SymEE13new_uninit_inB1A_.exit.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ig, i64 184 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.sroa.06.0.i.i.i
  %i.lw = load i32, ptr %i.lv, align 4, !noalias !227, !noundef !5 ; 3 uses
  %i.lx = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.lx
  %i.lz = shl nuw nsw i64 %i.lk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(232) %i.ld, ptr nonnull readonly align 8 %i.ly, i64 %i.lz, i1 false), !alias.scope !229, !noalias !230
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ld, i64 184
  %i.mc = shl nuw nsw i64 %i.lk, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr nonnull readonly align 4 %i.ma, i64 %i.mc, i1 false), !alias.scope !231, !noalias !230
  %i.md = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.md, ptr %i.ip, align 2, !noalias !227
  store ptr %i.ln, ptr %i.b, align 8, !alias.scope !225, !noalias !224
  store i64 %i.lp, ptr %i.hh, align 8, !alias.scope !225, !noalias !224
  store i32 %i.lw, ptr %i.hi, align 8, !alias.scope !225, !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  %i.me = load i16, ptr %i.lg, align 2, !noalias !224, !noundef !5 ; 3 uses
  %i.mf = zext i16 %i.me to i64
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 5 uses
  %i.mh = icmp ult i16 %i.me, 12
  br i1 %i.mh, label %bb.bt, label %bb.bv, !prof !201

end_hunk_0
