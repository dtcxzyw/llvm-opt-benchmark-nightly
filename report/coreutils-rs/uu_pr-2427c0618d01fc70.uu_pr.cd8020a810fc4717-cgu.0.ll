Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort12sort4_stableNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB19_11sort_by_keyTjjENCNvB1b_20get_file_line_groups0E0EB1b_:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1092, !noalias !1089, !noundef !4
  %i.ck = add i64 %i.ch, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1092, !noalias !1089, !noundef !4
  %i.cn = icmp eq i64 %i.cb, %i.ck
  %i.co = icmp ult i64 %i.cb, %i.ck
  %i.cp = icmp ult i64 %i.cd, %i.cm
  %.sroa.0.0.i.i10 = select i1 %i.cn, i1 %i.cp, i1 %i.co ; 3 uses
  %i.cq = select i1 %.sroa.0.0.i.i8, ptr %i.ax, ptr %i.as, !unpredictable !4
  %i.cr = select i1 %.sroa.0.0.i.i10, ptr %i.av, ptr %i.az, !unpredictable !4
  %i.cs = select i1 %.sroa.0.0.i.i10, ptr %i.ax, ptr %i.av, !unpredictable !4
  %i.ct = select i1 %.sroa.0.0.i.i8, ptr %i.as, ptr %i.cs, !unpredictable !4 ; 5 uses
  %i.cu = select i1 %.sroa.0.0.i.i8, ptr %i.av, ptr %i.ax, !unpredictable !4
  %i.cv = select i1 %.sroa.0.0.i.i10, ptr %i.az, ptr %i.cu, !unpredictable !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !1095, !noalias !1094, !noundef !4
  %i.cy = add i64 %i.cx, 1
  %i.cz = mul i64 %i.cy, %i.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !1095, !noalias !1094, !noundef !4
  %i.dc = add i64 %i.cz, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1095, !noalias !1094, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1096, !noalias !1093, !noundef !4
  %i.dh = add i64 %i.dg, 1
  %i.di = mul i64 %i.dh, %i.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1096, !noalias !1093, !noundef !4
  %i.dl = add i64 %i.di, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !1096, !noalias !1093, !noundef !4
  %i.do = icmp eq i64 %i.dc, %i.dl
  %i.dp = icmp ult i64 %i.dc, %i.dl
  %i.dq = icmp ult i64 %i.de, %i.dn
  %.sroa.0.0.i.i12 = select i1 %i.do, i1 %i.dq, i1 %i.dp ; 2 uses
  %i.dr = select i1 %.sroa.0.0.i.i12, ptr %i.cv, ptr %i.ct, !unpredictable !4
  %i.ds = select i1 %.sroa.0.0.i.i12, ptr %i.ct, ptr %i.cv, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.cq, i64 48, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %i.dr, i64 48, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i64 48, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB1m_11sort_by_keyTjjENCNvB1o_20get_file_line_groups0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
.lr.ph:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val1.i.i = load ptr, ptr %.0.val, align 8, !noalias !1113, !nonnull !4, !align !11, !noundef !4
  %i.b = load i64, ptr %.val1.i.i, align 8, !noalias !1114, !noundef !4 ; 3 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.01, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit ] ; 7 uses
  %.pn3 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.c = getelementptr inbounds nuw i8, ptr %.pn3, i64 80
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1118, !noalias !1116, !noundef !4 ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = mul i64 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %.pn3, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1118, !noalias !1116, !noundef !4 ; 2 uses
  %i.i = add i64 %i.f, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn3, i64 88
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1118, !noalias !1116, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn3, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1119, !noalias !1115, !noundef !4
  %i.n = add i64 %i.m, 1
  %i.o = mul i64 %i.n, %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %.pn3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1119, !noalias !1115, !noundef !4
  %i.r = add i64 %i.o, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1119, !noalias !1115, !noundef !4
  %i.u = icmp eq i64 %i.i, %i.r
  %i.v = icmp ult i64 %i.i, %i.r
  %i.w = icmp ult i64 %i.k, %i.t
  %.sroa.0.0.i.i.i = select i1 %i.u, i1 %i.w, i1 %i.v
  br i1 %.sroa.0.0.i.i.i, label %bb.b, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, i64 24, i1 false)
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i1, i64 48, i1 false)
  %i.x = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.x, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, i64 48, i1 false)
  %i.y = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.y, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0.0.i1, %bb.b ] ; 5 uses
  %.sroa.4.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.c ], [ %.sroa.0.04, %bb.b ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.4.0.i2, i64 -64
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1120, !noalias !1121, !noundef !4
  %i.ab = add i64 %i.aa, 1
  %i.ac = mul i64 %i.ab, %i.b
  %i.ad = getelementptr inbounds i8, ptr %.sroa.4.0.i2, i64 -72
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1120, !noalias !1121, !noundef !4
  %i.af = add i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.4.0.i2, i64 -56
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1120, !noalias !1121, !noundef !4
  %i.ai = icmp eq i64 %i.i, %i.af
  %i.aj = icmp ult i64 %i.i, %i.af
  %i.ak = icmp ult i64 %i.k, %i.ah
  %.sroa.0.0.i.i9.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj
  br i1 %.sroa.0.0.i.i9.i, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %.lr.ph5, %bb.b
  %.sroa.4.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.b ], [ %.sroa.0.0.i3, %bb.c ], [ %.sroa.4.0.i2, %.lr.ph5 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !1122
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.4.0.i.lcssa, i64 -24
  store i64 %i.h, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1122
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.4.0.i.lcssa, i64 -16
  store i64 %i.d, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1122
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.4.0.i.lcssa, i64 -8
  store i64 %i.k, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keyTjjENCNvB1a_20get_file_line_groups0E0EB1a_.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 48 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSBW_11sort_by_keyTjjENCNvBY_20get_file_line_groups0E0EBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hk, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hi, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit
  %.sroa.021.0 = phi i8 [ %i.df, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !1189, !noalias !1190, !nonnull !4, !align !11, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %.val1.i40 = load ptr, ptr %.val8.i, align 8, !noalias !1193, !nonnull !4, !align !11, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194), !noalias !1195
  %i.q = load i64, ptr %.val1.i40, align 8, !noalias !1196, !noundef !4 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1197, !noalias !1198, !noundef !4 ; 3 uses
  %i.t = add i64 %i.s, 1
  %i.u = mul i64 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1197, !noalias !1198, !noundef !4 ; 3 uses
  %i.x = add i64 %i.u, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1197, !noalias !1198, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1199, !noalias !1200, !noundef !4
  %i.ac = add i64 %i.ab, 1
  %i.ad = mul i64 %i.ac, %i.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1199, !noalias !1200, !noundef !4
  %i.ag = add i64 %i.ad, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1199, !noalias !1200, !noundef !4
  %i.aj = icmp eq i64 %i.x, %i.ag
  %i.ak = icmp ult i64 %i.x, %i.ag
  %i.al = icmp ult i64 %i.z, %i.ai
  %.sroa.0.0.i.i41 = select i1 %i.aj, i1 %i.al, i1 %i.ak ; 2 uses
  %.not74 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i41, label %.preheader51, label %.preheader52

.preheader52:                                     ; preds = %bb.k
  br i1 %.not74, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread, label %.lr.ph

.preheader51:                                     ; preds = %bb.k
  br i1 %.not74, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107, label %.lr.ph61

.lr.ph:                                           ; preds = %.preheader52, %bb.l
  %i.am = phi i64 [ %i.ay, %bb.l ], [ %i.z, %.preheader52 ]
  %i.an = phi i64 [ %i.av, %bb.l ], [ %i.w, %.preheader52 ]
  %i.ao = phi i64 [ %i.ar, %bb.l ], [ %i.s, %.preheader52 ]
  %.sroa.01.0.i.i57 = phi i64 [ %i.bf, %bb.l ], [ 2, %.preheader52 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i57 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1201, !noalias !1202, !noundef !4 ; 2 uses
  %i.as = add i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1201, !noalias !1202, !noundef !4 ; 2 uses
  %i.aw = add i64 %i.at, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1201, !noalias !1202, !noundef !4 ; 2 uses
  %i.az = add i64 %i.ao, 1
  %i.ba = mul i64 %i.az, %i.q
  %i.bb = add i64 %i.ba, %i.an                    ; 2 uses
  %i.bc = icmp eq i64 %i.aw, %i.bb
  %i.bd = icmp ult i64 %i.aw, %i.bb
  %i.be = icmp ult i64 %i.ay, %i.am
  %.sroa.0.0.i.i39 = select i1 %i.bc, i1 %i.be, i1 %i.bd
  br i1 %.sroa.0.0.i.i39, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bf = add nuw i64 %.sroa.01.0.i.i57, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i, label %.lr.ph

.lr.ph61:                                         ; preds = %.preheader51, %bb.m
  %i.bg = phi i64 [ %i.bs, %bb.m ], [ %i.z, %.preheader51 ]
  %i.bh = phi i64 [ %i.bp, %bb.m ], [ %i.w, %.preheader51 ]
  %i.bi = phi i64 [ %i.bl, %bb.m ], [ %i.s, %.preheader51 ]
  %.sroa.01.1.i.i60 = phi i64 [ %i.bz, %bb.m ], [ 2, %.preheader51 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i60 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1203, !noalias !1204, !noundef !4 ; 2 uses
  %i.bm = add i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1203, !noalias !1204, !noundef !4 ; 2 uses
  %i.bq = add i64 %i.bn, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1203, !noalias !1204, !noundef !4 ; 2 uses
  %i.bt = add i64 %i.bi, 1
  %i.bu = mul i64 %i.bt, %i.q
  %i.bv = add i64 %i.bu, %i.bh                    ; 2 uses
  %i.bw = icmp eq i64 %i.bq, %i.bv
  %i.bx = icmp ult i64 %i.bq, %i.bv
  %i.by = icmp ult i64 %i.bs, %i.bg
  %.sroa.0.0.i.i37 = select i1 %i.bw, i1 %i.by, i1 %i.bx
  br i1 %.sroa.0.0.i.i37, label %bb.m, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i

bb.m:                                             ; preds = %.lr.ph61
  %i.bz = add nuw i64 %.sroa.01.1.i.i60, 1        ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bz, %i.n
  br i1 %exitcond81.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i, label %.lr.ph61

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph61
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i60, %.lr.ph61 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i57, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ca = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ca)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107: ; preds = %.preheader51
  br i1 %.not5.i109, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.preheader.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread: ; preds = %.preheader52
  br i1 %.not5.i104, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i
  br i1 %.sroa.0.0.i.i41, label %bb.q, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.cb = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keyTjjENCNvB17_20get_file_line_groups0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !1144
  %i.cc = shl nuw nsw i64 %..i35, 1
  %i.cd = or disjoint i64 %i.cc, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4649 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread ], [ %.sroa.0.0.i.i105112116, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i ]
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i4649, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit

bb.q:                                             ; preds = %bb.n
  %i.cg = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205), !noalias !1195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206), !noalias !1195
  %.not.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.preheader.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107, %bb.q
  %i.ch = phi i64 [ %i.cg, %bb.q ], [ 1, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107 ]
  %.sroa.0.0.i.i105112116 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keyTjjENCNvB14_20get_file_line_groups0E0EB14_.exit.i.thread107 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i105112116
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cw, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.preheader.i.i ] ; 3 uses
  %i.cj = xor i64 %.sroa.0.016.i.i, -1
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.cl = getelementptr [48 x i8], ptr %i.ci, i64 %i.cj ; 4 uses
  %i.cm = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !1207, !noalias !1208
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !1209, !noalias !1210
  store <2 x i64> %i.cn, ptr %i.ck, align 8, !alias.scope !1207, !noalias !1208
  store <2 x i64> %i.cm, ptr %i.cl, align 8, !alias.scope !1209, !noalias !1210
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = load <2 x i64>, ptr %i.co, align 8, !alias.scope !1211, !noalias !1208
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !1212, !noalias !1210
  store <2 x i64> %i.cr, ptr %i.co, align 8, !alias.scope !1211, !noalias !1208
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !alias.scope !1212, !noalias !1210
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cu = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !1213, !noalias !1208
  %i.cv = load <2 x i64>, ptr %i.ct, align 8, !alias.scope !1214, !noalias !1210
  store <2 x i64> %i.cv, ptr %i.cs, align 8, !alias.scope !1213, !noalias !1208
  store <2 x i64> %i.cu, ptr %i.ct, align 8, !alias.scope !1214, !noalias !1210
  %i.cw = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.ch
  br i1 %exitcond.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine12split_at_mutBw_.exit11.i.i

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keyTjjENCNvB15_20get_file_line_groups0E0EB15_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.cf, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCshDScVpnq8df_5uu_pr8FileLine7reverseBw_.exit ], [ %i.cd, %bb.p ], [ %i.cb, %bb.o ] ; 2 uses
  %i.cx = lshr i64 %.sroa.023.0, 1
  %i.cy = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cz = sub nsw i64 %factor, %i.cx
  %i.da = add nuw nsw i64 %i.cy, %factor
  %i.db = mul i64 %i.cz, %.sroa.0.0
  %i.dc = mul i64 %i.da, %.sroa.0.0
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dd, i1 false)
  %i.df = trunc nuw nsw i64 %i.de to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph67, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit
  %.sroa.02.166 = phi i64 [ %.sroa.02.0, %.lr.ph67 ], [ %i.dg, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit ] ; 2 uses
  %.sroa.023.165 = phi i64 [ %.sroa.023.0, %.lr.ph67 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit ] ; 4 uses
  %i.dg = add i64 %.sroa.02.166, -1               ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.di, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.165, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.166, %bb.r ], [ 1, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dk, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dg
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4 ; 3 uses
  %i.dn = lshr i64 %i.dm, 1                       ; 8 uses
  %i.do = lshr i64 %.sroa.023.165, 1              ; 6 uses
  %i.dp = add nuw i64 %i.dn, %i.do                ; 4 uses
  %i.dq = sub i64 %.sroa.09.0, %i.dp
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.dq ; 6 uses
  %i.ds = icmp samesign ugt i64 %i.dp, %3
  %i.dt = trunc i64 %.sroa.023.165 to i1
  %i.du = or i64 %i.dm, %.sroa.023.165
  %i.dv = trunc i64 %i.du to i1
  %or.cond3.i = or i1 %i.ds, %i.dv
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = trunc i64 %i.dm to i1
  br i1 %i.dw, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dx = shl nuw nsw i64 %i.dp, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keyTjjENCNvB18_20get_file_line_groups0E0EB18_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.dt, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dy = or i64 %i.dn, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keyTjjENCNvB17_20get_file_line_groups0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.dr, i64 noundef range(i64 0, 192153584101141163) %i.dn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !1163
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.dr, i64 %i.dn
  %i.ee = or i64 %i.do, 1
  %i.ef = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 1
  %i.ei = xor i32 %i.eh, 126
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keyTjjENCNvB17_20get_file_line_groups0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.ed, i64 noundef range(i64 0, 192153584101141163) %i.do, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ei, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !1163
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.ej = icmp eq i64 %i.dn, 0
  %i.ek = icmp eq i64 %i.do, 0
  %or.cond.i = or i1 %i.ek, %i.ej
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keyTjjENCNvBZ_20get_file_line_groups0E0EBZ_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.do, i64 range(i64 0, -9223372036854775808) %i.dn) ; 2 uses
  %i.el = icmp samesign ult i64 %3, %..i.i
  br i1 %i.el, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keyTjjENCNvBZ_20get_file_line_groups0E0EBZ_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.dr, i64 %i.dn ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dn, %i.do  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.em, ptr %i.dr
  %i.en = mul nuw nsw i64 %..i.i, 48              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.en, i1 false), !alias.scope !1217
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.en ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val1.i.i.i = load ptr, ptr %.val, align 8, !noalias !1217, !nonnull !4, !align !11, !noundef !4
  %i.ep = load i64, ptr %.val1.i.i.i, align 8, !noalias !1217, !noundef !4 ; 4 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.preheader
  %i.eq = phi ptr [ %i.fu, %.preheader ], [ %i.eo, %.critedge.i ] ; 4 uses
  %i.er = phi ptr [ %i.fs, %.preheader ], [ %i.em, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.eu, %.preheader ], [ %i.m, %.critedge.i ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -48 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 -48 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 -16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !1220, !noalias !1221, !noundef !4
  %i.ex = add i64 %i.ew, 1
  %i.ey = mul i64 %i.ex, %i.ep
  %i.ez = getelementptr inbounds i8, ptr %i.eq, i64 -24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !1220, !noalias !1221, !noundef !4
  %i.fb = add i64 %i.ey, %i.fa                    ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !1220, !noalias !1221, !noundef !4
  %i.fe = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  %i.fg = add i64 %i.ff, 1
  %i.fh = mul i64 %i.fg, %i.ep
  %i.fi = getelementptr inbounds i8, ptr %i.er, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  %i.fk = add i64 %i.fh, %i.fj                    ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvCsjSVV5GABoor_7___rustc14___rust_realloc
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #24

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #27

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz2db2db() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz6system3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime14duration_since(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 12)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #27

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs2vKOLqTMYjT_3std4pathNtB6_7DisplayNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs7tKScEop1B6_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs3JjgEOiFeOI_4jiff5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs6JMX4GRUq9U_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcShE9drop_slowCs5skpMncfVhl_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArceE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noinline noreturn nounwind }
attributes #33 = { noinline nounwind }
attributes #34 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{!"branch_weights", i32 2002, i32 2000}
!11 = !{i64 8}
!12 = !{!"address", !"read_provenance"}
!13 = !{i64 0, i64 3}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 1, i64 536870913}
!16 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!17 = !{i32 0, i32 3}
!18 = !{i64 -1, i64 3}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{i64 0, i64 -9223372036854775807}
!21 = !{i64 -1, i64 -9223372036854775805}
!22 = distinct !{!22, !"_RNvCshDScVpnq8df_5uu_pr14header_content"}
!23 = distinct !{!23, !22, !"_RNvCshDScVpnq8df_5uu_pr14header_content: argument 1"}
!24 = distinct !{!24, !22, !"_RNvCshDScVpnq8df_5uu_pr14header_content: argument 0"}
!25 = distinct !{!25, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr"}
!26 = distinct !{!26, !25, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr: argument 0"}
!27 = distinct !{!27, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr"}
!28 = distinct !{!28, !27, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr: argument 0"}
!29 = distinct !{!29, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr"}
!30 = distinct !{!30, !29, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr: argument 0"}
!31 = distinct !{!31, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr"}
!32 = distinct !{!32, !31, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr: argument 0"}
!33 = distinct !{!33, !"_RNvCshDScVpnq8df_5uu_pr15trailer_content"}
!34 = distinct !{!34, !33, !"_RNvCshDScVpnq8df_5uu_pr15trailer_content: argument 0"}
!35 = distinct !{!35, !"_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr"}
!36 = distinct !{!36, !35, !"_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr: argument 1"}
!37 = distinct !{!37, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr"}
!38 = distinct !{!38, !37, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr: argument 0"}
!39 = distinct !{!39, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr"}
!40 = distinct !{!40, !39, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr: argument 0"}
!41 = distinct !{!41, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr"}
!42 = distinct !{!42, !41, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr: argument 0"}
!43 = distinct !{!43, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr"}
!44 = distinct !{!44, !43, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr: argument 0"}
!45 = distinct !{!45, !"_RNvXse_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr"}
!46 = distinct !{!46, !45, !"_RNvXse_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr: argument 0"}
!47 = distinct !{!47, !"_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_"}
!48 = distinct !{!48, !47, !"_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_: argument 1"}
!49 = distinct !{!49, !47, !"_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_: argument 2"}
!50 = distinct !{!50, !47, !"_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_: argument 0"}
!51 = distinct !{!51, !"_RNvCshDScVpnq8df_5uu_pr11get_columns"}
!52 = distinct !{!52, !51, !"_RNvCshDScVpnq8df_5uu_pr11get_columns: argument 0"}
!53 = distinct !{!53, !"_RNvCshDScVpnq8df_5uu_pr19to_table_short_file"}
!54 = distinct !{!54, !53, !"_RNvCshDScVpnq8df_5uu_pr19to_table_short_file: argument 1"}
!55 = distinct !{!55, !53, !"_RNvCshDScVpnq8df_5uu_pr19to_table_short_file: argument 0"}
!56 = distinct !{!56, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_"}
!57 = distinct !{!57, !56, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_: argument 0"}
!58 = distinct !{!58, !56, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_: argument 1"}
!59 = distinct !{!59, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr"}
!60 = distinct !{!60, !59, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr: argument 0"}
!61 = distinct !{!61, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_19to_table_short_file0EE11spec_extendB1C_"}
!62 = distinct !{!62, !61, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_19to_table_short_file0EE11spec_extendB1C_: argument 1"}
!63 = distinct !{!63, !61, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_19to_table_short_file0EE11spec_extendB1C_: argument 0"}
!64 = distinct !{!64, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_19to_table_short_file0EEB1p_"}
!65 = distinct !{!65, !64, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_19to_table_short_file0EEB1p_: argument 1"}
!66 = distinct !{!66, !64, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_19to_table_short_file0EEB1p_: argument 0"}
!67 = distinct !{!67, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2U_3VecIB3l_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_"}
!68 = distinct !{!68, !67, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2U_3VecIB3l_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_: argument 1"}
!69 = distinct !{!69, !67, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2U_3VecIB3l_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_: argument 0"}
!70 = distinct !{!70, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B3g_IB3e_B3d_E14extend_trustedBN_E0E0EB1t_"}
!71 = distinct !{!71, !70, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B3g_IB3e_B3d_E14extend_trustedBN_E0E0EB1t_: argument 1"}
!72 = distinct !{!72, !70, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr19to_table_short_file0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B3g_IB3e_B3d_E14extend_trustedBN_E0E0EB1t_: argument 0"}
!73 = distinct !{!73, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB31_19to_table_short_file0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3x_EE0E0E0EB31_"}
!74 = distinct !{!74, !73, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB31_19to_table_short_file0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3x_EE0E0E0EB31_: argument 0"}
!75 = distinct !{!75, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_"}
!76 = distinct !{!76, !75, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_: argument 0"}
!77 = distinct !{!77, !"_RNCNvCshDScVpnq8df_5uu_pr19to_table_short_file0B3_"}
!78 = distinct !{!78, !77, !"_RNCNvCshDScVpnq8df_5uu_pr19to_table_short_file0B3_: argument 1"}
!79 = distinct !{!79, !77, !"_RNCNvCshDScVpnq8df_5uu_pr19to_table_short_file0B3_: argument 0"}
!80 = distinct !{!80, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_19to_table_short_file00EE9from_iterB1I_"}
!81 = distinct !{!81, !80, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_19to_table_short_file00EE9from_iterB1I_: argument 1"}
!82 = distinct !{!82, !80, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_19to_table_short_file00EE9from_iterB1I_: argument 0"}
!83 = distinct !{!83, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr"}
!84 = distinct !{!84, !83, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr: argument 0"}
!85 = distinct !{!85, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_19to_table_short_file00EE11spec_extendB1y_"}
!86 = distinct !{!86, !85, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_19to_table_short_file00EE11spec_extendB1y_: argument 1"}
!87 = distinct !{!87, !85, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_19to_table_short_file00EE11spec_extendB1y_: argument 0"}
!88 = distinct !{!88, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_19to_table_short_file00EEB1l_"}
!89 = distinct !{!89, !88, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_19to_table_short_file00EEB1l_: argument 1"}
!90 = distinct !{!90, !88, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_19to_table_short_file00EEB1l_: argument 0"}
!91 = distinct !{!91, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2X_3VecINtNtBc_6option6OptionRNtB1p_8FileLineEE14extend_trustedB3_E0EB1p_"}
!92 = distinct !{!92, !91, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2X_3VecINtNtBc_6option6OptionRNtB1p_8FileLineEE14extend_trustedB3_E0EB1p_: argument 1"}
!93 = distinct !{!93, !91, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2X_3VecINtNtBc_6option6OptionRNtB1p_8FileLineEE14extend_trustedB3_E0EB1p_: argument 0"}
!94 = distinct !{!94, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtBc_6option6OptionRNtB1v_8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB42_3VecB3g_E14extend_trustedBN_E0E0EB1v_"}
!95 = distinct !{!95, !94, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtBc_6option6OptionRNtB1v_8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB42_3VecB3g_E14extend_trustedBN_E0E0EB1v_: argument 1"}
!96 = distinct !{!96, !94, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr19to_table_short_file00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtBc_6option6OptionRNtB1v_8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB42_3VecB3g_E14extend_trustedBN_E0E0EB1v_: argument 0"}
!97 = distinct !{!97, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEuNCNCNvB2u_19to_table_short_file00NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB47_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Z_EE0E0E0EB2u_"}
!98 = distinct !{!98, !97, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEuNCNCNvB2u_19to_table_short_file00NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB47_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Z_EE0E0E0EB2u_: argument 0"}
!99 = distinct !{!99, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEuNCNCNvB1k_19to_table_short_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3r_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1P_EE0E0E0B1k_"}
!100 = distinct !{!100, !99, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEuNCNCNvB1k_19to_table_short_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3r_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1P_EE0E0E0B1k_: argument 0"}
!101 = distinct !{!101, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2h_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvB1E_19to_table_short_file00EE0E0B1E_"}
!102 = distinct !{!102, !101, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2h_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvB1E_19to_table_short_file00EE0E0B1E_: argument 1"}
!103 = distinct !{!103, !101, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2h_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvB1E_19to_table_short_file00EE0E0B1E_: argument 0"}
!104 = distinct !{!104, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNCNvB1n_19to_table_short_file00EE0B1n_"}
!105 = distinct !{!105, !104, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNCNvB1n_19to_table_short_file00EE0B1n_: argument 1"}
!106 = distinct !{!106, !104, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNCNvB1n_19to_table_short_file00EE0B1n_: argument 0"}
!107 = distinct !{!107, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB2b_19to_table_short_file0EE0E0B2b_"}
!108 = distinct !{!108, !107, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB2b_19to_table_short_file0EE0E0B2b_: argument 0"}
!109 = distinct !{!109, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecIBz_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBR_4iter8adapters3map3MapINtNtNtBR_3ops5range5RangejENCNvB1r_19to_table_short_file0EE0B1r_"}
!110 = distinct !{!110, !109, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecIBz_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBR_4iter8adapters3map3MapINtNtNtBR_3ops5range5RangejENCNvB1r_19to_table_short_file0EE0B1r_: argument 0"}
!111 = distinct !{!111, !"_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_"}
!112 = distinct !{!112, !111, !"_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_: argument 0"}
!113 = distinct !{!113, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr"}
!114 = distinct !{!114, !113, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr: argument 0"}
!115 = distinct !{!115, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_"}
!116 = distinct !{!116, !115, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_: argument 0"}
!117 = distinct !{!117, !115, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_: argument 1"}
!118 = distinct !{!118, !"_RNvCshDScVpnq8df_5uu_pr8to_table"}
!119 = distinct !{!119, !118, !"_RNvCshDScVpnq8df_5uu_pr8to_table: argument 1"}
!120 = distinct !{!120, !118, !"_RNvCshDScVpnq8df_5uu_pr8to_table: argument 0"}
!121 = distinct !{!121, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_8to_table0EE9from_iterB1M_"}
!122 = distinct !{!122, !121, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_8to_table0EE9from_iterB1M_: argument 1"}
!123 = distinct !{!123, !121, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_8to_table0EE9from_iterB1M_: argument 0"}
!124 = distinct !{!124, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr"}
!125 = distinct !{!125, !124, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr: argument 0"}
!126 = distinct !{!126, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_8to_table0EE11spec_extendB1C_"}
!127 = distinct !{!127, !126, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_8to_table0EE11spec_extendB1C_: argument 1"}
!128 = distinct !{!128, !126, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecIBK_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_10SpecExtendBT_INtNtNtNtB12_4iter8adapters3map3MapINtNtNtB12_3ops5range5RangejENCNvB1C_8to_table0EE11spec_extendB1C_: argument 0"}
!129 = distinct !{!129, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_8to_table0EEB1p_"}
!130 = distinct !{!130, !129, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_8to_table0EEB1p_: argument 1"}
!131 = distinct !{!131, !129, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecIBx_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_3ops5range5RangejENCNvB1p_8to_table0EEB1p_: argument 0"}
!132 = distinct !{!132, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2I_3VecIB39_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_"}
!133 = distinct !{!133, !132, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2I_3VecIB39_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_: argument 1"}
!134 = distinct !{!134, !132, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2I_3VecIB39_INtNtBc_6option6OptionRNtB1n_8FileLineEEE14extend_trustedB3_E0EB1n_: argument 0"}
!135 = distinct !{!135, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1Y_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B34_IB32_B31_E14extend_trustedBN_E0E0EB1t_"}
!136 = distinct !{!136, !135, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1Y_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B34_IB32_B31_E14extend_trustedBN_E0E0EB1t_: argument 1"}
!137 = distinct !{!137, !135, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvCshDScVpnq8df_5uu_pr8to_table0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1Y_8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBc_6option6OptionRNtB1t_8FileLineEENCINvMsk_B34_IB32_B31_E14extend_trustedBN_E0E0EB1t_: argument 0"}
!138 = distinct !{!138, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB31_8to_table0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3x_EE0E0E0EB31_"}
!139 = distinct !{!139, !138, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB31_8to_table0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3x_EE0E0E0EB31_: argument 0"}
!140 = distinct !{!140, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_"}
!141 = distinct !{!141, !140, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_: argument 0"}
!142 = distinct !{!142, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB2b_8to_table0EE0E0B2b_"}
!143 = distinct !{!143, !142, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBe_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB2b_8to_table0EE0E0B2b_: argument 0"}
!144 = distinct !{!144, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecIBz_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBR_4iter8adapters3map3MapINtNtNtBR_3ops5range5RangejENCNvB1r_8to_table0EE0B1r_"}
!145 = distinct !{!145, !144, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecIBz_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE14extend_trustedINtNtNtNtBR_4iter8adapters3map3MapINtNtNtBR_3ops5range5RangejENCNvB1r_8to_table0EE0B1r_: argument 0"}
!146 = distinct !{!146, !"_RNCNvCshDScVpnq8df_5uu_pr8to_table0B3_"}
!147 = distinct !{!147, !146, !"_RNCNvCshDScVpnq8df_5uu_pr8to_table0B3_: argument 1"}
!148 = distinct !{!148, !146, !"_RNCNvCshDScVpnq8df_5uu_pr8to_table0B3_: argument 0"}
!149 = distinct !{!149, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_8to_table00EE9from_iterB1I_"}
!150 = distinct !{!150, !149, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_8to_table00EE9from_iterB1I_: argument 1"}
!151 = distinct !{!151, !149, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNCNvB1I_8to_table00EE9from_iterB1I_: argument 0"}
!152 = distinct !{!152, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr"}
!153 = distinct !{!153, !152, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr: argument 0"}
!154 = distinct !{!154, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_8to_table00EE11spec_extendB1y_"}
!155 = distinct !{!155, !154, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_8to_table00EE11spec_extendB1y_: argument 1"}
!156 = distinct !{!156, !154, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEINtB4_10SpecExtendBT_INtNtNtNtBY_4iter8adapters3map3MapINtNtNtBY_3ops5range5RangejENCNCNvB1y_8to_table00EE11spec_extendB1y_: argument 0"}
!157 = distinct !{!157, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_8to_table00EEB1l_"}
!158 = distinct !{!158, !157, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_8to_table00EEB1l_: argument 1"}
!159 = distinct !{!159, !157, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCNCNvB1l_8to_table00EEB1l_: argument 0"}
!160 = distinct !{!160, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNCNvCshDScVpnq8df_5uu_pr8to_table00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB2L_3VecINtNtBc_6option6OptionRNtB1p_8FileLineEE14extend_trustedB3_E0EB1p_"}
end_hunk_1
