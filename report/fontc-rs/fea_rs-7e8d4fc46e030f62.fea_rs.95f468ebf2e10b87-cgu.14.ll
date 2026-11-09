Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.14?download=true
inline.NumInlined: 882
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB17_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs:bb.a
  %i.ah = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.070113
  tail call void @llvm.assume(i1 %i.ah)
  %.not = icmp eq ptr %.sroa.023.069114, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB15_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %.sroa.0.071112, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.070113, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.071112, i64 4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1173
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ai, align 1, !alias.scope !1174
  store i32 %.sroa.01.0.copyload.i.i, ptr %i.b, align 4, !noalias !1173
  %i.aj = getelementptr [4 x i8], ptr %.sroa.0.071112, i64 %.sroa.15.070113 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.071112, i64 8 ; 3 uses
  %i.al = icmp ult ptr %.sroa.13.030.i.i, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.bu, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ai, %bb.f ], [ %i.bj, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ax, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.am = icmp eq ptr %.sroa.13.1.i.i, %i.aj      ; 2 uses
  %.sroa.03.0.i.i = select i1 %i.am, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %i.an = load i32, ptr %.sroa.03.0.i.i, align 1
  %i.ao = load i32, ptr %.sroa.0.071112, align 1
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.ar = icmp ult i32 %i.ap, %i.aq
  %i.as = zext i1 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.23.1.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 1, !alias.scope !1174, !noalias !1175
  store i32 %i.au, ptr %.sroa.015.1.i.i, align 1, !alias.scope !1174, !noalias !1175
  %i.av = load i32, ptr %.sroa.03.0.i.i, align 1, !noalias !1176
  store i32 %i.av, ptr %i.at, align 1, !alias.scope !1174, !noalias !1175
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = add i64 %.sroa.23.1.i.i, %i.aw          ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 4
  br i1 %i.am, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1x_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.f ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.ai, %bb.f ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.13.033.i.i, align 1
  %i.az = load i32, ptr %.sroa.0.071112, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.23.031.i.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1, !alias.scope !1174, !noalias !1177
  store i32 %i.bf, ptr %.sroa.015.032.i.i, align 1, !alias.scope !1174, !noalias !1177
  %i.bg = load i32, ptr %.sroa.13.033.i.i, align 1, !alias.scope !1174, !noalias !1177
  store i32 %i.bg, ptr %i.be, align 1, !alias.scope !1174, !noalias !1177
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = add i64 %.sroa.23.031.i.i, %i.bh        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 8 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = load i32, ptr %.sroa.0.071112, align 1
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bo = icmp ult i32 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bi ; 2 uses
  %i.br = load i32, ptr %i.bq, align 1, !alias.scope !1174, !noalias !1178
  store i32 %i.br, ptr %.sroa.13.033.i.i, align 1, !alias.scope !1174, !noalias !1178
  %i.bs = load i32, ptr %i.bj, align 1, !alias.scope !1174, !noalias !1178
  store i32 %i.bs, ptr %i.bq, align 1, !alias.scope !1174, !noalias !1178
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = add i64 %i.bi, %i.bt                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 12 ; 3 uses
  %i.bv = icmp ult ptr %.sroa.13.0.i.i, %i.ak
  br i1 %i.bv, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1x_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1173
  %.not7.i = icmp ult i64 %i.ax, %.sroa.15.070113
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1x_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1x_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %.sroa.0.071112, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.070113, i64 noundef 0, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.071112, i64 %i.ax ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = xor i64 %i.ax, -1
  %i.bz = add i64 %.sroa.15.070113, %i.by
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB17_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %.sroa.0.071112, i64 noundef %i.ax, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.023.069114, i32 noundef %i.f, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB15_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.071112, i64 %i.ag
  %i.cb = load i32, ptr %.sroa.023.069114, align 1
  %i.cc = load i32, ptr %i.ca, align 1
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.cf = icmp ult i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %.sroa.0.071112, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.070113, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.071112, i64 4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1182
  %.sroa.01.0.copyload.i.i41 = load i32, ptr %i.cg, align 1, !alias.scope !1183
  store i32 %.sroa.01.0.copyload.i.i41, ptr %i.a, align 4, !noalias !1182
  %i.ch = getelementptr [4 x i8], ptr %.sroa.0.071112, i64 %.sroa.15.070113 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4     ; 2 uses
  %.sroa.13.028.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.071112, i64 8 ; 3 uses
  %i.cj = icmp ult ptr %.sroa.13.028.i.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i50, label %.preheader.i.i42.preheader

.preheader.i.i42.preheader:                       ; preds = %.lr.ph.i.i50, %bb.i
  %.sroa.23.1.i.i45.ph = phi i64 [ 0, %bb.i ], [ %i.dp, %.lr.ph.i.i50 ]
  %.sroa.13.1.i.i46.ph = phi ptr [ %.sroa.13.028.i.i, %bb.i ], [ %.sroa.13.0.i.i51, %.lr.ph.i.i50 ]
  %.sroa.013.1.i.i.ph = phi ptr [ %i.cg, %bb.i ], [ %i.df, %.lr.ph.i.i50 ]
  br label %.preheader.i.i42

.preheader.i.i42:                                 ; preds = %.preheader.i.i42.preheader, %.preheader.i.i42
  %.sroa.23.1.i.i45 = phi i64 [ %i.cu, %.preheader.i.i42 ], [ %.sroa.23.1.i.i45.ph, %.preheader.i.i42.preheader ] ; 2 uses
  %.sroa.13.1.i.i46 = phi ptr [ %.sroa.13.1.sroa.gep.i.i48, %.preheader.i.i42 ], [ %.sroa.13.1.i.i46.ph, %.preheader.i.i42.preheader ] ; 4 uses
  %.sroa.013.1.i.i = phi ptr [ %.sroa.13.1.i.i46, %.preheader.i.i42 ], [ %.sroa.013.1.i.i.ph, %.preheader.i.i42.preheader ]
  %i.ck = icmp eq ptr %.sroa.13.1.i.i46, %i.ch    ; 2 uses
  %.sroa.03.0.i.i47 = select i1 %i.ck, ptr %i.a, ptr %.sroa.13.1.i.i46 ; 2 uses
  %i.cl = load i32, ptr %.sroa.0.071112, align 1
  %i.cm = load i32, ptr %.sroa.03.0.i.i47, align 1
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.cp = icmp uge i32 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.sroa.23.1.i.i45 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 1, !alias.scope !1183, !noalias !1184
  store i32 %i.cr, ptr %.sroa.013.1.i.i, align 1, !alias.scope !1183, !noalias !1184
  %i.cs = load i32, ptr %.sroa.03.0.i.i47, align 1, !noalias !1185
  store i32 %i.cs, ptr %i.cq, align 1, !alias.scope !1183, !noalias !1184
  %i.ct = zext i1 %i.cp to i64
  %i.cu = add i64 %.sroa.23.1.i.i45, %i.ct        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i46, i64 4
  br i1 %i.ck, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECscScJTt9VrQp_6fea_rs.exit.i, label %.preheader.i.i42

.lr.ph.i.i50:                                     ; preds = %bb.i, %.lr.ph.i.i50
  %.sroa.13.031.i.i = phi ptr [ %.sroa.13.0.i.i51, %.lr.ph.i.i50 ], [ %.sroa.13.028.i.i, %bb.i ] ; 3 uses
  %.sroa.013.030.i.i = phi ptr [ %i.df, %.lr.ph.i.i50 ], [ %i.cg, %bb.i ] ; 3 uses
  %.sroa.23.029.i.i = phi i64 [ %i.dp, %.lr.ph.i.i50 ], [ 0, %bb.i ] ; 2 uses
  %i.cv = load i32, ptr %.sroa.0.071112, align 1
  %i.cw = load i32, ptr %.sroa.13.031.i.i, align 1
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cz = icmp uge i32 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.sroa.23.029.i.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 1, !alias.scope !1183, !noalias !1186
  store i32 %i.db, ptr %.sroa.013.030.i.i, align 1, !alias.scope !1183, !noalias !1186
  %i.dc = load i32, ptr %.sroa.13.031.i.i, align 1, !alias.scope !1183, !noalias !1186
  store i32 %i.dc, ptr %i.da, align 1, !alias.scope !1183, !noalias !1186
  %i.dd = zext i1 %i.cz to i64
  %i.de = add i64 %.sroa.23.029.i.i, %i.dd        ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i.i, i64 8 ; 4 uses
  %i.dg = load i32, ptr %.sroa.0.071112, align 1
  %i.dh = load i32, ptr %i.df, align 1
  %i.di = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.dh)
  %i.dk = icmp uge i32 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.de ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 1, !alias.scope !1183, !noalias !1187
  store i32 %i.dm, ptr %.sroa.13.031.i.i, align 1, !alias.scope !1183, !noalias !1187
  %i.dn = load i32, ptr %i.df, align 1, !alias.scope !1183, !noalias !1187
  store i32 %i.dn, ptr %i.dl, align 1, !alias.scope !1183, !noalias !1187
  %i.do = zext i1 %i.dk to i64
  %i.dp = add i64 %i.de, %i.do                    ; 2 uses
  %.sroa.13.0.i.i51 = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i.i, i64 12 ; 3 uses
  %i.dq = icmp ult ptr %.sroa.13.0.i.i51, %i.ci
  br i1 %i.dq, label %.lr.ph.i.i50, label %.preheader.i.i42.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %.preheader.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1182
  %.not7.i49 = icmp ult i64 %i.cu, %.sroa.15.070113
  br i1 %.not7.i49, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECscScJTt9VrQp_6fea_rs.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECscScJTt9VrQp_6fea_rs.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %.sroa.0.071112, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.070113, i64 noundef 0, i64 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.dr = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %i.ds = sub nuw nsw i64 %.sroa.15.070113, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.071112, i64 %i.dr
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit
  %.sroa.023.0.be = phi ptr [ %i.bw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bz, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ %i.ds, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bx, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ %i.dt, %bb.k ] ; 3 uses
  %i.du = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.du, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB17_20sort_unstable_by_keyNtB19_5LevelNCNvMs0_B19_NtB19_13DiagnosticSet18split_off_warnings0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(48) %2, i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph118

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph118

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1f_20sort_unstable_by_keyNtB1h_5LevelNCNvMs0_B1h_NtB1h_13DiagnosticSet18split_off_warnings0E0EB1j_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.078.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.077.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078.lcssa, i64 noundef %.sroa.15.077.lcssa, ptr noalias nofree nonnull align 8 poison) #23
  br label %bb.c

.lr.ph118:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.075117 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.076116 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.077115 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.078114 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add i32 %.sroa.026.075117, -1            ; 3 uses
  %i.g = lshr i64 %.sroa.15.077115, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 192
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 336
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.077115, 64
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SBZ_20sort_unstable_by_keyNtB11_5LevelNCNvMs0_B11_NtB11_13DiagnosticSet18split_off_warnings0E0EB13_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph118
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB14_20sort_unstable_by_keyNtB16_5LevelNCNvMs0_B16_NtB16_13DiagnosticSet18split_off_warnings0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.078114, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SBZ_20sort_unstable_by_keyNtB11_5LevelNCNvMs0_B11_NtB11_13DiagnosticSet18split_off_warnings0E0EB13_.exit.i: ; preds = %.lr.ph118
  %i.l = getelementptr i8, ptr %.sroa.0.078114, i64 40
  %.val6.i = load i8, ptr %i.l, align 8, !range !14, !alias.scope !1208, !noundef !8 ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 40
  %.val7.i = load i8, ptr %i.m, align 8, !range !14, !alias.scope !1208, !noundef !8 ; 2 uses
  %i.n = icmp samesign ult i8 %.val6.i, %.val7.i  ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 40
  %.val5.i = load i8, ptr %i.o, align 8, !range !14, !alias.scope !1208, !noundef !8 ; 2 uses
  %i.p = icmp samesign ult i8 %.val6.i, %.val5.i
  %i.q = xor i1 %i.n, %i.p
  %i.r = icmp samesign ult i8 %.val7.i, %.val5.i
  %i.s = xor i1 %i.n, %i.r
  %..i.i = select i1 %i.s, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.q, ptr %.sroa.0.078114, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SBZ_20sort_unstable_by_keyNtB11_5LevelNCNvMs0_B11_NtB11_13DiagnosticSet18split_off_warnings0E0EB13_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SBZ_20sort_unstable_by_keyNtB11_5LevelNCNvMs0_B11_NtB11_13DiagnosticSet18split_off_warnings0E0EB13_.exit.i ], [ %i.k, %bb.b ]
  %i.t = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.u = ptrtoint ptr %.sroa.0.078114 to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.v, 48          ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.077115
  tail call void @llvm.assume(i1 %i.w)
  %.not = icmp eq ptr %.sroa.023.076116, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 192153584101141162) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !1211
  %i.y = mul nuw nsw i64 %.sroa.15.077115, 48
  %i.z = getelementptr i8, ptr %.sroa.0.078114, i64 %i.y ; 2 uses
  %.sroa.11.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 96
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 40
  %.val1.i.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !14, !alias.scope !1213, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ae, %.preheader.i.i ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep19.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 5 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.028.i.i, %.lr.ph.i.i ]
  %i.aa = icmp eq ptr %.sroa.11.1.i.i, %i.z       ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %.val.i.i.i = load i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !14, !noalias !1214, !noundef !8
  %i.ab = icmp samesign ult i8 %.val.i.i.i, %.val1.i.pre.i.i
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !alias.scope !1215, !noalias !1216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.i.i, i64 48, i1 false), !noalias !1214
  %i.ad = zext i1 %i.ab to i64
  %i.ae = add i64 %.sroa.19.1.i.i, %i.ad          ; 6 uses
  %.sroa.11.1.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 48
  br i1 %i.aa, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0EB1B_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.028.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.025.i.i, %bb.d ] ; 4 uses
  %.sroa.011.027.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.19.026.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.011.027.i.i, i64 88
  %.val.i9.i.i = load i8, ptr %i.af, align 8, !range !14, !alias.scope !1215, !noalias !1217, !noundef !8
  %i.ag = icmp samesign ult i8 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.sroa.19.026.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.027.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !alias.scope !1215, !noalias !1217
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.028.i.i, i64 48, i1 false), !alias.scope !1215, !noalias !1217
  %i.ai = zext i1 %i.ag to i64
  %i.aj = add i64 %.sroa.19.026.i.i, %i.ai        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i, i64 48 ; 3 uses
  %i.ak = icmp ult ptr %.sroa.11.0.i.i, %i.z
  br i1 %i.ak, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1212
  %.not7.i = icmp ult i64 %i.ae, %.sroa.15.077115
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.077115, i64 noundef 0, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.078114, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = xor i64 %i.ae, -1
  %i.ao = add i64 %.sroa.15.077115, %i.an
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB17_20sort_unstable_by_keyNtB19_5LevelNCNvMs0_B19_NtB19_13DiagnosticSet18split_off_warnings0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.023.076116, i32 noundef %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB15_20sort_unstable_by_keyNtB17_5LevelNCNvMs0_B17_NtB17_13DiagnosticSet18split_off_warnings0E0EB19_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %i.v
  %i.aq = getelementptr i8, ptr %.sroa.023.076116, i64 40
  %.sroa.023.0.val = load i8, ptr %i.aq, align 8, !range !14, !noundef !8
  %i.ar = getelementptr i8, ptr %i.ap, i64 40
  %.val = load i8, ptr %i.ar, align 8, !range !14, !noundef !8
  %i.as = icmp samesign ult i8 %.sroa.023.0.val, %.val
  br i1 %i.as, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 192153584101141162) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !1220
  %i.au = mul nuw nsw i64 %.sroa.15.077115, 48
  %i.av = getelementptr i8, ptr %.sroa.0.078114, i64 %i.au ; 2 uses
  %.sroa.11.025.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 96
  %.phi.trans.insert.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 40
  %.val1.i.pre.i.i43 = load i8, ptr %.phi.trans.insert.i.i42, align 8, !range !14, !alias.scope !1222, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i44

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i44, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.ba, %.preheader.i.i50 ], [ %i.bf, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep19.i.i58, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ] ; 5 uses
  %.sroa.011.1.i.i53 = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ]
  %i.aw = icmp eq ptr %.sroa.11.1.i.i52, %i.av    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %.val.i.i.i57 = load i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !14, !noalias !1223, !noundef !8
  %i.ax = icmp samesign uge i8 %.val1.i.pre.i.i43, %.val.i.i.i57
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.1.i.i53, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !alias.scope !1224, !noalias !1225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.i.i54, i64 48, i1 false), !noalias !1223
  %i.az = zext i1 %i.ax to i64
  %i.ba = add i64 %.sroa.19.1.i.i51, %i.az        ; 4 uses
  %.sroa.11.1.sroa.gep19.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 48
  br i1 %i.aw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0E0EB1B_.exit.i, label %.preheader.i.i50

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44, %bb.g
  %.sroa.11.028.i.i45 = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ], [ %.sroa.11.025.i.i41, %bb.g ] ; 4 uses
  %.sroa.011.027.i.i46 = phi ptr [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ], [ %i.at, %bb.g ] ; 2 uses
  %.sroa.19.026.i.i47 = phi i64 [ %i.bf, %.lr.ph.i.i44 ], [ 0, %bb.g ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.011.027.i.i46, i64 88
  %.val.i9.i.i48 = load i8, ptr %i.bb, align 8, !range !14, !alias.scope !1224, !noalias !1226, !noundef !8
  %i.bc = icmp samesign uge i8 %.val1.i.pre.i.i43, %.val.i9.i.i48
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.sroa.19.026.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.027.i.i46, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !alias.scope !1224, !noalias !1226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.028.i.i45, i64 48, i1 false), !alias.scope !1224, !noalias !1226
  %i.be = zext i1 %i.bc to i64
  %i.bf = add i64 %.sroa.19.026.i.i47, %i.be      ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i45, i64 48 ; 3 uses
  %i.bg = icmp ult ptr %.sroa.11.0.i.i49, %i.av
  br i1 %i.bg, label %.lr.ph.i.i44, label %.preheader.i.i50

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0E0EB1B_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1221
  %.not7.i59 = icmp ult i64 %i.ba, %.sroa.15.077115
  br i1 %.not7.i59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtB1z_5LevelNCNvMs0_B1z_NtB1z_13DiagnosticSet18split_off_warnings0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.077115, i64 noundef 0, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.bh = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bi = sub nuw nsw i64 %.sroa.15.077115, %i.bh
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.078114, i64 %i.bh
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.al, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.ao, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit ], [ %i.bi, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic12split_at_mutBy_.exit ], [ %i.bj, %bb.i ] ; 3 uses
  %i.bk = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bk, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3s_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = icmp samesign ult i64 %1, 33
  br i1 %i.w, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.x = icmp eq i32 %3, 0
  br i1 %i.x, label %.lr.ph._crit_edge, label %.lr.ph121

.lr.ph:                                           ; preds = %.backedge
  %i.y = icmp eq i32 %i.z, 0
  br i1 %i.y, label %.lr.ph._crit_edge, label %.lr.ph121

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3A_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3G_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.075.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.074.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075.lcssa, i64 noundef %.sroa.15.074.lcssa, ptr noalias nofree nonnull align 8 poison) #23
  br label %bb.e

.lr.ph121:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.072120 = phi i32 [ %i.z, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.073119 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.074118 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.075117 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.z = add i32 %.sroa.026.072120, -1            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.aa = lshr i64 %.sroa.15.074118, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.aa, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.aa, 112
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 %.idx2.i ; 3 uses
  %i.ad = icmp samesign ult i64 %.sroa.15.074118, 64
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph121
  %i.ae = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB14_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3p_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3v_(ptr noundef nonnull readonly align 8 %.sroa.0.075117, ptr noundef readonly %i.ab, ptr noundef readonly %i.ac, i64 noundef %i.aa)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit

bb.c:                                             ; preds = %.lr.ph121
  %i.af = getelementptr i8, ptr %.sroa.0.075117, i64 8
  %.val6.i = load i32, ptr %i.af, align 8, !alias.scope !1251 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i = load i32, ptr %i.ag, align 8, !alias.scope !1251 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1251
  store i32 %.val6.i, ptr %i.v, align 4, !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1251
  store i32 %.val7.i, ptr %i.u, align 4, !noalias !1251
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = load i32, ptr %i.u, align 4
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.al = tail call i32 @llvm.ucmp.i32.i32(i32 %i.aj, i32 %i.ak) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1251
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.val5.i = load i32, ptr %i.am, align 8, !alias.scope !1251 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1251
  store i32 %.val6.i, ptr %i.t, align 4, !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1251
  store i32 %.val5.i, ptr %i.s, align 4, !noalias !1251
  %i.an = load i32, ptr %i.t, align 4
  %i.ao = load i32, ptr %i.s, align 4
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.ar = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ap, i32 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1251
  %i.as = xor i32 %i.ar, %i.al
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1251
  store i32 %.val7.i, ptr %i.r, align 4, !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1251
  store i32 %.val5.i, ptr %i.q, align 4, !noalias !1251
  %i.au = load i32, ptr %i.r, align 4
  %i.av = load i32, ptr %i.q, align 4
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ay = tail call i32 @llvm.ucmp.i32.i32(i32 %i.aw, i32 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1251
  %i.az = xor i32 %i.ay, %i.al
  %i.ba = icmp slt i32 %i.az, 0
  %..i.i = select i1 %i.ba, ptr %i.ac, ptr %i.ab
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ae, %bb.b ], [ %.sroa.0.075117, %bb.c ], [ %..i.i, %bb.d ]
  %i.bb = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.bc = ptrtoint ptr %.sroa.0.075117 to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.bd, 4          ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.074118
  tail call void @llvm.assume(i1 %i.be)
  %.not = icmp eq ptr %.sroa.023.073119, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075117, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.074118, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !1254
  %i.bg = getelementptr [16 x i8], ptr %.sroa.0.075117, i64 %.sroa.15.074118 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16    ; 2 uses
  %.sroa.13.035.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 32 ; 3 uses
  %i.bi = icmp ult ptr %.sroa.13.035.i.i, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 8
  %.val1.i12.i.i = load i32, ptr %i.bj, align 8, !alias.scope !1256, !noalias !8 ; 3 uses
  br i1 %i.bi, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.035.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.017.1.i.i.ph = phi ptr [ %i.bf, %bb.f ], [ %i.ce, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.bt, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep28.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.017.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.bk = icmp eq ptr %.sroa.13.1.i.i, %i.bg      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bk, ptr %i.p, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, ptr %i.p, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1258
  store i32 %.val.i.i.i, ptr %i.o, align 4, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1258
  store i32 %.val1.i12.i.i, ptr %i.n, align 4, !noalias !1258
  %i.bl = load i32, ptr %i.o, align 4
  %i.bm = load i32, ptr %i.n, align 4
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bp = icmp ult i32 %i.bn, %i.bo
  %i.bq = zext i1 %i.bp to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1258
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !alias.scope !1259, !noalias !1260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1257
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = add i64 %.sroa.23.1.i.i, %i.bs          ; 6 uses
  %.sroa.13.1.sroa.gep28.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.bk, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3S_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3Y_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.038.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.035.i.i, %bb.f ] ; 2 uses
  %.sroa.017.037.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %i.bf, %bb.f ] ; 5 uses
  %.sroa.23.036.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.017.037.i.i, i64 24
  %.val.i11.i.i = load i32, ptr %i.bu, align 8, !alias.scope !1259, !noalias !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1262
  store i32 %.val.i11.i.i, ptr %i.m, align 4, !noalias !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1262
  store i32 %.val1.i12.i.i, ptr %i.l, align 4, !noalias !1262
  %i.bv = load i32, ptr %i.m, align 4
  %i.bw = load i32, ptr %i.l, align 4
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = icmp ult i32 %i.bx, %i.by
  %i.ca = zext i1 %i.bz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1262
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.sroa.23.036.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.037.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !1259, !noalias !1261
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.038.i.i, i64 16, i1 false), !alias.scope !1259, !noalias !1261
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = add i64 %.sroa.23.036.i.i, %i.cc        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.037.i.i, i64 32 ; 3 uses
  %i.cf = getelementptr i8, ptr %.sroa.017.037.i.i, i64 40
  %.val.i14.i.i = load i32, ptr %i.cf, align 8, !alias.scope !1259, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1264
  store i32 %.val.i14.i.i, ptr %i.k, align 4, !noalias !1264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1264
  store i32 %.val1.i12.i.i, ptr %i.j, align 4, !noalias !1264
  %i.cg = load i32, ptr %i.k, align 4
  %i.ch = load i32, ptr %i.j, align 4
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.ck = icmp ult i32 %i.ci, %i.cj
  %i.cl = zext i1 %i.ck to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1264
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.cd ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.038.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !1259, !noalias !1263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !alias.scope !1259, !noalias !1263
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = add i64 %i.cd, %i.cn                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.037.i.i, i64 48 ; 3 uses
  %i.cp = icmp ult ptr %.sroa.13.0.i.i, %i.bh
  br i1 %i.cp, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3S_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3Y_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1255
  %.not7.i = icmp ult i64 %i.bt, %.sroa.15.074118
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3S_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3Y_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3S_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3Y_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075117, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.074118, i64 noundef 0, i64 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.075117, i64 %i.bt ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = xor i64 %i.bt, -1
  %i.ct = add i64 %.sroa.15.074118, %i.cs
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3s_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075117, i64 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.073119, i32 noundef %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3q_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3w_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 %i.bd
  %i.cv = getelementptr i8, ptr %.sroa.023.073119, i64 8
  %.sroa.023.0.val = load i32, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 8
  %.val = load i32, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %.sroa.023.0.val, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.val, ptr %i.h, align 4
  %i.cx = load i32, ptr %i.i, align 4
  %i.cy = load i32, ptr %i.h, align 4
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.db = icmp ult i32 %i.cz, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.db, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075117, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.074118, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !noalias !1267
  %i.dd = getelementptr [16 x i8], ptr %.sroa.0.075117, i64 %.sroa.15.074118 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 32 ; 3 uses
  %i.df = icmp ult ptr %.sroa.13.033.i.i, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.075117, i64 8
  %.val1.i12.i.i41 = load i32, ptr %i.dg, align 8, !alias.scope !1269, !noalias !8 ; 3 uses
  br i1 %i.df, label %.lr.ph.i.i52, label %.preheader.i.i42.preheader

.preheader.i.i42.preheader:                       ; preds = %.lr.ph.i.i52, %bb.i
  %.sroa.23.1.i.i45.ph = phi i64 [ 0, %bb.i ], [ %i.ei, %.lr.ph.i.i52 ]
  %.sroa.13.1.i.i46.ph = phi ptr [ %.sroa.13.033.i.i, %bb.i ], [ %.sroa.13.0.i.i54, %.lr.ph.i.i52 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.dc, %bb.i ], [ %i.dz, %.lr.ph.i.i52 ]
  br label %.preheader.i.i42

.preheader.i.i42:                                 ; preds = %.preheader.i.i42.preheader, %.preheader.i.i42
  %.sroa.23.1.i.i45 = phi i64 [ %i.dp, %.preheader.i.i42 ], [ %.sroa.23.1.i.i45.ph, %.preheader.i.i42.preheader ] ; 2 uses
  %.sroa.13.1.i.i46 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i42 ], [ %.sroa.13.1.i.i46.ph, %.preheader.i.i42.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i46, %.preheader.i.i42 ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i42.preheader ]
  %i.dh = icmp eq ptr %.sroa.13.1.i.i46, %i.dd    ; 3 uses
  %.sroa.01.0.i.i47 = select i1 %i.dh, ptr %i.g, ptr %.sroa.13.1.i.i46
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i48.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dh, ptr %i.g, ptr %.sroa.13.1.i.i46
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i48.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i48.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i50 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i48.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1271
  store i32 %.val1.i12.i.i41, ptr %i.f, align 4, !noalias !1271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1271
  store i32 %.val.i.i.i50, ptr %i.e, align 4, !noalias !1271
  %i.di = load i32, ptr %i.f, align 4
  %i.dj = load i32, ptr %i.e, align 4
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dm = icmp uge i32 %i.dk, %i.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1271
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.23.1.i.i45 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !1272, !noalias !1273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i47, i64 16, i1 false), !noalias !1270
  %i.do = zext i1 %i.dm to i64
  %i.dp = add i64 %.sroa.23.1.i.i45, %i.do        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i46, i64 16
  br i1 %i.dh, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB4e_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0E0EB4k_.exit.i, label %.preheader.i.i42

.lr.ph.i.i52:                                     ; preds = %bb.i, %.lr.ph.i.i52
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.0.i.i54, %.lr.ph.i.i52 ], [ %.sroa.13.033.i.i, %bb.i ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.dz, %.lr.ph.i.i52 ], [ %i.dc, %bb.i ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ %i.ei, %.lr.ph.i.i52 ], [ 0, %bb.i ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i53 = load i32, ptr %i.dq, align 8, !alias.scope !1272, !noalias !1274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1275
  store i32 %.val1.i12.i.i41, ptr %i.d, align 4, !noalias !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1275
  store i32 %.val.i11.i.i53, ptr %i.c, align 4, !noalias !1275
  %i.dr = load i32, ptr %i.d, align 4
  %i.ds = load i32, ptr %i.c, align 4
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.du = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.dv = icmp uge i32 %i.dt, %i.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1275
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !alias.scope !1272, !noalias !1274
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !1272, !noalias !1274
  %i.dx = zext i1 %i.dv to i64
  %i.dy = add i64 %.sroa.23.034.i.i, %i.dx        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.ea = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load i32, ptr %i.ea, align 8, !alias.scope !1272, !noalias !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1277
  store i32 %.val1.i12.i.i41, ptr %i.b, align 4, !noalias !1277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1277
  store i32 %.val.i13.i.i, ptr %i.a, align 4, !noalias !1277
  %i.eb = load i32, ptr %i.b, align 4
  %i.ec = load i32, ptr %i.a, align 4
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ee = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  %i.ef = icmp uge i32 %i.ed, %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1277
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !alias.scope !1272, !noalias !1276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !1272, !noalias !1276
  %i.eh = zext i1 %i.ef to i64
  %i.ei = add i64 %i.dy, %i.eh                    ; 2 uses
  %.sroa.13.0.i.i54 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.ej = icmp ult ptr %.sroa.13.0.i.i54, %i.de
  br i1 %i.ej, label %.lr.ph.i.i52, label %.preheader.i.i42.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB4e_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0E0EB4k_.exit.i: ; preds = %.preheader.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1268
  %.not7.i51 = icmp ult i64 %i.dp, %.sroa.15.074118
  br i1 %.not7.i51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB4e_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0E0EB4k_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB4e_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0E0EB4k_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord14swap_uncheckedCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.075117, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.074118, i64 noundef 0, i64 noundef %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.ek = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %i.el = sub nuw nsw i64 %.sroa.15.074118, %i.ek
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.075117, i64 %i.ek
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit
  %.sroa.023.0.be = phi ptr [ %i.cq, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.ct, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ %i.el, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cr, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecord12split_at_mutCscScJTt9VrQp_6fea_rs.exit ], [ %i.em, %bb.k ] ; 3 uses
  %i.en = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.en, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB19_NtB19_15BaseAxisBuilder3new0E0EB1f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %2, i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = icmp samesign ult i64 %1, 33
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = icmp eq i32 %3, 0
  br i1 %i.t, label %.lr.ph._crit_edge, label %.lr.ph112

.lr.ph:                                           ; preds = %.backedge
  %i.u = icmp eq i32 %i.v, 0
  br i1 %i.u, label %.lr.ph._crit_edge, label %.lr.ph112

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1h_NtB1h_15BaseAxisBuilder3new0E0EB1n_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.072.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.071.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072.lcssa, i64 noundef %.sroa.15.071.lcssa, ptr noalias nofree nonnull align 8 poison) #23
  br label %bb.e

.lr.ph112:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.069111 = phi i32 [ %i.v, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.070110 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.071109 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.072108 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.v = add i32 %.sroa.026.069111, -1            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.w = lshr i64 %.sroa.15.071109, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.w, 7
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.w, 224
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 %.idx2.i ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.15.071109, 64
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph112
  %i.aa = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB14_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB16_NtB16_15BaseAxisBuilder3new0E0EB1c_(ptr noundef nonnull readonly align 8 %.sroa.0.072108, ptr noundef readonly %i.x, ptr noundef readonly %i.y, i64 noundef %i.w)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit

bb.c:                                             ; preds = %.lr.ph112
  %i.ab = getelementptr i8, ptr %.sroa.0.072108, i64 24
  %.val6.i = load i32, ptr %i.ab, align 8, !alias.scope !1298 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 24
  %.val7.i = load i32, ptr %i.ac, align 8, !alias.scope !1298 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1298
  store i32 %.val6.i, ptr %i.r, align 4, !noalias !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1298
  store i32 %.val7.i, ptr %i.q, align 4, !noalias !1298
  %i.ad = load i32, ptr %i.r, align 4
  %i.ae = load i32, ptr %i.q, align 4
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = tail call i32 @llvm.ucmp.i32.i32(i32 %i.af, i32 %i.ag) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1298
  %i.ai = getelementptr i8, ptr %i.y, i64 24
  %.val5.i = load i32, ptr %i.ai, align 8, !alias.scope !1298 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1298
  store i32 %.val6.i, ptr %i.p, align 4, !noalias !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1298
  store i32 %.val5.i, ptr %i.o, align 4, !noalias !1298
  %i.aj = load i32, ptr %i.p, align 4
  %i.ak = load i32, ptr %i.o, align 4
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.an = tail call i32 @llvm.ucmp.i32.i32(i32 %i.al, i32 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1298
  %i.ao = xor i32 %i.an, %i.ah
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1298
  store i32 %.val7.i, ptr %i.n, align 4, !noalias !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1298
  store i32 %.val5.i, ptr %i.m, align 4, !noalias !1298
  %i.aq = load i32, ptr %i.n, align 4
  %i.ar = load i32, ptr %i.m, align 4
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.au = tail call i32 @llvm.ucmp.i32.i32(i32 %i.as, i32 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1298
  %i.av = xor i32 %i.au, %i.ah
  %i.aw = icmp slt i32 %i.av, 0
  %..i.i = select i1 %i.aw, ptr %i.y, ptr %i.x
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.aa, %bb.b ], [ %.sroa.0.072108, %bb.c ], [ %..i.i, %bb.d ]
  %i.ax = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ay = ptrtoint ptr %.sroa.0.072108 to i64
  %i.az = sub nuw i64 %i.ax, %i.ay                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.az, 5          ; 3 uses
  %i.ba = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.071109
  tail call void @llvm.assume(i1 %i.ba)
  %.not = icmp eq ptr %.sroa.023.070110, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord14swap_uncheckedBC_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072108, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.071109, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !1301
  %i.bc = shl nuw nsw i64 %.sroa.15.071109, 5
  %i.bd = getelementptr i8, ptr %.sroa.0.072108, i64 %i.bc ; 2 uses
  %.sroa.11.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 24
  %.val1.i.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1303, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.bn, %.preheader.i.i ], [ %i.bx, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep20.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 5 uses
  %.sroa.012.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.029.i.i, %.lr.ph.i.i ]
  %i.be = icmp eq ptr %.sroa.11.1.i.i, %i.bd      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.be, ptr %i.l, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.be, ptr %i.l, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1305
  store i32 %.val.i.i.i, ptr %i.k, align 4, !noalias !1305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1305
  store i32 %.val1.i.pre.i.i, ptr %i.j, align 4, !noalias !1305
  %i.bf = load i32, ptr %i.k, align 4
  %i.bg = load i32, ptr %i.j, align 4
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bj = icmp ult i32 %i.bh, %i.bi
  %i.bk = zext i1 %i.bj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1305
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !1306, !noalias !1307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i, i64 32, i1 false), !noalias !1304
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = add i64 %.sroa.19.1.i.i, %i.bm          ; 6 uses
  %.sroa.11.1.sroa.gep20.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 32
  br i1 %i.be, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0EB1F_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.11.029.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.026.i.i, %bb.f ] ; 4 uses
  %.sroa.012.028.i.i = phi ptr [ %.sroa.11.029.i.i, %.lr.ph.i.i ], [ %i.bb, %bb.f ] ; 2 uses
  %.sroa.19.027.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.012.028.i.i, i64 56
  %.val.i9.i.i = load i32, ptr %i.bo, align 8, !alias.scope !1306, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1309
  store i32 %.val.i9.i.i, ptr %i.i, align 4, !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1309
  store i32 %.val1.i.pre.i.i, ptr %i.h, align 4, !noalias !1309
  %i.bp = load i32, ptr %i.i, align 4
  %i.bq = load i32, ptr %i.h, align 4
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bt = icmp ult i32 %i.br, %i.bs
  %i.bu = zext i1 %i.bt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1309
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.19.027.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.028.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !alias.scope !1306, !noalias !1308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.029.i.i, i64 32, i1 false), !alias.scope !1306, !noalias !1308
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = add i64 %.sroa.19.027.i.i, %i.bw        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.029.i.i, i64 32 ; 3 uses
  %i.by = icmp ult ptr %.sroa.11.0.i.i, %i.bd
  br i1 %i.by, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0EB1F_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1302
  %.not7.i = icmp ult i64 %i.bn, %.sroa.15.071109
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0EB1F_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0EB1F_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord14swap_uncheckedBC_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072108, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.071109, i64 noundef 0, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.072108, i64 %i.bn ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = xor i64 %i.bn, -1
  %i.cc = add i64 %.sroa.15.071109, %i.cb
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB17_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB19_NtB19_15BaseAxisBuilder3new0E0EB1f_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072108, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.023.070110, i32 noundef %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB15_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB17_NtB17_15BaseAxisBuilder3new0E0EB1d_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 %i.az
  %i.ce = getelementptr i8, ptr %.sroa.023.070110, i64 24
  %.sroa.023.0.val = load i32, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 24
  %.val = load i32, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.023.0.val, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val, ptr %i.f, align 4
  %i.cg = load i32, ptr %i.g, align 4
  %i.ch = load i32, ptr %i.f, align 4
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.ck = icmp ult i32 %i.ci, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ck, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord14swap_uncheckedBC_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072108, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.071109, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 32, i1 false), !noalias !1312
  %i.cm = shl nuw nsw i64 %.sroa.15.071109, 5
  %i.cn = getelementptr i8, ptr %.sroa.0.072108, i64 %i.cm ; 2 uses
  %.sroa.11.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 64
  %.phi.trans.insert.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.072108, i64 24
  %.val1.i.pre.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 8, !alias.scope !1314, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i43

.preheader.i.i46:                                 ; preds = %.lr.ph.i.i43, %.preheader.i.i46
  %.sroa.19.1.i.i47 = phi i64 [ %i.cw, %.preheader.i.i46 ], [ %i.df, %.lr.ph.i.i43 ] ; 2 uses
  %.sroa.11.1.i.i48 = phi ptr [ %.sroa.11.1.sroa.gep19.i.i, %.preheader.i.i46 ], [ %.sroa.11.0.i.i45, %.lr.ph.i.i43 ] ; 5 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i48, %.preheader.i.i46 ], [ %.sroa.11.028.i.i, %.lr.ph.i.i43 ]
  %i.co = icmp eq ptr %.sroa.11.1.i.i48, %i.cn    ; 3 uses
  %.sroa.01.0.i.i49 = select i1 %i.co, ptr %i.e, ptr %.sroa.11.1.i.i48
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i50.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.co, ptr %i.e, ptr %.sroa.11.1.i.i48
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i50.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i50.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val.i.i.i52 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i50.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1316
  store i32 %.val1.i.pre.i.i42, ptr %i.d, align 4, !noalias !1316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1316
  store i32 %.val.i.i.i52, ptr %i.c, align 4, !noalias !1316
  %i.cp = load i32, ptr %i.d, align 4
  %i.cq = load i32, ptr %i.c, align 4
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.ct = icmp uge i32 %i.cr, %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1316
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %.sroa.19.1.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false), !alias.scope !1317, !noalias !1318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i49, i64 32, i1 false), !noalias !1315
  %i.cv = zext i1 %i.ct to i64
  %i.cw = add i64 %.sroa.19.1.i.i47, %i.cv        ; 4 uses
  %.sroa.11.1.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i48, i64 32
  br i1 %i.co, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0E0EB1F_.exit.i, label %.preheader.i.i46

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43, %bb.i
  %.sroa.11.028.i.i = phi ptr [ %.sroa.11.0.i.i45, %.lr.ph.i.i43 ], [ %.sroa.11.025.i.i, %bb.i ] ; 4 uses
  %.sroa.011.027.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i43 ], [ %i.cl, %bb.i ] ; 2 uses
  %.sroa.19.026.i.i = phi i64 [ %i.df, %.lr.ph.i.i43 ], [ 0, %bb.i ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.sroa.011.027.i.i, i64 56
  %.val.i9.i.i44 = load i32, ptr %i.cx, align 8, !alias.scope !1317, !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1320
  store i32 %.val1.i.pre.i.i42, ptr %i.b, align 4, !noalias !1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1320
  store i32 %.val.i9.i.i44, ptr %i.a, align 4, !noalias !1320
  %i.cy = load i32, ptr %i.b, align 4
  %i.cz = load i32, ptr %i.a, align 4
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.dc = icmp uge i32 %i.da, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1320
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %.sroa.19.026.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.027.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false), !alias.scope !1317, !noalias !1319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.028.i.i, i64 32, i1 false), !alias.scope !1317, !noalias !1319
  %i.de = zext i1 %i.dc to i64
  %i.df = add i64 %.sroa.19.026.i.i, %i.de        ; 2 uses
  %.sroa.11.0.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i, i64 32 ; 3 uses
  %i.dg = icmp ult ptr %.sroa.11.0.i.i45, %i.cn
  br i1 %i.dg, label %.lr.ph.i.i43, label %.preheader.i.i46

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0E0EB1F_.exit.i: ; preds = %.preheader.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1313
  %.not7.i53 = icmp ult i64 %i.cw, %.sroa.15.071109
  br i1 %.not7.i53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0E0EB1F_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1z_NtB1z_15BaseAxisBuilder3new0E0E0EB1F_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord14swap_uncheckedBC_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.072108, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.071109, i64 noundef 0, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.dh = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %i.di = sub nuw nsw i64 %.sroa.15.071109, %i.dh
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.072108, i64 %i.dh
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit
  %.sroa.023.0.be = phi ptr [ %i.bz, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit ], [ %i.di, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecord12split_at_mutBC_.exit ], [ %i.dj, %bb.k ] ; 3 uses
  %i.dk = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dk, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB17_20sort_unstable_by_keyjNCNvNtB1C_4edit11apply_edits0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %2, i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph113

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph113

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvNtB1K_4edit11apply_edits0E0EB1M_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.074.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.073.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074.lcssa, i64 noundef %.sroa.15.073.lcssa, ptr noalias nofree nonnull align 8 poison) #23
  br label %bb.c

.lr.ph113:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.071112 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.072111 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.073110 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.074109 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add i32 %.sroa.026.071112, -1            ; 3 uses
  %i.g = lshr i64 %.sroa.15.073110, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 280
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.073110, 64
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvNtB1u_4edit11apply_edits0E0EB1w_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph113
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB14_20sort_unstable_by_keyjNCNvNtB1z_4edit11apply_edits0E0EB1B_(ptr noundef nonnull readonly align 8 %.sroa.0.074109, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvNtB1u_4edit11apply_edits0E0EB1w_.exit.i: ; preds = %.lr.ph113
  %.val6.i = load i64, ptr %.sroa.0.074109, align 8, !alias.scope !1341, !noundef !8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !1341, !noundef !8 ; 2 uses
  %i.l = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !1341, !noundef !8 ; 2 uses
  %i.m = icmp ult i64 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i64 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.074109, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvNtB1u_4edit11apply_edits0E0EB1w_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvNtB1u_4edit11apply_edits0E0EB1w_.exit.i ], [ %i.k, %bb.b ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = ptrtoint ptr %.sroa.0.074109 to i64
  %i.s = sub nuw i64 %i.q, %i.r                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.s, 40          ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.073110
  tail call void @llvm.assume(i1 %i.t)
  %.not = icmp eq ptr %.sroa.023.072111, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE14swap_uncheckedB11_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !1344
  %i.v = mul nuw nsw i64 %.sroa.15.073110, 40
  %i.w = getelementptr i8, ptr %.sroa.0.074109, i64 %i.v ; 2 uses
  %.sroa.11.022.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 80
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.074109, align 8, !alias.scope !1346, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ab, %.preheader.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.025.i.i, %.lr.ph.i.i ]
  %i.x = icmp eq ptr %.sroa.11.1.i.i, %i.w        ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.x, ptr %i.b, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !noalias !1347, !noundef !8
  %i.y = icmp ult i64 %.val.i.i.i, %.val1.i.pre.i.i
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !alias.scope !1348, !noalias !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i, i64 40, i1 false), !noalias !1347
  %i.aa = zext i1 %i.y to i64
  %i.ab = add i64 %.sroa.19.1.i.i, %i.aa          ; 6 uses
  %.sroa.11.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 40
  br i1 %i.x, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0EB24_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.025.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.022.i.i, %bb.d ] ; 5 uses
  %.sroa.011.024.i.i = phi ptr [ %.sroa.11.025.i.i, %.lr.ph.i.i ], [ %i.u, %bb.d ]
  %.sroa.19.023.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i9.i.i = load i64, ptr %.sroa.11.025.i.i, align 8, !alias.scope !1348, !noalias !1350, !noundef !8
  %i.ac = icmp ult i64 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.19.023.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.024.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !alias.scope !1348, !noalias !1350
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.025.i.i, i64 40, i1 false), !alias.scope !1348, !noalias !1350
  %i.ae = zext i1 %i.ac to i64
  %i.af = add i64 %.sroa.19.023.i.i, %i.ae        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i, i64 40 ; 3 uses
  %i.ag = icmp ult ptr %.sroa.11.0.i.i, %i.w
  br i1 %i.ag, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0EB24_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1345
  %.not7.i = icmp ult i64 %i.ab, %.sroa.15.073110
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0EB24_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0EB24_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE14swap_uncheckedB11_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.074109, i64 %i.ab ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = xor i64 %i.ab, -1
  %i.ak = add i64 %.sroa.15.073110, %i.aj
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB17_20sort_unstable_by_keyjNCNvNtB1C_4edit11apply_edits0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074109, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %.sroa.023.072111, i32 noundef %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB15_20sort_unstable_by_keyjNCNvNtB1A_4edit11apply_edits0E0EB1C_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %i.s
  %.sroa.023.0.val = load i64, ptr %.sroa.023.072111, align 8, !noundef !8
  %.val = load i64, ptr %i.al, align 8, !noundef !8
  %i.am = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.am, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE14swap_uncheckedB11_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.an, i64 40, i1 false), !noalias !1353
  %i.ao = mul nuw nsw i64 %.sroa.15.073110, 40
  %i.ap = getelementptr i8, ptr %.sroa.0.074109, i64 %i.ao ; 2 uses
  %.sroa.11.022.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 80
  %.val1.i.pre.i.i42 = load i64, ptr %.sroa.0.074109, align 8, !alias.scope !1355, !noalias !8 ; 2 uses
  br label %.lr.ph.i.i43

.preheader.i.i49:                                 ; preds = %.lr.ph.i.i43, %.preheader.i.i49
  %.sroa.19.1.i.i50 = phi i64 [ %i.au, %.preheader.i.i49 ], [ %i.ay, %.lr.ph.i.i43 ] ; 2 uses
  %.sroa.11.1.i.i51 = phi ptr [ %.sroa.11.1.sroa.gep.i.i55, %.preheader.i.i49 ], [ %.sroa.11.0.i.i48, %.lr.ph.i.i43 ] ; 4 uses
  %.sroa.011.1.i.i52 = phi ptr [ %.sroa.11.1.i.i51, %.preheader.i.i49 ], [ %.sroa.11.025.i.i44, %.lr.ph.i.i43 ]
  %i.aq = icmp eq ptr %.sroa.11.1.i.i51, %i.ap    ; 2 uses
  %.sroa.01.0.i.i53 = select i1 %i.aq, ptr %i.a, ptr %.sroa.11.1.i.i51 ; 2 uses
  %.val.i.i.i54 = load i64, ptr %.sroa.01.0.i.i53, align 8, !noalias !1356, !noundef !8
  %i.ar = icmp uge i64 %.val1.i.pre.i.i42, %.val.i.i.i54
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.sroa.19.1.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.1.i.i52, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !alias.scope !1357, !noalias !1358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i53, i64 40, i1 false), !noalias !1356
  %i.at = zext i1 %i.ar to i64
  %i.au = add i64 %.sroa.19.1.i.i50, %i.at        ; 4 uses
  %.sroa.11.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i51, i64 40
  br i1 %i.aq, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0E0EB24_.exit.i, label %.preheader.i.i49

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43, %bb.g
  %.sroa.11.025.i.i44 = phi ptr [ %.sroa.11.0.i.i48, %.lr.ph.i.i43 ], [ %.sroa.11.022.i.i41, %bb.g ] ; 5 uses
  %.sroa.011.024.i.i45 = phi ptr [ %.sroa.11.025.i.i44, %.lr.ph.i.i43 ], [ %i.an, %bb.g ]
  %.sroa.19.023.i.i46 = phi i64 [ %i.ay, %.lr.ph.i.i43 ], [ 0, %bb.g ] ; 2 uses
  %.val.i9.i.i47 = load i64, ptr %.sroa.11.025.i.i44, align 8, !alias.scope !1357, !noalias !1359, !noundef !8
  %i.av = icmp uge i64 %.val1.i.pre.i.i42, %.val.i9.i.i47
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.sroa.19.023.i.i46 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.024.i.i45, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !alias.scope !1357, !noalias !1359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.025.i.i44, i64 40, i1 false), !alias.scope !1357, !noalias !1359
  %i.ax = zext i1 %i.av to i64
  %i.ay = add i64 %.sroa.19.023.i.i46, %i.ax      ; 2 uses
  %.sroa.11.0.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i44, i64 40 ; 3 uses
  %i.az = icmp ult ptr %.sroa.11.0.i.i48, %i.ap
  br i1 %i.az, label %.lr.ph.i.i43, label %.preheader.i.i49

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0E0EB24_.exit.i: ; preds = %.preheader.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1354
  %.not7.i56 = icmp ult i64 %i.au, %.sroa.15.073110
  br i1 %.not7.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0E0EB24_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvNtB22_4edit11apply_edits0E0E0EB24_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE14swap_uncheckedB11_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.ba = add nuw nsw i64 %i.au, 1                ; 2 uses
  %i.bb = sub nuw nsw i64 %.sroa.15.073110, %i.ba
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.074109, i64 %i.ba
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit
  %.sroa.023.0.be = phi ptr [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.ak, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit ], [ %i.bb, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ai, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtNtNtB4_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeE12split_at_mutB11_.exit ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bd = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bd, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree5stackINtB2_5StackNtNtB4_6cursor7NodeRefKj4_E4pushB6_(ptr noalias nofree noundef align 8 dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1363, !noundef !8 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !21, !alias.scope !1363, !noundef !8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefE8push_mutBL_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #23, !noalias !1364
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefE8push_mutBL_.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefE8push_mutBL_.exit: ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1363, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.k = add i64 %i.e, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !1363
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefE8push_mutBL_.exit
  %i.l = load i64, ptr %i.a, align 8, !noundef !8
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.a, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx28expect_semi_and_nothing_else(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !1371, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !1371, !noundef !8 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.val1.i, 5
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i.i
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %.loopexit2, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i
  %i.d = phi ptr [ %i.e, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i ], [ %.val.i, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.g = load i16, ptr %i.f, align 4, !range !10, !noalias !1372, !noundef !8 ; 3 uses
  %.not.i.i.i5.i.i.i = icmp eq i16 %i.g, -1       ; 2 uses
  br i1 %.not.i.i.i5.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i16, ptr %i.h, align 8, !range !11, !noalias !1372, !noundef !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.01.0.i.i.i6.i.i.i = phi i16 [ %i.i, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i ]
  switch i16 %.sroa.01.0.i.i.i6.i.i.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3nth.exit.i.i [
    i16 10, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i
    i16 11, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i
    i16 15, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i
  ]

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i: ; preds = %bb.c, %bb.c, %bb.c
  %i.j = icmp eq ptr %i.e, %i.b
  br i1 %i.j, label %.loopexit2, label %.lr.ph.i.i.i.i

_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3nth.exit.i.i: ; preds = %bb.c
  br i1 %.not.i.i.i5.i.i.i, label %bb.d, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx7matches.exit.i

bb.d:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3nth.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i16, ptr %i.k, align 8, !range !11, !noalias !1371, !noundef !8
  br label %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx7matches.exit.i

_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx7matches.exit.i: ; preds = %bb.d, %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3nth.exit.i.i
  %.sroa.04.0.i.i = phi i16 [ %i.l, %bb.d ], [ %i.g, %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3nth.exit.i.i ]
  %i.m = icmp eq i16 %.sroa.04.0.i.i, 12
  br i1 %i.m, label %bb.e, label %.loopexit2

bb.e:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx7matches.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.e
  %i.n = load ptr, ptr %0, align 8, !alias.scope !1374, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i16, ptr %i.o, align 4, !range !10, !noalias !1374, !noundef !8 ; 2 uses
  %.not2.i.i = icmp eq i16 %i.p, -1
  br i1 %.not2.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i16, ptr %i.q, align 8, !range !11, !noalias !1374, !noundef !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.01.0.i.i = phi i16 [ %i.r, %bb.f ], [ %i.p, %.lr.ph.i.i ]
  switch i16 %.sroa.01.0.i.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3eat.exit [
    i16 10, label %bb.h
    i16 11, label %bb.h
    i16 15, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  tail call fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx8bump_raw(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  %i.s = load i64, ptr %i.a, align 8, !alias.scope !1374, !noundef !8
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3eat.exit, label %.lr.ph.i.i

_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3eat.exit: ; preds = %bb.g, %bb.h
  tail call fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx8bump_raw(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %.loopexit

.loopexit2:                                       ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtBT_10ReparseCtx3nth0INtB7_5FnMutTRRNtBV_11NodeOrTokenEE8call_mutBX_.exit.i.i.i.i, %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx7matches.exit.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !align !9, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 140
  %i.w = load i8, ptr %i.v, align 4, !range !22, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx3eat.exit, %.loopexit2
  ret void

bb.i:                                             ; preds = %.loopexit2
  tail call fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB3_10ReparseCtx14add_diagnosticReEB7_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 49)
  %i.y = load i64, ptr %i.a, align 8, !noundef !8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  tail call fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx8bump_raw(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  %i.aa = load i64, ptr %i.a, align 8, !noundef !8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree7rewriteNtB2_10ReparseCtx6expect(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i16 noundef range(i16 1, 65) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
end_hunk_0
