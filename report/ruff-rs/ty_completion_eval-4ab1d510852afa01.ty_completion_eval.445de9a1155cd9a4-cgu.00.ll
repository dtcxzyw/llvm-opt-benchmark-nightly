Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_completion_eval-4ab1d510852afa01.ty_completion_eval.445de9a1155cd9a4-cgu.00?download=true
inline.NumInlined: 748
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_10TaskSource8to_tasks:bb.a
          to label %.body unwind label %bb.hf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 143
  %i.e = load i8, ptr %i.d, align 1, !range !1110, !noundef !4 ; 3 uses
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = icmp ugt i8 %i.e, -41
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i8 %i.e, 64
  %i.i = tail call i8 @llvm.umin.i8(i8 %i.h, i8 24)
  %.sroa.0.0.i.i = zext nneg i8 %i.i to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !1111, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1111, !noundef !4
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !7, !alias.scope !1112, !noalias !1113, !noundef !4
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1114
  store ptr %i.m, ptr %i.b, align 8, !noalias !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1115
  store ptr %i.b, ptr %i.a, align 8, !noalias !1115
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs5RUJIcrgHnQ_18ty_completion_eval, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1115
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.o, align 8, !noalias !1115
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1115
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @34, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1114
  br label %_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer9qualified.exit

bb.f:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  br label %_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer9qualified.exit

_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer9qualified.exit: ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = icmp eq i64 %.sroa.01.0.i, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.u = load i8, ptr %i.t, align 1, !range !21, !alias.scope !1116, !noundef !4 ; 2 uses
  %i.v = icmp ugt i8 %i.u, -41
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add i8 %i.u, 64
  %i.x = call i8 @llvm.umin.i8(i8 %i.w, i8 24)
  %.sroa.0.0.i.i33 = zext nneg i8 %i.x to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !1116, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1116, !noundef !4
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i34 = phi i64 [ %i.aa, %bb.i ], [ %.sroa.0.0.i.i33, %bb.h ] ; 2 uses
  %.sroa.0.0.i35 = phi ptr [ %i.y, %bb.i ], [ %i.s, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = icmp eq i64 %i.ac, %.sroa.01.0.i34
  br i1 %i.ad, label %bb.q, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42

bb.j:                                             ; preds = %_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer9qualified.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull %i.af, i64 %.sroa.01.0.i)
  %i.ag = icmp eq i32 %bcmp, 0
  br i1 %i.ag, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_RNvMs3_Cs5RUJIcrgHnQ_18ty_completion_evalNtB5_16CompletionAnswer9qualified.exit, %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.aj, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit38 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit38: ; preds = %bb.n
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42: ; preds = %bb.t, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46, %bb.s, %bb.x, %bb.q, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit38
  %.sroa.0.0 = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit38 ], [ false, %bb.q ], [ false, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36 ], [ %i.bh, %bb.x ], [ false, %bb.s ], [ false, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46 ], [ %.not30, %bb.t ]
  ret i1 %.sroa.0.0

bb.q:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit36
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %bcmp28 = call i32 @bcmp(ptr nonnull %i.am, ptr %.sroa.0.0.i35, i64 %.sroa.01.0.i34)
  %i.an = icmp eq i32 %bcmp28, 0
  br i1 %i.an, label %bb.r, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !range !7, !noundef !4
  %.not29 = icmp eq i64 %i.ap, -1
  br i1 %.not29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.av = load ptr, ptr %i.au, align 8, !align !15, !noundef !4 ; 5 uses
  %.not31 = icmp eq ptr %i.av, null
  br i1 %.not31, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !align !15, !noundef !4
  %.not30 = icmp eq ptr %i.ax, null
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42

bb.u:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 23
  %i.az = load i8, ptr %i.ay, align 1, !range !21, !alias.scope !1117, !noundef !4 ; 2 uses
  %i.ba = icmp ugt i8 %i.az, -41
  br i1 %i.ba, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = add i8 %i.az, 64
  %i.bc = call i8 @llvm.umin.i8(i8 %i.bb, i8 24)
  %.sroa.0.0.i.i43 = zext nneg i8 %i.bc to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46

bb.w:                                             ; preds = %bb.u
  %i.bd = load ptr, ptr %i.av, align 8, !alias.scope !1117, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1117, !noundef !4
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46: ; preds = %bb.v, %bb.w
  %.sroa.01.0.i44 = phi i64 [ %i.bf, %bb.w ], [ %.sroa.0.0.i.i43, %bb.v ]
  %.sroa.0.0.i45 = phi ptr [ %i.bd, %bb.w ], [ %i.av, %bb.v ] ; 2 uses
  %i.bg = icmp eq i64 %i.at, %.sroa.01.0.i44
  br i1 %i.bg, label %bb.x, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42

bb.x:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i45) ]
  %bcmp32 = call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %.sroa.0.0.i45, i64 %i.at)
  %i.bh = icmp eq i32 %bcmp32, 0
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit42
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Cs5RUJIcrgHnQ_18ty_completion_evalNtB4_4Task11completions(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1120, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !1120, !noundef !4
  %i.f = tail call { i32, i32 } @_RNvMNtCs56aZGHL6Dc6_7ruff_db5filesNtB2_5Files6system(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) @87, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !1120 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1        ; 2 uses
  %i.i = tail call noundef i8 @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File6statusDNtBa_2DbEL_ECs5RUJIcrgHnQ_18ty_completion_eval(i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) @87), !noalias !1120
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit
    i8 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.h to i64
  %i.k = shl nuw i64 %i.j, 32
  %i.l = zext i32 %i.g to i64
  %i.m = or disjoint i64 %i.k, %i.l
  br label %_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.sroa.4.sroa.0.0.i = phi i64 [ %i.m, %bb.b ], [ 4294967296, %bb.c ], [ 0, %bb.a ]
  call void @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_9FileErrorEINtB5_7ContextB1a_B1L_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNvMs_Cs5RUJIcrgHnQ_18ty_completion_evalNtB3l_4Task11completions0EB3l_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i64 %.sroa.4.sroa.4.sroa.0.0.i, ptr noundef nonnull align 8 %1)
  %i.n = load i32, ptr %i.b, align 8, !range !1121, !noundef !4
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RINvNtCs56aZGHL6Dc6_7ruff_db5files19system_path_to_fileRNtNtNtB4_6system4path13SystemPathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !range !1122, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4294967295
  %i.z = shl nuw i64 %i.x, 32
  %i.aa = or disjoint i64 %i.z, 512
  %.sroa.019.0.insert.insert = select i1 %i.y, i64 513, i64 %i.aa
  call void @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtBD_3num5error15TryFromIntErrorEINtB5_7ContextB1a_B1W_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNvMs_Cs5RUJIcrgHnQ_18ty_completion_evalNtB3Q_4Task11completionss_0EB3Q_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i64 %.sroa.019.0.insert.insert, ptr noundef nonnull align 8 %1)
  %i.ab = load i32, ptr %i.a, align 8, !range !1121, !noundef !4
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aj = tail call { i32, i32 } @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db12program_file(ptr noundef nonnull align 8 %i.c, i32 noundef %i.t, i32 noundef %i.v) ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1
  tail call void @_RNvNtCskEUeM34gmJU_6ty_ide10completion10completion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @88, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ai, i1 noundef zeroext false, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ah)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_Cs5RUJIcrgHnQ_18ty_completion_evalNtB4_4Task3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [728 x i8], align 8               ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 7 uses
  %i.h = alloca [544 x i8], align 8               ; 10 uses
  %i.i = alloca [248 x i8], align 8               ; 9 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [248 x i8], align 8               ; 9 uses
  %i.l = alloca [544 x i8], align 8               ; 9 uses
  %i.m = alloca [728 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [56 x i8], align 8           ; 6 uses
  %i.n = alloca [728 x i8], align 8               ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.q, align 8
  %i.r = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b       ; 2 uses

.thread86:                                        ; preds = %bb.ap, %bb.aq, %bb.ab, %bb.q, %bb.b
  %.pn75 = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn70, %bb.ab ], [ %lpad.thr_comm.split-lp, %bb.q ], [ %.pn73.ph, %bb.aq ], [ %.pn73.ph, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorEBD_(ptr noalias noundef align 8 dereferenceable(88) %4) #32
          to label %common.resume unwind label %bb.am

bb.b:                                             ; preds = %bb.ao, %bb.e, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.thread86

bb.c:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.r, 1        ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = invoke noundef nonnull ptr @_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB3_8OsSystem3newRNtNtB5_4path10SystemPathECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.l unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.c, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNtB6_7Display3fmtCs5RUJIcrgHnQ_18ty_completion_eval, ptr %.sroa.430.0..sroa_idx, align 8
  %i.w = invoke fastcc noundef nonnull ptr @_RNvNtCsiXichZnxgbf_6anyhow9___private10format_err(ptr noundef nonnull @91, ptr noundef nonnull %i.c)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(88) %4)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(88) %4)
          to label %.body.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(88) %4)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorEBD_.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.y, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5RUJIcrgHnQ_18ty_completion_eval16CompletionAnswerEBD_(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #32
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.thread86, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn75, %.thread86 ]
  resume { ptr, i32 } %common.resume.op

end_hunk_0
