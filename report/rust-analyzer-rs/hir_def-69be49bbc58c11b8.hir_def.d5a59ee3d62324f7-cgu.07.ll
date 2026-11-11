Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility24is_visible_from_def_map_:bb.a
bb.b:                                             ; preds = %.split.us
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %.sroa.0.050.us, i32 noundef %.sroa.3.0.us, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.sroa.02.0.copyload.i.us = load i32, ptr %i.f, align 8, !alias.scope !1120
  %.not.i35.us = icmp eq i32 %.sroa.02.0.copyload.i.us, 0 ; 2 uses
  %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %.sroa.64.sroa.6.0.copyload.i.us = load i32, ptr %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i.us, align 4, !alias.scope !1120
  %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %.sroa.64.sroa.5.0.copyload.i.us = load i32, ptr %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i.us, align 8, !alias.scope !1120 ; 2 uses
  %.sroa.3.0.i36.us = select i1 %.not.i35.us, i32 undef, i32 %.sroa.64.sroa.6.0.copyload.i.us
  %.not2351.us = icmp eq i32 %.sroa.64.sroa.5.0.copyload.i.us, 0
  %.not23.us = select i1 %.not.i35.us, i1 true, i1 %.not2351.us
  br i1 %.not23.us, label %.split54.us, label %.split.us

.split:                                           ; preds = %bb.a, %bb.d
  %.sroa.3.0 = phi i32 [ %.sroa.3.0.i36, %bb.d ], [ %4, %bb.a ] ; 5 uses
  %.sroa.0.050 = phi i32 [ %.sroa.64.sroa.5.0.copyload.i, %bb.d ], [ %3, %bb.a ] ; 5 uses
  %i.g = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %.sroa.0.050, i32 noundef %.sroa.3.0, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0        ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.split54.us, label %bb.c

bb.c:                                             ; preds = %.split
  %i.i = extractvalue { i32, i32 } %i.g, 1
  %i.j = icmp eq i32 %i.i, %.val30
  %i.k = icmp eq i32 %i.h, %.val29.fr
  %.sroa.0.0.i = and i1 %i.j, %i.k
  br i1 %.sroa.0.0.i, label %.split54.us, label %bb.d

.split54.us:                                      ; preds = %.split, %bb.c, %bb.d, %.split.us, %bb.b
  %.us-phi = phi i32 [ %.sroa.3.0.us, %.split.us ], [ %.sroa.3.0.us, %bb.b ], [ %.sroa.3.0, %bb.d ], [ %.sroa.3.0, %bb.c ], [ %.sroa.3.0, %.split ] ; 2 uses
  %.us-phi55 = phi i32 [ %.sroa.0.050.us, %.split.us ], [ %.sroa.0.050.us, %bb.b ], [ %.sroa.0.050, %bb.d ], [ %.sroa.0.050, %bb.c ], [ %.sroa.0.050, %.split ] ; 2 uses
  %i.l = icmp eq i32 %6, %.us-phi
  %i.m = icmp eq i32 %5, %.us-phi55
  %.sroa.0.0.i3856 = and i1 %i.l, %i.m
  br i1 %.sroa.0.0.i3856, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %.sroa.0.050, i32 noundef %.sroa.3.0, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.sroa.02.0.copyload.i = load i32, ptr %i.o, align 8, !alias.scope !1120
  %.not.i35 = icmp eq i32 %.sroa.02.0.copyload.i, 0 ; 2 uses
  %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %.sroa.64.sroa.6.0.copyload.i = load i32, ptr %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1120
  %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %.sroa.64.sroa.5.0.copyload.i = load i32, ptr %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1120 ; 2 uses
  %.sroa.3.0.i36 = select i1 %.not.i35, i32 undef, i32 %.sroa.64.sroa.6.0.copyload.i
  %.not2351 = icmp eq i32 %.sroa.64.sroa.5.0.copyload.i, 0
  %.not23 = select i1 %.not.i35, i1 true, i1 %.not2351
  br i1 %.not23, label %.split54.us, label %.split

.lr.ph:                                           ; preds = %.split54.us, %bb.h
  %.sroa.0.059 = phi ptr [ %.sroa.0.1, %bb.h ], [ %2, %.split54.us ] ; 5 uses
  %.sroa.047.058 = phi i32 [ %i.x, %bb.h ], [ %5, %.split54.us ]
  %.sroa.348.057 = phi i32 [ %i.w, %bb.h ], [ %6, %.split54.us ]
  %i.p = tail call noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0.059, i32 noundef %.sroa.047.058, i32 noundef %.sroa.348.057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.r = load i32, ptr %i.q, align 8, !noundef !60 ; 2 uses
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 548
  %i.t = load i32, ptr %i.s, align 4, !noundef !60
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.059, i64 200
  %.sroa.02.0.copyload.i39 = load i32, ptr %i.u, align 8, !alias.scope !1121
  %.not.i40 = icmp eq i32 %.sroa.02.0.copyload.i39, 0
  %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.059, i64 208
  %.sroa.64.sroa.5.0.copyload.i44 = load i32, ptr %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx.i43, align 8, !alias.scope !1121 ; 3 uses
  %.not2552 = icmp eq i32 %.sroa.64.sroa.5.0.copyload.i44, 0
  %.not25 = select i1 %.not.i40, i1 true, i1 %.not2552
  br i1 %.not25, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.059, i64 212
  %.sroa.64.sroa.6.0.copyload.i42 = load i32, ptr %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx.i41, align 4, !alias.scope !1121 ; 2 uses
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %.sroa.64.sroa.5.0.copyload.i44, i32 noundef %.sroa.64.sroa.6.0.copyload.i42, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1)
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.f, %.split54.us
  %.sroa.0.0.i38.lcssa = phi i1 [ true, %.split54.us ], [ false, %bb.f ], [ true, %bb.h ]
  ret i1 %.sroa.0.0.i38.lcssa

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.1 = phi ptr [ %i.v, %bb.g ], [ %.sroa.0.059, %bb.e ]
  %i.w = phi i32 [ %.sroa.64.sroa.6.0.copyload.i42, %bb.g ], [ %i.t, %bb.e ] ; 2 uses
  %i.x = phi i32 [ %.sroa.64.sroa.5.0.copyload.i44, %bb.g ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = icmp eq i32 %i.w, %.us-phi
  %i.z = icmp eq i32 %i.x, %.us-phi55
  %.sroa.0.0.i38 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %.sroa.0.0.i38, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3max(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %5) unnamed_addr #2 !guid !1122 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 4                 ; 6 uses
  %i.e = load i8, ptr %4, align 4, !range !73, !noundef !60 ; 3 uses
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  store i8 2, ptr %0, align 4
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 4, !range !73, !noundef !60
  switch i8 %i.g, label %default.unreachable65 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.b
  ]

default.unreachable65:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw i8 %i.e to i1
  br i1 %i.h, label %bb.y, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = trunc nuw i8 %i.e to i1
  br i1 %i.i, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !range !63, !noundef !60 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !60 ; 6 uses
  store i32 %i.k, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !70, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !63, !noundef !60 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i32, ptr %i.s, align 4, !noundef !60 ; 6 uses
  store i32 %i.r, ptr %i.c, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.t, ptr %i.u, align 4
  %i.v = icmp eq i32 %i.m, %i.t
  %i.w = icmp eq i32 %i.k, %i.r
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !noundef !60
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !70, !noundef !60
  %spec.select = and i8 %i.ad, %i.p
  store i8 0, ptr %0, align 4
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select, ptr %.sroa.410.0..sroa_idx, align 1
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %.sroa.512.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !range !63, !noundef !60 ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.x, 0       ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %.not = icmp eq i32 %i.ag, %i.af
  br i1 %.not, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 1
  %i.ak = icmp eq i32 %i.aj, %i.y
  br i1 %i.ak, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.al = extractvalue { i32, i32 } %i.ai, 0      ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  tail call void @llvm.assume(i1 %i.am)
  %.not40 = icmp eq i32 %i.al, %i.af
  br i1 %.not40, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 200
  %.sroa.032.0.copyload = load i32, ptr %i.an, align 8 ; 3 uses
  %.not41 = icmp ne i32 %.sroa.032.0.copyload, 0  ; 3 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 204
  %.sroa.534.0.copyload = load i32, ptr %.sroa.534.0..sroa_idx, align 4 ; 2 uses
  %i.ao = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 2 uses
  %.not42 = icmp eq i32 %i.ap, 0
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = extractvalue { i32, i32 } %i.ao, 1
  %i.ar = icmp eq i32 %i.aq, %.sroa.534.0.copyload
  %or.cond49 = select i1 %.not41, i1 %i.ar, i1 false
  %i.as = icmp eq i32 %i.ap, %.sroa.032.0.copyload
  %or.cond56 = and i1 %i.as, %or.cond49
  br i1 %or.cond56, label %bb.o, label %.thread68

bb.n:                                             ; preds = %bb.l
  br i1 %.not41, label %.thread68, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.at = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0      ; 2 uses
  %.not44 = icmp eq i32 %i.au, 0
  br i1 %.not44, label %.thread68, label %bb.p

.thread:                                          ; preds = %bb.n
  %i.av = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
  %i.aw = extractvalue { i32, i32 } %i.av, 0
  %.not4466 = icmp eq i32 %i.aw, 0
  br i1 %.not4466, label %.thread67, label %.thread68

bb.p:                                             ; preds = %bb.o
  %i.ax = extractvalue { i32, i32 } %i.at, 1
  %i.ay = icmp eq i32 %.sroa.534.0.copyload, %i.ax
  %or.cond50 = select i1 %.not41, i1 %i.ay, i1 false
  %i.az = icmp eq i32 %i.au, %.sroa.032.0.copyload
  %or.cond57 = and i1 %i.az, %or.cond50
  br i1 %or.cond57, label %.thread67, label %.thread68

.thread67:                                        ; preds = %.thread, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.k, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.m, ptr %i.bb, align 4
  store ptr %5, ptr %i.b, align 8
  %i.bc = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtCsileJQcQObtj_7hir_def10ModuleIdLtNCNvMNtB18_10visibilityNtB1L_10Visibility3max0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2r_3any5checkB16_NCB1I_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB18_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c) #58
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.t, ptr %i.be, align 4
  store ptr %5, ptr %i.a, align 8
  %i.bf = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtCsileJQcQObtj_7hir_def10ModuleIdLtNCNvMNtB18_10visibilityNtB1L_10Visibility3maxs0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2u_3any5checkB16_NCB1I_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB18_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d) #58
  br i1 %i.bf, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.thread67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  store i8 -1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.u:                                             ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.w, %bb.s, %bb.b
  ret void

bb.v:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

.thread68:                                        ; preds = %.thread, %bb.o, %bb.p, %bb.n, %bb.m
  store i8 -1, ptr %0, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread68, %bb.h, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.x:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  store i8 -1, ptr %0, align 4
  br label %bb.w

bb.y:                                             ; preds = %bb.e, %bb.d
  %.pn = phi ptr [ %4, %bb.d ], [ %1, %bb.e ]     ; 2 uses
  %.pn47 = phi ptr [ %1, %bb.d ], [ %4, %bb.e ]   ; 2 uses
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %.pn47, i64 4
  %.sroa.01.0 = load i32, ptr %.sroa.01.0.in, align 4, !range !63, !noundef !60
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %.pn47, i64 8
  %.sroa.3.0 = load i32, ptr %.sroa.3.0.in, align 4, !noundef !60
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %.sroa.02.0 = load i32, ptr %.sroa.02.0.in, align 4, !range !63, !noundef !60 ; 2 uses
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.7.0 = load i32, ptr %.sroa.7.0.in, align 4, !noundef !60 ; 2 uses
  %i.bg = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %.sroa.01.0, i32 noundef %.sroa.3.0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.bh = extractvalue { i32, i32 } %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, %.sroa.7.0
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !60
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !60
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.ad, label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bo = extractvalue { i32, i32 } %i.bg, 0      ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i32 %i.bo, %.sroa.02.0
  br i1 %i.bq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  store i8 -1, ptr %0, align 4
  br label %bb.u

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %0, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.02.0, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.u

bb.ad:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !range !63, !noundef !60
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !range !63, !noundef !60
  %i.bv = icmp eq i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.ad
  store i8 -1, ptr %0, align 4
  br label %bb.u

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3min(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(12) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %5) unnamed_addr #2 !guid !1123 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 4                 ; 6 uses
  %i.e = load i8, ptr %4, align 4, !range !73, !noundef !60 ; 3 uses
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 4, !range !73, !noundef !60
  switch i8 %i.g, label %default.unreachable68 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.v

default.unreachable68:                            ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = trunc nuw i8 %i.e to i1
  br i1 %i.h, label %bb.z, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = trunc nuw i8 %i.e to i1
  br i1 %i.i, label %bb.aa, label %bb.z

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !range !63, !noundef !60 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !60 ; 6 uses
  store i32 %i.k, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !70, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !63, !noundef !60 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i32, ptr %i.s, align 4, !noundef !60 ; 6 uses
  store i32 %i.r, ptr %i.c, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.t, ptr %i.u, align 4
  %i.v = icmp eq i32 %i.m, %i.t
  %i.w = icmp eq i32 %i.k, %i.r
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !noundef !60
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !70, !noundef !60
  %spec.select = and i8 %i.ad, %i.p
  store i8 0, ptr %0, align 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select, ptr %.sroa.411.0..sroa_idx, align 1
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %.sroa.513.0..sroa_idx, align 4
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %.sroa.614.0..sroa_idx, align 4
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !range !63, !noundef !60 ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.x, 0       ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %.not = icmp eq i32 %i.ag, %i.af
  br i1 %.not, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 1
  %i.ak = icmp eq i32 %i.aj, %i.y
  br i1 %i.ak, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.al = extractvalue { i32, i32 } %i.ai, 0      ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  tail call void @llvm.assume(i1 %i.am)
  %.not42 = icmp eq i32 %i.al, %i.af
  br i1 %.not42, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 200
  %.sroa.034.0.copyload = load i32, ptr %i.an, align 8 ; 3 uses
  %.not43 = icmp ne i32 %.sroa.034.0.copyload, 0  ; 3 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 204
  %.sroa.536.0.copyload = load i32, ptr %.sroa.536.0..sroa_idx, align 4 ; 2 uses
  %i.ao = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 2 uses
  %.not44 = icmp eq i32 %i.ap, 0
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = extractvalue { i32, i32 } %i.ao, 1
  %i.ar = icmp eq i32 %i.aq, %.sroa.536.0.copyload
  %or.cond52 = select i1 %.not43, i1 %i.ar, i1 false
  %i.as = icmp eq i32 %i.ap, %.sroa.034.0.copyload
  %or.cond59 = and i1 %i.as, %or.cond52
  br i1 %or.cond59, label %bb.p, label %.thread71

bb.o:                                             ; preds = %bb.m
  br i1 %.not43, label %.thread71, label %.thread

bb.p:                                             ; preds = %bb.n
  %i.at = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0      ; 2 uses
  %.not46 = icmp eq i32 %i.au, 0
  br i1 %.not46, label %.thread71, label %bb.q

.thread:                                          ; preds = %bb.o
  %i.av = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5blockDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
  %i.aw = extractvalue { i32, i32 } %i.av, 0
  %.not4669 = icmp eq i32 %i.aw, 0
  br i1 %.not4669, label %.thread70, label %.thread71

bb.q:                                             ; preds = %bb.p
  %i.ax = extractvalue { i32, i32 } %i.at, 1
  %i.ay = icmp eq i32 %.sroa.536.0.copyload, %i.ax
  %or.cond53 = select i1 %.not43, i1 %i.ay, i1 false
  %i.az = icmp eq i32 %i.au, %.sroa.034.0.copyload
  %or.cond60 = and i1 %i.az, %or.cond53
  br i1 %or.cond60, label %.thread70, label %.thread71

.thread70:                                        ; preds = %.thread, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.k, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.m, ptr %i.bb, align 4
  store ptr %5, ptr %i.b, align 8
  %i.bc = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtCsileJQcQObtj_7hir_def10ModuleIdLtNCNvMNtB18_10visibilityNtB1L_10Visibility3min0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2r_3any5checkB16_NCB1I_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB18_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c) #58
  br i1 %i.bc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.t, ptr %i.be, align 4
  store ptr %5, ptr %i.a, align 8
  %i.bf = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtCsileJQcQObtj_7hir_def10ModuleIdLtNCNvMNtB18_10visibilityNtB1L_10Visibility3mins0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2u_3any5checkB16_NCB1I_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB18_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d) #58
  br i1 %i.bf, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.thread70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  store i8 -1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.v:                                             ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.x, %bb.t, %bb.d
  ret void

bb.w:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

.thread71:                                        ; preds = %.thread, %bb.p, %bb.q, %bb.o, %bb.n
  store i8 -1, ptr %0, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread71, %bb.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.y:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  store i8 -1, ptr %0, align 4
  br label %bb.x

bb.z:                                             ; preds = %bb.f, %bb.e
  %.pn = phi ptr [ %4, %bb.e ], [ %1, %bb.f ]     ; 2 uses
  %.pn49 = phi ptr [ %1, %bb.e ], [ %4, %bb.f ]   ; 3 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %.pn49, i64 4
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 4, !range !63, !noundef !60 ; 2 uses
  %.sroa.4.0.in = getelementptr inbounds nuw i8, ptr %.pn49, i64 8
  %.sroa.4.0 = load i32, ptr %.sroa.4.0.in, align 4, !noundef !60 ; 2 uses
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %.pn49, i64 1
  %.sroa.03.0 = load i8, ptr %.sroa.03.0.in, align 1, !range !70, !noundef !60
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %.sroa.04.0 = load i32, ptr %.sroa.04.0.in, align 4, !range !63, !noundef !60
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.6.0 = load i32, ptr %.sroa.6.0.in, align 4, !noundef !60
  %i.bg = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_(i32 noundef %.sroa.0.0, i32 noundef %.sroa.4.0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.bh = extractvalue { i32, i32 } %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, %.sroa.6.0
  br i1 %i.bi, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !60
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !60
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.bo = extractvalue { i32, i32 } %i.bg, 0      ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i32 %i.bo, %.sroa.04.0
  br i1 %i.bq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  store i8 -1, ptr %0, align 4
  br label %bb.v

bb.ad:                                            ; preds = %bb.ab
  store i8 0, ptr %0, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.03.0, ptr %.sroa.46.0..sroa_idx, align 1
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0, ptr %.sroa.57.0..sroa_idx, align 4
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0, ptr %.sroa.68.0..sroa_idx, align 4
  br label %bb.v

bb.ae:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !range !63, !noundef !60
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !range !63, !noundef !60
  %i.bv = icmp eq i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.ae
  store i8 -1, ptr %0, align 4
  br label %bb.v

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility7resolve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #2 !guid !1124 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver18resolve_visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
  store i8 2, ptr %0, align 4
  %i.b = load i8, ptr %i.a, align 4, !range !78, !noundef !60
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs10iter_items(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([108 x i8]) align 4 captures(none) dereferenceable(108) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1132 {
bb.a:
  %.sroa.544 = alloca [12 x i8], align 4          ; 2 uses
  %.sroa.5.sroa.0 = alloca [16 x i8], align 4     ; 2 uses
  %.sroa.5.sroa.5 = alloca [12 x i8], align 4     ; 2 uses
  %.sroa.7 = alloca [20 x i8], align 4            ; 4 uses
  %.sroa.573 = alloca [16 x i8], align 4          ; 2 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def6per_nsNtB4_5PerNs10iter_items10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.f, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !59

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtCsileJQcQObtj_7hir_def6per_nsNtB4_5PerNs10iter_items10___CALLSITE) #52 ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.05.0 = phi i8 [ %i.h, %bb.c ], [ %i.f, %bb.b ], [ %i.f, %bb.b ]
  %i.i = load ptr, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def6per_nsNtB4_5PerNs10iter_items10___CALLSITE, align 8, !nonnull !60, !align !61, !noundef !60
  %i.j = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.i, i8 noundef %.sroa.05.0)
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @_RNvNvMNtCsileJQcQObtj_7hir_def6per_nsNtB4_5PerNs10iter_items10___CALLSITE, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.524.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.l, ptr %i.m, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
