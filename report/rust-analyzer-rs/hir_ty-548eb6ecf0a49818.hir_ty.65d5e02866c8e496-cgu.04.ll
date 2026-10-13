Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMNtNtCskVLyBV5N46_15ra_ap_rustc_abi6layout6simpleINtB7_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB19_19RustcEnumVariantIdxE6scalarNtB7_16TargetDataLayoutEB1b_:bb.a
  ]

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %.sroa.6.0.extract.shift.i67 = lshr i64 %.sroa.028.0.copyload, 32
  %.sroa.6.0.extract.trunc.i68 = trunc nuw i64 %.sroa.6.0.extract.shift.i67 to i32 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !468
  store i32 %.sroa.6.0.extract.trunc.i68, ptr %i.d, align 4, !noalias !470
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !alias.scope !470, !noundef !5
  %i.bw = icmp eq i32 %i.bv, %.sroa.6.0.extract.trunc.i68
  br i1 %i.bw, label %.thread181, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !470, !nonnull !5, !noundef !5 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !470, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ca, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.cb
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %i.cf = phi ptr [ %i.cd, %bb.w ], [ %i.by, %bb.v ] ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !noalias !471, !noundef !5
  %i.ch = icmp eq i32 %i.cg, %.sroa.6.0.extract.trunc.i68
  br i1 %i.ch, label %bb.x, label %bb.w

.thread181:                                       ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.i6.i72130 = load i64, ptr %i.ci, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !472
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82

._crit_edge:                                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !470
  store ptr %i.d, ptr %i.c, align 8, !noalias !470
  %.sroa.45.0..sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i74, align 8, !noalias !470
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !470
  unreachable

switch.lookup:                                    ; preds = %bb.s
  %i.ck = and i64 %.sroa.44.0.extract.shift.i64, 255
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator20compute_discriminant, i64 %i.ck
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.idx.cast.i91 = and i64 %.sroa.44.0.extract.shift.i64, 255
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.cast.i91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 83
  %.sroa.07.0.i92 = load i8, ptr %i.cm, align 1, !alias.scope !472, !noundef !5
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93

switch.lookup14.i87:                              ; preds = %bb.s
  %.sroa.44.0.extract.trunc.i65 = trunc i64 %.sroa.44.0.extract.shift.i64 to i8
  %i.cn = tail call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i65), !noalias !468
  %switch.idx.cast15.i88 = and i64 %.sroa.44.0.extract.shift.i64, 255
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.cast15.i88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %.sroa.06.0.i89 = load i8, ptr %i.cp, align 1, !alias.scope !472, !noundef !5
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.0.0.i6.i72 = load i64, ptr %i.cq, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !472
  store i32 %.sroa.6.0.extract.trunc.i68, ptr %i.b, align 4, !noalias !474
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !474, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !474, !noundef !5 ; 2 uses
  %.idx207 = shl nuw nsw i64 %i.cu, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx207
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %._crit_edge197, label %.lr.ph196

bb.y:                                             ; preds = %.lr.ph196
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cy, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.x, %bb.y
  %i.cz = phi ptr [ %i.cx, %bb.y ], [ %i.cs, %bb.x ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 8, !noalias !475, !noundef !5
  %i.db = icmp eq i32 %i.da, %.sroa.6.0.extract.trunc.i68
  br i1 %i.db, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i81, label %bb.y

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i81: ; preds = %.lr.ph196
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82

._crit_edge197:                                   ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  store ptr %i.b, ptr %i.a, align 8, !noalias !474
  %.sroa.45.0..sroa_idx.i.i86 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i86, align 8, !noalias !474
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #43, !noalias !474
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i81, %.thread181
  %.sroa.0.0.i6.i72131183 = phi i64 [ %.sroa.0.0.i6.i72130, %.thread181 ], [ %.sroa.0.0.i6.i72, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i81 ]
  %.sroa.0.0.in.i.i83 = phi ptr [ %i.cj, %.thread181 ], [ %i.dc, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i81 ]
  %.sroa.0.0.i.i84 = load i8, ptr %.sroa.0.0.in.i.i83, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !472
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93: ; preds = %switch.lookup, %switch.lookup14.i87, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82
  %.sroa.05.0.i73123 = phi i64 [ %switch.ext, %switch.lookup ], [ %i.cn, %switch.lookup14.i87 ], [ %.sroa.0.0.i6.i72131183, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82 ]
  %.sroa.05.0.i85 = phi i8 [ %.sroa.07.0.i92, %switch.lookup ], [ %.sroa.06.0.i89, %switch.lookup14.i87 ], [ %.sroa.0.0.i.i84, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i82 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i128 %i.q, ptr %i.l, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i128 %i.s, ptr %i.dd, align 16
  br label %bb.z

bb.z:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit63
  %.sroa.010.0 = phi i8 [ %trunc.i, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit63 ], [ %i.x, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93 ]
  %.sroa.2.195 = phi i8 [ -1, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit63 ], [ %.sroa.2.0, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93 ]
  %.sroa.07.0 = phi i8 [ %.sroa.05.0.i49111, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit63 ], [ %.sroa.05.0.i85, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93 ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.05.0.i98109, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit63 ], [ %.sroa.05.0.i73123, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit93 ] ; 2 uses
  switch i8 %.sroa.010.0, label %bb.aa [
    i8 0, label %bb.ab
    i8 1, label %bb.ad
    i8 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.de = and i64 %.sroa.028.0.copyload, 65536
  %.not148 = icmp eq i64 %i.de, 0
  %. = select i1 %.not148, i64 8589934592, i64 4294967296
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ab, %bb.ac
  %.sroa.09.0 = phi i64 [ 17179869184, %bb.ac ], [ 12884901888, %bb.z ], [ %., %bb.ab ]
  %i.df = add i64 %.sroa.09.0, %.sroa.04.0
  %i.dg = load i128, ptr %i.l, align 16, !noundef !5
  %i.dh = trunc i128 %i.dg to i64                 ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 48)
  %i.dj = add i64 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dl = load i128, ptr %i.dk, align 16, !noundef !5
  %i.dm = trunc i128 %i.dl to i64                 ; 2 uses
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 48)
  %i.do = add i64 %i.dj, %i.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  %.sroa.424.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.424, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.424.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.dp, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.dq, align 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -9223372036854775807, ptr %.sroa.420.0..sroa_idx, align 16
  store i32 2, ptr %0, align 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.424, i64 60, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.dr, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.2.195, ptr %.sroa.2.0..sroa_idx1, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4, i64 7, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i8 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 338
  store i8 %.sroa.07.0, ptr %i.dt, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.04.0, ptr %i.du, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.dv, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 339
  store i8 %.sroa.07.0, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.do, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB5_9Evaluator21exec_clone_for_fieldsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtB1t_5slice4iter4IterNtNtNtB9_11next_solver2ty2TyEEEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef range(i64 0, 3) %5, i64 noundef %6, i32 noundef range(i32 1, 0) %7, i32 noundef %8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %9, i64 %.0.val, i64 %.8.val, i32 noundef range(i32 0, 5) %10, i32 %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %4, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %2, ptr %i.k, align 8
  %.sroa.290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %3, ptr %.sroa.290.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.aa

bb.c:                                             ; preds = %bb.y, %bb.a
  %i.u = invoke noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.noexc81 unwind label %bb.d   ; 4 uses

.noexc81:                                         ; preds = %bb.c
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.c, %bb.v, %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit, %bb.p, %bb.o, %bb.n, %bb.k, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !504
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit

bb.e:                                             ; preds = %.noexc81
  %i.y = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !505, !noundef !5 ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator6layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.u)
          to label %bb.g unwind label %bb.d

bb.f:                                             ; preds = %.noexc81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 -1, ptr %0, align 8
  %i.aa = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !506
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82.sink.split: ; preds = %bb.f, %bb.z
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82.sink.split, %bb.z, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.i, align 8, !range !9, !noundef !5 ; 2 uses
  %.not65 = icmp eq i32 %i.ac, -1
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.440.0.copyload = load i32, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0.copyload = load ptr, ptr %i.m, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.646.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 %i.ac, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.440.0.copyload, ptr %.sroa.444.0..sroa_idx, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload, ptr %.sroa.545.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  %i.af = load i64, ptr %i.ae, align 16, !noundef !5
  %i.ag = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !507
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #46
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val75 = load i64, ptr %i.n, align 16, !noundef !5 ; 2 uses
  invoke void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13heap_allocate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %.val75, i64 noundef %.val75)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.h, align 8, !range !9, !noundef !5 ; 2 uses
  %.not66 = icmp eq i32 %i.ai, -1
  br i1 %.not66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.453.0.copyload = load i32, ptr %.sroa.453.0..sroa_idx, align 4
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.761.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.756.0..sroa_idx, i64 24, i1 false)
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load <2 x i64>, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 %i.ai, ptr %0, align 8
  store i32 %.sroa.453.0.copyload, ptr %.sroa.458.0..sroa_idx, align 4
  store <2 x i64> %i.aj, ptr %.sroa.559.0..sroa_idx, align 8
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.o, align 8, !range !10, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val73 = load i64, ptr %i.n, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.am = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE7new_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.d

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ao = invoke fastcc noundef i64 @_RNvMsr_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE6offsetBW_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef %i.y)
          to label %bb.q unwind label %bb.d       ; 4 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0.i.i = add i64 %i.ao, %6              ; 3 uses
  switch i64 %5, label %default.unreachable19 [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit
  ]

default.unreachable19:                            ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ap = add i64 %.sroa.4.0.i.i, 1152921504606846976
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit

bb.s:                                             ; preds = %bb.q
  %i.aq = add i64 %.sroa.4.0.i.i, 576460752303423488
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit

_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i = phi i64 [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %.sroa.4.0.i.i, %bb.q ]
  store i64 %.sroa.01.0.i, ptr %i.d, align 8
  invoke void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit
  %i.ar = load i32, ptr %i.e, align 8, !range !9, !noundef !5
  %.not67 = icmp eq i32 %i.ar, -1
  br i1 %.not67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir6prettyNtB4_7MirBody12pretty_print:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.i, align 8
  invoke void @_RINvMs1_NtNtCs8K4cjrcxBsw_6hir_ty3mir6prettyNtB6_12MirPrettyCtx8for_bodyNCNvMB6_NtB8_7MirBody12pretty_print0EBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir6pretty12MirPrettyCtxEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.b) #42
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbq3eHDLgq0Z_8la_arena3map8ArenaMapINtBG_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalEIB1h_NtNtCsileJQcQObtj_7hir_def3hir7BindingEEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #42
          to label %common.resume unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEEENtNtNtBK_3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbq3eHDLgq0Z_8la_arena3map8ArenaMapINtBG_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalEIB1h_NtNtCsileJQcQObtj_7hir_def3hir7BindingEEEB1u_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEEENtNtNtBR_3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.b, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %eh.lpad-body, %.body ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbq3eHDLgq0Z_8la_arena3map8ArenaMapINtBG_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalEIB1h_NtNtCsileJQcQObtj_7hir_def3hir7BindingEEEB1u_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEEENtNtNtBR_3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %.body, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir6prettyNtB4_7MirBody3dbg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir6prettyNtB4_7MirBody12pretty_print(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %4)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB2_7ContextINtNtB4_7layered7LayeredNtNtNtB6_6filter7targets7TargetsNtNtNtB6_8registry7sharded8RegistryEE23lookup_current_filteredCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = tail call noundef align 8 ptr @_RINvMNtCsaMQbKjKCVRW_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @167) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, ptr } @_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry10span_stack(ptr noundef nonnull align 8 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEEECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i, %.lr.ph.i
  %i.q = phi ptr [ %i.m, %.lr.ph.i ], [ %i.r, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7696)
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.t = load i8, ptr %i.s, align 8, !range !13, !alias.scope !7697, !noalias !7698, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7700
  invoke void @_RNvXs1_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.v = load ptr, ptr %i.a, align 8, !noalias !7700, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i, label %_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7699
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread10.i

_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7700
  store ptr %2, ptr %i.b, align 8, !noalias !7701
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !7701
  invoke void @_RNvMs_NtCsity1gTxgZvF_18tracing_subscriber8registryINtB4_7SpanRefINtNtNtB6_5layer7layered7LayeredNtNtNtB6_6filter7targets7TargetsNtNtB4_7sharded8RegistryEE15try_with_filterCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i64 noundef %i.p)
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !noalias !7699 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7699
  %.not.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread10.i, label %bb.g

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread10.i: ; preds = %.noexc9, %_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7699
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread10.i, %bb.c
  %i.w = icmp eq ptr %i.i, %i.r
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEEECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEEECs8K4cjrcxBsw_6hir_ty.exit, %bb.e
  ret void

bb.g:                                             ; preds = %.noexc9
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.74.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7699
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEEECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i, %bb.b, %bb.g
  %storemerge = phi ptr [ %.pr.i.i.i, %bb.g ], [ null, %bb.b ], [ null, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdRNtNtCsaMQbKjKCVRW_12tracing_core4span2IduINtNtNtBa_3ops12control_flow11ControlFlowINtB1j_7SpanRefINtNtNtB1l_5layer7layered7LayeredNtNtNtB1l_6filter7targets7TargetsNtNtB1j_7sharded8RegistryEEENCNvMB1h_NtB1h_9SpanStack4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2i_B3D_NCNvMNtB3X_7contextINtB70_7ContextB3S_E23lookup_current_filtered0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.thread.i ]
  store ptr %storemerge, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.x = load i64, ptr %i.g, align 8, !noundef !5
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.g, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d, %_RNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber5layer7contextINtB4_7ContextINtNtB6_7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtNtB8_8registry7sharded8RegistryEE23lookup_current_filtered0Cs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.aa = load i64, ptr %i.g, align 8, !noundef !5
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.g, align 8
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator10exec_clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %8, i32 noundef range(i32 0, 5) %9, i32 %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.688 = alloca [48 x i8], align 8          ; 6 uses
  %i.f = alloca [104 x i8], align 8               ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.0.0.copyload = load i32, ptr %6, align 8 ; 3 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5206.0.copyload = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8 ; 3 uses
  %i.m = icmp ne i32 %.sroa.0.0.copyload, 27
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i32 %.sroa.0.0.copyload, -2
  %i.o = icmp samesign ugt i32 %.sroa.0.0.copyload, 1
  %narrow = select i1 %i.o, i32 %i.n, i32 25
  switch i32 %narrow, label %bb.b [
    i32 14, label %bb.c
    i32 17, label %bb.d
    i32 22, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %6, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull ptr @_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1) #47
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator17exec_fn_with_args(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.e, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %8, i32 noundef 0, i32 undef, i32 noundef %9, i32 %10)
  %i.q = load i64, ptr %i.e, align 8, !range !44, !noundef !5 ; 3 uses
  %i.r = icmp eq i64 %i.q, -2
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.688, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  br i1 %i.r, label %bb.ai, label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %5, 1
  br i1 %i.t, label %bb.f, label %.split179

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsu_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent11GenericArgsNtNtB7_8interner10DbInternerE18split_closure_args(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull %.sroa.6.0.copyload)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator10exec_clone(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %8, i32 noundef %9, i32 %10)
  %i.w = load i32, ptr %i.j, align 8, !range !9, !noundef !5
  %.not187 = icmp eq i32 %i.w, -1
  br i1 %.not187, label %bb.r, label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5206.0.copyload) ]
  %i.x = icmp eq i64 %5, 1
  br i1 %i.x, label %bb.t, label %.split183

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7742)
  %i.y = load i64, ptr %4, align 8, !range !10, !alias.scope !7742, !noalias !7743, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7742, !noalias !7743, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !7742, !noalias !7743, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull readonly align 16 %1, i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.ac), !noalias !7742
  %i.ad = load i32, ptr %i.l, align 8, !range !9, !noundef !5 ; 2 uses
  %.not188 = icmp eq i32 %i.ad, -1
  br i1 %.not188, label %bb.i, label %bb.h

.split179:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7744
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !7744
  %i.ae = load i64, ptr %i.b, align 8, !range !4, !noalias !7744, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !noalias !7744, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.af, label %bb.g, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit, !prof !7

bb.g:                                             ; preds = %.split179
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !7744
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ah, i64 %i.aj) #45, !noalias !7744
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.split179
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !7744, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = icmp ugt i64 %i.ah, 24
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7744
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(25) @168, i64 range(i64 0, -9223372036854775808) 25, i1 false), !noalias !7745
  store i32 8, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 25, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4104.0.copyload = load i32, ptr %.sroa.4104.0..sroa_idx, align 4
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5105.0.copyload = load ptr, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6106.0.copyload = load i64, ptr %.sroa.6106.0..sroa_idx, align 8
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7112.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7107.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i32 %i.ad, ptr %0, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4104.0.copyload, ptr %.sroa.4109.0..sroa_idx, align 4
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5105.0.copyload, ptr %.sroa.5110.0..sroa_idx, align 8
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6106.0.copyload, ptr %.sroa.6111.0..sroa_idx, align 8
  br label %bb.ap

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7746)
  %i.aq = icmp eq i64 %i.ap, 8
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.an, align 1, !alias.scope !7746, !noalias !7747 ; 5 uses
  %i.ar = icmp ugt i64 %.sroa.07.0.copyload.i, 1152921504606846976
  br i1 %i.ar, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !7748
  %i.as = tail call noundef dereferenceable_or_null(37) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 37, i64 noundef range(i64 1, 17) 1) #48, !noalias !7748 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.au = icmp samesign ugt i64 %.sroa.07.0.copyload.i, 576460752303423488 ; 2 uses
  %i.av = add nsw i64 %.sroa.07.0.copyload.i, -576460752303423488
  %spec.select.i = select i1 %i.au, i64 %i.av, i64 %.sroa.07.0.copyload.i
  %spec.select12.i = select i1 %i.au, i64 1, i64 2
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.aw = add i64 %.sroa.07.0.copyload.i, -1152921504606846976
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45, !noalias !7749
  unreachable

bb.o:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(37) @81, i64 range(i64 17, 59) 37, i1 false), !noalias !7749
  %i.ax = ptrtoint ptr %i.as to i64
  store i32 15, ptr %0, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.5125.0..sroa_idx, align 8
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 37, ptr %.sroa.6126.0..sroa_idx, align 8
  br label %bb.ap

bb.p:                                             ; preds = %bb.m, %bb.l
  %.sroa.13.0.ph = phi i64 [ %spec.select.i, %bb.l ], [ %i.aw, %bb.m ]
  %.sroa.9.0.ph = phi i64 [ %spec.select12.i, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  store i64 %.sroa.9.0.ph, ptr %i.k, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.13.0.ph, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.az, ptr %i.bb, align 8
  %.val193 = load i64, ptr %8, align 8, !range !10, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val194 = load i64, ptr %i.bc, align 8, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator18copy_from_interval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 16 dereferenceable(1120) %1, i64 noundef %.val193, i64 noundef %.val194, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ap

bb.q:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ap

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator12exec_syscall:bb.a
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.y, label %bb.z

bb.e:                                             ; preds = %bb.c
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.481.0.copyload = load i32, ptr %.sroa.481.0..sroa_idx, align 4
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.582.0.copyload = load ptr, ptr %.sroa.582.0..sroa_idx, align 8
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.683.0.copyload = load i64, ptr %.sroa.683.0..sroa_idx, align 8
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.789.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.784.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %i.p, ptr %0, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.481.0.copyload, ptr %.sroa.486.0..sroa_idx, align 4
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.582.0.copyload, ptr %.sroa.587.0..sroa_idx, align 8
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7777)
  %i.w = icmp eq i64 %i.v, 8
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.07.0.copyload.i = load i64, ptr %i.t, align 1, !alias.scope !7777, !noalias !7778 ; 5 uses
  %i.x = icmp ugt i64 %.sroa.07.0.copyload.i, 1152921504606846976
  br i1 %i.x, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !7779
  %i.y = tail call noundef dereferenceable_or_null(37) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 37, i64 noundef range(i64 1, 17) 1) #48, !noalias !7779 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp samesign ugt i64 %.sroa.07.0.copyload.i, 576460752303423488 ; 2 uses
  %i.ab = add nsw i64 %.sroa.07.0.copyload.i, -576460752303423488
  %spec.select.i = select i1 %i.aa, i64 %i.ab, i64 %.sroa.07.0.copyload.i
  %spec.select12.i = select i1 %i.aa, i64 1, i64 2
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ac = add i64 %.sroa.07.0.copyload.i, -1152921504606846976
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45, !noalias !7780
  unreachable

bb.l:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(37) @81, i64 range(i64 17, 59) 37, i1 false), !noalias !7780
  %i.ad = ptrtoint ptr %i.y to i64
  store i32 15, ptr %0, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %.sroa.5102.0..sroa_idx, align 8
  br label %bb.x

bb.m:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.0.ph = phi i64 [ %spec.select.i, %bb.i ], [ %i.ac, %bb.j ]
  %.sroa.9.0.ph = phi i64 [ %spec.select12.i, %bb.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7781)
  %i.ae = load i64, ptr %i.j, align 8, !range !10, !alias.scope !7781, !noalias !7782, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7781, !noalias !7782, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !7781, !noalias !7782, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 16 %1, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef %i.ai), !noalias !7781
  %i.aj = load i32, ptr %i.e, align 8, !range !9, !noundef !5 ; 2 uses
  %.not132 = icmp eq i32 %i.aj, -1
  br i1 %.not132, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4111.0.copyload = load i32, ptr %.sroa.4111.0..sroa_idx, align 4
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5112.0.copyload = load ptr, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6113.0.copyload = load i64, ptr %.sroa.6113.0..sroa_idx, align 8
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7114.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.aj, ptr %0, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4111.0.copyload, ptr %.sroa.4117.0..sroa_idx, align 4
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5112.0.copyload, ptr %.sroa.5118.0..sroa_idx, align 8
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = icmp eq i64 %i.an, 8
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0115.0.copyload = load i64, ptr %i.al, align 1 ; 2 uses
  %.not13 = icmp eq i64 %.sroa.0115.0.copyload, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ar = load i128, ptr %i.aq, align 16, !noundef !5
  %.promoted = load i128, ptr %i.ap, align 16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.as = tail call fastcc { ptr, i64 } @_RNvMs1_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 37) #47 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.v, label %bb.w, !prof !7

._crit_edge:                                      ; preds = %bb.u, %bb.p
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator18copy_from_interval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 16 dereferenceable(1120) %1, i64 noundef %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %i.av = phi i128 [ %.promoted, %.lr.ph ], [ %i.ax, %bb.u ] ; 4 uses
  %.sroa.0125.012 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.u ] ; 2 uses
  %i.aw = mul i128 %i.av, 47026247687942121848144207491837523525
  %i.ax = add i128 %i.aw, %i.ar                   ; 2 uses
  store i128 %i.ax, ptr %i.ap, align 16
  %i.ay = lshr i128 %i.av, 87
  %i.az = lshr i128 %i.av, 58
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = trunc i128 %i.ba to i64                 ; 2 uses
  %i.bc = lshr i128 %i.av, 122
  %i.bd = trunc nuw nsw i128 %i.bc to i64
  %i.be = call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %i.bb, i64 %i.bd)
  %i.bf = trunc i64 %i.be to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0.i.i = add i64 %.sroa.0125.012, %.sroa.13.0.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.bf, ptr %i.c, align 1
  call void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %.sroa.9.0.ph, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  %i.bg = load i32, ptr %i.d, align 8, !range !9, !noundef !5
  %.not133 = icmp eq i32 %i.bg, -1
  br i1 %.not133, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.x, %bb.t, %.split, %bb.z, %._crit_edge
  ret void

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %i.bh = add nuw i64 %.sroa.0125.012, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i64 %i.bh, %.sroa.0115.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.r

bb.v:                                             ; preds = %bb.q
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.bi = extractvalue { ptr, i64 } %i.as, 1
  store i32 15, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.459.0..sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.w, %bb.l, %bb.e
  %.sroa.6113.0.copyload.sink = phi i64 [ %.sroa.6113.0.copyload, %bb.n ], [ %i.bi, %bb.w ], [ 37, %bb.l ], [ %.sroa.683.0.copyload, %bb.e ]
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6113.0.copyload.sink, ptr %.sroa.6119.0..sroa_idx, align 8
  br label %bb.s

bb.y:                                             ; preds = %bb.d
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 35) #45
  unreachable

bb.z:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(35) @169, i64 range(i64 17, 59) 35, i1 false)
  store i32 15, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator14exec_intrinsic(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %8, i32 noundef range(i32 0, 5) %9, i32 %10, i1 noundef zeroext %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4264.i = alloca [28 x i8], align 4       ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 16               ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 11 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 11 uses
  %i.t = alloca [64 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [48 x i8], align 8                ; 11 uses
  %i.w = alloca [48 x i8], align 8                ; 11 uses
  %i.x = alloca [48 x i8], align 8                ; 11 uses
  %i.y = alloca [56 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [48 x i8], align 8               ; 9 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4360.i = alloca [28 x i8], align 4       ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [80 x i8], align 8               ; 10 uses
  %i.ao = alloca [48 x i8], align 16              ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 9 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 4 uses
  %i.av = alloca [48 x i8], align 8               ; 6 uses
  %i.aw = alloca [48 x i8], align 8               ; 11 uses
  %i.ax = alloca [48 x i8], align 8               ; 11 uses
  %i.ay = alloca [16 x i8], align 16              ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 11 uses
  %i.ba = alloca [16 x i8], align 16              ; 5 uses
  %i.bb = alloca [48 x i8], align 8               ; 11 uses
  %i.bc = alloca [16 x i8], align 16              ; 5 uses
  %i.bd = alloca [48 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 16              ; 4 uses
  %i.bf = alloca [48 x i8], align 8               ; 11 uses
  %i.bg = alloca [16 x i8], align 16              ; 5 uses
  %i.bh = alloca [48 x i8], align 8               ; 11 uses
  %i.bi = alloca [16 x i8], align 16              ; 5 uses
  %i.bj = alloca [48 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 16              ; 4 uses
  %i.bl = alloca [48 x i8], align 8               ; 11 uses
  %i.bm = alloca [16 x i8], align 16              ; 5 uses
  %i.bn = alloca [48 x i8], align 8               ; 11 uses
  %i.bo = alloca [16 x i8], align 16              ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 16              ; 4 uses
  %i.br = alloca [48 x i8], align 8               ; 11 uses
  %i.bs = alloca [16 x i8], align 16              ; 5 uses
  %i.bt = alloca [48 x i8], align 8               ; 11 uses
  %i.bu = alloca [16 x i8], align 16              ; 5 uses
  %i.bv = alloca [48 x i8], align 8               ; 6 uses
  %i.bw = alloca [16 x i8], align 16              ; 4 uses
  %i.bx = alloca [48 x i8], align 8               ; 11 uses
  %i.by = alloca [16 x i8], align 16              ; 5 uses
  %i.bz = alloca [48 x i8], align 8               ; 11 uses
  %i.ca = alloca [16 x i8], align 16              ; 5 uses
  %i.cb = alloca [48 x i8], align 8               ; 6 uses
  %i.cc = alloca [16 x i8], align 16              ; 4 uses
  %i.cd = alloca [48 x i8], align 8               ; 11 uses
  %i.ce = alloca [16 x i8], align 16              ; 5 uses
  %i.cf = alloca [48 x i8], align 8               ; 11 uses
  %i.cg = alloca [16 x i8], align 16              ; 5 uses
  %i.ch = alloca [48 x i8], align 8               ; 6 uses
  %i.ci = alloca [48 x i8], align 8               ; 6 uses
  %i.cj = alloca [48 x i8], align 8               ; 9 uses
  %i.ck = alloca [48 x i8], align 8               ; 11 uses
  %i.cl = alloca [16 x i8], align 8               ; 7 uses
  %i.cm = alloca [48 x i8], align 8               ; 5 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.64118 = alloca [16 x i8], align 16       ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.63822 = alloca [16 x i8], align 16       ; 4 uses
  %i.ct = alloca [48 x i8], align 8               ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 6 uses
  %i.cv = alloca [48 x i8], align 16              ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cy = alloca [48 x i8], align 16              ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.42418 = alloca [28 x i8], align 4        ; 4 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [48 x i8], align 8               ; 6 uses
  %i.dg = alloca [48 x i8], align 8               ; 10 uses
  %i.dh = alloca [48 x i8], align 8               ; 12 uses
  %i.di = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.42380 = alloca [28 x i8], align 4        ; 4 uses
  %i.dj = alloca [8 x i8], align 8                ; 4 uses
  %i.dk = alloca [48 x i8], align 8               ; 6 uses
  %i.dl = alloca [48 x i8], align 8               ; 10 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [48 x i8], align 16              ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 9 uses
  %i.dp = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.05148 = alloca i64, align 8              ; 4 uses
  %.sroa.02350 = alloca i64, align 8              ; 4 uses
  %i.dq = alloca [24 x i8], align 8               ; 8 uses
  %i.dr = alloca [48 x i8], align 8               ; 8 uses
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [24 x i8], align 8               ; 8 uses
  %i.dv = alloca [24 x i8], align 8               ; 10 uses
  %i.dw = alloca [24 x i8], align 8               ; 5 uses
  %i.dx = alloca [12 x i8], align 4               ; 6 uses
  %i.dy = alloca [48 x i8], align 8               ; 6 uses
  %i.dz = alloca [48 x i8], align 8               ; 10 uses
  %i.ea = alloca [12 x i8], align 4               ; 4 uses
  %i.eb = alloca [32 x i8], align 8               ; 5 uses
  %i.ec = alloca [24 x i8], align 8               ; 9 uses
  %i.ed = alloca [48 x i8], align 8               ; 9 uses
  %i.ee = alloca [8 x i8], align 8                ; 7 uses
  %i.ef = alloca [12 x i8], align 4               ; 6 uses
  %i.eg = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.42287 = alloca [28 x i8], align 4        ; 4 uses
  %i.eh = alloca [8 x i8], align 8                ; 4 uses
  %i.ei = alloca [48 x i8], align 8               ; 10 uses
  %i.ej = alloca [48 x i8], align 8               ; 11 uses
  %i.ek = alloca [48 x i8], align 8               ; 11 uses
  %i.el = alloca [48 x i8], align 8               ; 11 uses
  %i.em = alloca [24 x i8], align 8               ; 8 uses
  %i.en = alloca [48 x i8], align 8               ; 6 uses
  %i.eo = alloca [48 x i8], align 8               ; 6 uses
  %i.ep = alloca [16 x i8], align 16              ; 5 uses
  %i.eq = alloca [48 x i8], align 8               ; 6 uses
  %i.er = alloca [1 x i8], align 1                ; 5 uses
  %i.es = alloca [48 x i8], align 16              ; 9 uses
  %i.et = alloca [12 x i8], align 4               ; 6 uses
  %i.eu = alloca [48 x i8], align 8               ; 7 uses
  %i.ev = alloca [48 x i8], align 8               ; 7 uses
  %i.ew = alloca [48 x i8], align 8               ; 11 uses
  %i.ex = alloca [48 x i8], align 8               ; 11 uses
  %i.ey = alloca [48 x i8], align 8               ; 6 uses
  %i.ez = alloca [48 x i8], align 8               ; 11 uses
  %i.fa = alloca [24 x i8], align 8               ; 9 uses
  %i.fb = alloca [48 x i8], align 8               ; 11 uses
  %i.fc = alloca [48 x i8], align 8               ; 9 uses
  %i.fd = alloca [48 x i8], align 8               ; 11 uses
  %i.fe = alloca [48 x i8], align 8               ; 11 uses
  %i.ff = alloca [48 x i8], align 8               ; 11 uses
  %i.fg = alloca [48 x i8], align 8               ; 11 uses
  %i.fh = alloca [48 x i8], align 8               ; 6 uses
  %i.fi = alloca [48 x i8], align 8               ; 8 uses
  %i.fj = alloca [48 x i8], align 8               ; 11 uses
  %i.fk = alloca [48 x i8], align 8               ; 11 uses
  %i.fl = alloca [24 x i8], align 16              ; 5 uses
  %i.fm = alloca [48 x i8], align 8               ; 11 uses
  %i.fn = alloca [48 x i8], align 8               ; 10 uses
  %i.fo = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.41831 = alloca [28 x i8], align 4        ; 4 uses
  %i.fp = alloca [32 x i8], align 8               ; 4 uses
  %i.fq = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.61823 = alloca [48 x i8], align 8        ; 6 uses
  %i.fr = alloca [104 x i8], align 8              ; 7 uses
  %i.fs = alloca [24 x i8], align 8               ; 7 uses
  %i.ft = alloca [48 x i8], align 8               ; 9 uses
  %i.fu = alloca [8 x i8], align 8                ; 5 uses
  %i.fv = alloca [24 x i8], align 8               ; 9 uses
  %i.fw = alloca [16 x i8], align 16              ; 4 uses
  %i.fx = alloca [48 x i8], align 8               ; 11 uses
  %i.fy = alloca [48 x i8], align 16              ; 10 uses
  %i.fz = alloca [48 x i8], align 8               ; 9 uses
  %i.ga = alloca [48 x i8], align 8               ; 11 uses
  %i.gb = alloca [48 x i8], align 8               ; 11 uses
  %i.gc = alloca [16 x i8], align 8               ; 5 uses
  %i.gd = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.41683 = alloca [28 x i8], align 4        ; 4 uses
  %i.ge = alloca [8 x i8], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator21size_align_of_unsized:bb.a
  br label %bb.bm

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator19size_align_of_sized.exit: ; preds = %bb.an
  %i.fl = mul i64 %.sroa.417.0.copyload.i, %.sroa.0188.0.copyload
  br label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator19size_align_of_sized.exit349

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45
  unreachable

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(37) @81, i64 range(i64 17, 59) 37, i1 false)
  store i32 15, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aj
  %.sink446 = phi ptr [ %i.fj, %bb.av ], [ %.sroa.5185.0.copyload, %bb.aj ]
  %.sink445 = phi i64 [ 37, %bb.av ], [ %.sroa.6186.0.copyload, %bb.aj ]
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink446, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink445, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.bm

bb.ax:                                            ; preds = %bb.f
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4219.0.copyload = load i32, ptr %.sroa.4219.0..sroa_idx, align 4
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5220.0.copyload = load ptr, ptr %.sroa.5220.0..sroa_idx, align 8
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6221.0.copyload = load i64, ptr %.sroa.6221.0..sroa_idx, align 8
  %.sroa.7222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7222.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i32 %i.aw, ptr %0, align 8
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4219.0.copyload, ptr %.sroa.4224.0..sroa_idx, align 4
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5220.0.copyload, ptr %.sroa.5225.0..sroa_idx, align 8
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6221.0.copyload, ptr %.sroa.6226.0..sroa_idx, align 8
  br label %bb.bm

bb.ay:                                            ; preds = %bb.f
  %i.fm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !5, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.val311 = load ptr, ptr %i.fq, align 16        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.val312 = load i64, ptr %i.fr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8588)
  %i.fs = icmp eq i64 %i.fp, 8
  br i1 %i.fs, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.sroa.06.0.copyload.i = load i64, ptr %i.fn, align 1, !alias.scope !8588, !noalias !8589 ; 4 uses
  %i.ft = icmp ult i64 %.sroa.06.0.copyload.i, 1000
  br i1 %i.ft, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fu = add i64 %.sroa.06.0.copyload.i, -1000   ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %.val312
  br i1 %i.fv, label %bb.be, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit

bb.bb:                                            ; preds = %bb.ay
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !8590
  %i.fw = tail call noundef dereferenceable_or_null(37) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 37, i64 noundef range(i64 1, 17) 1) #48, !noalias !8590 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.bc, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45, !noalias !8591
  unreachable

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread: ; preds = %bb.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.fw, ptr noundef nonnull readonly align 1 dereferenceable(37) @81, i64 range(i64 17, 59) 37, i1 false), !noalias !8591
  br label %bb.bd

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8592
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !8593
  %.sroa.10365.0.copyload.cast = inttoptr i64 %.sroa.06.0.copyload.i to ptr
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !8593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8592
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread
  %.sroa.0364.1408 = phi i32 [ 15, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread ], [ 13, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit ]
  %.sroa.9.1407 = phi i32 [ undef, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread ], [ %.sroa.9.0.copyload, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit ]
  %.sroa.10365.1406 = phi ptr [ %i.fw, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread ], [ %.sroa.10365.0.copyload.cast, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit ]
  %.sroa.14.1405 = phi i64 [ 37, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit.thread ], [ %.sroa.14.0.copyload, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap11ty_of_bytes.exit ]
  store i32 %.sroa.0364.1408, ptr %0, align 8
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.1407, ptr %.sroa.4237.0..sroa_idx, align 4
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10365.1406, ptr %.sroa.5238.0..sroa_idx, align 8
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.1405, ptr %.sroa.6239.0..sroa_idx, align 8
  br label %bb.bm

bb.be:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val311) ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.val311, i64 %i.fu
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !8592, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8592
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.06.0.copyload.i, ptr %i.ga, align 8, !noalias !8592
  store i32 13, ptr %i.c, align 8, !noalias !8592
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c), !noalias !8592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8592
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val313 = load ptr, ptr %i.gb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8594
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_align_of(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.fz, ptr readonly %.val313), !noalias !8594
  %i.gc = load i32, ptr %i.b, align 8, !range !9, !noalias !8594, !noundef !5 ; 2 uses
  %.not.i324 = icmp eq i32 %i.gc, -1
  br i1 %.not.i324, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.426.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.426.0.copyload.i326 = load i32, ptr %.sroa.426.0..sroa_idx.i325, align 4, !noalias !8594
  %.sroa.527.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.527.0.copyload.i328 = load i64, ptr %.sroa.527.0..sroa_idx.i327, align 8, !noalias !8594
  %.sroa.628.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.628.0.copyload.i330 = load i64, ptr %.sroa.628.0..sroa_idx.i329, align 8, !noalias !8594
  %.sroa.729.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.729.0.copyload.i332 = load i64, ptr %.sroa.729.0..sroa_idx.i331, align 8, !noalias !8594
  %.sroa.830.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.830.0..sroa_idx.i333, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8594
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.016.0.copyload.i339 = load i64, ptr %i.gd, align 8, !noalias !8594
  %.sroa.417.0..sroa_idx.i340 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.417.0.copyload.i341 = load i64, ptr %.sroa.417.0..sroa_idx.i340, align 8, !noalias !8594
  %.sroa.518.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.518.0.copyload.i343 = load i64, ptr %.sroa.518.0..sroa_idx.i342, align 8, !noalias !8594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8594
  %i.ge = trunc nuw i64 %.sroa.016.0.copyload.i339 to i1
  br i1 %i.ge, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator19size_align_of_sized.exit349, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8594
  %i.gf = getelementptr inbounds i8, ptr %i.fz, i64 -8 ; 4 uses
  store ptr %i.gf, ptr %i.a, align 8, !noalias !8594
  %i.gg = atomicrmw add ptr %i.gf, i64 1 monotonic, align 8, !noalias !8594
  %i.gh = icmp slt i64 %i.gg, 0
  br i1 %i.gh, label %bb.bi, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344, !prof !7

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
          to label %bb.bk unwind label %bb.bj, !noalias !8594

bb.bj:                                            ; preds = %bb.bi
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = atomicrmw sub ptr %i.gf, i64 1 release, align 8, !noalias !8595
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %common.resume.sink.split, label %common.resume

bb.bk:                                            ; preds = %bb.bi
  unreachable

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8594
  %i.gl = ptrtoint ptr %i.gf to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344
  %.sroa.22.0.ph = phi i64 [ 17, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344 ], [ %.sroa.729.0.copyload.i332, %bb.bf ]
  %.sroa.17.0.ph = phi i64 [ ptrtoint (ptr @356 to i64), %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344 ], [ %.sroa.628.0.copyload.i330, %bb.bf ]
  %.sroa.12.0.ph = phi i64 [ %i.gl, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344 ], [ %.sroa.527.0.copyload.i328, %bb.bf ]
  %.sroa.10361.0.ph = phi i32 [ undef, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344 ], [ %.sroa.426.0.copyload.i326, %bb.bf ]
  %.sroa.0359.0.ph = phi i32 [ 7, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i344 ], [ %i.gc, %bb.bf ]
  store i32 %.sroa.0359.0.ph, ptr %0, align 8
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.10361.0.ph, ptr %.sroa.4251.0..sroa_idx, align 4
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.0.ph, ptr %.sroa.5252.0..sroa_idx, align 8
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.17.0.ph, ptr %.sroa.6253.0..sroa_idx, align 8
  %.sroa.7254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.22.0.ph, ptr %.sroa.7254.0..sroa_idx, align 8
  %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ax, %bb.bd, %bb.bl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit322, %bb.ai, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit, %bb.aw, %bb.at, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator19size_align_of_sized.exit349
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator32detect_and_exec_special_function(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %8, i32 noundef range(i32 0, 5) %9, i32 %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.20 = alloca [16 x i8], align 8           ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %i.m = alloca [48 x i8], align 8                ; 12 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [48 x i8], align 8                ; 12 uses
  %i.t = alloca [48 x i8], align 8                ; 13 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 12 uses
  %i.w = alloca [48 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 16              ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 11 uses
  %i.ad = alloca [48 x i8], align 8               ; 11 uses
  %i.ae = alloca [48 x i8], align 8               ; 11 uses
  %i.af = alloca [48 x i8], align 8               ; 11 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [48 x i8], align 8               ; 11 uses
  %i.ai = alloca [48 x i8], align 8               ; 11 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 9 uses
  %i.al = alloca [48 x i8], align 8               ; 11 uses
  %i.am = alloca [48 x i8], align 8               ; 11 uses
  %i.an = alloca [48 x i8], align 8               ; 11 uses
  %i.ao = alloca [16 x i8], align 4               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.6875.i = alloca [16 x i8], align 16      ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4585.i = alloca [28 x i8], align 4       ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 5 uses
  %i.ax = alloca [48 x i8], align 8               ; 6 uses
  %i.ay = alloca [48 x i8], align 8               ; 6 uses
  %i.az = alloca [48 x i8], align 8               ; 10 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [48 x i8], align 8               ; 11 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [48 x i8], align 8               ; 11 uses
  %i.be = alloca [48 x i8], align 8               ; 11 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  %i.bg = alloca [24 x i8], align 8               ; 13 uses
  %i.bh = alloca [48 x i8], align 8               ; 11 uses
  %i.bi = alloca [48 x i8], align 8               ; 6 uses
  %i.bj = alloca [48 x i8], align 8               ; 11 uses
  %i.bk = alloca [48 x i8], align 8               ; 11 uses
  %i.bl = alloca [48 x i8], align 8               ; 11 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [48 x i8], align 8               ; 6 uses
  %i.bo = alloca [8 x i8], align 8                ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 6 uses
  %i.bq = alloca [48 x i8], align 8               ; 6 uses
  %i.br = alloca [48 x i8], align 8               ; 11 uses
  %i.bs = alloca [16 x i8], align 16              ; 6 uses
  %i.bt = alloca [48 x i8], align 8               ; 11 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 16              ; 5 uses
  %i.bw = alloca [48 x i8], align 8               ; 6 uses
  %i.bx = alloca [48 x i8], align 16              ; 9 uses
  %i.by = alloca [48 x i8], align 8               ; 11 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [48 x i8], align 8               ; 6 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [48 x i8], align 8               ; 6 uses
  %i.ce = alloca [48 x i8], align 8               ; 9 uses
  %i.cf = alloca [48 x i8], align 8               ; 11 uses
  %i.cg = alloca [48 x i8], align 8               ; 11 uses
  %i.ch = alloca [48 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4226.i = alloca [28 x i8], align 4       ; 4 uses
  %i.cj = alloca [48 x i8], align 8               ; 6 uses
  %i.ck = alloca [48 x i8], align 8               ; 6 uses
  %i.cl = alloca [48 x i8], align 8               ; 11 uses
  %i.cm = alloca [48 x i8], align 8               ; 11 uses
  %i.cn = alloca [48 x i8], align 8               ; 10 uses
  %i.co = alloca [24 x i8], align 16              ; 7 uses
  %i.cp = alloca [48 x i8], align 8               ; 11 uses
  %i.cq = alloca [16 x i8], align 16              ; 5 uses
  %i.cr = alloca [16 x i8], align 16              ; 4 uses
  %i.cs = alloca [48 x i8], align 8               ; 11 uses
  %i.ct = alloca [48 x i8], align 8               ; 11 uses
  %i.cu = alloca [48 x i8], align 8               ; 11 uses
  %i.cv = alloca [48 x i8], align 8               ; 11 uses
  %i.cw = alloca [48 x i8], align 8               ; 11 uses
  %i.cx = alloca [48 x i8], align 8               ; 11 uses
  %i.cy = alloca [48 x i8], align 8               ; 11 uses
  %i.cz = alloca [16 x i8], align 8               ; 7 uses
  %i.da = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.80 = alloca [16 x i8], align 8           ; 14 uses
  %i.db = alloca [48 x i8], align 8               ; 6 uses
  %i.dc = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.414 = alloca [28 x i8], align 4          ; 4 uses
  %i.dd = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.411 = alloca [28 x i8], align 4          ; 4 uses
  %i.de = alloca [48 x i8], align 8               ; 6 uses
  %i.df = alloca [24 x i8], align 8               ; 9 uses
  %i.dg = alloca [48 x i8], align 8               ; 187 uses
  %i.dh = alloca [16 x i8], align 4               ; 6 uses
  %i.di = alloca [8 x i8], align 4                ; 5 uses
  store i32 %2, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %3, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 12 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 9223372036854775807
  br i1 %i.dm, label %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #43
  unreachable

_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a
  %i.dn = add nuw nsw i64 %i.dl, 1
  store i64 %i.dn, ptr %i.dk, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 2 uses
  %i.dp = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10FunctionIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.di)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowCs8K4cjrcxBsw_6hir_ty.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load i64, ptr %i.dk, align 8, !noundef !5
  %i.ds = add i64 %i.dr, -1
  store i64 %i.ds, ptr %i.dk, align 8
  br label %common.resume

bb.d:                                             ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowCs8K4cjrcxBsw_6hir_ty.exit
  %i.dt = load i64, ptr %i.dk, align 8, !noundef !5
  %i.du = add i64 %i.dt, -1
  store i64 %i.du, ptr %i.dk, align 8
  br i1 %i.dp, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 8 uses
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !5, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 8 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.dz = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dy, i32 noundef %2, i32 noundef %3) ; 3 uses
  %i.ea = load ptr, ptr %i.dv, align 16, !nonnull !5, !noundef !5
  %i.eb = load ptr, ptr %i.dx, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %2, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %3, ptr %i.ed, align 4
  store i32 2, ptr %i.dh, align 4
  %i.ee = call noundef i64 @_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags5query(ptr noundef nonnull %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.eb, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.dh) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %i.ef = load ptr, ptr %i.dv, align 16, !nonnull !5, !noundef !5
  %i.eg = load ptr, ptr %i.dx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.eh = call noundef zeroext i1 @_RNvMs1_NtCsileJQcQObtj_7hir_def10signaturesNtB5_17FunctionSignature12is_intrinsic(ptr noundef nonnull %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.eg, i32 noundef %2, i32 noundef %3)
  br i1 %i.eh, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.ei, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.ob

bb.g:                                             ; preds = %bb.e
  %i.ej = load ptr, ptr %i.dv, align 16, !nonnull !5, !noundef !5
  %i.ek = load ptr, ptr %i.dx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.el = call noundef nonnull align 4 ptr @_RNvXs1n_CsileJQcQObtj_7hir_defNtB6_10FunctionIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noundef nonnull %i.ej, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ek) ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i32, ptr %i.em, align 4, !range !59, !noundef !5
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 1
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr i8, ptr %i.eq, i64 %i.et  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
end_hunk_3
begin_hunk_4_@_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11eval_rvalue:bb.a
  %i.ajh = atomicrmw sub ptr %i.aio, i64 1 release, align 8, !noalias !9702
  %i.aji = icmp eq i64 %i.ajh, 1
  br i1 %i.aji, label %bb.pi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2856

bb.pi:                                            ; preds = %bb.ph
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ce) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2856 unwind label %.thread3185

bb.pj:                                            ; preds = %_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_8Interval3get.exit2854
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !nonnull !5, !noundef !5
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ajm = load i64, ptr %i.ajl, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aio, i64 336
  %i.ajo = load i64, ptr %i.ajn, align 16, !noundef !5
  invoke fastcc void @_RINvXs1_NtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bz, i64 noundef %i.ajo)
          to label %bb.pk unwind label %bb.pd

bb.pk:                                            ; preds = %bb.pj
  %i.ajp = add i64 %i.ajm, %i.ait                 ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ajr = load i64, ptr %i.ajq, align 8, !noundef !5 ; 3 uses
  %i.ajs = icmp ult i64 %i.ajp, %i.ait
  %.not2615 = icmp ugt i64 %i.ajp, %i.ajr
  %or.cond2724 = or i1 %i.ajs, %.not2615
  br i1 %or.cond2724, label %bb.pl, label %bb.pm, !prof !25

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ait, i64 noundef %i.ajp, i64 noundef %i.ajr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #45
          to label %bb.aw unwind label %bb.pn

bb.pm:                                            ; preds = %bb.pk
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 %i.ait
  invoke void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull %i.ajv, i64 noundef %i.ajm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajk, i64 noundef %i.ajm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448)
          to label %bb.po unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #42
          to label %bb.pb unwind label %bb.av

bb.po:                                            ; preds = %bb.pm
  %.sroa.01161.0.copyload = load i64, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.ajx = atomicrmw sub ptr %i.aio, i64 1 release, align 8, !noalias !9703
  %i.ajy = icmp eq i64 %i.ajx, 1
  br i1 %i.ajy, label %bb.pp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2858

bb.pp:                                            ; preds = %bb.po
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ce) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2858 unwind label %.thread3185

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2858: ; preds = %bb.po, %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.nr

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2856: ; preds = %bb.ph, %bb.pi, %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.nx

bb.pq:                                            ; preds = %bb.nl
  %i.ajz = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %.val2778 = load ptr, ptr %i.ajz, align 8, !nonnull !5, !noundef !5
  %i.aka = getelementptr inbounds nuw i8, ptr %.val2778, i64 8
  invoke fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator6layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.bu, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.aka)
          to label %bb.pr unwind label %.thread3185

bb.pr:                                            ; preds = %bb.pq
  %i.akb = load i32, ptr %i.bu, align 8, !range !9, !noundef !5 ; 2 uses
  %.not2610 = icmp eq i32 %i.akb, -1
  br i1 %.not2610, label %bb.pv, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %.sroa.42179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.42179.0.copyload = load i32, ptr %.sroa.42179.0..sroa_idx, align 4
  %.sroa.52180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.52180.0.copyload = load ptr, ptr %.sroa.52180.0..sroa_idx, align 8
  %.sroa.62181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.62185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.62185.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.62181.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  store i32 %i.akb, ptr %0, align 8
  %.sroa.42183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.42179.0.copyload, ptr %.sroa.42183.0..sroa_idx, align 4
  %.sroa.52184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.52180.0.copyload, ptr %.sroa.52184.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2862

bb.pt:                                            ; preds = %bb.pv
  %i.akc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akd = atomicrmw sub ptr %i.akg, i64 1 release, align 8, !noalias !9704
  %i.ake = icmp eq i64 %i.akd, 1
  br i1 %i.ake, label %bb.pu, label %.thread3177

bb.pu:                                            ; preds = %bb.pt
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bv) #46
          to label %.thread3177 unwind label %bb.av

bb.pv:                                            ; preds = %bb.pr
  %i.akf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.akg = load ptr, ptr %i.akf, align 8, !nonnull !5, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  store ptr %i.akg, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 336
  %i.aki = load i64, ptr %i.akh, align 16, !noundef !5
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i128 0, ptr %i.bs, align 16
  %i.akk = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.akn = load i64, ptr %i.akm, align 8, !noundef !5
  %i.ako = getelementptr inbounds nuw [24 x i8], ptr %i.akl, i64 %i.akn
  invoke fastcc void @_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator21construct_with_layoutINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtB6_8IntervalENCNvB2_11eval_rvalues8_0EEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.bt, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i64 noundef %i.aki, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %i.akj, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %i.bs, ptr noundef nonnull %i.akl, ptr noundef %i.ako)
          to label %bb.pw unwind label %bb.pt

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.akp = load i32, ptr %i.bt, align 8, !range !9, !noundef !5 ; 2 uses
  %.not2611 = icmp eq i32 %i.akp, -1
  br i1 %.not2611, label %bb.pz, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %.sroa.42196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.sroa.42196.0.copyload = load i32, ptr %.sroa.42196.0..sroa_idx, align 4
  %.sroa.52197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.52197.0.copyload = load i64, ptr %.sroa.52197.0..sroa_idx, align 8
  %.sroa.62198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.62198.0.copyload = load ptr, ptr %.sroa.62198.0..sroa_idx, align 8
  %.sroa.72199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.72199.0.copyload = load i64, ptr %.sroa.72199.0..sroa_idx, align 8
  %.sroa.82200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.82206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.82206.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.82200.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  store i32 %i.akp, ptr %0, align 8
  %.sroa.42202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.42196.0.copyload, ptr %.sroa.42202.0..sroa_idx, align 4
  %.sroa.52203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.52197.0.copyload, ptr %.sroa.52203.0..sroa_idx, align 8
  %.sroa.62204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.62198.0.copyload, ptr %.sroa.62204.0..sroa_idx, align 8
  %.sroa.72205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.72199.0.copyload, ptr %.sroa.72205.0..sroa_idx, align 8
  %i.akq = atomicrmw sub ptr %i.akg, i64 1 release, align 8, !noalias !9705
  %i.akr = icmp eq i64 %i.akq, 1
  br i1 %i.akr, label %bb.py, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2862

bb.py:                                            ; preds = %bb.px
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bv) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2862 unwind label %.thread3185

bb.pz:                                            ; preds = %bb.pw
  %i.aks = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.02186.0.copyload = load i64, ptr %i.aks, align 8
  %.sroa.42187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.42187.0.copyload = load ptr, ptr %.sroa.42187.0..sroa_idx, align 8
  %.sroa.52188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.52188.0.copyload = load i64, ptr %.sroa.52188.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.akt = atomicrmw sub ptr %i.akg, i64 1 release, align 8, !noalias !9706
  %i.aku = icmp eq i64 %i.akt, 1
  br i1 %i.aku, label %bb.qa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2864

bb.qa:                                            ; preds = %bb.pz
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bv) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2864 unwind label %.thread3185

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2864: ; preds = %bb.pz, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.nr

bb.qb:                                            ; preds = %bb.nc, %bb.ne, %bb.kx, %bb.kz, %bb.ls, %bb.lu, %bb.du, %bb.dw, %bb.cx, %bb.cz, %bb.v, %bb.x, %bb.mg, %bb.mk, %bb.mo, %bb.ms, %bb.lm, %bb.na, %bb.ng, %bb.lb, %bb.ej, %bb.ex, %bb.dr, %.split2547, %.split2535, %.split2539, %.split2543, %bb.cu, %.split2531, %bb.df, %.split2527, %bb.cf, %bb.ct, %bb.bz, %bb.cd, %bb.cb, %bb.bv, %bb.bx, %.split2523, %.split2559, %.split2519, %bb.bm, %bb.ay, %bb.bc, %bb.z, %bb.au, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit2818, %bb.q, %bb.kw, %bb.nw, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit, %bb.s
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit2862: ; preds = %bb.px, %bb.py, %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.nx

.thread3177:                                      ; preds = %bb.pt, %bb.pu, %bb.pb, %bb.pc, %bb.op, %bb.oq, %bb.od, %bb.oe, %.thread3185
  %.pn26243180 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread3185 ], [ %.pn, %bb.pb ], [ %i.ahy, %bb.op ], [ %i.ags, %bb.od ], [ %i.ags, %bb.oe ], [ %i.ahy, %bb.oq ], [ %.pn, %bb.pc ], [ %i.akc, %bb.pu ], [ %i.akc, %bb.pt ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cn) #42
          to label %common.resume unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11exec_fn_def(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 288230376151711744) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, i32 noundef range(i32 0, 2) %8, i32 %9, i32 noundef range(i32 0, 5) %10, i32 %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 14 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 14 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.19215.sroa.7 = alloca [16 x i8], align 8 ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [12 x i8], align 4               ; 6 uses
  %i.af = alloca [80 x i8], align 16              ; 16 uses
  %i.ag = alloca [8 x i8], align 8                ; 7 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.19.sroa.7 = alloca [16 x i8], align 8    ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 13 uses
  %i.aj = alloca [12 x i8], align 4               ; 6 uses
  %i.ak = alloca [80 x i8], align 16              ; 16 uses
  %i.al = alloca [8 x i8], align 8                ; 7 uses
  %i.am = load i32, ptr %2, align 4, !range !56, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !60, !noundef !5 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !5 ; 7 uses
  switch i32 %i.am, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.as = load i32, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1068
  %i.au = load i32, ptr %i.at, align 4, !noundef !5
  %i.av = icmp eq i32 %i.aq, %i.au
  %i.aw = icmp eq i32 %i.ao, %i.as
  %or.cond.i = and i1 %i.aw, %i.av
  br i1 %or.cond.i, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.ay = load i32, ptr %i.ax, align 16, !noundef !5 ; 2 uses
  %.not1.i = icmp eq i32 %i.ay, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.ba = load i32, ptr %i.az, align 4, !noundef !5
  %i.bb = icmp eq i32 %i.aq, %i.ba
  %i.bc = icmp eq i32 %i.ao, %i.ay
  %or.cond3.i = and i1 %i.bc, %i.bb
  br i1 %or.cond3.i, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.be = load i32, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %.not2.i = icmp eq i32 %i.be, 0
  br i1 %.not2.i, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread255, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1084
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !5
  %i.bh = icmp ne i32 %i.aq, %i.bg
  %i.bi = icmp ne i32 %i.ao, %i.be
  %or.cond4.not.i = or i1 %i.bi, %i.bh
  br i1 %or.cond4.not.i, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread255, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.ao, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.aq, ptr %i.bk, align 4
  store i32 1, ptr %i.aj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val109 = load ptr, ptr %i.bl, align 8
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator17layout_of_variant(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.ak, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.aj, ptr noundef nonnull %3, ptr %.val109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.bm = load i64, ptr %i.ak, align 16, !range !4, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ao, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.aq, ptr %i.bp, align 4
  store i32 0, ptr %i.ae, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val108 = load ptr, ptr %i.bq, align 8
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator17layout_of_variant(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ae, ptr noundef nonnull %3, ptr %.val108)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.br = load i64, ptr %i.af, align 16, !range !4, !noundef !5
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.bj, label %bb.bk

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread255: ; preds = %bb.f, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit
  tail call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator17exec_fn_with_args(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %i.ao, i32 noundef %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %4, i32 noundef %8, i32 %9, i32 noundef %10, i32 %11)
  br label %bb.i

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread: ; preds = %bb.c, %bb.e, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit
  tail call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13exec_fn_trait(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %i.ao, i32 noundef %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %4, i32 noundef %8, i32 %9, i32 noundef %10, i32 %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.bj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit201, %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit126, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit200, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit125, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15detect_fn_trait.exit.thread255
  ret void

bb.j:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.054.0.copyload = load i64, ptr %i.bt, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.455.0.copyload = load ptr, ptr %.sroa.455.0..sroa_idx, align 16
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.657.sroa.0.0.copyload = load i128, ptr %.sroa.657.0..sroa_idx, align 16
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.657.sroa.4.0.copyload = load i64, ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.054.0.copyload, ptr %i.bu, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.455.0.copyload, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.556.0.copyload, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.657.sroa.0.0.copyload, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.657.sroa.4.0.copyload, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.047.0.copyload = load ptr, ptr %i.bv, align 16, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.448.0.copyload = load i64, ptr %.sroa.448.0..sroa_idx, align 8 ; 4 uses
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.549.sroa.0.0.copyload = load i128, ptr %.sroa.549.0..sroa_idx, align 16
  %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.549.sroa.4.0.copyload = load i64, ptr %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx, align 16 ; 4 uses
  %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.sroa.549.sroa.5.0.copyload = load i64, ptr %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.sroa.549.sroa.6.0.copyload = load i128, ptr %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %.sroa.047.0.copyload, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.sroa.7)
  %.idx282 = shl nuw nsw i64 %6, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 %.idx282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.448.0.copyload, ptr %i.ab, align 8, !noalias !9777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9779
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %.sroa.448.0.copyload, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.k
  %i.bx = load i64, ptr %i.p, align 8, !range !4, !noalias !9779, !noundef !5
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !6, !noalias !9779, !noundef !5 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12exec_closure:bb.a
  unreachable

bb.hi:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE3newBK_.exit.i177
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vg, i64 152
  %.sroa.6.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.vl, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i178, ptr noundef nonnull align 8 dereferenceable(12) %i.vp, i64 12, i1 false), !noalias !10175
  store i32 1, ptr %i.vl, align 4, !noalias !10175
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  store i32 %2, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 4, !noalias !10175
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store i32 %3, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 4, !noalias !10175
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 12
  store i32 %9, ptr %.sroa.42.0..sroa_idx.i, align 4, !noalias !10175
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  store i32 %10, ptr %.sroa.53.0..sroa_idx.i, align 4, !noalias !10175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.vq, align 8
  %.sroa.4153.sroa.4.0..sroa.4153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.vh, ptr %.sroa.4153.sroa.4.0..sroa.4153.0..sroa_idx.sroa_idx, align 8
  %.sroa.4153.sroa.5.0..sroa.4153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4153.sroa.5.0..sroa.4153.0..sroa_idx.sroa_idx, align 8
  %.sroa.4153.sroa.6.0..sroa.4153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.vl, ptr %.sroa.4153.sroa.6.0..sroa.4153.0..sroa_idx.sroa_idx, align 8
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.5154.0..sroa_idx, align 8
  br label %bb.hm

bb.hj:                                            ; preds = %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtB21_3VechEENcNtNtB6_15IntervalOrOwned5Owned0EEBa_.exit
  store ptr %.sroa.13.3, ptr %i.bu, align 8
  %.sroa.665.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.sroa.16.sroa.0.3, ptr %.sroa.665.sroa.7.4..sroa_idx, align 8
  %.sroa.665.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %.sroa.16.sroa.9.3, ptr %.sroa.665.sroa.8.4..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator18copy_from_interval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.bt, ptr noalias nofree noundef nonnull readonly align 16 dereferenceable(1120) %1, i64 noundef %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bu)
  %i.vr = load i32, ptr %i.bt, align 8, !range !9, !noundef !5
  %.not169 = icmp eq i32 %i.vr, -1
  br i1 %.not169, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.v, %bb.hk, %bb.hi, %bb.n, %bb.hl, %bb.e
  %.sink = phi i64 [ -2, %bb.v ], [ -2, %bb.hk ], [ -2, %bb.hi ], [ -2, %bb.n ], [ -1, %bb.hl ], [ -2, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.hn:                                            ; preds = %bb.c
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.vu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vv = load i64, ptr %i.vu, align 8, !noundef !5
  store ptr %5, ptr %i.av, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.vv, ptr %i.vw, align 8
  %i.vx = atomicrmw sub ptr %5, i64 1 release, align 8, !noalias !10178
  %i.vy = icmp eq i64 %i.vx, 1
  br i1 %i.vy, label %bb.ho, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit

bb.ho:                                            ; preds = %bb.hn
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE9drop_slowB1A_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.av) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit: ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(1120) %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = icmp eq i64 %5, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %5, ptr %i.e, align 8, !noalias !10187
  switch i64 %2, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.d
    i64 2, label %.split.i
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.split.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10187
  store i64 %3, ptr %i.d, align 8, !noalias !10187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10187
  store ptr %i.d, ptr %i.b, align 8, !noalias !10187
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !10187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.g, align 8, !noalias !10187
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !10187
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @499, ptr noundef nonnull %i.b), !noalias !10188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10187
  %.sroa.4.i.sroa.3.4.copyload = load i64, ptr %i.c, align 8, !noalias !10187
  %.sroa.4.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.i.sroa.5.4.copyload = load i64, ptr %.sroa.4.i.sroa.5.4..sroa_idx, align 8, !noalias !10187
  %.sroa.4.i.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.i.sroa.6.4.copyload = load i64, ptr %.sroa.4.i.sroa.6.4..sroa_idx, align 8, !noalias !10187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10187
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i64 [ 664, %bb.d ], [ 640, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10186, !noalias !10189, !nonnull !5, !noundef !5
  %i.k = add i64 %5, %3                           ; 2 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10186, !noalias !10189, !noundef !5
  %.not.i = icmp ugt i64 %i.k, %i.n
  br i1 %.not.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10190
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10190
  %i.o = load i64, ptr %i.a, align 8, !range !4, !noalias !10190, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !6, !noalias !10190, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.h, label %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.s, align 8, !noalias !10190
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #45, !noalias !10190
  unreachable

_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i: ; preds = %bb.g
  %i.u = load ptr, ptr %i.s, align 8, !noalias !10190, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 24
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.u, ptr noundef nonnull align 1 dereferenceable(25) @137, i64 25, i1 false), !noalias !10190
  %i.w = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i, %.split.i
  %.sroa.18.0.ph = phi i64 [ %.sroa.4.i.sroa.6.4.copyload, %.split.i ], [ 25, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i ]
  %.sroa.14.0.ph = phi i64 [ %.sroa.4.i.sroa.5.4.copyload, %.split.i ], [ %i.w, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i ]
  %.sroa.1028.0.ph = phi i64 [ %.sroa.4.i.sroa.3.4.copyload, %.split.i ], [ %i.r, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22write_memory_using_ref0Bb_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.x = inttoptr i64 %.sroa.1028.0.ph to ptr
  store i32 3, ptr %0, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.ph, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18.0.ph, ptr %.sroa.726.0..sroa_idx, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull %i.y, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457)
  store i32 -1, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13exec_fn_trait(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %8, i32 noundef range(i32 0, 2) %9, i32 %10, i32 noundef range(i32 0, 5) %11, i32 %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [12 x i8], align 8                ; 5 uses
  %.sroa.15.sroa.4 = alloca [16 x i8], align 8    ; 2 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.20 = alloca [16 x i8], align 8           ; 2 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [8 x i8], align 8                 ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [48 x i8], align 8                ; 9 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !10253
  %i.y = tail call noundef dereferenceable_or_null(20) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 20, i64 noundef range(i64 1, 17) 1) #48, !noalias !10253 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator13exec_fn_trait0Bb_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 20) #45, !noalias !10254
  unreachable

_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator13exec_fn_trait0Bb_.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(20) @135, i64 range(i64 17, 59) 20, i1 false), !noalias !10254
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 15, ptr %i.aa, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 20, ptr %.sroa.6175.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0337.0.copyload463 = load i32, ptr %i.ac, align 8 ; 3 uses
  %.sroa.6338.0..sroa.060.0.sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.6338.0.copyload465 = load ptr, ptr %.sroa.6338.0..sroa.060.0.sroa_idx464, align 8 ; 2 uses
  %i.ad = icmp ne i32 %.sroa.0337.0.copyload463, 27
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i32 %.sroa.0337.0.copyload463, 14
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val = load ptr, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.ai, %bb.y, %bb.al, %bb.w, %bb.am, %bb.an, %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit310, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit311, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator13exec_fn_trait0Bb_.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.ah
  %.sroa.6338.0.copyload469 = phi ptr [ %.sroa.6338.0.copyload465, %.lr.ph ], [ %.sroa.6338.0.copyload, %bb.ah ] ; 3 uses
  %.sroa.0.0468 = phi i64 [ %.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.9.0.ph, %bb.ah ] ; 2 uses
  %.sroa.11.0467 = phi i64 [ %.sroa.11.0.copyload, %.lr.ph ], [ %.sroa.13.0.ph, %bb.ah ] ; 2 uses
  %.sroa.14.0466 = phi i64 [ %.sroa.14.0.copyload, %.lr.ph ], [ %.sroa.417.0.copyload.i, %bb.ah ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6338.0.copyload469) ]
  %.sroa.0340.0.copyload = load i32, ptr %.sroa.6338.0.copyload469, align 8 ; 2 uses
  %i.ap = icmp ne i32 %.sroa.0340.0.copyload, 27
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i32 %.sroa.0340.0.copyload, 18
  br i1 %i.aq, label %bb.g, label %bb.h

._crit_edge:                                      ; preds = %bb.ah, %bb.d
  %.sroa.0360.0.copyload = phi i32 [ %.sroa.0337.0.copyload463, %bb.d ], [ %.sroa.0337.0.copyload, %bb.ah ] ; 2 uses
  %.sroa.14.0.lcssa = phi i64 [ %.sroa.14.0.copyload, %bb.d ], [ %.sroa.417.0.copyload.i, %bb.ah ] ; 2 uses
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.11.0.copyload, %bb.d ], [ %.sroa.13.0.ph, %bb.ah ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.9.0.ph, %bb.ah ] ; 2 uses
  %.sroa.060.0.lcssa = phi ptr [ %i.ac, %bb.d ], [ %.sroa.060.1, %bb.ah ] ; 2 uses
  %.sroa.6338.0.copyload.lcssa = phi ptr [ %.sroa.6338.0.copyload465, %bb.d ], [ %.sroa.6338.0.copyload, %bb.ah ] ; 3 uses
  %.sroa.5362.0..sroa.060.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.060.0.lcssa, i64 8
  %.sroa.5362.0.copyload = load ptr, ptr %.sroa.5362.0..sroa.060.0.sroa_idx, align 8 ; 3 uses
  %i.ar = add nsw i32 %.sroa.0360.0.copyload, -2
  %i.as = icmp samesign ugt i32 %.sroa.0360.0.copyload, 1
  %narrow = select i1 %i.as, i32 %i.ar, i32 25
  switch i32 %narrow, label %bb.ap [
    i32 13, label %bb.am
    i32 14, label %bb.an
    i32 17, label %bb.ao
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.x, ptr noundef nonnull readonly align 16 %1, i64 noundef %.sroa.0.0468, i64 noundef %.sroa.11.0467, i64 noundef %.sroa.14.0466), !noalias !10255
  %i.at = load i32, ptr %i.x, align 8, !range !9, !noundef !5 ; 2 uses
  %.not296 = icmp eq i32 %i.at, -1
  br i1 %.not296, label %bb.q, label %bb.p

bb.h:                                             ; preds = %bb.f, %bb.x
  %.sroa.14.1 = phi i64 [ 8, %bb.x ], [ %.sroa.14.0466, %bb.f ]
  %.sroa.060.1 = phi ptr [ %i.bt, %bb.x ], [ %.sroa.6338.0.copyload469, %bb.f ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10256
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_align_of(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull align 16 %1, ptr noundef nonnull %.sroa.060.1, ptr readonly %.val), !noalias !10256
  %i.au = load i32, ptr %i.k, align 8, !range !9, !noalias !10256, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.au, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.426.0.copyload.i = load i32, ptr %.sroa.426.0..sroa_idx.i, align 4, !noalias !10256
  %.sroa.527.0.copyload.i = load i64, ptr %i.am, align 8, !noalias !10256
  %.sroa.628.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !10256
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.729.0.copyload.i = load i64, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !10256
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.830.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10256
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %.sroa.016.0.copyload.i = load i64, ptr %i.am, align 8, !noalias !10256
  %.sroa.417.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !10256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10256
  %i.av = trunc nuw i64 %.sroa.016.0.copyload.i to i1
  br i1 %i.av, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_of_sized.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10256
  %i.aw = getelementptr inbounds i8, ptr %.sroa.060.1, i64 -8 ; 4 uses
  store ptr %i.aw, ptr %i.j, align 8, !noalias !10256
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !10256
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
          to label %bb.o unwind label %bb.m, !noalias !10256

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !10257
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.n, label %common.resume

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #46, !noalias !10256
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  unreachable

common.resume:                                    ; preds = %bb.ar, %.body, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.m ], [ %i.az, %bb.n ], [ %.pn, %.body ], [ %.pn, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10256
  %i.bc = ptrtoint ptr %i.aw to i64
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.4182.0.copyload = load i32, ptr %.sroa.4182.0..sroa_idx, align 4
  %.sroa.5183.0.copyload = load ptr, ptr %i.af, align 8
  %.sroa.6184.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.7185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7190.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7185.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.at, ptr %i.bd, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4182.0.copyload, ptr %.sroa.4187.0..sroa_idx, align 4
  br label %bb.al
end_hunk_5
begin_hunk_6_@_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator14place_interval:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.20 = alloca [16 x i8], align 8           ; 2 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator30place_addr_and_ty_and_metadata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 16 %1, ptr %.0.val, i32 %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.e = load i64, ptr %i.c, align 8, !range !39, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.h = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10344
  invoke fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_align_of(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.j, ptr readonly %.val)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.l = load i32, ptr %i.b, align 8, !range !9, !noalias !10344, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.426.0.copyload.i = load i32, ptr %.sroa.426.0..sroa_idx.i, align 4, !noalias !10344
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !10344
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.628.0.copyload.i = load i64, ptr %.sroa.628.0..sroa_idx.i, align 8, !noalias !10344
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.729.0.copyload.i = load i64, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !10344
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.830.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10344
  br label %bb.l

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.016.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !10344
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.417.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !10344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10344
  %i.n = trunc nuw i64 %.sroa.016.0.copyload.i to i1
  br i1 %i.n, label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_of_sized.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10344
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 4 uses
  store ptr %i.o, ptr %i.a, align 8, !noalias !10344
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !10344
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i, !prof !7

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
          to label %bb.j unwind label %bb.h, !noalias !10344

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !10345
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #46, !noalias !10344
  br label %.body

bb.j:                                             ; preds = %bb.g
  unreachable

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10344
  %i.u = ptrtoint ptr %i.o to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #42
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.d, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i
  %.sroa.18.0.ph = phi i64 [ 39, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i ], [ %.sroa.729.0.copyload.i, %bb.d ]
  %.sroa.15.0.ph = phi i64 [ ptrtoint (ptr @463 to i64), %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i ], [ %.sroa.628.0.copyload.i, %bb.d ]
  %.sroa.10.0.ph = phi i64 [ %i.u, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i ], [ %.sroa.527.0.copyload.i, %bb.d ]
  %.sroa.82.0.ph = phi i32 [ undef, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i ], [ %.sroa.426.0.copyload.i, %bb.d ]
  %.sroa.0.0.ph = phi i32 [ 7, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit.i ], [ %i.l, %bb.d ]
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.82.0.ph, ptr %.sroa.430.0..sroa_idx, align 4
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.ph, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.15.0.ph, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.632.sroa.4.0..sroa.632.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18.0.ph, ptr %.sroa.632.sroa.4.0..sroa.632.0..sroa_idx.sroa_idx, align 8
  %.sroa.632.sroa.5.0..sroa.632.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.632.sroa.5.0..sroa.632.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load i64, ptr %i.w, align 8, !range !10, !alias.scope !10346, !noundef !5
  %cond.i.i = icmp eq i64 %i.x, 0
  br i1 %cond.i.i, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %.body, %bb.q, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.z, %bb.n ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.m
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_of_sized.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i, ptr %.sroa.65.0..sroa_idx, align 8
  store i32 -1, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !range !10, !alias.scope !10347, !noundef !5
  %cond.i.i38 = icmp eq i64 %i.ad, 0
  br i1 %cond.i.i38, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit

bb.p:                                             ; preds = %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_of_sized.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i40 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i40: ; preds = %bb.p
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtNtNtBI_11next_solver2ty2TyINtNtB4_6option6OptionNtBE_15IntervalOrOwnedEEEBI_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i40, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_of_sized.exit, %bb.b, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15exec_fn_pointer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %6, i32 noundef range(i32 0, 2) %7, i32 %8, i32 noundef range(i32 0, 5) %9, i32 %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  %i.e = load i64, ptr %2, align 8, !range !10, !alias.scope !10360, !noalias !10361, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10360, !noalias !10361, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10360, !noalias !10361, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 16 %1, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i), !noalias !10360
  %i.j = load i32, ptr %i.d, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.446.0.copyload = load i32, ptr %.sroa.446.0..sroa_idx, align 4
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.547.0.copyload = load ptr, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.755.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.749.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.446.0.copyload, ptr %.sroa.452.0..sroa_idx, align 4
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = icmp eq i64 %i.o, 8
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.050.0.copyload = load i64, ptr %i.m, align 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  %i.q = icmp ult i64 %.sroa.050.0.copyload, 1000
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.sroa.050.0.copyload, -1000     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10362, !noalias !10363, !noundef !5
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !10364
  %i.v = tail call noundef dereferenceable_or_null(37) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 37, i64 noundef range(i64 1, 17) 1) #48, !noalias !10364 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10365
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.781.0.copyload = load i32, ptr %.sroa.781.0..sroa_idx, align 4, !noalias !10362
  %.sroa.8.0.copyload.cast = inttoptr i64 %.sroa.050.0.copyload to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10365
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.x, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.781.0.copyload, ptr %.sroa.469.0..sroa_idx, align 4
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0.copyload.cast, ptr %.sroa.570.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.z = load ptr, ptr %i.y, align 16, !alias.scope !10362, !noalias !10363, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.r
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !10365, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10365
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.050.0.copyload, ptr %i.ac, align 8, !noalias !10365
  store i32 13, ptr %i.a, align 8, !noalias !10365
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a), !noalias !10365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10365
  %.sroa.082.0.copyload = load i32, ptr %i.ab, align 8 ; 3 uses
  %.sroa.483.0..sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa.8.8..sroa_idx, align 8 ; 3 uses
  %.sroa.785.0..sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.785.0.copyload = load ptr, ptr %.sroa.785.0..sroa.8.8..sroa_idx, align 8 ; 3 uses
  %i.ad = icmp ne i32 %.sroa.082.0.copyload, 27
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nsw i32 %.sroa.082.0.copyload, -2
  %i.af = icmp samesign ugt i32 %.sroa.082.0.copyload, 1
  %narrow = select i1 %i.af, i32 %i.ae, i32 25
  switch i32 %narrow, label %bb.i [
    i32 13, label %bb.j
    i32 17, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !10366
  %i.ag = call noundef dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 17) 1) #48, !noalias !10366 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.h
  %.sroa.9.0..sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa.8.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.785.0.copyload, ptr %i.b, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.16.extract.trunc = trunc i64 %.sroa.9.0.copyload to i32
  store i32 %.sroa.9.16.extract.trunc, ptr %.sroa.9.16..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.483.0.copyload) ]
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11exec_fn_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull %.sroa.483.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %6, i32 noundef %7, i32 %8, i32 noundef %9, i32 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %.sroa.483.0.copyload to i64 ; 2 uses
  %.sroa.483.0.extract.trunc = trunc i64 %i.ai to i32
  %.sroa.483.4.extract.shift = lshr i64 %i.ai, 32
  %.sroa.483.4.extract.trunc = trunc nuw i64 %.sroa.483.4.extract.shift to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.785.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !10367
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %i.aj, align 8, !alias.scope !10367
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !10367
  %.val79 = load i64, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val80 = load i64, ptr %i.al, align 8
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12exec_closure(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %.sroa.483.0.extract.trunc, i32 noundef %.sroa.483.4.extract.trunc, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %.sroa.785.0.copyload, i64 %.val79, i64 %.val80, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %6, i32 noundef %9, i32 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 32) #45
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(32) @464, i64 range(i64 17, 59) 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 15, ptr %i.am, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.538.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.m, %bb.g, %bb.q
  ret void

bb.o:                                             ; preds = %bb.f
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 37) #45
  unreachable

bb.p:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.v, ptr noundef nonnull readonly align 1 dereferenceable(37) @81, i64 range(i64 17, 59) 37, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 15, ptr %i.an, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %.sink96 = phi ptr [ %i.v, %bb.p ], [ %.sroa.547.0.copyload, %bb.b ]
  %.sink = phi i64 [ 37, %bb.p ], [ %.sroa.648.0.copyload, %bb.b ]
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink96, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15write_to_stderr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10371)
  %i.e = load i64, ptr %2, align 8, !range !10, !alias.scope !10371, !noalias !10372, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10371, !noalias !10372, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10371, !noalias !10372, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 16 %1, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i), !noalias !10371
  %i.j = load i32, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.418.0.copyload = load i32, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.726.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.721.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.418.0.copyload, ptr %.sroa.423.0..sroa_idx, align 4
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.0.copyload, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.620.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.q, align 8, !range !6, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.w = load i64, ptr %i.q, align 8, !range !36, !noundef !5 ; 2 uses
  %i.x = icmp ule i64 %i.n, %i.w
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not29 = icmp eq i64 %i.n, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.v, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator15write_to_stdout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10376)
  %i.e = load i64, ptr %2, align 8, !range !10, !alias.scope !10376, !noalias !10377, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10376, !noalias !10377, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10376, !noalias !10377, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 16 %1, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i), !noalias !10376
  %i.j = load i32, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.418.0.copyload = load i32, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.726.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.721.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.418.0.copyload, ptr %.sroa.423.0..sroa_idx, align 4
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.0.copyload, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.620.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.q, align 8, !range !6, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.w = load i64, ptr %i.q, align 8, !range !36, !noundef !5 ; 2 uses
  %i.x = icmp ule i64 %i.n, %i.w
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not29 = icmp eq i64 %i.n, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.v, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator17exec_fn_with_args(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %8, i32 noundef range(i32 0, 2) %9, i32 %10, i32 noundef range(i32 0, 5) %11, i32 %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 10 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator32detect_and_exec_special_function(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %8, i32 noundef %11, i32 %12)
  %i.v = load i32, ptr %i.u, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %.sroa.596.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(43) %.sroa.593.0..sroa_idx, i64 43, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.y, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.x, ptr %.sroa.495.0..sroa_idx, align 4
  store i64 -2, ptr %0, align 8
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.z = trunc nuw i8 %i.x to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.z, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val175 = load ptr, ptr %i.aa, align 8, !align !41, !noundef !5 ; 5 uses
  %.not.i = icmp eq ptr %.val175, null
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val175, i64 792
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !10451, !noundef !5 ; 2 uses
  %.not9.i = icmp eq i32 %i.ac, 0
  br i1 %.not9.i, label %bb.m, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 145, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #43, !noalias !10451
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.val175, i64 796
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !10451, !noundef !5
  %i.af = icmp eq i32 %3, %i.ae
  %i.ag = icmp eq i32 %2, %i.ac
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.val175, i64 808
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !10451, !noundef !5 ; 2 uses
  %.not10.i = icmp eq i32 %i.ai, 0
  br i1 %.not10.i, label %.split8.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.val175, i64 812
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !10451, !noundef !5
  br label %bb.m

.split8.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10452
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef range(i64 0, -9223372036854775808) 53, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10452
  %i.al = load i64, ptr %i.p, align 8, !range !4, !noalias !10452, !noundef !5
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !6, !noalias !10452, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.l, !prof !7

bb.j:                                             ; preds = %.split8.i
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !10452
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.aq) #45, !noalias !10452
  unreachable

bb.k:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.bt

bb.l:                                             ; preds = %.split8.i
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !10452, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = icmp ugt i64 %i.ao, 52
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10452
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(53) @362, i64 range(i64 0, -9223372036854775808) 53, i1 false), !noalias !10453
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.at, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.6108.sroa.4.0..sroa.6108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ar, ptr %.sroa.6108.sroa.4.0..sroa.6108.0..sroa_idx.sroa_idx, align 8
  %.sroa.6108.sroa.5.0..sroa.6108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 53, ptr %.sroa.6108.sroa.5.0..sroa.6108.0..sroa_idx.sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.bt

bb.m:                                             ; preds = %bb.i, %bb.g, %bb.e
  %.sroa.12.sroa.0.0.ph = phi i32 [ undef, %bb.e ], [ undef, %bb.g ], [ %i.ak, %bb.i ]
  %.sroa.8.0.ph = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ %i.ai, %bb.i ] ; 2 uses
  %.not160 = icmp eq i32 %.sroa.8.0.ph, 0         ; 2 uses
  %. = select i1 %.not160, i32 %3, i32 %.sroa.12.sroa.0.0.ph ; 5 uses
  %.168 = select i1 %.not160, i32 %2, i32 %.sroa.8.0.ph ; 5 uses
  %.idx = shl nuw nsw i64 %5, 5
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val176 = load ptr, ptr %i.av, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10454
  store i32 %.168, ptr %i.o, align 8, !noalias !10454
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %., ptr %i.aw, align 4, !noalias !10454
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %6, ptr %i.ax, align 8, !noalias !10454
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 16 uses
  %i.az = load i64, ptr %i.ay, align 16, !noalias !10454, !noundef !5 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsENtNtNtB2l_3mir4eval13MirOrDynIndexNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowB2l_.exit.i, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @482) #43, !noalias !10454
  unreachable

_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsENtNtNtB2l_3mir4eval13MirOrDynIndexNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowB2l_.exit.i: ; preds = %bb.m
  %i.bb = add nuw nsw i64 %i.az, 1
  store i64 %i.bb, ptr %i.ay, align 16, !noalias !10454
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.be = load i64, ptr %i.bd, align 16, !alias.scope !10455, !noalias !10456, !noundef !5
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %select.unfold.i, label %bb.o

bb.o:                                             ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsENtNtNtB2l_3mir4eval13MirOrDynIndexNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE6borrowB2l_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.bh = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEB2g_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !10454 ; 2 uses

.noexc.i:                                         ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !10457)
  call void @llvm.experimental.noalias.scope.decl(metadata !10458)
  %i.bi = lshr i64 %i.bh, 57
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.bl = load i64, ptr %i.bk, align 16, !alias.scope !10459, !noalias !10460, !noundef !5 ; 2 uses
  %i.bm = load ptr, ptr %i.bc, align 8, !alias.scope !10459, !noalias !10460, !nonnull !5, !noundef !5 ; 2 uses
  %i.bn = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.bo = shufflevector <16 x i8> %i.bn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.noexc.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.cf, %bb.r ]
  %.pn.i.i.i = phi i64 [ %i.bh, %.noexc.i ], [ %i.cg, %bb.r ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.bl ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !10461 ; 2 uses
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.bo
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ce, %bb.q ], [ %i.br, %bb.p ] ; 3 uses
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.01.0.i.i.i.i, %i.bt
  %i.bv = and i64 %i.bu, %i.bl
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -32
  %i.bz = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEINtB2_10EquivalentBq_E10equivalentB17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %.noexc94.i unwind label %.loopexit.i, !noalias !10454

.noexc94.i:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.bz, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsENtNtNtB1v_3mir4eval13MirOrDynIndexNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1v_.exit.i, label %bb.q, !prof !23

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %select.unfold.loopexit.i, !prof !7
end_hunk_6
