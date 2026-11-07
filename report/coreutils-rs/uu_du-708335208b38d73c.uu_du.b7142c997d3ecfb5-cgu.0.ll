Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMCsfIwuYbgPzJV_5uu_duNtB2_4Stat3new:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false), !noalias !3015
  br label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3014
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfIwuYbgPzJV_5uu_du.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit, %bb.ae, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit
  %i.cw = load i64, ptr %i.k, align 8, !range !31, !noundef !8 ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvMsA_NtCs2vKOLqTMYjT_3std2fsNtB5_8DirEntry8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) #25
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3017
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !noalias !3016
  %i.da = load i64, ptr %i.a, align 8, !range !31, !noalias !3017, !noundef !8
  %i.db = icmp eq i64 %i.da, 2
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !3017, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !alias.scope !3016
  store i64 2, ptr %i.k, align 8, !alias.scope !3016
  br label %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !noalias !3018
  br label %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3017
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cz, ptr %i.df, align 16
  store i128 2, ptr %0, align 16
  br label %bb.am

bb.aj:                                            ; preds = %bb.ad
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.553.0..sroa_idx, i64 16, i1 false)
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.654.0.copyload = load i64, ptr %.sroa.654.0..sroa_idx, align 8 ; 3 uses
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.755.0.copyload = load i64, ptr %.sroa.755.0..sroa_idx, align 8 ; 3 uses
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.856.0.copyload = load i64, ptr %.sroa.856.0..sroa_idx, align 8 ; 2 uses
  %.sroa.957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.957.0.copyload = load i32, ptr %.sroa.957.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.822, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.1058.0..sroa_idx, i64 20, i1 false)
  %.sroa.1159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.1159.0.copyload = load i64, ptr %.sroa.1159.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.1260.0.copyload = load i64, ptr %.sroa.1260.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.1361.0.copyload = load i64, ptr %.sroa.1361.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1032, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1462.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.cw, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cz, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.654.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.755.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.856.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 %.sroa.957.0.copyload, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.822.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.822, i64 20, i1 false)
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %.sroa.1159.0.copyload, ptr %.sroa.824.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 %.sroa.1260.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i64 %.sroa.1361.0.copyload, ptr %.sroa.929.0..sroa_idx, align 8
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1032.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1032, i64 72, i1 false)
  %i.dg = zext i64 %.sroa.755.0.copyload to i128
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 53
  %i.di = load i8, ptr %i.dh, align 1, !range !37, !noundef !8 ; 2 uses
  %.not63 = icmp eq i8 %i.di, -1
  br i1 %.not63, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l, i8 noundef %i.di) #25 ; 2 uses
  %i.dk = extractvalue { i64, i32 } %i.dj, 0
  %i.dl = extractvalue { i64, i32 } %i.dj, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.sroa.339.0 = phi i32 [ %i.dl, %bb.ak ], [ -1, %bb.aj ]
  %.sroa.038.0 = phi i64 [ %i.dk, %bb.ak ], [ undef, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25
  %i.dm = and i32 %.sroa.957.0.copyload, 61440
  %i.dn = icmp eq i32 %i.dm, 16384
  %..sroa.1159.0.copyload = select i1 %i.dn, i64 0, i64 %.sroa.1159.0.copyload
  %.sroa.21.240..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.21.240..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i128 1, ptr %0, align 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.dg, ptr %.sroa.443.0..sroa_idx, align 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.654.0.copyload, ptr %.sroa.544.0..sroa_idx, align 16
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cw, ptr %.sroa.746.0..sroa_idx, align 16
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cz, ptr %.sroa.847.0..sroa_idx, align 8
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.948.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.654.0.copyload, ptr %.sroa.10.0..sroa_idx49, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.755.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.856.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sroa.957.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.822, i64 20, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.1159.0.copyload, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.1260.0.copyload, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.1361.0.copyload, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1032, i64 72, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.038.0, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %.sroa.339.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.21, i64 28, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %..sroa.1159.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.sroa.1361.0.copyload, ptr %.sroa.23.0..sroa_idx, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [100 x i8], align 1               ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [112 x i8], align 8               ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [19 x i8], align 1                ; 3 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [40 x i8], align 8               ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 13 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 7 uses
  %i.az = alloca [40 x i8], align 8               ; 7 uses
  %i.ba = alloca [304 x i8], align 16             ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.724.i.i = alloca [288 x i8], align 16    ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [40 x i8], align 8               ; 7 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.427.i.i = alloca [288 x i8], align 16    ; 4 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.6.i.i = alloca [288 x i8], align 16      ; 5 uses
  %i.bt = alloca [40 x i8], align 8               ; 8 uses
  %i.bu = alloca [16 x i8], align 8               ; 7 uses
  %i.bv = alloca [304 x i8], align 16             ; 20 uses
  %i.bw = alloca [48 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %i.by = alloca [8 x i8], align 8                ; 5 uses
  %i.bz = alloca [32 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %.val55 = load i64, ptr %1, align 8, !range !31, !noundef !8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val56 = load ptr, ptr %i.ce, align 8          ; 33 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val56, i64 4 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val56, i64 24 ; 2 uses
  %i.cj = tail call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.val56, i64 16
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val56, i64 104
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.628.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.733.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.838.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.cp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.733.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.410.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.628.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.733.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.val56, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val56, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.7.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i5.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val56, i64 400 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val56, i64 392 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val56, i64 408
  %i.db = getelementptr inbounds nuw i8, ptr %.val56, i64 416
  %i.dc = getelementptr inbounds nuw i8, ptr %.val56, i64 384
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.val56, i64 256
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 248
  %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 256
  %.sroa.10.sroa.12.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 264
  %.sroa.10.sroa.13.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  %.sroa.10.sroa.14.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 280
  %.sroa.10.sroa.15.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 97
  %.val57 = load i8, ptr %i.dk, align 1, !range !17
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 98
  %.val58 = load i8, ptr %i.dl, align 2
  %i.dm = trunc nuw i8 %.val57 to i1
  %i.dn = trunc nuw i8 %.val58 to i1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !31 ; 2 uses
  %.not47 = icmp eq i64 %i.dp, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = trunc nuw i64 %i.dp to i1
  %i.dt = load i64, ptr %0, align 8, !range !11
  %i.du = trunc nuw i64 %i.dt to i1               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.dy = load i8, ptr %i.dx, align 1, !range !17
  %i.dz = trunc nuw i8 %i.dy to i1                ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ec = load i8, ptr %i.eb, align 4, !range !37
  %.not27.i = icmp eq i8 %i.ec, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6.0..sroa_idx.i.i.i74 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11print_stats:bb.a
  %i.qu = and i64 %i.qr, 1095216660480
  %i.qv = icmp ne i64 %i.qu, 1095216660480
  call void @llvm.assume(i1 %i.qt)
  call void @llvm.assume(i1 %i.qv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.qw = getelementptr i8, ptr %i.qk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qw) ]
  store ptr %i.qw, ptr %i.dj, align 8, !alias.scope !3347
  store i8 3, ptr %i.au, align 8, !alias.scope !3347
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dj) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.df, %bb.de, %bb.dd, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val54 = load ptr, ptr %i.cc, align 8, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.val54, i64 12 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !noundef !8
  %i.qz = add i32 %i.qy, -1                       ; 2 uses
  store i32 %i.qz, ptr %i.qx, align 4
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.dg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit
  store atomic i64 0, ptr %.val54 monotonic, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %.val54, i64 8 ; 2 uses
  %i.rc = atomicrmw xchg ptr %i.rb, i32 0 release, align 4
  %i.rd = icmp eq i32 %i.rc, 2
  br i1 %i.rd, label %bb.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit, !prof !12

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.rb) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit, %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  %i.re = load ptr, ptr %i.de, align 8, !alias.scope !3348, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8, !invariant.load !8, !noalias !3348 ; 2 uses
  %.not.i = icmp eq ptr %i.rf, null
  br i1 %.not.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit
  %i.rg = load ptr, ptr %i.cd, align 8, !alias.scope !3348, !nonnull !8, !noundef !8
  call void %i.rf(ptr noundef nonnull %i.rg) #31, !noalias !3348, !inline_history !3155
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !range !9, !invariant.load !8, !noalias !3348 ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfIwuYbgPzJV_5uu_du.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.dj
  %.val.i = load ptr, ptr %i.cd, align 8, !alias.scope !3348, !nonnull !8, !noundef !8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rl = load i64, ptr %i.rk, align 8, !range !21, !invariant.load !8, !noalias !3348
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ri, i64 noundef range(i64 1, -9223372036854775807) %i.rl) #25, !noalias !3348
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.dj, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit

_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11choose_size.exit: ; preds = %_RNvMsg_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1u_.exit
  %i.rm = shl i64 %.sroa.10.sroa.13.0.copyload, 9
  %spec.select111 = select i1 %i.dn, i64 %.sroa.10.sroa.12.0.copyload, i64 %i.rm
  %.sroa.0.0.i64 = select i1 %i.dm, i64 %.sroa.10.sroa.14.0.copyload, i64 %spec.select111 ; 4 uses
  %i.rn = icmp ne i64 %.sroa.10.sroa.15.0.copyload, 0 ; 3 uses
  %i.ro = select i1 %i.rn, i64 0, i64 %.sroa.0.0.i64
  %spec.select = add i64 %i.ro, %.sroa.03.0.ph
  br i1 %.not47, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11choose_size.exit
  %i.rp = icmp ugt i64 %.sroa.0.0.i64, %i.dr
  %i.rq = icmp ult i64 %.sroa.0.0.i64, %i.dr
  %.sroa.03.0.in.i = select i1 %i.ds, i1 %i.rp, i1 %i.rq
  %i.rr = icmp ugt i64 %.sroa.10.sroa.15.0.copyload, %i.dw
  %or.cond.not116 = select i1 %i.du, i1 %i.rr, i1 false
  %or.cond = select i1 %.sroa.03.0.in.i, i1 true, i1 %or.cond.not116
  %or.cond.not = select i1 %i.dz, i1 %i.rn, i1 false
  %or.cond470 = select i1 %or.cond, i1 true, i1 %or.cond.not
  br i1 %or.cond470, label %bb.dm, label %bb.do

bb.dl:                                            ; preds = %_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11choose_size.exit
  %.old = icmp ugt i64 %.sroa.10.sroa.15.0.copyload, %i.dw
  %or.cond.not116.old = select i1 %i.du, i1 %.old, i1 false
  %or.cond.not.old = select i1 %i.dz, i1 %i.rn, i1 false
  %or.cond471 = select i1 %or.cond.not116.old, i1 true, i1 %or.cond.not.old
  br i1 %or.cond471, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl, %_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter10print_stat.exit.thread, %_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter10print_stat.exit, %bb.dk
  %i.rs = icmp eq i64 %.sroa.10.sroa.9.0.copyload, 0
  br i1 %i.rs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer.backedge, label %bb.dn

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer.backedge: ; preds = %bb.dm, %bb.dn
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.10.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.sroa.10.0.copyload, i64 noundef %.sroa.10.sroa.9.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !3349
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer.backedge

bb.do:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3350
  %i.rt = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #25, !noalias !3350
  store ptr %i.rt, ptr %i.at, align 8, !noalias !3350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3350
  call fastcc void @_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter12convert_size(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, i64 noundef %.sroa.0.0.i64) #25, !noalias !3351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3350
  store ptr %i.as, ptr %i.ar, align 8, !noalias !3350
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3350
  %i.ru = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @192, ptr noundef nonnull %i.ar) #25, !noalias !3350 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ru, null
  br i1 %.not.i65, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rv = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ru) #25, !noalias !3350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3350
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  %.val.i.i = load i64, ptr %i.as, align 8, !range !9, !alias.scope !3352, !noalias !3350, !noundef !8 ; 2 uses
  %i.rw = icmp eq i64 %.val.i.i, 0
  br i1 %i.rw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.val1.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !3352, !noalias !3350, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !3353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3350
  br label %_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter10print_stat.exit

bb.dr:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3350
  call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %.val.i34.i = load i64, ptr %i.as, align 8, !range !9, !alias.scope !3354, !noalias !3350, !noundef !8 ; 2 uses
  %i.rx = icmp eq i64 %.val.i34.i, 0
  br i1 %i.rx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit36.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.val1.i35.i = load ptr, ptr %i.ea, align 8, !alias.scope !3354, !noalias !3350, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i35.i, i64 noundef %.val.i34.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !3355
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit36.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit36.i: ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3350
  br i1 %.not27.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.hn, %bb.hl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3356
  %i.ry = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #25, !noalias !3356
  store ptr %i.ry, ptr %i.al, align 8, !noalias !3356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.10.0.copyload) ]
  %i.rz = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.sroa.10.0.copyload, i64 noundef %.sroa.10.sroa.11.0.copyload) #25, !noalias !3356 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3356
  %.not32.i = icmp eq ptr %i.rz, null
  br i1 %.not32.i, label %bb.hp, label %bb.ho

bb.du:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit36.i
  %.not28.i = icmp eq i32 %.sroa.10.sroa.7.0.copyload, -1
  br i1 %.not28.i, label %bb.hi, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3350
  %i.sa = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #25, !noalias !3350
  store ptr %i.sa, ptr %i.aq, align 8, !noalias !3350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3357
  call void @llvm.experimental.noalias.scope.decl(metadata !3358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3359
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3359
  store i64 %.sroa.10.sroa.6.0.copyload, ptr %i.ab, align 8, !noalias !3361
  store i32 %.sroa.10.sroa.7.0.copyload, ptr %i.eh, align 8, !noalias !3361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3361
  call void @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab, i64 noundef 0, i32 noundef 0) #25, !noalias !3361
  %i.sb = load i64, ptr %i.aa, align 8, !range !11, !noalias !3361, !noundef !8
  %i.sc = trunc nuw i64 %i.sb to i1
  %i.sd = load i64, ptr %i.ei, align 8, !noalias !3361, !noundef !8 ; 2 uses
  %i.se = load i32, ptr %i.ej, align 8, !range !3362, !noalias !3361, !noundef !8 ; 2 uses
  br i1 %i.sc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef %i.sd, i32 noundef %i.se) #25, !noalias !3363
  %i.sf = load i64, ptr %i.z, align 8, !range !11, !noalias !3361, !noundef !8
  %i.sg = trunc nuw i64 %i.sf to i1
  br i1 %i.sg, label %bb.dz, label %bb.ea, !prof !12

bb.dx:                                            ; preds = %bb.dv
  call void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef %i.sd, i32 noundef %i.se) #25, !noalias !3364
  %i.sh = load i64, ptr %i.ac, align 8, !range !11, !noalias !3359, !noundef !8
  %i.si = trunc nuw i64 %i.sh to i1
  br i1 %i.si, label %bb.dy, label %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i, !prof !12

._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3359
  %.pre.i.i.i.a = load i64, ptr %i.ek, align 8, !noalias !3359
  %.pre13.i.i.i = load i32, ptr %.phi.trans.insert12.i.i.i, align 8, !noalias !3359
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.sj = load ptr, ptr %i.ek, align 8, !alias.scope !3360, !noalias !3359, !noundef !8
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

bb.dz:                                            ; preds = %bb.dw
  %i.sk = load ptr, ptr %i.el, align 8, !noalias !3361, !noundef !8
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

bb.ea:                                            ; preds = %bb.dw
  %i.sl = load i64, ptr %i.el, align 8, !noalias !3361, !noundef !8 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, -9223372036854775808
  br i1 %i.sm, label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i, label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i, !prof !12

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i: ; preds = %bb.ea
  %i.sn = call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef 23) #25, !noalias !3363
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i: ; preds = %bb.ea
  %i.so = load i32, ptr %i.em, align 8, !noalias !3361, !noundef !8
  %i.sp = sub nsw i64 0, %i.sl
  %i.sq = sub i32 0, %i.so
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3359
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i: ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i, %bb.dz, %bb.dy
  %.sink.i.i.i = phi ptr [ %i.sn, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i ], [ %i.sj, %bb.dy ], [ %i.sk, %bb.dz ]
  %i.sr = call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11) #25, !noalias !3363
  %i.ss = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sink.i.i.i, ptr noundef %i.sr) #28, !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3359
  br label %bb.ez

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i: ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i
  %i.st = phi i32 [ %.pre13.i.i.i, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i ], [ %i.sq, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i ] ; 7 uses
  %i.su = phi i64 [ %.pre.i.i.i.a, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i ], [ %i.sp, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3359
  %i.sv = add i64 %i.su, 377705023201
  %or.cond.i.i.i.i.i.i67 = icmp ult i64 %i.sv, 631107230402
  br i1 %or.cond.i.i.i.i.i.i67, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i
  %i.sw = add i32 %i.st, 999999999
  %or.cond1.i.i.i.i.i.i = icmp ult i32 %i.sw, 1999999999
  br i1 %or.cond1.i.i.i.i.i.i, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.sx = icmp eq i64 %i.su, -377705023201
  %i.sy = icmp slt i32 %i.st, 0
  %or.cond3.i.i.i.i.i.i = and i1 %i.sy, %i.sx
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.eg, label %bb.ed, !prof !3365

bb.ed:                                            ; preds = %bb.ec
  %i.sz = icmp eq i32 %i.st, 0
  %i.ta = icmp eq i64 %i.su, 0
  %or.cond5.i.i.i.i.i.i = or i1 %i.sz, %i.ta
  br i1 %or.cond5.i.i.i.i.i.i, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.tb = call i64 @llvm.scmp.i64.i64(i64 %i.su, i64 0)
  %i.tc = call i64 @llvm.scmp.i64.i32(i32 %i.st, i32 0)
  %i.td = icmp eq i64 %i.tb, %i.tc
  br i1 %i.td, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.te = icmp slt i64 %i.su, 0                   ; 2 uses
  %.sroa.07.0.v.i.i.i.i.i.i = select i1 %i.te, i64 1, i64 -1
  %.sroa.07.0.i.i.i.i.i.i = add nsw i64 %.sroa.07.0.v.i.i.i.i.i.i, %i.su
  %.sroa.021.0.v.i.i.i.i.i.i = select i1 %i.te, i32 -1000000000, i32 1000000000
  %.sroa.021.0.i.i.i.i.i.i = add nsw i32 %.sroa.021.0.v.i.i.i.i.i.i, %i.st
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec, %bb.eb, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i = phi i32 [ 7167, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i ], [ 7167, %bb.ec ], [ 5887, %bb.eb ]
  %i.tf = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5.0.ph.i.i.i.i.i) #28, !noalias !3366
  br label %bb.ez

bb.eh:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %.sroa.10.0.ph.i.i.i = phi i32 [ %.sroa.021.0.i.i.i.i.i.i, %bb.ef ], [ %i.st, %bb.ee ], [ %i.st, %bb.ed ] ; 7 uses
  %.sroa.5.0.ph.i.i.i = phi i64 [ %.sroa.07.0.i.i.i.i.i.i, %bb.ef ], [ %i.su, %bb.ee ], [ %i.su, %bb.ed ] ; 5 uses
  %i.tg = call noundef nonnull align 8 ptr @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz2db2db() #25, !noalias !3367
  %i.th = call { i64, ptr } @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz6system3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.tg) #25, !noalias !3367 ; 2 uses
  %i.ti = extractvalue { i64, ptr } %i.th, 0
  %i.tj = extractvalue { i64, ptr } %i.th, 1      ; 4 uses
  %i.tk = trunc nuw i64 %i.ti to i1
  br i1 %i.tk, label %bb.ei, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3368
  store ptr %i.tj, ptr %i.y, align 8, !noalias !3368
  %i.tl = icmp eq ptr %i.tj, null
  br i1 %i.tl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tm = atomicrmw add ptr %i.tj, i64 -1 release, align 8, !noalias !3369
  %i.tn = icmp eq i64 %i.tm, 1
  br i1 %i.tn, label %bb.ek, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #28, !noalias !3367
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3368
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.eh
  %.sroa.0.0.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ %i.tj, %bb.eh ] ; 5 uses
  %i.to = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.tp = and i64 %i.to, 7
  switch i64 %i.tp, label %bb.el [
    i64 1, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
    i64 2, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
    i64 3, label %bb.em
    i64 0, label %bb.eo
    i64 4, label %bb.ep
    i64 5, label %bb.eq
  ]

bb.el:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  unreachable

bb.em:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.tq = trunc i64 %i.to to i32
  %i.tr = ashr i32 %i.tq, 4                       ; 2 uses
  %i.ts = add nsw i32 %i.tr, 93599
  %or.cond.i.i.i1.i.i.i = icmp ult i32 %i.ts, 187199
  br i1 %or.cond.i.i.i1.i.i.i, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i, label %bb.en, !prof !3370

bb.en:                                            ; preds = %bb.em
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @202, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #29, !noalias !3371
  unreachable

bb.eo:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.tt = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #25, !noalias !3371
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

bb.ep:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.tu = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 -4
  %i.tv = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.tu, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #25, !noalias !3371
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

bb.eq:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.tw = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 -5
  %i.tx = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.tw, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #25, !noalias !3371
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i: ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.tx, %bb.eq ], [ 0, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i ], [ 0, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i ], [ %i.tt, %bb.eo ], [ %i.tv, %bb.ep ], [ %i.tr, %bb.em ] ; 2 uses
  %i.ty = sext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.tz = add nsw i64 %.sroa.5.0.ph.i.i.i, 378683424000
  %i.ua = add nsw i64 %i.tz, %i.ty                ; 2 uses
  %i.ub = udiv i64 %i.ua, 86400
  %i.uc = trunc i64 %i.ub to i32                  ; 6 uses
  %i.ud = urem i64 %i.ua, 86400                   ; 2 uses
  %i.ue = trunc nuw nsw i64 %i.ud to i32          ; 2 uses
  %i.uf = icmp slt i32 %.sroa.10.0.ph.i.i.i, 0
  br i1 %i.uf, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
  %.not.i.i.i.i.i75 = icmp eq i64 %i.ud, 0
  %i.ug = add nsw i32 %.sroa.10.0.ph.i.i.i, 1000000000 ; 2 uses
  br i1 %.not.i.i.i.i.i75, label %.thread.i.i.i.i.i, label %bb.et

bb.es:                                            ; preds = %bb.et, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
  %.sroa.09.0.i.i.i.i.i = phi i32 [ %i.uk, %bb.et ], [ %i.ue, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i10.i.i.i.i = phi i32 [ %i.ug, %bb.et ], [ %.sroa.10.0.ph.i.i.i, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i ] ; 3 uses
  %i.uh = add i32 %i.uc, -11323
  %or.cond.i.i.i.i.i73 = icmp ult i32 %i.uh, 7304484
  br i1 %or.cond.i.i.i.i.i73, label %bb.ev, label %bb.eu, !prof !3370

.thread.i.i.i.i.i:                                ; preds = %bb.er
  %i.ui = add nsw i32 %i.uc, -1
  %i.uj = add i32 %i.uc, -11324
  %or.cond54.i.i.i.i.i = icmp ult i32 %i.uj, 7304484
  br i1 %or.cond54.i.i.i.i.i, label %.thread67.i.i.i.i.i, label %bb.eu, !prof !3370

bb.et:                                            ; preds = %bb.er
  %i.uk = add nsw i32 %i.ue, -1
  br label %bb.es

bb.eu:                                            ; preds = %.thread.i.i.i.i.i, %bb.es
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #29, !noalias !3372
  unreachable

bb.ev:                                            ; preds = %bb.es
  %i.ul = icmp eq i32 %.sroa.09.0.i.i.i.i.i, 0
  br i1 %i.ul, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.um = udiv i32 %.sroa.09.0.i.i.i.i.i, 3600    ; 2 uses
  %i.un = urem i32 %.sroa.09.0.i.i.i.i.i, 3600    ; 2 uses
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.ex, label %.thread67.i.i.i.i.i

bb.ex:                                            ; preds = %.thread67.i.i.i.i.i, %bb.ew, %bb.ev
  %.sroa.06.05665.i.i.i.i.i = phi i32 [ %i.uc, %bb.ev ], [ %i.uc, %bb.ew ], [ %.sroa.06.0566471.i.i.i.i.i, %.thread67.i.i.i.i.i ]
  %.sroa.0.05763.i.i.i.i.i = phi i32 [ %.sroa.0.0.i10.i.i.i.i, %bb.ev ], [ %.sroa.0.0.i10.i.i.i.i, %bb.ew ], [ %.sroa.0.0576272.i.i.i.i.i, %.thread67.i.i.i.i.i ] ; 2 uses
  %.sroa.041.0.shrunk.i.i.i.i.i = phi i32 [ 0, %bb.ev ], [ %i.um, %bb.ew ], [ %i.uq, %.thread67.i.i.i.i.i ]
  %.sroa.043.0.i.i.i.i.i = phi i64 [ 0, %bb.ev ], [ 0, %bb.ew ], [ %i.ux, %.thread67.i.i.i.i.i ]
  %or.cond2.i.i.i.i.i = icmp ult i32 %.sroa.0.05763.i.i.i.i.i, 1000000000
  br i1 %or.cond2.i.i.i.i.i, label %bb.ga, label %bb.ey, !prof !3370

.thread67.i.i.i.i.i:                              ; preds = %bb.ew, %.thread.i.i.i.i.i
  %i.up = phi i32 [ %i.un, %bb.ew ], [ 3599, %.thread.i.i.i.i.i ]
  %i.uq = phi i32 [ %i.um, %bb.ew ], [ 23, %.thread.i.i.i.i.i ]
  %.sroa.0.0576272.i.i.i.i.i = phi i32 [ %.sroa.0.0.i10.i.i.i.i, %bb.ew ], [ %i.ug, %.thread.i.i.i.i.i ]
  %.sroa.06.0566471.i.i.i.i.i = phi i32 [ %i.uc, %bb.ew ], [ %i.ui, %.thread.i.i.i.i.i ]
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.up to i16 ; 2 uses
  %i.ur = udiv i16 %.lhs.trunc.i.i.i.i.i, 60
  %i.us = zext nneg i16 %i.ur to i64
  %i.ut = urem i16 %.lhs.trunc.i.i.i.i.i, 60
  %i.uu = zext nneg i16 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 48
  %i.uw = shl nuw nsw i64 %i.us, 40
  %i.ux = or disjoint i64 %i.uv, %i.uw
  br label %bb.ex

bb.ey:                                            ; preds = %bb.ex
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @186, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #29, !noalias !3372
  unreachable

bb.ez:                                            ; preds = %bb.eg, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i
  %.sroa.5.0.in.i.i.i = phi ptr [ %i.ss, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i ], [ %i.tf, %bb.eg ]
  store ptr %.sroa.5.0.in.i.i.i, ptr %i.en, align 8, !alias.scope !3358, !noalias !3357
  store i64 1, ptr %i.ak, align 8, !alias.scope !3358, !noalias !3357
  %i.uy = call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features4time18system_time_to_sec(i64 noundef %.sroa.10.sroa.6.0.copyload, i32 noundef range(i32 0, 1000000000) %.sroa.10.sroa.7.0.copyload) #25, !noalias !3350
  %i.uz = extractvalue { i64, i32 } %i.uy, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3373
  %i.va = icmp slt i64 %i.uz, 0
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !3374
  br i1 %i.va, label %bb.fc, label %bb.fa

end_hunk_1
