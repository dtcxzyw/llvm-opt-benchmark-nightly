Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_20SparseStructuralPlan8validate:bb.a
  store i64 %.sroa.5130.0.copyload, ptr %.sroa.5134.0..sroa_idx, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.aq, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !100
  %.not275 = icmp eq i64 %i.as, %i.aq
  br i1 %.not275, label %bb.d, label %.split271

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %2, ptr %i.ad, align 8
  %.idx = mul nuw nsw i64 %i.an, 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

.split271:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.ar, ptr %i.ae, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4139.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ah, ptr %i.ax, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4143.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @1671, ptr noundef nonnull %i.ae), !noalias !38512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.0366.0.copyload = load i64, ptr %i.af, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6370.0.copyload = load i64, ptr %.sroa.6370.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !38513
  %i.ay = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !38513 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.e, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, !prof !102

bb.e:                                             ; preds = %.split271
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.0366.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0366.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !38514
  br label %common.resume

common.resume:                                    ; preds = %bb.cv, %bb.cw, %bb.co, %bb.cp, %bb.cm, %bb.cn, %bb.ce, %bb.cf, %bb.cb, %bb.cc, %bb.j, %bb.k, %bb.f, %bb.g, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.nw, %bb.co ], [ %i.ba, %bb.f ], [ %i.dk, %bb.v ], [ %i.bn, %bb.j ], [ %i.nc, %bb.cb ], [ %i.ng, %bb.ce ], [ %i.nt, %bb.cm ], [ %i.ba, %bb.g ], [ %i.bn, %bb.k ], [ %i.nc, %bb.cc ], [ %i.ng, %bb.cf ], [ %i.nt, %bb.cn ], [ %i.nw, %bb.cp ], [ %i.oi, %bb.cw ], [ %i.oi, %bb.cv ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.split271
  store i64 %.sroa.0366.0.copyload, ptr %i.ay, align 8
  %.sroa.5.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx368, align 8
  %.sroa.6370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.sroa.6370.0.copyload, ptr %.sroa.6370.0..sroa_idx371, align 8
  store i8 0, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1672, ptr %.sroa.616.0..sroa_idx, align 8
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.cy
  %i.bc = phi i64 [ %2, %.lr.ph ], [ %.sroa.0100.0, %bb.cy ] ; 2 uses
  %.sroa.0326.0585 = phi ptr [ %i.al, %.lr.ph ], [ %i.bd, %bb.cy ] ; 35 uses
  %.sroa.8328.0584 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.cy ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 112 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.8328.0584, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.8328.0584, ptr %i.ac, align 8
  %i.bf = load i64, ptr %.sroa.0326.0585, align 8, !range !130, !noundef !100 ; 6 uses
  %i.bg = icmp ne i64 %i.bf, 4
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nsw i64 %i.bf, -3
  %i.bi = icmp samesign ugt i64 %i.bf, 2
  %i.bj = select i1 %i.bi, i64 %i.bh, i64 1
  switch i64 %i.bj, label %.loopexit499 [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.w
  ]

._crit_edge:                                      ; preds = %bb.cy, %bb.d
  %i.bk = phi i64 [ %2, %bb.d ], [ %.sroa.0100.0, %bb.cy ]
  %.not277 = icmp eq i64 %i.bk, %i.aj
  br i1 %.not277, label %bb.i, label %.split

bb.i:                                             ; preds = %._crit_edge
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.l

.split:                                           ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ad, ptr %i.i, align 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4230.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ai, ptr %i.bl, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4234.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @1659, ptr noundef nonnull %i.i), !noalias !38515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0443.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.5445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5445.0.copyload = load ptr, ptr %.sroa.5445.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6448.0.copyload = load i64, ptr %.sroa.6448.0..sroa_idx, align 8
  %i.bm = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit290 unwind label %bb.j, !noalias !38516 ; 4 uses

bb.j:                                             ; preds = %.split
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = icmp eq i64 %.sroa.0443.0.copyload, 0
  br i1 %i.bo, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5445.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5445.0.copyload, i64 noundef %.sroa.0443.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !38517
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit290: ; preds = %.split
  store i64 %.sroa.0443.0.copyload, ptr %i.bm, align 8
  %.sroa.5445.0..sroa_idx446 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.5445.0.copyload, ptr %.sroa.5445.0..sroa_idx446, align 8
  %.sroa.6448.0..sroa_idx449 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %.sroa.6448.0.copyload, ptr %.sroa.6448.0..sroa_idx449, align 8
  store i8 0, ptr %0, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %.sroa.4120.0..sroa_idx, align 8
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.5121.0..sroa_idx, align 8
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1660, ptr %.sroa.6122.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.b, %bb.m, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.m:                                             ; preds = %bb.da, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.l

.loopexit499:                                     ; preds = %.loopexit, %bb.h, %bb.af
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !noundef !100 ; 2 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 104 ; 2 uses
  store ptr %i.bs, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 40 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 64 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38518)
  switch i64 %i.bf, label %default.unreachable25.i [
    i64 0, label %.loopexit
    i64 1, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i
    i64 2, label %bb.p
  ]

default.unreachable25.i:                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !38518, !nonnull !100, !noundef !100
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !38518, !noundef !100 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.ca = and i64 %i.by, 1152921504606846968      ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %.not.i.i929 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i929, label %._crit_edge932, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.q:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 64
  %i.cd = add nsw i64 %.sroa.5.0.i.i930, -8       ; 2 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %._crit_edge932, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i

._crit_edge932:                                   ; preds = %bb.q, %bb.p
  %i.ce = shl i64 %i.by, 3
  %.idx943 = and i64 %i.ce, 56                    ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx943
  %.not.not.not.i.not.not.i.i933 = icmp samesign eq i64 %.idx943, 0
  br i1 %.not.not.not.i.not.not.i.i933, label %.loopexit, label %.lr.ph935.a

bb.r:                                             ; preds = %.lr.ph935.a
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.i.a = icmp eq ptr %i.cf, %3
  br i1 %.not.not.not.i.not.not.i.i.a, label %.loopexit, label %.lr.ph935.a

.lr.ph935.a:                                      ; preds = %._crit_edge932, %bb.r
  %4 = phi ptr [ %i.cf, %bb.r ], [ %i.cb, %._crit_edge932 ] ; 2 uses
  %.val3.i.i.i.a = load i64, ptr %4, align 8, !alias.scope !38519, !noalias !38520, !noundef !100
  %i.cg = icmp eq i64 %.val3.i.i.i.a, 0
  br i1 %i.cg, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i, label %bb.r

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.p, %bb.q
  %.sroa.0.05.i.i931 = phi ptr [ %i.cc, %bb.q ], [ %i.bz, %bb.p ] ; 9 uses
  %.sroa.5.0.i.i930 = phi i64 [ %i.cd, %bb.q ], [ %i.ca, %bb.p ]
  %.val13.i.i.i = load i64, ptr %.sroa.0.05.i.i931, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.ch = icmp eq i64 %.val13.i.i.i, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 8
  %.val13.i.1.i.i = load i64, ptr %i.ci, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cj = icmp eq i64 %.val13.i.1.i.i, 0
  %i.ck = or i1 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 16
  %.val13.i.2.i.i = load i64, ptr %i.cl, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cm = icmp eq i64 %.val13.i.2.i.i, 0
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 24
  %.val13.i.3.i.i = load i64, ptr %i.co, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cp = icmp eq i64 %.val13.i.3.i.i, 0
  %i.cq = or i1 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 32
  %.val13.i.4.i.i = load i64, ptr %i.cr, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cs = icmp eq i64 %.val13.i.4.i.i, 0
  %i.ct = or i1 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 40
  %.val13.i.5.i.i = load i64, ptr %i.cu, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cv = icmp eq i64 %.val13.i.5.i.i, 0
  %i.cw = or i1 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 48
  %.val13.i.6.i.i = load i64, ptr %i.cx, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.cy = icmp eq i64 %.val13.i.6.i.i, 0
  %i.cz = or i1 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i931, i64 56
  %.val13.i.7.i.i = load i64, ptr %i.da, align 8, !alias.scope !38519, !noalias !38521, !noundef !100
  %i.db = icmp eq i64 %.val13.i.7.i.i, 0
  %i.dc = or i1 %i.cz, %i.db
  br i1 %i.dc, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i, label %bb.q

_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i: ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !38518, !noundef !100
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i, label %.loopexit

_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i: ; preds = %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i, %.lr.ph935.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !38522
  %i.dg = tail call noundef dereferenceable_or_null(46) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 46, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !38522 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 46) #66, !noalias !38523
  unreachable

bb.t:                                             ; preds = %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.dg, ptr noundef nonnull align 1 dereferenceable(46) @1640, i64 46, i1 false), !noalias !38523
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !38524
  %i.di = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !38524 ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.u, label %bb.y, !prof !102

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i unwind label %bb.v, !noalias !38523

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 46, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !38525
  br label %common.resume

bb.w:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !100 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.split263, label %bb.cq

bb.x:                                             ; preds = %bb.cr, %bb.cg, %bb.n
  %i.dp = phi i64 [ %i.bc, %bb.n ], [ %.pre, %bb.cg ], [ %i.bc, %bb.cr ] ; 2 uses
  %.sroa.0100.0 = phi i64 [ %i.br, %bb.n ], [ %i.ed, %bb.cg ], [ %i.oc, %bb.cr ] ; 3 uses
  %.sroa.093.0 = phi i64 [ %i.br, %bb.n ], [ %i.eg, %bb.cg ], [ %i.nz, %bb.cr ] ; 2 uses
  %.sroa.065.0 = phi ptr [ %i.bp, %bb.n ], [ %i.bu, %bb.cg ], [ %i.dl, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.093.0, ptr %i.ab, align 8
  %.not283 = icmp eq i64 %.sroa.093.0, %i.dp
  br i1 %.not283, label %bb.ct, label %.split267

bb.y:                                             ; preds = %bb.t
  store i64 46, ptr %i.di, align 8, !noalias !38523
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dg, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !38523
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 46, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !38523
  store i8 0, ptr %0, align 8
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %.sroa.5399.0..sroa_idx, align 8
  %.sroa.6400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.6400.0..sroa_idx, align 8
  %.sroa.7401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1641, ptr %.sroa.7401.0..sroa_idx, align 8
  br label %bb.ch

.loopexit:                                        ; preds = %bb.r, %._crit_edge932, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i, %bb.o
  %i.dq = load i64, ptr %i.bt, align 8, !range !131, !noundef !100 ; 2 uses
  %i.dr = xor i64 %i.dq, -9223372036854775808
  %i.ds = icmp slt i64 %i.dq, 0
  %i.dt = select i1 %i.ds, i64 %i.dr, i64 3       ; 4 uses
  switch i64 %i.dt, label %.loopexit499 [
    i64 0, label %bb.ab
    i64 1, label %bb.ac
    i64 2, label %bb.z
    i64 3, label %bb.aa
  ]

bb.z:                                             ; preds = %.loopexit
  br label %bb.ac

bb.aa:                                            ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !noundef !100 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dw)
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.ac, %bb.aa
  %.sroa.023.0 = phi i64 [ %i.dv, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.dt, %.loopexit ]
  %i.dx = icmp eq i64 %i.bf, 0
  br i1 %i.dx, label %bb.ad, label %.sink.split

bb.ac:                                            ; preds = %.loopexit, %bb.z
  %.sink = phi i64 [ 56, %bb.z ], [ 48, %.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 %.sink
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !100
  br label %bb.ab

.sink.split:                                      ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !100
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %.sink.split
  %.sroa.024.0 = phi i64 [ 0, %bb.ab ], [ %i.eb, %.sink.split ]
  %.not279 = icmp eq i64 %.sroa.023.0, %.sroa.024.0
  br i1 %.not279, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs3_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_14SparseCountSet3sum(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0326.0585)
  %i.ec = load i8, ptr %i.v, align 8, !range !113, !noundef !100 ; 2 uses
  %.not280 = icmp eq i8 %i.ec, -1
  br i1 %.not280, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  switch i64 %i.dt, label %.loopexit499 [
    i64 0, label %bb.ck
    i64 1, label %bb.cl
    i64 2, label %bb.ci
    i64 3, label %bb.cj
  ]

bb.ag:                                            ; preds = %bb.ae
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4171.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4167.0..sroa_idx, i64 7, i1 false)
  %.sroa.5168.0.copyload = load i64, ptr %i.av, align 8
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6173.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6169.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i8 %i.ec, ptr %0, align 8
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5168.0.copyload, ptr %.sroa.5172.0..sroa_idx, align 8
  br label %bb.ch

bb.ah:                                            ; preds = %bb.ae
  %i.ed = load i64, ptr %i.av, align 8, !noundef !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ee = load i64, ptr %i.bs, align 8, !noundef !100
  %.not281 = icmp eq i64 %i.ed, %i.ee
  br i1 %.not281, label %bb.ai, label %.split255

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 96
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !100 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38527)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 88
  %i.ei = load i8, ptr %i.eh, align 8, !range !114, !alias.scope !38526, !noundef !100
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.aj, label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38530
  call fastcc void @_RNvMs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_17SparsePositionSet15validate_domain(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, i64 noundef %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1407, i64 noundef 6), !noalias !38531
  %i.ek = load i8, ptr %i.e, align 8, !range !113, !noalias !38530, !noundef !100 ; 2 uses
  %.not.i.i307 = icmp eq i8 %i.ek, -1
  br i1 %.not.i.i307, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.12.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.12.0.copyload343 = load i8, ptr %.sroa.12.0..sroa_idx342, align 1, !noalias !38532
  %.sroa.17.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.r, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx347, i64 6, i1 false)
  %.sroa.18.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.18.0.copyload352 = load i64, ptr %.sroa.18.0..sroa_idx351, align 8, !noalias !38532
  %.sroa.19.0..sroa_idx356 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.0..sroa_idx356, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38530
  br label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit.thread

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38530
  call fastcc void @_RNvMs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_17SparsePositionSet15validate_domain(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu, i64 noundef %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1408, i64 noundef 8), !noalias !38533
  %i.el = load i8, ptr %i.d, align 8, !range !113, !noalias !38530, !noundef !100 ; 2 uses
  %.not39.i.i = icmp eq i8 %i.el, -1
  br i1 %.not39.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.12.0..sroa_idx344 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.12.0.copyload345 = load i8, ptr %.sroa.12.0..sroa_idx344, align 1, !noalias !38532
  %.sroa.17.0..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.r, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx348, i64 6, i1 false)
  %.sroa.18.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.18.0.copyload354 = load i64, ptr %.sroa.18.0..sroa_idx353, align 8, !noalias !38532
  %.sroa.19.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.0..sroa_idx357, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38530
  br label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit.thread

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38530
  %i.em = load i64, ptr %i.bt, align 8, !range !131, !alias.scope !38534, !noundef !100 ; 2 uses
  %i.en = xor i64 %i.em, -9223372036854775808
  %i.eo = icmp slt i64 %i.em, 0
  %i.ep = select i1 %i.eo, i64 %i.en, i64 3
  switch i64 %i.ep, label %bb.ao [
    i64 0, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit.thread481
    i64 1, label %bb.ap
    i64 2, label %bb.aq
    i64 3, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.aw, %bb.ap, %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.eq = load i64, ptr %i.bu, align 8, !range !131, !alias.scope !38535, !noundef !100 ; 2 uses
  %i.er = xor i64 %i.eq, -9223372036854775808
  %i.es = icmp slt i64 %i.eq, 0
  %i.et = select i1 %i.es, i64 %i.er, i64 3       ; 2 uses
  switch i64 %i.et, label %bb.ao [
    i64 0, label %bb.au
    i64 1, label %bb.av
    i64 2, label %bb.as
    i64 3, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 48
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !38534, !noundef !100 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 56
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !38534, !noundef !100 ; 2 uses
  %i.ey = add i64 %i.ex, %i.ev                    ; 4 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit, label %bb.aw, !prof !106

bb.ar:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !38534, !nonnull !100, !noundef !100 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !38534, !noundef !100 ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.fd, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38536)
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit.thread481, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar
  %i.fg = load i64, ptr %i.bu, align 8, !range !131, !alias.scope !38537, !noundef !100 ; 2 uses
  %i.fh = xor i64 %i.fg, -9223372036854775808
  %i.fi = icmp slt i64 %i.fg, 0
  %i.fj = select i1 %i.fi, i64 %i.fh, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 72
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !38538 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0326.0585, i64 80
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !38538 ; 4 uses
  %.cast.i.i.i = ptrtoint ptr %i.fl to i64        ; 4 uses
  %i.fo = tail call i64 @llvm.uadd.sat.i64(i64 %.cast.i.i.i, i64 %i.fn)
  switch i64 %i.fj, label %.lr.ph.split.i.i.i [
    i64 0, label %_RNCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparsePositionSet12is_subset_ofs1_0Bc_.exit.thread.sink.split.sink.split.i.i.i
    i64 1, label %.lr.ph.split.us27.i.i.i
    i64 2, label %.lr.ph.split.us36.i.i.i
    i64 3, label %.lr.ph.split.us47.i.i.i
  ]

.lr.ph.split.us27.i.i.i:                          ; preds = %.lr.ph.i.i.i
  %.val3.us2858.i.i.i = load i64, ptr %i.fb, align 8, !noalias !38539, !noundef !100
  %i.fp = icmp ult i64 %.val3.us2858.i.i.i, %.cast.i.i.i
  br i1 %i.fp, label %.backedge.us29.i.i.i.preheader, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB4_17SparseValiditySet29contains_only_valid_positions.exit.thread481
end_hunk_0
begin_hunk_1_@_RNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_26PrimitiveStructuralEncoder15compress_levels:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !43117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43117
  br label %bb.ah

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding11compression15BlockCompressorEL_EEB1f_.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.aj
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(192) %i.r)
          to label %bb.am unwind label %bb.p

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding11compression15BlockCompressorEL_EEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.s)
          to label %bb.an unwind label %.thread42

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dx = trunc nuw i8 %.sroa.081.10 to i1
  br i1 %i.dx, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !43119)
  call void @llvm.experimental.noalias.scope.decl(metadata !43120)
  call void @llvm.experimental.noalias.scope.decl(metadata !43121)
  call void @llvm.experimental.noalias.scope.decl(metadata !43122)
  call void @llvm.experimental.noalias.scope.decl(metadata !43123)
  %i.dy = load ptr, ptr %i.ad, align 8, !alias.scope !43124, !nonnull !100, !noundef !100
  %i.dz = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !43124
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !43125)
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !43125 ; 2 uses
  %i.eb = icmp eq i64 %.val.i, 0
  br i1 %i.eb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i = load ptr, ptr %i.ec, align 8, !alias.scope !43125, !nonnull !100, !noundef !100
  %i.ed = shl nuw i64 %.val.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !43125
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit211
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef12RepDefSlicerEBF_.exit172.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit211, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit
  ret void

bb.aq:                                            ; preds = %bb.ac
  %i.ee = load i64, ptr %i.by, align 8, !alias.scope !43126, !noundef !100 ; 2 uses
  %i.ef = load i64, ptr %i.ae, align 8, !alias.scope !43126, !noundef !100 ; 2 uses
  %i.eg = lshr i64 %i.ef, 1                       ; 2 uses
  %i.eh = sub i64 %i.eg, %i.ee
  store i64 %i.eg, ptr %i.by, align 8, !alias.scope !43126
  %i.ei = shl i64 %i.ee, 1                        ; 2 uses
  %i.ej = shl i64 %i.eh, 1                        ; 2 uses
  %i.ek = call i64 @llvm.uadd.sat.i64(i64 %i.ei, i64 %i.ej)
  %.not.i.i = icmp ugt i64 %i.ek, %i.ef
  br i1 %.not.i.i, label %bb.ar, label %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit.i, !prof !106

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1304, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1305) #66
          to label %.noexc173 unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %bb.ar
  unreachable

_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit.i: ; preds = %bb.aq
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, i64 noundef %i.ei, i64 noundef %i.ej)
          to label %_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_rest.exit unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.024.0)
          to label %_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_rest.exit unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_rest.exit: ; preds = %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.el = load i64, ptr %i.bz, align 8, !noundef !100 ; 2 uses
  %i.em = lshr i64 %i.el, 1                       ; 3 uses
  store i64 %i.em, ptr %i.k, align 8
  br i1 %.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit183, %_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_rest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.en = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.bp unwind label %bb.bn

bb.au:                                            ; preds = %_RNvMs1_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_12RepDefSlicer10slice_rest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicetEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.bm, %bb.au
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit

bb.aw:                                            ; preds = %bb.au
  %i.ep = load ptr, ptr %i.ca, align 8, !nonnull !100, !noundef !100 ; 4 uses
  %i.eq = load i64, ptr %i.cb, align 8, !noundef !100 ; 3 uses
  %i.er = lshr i64 %i.eq, 1                       ; 4 uses
  %.idx = and i64 %i.eq, -2                       ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx
  %.not.i.not.i.i = icmp eq i64 %i.er, 0          ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 2 ; 2 uses
  %i.eu = icmp samesign eq i64 %.idx, 2
  %or.cond82 = select i1 %.not.i.not.i.i, i1 true, i1 %i.eu
  br i1 %or.cond82, label %.loopexit83, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %gepdiff = add nsw i64 %i.eq, -2                ; 2 uses
  %i.ev = lshr i64 %gepdiff, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %gepdiff, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ax
  %n.vec = and i64 %i.ev, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fc, %vector.body ]
  %vec.phi171 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fd, %vector.body ]
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %wide.load = load <2 x i16>, ptr %i.ew, align 2, !alias.scope !43127, !noalias !43128
  %wide.load172 = load <2 x i16>, ptr %i.ex, align 2, !alias.scope !43127, !noalias !43128
  %i.ey = icmp eq <2 x i16> %wide.load, %broadcast.splat
  %i.ez = icmp eq <2 x i16> %wide.load172, %broadcast.splat
  %i.fa = zext <2 x i1> %i.ey to <2 x i64>
  %i.fb = zext <2 x i1> %i.ez to <2 x i64>
  %i.fc = add <2 x i64> %vec.phi, %i.fa           ; 2 uses
  %i.fd = add <2 x i64> %vec.phi171, %i.fb        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !43006

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fd, %i.fc
  %i.ff = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %.loopexit83, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ax, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %bb.ax ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %bb.ax ], [ %i.ff, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.fk, %scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.fj, %scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %scalar.ph.preheader ]
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %.sroa.04.0.i.i.i
  %.val13.i.i.i = load i16, ptr %i.fg, align 2, !alias.scope !43127, !noalias !43128, !noundef !100
  %i.fh = icmp eq i16 %.val13.i.i.i, %6
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add i64 %.sroa.02.0.i.i.i, %i.fi        ; 2 uses
  %i.fk = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.ev
  br i1 %i.fl, label %.loopexit83, label %scalar.ph, !llvm.loop !43007

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.bb, %.invoke
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43129)
  call void @llvm.experimental.noalias.scope.decl(metadata !43130)
  call void @llvm.experimental.noalias.scope.decl(metadata !43131)
  call void @llvm.experimental.noalias.scope.decl(metadata !43132)
  %i.fm = load ptr, ptr %i.j, align 8, !alias.scope !43133, !nonnull !100, !noundef !100
  %i.fn = atomicrmw add ptr %i.fm, i64 -1 release, align 8, !noalias !43133
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ay:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.cj

.loopexit83:                                      ; preds = %scalar.ph, %middle.block, %bb.aw
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.aw ], [ %i.ff, %middle.block ], [ %i.fj, %scalar.ph ] ; 2 uses
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.er, i64 1)
  %i.fq = icmp ule i64 %.sroa.0.0.i.i, %i.fp
  call void @llvm.assume(i1 %i.fq)
  br i1 %i.cx, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.loopexit83
  %i.fr = icmp samesign eq i64 %.idx, 0
  br i1 %i.fr, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i
  %i.fs = phi ptr [ %i.fu, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i ], [ %i.es, %bb.az ]
  %i.ft = phi i64 [ %i.fw, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i ], [ 0, %bb.az ]
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -2 ; 3 uses
  %.val8.i = load i16, ptr %i.fu, align 2, !noalias !43134, !noundef !100
  %i.fv = icmp eq i16 %.val8.i, %6
  %i.fw = add i64 %i.ft, 1                        ; 2 uses
  br i1 %i.fv, label %.loopexit, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i: ; preds = %.lr.ph.i
  %i.fx = icmp eq ptr %i.ep, %i.fu
  br i1 %i.fx, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i, %bb.az, %.loopexit83
  %.sroa.031.0 = phi i64 [ 0, %.loopexit83 ], [ %i.er, %bb.az ], [ %i.fw, %.lr.ph.i ], [ %i.er, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8position5checkRtNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1q_26PrimitiveStructuralEncoder15compress_levelss_0E0B1w_.exit.i ]
  %i.fy = icmp eq i64 %.sroa.84.0102, 0
  %or.cond = or i1 %i.fy, %.not.i.not.i.i
  br i1 %or.cond, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.bc, %bb.bi, %bb.be, %.loopexit
  %i.fz = icmp eq i64 %.sroa.84.0102, %i.bx
  %i.ga = zext i1 %i.fz to i64
  %spec.select = add nuw nsw i64 %.sroa.0.0.i.i, %i.ga
  %i.gb = load i64, ptr %i.cc, align 8, !alias.scope !43135, !noundef !100 ; 4 uses
  %i.gc = load i64, ptr %i.v, align 8, !range !101, !alias.scope !43135, !noundef !100
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.loopexit
  %i.ge = load i16, ptr %i.ep, align 2, !noundef !100
  %i.gf = icmp eq i16 %i.ge, %6
  br i1 %i.gf, label %bb.bd, label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  %i.gg = load i64, ptr %i.cc, align 8, !noundef !100 ; 5 uses
  %i.gh = icmp ult i64 %i.gg, 1152921504606846976
  call void @llvm.assume(i1 %i.gh)
  %i.gi = add nsw i64 %i.gg, -1                   ; 5 uses
  %i.gj = load ptr, ptr %i.cd, align 8, !nonnull !100, !noundef !100 ; 2 uses
  %.not141 = icmp eq i64 %i.gg, 0
  br i1 %.not141, label %.invoke, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !100
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.ba, label %bb.bg

bb.bf:                                            ; preds = %bb.ab, %bb.h
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.gn = add nsw i64 %i.gg, -2                   ; 2 uses
  %.not142 = icmp eq i64 %i.gg, 1
  br i1 %.not142, label %.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noundef !100
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8
  %i.gr = load i64, ptr %i.cc, align 8, !noundef !100 ; 2 uses
  %i.gs = icmp ult i64 %i.gi, %i.gr
  br i1 %i.gs, label %bb.bi, label %.invoke

bb.bi:                                            ; preds = %bb.bh
  %i.gt = load ptr, ptr %i.cd, align 8, !nonnull !100, !noundef !100
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gi
  store i64 0, ptr %i.gu, align 8
  br label %bb.ba

.invoke:                                          ; preds = %bb.bh, %bb.bg, %bb.bd
  %i.gv = phi i64 [ %i.gn, %bb.bg ], [ %i.gi, %bb.bd ], [ %i.gi, %bb.bh ]
  %i.gw = phi i64 [ 1, %bb.bg ], [ 0, %bb.bd ], [ %i.gr, %bb.bh ]
  %i.gx = phi ptr [ @1987, %bb.bg ], [ @1986, %bb.bd ], [ @1988, %bb.bh ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gv, i64 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gx) #66
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bj:                                            ; preds = %bb.ba, %bb.bb
  %i.gy = load ptr, ptr %i.cd, align 8, !alias.scope !43135, !nonnull !100, !noundef !100
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gb
  store i64 %spec.select, ptr %i.gz, align 8
  %i.ha = add i64 %i.gb, 1                        ; 3 uses
  store i64 %i.ha, ptr %i.cc, align 8, !alias.scope !43135
  %i.hb = load i64, ptr %i.v, align 8, !range !101, !alias.scope !43136, !noundef !100
  %i.hc = icmp eq i64 %i.ha, %i.hb
  br i1 %i.hc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.hd = load ptr, ptr %i.cd, align 8, !alias.scope !43136, !nonnull !100, !noundef !100
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ha
  store i64 %.sroa.031.0, ptr %i.he, align 8
  %i.hf = add i64 %i.gb, 2
  store i64 %i.hf, ptr %i.cc, align 8, !alias.scope !43136
  call void @llvm.experimental.noalias.scope.decl(metadata !43137)
  call void @llvm.experimental.noalias.scope.decl(metadata !43138)
  call void @llvm.experimental.noalias.scope.decl(metadata !43139)
  call void @llvm.experimental.noalias.scope.decl(metadata !43140)
  %i.hg = load ptr, ptr %i.j, align 8, !alias.scope !43141, !nonnull !100, !noundef !100
  %i.hh = atomicrmw add ptr %i.hg, i64 -1 release, align 8, !noalias !43141
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit183

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit183 unwind label %bb.av

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit183: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.at

bb.bn:                                            ; preds = %bb.at
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43142)
  call void @llvm.experimental.noalias.scope.decl(metadata !43143)
  call void @llvm.experimental.noalias.scope.decl(metadata !43144)
  call void @llvm.experimental.noalias.scope.decl(metadata !43145)
  %i.hk = load ptr, ptr %i.h, align 8, !alias.scope !43146, !nonnull !100, !noundef !100
  %i.hl = atomicrmw add ptr %i.hk, i64 -1 release, align 8, !noalias !43146
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.bo, label %.body

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.cj

bb.bp:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 16, ptr %i.ce, align 8
  store i64 %i.em, ptr %i.cf, align 8
  store ptr %i.en, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXs2_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_11ComputeStat12compute_stat(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.bq unwind label %bb.cq

.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit.i, %bb.bq, %bb.ar, %bb.cg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  store i64 -9223372036854775804, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.hn = load ptr, ptr %i.ci, align 8, !invariant.load !100, !nonnull !100
  invoke void %i.hn(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull %.sroa.0102.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %bb.br unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.ho = load i8, ptr %i.d, align 8, !range !113, !noundef !100 ; 2 uses
  %.not143 = icmp eq i8 %i.ho, -1
  br i1 %.not143, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5116.0..sroa_idx, i64 24, i1 false)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4118.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4115.0..sroa_idx, i64 31, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ho, ptr %i.hp, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit195

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  %i.hq = icmp ugt i64 %i.el, 131071
  br i1 %i.hq, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hr = trunc nuw i64 %i.em to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store i16 %i.hr, ptr %i.ck, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !43147)
  call void @llvm.experimental.noalias.scope.decl(metadata !43148)
  %i.hs = load i64, ptr %i.m, align 8, !range !101, !alias.scope !43147, !noundef !100
  %i.ht = icmp eq i64 %i.cm, %i.hs
  br i1 %i.ht, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21CompressedLevelsChunkE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %._crit_edge124 unwind label %bb.bw, !noalias !43148

._crit_edge124:                                   ; preds = %bb.bv
  %.pre = load ptr, ptr %i.bu, align 8, !alias.scope !43147
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bv
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict20normalize_dict_nulls:bb.a
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ii) #67
          to label %bb.jm unwind label %bb.ln, !noalias !57547

bb.jp:                                            ; preds = %bb.jn
  %i.ahk = load i64, ptr %i.ig, align 8, !range !153, !noalias !57549, !noundef !100 ; 2 uses
  %.not193.i = icmp eq i64 %i.ahk, -1
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8, !noalias !57549 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.aho = load ptr, ptr %i.ahn, align 8, !noalias !57549 ; 2 uses
  br i1 %.not193.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %.sroa.6181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %.sroa.6181.0.copyload.i = load i64, ptr %.sroa.6181.0..sroa_idx.i, align 8, !noalias !57549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie), !noalias !57549
  store i64 %i.ahk, ptr %i.ie, align 8, !noalias !57549
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ahm, ptr %.sroa.4120.0..sroa_idx.i, align 8, !noalias !57549
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store ptr %i.aho, ptr %.sroa.5121.0..sroa_idx.i, align 8, !noalias !57549
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %.sroa.6181.0.copyload.i, ptr %.sroa.6122.0..sroa_idx.i, align 8, !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id), !noalias !57549
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.id, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @415)
          to label %bb.lf unwind label %bb.jo, !noalias !57547

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if), !noalias !57549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.if, ptr noundef nonnull align 8 dereferenceable(96) %i.ij, i64 96, i1 false), !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6354.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !57609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !57549
  store ptr %i.ahm, ptr %i.hf, align 16, !noalias !57610
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.aho, ptr %i.ahp, align 8, !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !57610
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.if)
          to label %bb.ju unwind label %bb.jt, !noalias !57611

.body36.i.i116:                                   ; preds = %bb.kg, %.body.i248.i, %bb.jw, %bb.jt
  %.pn.i.i117 = phi { ptr, i32 } [ %eh.lpad-body.i.i120, %.body.i248.i ], [ %i.aio, %bb.kg ], [ %i.aht, %bb.jt ], [ %i.ahw, %bb.jw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57612)
  call void @llvm.experimental.noalias.scope.decl(metadata !57613)
  %i.ahq = load ptr, ptr %i.hf, align 16, !alias.scope !57614, !noalias !57610, !nonnull !100, !noundef !100
  %i.ahr = atomicrmw add ptr %i.ahq, i64 -1 release, align 8, !noalias !57615
  %i.ahs = icmp eq i64 %i.ahr, 1
  br i1 %i.ahs, label %bb.js, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i118

bb.js:                                            ; preds = %.body36.i.i116
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i118 unwind label %bb.ko, !noalias !57616

bb.jt:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i131, %bb.jr
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i116

bb.ju:                                            ; preds = %bb.jr
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !57617
  %i.ahu = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57617 ; 4 uses
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %bb.jv, label %bb.jy, !prof !102

bb.jv:                                            ; preds = %bb.ju
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc40.i.i142 unwind label %bb.jw, !noalias !57616

.noexc40.i.i142:                                  ; preds = %bb.jv
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc) #67
          to label %.body36.i.i116 unwind label %bb.jx, !noalias !57616

bb.jx:                                            ; preds = %bb.jw
  %i.ahx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57616
  unreachable

bb.jy:                                            ; preds = %bb.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahu, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !noalias !57616
  store ptr %i.ahu, ptr %i.hd, align 8, !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !57610
  %i.ahy = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hf)
          to label %bb.ka unwind label %bb.jz, !noalias !57616

bb.jz:                                            ; preds = %bb.ka, %bb.jy
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i248.i

.body.i248.i:                                     ; preds = %bb.kd, %bb.jz
  %eh.lpad-body.i.i120 = phi { ptr, i32 } [ %i.ahz, %bb.jz ], [ %i.aic, %bb.kd ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hd) #67
          to label %.body36.i.i116 unwind label %bb.ko, !noalias !57616

bb.ka:                                            ; preds = %bb.jy
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahy)
          to label %bb.kb unwind label %bb.jz, !noalias !57616

bb.kb:                                            ; preds = %bb.ka
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !57618
  %i.aia = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57618 ; 3 uses
  %i.aib = icmp eq ptr %i.aia, null
  br i1 %i.aib, label %bb.kc, label %bb.kf, !prof !102

bb.kc:                                            ; preds = %bb.kb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc41.i.i141 unwind label %bb.kd, !noalias !57616

.noexc41.i.i141:                                  ; preds = %bb.kc
  unreachable

bb.kd:                                            ; preds = %bb.kc
  %i.aic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb) #67
          to label %.body.i248.i unwind label %bb.ke, !noalias !57616

bb.ke:                                            ; preds = %bb.kd
  %i.aid = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57616
  unreachable

bb.kf:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aia, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !noalias !57616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !57610
  %i.aie = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  store ptr %i.ahu, ptr %i.aie, align 8, !noalias !57610
  %i.aif = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store ptr %i.aia, ptr %i.aif, align 8, !noalias !57610
  store i8 34, ptr %i.he, align 8, !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !57610
  %i.aig = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.aih = load ptr, ptr %i.aig, align 8, !alias.scope !57609, !noalias !57549, !noundef !100
  %.not.i249.i = icmp eq ptr %i.aih, null         ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  %i.aij = load i64, ptr %i.aii, align 8, !noalias !57549
  %.sroa.08.0.i.i121 = select i1 %.not.i249.i, i64 0, i64 %i.aij
  %i.aik = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ail = load i64, ptr %i.aik, align 8, !alias.scope !57609, !noalias !57549, !noundef !100 ; 2 uses
  %i.aim = lshr i64 %i.ail, 1
  %i.ain = icmp eq i64 %.sroa.08.0.i.i121, %i.aim
  br i1 %i.ain, label %bb.kt, label %bb.kh

bb.kg:                                            ; preds = %.split429.i, %bb.kk, %bb.kh
  %i.aio = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.he) #67
          to label %.body36.i.i116 unwind label %bb.ko, !noalias !57616

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !57610
  %i.aip = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hf)
          to label %bb.ki unwind label %bb.kg, !noalias !57616 ; 3 uses

bb.ki:                                            ; preds = %bb.kh
  store i64 %i.aip, ptr %i.ha, align 8, !noalias !57610
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.air = load ptr, ptr %i.aiq, align 8, !alias.scope !57609, !noalias !57549, !nonnull !100, !noundef !100 ; 3 uses
  %.idx.i.i = and i64 %i.ail, -2                  ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 %.idx.i.i ; 2 uses
  %i.ait = icmp samesign eq i64 %.idx.i.i, 0
  br i1 %i.ait, label %.loopexit.i.i133, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %bb.ki
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.if, i64 80
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.if, i64 72
  %i.aix = load i64, ptr %i.aiu, align 8, !noalias !57549
  %i.aiy = load ptr, ptr %i.aiv, align 8, !noalias !57549
  %i.aiz = load i64, ptr %i.aiw, align 8, !noalias !57549
  br i1 %.not.i249.i, label %.lr.ph.i.i.split.us.i139, label %.lr.ph.i.i.split.i123

.lr.ph.i.i.split.us.i139:                         ; preds = %.lr.ph.i.i.i122, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i
  %i.aja = phi i64 [ %i.ajg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i ], [ 0, %.lr.ph.i.i.i122 ] ; 2 uses
  %i.ajb = phi ptr [ %i.ajf, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i ], [ %i.air, %.lr.ph.i.i.i122 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57619)
  call void @llvm.experimental.noalias.scope.decl(metadata !57620)
  %i.ajc = load i16, ptr %i.ajb, align 2, !alias.scope !57621, !noalias !57622, !noundef !100 ; 2 uses
  %i.ajd = icmp sgt i16 %i.ajc, -1
  %i.aje = zext nneg i16 %i.ajc to i64
  %.not.i.i.i.i.i.us.i140 = icmp ugt i64 %i.aip, %i.aje
  %or.cond.i250.us.i = select i1 %i.ajd, i1 %.not.i.i.i.i.i.us.i140, i1 false
  br i1 %or.cond.i250.us.i, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i, label %.split429.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i: ; preds = %.lr.ph.i.i.split.us.i139
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajb, i64 2 ; 2 uses
  %i.ajg = add nuw i64 %i.aja, 1
  %i.ajh = icmp eq ptr %i.ajf, %i.ais
  br i1 %i.ajh, label %.loopexit.i.i133, label %.lr.ph.i.i.split.us.i139

.lr.ph.i.i.split.i123:                            ; preds = %.lr.ph.i.i.i122, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.aji = phi i64 [ %i.ajy, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %.lr.ph.i.i.i122 ] ; 4 uses
  %i.ajj = phi ptr [ %i.ajk, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.air, %.lr.ph.i.i.i122 ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57619)
  call void @llvm.experimental.noalias.scope.decl(metadata !57620)
  %i.ajl = load i16, ptr %i.ajj, align 2, !alias.scope !57621, !noalias !57622, !noundef !100 ; 2 uses
  %i.ajm = icmp sgt i16 %i.ajl, -1
  %i.ajn = zext nneg i16 %i.ajl to i64
  %.not.i.i.i.i.i.i124 = icmp ugt i64 %i.aip, %i.ajn
  %or.cond.i250.i = select i1 %i.ajm, i1 %.not.i.i.i.i.i.i124, i1 false
  br i1 %or.cond.i250.i, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %bb.kj

bb.kj:                                            ; preds = %.lr.ph.i.i.split.i123
  %i.ajo = icmp ult i64 %i.aji, %i.aix
  br i1 %i.ajo, label %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %bb.kk, !prof !103

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66
          to label %.noexc43.i.i125 unwind label %bb.kg, !noalias !57616

.noexc43.i.i125:                                  ; preds = %bb.kk
  unreachable

_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.kj
  %i.ajp = add i64 %i.aji, %i.aiz                 ; 2 uses
  %i.ajq = lshr i64 %i.ajp, 3
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !noalias !57623, !noundef !100
  %i.ajt = trunc i64 %i.ajp to i8
  %i.aju = and i8 %i.ajt, 7
  %i.ajv = xor i8 %i.ajs, -1
  %i.ajw = lshr i8 %i.ajv, %i.aju
  %.fr8.i.i.i.i.i126 = freeze i8 %i.ajw
  %i.ajx = trunc i8 %.fr8.i.i.i.i.i126 to i1
  br i1 %i.ajx, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %.split429.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %.lr.ph.i.i.split.i123
  %i.ajy = add nuw i64 %i.aji, 1
  %i.ajz = icmp eq ptr %i.ajk, %i.ais
  br i1 %i.ajz, label %.loopexit.i.i133, label %.lr.ph.i.i.split.i123

.split429.i:                                      ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %.lr.ph.i.i.split.us.i139
  %.us-phi.i127 = phi i64 [ %i.aja, %.lr.ph.i.i.split.us.i139 ], [ %i.aji, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  %.us-phi430.i = phi ptr [ %i.ajb, %.lr.ph.i.i.split.us.i139 ], [ %i.ajj, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !57610
  store i64 %.us-phi.i127, ptr %i.gz, align 8, !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !57610
  store ptr %.us-phi430.i, ptr %i.gy, align 8, !noalias !57610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !57610
  store ptr %i.gy, ptr %i.gw, align 8, !noalias !57610
  %.sroa.420.0..sroa_idx.i.i128 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRsNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.420.0..sroa_idx.i.i128, align 8, !noalias !57610
  %i.aka = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr %i.gz, ptr %i.aka, align 8, !noalias !57610
  %.sroa.424.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i129, align 8, !noalias !57610
  %i.akb = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store ptr %i.ha, ptr %i.akb, align 8, !noalias !57610
  %.sroa.428.0..sroa_idx.i.i130 = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i130, align 8, !noalias !57610
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gx, ptr noundef nonnull @2078, ptr noundef nonnull %i.gw)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i131 unwind label %bb.kg, !noalias !57616

.loopexit.i.i133:                                 ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !57610
  br label %bb.kt

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i131: ; preds = %.split429.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !noalias !57610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6354.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false), !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !57610
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %bb.kl unwind label %bb.jt, !noalias !57616

bb.kl:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !57610
  call void @llvm.experimental.noalias.scope.decl(metadata !57625)
  call void @llvm.experimental.noalias.scope.decl(metadata !57626)
  %i.akc = load ptr, ptr %i.hf, align 16, !alias.scope !57627, !noalias !57610, !nonnull !100, !noundef !100
  %i.akd = atomicrmw add ptr %i.akc, i64 -1 release, align 8, !noalias !57628
  %i.ake = icmp eq i64 %i.akd, 1
  br i1 %i.ake, label %bb.km, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i132

bb.km:                                            ; preds = %bb.kl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i132 unwind label %bb.kn, !noalias !57616

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i118: ; preds = %bb.kn, %bb.js, %.body36.i.i116
  %.pn34.i.i119 = phi { ptr, i32 } [ %i.akf, %bb.kn ], [ %.pn.i.i117, %bb.js ], [ %.pn.i.i117, %.body36.i.i116 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.if) #67
          to label %.body.i114 unwind label %bb.ko, !noalias !57611

bb.kn:                                            ; preds = %bb.km
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i118

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i132: ; preds = %bb.km, %bb.kl
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.if)
          to label %bb.kp unwind label %bb.jo, !noalias !57547

bb.ko:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i118, %bb.kg, %.body.i248.i, %bb.js
  %i.akg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57611
  unreachable

bb.kp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !57549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !57549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !noalias !57629
  store i64 -9223372036854775794, ptr %i.ib, align 8, !noalias !57630
  %.sroa.6354.0..sroa_idx355.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6354.0..sroa_idx355.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6354.i, i64 24, i1 false), !noalias !57630
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1246, i64 noundef 43, ptr noundef nonnull %i.ib, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1251, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @412) #66
          to label %bb.kr unwind label %bb.kq, !noalias !57631

bb.kq:                                            ; preds = %bb.kp
  %i.akh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ib) #67
          to label %.body.i114 unwind label %bb.ks, !noalias !57631

bb.kr:                                            ; preds = %bb.kp
  unreachable

bb.ks:                                            ; preds = %bb.kq
  %i.aki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57631
  unreachable

bb.kt:                                            ; preds = %.loopexit.i.i133, %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.sroa.4.i32)
  %.sroa.04.i.sroa.0.0.copyload.i134 = load i64, ptr %i.he, align 8, !noalias !57610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.aie, i64 16, i1 false), !noalias !57610
  %.sroa.04.i.sroa.4.24..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4.i32, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx.i135, ptr noundef nonnull align 8 dereferenceable(96) %i.if, i64 96, i1 false), !noalias !57632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6354.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i32, i64 24, i1 false), !noalias !57624
  %i.akj = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.sroa.5362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic), !noalias !57549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5362.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %i.akj, i64 88, i1 false), !noalias !57549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.4.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !57549
  %.sroa.4361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %.sroa.6363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 136
  %i.akm = load <2 x ptr>, ptr %i.hf, align 16, !noalias !57610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !57549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4361.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6354.i, i64 24, i1 false), !noalias !57549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6354.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !noalias !57549
  store i64 1, ptr %i.ic, align 8, !noalias !57549
  store i64 1, ptr %i.akk, align 8, !noalias !57549
  store i64 %.sroa.04.i.sroa.0.0.copyload.i134, ptr %i.akl, align 8, !noalias !57549
  store <2 x ptr> %i.akm, ptr %.sroa.6363.0..sroa_idx.i, align 8, !noalias !57549
  %.sroa.8365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 152
  store i8 0, ptr %.sroa.8365.0..sroa_idx.i, align 8, !noalias !57549
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !57633
  %i.akn = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57633 ; 3 uses
  %i.ako = icmp eq ptr %i.akn, null
  br i1 %i.ako, label %bb.ku, label %bb.kx, !prof !102

bb.ku:                                            ; preds = %bb.kt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #66
          to label %.noexc257.i unwind label %bb.kv, !noalias !57547

.noexc257.i:                                      ; preds = %bb.ku
  unreachable

bb.kv:                                            ; preds = %bb.ku
  %i.akp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1l_5types9Int16TypeEEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ic) #67
          to label %.body.i114 unwind label %bb.kw, !noalias !57547

bb.kw:                                            ; preds = %bb.kv
  %i.akq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57547
  unreachable

bb.kx:                                            ; preds = %bb.kt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.akn, ptr noundef nonnull align 8 dereferenceable(160) %i.ic, i64 160, i1 false), !noalias !57547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !noalias !57549
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.akn, ptr %i.akr, align 8, !alias.scope !57547
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @422, ptr %i.aks, align 8, !alias.scope !57547
  store i8 -1, ptr %0, align 8, !alias.scope !57547
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ii)
          to label %bb.ky unwind label %.split.i136, !noalias !57547

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii), !noalias !57549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !noalias !57549
  call void @llvm.experimental.noalias.scope.decl(metadata !57634)
  %.val.i258.i = load i64, ptr %i.il, align 8, !alias.scope !57634, !noalias !57549 ; 2 uses
  %i.akt = icmp eq i64 %.val.i258.i, 0
  br i1 %i.akt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecsEECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %.val2.i.i137 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i58, align 8, !alias.scope !57634, !noalias !57549, !nonnull !100, !noundef !100
  %i.aku = shl nuw i64 %.val.i258.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i137, i64 noundef %i.aku, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !57635
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecsEECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecsEECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.kz, %bb.ky
  %i.akv = load i64, ptr %i.aex, align 8, !range !136, !alias.scope !57636, !noalias !57549, !noundef !100
  %i.akw = icmp eq i64 %i.akv, 0
  br i1 %i.akw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i138, label %bb.la

bb.la:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecsEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aex)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i138 unwind label %bb.lb, !noalias !57547

bb.lb:                                            ; preds = %bb.la
  %i.akx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acx) #67
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit302.i unwind label %bb.lc, !noalias !57547

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i138: ; preds = %bb.la, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecsEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int16TypeEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %.body260.i, !noalias !57547

bb.lc:                                            ; preds = %bb.lb
  %i.aky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57547
  unreachable

end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict20normalize_dict_nulls:bb.a
  %.sroa.0125.2.lpad-body.i688 = phi i1 [ false, %bb.aiy ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698 ], [ %.sroa.0125.2.i686, %bb.ahw ], [ false, %bb.ajd ]
  %eh.lpad-body.i689 = phi { ptr, i32 } [ %i.cky, %bb.aiy ], [ %.pn34.i.i699, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698 ], [ %i.cic, %bb.ahw ], [ %i.clg, %bb.ajd ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cm) #67
          to label %bb.ahu unwind label %bb.ajv, !noalias !57982

bb.ahx:                                           ; preds = %bb.ahv
  %i.cid = load i64, ptr %i.ck, align 8, !range !153, !noalias !57984, !noundef !100 ; 2 uses
  %.not193.i690 = icmp eq i64 %i.cid, -1
  %i.cie = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cif = load ptr, ptr %i.cie, align 8, !noalias !57984 ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cih = load ptr, ptr %i.cig, align 8, !noalias !57984 ; 2 uses
  br i1 %.not193.i690, label %bb.ahz, label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx
  %.sroa.6181.0..sroa_idx.i691 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.6181.0.copyload.i692 = load i64, ptr %.sroa.6181.0..sroa_idx.i691, align 8, !noalias !57984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !57984
  store i64 %i.cid, ptr %i.ci, align 8, !noalias !57984
  %.sroa.4120.0..sroa_idx.i693 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cif, ptr %.sroa.4120.0..sroa_idx.i693, align 8, !noalias !57984
  %.sroa.5121.0..sroa_idx.i694 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cih, ptr %.sroa.5121.0..sroa_idx.i694, align 8, !noalias !57984
  %.sroa.6122.0..sroa_idx.i695 = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %.sroa.6181.0.copyload.i692, ptr %.sroa.6122.0..sroa_idx.i695, align 8, !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !57984
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ch, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @415)
          to label %bb.ajn unwind label %bb.ahw, !noalias !57982

bb.ahz:                                           ; preds = %bb.ahx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !57984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cj, ptr noundef nonnull align 8 dereferenceable(96) %i.cn, i64 96, i1 false), !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6330.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !57984
  store ptr %i.cif, ptr %i.bj, align 16, !noalias !58045
  %i.cii = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.cih, ptr %i.cii, align 8, !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !58045
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cj)
          to label %bb.aic unwind label %bb.aib, !noalias !58046

.body36.i.i696:                                   ; preds = %bb.aio, %.body.i248.i700, %bb.aie, %bb.aib
  %.pn.i.i697 = phi { ptr, i32 } [ %eh.lpad-body.i.i701, %.body.i248.i700 ], [ %i.cjh, %bb.aio ], [ %i.cim, %bb.aib ], [ %i.cip, %bb.aie ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58047)
  call void @llvm.experimental.noalias.scope.decl(metadata !58048)
  %i.cij = load ptr, ptr %i.bj, align 16, !alias.scope !58049, !noalias !58045, !nonnull !100, !noundef !100
  %i.cik = atomicrmw add ptr %i.cij, i64 -1 release, align 8, !noalias !58050
  %i.cil = icmp eq i64 %i.cik, 1
  br i1 %i.cil, label %bb.aia, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698

bb.aia:                                           ; preds = %.body36.i.i696
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698 unwind label %bb.aiw, !noalias !58051

bb.aib:                                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i714, %bb.ahz
  %i.cim = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i696

bb.aic:                                           ; preds = %bb.ahz
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !58052
  %i.cin = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !58052 ; 4 uses
  %i.cio = icmp eq ptr %i.cin, null
  br i1 %i.cio, label %bb.aid, label %bb.aig, !prof !102

bb.aid:                                           ; preds = %bb.aic
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc40.i.i725 unwind label %bb.aie, !noalias !58051

.noexc40.i.i725:                                  ; preds = %bb.aid
  unreachable

bb.aie:                                           ; preds = %bb.aid
  %i.cip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg) #67
          to label %.body36.i.i696 unwind label %bb.aif, !noalias !58051

bb.aif:                                           ; preds = %bb.aie
  %i.ciq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !58051
  unreachable

bb.aig:                                           ; preds = %bb.aic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cin, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !58051
  store ptr %i.cin, ptr %i.bh, align 8, !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !58045
  %i.cir = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj)
          to label %bb.aii unwind label %bb.aih, !noalias !58051

bb.aih:                                           ; preds = %bb.aii, %bb.aig
  %i.cis = landingpad { ptr, i32 }
          cleanup
  br label %.body.i248.i700

.body.i248.i700:                                  ; preds = %bb.ail, %bb.aih
  %eh.lpad-body.i.i701 = phi { ptr, i32 } [ %i.cis, %bb.aih ], [ %i.civ, %bb.ail ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #67
          to label %.body36.i.i696 unwind label %bb.aiw, !noalias !58051

bb.aii:                                           ; preds = %bb.aig
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cir)
          to label %bb.aij unwind label %bb.aih, !noalias !58051

bb.aij:                                           ; preds = %bb.aii
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !58053
  %i.cit = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !58053 ; 3 uses
  %i.ciu = icmp eq ptr %i.cit, null
  br i1 %i.ciu, label %bb.aik, label %bb.ain, !prof !102

bb.aik:                                           ; preds = %bb.aij
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc41.i.i724 unwind label %bb.ail, !noalias !58051

.noexc41.i.i724:                                  ; preds = %bb.aik
  unreachable

bb.ail:                                           ; preds = %bb.aik
  %i.civ = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #67
          to label %.body.i248.i700 unwind label %bb.aim, !noalias !58051

bb.aim:                                           ; preds = %bb.ail
  %i.ciw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !58051
  unreachable

bb.ain:                                           ; preds = %bb.aij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cit, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !58051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !58045
  %i.cix = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.cin, ptr %i.cix, align 8, !noalias !58045
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.cit, ptr %i.ciy, align 8, !noalias !58045
  store i8 34, ptr %i.bi, align 8, !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !58045
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cja = load ptr, ptr %i.ciz, align 8, !alias.scope !58044, !noalias !57984, !noundef !100
  %.not.i249.i702 = icmp eq ptr %i.cja, null      ; 2 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cjc = load i64, ptr %i.cjb, align 8, !noalias !57984
  %.sroa.08.0.i.i703 = select i1 %.not.i249.i702, i64 0, i64 %i.cjc
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cje = load i64, ptr %i.cjd, align 8, !alias.scope !58044, !noalias !57984, !noundef !100 ; 2 uses
  %i.cjf = lshr i64 %i.cje, 1
  %i.cjg = icmp eq i64 %.sroa.08.0.i.i703, %i.cjf
  br i1 %i.cjg, label %bb.ajb, label %bb.aip

bb.aio:                                           ; preds = %.split401.i, %bb.ais, %bb.aip
  %i.cjh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi) #67
          to label %.body36.i.i696 unwind label %bb.aiw, !noalias !58051

bb.aip:                                           ; preds = %bb.ain
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !58045
  %i.cji = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj)
          to label %bb.aiq unwind label %bb.aio, !noalias !58051 ; 3 uses

bb.aiq:                                           ; preds = %bb.aip
  store i64 %i.cji, ptr %i.be, align 8, !noalias !58045
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cjk = load ptr, ptr %i.cjj, align 8, !alias.scope !58044, !noalias !57984, !nonnull !100, !noundef !100 ; 3 uses
  %.idx.i.i704 = and i64 %i.cje, -2               ; 2 uses
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjk, i64 %.idx.i.i704 ; 2 uses
  %i.cjm = icmp samesign eq i64 %.idx.i.i704, 0
  br i1 %i.cjm, label %.loopexit.i.i716, label %.lr.ph.i.i.i705

.lr.ph.i.i.i705:                                  ; preds = %bb.aiq
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cjq = load i64, ptr %i.cjn, align 8, !noalias !57984
  %i.cjr = load ptr, ptr %i.cjo, align 8, !noalias !57984
  %i.cjs = load i64, ptr %i.cjp, align 8, !noalias !57984
  br i1 %.not.i249.i702, label %.lr.ph.i.i.split.us.i722, label %.lr.ph.i.i.split.i706

.lr.ph.i.i.split.us.i722:                         ; preds = %.lr.ph.i.i.i705, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i
  %i.cjt = phi i64 [ %i.cjy, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i ], [ 0, %.lr.ph.i.i.i705 ] ; 2 uses
  %i.cju = phi ptr [ %i.cjx, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i ], [ %i.cjk, %.lr.ph.i.i.i705 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58054)
  call void @llvm.experimental.noalias.scope.decl(metadata !58055)
  %i.cjv = load i16, ptr %i.cju, align 2, !alias.scope !58056, !noalias !58057, !noundef !100
  %i.cjw = zext i16 %i.cjv to i64
  %.not.i.i.i.i.i.us.i723 = icmp ugt i64 %i.cji, %i.cjw
  br i1 %.not.i.i.i.i.i.us.i723, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i, label %.split401.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i: ; preds = %.lr.ph.i.i.split.us.i722
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cju, i64 2 ; 2 uses
  %i.cjy = add nuw i64 %i.cjt, 1
  %i.cjz = icmp eq ptr %i.cjx, %i.cjl
  br i1 %i.cjz, label %.loopexit.i.i716, label %.lr.ph.i.i.split.us.i722

.lr.ph.i.i.split.i706:                            ; preds = %.lr.ph.i.i.i705, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.cka = phi i64 [ %i.ckp, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %.lr.ph.i.i.i705 ] ; 4 uses
  %i.ckb = phi ptr [ %i.ckc, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.cjk, %.lr.ph.i.i.i705 ] ; 3 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58054)
  call void @llvm.experimental.noalias.scope.decl(metadata !58055)
  %i.ckd = load i16, ptr %i.ckb, align 2, !alias.scope !58056, !noalias !58057, !noundef !100
  %i.cke = zext i16 %i.ckd to i64
  %.not.i.i.i.i.i.i707 = icmp ugt i64 %i.cji, %i.cke
  br i1 %.not.i.i.i.i.i.i707, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %bb.air

bb.air:                                           ; preds = %.lr.ph.i.i.split.i706
  %i.ckf = icmp ult i64 %i.cka, %i.cjq
  br i1 %i.ckf, label %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %bb.ais, !prof !103

bb.ais:                                           ; preds = %bb.air
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66
          to label %.noexc43.i.i708 unwind label %bb.aio, !noalias !58051

.noexc43.i.i708:                                  ; preds = %bb.ais
  unreachable

_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.air
  %i.ckg = add i64 %i.cka, %i.cjs                 ; 2 uses
  %i.ckh = lshr i64 %i.ckg, 3
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.ckh
  %i.ckj = load i8, ptr %i.cki, align 1, !noalias !58058, !noundef !100
  %i.ckk = trunc i64 %i.ckg to i8
  %i.ckl = and i8 %i.ckk, 7
  %i.ckm = xor i8 %i.ckj, -1
  %i.ckn = lshr i8 %i.ckm, %i.ckl
  %.fr8.i.i.i.i.i709 = freeze i8 %i.ckn
  %i.cko = trunc i8 %.fr8.i.i.i.i.i709 to i1
  br i1 %i.cko, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %.split401.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %.lr.ph.i.i.split.i706
  %i.ckp = add nuw i64 %i.cka, 1
  %i.ckq = icmp eq ptr %i.ckc, %i.cjl
  br i1 %i.ckq, label %.loopexit.i.i716, label %.lr.ph.i.i.split.i706

.split401.i:                                      ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %.lr.ph.i.i.split.us.i722
  %.us-phi.i710 = phi i64 [ %i.cjt, %.lr.ph.i.i.split.us.i722 ], [ %i.cka, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  %.us-phi402.i = phi ptr [ %i.cju, %.lr.ph.i.i.split.us.i722 ], [ %i.ckb, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !58045
  store i64 %.us-phi.i710, ptr %i.bd, align 8, !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !58045
  store ptr %.us-phi402.i, ptr %i.bc, align 8, !noalias !58045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !58045
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !58045
  %.sroa.420.0..sroa_idx.i.i711 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRtNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.420.0..sroa_idx.i.i711, align 8, !noalias !58045
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bd, ptr %i.ckr, align 8, !noalias !58045
  %.sroa.424.0..sroa_idx.i.i712 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i712, align 8, !noalias !58045
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.be, ptr %i.cks, align 8, !noalias !58045
  %.sroa.428.0..sroa_idx.i.i713 = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i713, align 8, !noalias !58045
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @2078, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i714 unwind label %bb.aio, !noalias !58051

.loopexit.i.i716:                                 ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.us.i, %bb.aiq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !58045
  br label %bb.ajb

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i714: ; preds = %.split401.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !58045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6330.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !58059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !58045
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.ait unwind label %bb.aib, !noalias !58051

bb.ait:                                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !58045
  call void @llvm.experimental.noalias.scope.decl(metadata !58060)
  call void @llvm.experimental.noalias.scope.decl(metadata !58061)
  %i.ckt = load ptr, ptr %i.bj, align 16, !alias.scope !58062, !noalias !58045, !nonnull !100, !noundef !100
  %i.cku = atomicrmw add ptr %i.ckt, i64 -1 release, align 8, !noalias !58063
  %i.ckv = icmp eq i64 %i.cku, 1
  br i1 %i.ckv, label %bb.aiu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i715

bb.aiu:                                           ; preds = %bb.ait
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i715 unwind label %bb.aiv, !noalias !58051

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698: ; preds = %bb.aiv, %bb.aia, %.body36.i.i696
  %.pn34.i.i699 = phi { ptr, i32 } [ %i.ckw, %bb.aiv ], [ %.pn.i.i697, %bb.aia ], [ %.pn.i.i697, %.body36.i.i696 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cj) #67
          to label %.body.i687 unwind label %bb.aiw, !noalias !58046

bb.aiv:                                           ; preds = %bb.aiu
  %i.ckw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i715: ; preds = %bb.aiu, %bb.ait
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cj)
          to label %bb.aix unwind label %bb.ahw, !noalias !57982

bb.aiw:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i698, %bb.aio, %.body.i248.i700, %bb.aia
  %i.ckx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !58046
  unreachable

bb.aix:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit46.i.i715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !57984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !57984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !58064
  store i64 -9223372036854775794, ptr %i.cf, align 8, !noalias !58065
  %.sroa.6330.0..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6330.0..sroa_idx331.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6330.i, i64 24, i1 false), !noalias !58065
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1246, i64 noundef 43, ptr noundef nonnull %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1251, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @412) #66
          to label %bb.aiz unwind label %bb.aiy, !noalias !58066

bb.aiy:                                           ; preds = %bb.aix
  %i.cky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cf) #67
          to label %.body.i687 unwind label %bb.aja, !noalias !58066

bb.aiz:                                           ; preds = %bb.aix
  unreachable

bb.aja:                                           ; preds = %bb.aiy
  %i.ckz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !58066
  unreachable

bb.ajb:                                           ; preds = %.loopexit.i.i716, %bb.ain
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.sroa.4.i572)
  %.sroa.04.i.sroa.0.0.copyload.i717 = load i64, ptr %i.bi, align 8, !noalias !58045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4.i572, ptr noundef nonnull align 8 dereferenceable(16) %i.cix, i64 16, i1 false), !noalias !58045
  %.sroa.04.i.sroa.4.24..sroa_idx.i718 = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4.i572, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx.i718, ptr noundef nonnull align 8 dereferenceable(96) %i.cj, i64 96, i1 false), !noalias !58067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6330.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i572, i64 24, i1 false), !noalias !58059
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.5338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !57984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5338.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %i.cla, i64 88, i1 false), !noalias !57984
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.4.i572)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !57984
  %.sroa.4337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.clb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.clc = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.6339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.cld = load <2 x ptr>, ptr %i.bj, align 16, !noalias !58045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !57984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4337.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6330.i, i64 24, i1 false), !noalias !57984
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6330.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !57984
  store i64 1, ptr %i.cg, align 8, !noalias !57984
  store i64 1, ptr %i.clb, align 8, !noalias !57984
  store i64 %.sroa.04.i.sroa.0.0.copyload.i717, ptr %i.clc, align 8, !noalias !57984
  store <2 x ptr> %i.cld, ptr %.sroa.6339.0..sroa_idx.i, align 8, !noalias !57984
  %.sroa.8341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  store i8 0, ptr %.sroa.8341.0..sroa_idx.i, align 8, !noalias !57984
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !58068
  %i.cle = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !58068 ; 3 uses
  %i.clf = icmp eq ptr %i.cle, null
  br i1 %i.clf, label %bb.ajc, label %bb.ajf, !prof !102

bb.ajc:                                           ; preds = %bb.ajb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #66
          to label %.noexc256.i unwind label %bb.ajd, !noalias !57982

.noexc256.i:                                      ; preds = %bb.ajc
  unreachable

bb.ajd:                                           ; preds = %bb.ajc
  %i.clg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1l_5types10UInt16TypeEEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.cg) #67
          to label %.body.i687 unwind label %bb.aje, !noalias !57982

bb.aje:                                           ; preds = %bb.ajd
  %i.clh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57982
  unreachable

bb.ajf:                                           ; preds = %bb.ajb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cle, ptr noundef nonnull align 8 dereferenceable(160) %i.cg, i64 160, i1 false), !noalias !57982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !57984
  %i.cli = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cle, ptr %i.cli, align 8, !alias.scope !57982
  %i.clj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @413, ptr %i.clj, align 8, !alias.scope !57982
  store i8 -1, ptr %0, align 8, !alias.scope !57982
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cm)
          to label %bb.ajg unwind label %.split.i719, !noalias !57982

bb.ajg:                                           ; preds = %bb.ajf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !57984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !57984
  call void @llvm.experimental.noalias.scope.decl(metadata !58069)
  %.val.i257.i = load i64, ptr %i.cp, align 8, !alias.scope !58069, !noalias !57984 ; 2 uses
  %i.clk = icmp eq i64 %.val.i257.i, 0
  br i1 %i.clk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg
  %.val2.i.i720 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i608, align 8, !alias.scope !58069, !noalias !57984, !nonnull !100, !noundef !100
  %i.cll = shl nuw i64 %.val.i257.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i720, i64 noundef %i.cll, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !58070
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.ajh, %bb.ajg
  %i.clm = load i64, ptr %i.cfq, align 8, !range !136, !alias.scope !58071, !noalias !57984, !noundef !100
  %i.cln = icmp eq i64 %i.clm, 0
  br i1 %i.cln, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i721, label %bb.aji

bb.aji:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cfq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i721 unwind label %bb.ajj, !noalias !57982

bb.ajj:                                           ; preds = %bb.aji
  %i.clo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cdq) #67
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit285.i unwind label %bb.ajk, !noalias !57982

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i721: ; preds = %bb.aji, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cdq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types10UInt16TypeEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %.body259.i, !noalias !57982

bb.ajk:                                           ; preds = %bb.ajj
  %i.clp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !57982
  unreachable

end_hunk_3
begin_hunk_4_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13logical_nullsCsjjpCCFGI3ul_14lance_encoding:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !100
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.x unwind label %bb.w

bb.o:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not44 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not44, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.011.i
  br i1 %i.ap, label %bb.q, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !106

bb.q:                                             ; preds = %bb.p
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %i.as, %bb.r ]
  %i.au = shl nuw nsw i64 %.sroa.4.011.i, 1
  %.sroa.0.0.i11.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i11.i)
          to label %.noexc27 unwind label %bb.w

.noexc27:                                         ; preds = %bb.s
  %.pre.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76152
  %.pre = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76152
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc28 unwind label %bb.w

.noexc28:                                         ; preds = %bb.t
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc27, %bb.p
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.p ], [ %.pre, %.noexc27 ]
  %i.aw = phi i64 [ 0, %bb.p ], [ %.pre.i, %.noexc27 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %bb.o
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76152
  br i1 %.not.i, label %bb.v, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76152, !nonnull !100, !noundef !100
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !100
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.u, %bb.v
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !76152
  br label %bb.x

bb.w:                                             ; preds = %bb.ai, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.t, %bb.s, %bb.ab, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.w ], [ %i.bs, %bb.z ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.aj

bb.x:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !100, !noundef !100 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre48 = load i64, ptr %i.bj, align 8
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.af, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !76153)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76153, !nonnull !100, !noundef !100 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76153 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76153
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76153
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !76153, !noundef !100
  store i64 0, ptr %i.ak, align 16, !alias.scope !76153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76154
  store i64 1, ptr %i.a, align 8, !noalias !76154
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !76154
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !76154
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !76154
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !76154
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !76153
  store i64 128, ptr %i.e, align 16, !alias.scope !76153
  store i64 0, ptr %.sroa.4.0..sroa_idx37, align 8, !alias.scope !76153
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !76154
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !76155
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !76155 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !102

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i unwind label %bb.z, !noalias !76154

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.body unwind label %bb.aa, !noalias !76154

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !76154
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !76154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76154
  store ptr %i.bq, ptr %i.b, align 8, !noalias !76154
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !76154
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !76154
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.ab unwind label %bb.w

bb.ab:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76154
  invoke void @_RNvXs0_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ac unwind label %bb.w

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !76156)
  call void @llvm.experimental.noalias.scope.decl(metadata !76157)
  call void @llvm.experimental.noalias.scope.decl(metadata !76158)
  call void @llvm.experimental.noalias.scope.decl(metadata !76159)
  call void @llvm.experimental.noalias.scope.decl(metadata !76160)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !76161, !nonnull !100, !noundef !100
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !76161
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ae:                                            ; preds = %.lr.ph, %bb.af
  %i.bz = phi i64 [ %.pre48, %.lr.ph ], [ %i.cf, %bb.af ] ; 3 uses
  %.sroa.0.046 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.af ] ; 2 uses
  %.sroa.7.045 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.af ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.045, 1
  %i.cc = load i16, ptr %.sroa.0.046, align 2, !noundef !100
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ae, %bb.ag
  %i.cf = phi i64 [ %.pre47, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.ag ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !100
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !100
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !100
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ah, label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !100 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.045, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1317) #66
          to label %.noexc35 unwind label %bb.w

.noexc35:                                         ; preds = %bb.ai
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ah
  %.val = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !nonnull !100, !noundef !100
  %i.ct = trunc i64 %.sroa.7.045 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !100
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre47 = load i64, ptr %i.bj, align 8
  br label %bb.af

bb.aj:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !76164 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !76165, !noundef !100
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !76226 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !100
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !100
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !100, !noundef !100 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !100 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76227)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !76227, !noalias !76228, !noundef !100 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !76227, !noalias !76229 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !76227, !noalias !76229 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !76230, !noalias !76231, !noundef !100
  %i.v = zext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.loopexit36, !prof !103

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !76230, !noalias !76231, !noundef !100
  %i.z = zext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1, label %.loopexit36, !prof !103

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !76232, !noundef !100
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !76232, !noundef !100
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit20, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76233)
  call void @llvm.experimental.noalias.scope.decl(metadata !76234)
  call void @llvm.experimental.noalias.scope.decl(metadata !76235)
  call void @llvm.experimental.noalias.scope.decl(metadata !76236)
  call void @llvm.experimental.noalias.scope.decl(metadata !76237)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !76238, !nonnull !100, !noundef !100
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !76238
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
end_hunk_4
begin_hunk_5_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13logical_nullsCsjjpCCFGI3ul_14lance_encoding:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !100
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.x unwind label %bb.w

bb.o:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not44 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not44, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.011.i
  br i1 %i.ap, label %bb.q, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !106

bb.q:                                             ; preds = %bb.p
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %i.as, %bb.r ]
  %i.au = shl nuw nsw i64 %.sroa.4.011.i, 1
  %.sroa.0.0.i11.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i11.i)
          to label %.noexc27 unwind label %bb.w

.noexc27:                                         ; preds = %bb.s
  %.pre.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76956
  %.pre = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76956
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc28 unwind label %bb.w

.noexc28:                                         ; preds = %bb.t
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc27, %bb.p
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.p ], [ %.pre, %.noexc27 ]
  %i.aw = phi i64 [ 0, %bb.p ], [ %.pre.i, %.noexc27 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %bb.o
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76956
  br i1 %.not.i, label %bb.v, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76956, !nonnull !100, !noundef !100
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !100
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.u, %bb.v
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !76956
  br label %bb.x

bb.w:                                             ; preds = %bb.ai, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.t, %bb.s, %bb.ab, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.w ], [ %i.bs, %bb.z ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.aj

bb.x:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !100, !noundef !100 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre48 = load i64, ptr %i.bj, align 8
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.af, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !76957)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76957, !nonnull !100, !noundef !100 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76957 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !76957
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !76957
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !76957, !noundef !100
  store i64 0, ptr %i.ak, align 16, !alias.scope !76957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76958
  store i64 1, ptr %i.a, align 8, !noalias !76958
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !76958
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !76958
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !76958
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !76958
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !76957
  store i64 128, ptr %i.e, align 16, !alias.scope !76957
  store i64 0, ptr %.sroa.4.0..sroa_idx37, align 8, !alias.scope !76957
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !76958
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !76959
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !76959 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !102

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i unwind label %bb.z, !noalias !76958

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.body unwind label %bb.aa, !noalias !76958

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !76958
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !76958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76958
  store ptr %i.bq, ptr %i.b, align 8, !noalias !76958
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !76958
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !76958
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.ab unwind label %bb.w

bb.ab:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76958
  invoke void @_RNvXs0_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ac unwind label %bb.w

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !76960)
  call void @llvm.experimental.noalias.scope.decl(metadata !76961)
  call void @llvm.experimental.noalias.scope.decl(metadata !76962)
  call void @llvm.experimental.noalias.scope.decl(metadata !76963)
  call void @llvm.experimental.noalias.scope.decl(metadata !76964)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !76965, !nonnull !100, !noundef !100
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !76965
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit34: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit33, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ae:                                            ; preds = %.lr.ph, %bb.af
  %i.bz = phi i64 [ %.pre48, %.lr.ph ], [ %i.cf, %bb.af ] ; 3 uses
  %.sroa.0.046 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.af ] ; 2 uses
  %.sroa.7.045 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.af ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.045, 1
  %i.cc = load i16, ptr %.sroa.0.046, align 2, !noundef !100
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ae, %bb.ag
  %i.cf = phi i64 [ %.pre47, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.ag ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !100
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !100
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !100
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ah, label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !100 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.045, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1317) #66
          to label %.noexc35 unwind label %bb.w

.noexc35:                                         ; preds = %bb.ai
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ah
  %.val = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !nonnull !100, !noundef !100
  %i.ct = trunc i64 %.sroa.7.045 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !100
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre47 = load i64, ptr %i.bj, align 8
  br label %bb.af

bb.aj:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !76968 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !76969, !noundef !100
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77030 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !100
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !100
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !100, !noundef !100 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !100 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77031)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !77031, !noalias !77032, !noundef !100 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !77031, !noalias !77033 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !77031, !noalias !77033 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !77034, !noalias !77035, !noundef !100
  %i.v = sext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.loopexit36, !prof !103

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !77034, !noalias !77035, !noundef !100
  %i.z = sext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1, label %.loopexit36, !prof !103

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.1: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !77036, !noundef !100
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !77036, !noundef !100
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit20, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77037)
  call void @llvm.experimental.noalias.scope.decl(metadata !77038)
  call void @llvm.experimental.noalias.scope.decl(metadata !77039)
  call void @llvm.experimental.noalias.scope.decl(metadata !77040)
  call void @llvm.experimental.noalias.scope.decl(metadata !77041)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !77042, !nonnull !100, !noundef !100
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !77042
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB4_19DecodeMiniBlockTaskNtNtBa_7decoder14DecodePageTask6decode:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.648.sroa.7.i, i64 16, i1 false), !noalias !88851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.648.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !88866)
  %i.pw = load ptr, ptr %i.l, align 8, !alias.scope !88866, !noalias !88837, !noundef !100 ; 2 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEECsjjpCCFGI3ul_14lance_encoding.exit252.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.py = atomicrmw add ptr %i.pw, i64 -1 release, align 8, !noalias !88867
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.dm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEECsjjpCCFGI3ul_14lance_encoding.exit252.i

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEECsjjpCCFGI3ul_14lance_encoding.exit252.i unwind label %.loopexit.split-lp371, !noalias !88826

bb.dn:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.755.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.663.sroa.6.i, i64 16, i1 false), !noalias !88837
  br label %bb.fn

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEECsjjpCCFGI3ul_14lance_encoding.exit252.i: ; preds = %bb.dm, %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !88837
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.n)
          to label %.noexc173 unwind label %.loopexit.split-lp

.noexc173:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEECsjjpCCFGI3ul_14lance_encoding.exit252.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !88837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !88837
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit255.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit255.i: ; preds = %bb.dr, %bb.dq, %bb.dp, %.noexc173
  %.sroa.16.0 = phi ptr [ %.sroa.663.sroa.5.0.copyload.i, %.noexc173 ], [ %.sroa.635.sroa.5.0.copyload.i, %bb.dp ], [ %.sroa.635.sroa.5.0.copyload.i, %bb.dq ], [ %.sroa.635.sroa.5.0.copyload.i, %bb.dr ]
  %.sroa.9246.0 = phi i8 [ %.sroa.061.0.copyload.i, %.noexc173 ], [ %.sroa.033.0.copyload.i, %bb.dp ], [ %.sroa.033.0.copyload.i, %bb.dq ], [ %.sroa.033.0.copyload.i, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !88837
  br label %.thread337

bb.do:                                            ; preds = %bb.dx, %bb.dv, %bb.di, %.body242.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !88826
  unreachable

bb.dp:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !88837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !88837
  call void @llvm.experimental.noalias.scope.decl(metadata !88868)
  %i.qb = load ptr, ptr %i.p, align 8, !alias.scope !88868, !noalias !88837, !noundef !100 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit255.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qd = atomicrmw add ptr %i.qb, i64 -1 release, align 8, !noalias !88869
  %i.qe = icmp eq i64 %i.qd, 1
  br i1 %i.qe, label %bb.dr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit255.i

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit255.i unwind label %.loopexit.split-lp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit.i: ; preds = %bb.cm, %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !88837
  call void @llvm.experimental.noalias.scope.decl(metadata !88870)
  %i.qf = load ptr, ptr %i.q, align 8, !alias.scope !88870, !noalias !88837, !noundef !100 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %.thread337, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit.i
  %i.qh = atomicrmw add ptr %i.qf, i64 -1 release, align 8, !noalias !88871
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.dt, label %.thread337

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread337 unwind label %.loopexit.split-lp

.body.thread.i:                                   ; preds = %.body.thread322.i.loopexit, %.body.thread322.i.loopexit.split-lp, %bb.ch, %bb.cg, %bb.cf, %.body.i233.i
  %.pn179315.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2108, %.body.i233.i ], [ %.pn.i, %bb.ch ], [ %i.nz, %bb.cg ], [ %i.nz, %bb.cf ], [ %lpad.loopexit367, %.body.thread322.i.loopexit ], [ %lpad.loopexit.split-lp368, %.body.thread322.i.loopexit.split-lp ] ; 2 uses
  %.sroa.075.2314.i = phi i1 [ true, %.body.i233.i ], [ false, %bb.ch ], [ true, %bb.cg ], [ true, %bb.cf ], [ true, %.body.thread322.i.loopexit ], [ false, %.body.thread322.i.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !88872)
  %i.qj = load ptr, ptr %i.p, align 8, !alias.scope !88872, !noalias !88837, !noundef !100 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i, label %bb.du

bb.du:                                            ; preds = %.body.thread.i
  %i.ql = atomicrmw add ptr %i.qj, i64 -1 release, align 8, !noalias !88873
  %i.qm = icmp eq i64 %i.ql, 1
  br i1 %i.qm, label %bb.dv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i

bb.dv:                                            ; preds = %bb.du
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i unwind label %bb.do, !noalias !88826

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i: ; preds = %bb.dv, %bb.du, %.body.thread.i
  br i1 %.sroa.075.2314.i, label %.split306.thread.i, label %.body170

.split306.thread.i:                               ; preds = %.split306.thread.i.loopexit, %.split306.thread.i.loopexit.split-lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i
  %.pn181308.i = phi { ptr, i32 } [ %.pn179315.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i ], [ %lpad.loopexit364, %.split306.thread.i.loopexit ], [ %lpad.loopexit.split-lp365, %.split306.thread.i.loopexit.split-lp ] ; 2 uses
  %.sroa.076.3307.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit261.i ], [ true, %.split306.thread.i.loopexit ], [ %.sroa.076.4.ph.i.ph, %.split306.thread.i.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !88874)
  %i.qn = load ptr, ptr %i.q, align 8, !alias.scope !88874, !noalias !88837, !noundef !100 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i, label %bb.dw

bb.dw:                                            ; preds = %.split306.thread.i
  %i.qp = atomicrmw add ptr %i.qn, i64 -1 release, align 8, !noalias !88875
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.dx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i unwind label %bb.do, !noalias !88826

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i: ; preds = %bb.dx, %bb.dw, %.split306.thread.i
  br i1 %.sroa.076.3307.i, label %.split.thread.i, label %.body170

.split.thread.i:                                  ; preds = %.split.thread.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i
  %.pn183303.i = phi { ptr, i32 } [ %.pn181308.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB11_.exit264.i ], [ %lpad.loopexit.split-lp, %.split.thread.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.qr = icmp eq i64 %.sroa.0272.0.i, 0
  br i1 %i.qr, label %.body170, label %bb.dy

bb.dy:                                            ; preds = %.split.thread.i
  %i.qs = shl nuw i64 %.sroa.0272.0.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7274.0.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7274.0.i, i64 noundef %i.qs, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !88826
  br label %.body170

bb.dz:                                            ; preds = %bb.ax
  invoke fastcc void @_RNvXsY_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_21DecodedMiniBlockChunkNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(128) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ex)
          to label %bb.ea unwind label %.loopexit

bb.ea:                                            ; preds = %bb.dz, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false)
  %i.qt = load i64, ptr %.sroa.0242.0832, align 8, !noundef !100
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0242.0832, i64 24
  %i.qv = load i64, ptr %i.qu, align 8, !noundef !100
  %i.qw = add i64 %i.qv, %i.qt                    ; 12 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0242.0832, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !noundef !100 ; 2 uses
  %i.qz = add i64 %i.qw, %i.qy                    ; 6 uses
  %i.ra = load ptr, ptr %i.ag, align 8, !noundef !100
  %.not84 = icmp eq ptr %i.ra, null
  %i.rb = load ptr, ptr %i.af, align 8, !noundef !100
  %.not85 = icmp eq ptr %i.rb, null               ; 2 uses
  %i.rc = load i16, ptr %i.fk, align 8, !noundef !100 ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0242.0832, i64 80
  %i.re = load i64, ptr %i.rd, align 8, !noundef !100 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0242.0832, i64 48
  %i.rg = load i8, ptr %i.rf, align 8, !range !116, !noundef !100 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88876)
  call void @llvm.experimental.noalias.scope.decl(metadata !88877)
  br i1 %.not84, label %_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB3_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB1F_EB9_.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val159.i = load ptr, ptr %.sroa.gep, align 8, !alias.scope !88876, !noundef !100 ; 6 uses
  %.val160.i = load i64, ptr %.sroa.gep251, align 8, !alias.scope !88876, !noundef !100 ; 2 uses
  %i.rh = lshr i64 %.val160.i, 1                  ; 7 uses
  %i.ri = icmp eq i8 %i.rg, 2
  br i1 %i.ri, label %bb.ei, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val159.i) ]
  br i1 %.not85, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.val157.i = load ptr, ptr %.sroa.gep253, align 8, !alias.scope !88877, !noundef !100 ; 2 uses
  %.val158.i = load i64, ptr %.sroa.gep254, align 8, !alias.scope !88877, !noundef !100
  %i.rj = lshr i64 %.val158.i, 1
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 4611686018427387904) %i.rj, i64 %i.rh) ; 2 uses
  %.not302.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not302.i, label %.critedge.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i: ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val157.i) ]
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ee:                                            ; preds = %bb.ec
  %.idx.i180 = and i64 %.val160.i, -2             ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.val159.i, i64 %.idx.i180
  %i.rl = icmp samesign eq i64 %.idx.i180, 0
  br i1 %i.rl, label %.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ee, %bb.ef
  %.sroa.02.09.i.i = phi i64 [ %i.rp, %bb.ef ], [ 0, %bb.ee ] ; 4 uses
  %i.rm = phi ptr [ %i.ro, %bb.ef ], [ %.val159.i, %bb.ee ] ; 2 uses
  %.val7.i.i = load i16, ptr %i.rm, align 2, !noalias !88878, !noundef !100
  %i.rn = icmp eq i16 %.val7.i.i, %i.bl
  br i1 %i.rn, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1M_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB3p_E0EB1S_.exit.i, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 2 ; 2 uses
  %i.rp = add nuw i64 %.sroa.02.09.i.i, 1
  %i.rq = icmp eq ptr %i.ro, %i.rk
  br i1 %i.rq, label %.critedge.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1M_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB3p_E0EB1S_.exit.i: ; preds = %.lr.ph.i.i
  %i.rr = icmp ult i64 %.sroa.02.09.i.i, %i.rh
  call void @llvm.assume(i1 %i.rr)
  br label %.loopexit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.eg, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i
  %.sroa.015.2292.i = phi i64 [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i ], [ %spec.select.i, %bb.eg ] ; 2 uses
  %.sroa.9.0291.i = phi i64 [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i ], [ %i.sa, %bb.eg ] ; 4 uses
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %.val159.i, i64 %.sroa.9.0291.i
  %i.rt = load i16, ptr %i.rs, align 2, !noalias !88879, !noundef !100
  %i.ru = icmp eq i16 %i.rt, %i.bl
  br i1 %i.ru, label %.loopexit.i, label %bb.eg

.critedge.i:                                      ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %i.rv = icmp eq i8 %i.rg, 0
  br i1 %i.rv, label %_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB3_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB1F_EB9_.exit, label %.invoke2101, !prof !103

.loopexit.i:                                      ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1M_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB3p_E0EB1S_.exit.i
  %.sroa.015.3.i = phi i64 [ %.sroa.02.09.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1M_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB3p_E0EB1S_.exit.i ], [ %.sroa.015.2292.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %.sroa.7.2.i = phi i64 [ %.sroa.02.09.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB1M_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB3p_E0EB1S_.exit.i ], [ %.sroa.9.0291.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 5 uses
  %i.rw = icmp ugt i64 %.sroa.7.2.i, %i.rh
  br i1 %i.rw, label %.invoke2103, label %bb.eh, !prof !106

.invoke2101:                                      ; preds = %bb.ej, %.critedge.i
  %i.rx = phi ptr [ @30, %.critedge.i ], [ @33, %bb.ej ]
  %i.ry = phi i64 [ 57, %.critedge.i ], [ 41, %bb.ej ]
  %i.rz = phi ptr [ @31, %.critedge.i ], [ @34, %bb.ej ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rx, i64 noundef %i.ry, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rz) #66
          to label %.cont2102 unwind label %.loopexit.split-lp377

.cont2102:                                        ; preds = %.invoke2101
  unreachable

bb.eg:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.sa = add nuw nsw i64 %.sroa.9.0291.i, 1      ; 2 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.val157.i, i64 %.sroa.9.0291.i
  %i.sc = load i16, ptr %i.sb, align 2, !noalias !88879, !noundef !100
  %.not139.i = icmp ule i16 %i.sc, %i.rc
  %i.sd = zext i1 %.not139.i to i64
  %spec.select.i = add i64 %.sroa.015.2292.i, %i.sd
  %exitcond.not.i = icmp eq i64 %i.sa, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i, label %.critedge.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.eh:                                            ; preds = %.loopexit.i
  %i.se = sub nuw nsw i64 %i.rh, %.sroa.7.2.i
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %.val159.i, i64 %.sroa.7.2.i
  br label %bb.ei

.invoke2103:                                      ; preds = %bb.fg, %bb.et, %bb.el, %.loopexit.i
  %i.sg = phi i64 [ %i.tq, %bb.et ], [ %.sroa.7.2.i, %.loopexit.i ], [ %.sroa.020.0.i, %bb.el ], [ %i.vj, %bb.fg ]
  %i.sh = phi i64 [ %.sroa.17.0.i, %bb.et ], [ %i.rh, %.loopexit.i ], [ %i.sl, %bb.el ], [ %.sroa.17.0.i, %bb.fg ] ; 2 uses
  %i.si = phi ptr [ @39, %bb.et ], [ @32, %.loopexit.i ], [ @40, %bb.el ], [ @41, %bb.fg ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.sg, i64 noundef %i.sh, i64 noundef %i.sh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.si) #66
          to label %.cont2104 unwind label %.loopexit.split-lp377

.cont2104:                                        ; preds = %.invoke2103
  unreachable

bb.ei:                                            ; preds = %bb.eh, %bb.eb
  %.sroa.17.0.i = phi i64 [ %i.se, %bb.eh ], [ %i.rh, %bb.eb ] ; 17 uses
  %.sroa.029.0.i = phi ptr [ %i.sf, %bb.eh ], [ %.val159.i, %bb.eb ] ; 11 uses
  %.sroa.020.0.i = phi i64 [ %.sroa.7.2.i, %bb.eh ], [ 0, %bb.eb ] ; 12 uses
  %.sroa.015.5.i = phi i64 [ %.sroa.015.3.i, %bb.eh ], [ 0, %bb.eb ] ; 4 uses
  %i.sj = icmp eq i64 %i.qy, 0
  br i1 %i.sj, label %_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB3_19DecodeMiniBlockTask9map_rangeINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEB1F_EB9_.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sk = icmp ult i64 %i.qw, %i.qz
  br i1 %i.sk, label %bb.ek, label %.invoke2101, !prof !103

bb.ek:                                            ; preds = %bb.ej
  br i1 %.not85, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.val156.i = load i64, ptr %.sroa.gep254, align 8, !alias.scope !88877, !noundef !100
  %i.sl = lshr i64 %.val156.i, 1                  ; 4 uses
  %i.sm = icmp ugt i64 %.sroa.020.0.i, %i.sl
  br i1 %i.sm, label %.invoke2103, label %bb.en, !prof !106

bb.em:                                            ; preds = %bb.ek
  %.not141.i = icmp eq i64 %i.qw, 0
  br i1 %.not141.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4ItertEEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %bb.fc

bb.en:                                            ; preds = %bb.el
  %.val155.i = load ptr, ptr %.sroa.gep253, align 8, !alias.scope !88877, !noundef !100
  %i.sn = sub nuw nsw i64 %i.sl, %.sroa.020.0.i   ; 4 uses
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.val155.i, i64 %.sroa.020.0.i ; 5 uses
  %.not144.i = icmp eq i64 %i.qw, 0
  br i1 %.not144.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, %bb.en
  %.sroa.083.0.i = phi i64 [ %.sroa.083.1.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ 0, %bb.en ] ; 8 uses
  %.sroa.075.0.i = phi i64 [ %.sroa.075.2.i2129, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ 0, %bb.en ]
  %.sroa.067.0.i = phi i64 [ %.sroa.067.1.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ 0, %bb.en ] ; 4 uses
  %.sroa.058.0.i = phi i64 [ %i.tj, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ 1, %bb.en ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88879
  %i.sp = icmp ult i64 %.sroa.083.0.i, %i.sn
  br i1 %i.sp, label %bb.et, label %.invoke2105

bb.ep:                                            ; preds = %bb.en
  %.not145.i = icmp eq i64 %i.sl, %.sroa.020.0.i
  br i1 %.not145.i, label %.invoke2105, label %.peel.begin, !prof !128

.peel.begin:                                      ; preds = %bb.ep
  %i.sq = load i16, ptr %i.so, align 2, !noalias !88879, !noundef !100
  %i.sr = icmp ugt i16 %i.sq, %i.rc
  %spec.select151.i = zext i1 %i.sr to i64        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.029.0.i) ]
  %.sroa.0.0.i.i.i161.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 4611686018427387904) %i.sn, i64 %.sroa.17.0.i) ; 2 uses
  %i.ss = icmp ne i64 %.sroa.17.0.i, 0            ; 2 uses
  %.sroa.0.0.i.i.i173.i.peel = zext i1 %i.ss to i64 ; 3 uses
  %i.st = icmp samesign ugt i64 %.sroa.0.0.i.i.i161.i, %.sroa.0.0.i.i.i173.i.peel
  br i1 %i.st, label %.lr.ph.i.preheader.i.i.i.peel, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

.lr.ph.i.preheader.i.i.i.peel:                    ; preds = %.peel.begin
  %i.su = select i1 %i.ss, i64 2, i64 1
  %.sroa.3.0.i.i.i.pn.i.peel = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %.sroa.0.0.i.i.i173.i.peel
  %.sroa.02.0.i.i.i.pn.i.peel = getelementptr inbounds nuw [2 x i8], ptr %.sroa.029.0.i, i64 %.sroa.0.0.i.i.i173.i.peel
  %i.sv = load i16, ptr %.sroa.02.0.i.i.i.pn.i.peel, align 2, !noalias !88879, !noundef !100
  %i.sw = icmp eq i16 %i.sv, %i.bl
  br i1 %i.sw, label %bb.eq, label %.peel.next

bb.eq:                                            ; preds = %.lr.ph.i.preheader.i.i.i.peel
  %i.sx = icmp eq i64 %i.qw, 1
  br i1 %i.sx, label %.loopexit2464, label %.peel.next

.peel.next:                                       ; preds = %bb.eq, %.lr.ph.i.preheader.i.i.i.peel
  %.sroa.058.3.i.peel = phi i64 [ 1, %bb.eq ], [ 0, %.lr.ph.i.preheader.i.i.i.peel ]
  %i.sy = load i16, ptr %.sroa.3.0.i.i.i.pn.i.peel, align 2, !noalias !88879, !noundef !100
  %i.sz = icmp ugt i16 %i.sy, %i.rc
  %i.ta = zext i1 %i.sz to i64
  %spec.select152.i.peel = add nuw nsw i64 %spec.select151.i, %i.ta
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

.invoke2105:                                      ; preds = %bb.eo, %bb.ep
  %i.tb = phi i64 [ 0, %bb.ep ], [ %.sroa.083.0.i, %bb.eo ]
  %i.tc = phi i64 [ 0, %bb.ep ], [ %i.sn, %bb.eo ]
  %i.td = phi ptr [ @35, %bb.ep ], [ @36, %bb.eo ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.tb, i64 noundef %i.tc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.td) #66
          to label %.cont2106 unwind label %.loopexit.split-lp377

.cont2106:                                        ; preds = %.invoke2105
  unreachable

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.es, %.peel.next
  %.sroa.10.0.i = phi i64 [ %i.su, %.peel.next ], [ %.sroa.10.2.i, %bb.es ] ; 4 uses
  %.sroa.23.0.i = phi i64 [ 1, %.peel.next ], [ %i.tg, %bb.es ]
  %.sroa.075.2.i = phi i64 [ %spec.select152.i.peel, %.peel.next ], [ %spec.select152.i, %bb.es ] ; 3 uses
  %.sroa.058.1.i = phi i64 [ %.sroa.058.3.i.peel, %.peel.next ], [ %.sroa.058.3.i, %bb.es ] ; 3 uses
  %i.te = icmp ult i64 %.sroa.10.0.i, %.sroa.0.0.i.i.i161.i ; 2 uses
  %i.tf = zext i1 %i.te to i64
  %.sroa.10.2.i = add nuw i64 %.sroa.10.0.i, %i.tf
  br i1 %i.te, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1d_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1d_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.3.0.i.i.i.pn.i = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %.sroa.10.0.i
  %.sroa.02.0.i.i.i.pn.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.029.0.i, i64 %.sroa.10.0.i
  %i.tg = add i64 %.sroa.23.0.i, 1                ; 2 uses
  %i.th = load i16, ptr %.sroa.02.0.i.i.i.pn.i, align 2, !noalias !88879, !noundef !100
  %i.ti = icmp eq i16 %i.th, %i.bl
  br i1 %i.ti, label %bb.er, label %bb.es

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %.peel.begin, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.loopexit2464
  %.sroa.075.2.i2129 = phi i64 [ %.sroa.075.2.i.lcssa2128, %.loopexit2464 ], [ %spec.select151.i, %.peel.begin ], [ %.sroa.075.2.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %.sroa.083.1.i = phi i64 [ %.lcssa2130, %.loopexit2464 ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %.peel.begin ]
  %.sroa.067.1.i = phi i64 [ %i.tp, %.loopexit2464 ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %.peel.begin ]
  %.sroa.058.2.i = phi i64 [ %i.qw, %.loopexit2464 ], [ 0, %.peel.begin ], [ %.sroa.058.1.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %i.tj = add i64 %.sroa.058.2.i, 1
  br label %bb.eo

bb.er:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1d_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.tk = add i64 %.sroa.058.1.i, 1               ; 2 uses
  %i.tl = icmp eq i64 %i.tk, %i.qw
  br i1 %i.tl, label %.loopexit2464, label %bb.es

bb.es:                                            ; preds = %bb.er, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1d_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.058.3.i = phi i64 [ %i.tk, %bb.er ], [ %.sroa.058.1.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1d_EENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %i.tm = load i16, ptr %.sroa.3.0.i.i.i.pn.i, align 2, !noalias !88879, !noundef !100
  %i.tn = icmp ugt i16 %i.tm, %i.rc
  %i.to = zext i1 %i.tn to i64
  %spec.select152.i = add i64 %.sroa.075.2.i, %i.to
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItertEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !llvm.loop !88732

.loopexit2464:                                    ; preds = %bb.er, %bb.eq
  %.lcssa2130 = phi i64 [ 1, %bb.eq ], [ %i.tg, %bb.er ] ; 2 uses
  %.sroa.075.2.i.lcssa2128 = phi i64 [ %spec.select151.i, %bb.eq ], [ %.sroa.075.2.i, %bb.er ] ; 2 uses
  %i.tp = sub i64 %.lcssa2130, %.sroa.075.2.i.lcssa2128
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEB1F_EEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

bb.et:                                            ; preds = %bb.eo
  %i.tq = add nuw nsw i64 %.sroa.083.0.i, 1       ; 6 uses
  %.not148.i = icmp ult i64 %.sroa.083.0.i, %.sroa.17.0.i
  br i1 %.not148.i, label %bb.eu, label %.invoke2103, !prof !103

bb.eu:                                            ; preds = %bb.et
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %.sroa.083.0.i
  %i.ts = load i16, ptr %i.tr, align 2, !noalias !88879, !noundef !100
  %.not147.i = icmp ugt i16 %i.ts, %i.rc
  %..i = zext i1 %.not147.i to i64                ; 2 uses
  %.idx270.i = shl nuw nsw i64 %i.tq, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i, i64 %.idx270.i
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %i.tq
  %i.tv = call i64 @llvm.umin.i64(i64 %i.sn, i64 %.sroa.17.0.i) ; 2 uses
  %.not303.i = icmp eq i64 %i.tv, %i.tq
  br i1 %.not303.i, label %.thread.i178, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.eu
  %.sroa.0.0.i.i.i163.i = sub nsw i64 %i.tv, %i.tq
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ex, %.lr.ph.preheader.i
  %.sroa.058.4298.i = phi i64 [ %.sroa.058.5.i, %bb.ex ], [ %.sroa.058.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.093.1297.i = phi i64 [ %spec.select153.i, %bb.ex ], [ %..i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.13.0296.i = phi i64 [ %i.tw, %bb.ex ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.tw = add nuw i64 %.sroa.13.0296.i, 1         ; 2 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %.sroa.13.0296.i
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %.sroa.13.0296.i
  %i.tz = load i16, ptr %i.tx, align 2, !noalias !88879, !noundef !100
  %i.ua = icmp eq i16 %i.tz, %i.bl
  br i1 %i.ua, label %bb.ew, label %bb.ex

end_hunk_6
