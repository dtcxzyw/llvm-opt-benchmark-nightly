Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators27___pyfunction_lollipop_graph:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx10generators28___pyfunction_heavy_hex_graph(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 3 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 3 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 3 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 3 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 3 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 33 uses
  %i.ay = alloca [64 x i8], align 8               ; 4 uses
  %i.az = alloca [72 x i8], align 8               ; 7 uses
  %i.ba = alloca [64 x i8], align 8               ; 4 uses
  %i.bb = alloca [72 x i8], align 8               ; 6 uses
  %i.bc = alloca [88 x i8], align 8               ; 14 uses
  %i.bd = alloca [72 x i8], align 8               ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = alloca [72 x i8], align 8               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = alloca [72 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2493, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef 2)
  %i.bj = load i64, ptr %i.bh, align 8, !range !68, !noundef !67
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.co

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.bn = load ptr, ptr %i.bi, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !102216
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noundef nonnull %i.bn), !noalias !102216
  %i.bo = load i64, ptr %i.bb, align 8, !range !68, !noalias !102216, !noundef !67
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !71

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !102216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !102216
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2491, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !102216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !102216
  %.sroa.013.0.copyload = load i64, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload, ptr %i.bs, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false)
  br label %bb.co

bb.e:                                             ; preds = %bb.c
  %i.bt = load i64, ptr %i.bq, align 8, !noalias !102216, !noundef !67 ; 15 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  store i64 0, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !102216
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !102217
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.az, ptr noundef nonnull %i.bw), !noalias !102217
  %i.bx = load i8, ptr %i.az, align 8, !range !69, !noalias !102217, !noundef !67
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 1, ptr %i.bz, align 1
  store i8 0, ptr %i.bd, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !69, !noalias !102217, !noundef !67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !102217
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !102217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false), !noalias !102217
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1120, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !102217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !102217
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false)
  br label %bb.co

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !69, !noundef !67
  %i.ci = and i64 %i.bt, 1
  %i.cj = icmp eq i64 %i.ci, 0
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sink.i.sroa.gep38.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sink.i.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink.i.sroa.gep40.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sink.i.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sink.i.sroa.gep42.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink.i.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink.i.sroa.gep44.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.i.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.i.sroa.gep46.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink774.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink774.i.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink774.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink774.i.sroa.gep49.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink774.i.sroa.gep50.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink774.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink774.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink774.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink774.i.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink774.i.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.cj, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = mul i64 %i.bt, 5
  %i.cl = shl i64 %i.bt, 1                        ; 2 uses
  %i.cm = add i64 %i.ck, -2
  %i.cn = mul i64 %i.cm, %i.bt
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = lshr exact i64 %i.co, 1
  %i.cq = add nsw i64 %i.bt, -1                   ; 10 uses
  %i.cr = add i64 %i.bt, 1
  %i.cs = add i64 %i.cr, %i.cl
  %i.ct = mul i64 %i.cs, %i.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !102218
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.ax, i64 noundef %i.cp, i64 noundef %i.ct), !noalias !102218
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false), !alias.scope !102219, !noalias !102218
  store i32 -1, ptr %i.cv, align 8, !alias.scope !102219, !noalias !102218
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  store i32 -1, ptr %i.cw, align 4, !alias.scope !102219, !noalias !102218
  %i.cx = icmp eq i64 %i.bt, 1
  br i1 %i.cx, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = mul i64 %i.bt, %i.bt                    ; 9 uses
  %i.cz = lshr i64 %i.bt, 1
  %i.da = mul i64 %i.cq, %i.bt                    ; 14 uses
  %i.db = shl i64 %i.cy, 2                        ; 6 uses
  %i.dc = icmp ugt i64 %i.cy, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.db, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.dc, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.k, !prof !73

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102220
  %i.dd = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102220 ; 11 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.l, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.db) #61
          to label %.noexc.i.i unwind label %bb.o, !noalias !102218

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dg, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.dg = add i64 %.val4.i.i.i.i.i.i.i.i.i, 1     ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !102222
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !102223

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !102224)
  %i.dh = load i64, ptr %i.aw, align 8, !range !123, !alias.scope !102224, !noalias !102225, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dh, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !77

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !102226
  %i.di = load i64, ptr %i.df, align 8, !alias.scope !102224, !noalias !102225
  store i64 %i.dh, ptr %i.av, align 8, !noalias !102226
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !noalias !102226
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !102223

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.n
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.dk = load i32, ptr %i.df, align 8, !alias.scope !102224, !noalias !102225, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !102222
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.dk, ptr %i.dl, align 4, !noalias !102227
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, %i.cy
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i, label %bb.m

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.m
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102228
  br label %.body.i.i

bb.o:                                             ; preds = %bb.q, %bb.p, %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !102229
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc110.i.i unwind label %bb.o, !noalias !102218

.noexc110.i.i:                                    ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !102230)
  %i.dn = load i64, ptr %i.au, align 8, !range !123, !alias.scope !102230, !noalias !102231, !noundef !67 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dn, -1
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !102232
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !102230, !noalias !102231
  store i64 %i.dn, ptr %i.at, align 8, !noalias !102232
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !102232
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc111.i.i unwind label %bb.o, !noalias !102218

.noexc111.i.i:                                    ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !102229
  %.sroa.032.0.copyload34.i = load i64, ptr %i.ax, align 8, !noalias !102233
  %.sroa.8.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload61 = load ptr, ptr %.sroa.8.0..sroa_idx36.i, align 8, !noalias !102233
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dr = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102233
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ds = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102233
  %.sroa.8.i.sroa.10.0.copyload66 = load ptr, ptr %i.cu, align 8, !noalias !102233
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload67 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102233
  %i.dt = load <2 x i32>, ptr %i.cv, align 8, !noalias !102233
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i
  %i.du = add nuw i64 %i.cz, 1                    ; 3 uses
  %i.dv = mul i64 %i.du, %i.cq                    ; 8 uses
  %i.dw = shl i64 %i.dv, 2                        ; 4 uses
  %i.dx = icmp ugt i64 %i.dv, 4611686018427387903
  %.not.i.i.i115.i.i = icmp ugt i64 %i.dw, 9223372036854775804
  %or.cond.i.i.i116.i.i = or i1 %i.dx, %.not.i.i.i115.i.i
  br i1 %or.cond.i.i.i116.i.i, label %bb.v, label %bb.s, !prof !73

bb.s:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102234
  %i.dz = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102234 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = ptrtoint ptr %i.dz to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i

bb.v:                                             ; preds = %bb.t, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i
  %.sroa.410.0.ph.i.i139.i.i = phi i64 [ 4, %bb.t ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i139.i.i, i64 %i.dw) #61
          to label %.noexc140.i.i unwind label %bb.y, !noalias !102218

.noexc140.i.i:                                    ; preds = %bb.v
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i118.i.i = phi i64 [ %i.eb, %bb.u ], [ 4, %bb.s ]
  %.sroa.410.0.i.i119.i.i = phi i64 [ %i.dv, %bb.u ], [ 0, %bb.s ] ; 6 uses
  %i.ec = inttoptr i64 %.sroa.10.0.i.i118.i.i to ptr ; 8 uses
  %i.ed = icmp samesign ule i64 %i.dv, %.sroa.410.0.i.i119.i.i
  call void @llvm.assume(i1 %i.ed)
  %.not368.i.i.a = icmp eq i64 %i.dv, 0           ; 2 uses
  br i1 %.not368.i.i.a, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

.lr.ph.i.i.i.i.i.i.i124.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i124.i.i
  %.val4.i.i.i.i.i.i.i125.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i124.i.i ], [ %i.ef, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.val4.i.i.i.i.i.i.i125.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !102236
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i133.i.i unwind label %.loopexit.i.i.i.i.i.i.i127.i.i, !noalias !102237

.noexc.i.i.i.i.i.i.i133.i.i:                      ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !102238)
  %i.eg = load i64, ptr %i.as, align 8, !range !123, !alias.scope !102238, !noalias !102239, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i134.i.i = icmp eq i64 %i.eg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i134.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, label %bb.x, !prof !77

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i133.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !102240
  %i.eh = load i64, ptr %i.ee, align 8, !alias.scope !102238, !noalias !102239
  store i64 %i.eg, ptr %i.ar, align 8, !noalias !102240
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !noalias !102240
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i137.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i, !noalias !102237

.noexc7.i.i.i.i.i.i.i137.i.i:                     ; preds = %bb.x
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i133.i.i
  %i.ej = load i32, ptr %i.ee, align 8, !alias.scope !102238, !noalias !102239, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !102236
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.val4.i.i.i.i.i.i.i125.i.i
  store i32 %i.ej, ptr %i.ek, align 4, !noalias !102241
  %exitcond.not.i.i.i.i.i.i.i138.i.i = icmp eq i64 %i.ef, %i.dv
  br i1 %exitcond.not.i.i.i.i.i.i.i138.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i, label %bb.w

.loopexit.i.i.i.i.i.i.i127.i.i:                   ; preds = %bb.w
  %lpad.loopexit.i.i.i.i.i.i.i128.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i

.loopexit.split-lp.i.i.i.i.i.i.i135.i.i:          ; preds = %bb.x
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i, %.loopexit.i.i.i.i.i.i.i127.i.i
  %lpad.phi.i.i.i.i.i.i.i130.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i128.i.i, %.loopexit.i.i.i.i.i.i.i127.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i136.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i ]
  %i.el = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102242
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i, %.body172.i.i, %bb.y, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i ], [ %i.em, %bb.y ], [ %lpad.phi.i.i.i.i.i.i.i130.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i ], [ %.pn.i.i, %.body172.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %.body.i.i

bb.y:                                             ; preds = %bb.v
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.en = shl i64 %i.da, 2                        ; 4 uses
  %i.eo = icmp ugt i64 %i.da, 4611686018427387903
  %.not.i.i.i146.i.i = icmp ugt i64 %i.en, 9223372036854775804
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators28___pyfunction_heavy_hex_graph:bb.a
  %i.gr = add nsw i64 %i.fy, -1
  %i.gs = mul i64 %.sroa.10320.0489.i.i, %i.cq
  %i.gt = mul i64 %i.gb, %i.cq
  br label %bb.ap

.thread.i.i:                                      ; preds = %bb.ar, %bb.aj, %bb.ai
  %i.gu = icmp eq i64 %i.ga, 0
  br i1 %i.gu, label %._crit_edge.i.i, label %.lr.ph492.i.i

bb.aj:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !102252
  %i.gv = icmp eq ptr %i.gw, %i.ge
  br i1 %i.gv, label %.thread.i.i, label %.peel.next.i.i, !llvm.loop !102124

.peel.next.i.i:                                   ; preds = %bb.aj, %.peel.next.i.preheader.i
  %.sroa.0324.0485.i.i = phi ptr [ %i.gw, %bb.aj ], [ %i.gq, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.7326.0484.i.i = phi i64 [ %i.gx, %bb.aj ], [ 1, %.peel.next.i.preheader.i ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0324.0485.i.i, i64 4 ; 2 uses
  %i.gx = add nuw nsw i64 %.sroa.7326.0484.i.i, 1
  %i.gy = shl nuw nsw i64 %.sroa.7326.0484.i.i, 1
  %i.gz = add nsw i64 %i.gy, -2                   ; 2 uses
  %.reass.i.i = add i64 %invariant.op.i.i, %i.gz  ; 3 uses
  %i.ha = icmp ult i64 %.reass.i.i, %i.da
  br i1 %i.ha, label %bb.ak, label %.invoke772.i.i

bb.ak:                                            ; preds = %.peel.next.i.i
  %i.hb = load i32, ptr %.sroa.0324.0485.i.i, align 4, !noalias !102218, !noundef !67
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.reass.i.i
  %i.hd = load i32, ptr %i.hc, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !102253
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hb, i32 noundef %i.hd, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !102218

.noexc191.i.i:                                    ; preds = %bb.ak
  %i.he = load i64, ptr %i.ao, align 8, !range !123, !noalias !102253, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.he, 2
  br i1 %cond.i.i.i.i, label %.loopexit593.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102254)
  %.not.i.i.i190.i.i = icmp eq i64 %i.he, -1
  br i1 %.not.i.i.i190.i.i, label %bb.am, label %.loopexit594.i.i, !prof !77

.loopexit594.i.i:                                 ; preds = %bb.al
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !102254, !noalias !102255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !102256
  store i64 %i.he, ptr %i.al, align 8, !noalias !102256
  br label %.invoke770.i.i

.loopexit593.i.i:                                 ; preds = %.noexc191.i.i
  %.phi.trans.insert614.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre615.i.i = load i64, ptr %.phi.trans.insert614.i.i, align 8, !noalias !102253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !102253
  store i64 %.pre615.i.i, ptr %i.an, align 8, !noalias !102253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !102253
  store ptr %i.an, ptr %i.am, align 8, !noalias !102253
  br label %.invoke.i.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !102253
  %.reass488.i.i = add i64 %invariant.op487.i.i, %i.gz ; 3 uses
  %i.hf = icmp ult i64 %.reass488.i.i, %i.da
  br i1 %i.hf, label %bb.an, label %.invoke772.i.i

bb.an:                                            ; preds = %bb.am
  %i.hg = load i32, ptr %.sroa.0324.0485.i.i, align 4, !noalias !102218, !noundef !67
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.reass488.i.i
  %i.hi = load i32, ptr %i.hh, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !102252
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hg, i32 noundef %i.hi, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc197.i.i unwind label %.loopexit.i.i, !noalias !102218

.noexc197.i.i:                                    ; preds = %bb.an
  %i.hj = load i64, ptr %i.ak, align 8, !range !123, !noalias !102252, !noundef !67 ; 3 uses
  %cond.i.i194.i.i = icmp eq i64 %i.hj, 2
  br i1 %cond.i.i194.i.i, label %.loopexit596.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc197.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102257)
  %.not.i.i.i195.i.i = icmp eq i64 %i.hj, -1
  br i1 %.not.i.i.i195.i.i, label %bb.aj, label %.loopexit597.i.i, !prof !77

.loopexit597.i.i:                                 ; preds = %bb.ao
  %.phi.trans.insert610.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre611.i.i = load i64, ptr %.phi.trans.insert610.i.i, align 8, !alias.scope !102257, !noalias !102258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !102259
  store i64 %i.hj, ptr %i.ah, align 8, !noalias !102259
  br label %.invoke770.i.i

.loopexit596.i.i:                                 ; preds = %.noexc197.i.i
  %.phi.trans.insert612.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre613.i.i = load i64, ptr %.phi.trans.insert612.i.i, align 8, !noalias !102252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !102252
  store i64 %.pre613.i.i, ptr %i.aj, align 8, !noalias !102252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !102252
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !102252
  br label %.invoke.i.i

bb.ap:                                            ; preds = %bb.ar, %.lr.ph483.i.i
  %.sroa.7329.0482.i.i = phi i64 [ 0, %.lr.ph483.i.i ], [ %i.hl, %bb.ar ] ; 3 uses
  %.sroa.0327.0481.i.i = phi ptr [ %.sroa.0317.0491.i.i, %.lr.ph483.i.i ], [ %i.hk, %bb.ar ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0327.0481.i.i, i64 4 ; 2 uses
  %i.hl = add nuw nsw i64 %.sroa.7329.0482.i.i, 1
  %.not90.i.i = icmp eq i64 %.sroa.7329.0482.i.i, %i.gr
  br i1 %.not90.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = shl nuw nsw i64 %.sroa.7329.0482.i.i, 1 ; 2 uses
  %i.hn = add i64 %i.hm, %i.gs                    ; 3 uses
  %i.ho = icmp ult i64 %i.hn, %i.da
  br i1 %i.ho, label %bb.as, label %.invoke772.i.i

bb.ar:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i, %bb.ap
  %i.hp = icmp eq ptr %i.hk, %i.ge
  br i1 %i.hp, label %.thread.i.i, label %bb.ap

bb.as:                                            ; preds = %bb.aq
  %i.hq = load i32, ptr %.sroa.0327.0481.i.i, align 4, !noalias !102218, !noundef !67
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.hn
  %i.hs = load i32, ptr %i.hr, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !102260
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hq, i32 noundef %i.hs, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc207.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc207.i.i:                                    ; preds = %bb.as
  %i.ht = load i64, ptr %i.ag, align 8, !range !123, !noalias !102260, !noundef !67 ; 3 uses
  %cond.i.i204.i.i = icmp eq i64 %i.ht, 2
  br i1 %cond.i.i204.i.i, label %bb.av, label %bb.at, !prof !79

bb.at:                                            ; preds = %.noexc207.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102261)
  %.not.i.i.i205.i.i = icmp eq i64 %i.ht, -1
  br i1 %.not.i.i.i205.i.i, label %bb.aw, label %bb.au, !prof !77

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !102262
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !102261, !noalias !102263
  store i64 %i.ht, ptr %i.ad, align 8, !noalias !102262
  br label %.invoke770.i.i

bb.av:                                            ; preds = %.noexc207.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !102260
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !102260, !noundef !67
  store i64 %i.hx, ptr %i.af, align 8, !noalias !102260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !102260
  store ptr %i.af, ptr %i.ae, align 8, !noalias !102260
  br label %.invoke.i.i

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !102260
  %i.hy = add i64 %i.hm, %i.gt                    ; 3 uses
  %i.hz = icmp ult i64 %i.hy, %i.da
  br i1 %i.hz, label %bb.ax, label %.invoke772.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ia = load i32, ptr %.sroa.0327.0481.i.i, align 4, !noalias !102218, !noundef !67
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.hy
  %i.ic = load i32, ptr %i.ib, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !102264
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ia, i32 noundef %i.ic, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc214.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc214.i.i:                                    ; preds = %bb.ax
  %i.id = load i64, ptr %i.ac, align 8, !range !123, !noalias !102264, !noundef !67 ; 3 uses
  %cond.i.i211.i.i = icmp eq i64 %i.id, 2
  br i1 %cond.i.i211.i.i, label %bb.ba, label %bb.ay, !prof !79

bb.ay:                                            ; preds = %.noexc214.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102265)
  %.not.i.i.i212.i.i = icmp eq i64 %i.id, -1
  br i1 %.not.i.i.i212.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i, label %bb.az, !prof !77

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !102266
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !102265, !noalias !102267
  store i64 %i.id, ptr %i.z, align 8, !noalias !102266
  br label %.invoke770.i.i

bb.ba:                                            ; preds = %.noexc214.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !102264
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !102264, !noundef !67
  store i64 %i.ih, ptr %i.ab, align 8, !noalias !102264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !102264
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !102264
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !102264
  br label %bb.ar

bb.bb:                                            ; preds = %bb.ah
  %.not495.i.i = icmp ugt i64 %i.fx, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not495.i.i, label %.invoke772.i.i, label %bb.bd

bb.bc:                                            ; preds = %bb.ah
  %i.ii = add i64 %i.fx, %i.cq                    ; 3 uses
  %.not493.i.i = icmp ugt i64 %i.ii, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not493.i.i, label %.invoke772.i.i, label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.fx
  %i.ik = load i32, ptr %i.ij, align 4, !noalias !102218, !noundef !67
  %i.il = load i32, ptr %.sroa.0310.0479.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !102268
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ik, i32 noundef %i.il, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc221.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc221.i.i:                                    ; preds = %bb.bd
  %i.im = load i64, ptr %i.y, align 8, !range !123, !noalias !102268, !noundef !67 ; 3 uses
  %cond.i.i218.i.i = icmp eq i64 %i.im, 2
  br i1 %cond.i.i218.i.i, label %bb.bg, label %bb.be, !prof !79

bb.be:                                            ; preds = %.noexc221.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102269)
  %.not.i.i.i219.i.i = icmp eq i64 %i.im, -1
  br i1 %.not.i.i.i219.i.i, label %bb.bh, label %bb.bf, !prof !77

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !102270
  %i.in = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !102269, !noalias !102271
  store i64 %i.im, ptr %i.v, align 8, !noalias !102270
  br label %.invoke770.i.i

bb.bg:                                            ; preds = %.noexc221.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !102268
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !102268, !noundef !67
  store i64 %i.iq, ptr %i.x, align 8, !noalias !102268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !102268
  store ptr %i.x, ptr %i.w, align 8, !noalias !102268
  br label %.invoke.i.i

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !102268
  %i.ir = or disjoint i64 %.sroa.10313.0477.i.i, 1
  %i.is = mul i64 %i.ir, %i.bt                    ; 3 uses
  %.not496.i.i = icmp ugt i64 %i.is, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not496.i.i, label %.invoke772.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !noalias !102218, !noundef !67
  %i.iv = load i32, ptr %.sroa.0310.0479.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !102272
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.iu, i32 noundef %i.iv, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc228.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc228.i.i:                                    ; preds = %bb.bi
  %i.iw = load i64, ptr %i.u, align 8, !range !123, !noalias !102272, !noundef !67 ; 3 uses
  %cond.i.i225.i.i = icmp eq i64 %i.iw, 2
  br i1 %cond.i.i225.i.i, label %bb.bl, label %bb.bj, !prof !79

bb.bj:                                            ; preds = %.noexc228.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102273)
  %.not.i.i.i226.i.i = icmp eq i64 %i.iw, -1
  br i1 %.not.i.i.i226.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit231.i.i, label %bb.bk, !prof !77

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !102274
  %i.ix = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !102273, !noalias !102275
  store i64 %i.iw, ptr %i.r, align 8, !noalias !102274
  br label %.invoke770.i.i

bb.bl:                                            ; preds = %.noexc228.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !102272
  %i.ja = load i64, ptr %i.iz, align 8, !noalias !102272, !noundef !67
  store i64 %i.ja, ptr %i.t, align 8, !noalias !102272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !102272
  store ptr %i.t, ptr %i.s, align 8, !noalias !102272
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit231.i.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !102272
  br label %bb.bm

bb.bm:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit231.i.i
  %i.jb = icmp eq i64 %i.ft, 0
  br i1 %i.jb, label %.lr.ph492.i.i, label %bb.ah

bb.bn:                                            ; preds = %bb.bc
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ii
  %i.jd = load i32, ptr %i.jc, align 4, !noalias !102218, !noundef !67
  %i.je = getelementptr i8, ptr %i.fs, i64 -4     ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !102276
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jd, i32 noundef %i.jf, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc235.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc235.i.i:                                    ; preds = %bb.bn
  %i.jg = load i64, ptr %i.q, align 8, !range !123, !noalias !102276, !noundef !67 ; 3 uses
  %cond.i.i232.i.i = icmp eq i64 %i.jg, 2
  br i1 %cond.i.i232.i.i, label %bb.bq, label %bb.bo, !prof !79

bb.bo:                                            ; preds = %.noexc235.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102277)
  %.not.i.i.i233.i.i = icmp eq i64 %i.jg, -1
  br i1 %.not.i.i.i233.i.i, label %bb.br, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !102278
  %i.jh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !102277, !noalias !102279
  store i64 %i.jg, ptr %i.n, align 8, !noalias !102278
  br label %.invoke770.i.i

bb.bq:                                            ; preds = %.noexc235.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !102276
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !102276, !noundef !67
  store i64 %i.jk, ptr %i.p, align 8, !noalias !102276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !102276
  store ptr %i.p, ptr %i.o, align 8, !noalias !102276
  br label %.invoke.i.i

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !102276
  %i.jl = add i64 %i.fk, %i.fx                    ; 3 uses
  %.not494.i.i = icmp ugt i64 %i.jl, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not494.i.i, label %.invoke772.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !noalias !102218, !noundef !67
  %i.jo = load i32, ptr %i.je, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !102280
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jn, i32 noundef %i.jo, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc242.i.i:                                    ; preds = %bb.bs
  %i.jp = load i64, ptr %i.m, align 8, !range !123, !noalias !102280, !noundef !67 ; 3 uses
  %cond.i.i239.i.i = icmp eq i64 %i.jp, 2
  br i1 %cond.i.i239.i.i, label %bb.bv, label %bb.bt, !prof !79

bb.bt:                                            ; preds = %.noexc242.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102281)
  %.not.i.i.i240.i.i = icmp eq i64 %i.jp, -1
  br i1 %.not.i.i.i240.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, label %bb.bu, !prof !77

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !102282
  %i.jq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !alias.scope !102281, !noalias !102283
  store i64 %i.jp, ptr %i.j, align 8, !noalias !102282
  br label %.invoke770.i.i

bb.bv:                                            ; preds = %.noexc242.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !102280
  %i.jt = load i64, ptr %i.js, align 8, !noalias !102280, !noundef !67
  store i64 %i.jt, ptr %i.l, align 8, !noalias !102280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !102280
  store ptr %i.l, ptr %i.k, align 8, !noalias !102280
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !102280
  br label %bb.bm

bb.bw:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i, %.lr.ph.i.i
  %.sroa.0307.0472.i.i = phi ptr [ %.sroa.0301.0475.i.i, %.lr.ph.i.i ], [ %i.ju, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i ] ; 3 uses
  %.sroa.7309.0471.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.jv, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0307.0472.i.i, i64 4 ; 2 uses
  %i.jv = add nuw nsw i64 %.sroa.7309.0471.i.i, 1
  %i.jw = add nuw i64 %.sroa.7309.0471.i.i, %i.fq ; 5 uses
  %.not492.i.i = icmp ugt i64 %i.jw, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not492.i.i, label %.invoke772.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !noalias !102218, !noundef !67
  %i.jz = load i32, ptr %.sroa.0307.0472.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !102284
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jy, i32 noundef %i.jz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc252.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc252.i.i:                                    ; preds = %bb.bx
  %i.ka = load i64, ptr %i.i, align 8, !range !123, !noalias !102284, !noundef !67 ; 3 uses
  %cond.i.i249.i.i = icmp eq i64 %i.ka, 2
  br i1 %cond.i.i249.i.i, label %bb.ca, label %bb.by, !prof !79

bb.by:                                            ; preds = %.noexc252.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102285)
  %.not.i.i.i250.i.i = icmp eq i64 %i.ka, -1
  br i1 %.not.i.i.i250.i.i, label %bb.cb, label %bb.bz, !prof !77

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !102286
  %i.kb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !102285, !noalias !102287
  store i64 %i.ka, ptr %i.f, align 8, !noalias !102286
  br label %.invoke770.i.i

bb.ca:                                            ; preds = %.noexc252.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102284
  %i.ke = load i64, ptr %i.kd, align 8, !noalias !102284, !noundef !67
  store i64 %i.ke, ptr %i.h, align 8, !noalias !102284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !102284
  store ptr %i.h, ptr %i.g, align 8, !noalias !102284
  br label %.invoke.i.i

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !102284
  %i.kf = add nuw i64 %i.jw, 1                    ; 2 uses
  %i.kg = icmp ult i64 %i.jw, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.kg, label %bb.cc, label %.invoke772.i.i

.invoke772.i.i:                                   ; preds = %bb.cb, %bb.bw, %bb.br, %bb.bh, %bb.bc, %bb.bb, %bb.aw, %bb.aq, %bb.am, %.peel.next.i.i
  %i.kh = phi i64 [ %i.jl, %bb.br ], [ %i.hy, %bb.aw ], [ %.reass488.i.i, %bb.am ], [ %.reass.i.i, %.peel.next.i.i ], [ %i.hn, %bb.aq ], [ %i.is, %bb.bh ], [ %i.fx, %bb.bb ], [ %i.ii, %bb.bc ], [ %i.jw, %bb.bw ], [ %i.kf, %bb.cb ]
  %i.ki = phi i64 [ %i.cy, %bb.br ], [ %i.da, %bb.aw ], [ %i.da, %bb.am ], [ %i.da, %.peel.next.i.i ], [ %i.da, %bb.aq ], [ %i.cy, %bb.bb ], [ %i.cy, %bb.bc ], [ %i.cy, %bb.bh ], [ %i.cy, %bb.bw ], [ %i.cy, %bb.cb ]
  %i.kj = phi ptr [ @698, %bb.br ], [ @686, %bb.aw ], [ @680, %bb.am ], [ @678, %.peel.next.i.i ], [ @684, %bb.aq ], [ @692, %bb.bh ], [ @690, %bb.bb ], [ @696, %bb.bc ], [ @702, %bb.bw ], [ @704, %bb.cb ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.kh, i64 noundef %i.ki, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kj) #61
          to label %.cont773.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102218

.cont773.i.i:                                     ; preds = %.invoke772.i.i
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.kf
  %i.kl = load i32, ptr %i.kk, align 4, !noalias !102218, !noundef !67
  %i.km = load i32, ptr %.sroa.0307.0472.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102288
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.kl, i32 noundef %i.km, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc259.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc259.i.i:                                    ; preds = %bb.cc
  %i.kn = load i64, ptr %i.e, align 8, !range !123, !noalias !102288, !noundef !67 ; 3 uses
  %cond.i.i256.i.i = icmp eq i64 %i.kn, 2
  br i1 %cond.i.i256.i.i, label %bb.cf, label %bb.cd, !prof !79

bb.cd:                                            ; preds = %.noexc259.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102289)
  %.not.i.i.i257.i.i = icmp eq i64 %i.kn, -1
  br i1 %.not.i.i.i257.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i, label %bb.ce, !prof !77

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102290
  %i.ko = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !102289, !noalias !102291
  store i64 %i.kn, ptr %i.b, align 8, !noalias !102290
  br label %.invoke770.i.i

.invoke770.i.i:                                   ; preds = %bb.ce, %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.bf, %bb.az, %bb.au, %.loopexit597.i.i, %.loopexit594.i.i
  %.sink774.i.sroa.phi.i = phi ptr [ %.sink774.i.sroa.gep.i, %.loopexit594.i.i ], [ %.sink774.i.sroa.gep47.i, %.loopexit597.i.i ], [ %.sink774.i.sroa.gep48.i, %bb.au ], [ %.sink774.i.sroa.gep49.i, %bb.az ], [ %.sink774.i.sroa.gep50.i, %bb.bf ], [ %.sink774.i.sroa.gep51.i, %bb.bk ], [ %.sink774.i.sroa.gep52.i, %bb.bp ], [ %.sink774.i.sroa.gep53.i, %bb.bu ], [ %.sink774.i.sroa.gep54.i, %bb.bz ], [ %.sink774.i.sroa.gep55.i, %bb.ce ]
  %.sink774.i.i = phi ptr [ %i.al, %.loopexit594.i.i ], [ %i.ah, %.loopexit597.i.i ], [ %i.ad, %bb.au ], [ %i.z, %bb.az ], [ %i.v, %bb.bf ], [ %i.r, %bb.bk ], [ %i.n, %bb.bp ], [ %i.j, %bb.bu ], [ %i.f, %bb.bz ], [ %i.b, %bb.ce ]
  %.pre.sink.i.i = phi i64 [ %.pre.i.i, %.loopexit594.i.i ], [ %.pre611.i.i, %.loopexit597.i.i ], [ %i.hv, %bb.au ], [ %i.if, %bb.az ], [ %i.io, %bb.bf ], [ %i.iy, %bb.bk ], [ %i.ji, %bb.bp ], [ %i.jr, %bb.bu ], [ %i.kc, %bb.bz ], [ %i.kp, %bb.ce ]
  %i.kq = phi ptr [ @679, %.loopexit594.i.i ], [ @681, %.loopexit597.i.i ], [ @685, %bb.au ], [ @687, %bb.az ], [ @691, %bb.bf ], [ @693, %bb.bk ], [ @697, %bb.bp ], [ @699, %bb.bu ], [ @703, %bb.bz ], [ @705, %bb.ce ]
  store i64 %.pre.sink.i.i, ptr %.sink774.i.sroa.phi.i, align 8, !noalias !102218
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink774.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq) #60
          to label %.cont771.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102218

.cont771.i.i:                                     ; preds = %.invoke770.i.i
  unreachable

bb.cf:                                            ; preds = %.noexc259.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102288
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !102288, !noundef !67
  store i64 %i.ks, ptr %i.d, align 8, !noalias !102288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102288
  store ptr %i.d, ptr %i.c, align 8, !noalias !102288
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cf, %bb.ca, %bb.bv, %bb.bq, %bb.bl, %bb.bg, %bb.ba, %bb.av, %.loopexit596.i.i, %.loopexit593.i.i
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %.loopexit593.i.i ], [ %.sink.i.sroa.gep38.i, %.loopexit596.i.i ], [ %.sink.i.sroa.gep39.i, %bb.av ], [ %.sink.i.sroa.gep40.i, %bb.ba ], [ %.sink.i.sroa.gep41.i, %bb.bg ], [ %.sink.i.sroa.gep42.i, %bb.bl ], [ %.sink.i.sroa.gep43.i, %bb.bq ], [ %.sink.i.sroa.gep44.i, %bb.bv ], [ %.sink.i.sroa.gep45.i, %bb.ca ], [ %.sink.i.sroa.gep46.i, %bb.cf ]
  %.sink.i.i17 = phi ptr [ %i.am, %.loopexit593.i.i ], [ %i.ai, %.loopexit596.i.i ], [ %i.ae, %bb.av ], [ %i.aa, %bb.ba ], [ %i.w, %bb.bg ], [ %i.s, %bb.bl ], [ %i.o, %bb.bq ], [ %i.k, %bb.bv ], [ %i.g, %bb.ca ], [ %i.c, %bb.cf ]
  %i.kt = phi ptr [ @679, %.loopexit593.i.i ], [ @681, %.loopexit596.i.i ], [ @685, %bb.av ], [ @687, %bb.ba ], [ @691, %bb.bg ], [ @693, %bb.bl ], [ @697, %bb.bq ], [ @699, %bb.bv ], [ @703, %bb.ca ], [ @705, %bb.cf ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi.i, align 8, !noalias !102218
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink.i.i17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102218

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102288
  %i.ku = icmp eq ptr %i.ju, %i.fp
  br i1 %i.ku, label %.thread362.loopexit.i.i, label %bb.bw

bb.cg:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ch, %bb.cg
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102218
  unreachable

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %.pn97.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.dm, %bb.o ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ax)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.ch, !noalias !102218

bb.ch:                                            ; preds = %.body.i.i
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.kx) #63
          to label %.body.i unwind label %bb.ci, !noalias !102218

bb.ci:                                            ; preds = %bb.ch
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102292
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.kz)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.cg, !noalias !102233

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %.pn97.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i, %bb.r
  %.sroa.8.i.sroa.0.0 = phi ptr [ %.sroa.8.i.sroa.0.0.copyload61, %bb.r ], [ %.sroa.8.i.sroa.0.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.8.i.sroa.10.0 = phi ptr [ %.sroa.8.i.sroa.10.0.copyload66, %bb.r ], [ %.sroa.8.i.sroa.10.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.8.i.sroa.11.0 = phi i64 [ %.sroa.8.i.sroa.11.0.copyload67, %bb.r ], [ %.sroa.8.i.sroa.11.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.032.0.i = phi i64 [ %.sroa.032.0.copyload34.i, %bb.r ], [ %.sroa.032.0.copyload33.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ] ; 2 uses
  %i.la = phi <2 x i32> [ %i.dt, %bb.r ], [ %i.gh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %i.lb = phi <2 x i64> [ %i.dr, %bb.r ], [ %i.gf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %i.lc = phi <2 x ptr> [ %i.ds, %bb.r ], [ %i.gg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !102218
  %i.ld = icmp eq i64 %.sroa.032.0.i, -1
  br i1 %i.ld, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i, label %bb.cl

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i, %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102233
  %i.le = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102233 ; 4 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.cj, label %bb.ck, !prof !104

bb.cj:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !102233
  unreachable

bb.ck:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i
  store ptr @2448, ptr %i.le, align 8, !noalias !102233
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 24, ptr %i.lg, align 8, !noalias !102233
  %i.lh = insertelement <2 x ptr> <ptr poison, ptr @1267>, ptr %i.le, i64 0
  br label %bb.cm

bb.cl:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 %.sroa.032.0.i, ptr %i.bc, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.8.i.sroa.0.0, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.719.sroa.7.0..sroa.719.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x i64> %i.lb, ptr %.sroa.719.sroa.7.0..sroa.719.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <2 x ptr> %i.lc, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr %.sroa.8.i.sroa.10.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i64 %.sroa.8.i.sroa.11.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store <2 x i32> %i.la, ptr %.sroa.1425.0..sroa_idx, align 8
  %.sroa.1528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store ptr @_Py_NoneStruct, ptr %.sroa.1528.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 81
  store i8 %i.ch, ptr %.sroa.17.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102293
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE19create_class_objectB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.bc), !noalias !102294, !inline_history !55
  %i.li = load i64, ptr %i.a, align 8, !range !68, !noalias !102293, !noundef !67
  %i.lj = trunc nuw i64 %i.li to i1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload31 = load ptr, ptr %i.lk, align 8, !noalias !102295 ; 2 uses
  br i1 %i.lj, label %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.cn

_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.cl
  %.sroa.1032.8..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ll = load <2 x i64>, ptr %.sroa.1032.8..sroa_idx34, align 8, !noalias !102295
  %.sroa.1032.sroa.6.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1032.sroa.6.0.copyload44 = load ptr, ptr %.sroa.1032.sroa.6.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102295
  %.sroa.1032.sroa.7.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.lm = load <2 x ptr>, ptr %.sroa.1032.sroa.7.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102295
  %.sroa.1032.sroa.9.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1032.sroa.9.0.copyload47 = load i64, ptr %.sroa.1032.sroa.9.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102295
  %.sroa.1032.sroa.10.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ln = load <2 x i32>, ptr %.sroa.1032.sroa.10.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.cm

bb.cm:                                            ; preds = %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ck
  %.sroa.1032.sroa.9.0 = phi i64 [ undef, %bb.ck ], [ %.sroa.1032.sroa.9.0.copyload47, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %.sroa.1032.sroa.6.0 = phi ptr [ null, %bb.ck ], [ %.sroa.1032.sroa.6.0.copyload44, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %.sroa.5.0 = phi ptr [ null, %bb.ck ], [ %.sroa.5.8.copyload31, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lo = phi <2 x i32> [ <i32 3, i32 undef>, %bb.ck ], [ %i.ln, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lp = phi <2 x i64> [ <i64 0, i64 1>, %bb.ck ], [ %i.ll, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lq = phi <2 x ptr> [ %i.lh, %bb.ck ], [ %i.lm, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.lr, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.lp, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.1032.sroa.6.0, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x ptr> %i.lq, ptr %.sroa.756.0..sroa_idx, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators30___pyfunction_karate_club_graph:bb.a
  store i64 %.sink15, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx10generators31___pyfunction_heavy_square_graph(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 3 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 3 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 3 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 3 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 3 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 33 uses
  %i.ay = alloca [64 x i8], align 8               ; 4 uses
  %i.az = alloca [72 x i8], align 8               ; 7 uses
  %i.ba = alloca [64 x i8], align 8               ; 4 uses
  %i.bb = alloca [72 x i8], align 8               ; 6 uses
  %i.bc = alloca [88 x i8], align 8               ; 14 uses
  %i.bd = alloca [72 x i8], align 8               ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = alloca [72 x i8], align 8               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = alloca [72 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2499, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef 2)
  %i.bj = load i64, ptr %i.bh, align 8, !range !68, !noundef !67
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.co

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.bn = load ptr, ptr %i.bi, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !102527
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noundef nonnull %i.bn), !noalias !102527
  %i.bo = load i64, ptr %i.bb, align 8, !range !68, !noalias !102527, !noundef !67
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !71

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !102527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !102527
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2491, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !102527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !102527
  %.sroa.013.0.copyload = load i64, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload, ptr %i.bs, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false)
  br label %bb.co

bb.e:                                             ; preds = %bb.c
  %i.bt = load i64, ptr %i.bq, align 8, !noalias !102527, !noundef !67 ; 15 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  store i64 0, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !102527
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !102528
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.az, ptr noundef nonnull %i.bw), !noalias !102528
  %i.bx = load i8, ptr %i.az, align 8, !range !69, !noalias !102528, !noundef !67
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 1, ptr %i.bz, align 1
  store i8 0, ptr %i.bd, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !69, !noalias !102528, !noundef !67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !102528
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !102528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false), !noalias !102528
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1120, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !102528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !102528
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false)
  br label %bb.co

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !69, !noundef !67
  %i.ci = and i64 %i.bt, 1
  %i.cj = icmp eq i64 %i.ci, 0
  %.sink784.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sink784.i.sroa.gep38.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sink784.i.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink784.i.sroa.gep40.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sink784.i.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sink784.i.sroa.gep42.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink784.i.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink784.i.sroa.gep44.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink784.i.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink784.i.sroa.gep46.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink783.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink783.i.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink783.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink783.i.sroa.gep49.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink783.i.sroa.gep50.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink783.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink783.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink783.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink783.i.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink783.i.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.cj, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = mul i64 %i.bt, 3
  %i.cl = shl i64 %i.bt, 1                        ; 2 uses
  %i.cm = add i64 %i.ck, -2
  %i.cn = mul i64 %i.cm, %i.bt
  %i.co = add nsw i64 %i.bt, -1                   ; 9 uses
  %i.cp = shl i64 %i.co, 1
  %i.cq = mul i64 %i.cp, %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !102529
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.ax, i64 noundef %i.cn, i64 noundef %i.cq), !noalias !102529
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false), !alias.scope !102530, !noalias !102529
  store i32 -1, ptr %i.cs, align 8, !alias.scope !102530, !noalias !102529
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  store i32 -1, ptr %i.ct, align 4, !alias.scope !102530, !noalias !102529
  %i.cu = icmp eq i64 %i.bt, 1
  br i1 %i.cu, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = mul i64 %i.bt, %i.bt                    ; 9 uses
  %i.cw = mul i64 %i.co, %i.bt                    ; 19 uses
  %i.cx = shl i64 %i.cv, 2                        ; 6 uses
  %i.cy = icmp ugt i64 %i.cv, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.cx, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.cy, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.k, !prof !73

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102531
  %i.cz = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102531 ; 11 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.l, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.cx) #61
          to label %.noexc.i.i unwind label %bb.o, !noalias !102529

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dc, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.dc = add i64 %.val4.i.i.i.i.i.i.i.i.i, 1     ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !102533
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !102534

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !102535)
  %i.dd = load i64, ptr %i.aw, align 8, !range !123, !alias.scope !102535, !noalias !102536, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !77

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !102537
  %i.de = load i64, ptr %i.db, align 8, !alias.scope !102535, !noalias !102536
  store i64 %i.dd, ptr %i.av, align 8, !noalias !102537
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.de, ptr %i.df, align 8, !noalias !102537
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !102534

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.n
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.dg = load i32, ptr %i.db, align 8, !alias.scope !102535, !noalias !102536, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !102533
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.dg, ptr %i.dh, align 4, !noalias !102538
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.cv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_E0EE9from_iterB6V_.exit.i.i, label %bb.m

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.m
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102539
  br label %.body.i.i

bb.o:                                             ; preds = %bb.q, %bb.p, %bb.l
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !102540
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc104.i.i unwind label %bb.o, !noalias !102529

.noexc104.i.i:                                    ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !102541)
  %i.dj = load i64, ptr %i.au, align 8, !range !123, !alias.scope !102541, !noalias !102542, !noundef !67 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc104.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !102543
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !102541, !noalias !102542
  store i64 %i.dj, ptr %i.at, align 8, !noalias !102543
  %i.dm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !noalias !102543
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc105.i.i unwind label %bb.o, !noalias !102529

.noexc105.i.i:                                    ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.noexc104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !102540
  %.sroa.032.0.copyload34.i = load i64, ptr %i.ax, align 8, !noalias !102544
  %.sroa.8.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload61 = load ptr, ptr %.sroa.8.0..sroa_idx36.i, align 8, !noalias !102544
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dn = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.do = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.10.0.copyload66 = load ptr, ptr %i.cr, align 8, !noalias !102544
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload67 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !102544
  %i.dp = load <2 x i32>, ptr %i.cs, align 8, !noalias !102544
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_E0EE9from_iterB6V_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i
  %i.dq = shl i64 %i.cw, 2                        ; 6 uses
  %i.dr = icmp ugt i64 %i.cw, 4611686018427387903
  %.not.i.i.i109.i.i = icmp ugt i64 %i.dq, 9223372036854775804
  %or.cond.i.i.i110.i.i = or i1 %i.dr, %.not.i.i.i109.i.i
  br i1 %or.cond.i.i.i110.i.i, label %bb.v, label %bb.s, !prof !73

bb.s:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_E0EE9from_iterB6V_.exit.i.i
  %i.ds = icmp eq i64 %i.dq, 0                    ; 2 uses
  br i1 %i.ds, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102545
  %i.dt = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102545 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = ptrtoint ptr %i.dt to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i

bb.v:                                             ; preds = %bb.t, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_E0EE9from_iterB6V_.exit.i.i
  %.sroa.410.0.ph.i.i133.i.i = phi i64 [ 4, %bb.t ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_E0EE9from_iterB6V_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i133.i.i, i64 %i.dq) #61
          to label %.noexc134.i.i unwind label %bb.y, !noalias !102529

.noexc134.i.i:                                    ; preds = %bb.v
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i112.i.i = phi i64 [ %i.dv, %bb.u ], [ 4, %bb.s ]
  %.sroa.410.0.i.i113.i.i = phi i64 [ %i.cw, %bb.u ], [ 0, %bb.s ] ; 7 uses
  %i.dw = inttoptr i64 %.sroa.10.0.i.i112.i.i to ptr ; 8 uses
  %i.dx = icmp samesign ule i64 %i.cw, %.sroa.410.0.i.i113.i.i
  call void @llvm.assume(i1 %i.dx)
  %.not370.i.i = icmp eq i64 %i.co, 0
  br i1 %.not370.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i118.i.i

.lr.ph.i.i.i.i.i.i.i118.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i118.i.i
  %.val4.i.i.i.i.i.i.i119.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i118.i.i ], [ %i.dz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dz = add i64 %.val4.i.i.i.i.i.i.i119.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !102547
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i127.i.i unwind label %.loopexit.i.i.i.i.i.i.i121.i.i, !noalias !102548

.noexc.i.i.i.i.i.i.i127.i.i:                      ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !102549)
  %i.ea = load i64, ptr %i.as, align 8, !range !123, !alias.scope !102549, !noalias !102550, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i128.i.i = icmp eq i64 %i.ea, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i128.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, label %bb.x, !prof !77

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !102551
  %i.eb = load i64, ptr %i.dy, align 8, !alias.scope !102549, !noalias !102550
  store i64 %i.ea, ptr %i.ar, align 8, !noalias !102551
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !noalias !102551
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i131.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i, !noalias !102548

.noexc7.i.i.i.i.i.i.i131.i.i:                     ; preds = %bb.x
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i127.i.i
  %i.ed = load i32, ptr %i.dy, align 8, !alias.scope !102549, !noalias !102550, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !102547
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.val4.i.i.i.i.i.i.i119.i.i
  store i32 %i.ed, ptr %i.ee, align 4, !noalias !102552
  %exitcond.not.i.i.i.i.i.i.i132.i.i = icmp eq i64 %i.dz, %i.cw
  br i1 %exitcond.not.i.i.i.i.i.i.i132.i.i, label %bb.z, label %bb.w

.loopexit.i.i.i.i.i.i.i121.i.i:                   ; preds = %bb.w
  %lpad.loopexit.i.i.i.i.i.i.i122.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

.loopexit.split-lp.i.i.i.i.i.i.i129.i.i:          ; preds = %bb.x
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i130.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

.body.i.i123.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i, %.loopexit.i.i.i.i.i.i.i121.i.i
  %lpad.phi.i.i.i.i.i.i.i124.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i122.i.i, %.loopexit.i.i.i.i.i.i.i121.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i130.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i ] ; 2 uses
  %i.ef = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.ef, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i: ; preds = %.body.i.i123.i.i
  %i.eg = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102553
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i, %.body166.i.i, %bb.y, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i, %.body.i.i123.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i124.i.i, %.body.i.i123.i.i ], [ %i.eh, %bb.y ], [ %lpad.phi.i.i.i.i.i.i.i124.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i ], [ %.pn.i.i, %.body166.i.i ], [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %.body.i.i

bb.y:                                             ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.z:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i
  br i1 %i.ds, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102554
  %i.ei = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102554 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = ptrtoint ptr %i.ei to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.dq) #61
          to label %.noexc165.i.i unwind label %bb.af, !noalias !102529

.noexc165.i.i:                                    ; preds = %bb.ac
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i: ; preds = %bb.ab, %bb.z
  %.sroa.10.0.i.i143.i.i = phi i64 [ %i.ek, %bb.ab ], [ 4, %bb.z ]
  %.sroa.410.0.i.i144.i.i = phi i64 [ %i.cw, %bb.ab ], [ 0, %bb.z ] ; 12 uses
  %i.el = inttoptr i64 %.sroa.10.0.i.i143.i.i to ptr ; 16 uses
  %i.em = icmp samesign ule i64 %i.cw, %.sroa.410.0.i.i144.i.i
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i
  %.val4.i.i.i.i.i.i.i150.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i ], [ %i.eo, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eo = add i64 %.val4.i.i.i.i.i.i.i150.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !102556
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i158.i.i unwind label %.loopexit.i.i.i.i.i.i.i152.i.i, !noalias !102557

.noexc.i.i.i.i.i.i.i158.i.i:                      ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !102558)
  %i.ep = load i64, ptr %i.aq, align 8, !range !123, !alias.scope !102558, !noalias !102559, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i159.i.i = icmp eq i64 %i.ep, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i159.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i, label %bb.ae, !prof !77

bb.ae:                                            ; preds = %.noexc.i.i.i.i.i.i.i158.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !102560
  %i.eq = load i64, ptr %i.en, align 8, !alias.scope !102558, !noalias !102559
  store i64 %i.ep, ptr %i.ap, align 8, !noalias !102560
  %i.er = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !noalias !102560
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i162.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i, !noalias !102557

.noexc7.i.i.i.i.i.i.i162.i.i:                     ; preds = %bb.ae
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i158.i.i
  %i.es = load i32, ptr %i.en, align 8, !alias.scope !102558, !noalias !102559, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !102556
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.val4.i.i.i.i.i.i.i150.i.i
  store i32 %i.es, ptr %i.et, align 4, !noalias !102561
  %exitcond.not.i.i.i.i.i.i.i163.i.i = icmp eq i64 %i.eo, %i.cw
  br i1 %exitcond.not.i.i.i.i.i.i.i163.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i, label %bb.ad

.loopexit.i.i.i.i.i.i.i152.i.i:                   ; preds = %bb.ad
  %lpad.loopexit.i.i.i.i.i.i.i153.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i154.i.i

.loopexit.split-lp.i.i.i.i.i.i.i160.i.i:          ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i161.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i154.i.i

.body.i.i154.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i, %.loopexit.i.i.i.i.i.i.i152.i.i
  %lpad.phi.i.i.i.i.i.i.i155.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i153.i.i, %.loopexit.i.i.i.i.i.i.i152.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i161.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i ] ; 2 uses
  %i.eu = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.eu, label %.body166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i: ; preds = %.body.i.i154.i.i
  %i.ev = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102562
  br label %.body166.i.i

.body166.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i, %.loopexit.split-lp.i.i, %bb.af, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i, %.body.i.i154.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i155.i.i, %.body.i.i154.i.i ], [ %i.ey, %bb.af ], [ %lpad.phi.i.i.i.i.i.i.i155.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.ew, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i: ; preds = %.body166.i.i
  %i.ex = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body166.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  br label %.lr.ph.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @675, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #61
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102529

.loopexit.i.i:                                    ; preds = %bb.ar, %bb.am
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.az, %bb.aw
  %lpad.loopexit592.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bs, %bb.bn, %bb.bi, %bb.bd
  %lpad.loopexit376.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.cc, %bb.bx
  %lpad.loopexit378.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke.i.i, %.invoke778.i.i, %.invoke780.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i
  %.sroa.410.0.i.i144330679.i.i = phi i64 [ %.sroa.410.0.i.i144.i.i, %.invoke.i.i ], [ %.sroa.410.0.i.i144.i.i, %.invoke778.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i ], [ %.sroa.410.0.i.i144.i.i, %.invoke780.i.i ]
  %i.ez = phi ptr [ %i.el, %.invoke.i.i ], [ %i.el, %.invoke778.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i ], [ %i.el, %.invoke780.i.i ]
  %lpad.loopexit.split-lp379.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.sroa.410.0.i.i144330678.i.i = phi i64 [ %.sroa.410.0.i.i144.i.i, %.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i144330679.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.fa = phi ptr [ %i.el, %.loopexit.i.i ], [ %i.el, %.loopexit.split-lp.loopexit.i.i ], [ %i.el, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.el, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.ez, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit592.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit376.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit378.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp379.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.410.0.i.i144330678.i.i, 0
  br i1 %i.fb, label %.body166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.fc = shl nuw i64 %.sroa.410.0.i.i144330678.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %.body166.i.i

bb.ag:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.thread.i.i
  unreachable

.thread364.loopexit.i.i:                          ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i
  %i.fd = icmp eq i64 %i.fg, 0
  br i1 %i.fd, label %.preheader374.i.i, label %.lr.ph.i.i

.preheader374.i.i:                                ; preds = %.thread364.loopexit.i.i
  %5 = add nsw i64 %i.cl, -1
  br label %bb.ah

.lr.ph.i.i:                                       ; preds = %.thread364.loopexit.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i
  %.sroa.0295.0476.i.i = phi ptr [ %i.ff, %.thread364.loopexit.i.i ], [ %i.el, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i ] ; 3 uses
  %.sroa.5296.0475.i.i = phi i64 [ %i.fg, %.thread364.loopexit.i.i ], [ %i.cw, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i ] ; 2 uses
  %.sroa.10297.0474.i.i = phi i64 [ %i.fh, %.thread364.loopexit.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_NtBY_10UndirectedEB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B6P_B5o_Es0_0EE9from_iterB6V_.exit.i.i ] ; 2 uses
  %i.fe = call i64 @llvm.umin.i64(i64 %.sroa.5296.0475.i.i, i64 %i.co) ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0295.0476.i.i, i64 %i.fe
  %i.fg = sub nuw nsw i64 %.sroa.5296.0475.i.i, %i.fe ; 2 uses
  %i.fh = add i64 %.sroa.10297.0474.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.fe, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0295.0476.i.i, i64 %.idx.i.i
  %i.fj = mul i64 %.sroa.10297.0474.i.i, %i.bt
  br label %bb.bw

bb.ah:                                            ; preds = %bb.bm, %.preheader374.i.i
  %.sroa.0304.0480.i.i = phi ptr [ %i.dw, %.preheader374.i.i ], [ %i.fl, %bb.bm ] ; 4 uses
  %.sroa.5305.0479.i.i = phi i64 [ %i.cw, %.preheader374.i.i ], [ %i.fm, %bb.bm ] ; 2 uses
  %.sroa.10307.0478.i.i = phi i64 [ 0, %.preheader374.i.i ], [ %i.fn, %bb.bm ] ; 3 uses
  %i.fk = call i64 @llvm.umin.i64(i64 %.sroa.5305.0479.i.i, i64 %i.bt) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0304.0480.i.i) ]
  %i.fl = getelementptr [4 x i8], ptr %.sroa.0304.0480.i.i, i64 %i.fk ; 2 uses
  %i.fm = sub nuw nsw i64 %.sroa.5305.0479.i.i, %i.fk ; 2 uses
  %i.fn = add i64 %.sroa.10307.0478.i.i, 1        ; 2 uses
  %i.fo = and i64 %.sroa.10307.0478.i.i, 1
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = mul i64 %.sroa.10307.0478.i.i, %i.bt    ; 5 uses
  br i1 %i.fp, label %bb.bb, label %bb.bc

.lr.ph491.i.i:                                    ; preds = %bb.bm, %.thread352.i.i
  %.sroa.0311.0490.i.i = phi ptr [ %i.fs, %.thread352.i.i ], [ %i.dw, %bb.bm ] ; 5 uses
  %.sroa.5312.0489.i.i = phi i64 [ %i.ft, %.thread352.i.i ], [ %i.cw, %bb.bm ] ; 2 uses
  %.sroa.10314.0488.i.i = phi i64 [ %i.fu, %.thread352.i.i ], [ 0, %bb.bm ] ; 5 uses
  %i.fr = call i64 @llvm.umin.i64(i64 %.sroa.5312.0489.i.i, i64 %i.bt) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0311.0490.i.i) ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0311.0490.i.i, i64 %i.fr
  %i.ft = sub nuw nsw i64 %.sroa.5312.0489.i.i, %i.fr ; 2 uses
  %i.fu = add i64 %.sroa.10314.0488.i.i, 1        ; 2 uses
  %i.fv = and i64 %.sroa.10314.0488.i.i, 1
  %i.fw = icmp eq i64 %i.fv, 0
  %.idx493.i.i = shl nuw nsw i64 %i.fr, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0311.0490.i.i, i64 %.idx493.i.i ; 2 uses
  br i1 %i.fw, label %.lr.ph487.i.i, label %bb.ai

._crit_edge.i.i:                                  ; preds = %.thread352.i.i
  %.sroa.032.0.copyload33.i = load i64, ptr %i.ax, align 8, !noalias !102544
  %.sroa.8.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx35.i, align 8, !noalias !102544
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.fy = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.fz = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.cr, align 8, !noalias !102544
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %i.ga = load <2 x i32>, ptr %i.cs, align 8, !noalias !102544
  %i.gb = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.gb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i: ; preds = %._crit_edge.i.i
  %i.gc = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i, %._crit_edge.i.i
  %i.gd = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.gd, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  %i.ge = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i

.lr.ph487.i.i:                                    ; preds = %.lr.ph491.i.i
  %i.gf = add nsw i64 %i.fr, -1
  %i.gg = mul i64 %.sroa.10314.0488.i.i, %i.co
  %i.gh = or disjoint i64 %.sroa.10314.0488.i.i, 1
  %i.gi = mul i64 %i.gh, %i.co
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph491.i.i
  %i.gj = mul i64 %.sroa.10314.0488.i.i, %i.co
  %i.gk = add i64 %i.gj, -1
  %i.gl = mul i64 %i.fu, %i.co
  %i.gm = add i64 %i.gl, -1
  %i.gn = icmp eq i64 %i.fr, 1
  br i1 %i.gn, label %.thread352.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.ai
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0311.0490.i.i, i64 4
  br label %.peel.next.i.i

bb.aj:                                            ; preds = %bb.al, %.lr.ph487.i.i
  %.sroa.0318.0486.i.i = phi ptr [ %.sroa.0311.0490.i.i, %.lr.ph487.i.i ], [ %i.gp, %bb.al ] ; 3 uses
  %.sroa.7320.0485.i.i = phi i64 [ 0, %.lr.ph487.i.i ], [ %i.gq, %bb.al ] ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0318.0486.i.i, i64 4 ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.7320.0485.i.i, 1
  %.not85.i.i = icmp eq i64 %.sroa.7320.0485.i.i, %i.gf
  br i1 %.not85.i.i, label %bb.al, label %bb.ak

.thread352.i.i:                                   ; preds = %bb.av, %bb.al, %bb.ai
  %i.gr = icmp eq i64 %i.ft, 0
  br i1 %i.gr, label %._crit_edge.i.i, label %.lr.ph491.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gs = add i64 %.sroa.7320.0485.i.i, %i.gg     ; 3 uses
  %i.gt = icmp ult i64 %i.gs, %i.cw
  br i1 %i.gt, label %bb.am, label %.invoke780.i.i

bb.al:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i, %bb.aj
  %i.gu = icmp eq ptr %i.gp, %i.fx
  br i1 %i.gu, label %.thread352.i.i, label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.gv = load i32, ptr %.sroa.0318.0486.i.i, align 4, !noalias !102529, !noundef !67
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.gs
  %i.gx = load i32, ptr %i.gw, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !102563
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.gv, i32 noundef %i.gx, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc185.i.i unwind label %.loopexit.i.i, !noalias !102529

.noexc185.i.i:                                    ; preds = %bb.am
  %i.gy = load i64, ptr %i.ao, align 8, !range !123, !noalias !102563, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.gy, 2
  br i1 %cond.i.i.i.i, label %bb.ap, label %bb.an, !prof !79

bb.an:                                            ; preds = %.noexc185.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102564)
  %.not.i.i.i184.i.i = icmp eq i64 %i.gy, -1
  br i1 %.not.i.i.i184.i.i, label %bb.aq, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !102565
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !102564, !noalias !102566
  store i64 %i.gy, ptr %i.al, align 8, !noalias !102565
  br label %.invoke778.i.i

bb.ap:                                            ; preds = %.noexc185.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !102563
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !102563, !noundef !67
  store i64 %i.hc, ptr %i.an, align 8, !noalias !102563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !102563
  store ptr %i.an, ptr %i.am, align 8, !noalias !102563
  br label %.invoke.i.i

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !102563
  %i.hd = add i64 %.sroa.7320.0485.i.i, %i.gi     ; 3 uses
  %i.he = icmp ult i64 %i.hd, %i.cw
  br i1 %i.he, label %bb.ar, label %.invoke780.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hf = load i32, ptr %.sroa.0318.0486.i.i, align 4, !noalias !102529, !noundef !67
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hd
  %i.hh = load i32, ptr %i.hg, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !102567
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hf, i32 noundef %i.hh, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !102529

.noexc191.i.i:                                    ; preds = %bb.ar
  %i.hi = load i64, ptr %i.ak, align 8, !range !123, !noalias !102567, !noundef !67 ; 3 uses
  %cond.i.i188.i.i = icmp eq i64 %i.hi, 2
  br i1 %cond.i.i188.i.i, label %bb.au, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102568)
  %.not.i.i.i189.i.i = icmp eq i64 %i.hi, -1
  br i1 %.not.i.i.i189.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i, label %bb.at, !prof !77

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !102569
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !102568, !noalias !102570
  store i64 %i.hi, ptr %i.ah, align 8, !noalias !102569
  br label %.invoke778.i.i

bb.au:                                            ; preds = %.noexc191.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !102567
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !102567, !noundef !67
  store i64 %i.hm, ptr %i.aj, align 8, !noalias !102567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !102567
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !102567
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !102567
  br label %bb.al

bb.av:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !102571
  %i.hn = icmp eq ptr %i.ho, %i.fx
  br i1 %i.hn, label %.thread352.i.i, label %.peel.next.i.i, !llvm.loop !102453

.peel.next.i.i:                                   ; preds = %bb.av, %.peel.next.i.preheader.i
  %.sroa.7323.0483.i.i = phi i64 [ %i.hp, %bb.av ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.0321.0482.i.i = phi ptr [ %i.ho, %bb.av ], [ %i.go, %.peel.next.i.preheader.i ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0321.0482.i.i, i64 4 ; 2 uses
  %i.hp = add nuw nsw i64 %.sroa.7323.0483.i.i, 1
  %i.hq = add i64 %i.gk, %.sroa.7323.0483.i.i     ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %i.cw
  br i1 %i.hr, label %bb.aw, label %.invoke780.i.i

bb.aw:                                            ; preds = %.peel.next.i.i
  %i.hs = load i32, ptr %.sroa.0321.0482.i.i, align 4, !noalias !102529, !noundef !67
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hq
  %i.hu = load i32, ptr %i.ht, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !102572
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hs, i32 noundef %i.hu, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc201.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc201.i.i:                                    ; preds = %bb.aw
  %i.hv = load i64, ptr %i.ag, align 8, !range !123, !noalias !102572, !noundef !67 ; 3 uses
  %cond.i.i198.i.i = icmp eq i64 %i.hv, 2
  br i1 %cond.i.i198.i.i, label %.loopexit594.i.i, label %bb.ax, !prof !79

bb.ax:                                            ; preds = %.noexc201.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102573)
  %.not.i.i.i199.i.i = icmp eq i64 %i.hv, -1
  br i1 %.not.i.i.i199.i.i, label %bb.ay, label %.loopexit595.i.i, !prof !77

.loopexit595.i.i:                                 ; preds = %bb.ax
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !102573, !noalias !102574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !102575
  store i64 %i.hv, ptr %i.ad, align 8, !noalias !102575
  br label %.invoke778.i.i

.loopexit594.i.i:                                 ; preds = %.noexc201.i.i
  %.phi.trans.insert614.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre615.i.i = load i64, ptr %.phi.trans.insert614.i.i, align 8, !noalias !102572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !102572
  store i64 %.pre615.i.i, ptr %i.af, align 8, !noalias !102572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !102572
  store ptr %i.af, ptr %i.ae, align 8, !noalias !102572
  br label %.invoke.i.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !102572
  %i.hw = add i64 %i.gm, %.sroa.7323.0483.i.i     ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.cw
  br i1 %i.hx, label %bb.az, label %.invoke780.i.i

bb.az:                                            ; preds = %bb.ay
  %i.hy = load i32, ptr %.sroa.0321.0482.i.i, align 4, !noalias !102529, !noundef !67
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hw
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !102571
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hy, i32 noundef %i.ia, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc208.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc208.i.i:                                    ; preds = %bb.az
  %i.ib = load i64, ptr %i.ac, align 8, !range !123, !noalias !102571, !noundef !67 ; 3 uses
  %cond.i.i205.i.i = icmp eq i64 %i.ib, 2
  br i1 %cond.i.i205.i.i, label %.loopexit597.i.i, label %bb.ba, !prof !79

bb.ba:                                            ; preds = %.noexc208.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102576)
  %.not.i.i.i206.i.i = icmp eq i64 %i.ib, -1
  br i1 %.not.i.i.i206.i.i, label %bb.av, label %.loopexit598.i.i, !prof !77

.loopexit598.i.i:                                 ; preds = %bb.ba
  %.phi.trans.insert610.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre611.i.i = load i64, ptr %.phi.trans.insert610.i.i, align 8, !alias.scope !102576, !noalias !102577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !102578
  store i64 %i.ib, ptr %i.z, align 8, !noalias !102578
  br label %.invoke778.i.i

.loopexit597.i.i:                                 ; preds = %.noexc208.i.i
  %.phi.trans.insert612.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre613.i.i = load i64, ptr %.phi.trans.insert612.i.i, align 8, !noalias !102571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !102571
  store i64 %.pre613.i.i, ptr %i.ab, align 8, !noalias !102571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !102571
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !102571
  br label %.invoke.i.i

bb.bb:                                            ; preds = %bb.ah
  %i.ic = add i64 %i.fq, %i.co                    ; 3 uses
  %.not494.i.i = icmp ugt i64 %i.ic, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not494.i.i, label %.invoke780.i.i, label %bb.bd

bb.bc:                                            ; preds = %bb.ah
  %.not492.i.i = icmp ugt i64 %i.fq, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not492.i.i, label %.invoke780.i.i, label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !noalias !102529, !noundef !67
  %i.if = getelementptr i8, ptr %i.fl, i64 -4     ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !102579
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ie, i32 noundef %i.ig, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc215.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc215.i.i:                                    ; preds = %bb.bd
  %i.ih = load i64, ptr %i.y, align 8, !range !123, !noalias !102579, !noundef !67 ; 3 uses
  %cond.i.i212.i.i = icmp eq i64 %i.ih, 2
  br i1 %cond.i.i212.i.i, label %bb.bg, label %bb.be, !prof !79

bb.be:                                            ; preds = %.noexc215.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102580)
  %.not.i.i.i213.i.i = icmp eq i64 %i.ih, -1
  br i1 %.not.i.i.i213.i.i, label %bb.bh, label %bb.bf, !prof !77

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !102581
  %i.ii = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !102580, !noalias !102582
  store i64 %i.ih, ptr %i.v, align 8, !noalias !102581
  br label %.invoke778.i.i

bb.bg:                                            ; preds = %.noexc215.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !102579
  %i.il = load i64, ptr %i.ik, align 8, !noalias !102579, !noundef !67
  store i64 %i.il, ptr %i.x, align 8, !noalias !102579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !102579
  store ptr %i.x, ptr %i.w, align 8, !noalias !102579
  br label %.invoke.i.i

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !102579
  %i.im = add i64 %5, %i.fq                       ; 3 uses
  %.not495.i.i = icmp ugt i64 %i.im, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not495.i.i, label %.invoke780.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !noalias !102529, !noundef !67
  %i.ip = load i32, ptr %i.if, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !102583
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.io, i32 noundef %i.ip, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc222.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc222.i.i:                                    ; preds = %bb.bi
  %i.iq = load i64, ptr %i.u, align 8, !range !123, !noalias !102583, !noundef !67 ; 3 uses
  %cond.i.i219.i.i = icmp eq i64 %i.iq, 2
  br i1 %cond.i.i219.i.i, label %bb.bl, label %bb.bj, !prof !79

bb.bj:                                            ; preds = %.noexc222.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102584)
  %.not.i.i.i220.i.i = icmp eq i64 %i.iq, -1
  br i1 %.not.i.i.i220.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit225.i.i, label %bb.bk, !prof !77

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !102585
  %i.ir = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !102584, !noalias !102586
  store i64 %i.iq, ptr %i.r, align 8, !noalias !102585
  br label %.invoke778.i.i

bb.bl:                                            ; preds = %.noexc222.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !102583
  %i.iu = load i64, ptr %i.it, align 8, !noalias !102583, !noundef !67
  store i64 %i.iu, ptr %i.t, align 8, !noalias !102583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !102583
  store ptr %i.t, ptr %i.s, align 8, !noalias !102583
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit225.i.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !102583
  br label %bb.bm

bb.bm:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit225.i.i
  %i.iv = icmp eq i64 %i.fm, 0
  br i1 %i.iv, label %.lr.ph491.i.i, label %bb.ah

bb.bn:                                            ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fq
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !102529, !noundef !67
  %i.iy = load i32, ptr %.sroa.0304.0480.i.i, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !102587
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ix, i32 noundef %i.iy, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc229.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc229.i.i:                                    ; preds = %bb.bn
  %i.iz = load i64, ptr %i.q, align 8, !range !123, !noalias !102587, !noundef !67 ; 3 uses
  %cond.i.i226.i.i = icmp eq i64 %i.iz, 2
  br i1 %cond.i.i226.i.i, label %bb.bq, label %bb.bo, !prof !79

bb.bo:                                            ; preds = %.noexc229.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102588)
  %.not.i.i.i227.i.i = icmp eq i64 %i.iz, -1
  br i1 %.not.i.i.i227.i.i, label %bb.br, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !102589
  %i.ja = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !102588, !noalias !102590
  store i64 %i.iz, ptr %i.n, align 8, !noalias !102589
  br label %.invoke778.i.i

bb.bq:                                            ; preds = %.noexc229.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !102587
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !102587, !noundef !67
  store i64 %i.jd, ptr %i.p, align 8, !noalias !102587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !102587
  store ptr %i.p, ptr %i.o, align 8, !noalias !102587
  br label %.invoke.i.i

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !102587
  %i.je = mul i64 %i.fn, %i.bt                    ; 3 uses
  %.not493.i.i = icmp ugt i64 %i.je, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not493.i.i, label %.invoke780.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !noalias !102529, !noundef !67
  %i.jh = load i32, ptr %.sroa.0304.0480.i.i, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !102591
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jg, i32 noundef %i.jh, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc236.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc236.i.i:                                    ; preds = %bb.bs
  %i.ji = load i64, ptr %i.m, align 8, !range !123, !noalias !102591, !noundef !67 ; 3 uses
  %cond.i.i233.i.i = icmp eq i64 %i.ji, 2
  br i1 %cond.i.i233.i.i, label %bb.bv, label %bb.bt, !prof !79

bb.bt:                                            ; preds = %.noexc236.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102592)
  %.not.i.i.i234.i.i = icmp eq i64 %i.ji, -1
  br i1 %.not.i.i.i234.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i, label %bb.bu, !prof !77

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !102593
  %i.jj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !102592, !noalias !102594
  store i64 %i.ji, ptr %i.j, align 8, !noalias !102593
  br label %.invoke778.i.i

bb.bv:                                            ; preds = %.noexc236.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !102591
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !102591, !noundef !67
  store i64 %i.jm, ptr %i.l, align 8, !noalias !102591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !102591
  store ptr %i.l, ptr %i.k, align 8, !noalias !102591
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !102591
  br label %bb.bm

bb.bw:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i, %.lr.ph.i.i
  %.sroa.0301.0473.i.i = phi ptr [ %.sroa.0295.0476.i.i, %.lr.ph.i.i ], [ %i.jn, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i ] ; 3 uses
  %.sroa.7303.0472.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.jo, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0301.0473.i.i, i64 4 ; 2 uses
  %i.jo = add nuw nsw i64 %.sroa.7303.0472.i.i, 1
  %i.jp = add nuw i64 %.sroa.7303.0472.i.i, %i.fj ; 5 uses
  %.not491.i.i = icmp ugt i64 %i.jp, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not491.i.i, label %.invoke780.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !noalias !102529, !noundef !67
  %i.js = load i32, ptr %.sroa.0301.0473.i.i, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !102595
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jr, i32 noundef %i.js, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc246.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc246.i.i:                                    ; preds = %bb.bx
  %i.jt = load i64, ptr %i.i, align 8, !range !123, !noalias !102595, !noundef !67 ; 3 uses
  %cond.i.i243.i.i = icmp eq i64 %i.jt, 2
  br i1 %cond.i.i243.i.i, label %bb.ca, label %bb.by, !prof !79

bb.by:                                            ; preds = %.noexc246.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102596)
  %.not.i.i.i244.i.i = icmp eq i64 %i.jt, -1
  br i1 %.not.i.i.i244.i.i, label %bb.cb, label %bb.bz, !prof !77

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !102597
  %i.ju = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !102596, !noalias !102598
  store i64 %i.jt, ptr %i.f, align 8, !noalias !102597
  br label %.invoke778.i.i

bb.ca:                                            ; preds = %.noexc246.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102595
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !102595, !noundef !67
  store i64 %i.jx, ptr %i.h, align 8, !noalias !102595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !102595
  store ptr %i.h, ptr %i.g, align 8, !noalias !102595
  br label %.invoke.i.i

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !102595
  %i.jy = add nuw i64 %i.jp, 1                    ; 2 uses
  %i.jz = icmp ult i64 %i.jp, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.jz, label %bb.cc, label %.invoke780.i.i

.invoke780.i.i:                                   ; preds = %bb.cb, %bb.bw, %bb.br, %bb.bh, %bb.bc, %bb.bb, %bb.ay, %.peel.next.i.i, %bb.aq, %bb.ak
  %i.ka = phi i64 [ %i.je, %bb.br ], [ %i.hw, %bb.ay ], [ %i.hd, %bb.aq ], [ %i.gs, %bb.ak ], [ %i.hq, %.peel.next.i.i ], [ %i.im, %bb.bh ], [ %i.ic, %bb.bb ], [ %i.fq, %bb.bc ], [ %i.jp, %bb.bw ], [ %i.jy, %bb.cb ]
  %i.kb = phi i64 [ %i.cv, %bb.br ], [ %i.cw, %bb.ay ], [ %i.cw, %bb.aq ], [ %i.cw, %bb.ak ], [ %i.cw, %.peel.next.i.i ], [ %i.cv, %bb.bb ], [ %i.cv, %bb.bc ], [ %i.cv, %bb.bh ], [ %i.cv, %bb.bw ], [ %i.cv, %bb.cb ]
  %i.kc = phi ptr [ @730, %bb.br ], [ @718, %bb.ay ], [ @712, %bb.aq ], [ @710, %bb.ak ], [ @716, %.peel.next.i.i ], [ @724, %bb.bh ], [ @722, %bb.bb ], [ @728, %bb.bc ], [ @734, %bb.bw ], [ @736, %bb.cb ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ka, i64 noundef %i.kb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kc) #61
          to label %.cont781.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102529

.cont781.i.i:                                     ; preds = %.invoke780.i.i
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.kd = load i32, ptr %.sroa.0301.0473.i.i, align 4, !noalias !102529, !noundef !67
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.jy
  %i.kf = load i32, ptr %i.ke, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102599
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.kd, i32 noundef %i.kf, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc253.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc253.i.i:                                    ; preds = %bb.cc
  %i.kg = load i64, ptr %i.e, align 8, !range !123, !noalias !102599, !noundef !67 ; 3 uses
  %cond.i.i250.i.i = icmp eq i64 %i.kg, 2
  br i1 %cond.i.i250.i.i, label %bb.cf, label %bb.cd, !prof !79

bb.cd:                                            ; preds = %.noexc253.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102600)
  %.not.i.i.i251.i.i = icmp eq i64 %i.kg, -1
  br i1 %.not.i.i.i251.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i, label %bb.ce, !prof !77

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102601
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !102600, !noalias !102602
  store i64 %i.kg, ptr %i.b, align 8, !noalias !102601
  br label %.invoke778.i.i

.invoke778.i.i:                                   ; preds = %bb.ce, %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.bf, %.loopexit598.i.i, %.loopexit595.i.i, %bb.at, %bb.ao
  %.sink783.i.sroa.phi.i = phi ptr [ %.sink783.i.sroa.gep.i, %bb.ao ], [ %.sink783.i.sroa.gep47.i, %bb.at ], [ %.sink783.i.sroa.gep48.i, %.loopexit595.i.i ], [ %.sink783.i.sroa.gep49.i, %.loopexit598.i.i ], [ %.sink783.i.sroa.gep50.i, %bb.bf ], [ %.sink783.i.sroa.gep51.i, %bb.bk ], [ %.sink783.i.sroa.gep52.i, %bb.bp ], [ %.sink783.i.sroa.gep53.i, %bb.bu ], [ %.sink783.i.sroa.gep54.i, %bb.bz ], [ %.sink783.i.sroa.gep55.i, %bb.ce ]
  %.sink783.i.i = phi ptr [ %i.al, %bb.ao ], [ %i.ah, %bb.at ], [ %i.ad, %.loopexit595.i.i ], [ %i.z, %.loopexit598.i.i ], [ %i.v, %bb.bf ], [ %i.r, %bb.bk ], [ %i.n, %bb.bp ], [ %i.j, %bb.bu ], [ %i.f, %bb.bz ], [ %i.b, %bb.ce ]
  %.sink.i.i17 = phi i64 [ %i.ha, %bb.ao ], [ %i.hk, %bb.at ], [ %.pre.i.i, %.loopexit595.i.i ], [ %.pre611.i.i, %.loopexit598.i.i ], [ %i.ij, %bb.bf ], [ %i.is, %bb.bk ], [ %i.jb, %bb.bp ], [ %i.jk, %bb.bu ], [ %i.jv, %bb.bz ], [ %i.ki, %bb.ce ]
  %i.kj = phi ptr [ @711, %bb.ao ], [ @713, %bb.at ], [ @717, %.loopexit595.i.i ], [ @719, %.loopexit598.i.i ], [ @723, %bb.bf ], [ @725, %bb.bk ], [ @729, %bb.bp ], [ @731, %bb.bu ], [ @735, %bb.bz ], [ @737, %bb.ce ]
  store i64 %.sink.i.i17, ptr %.sink783.i.sroa.phi.i, align 8, !noalias !102529
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink783.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kj) #60
          to label %.cont779.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102529

.cont779.i.i:                                     ; preds = %.invoke778.i.i
  unreachable

bb.cf:                                            ; preds = %.noexc253.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102599
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !102599, !noundef !67
  store i64 %i.kl, ptr %i.d, align 8, !noalias !102599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102599
  store ptr %i.d, ptr %i.c, align 8, !noalias !102599
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cf, %bb.ca, %bb.bv, %bb.bq, %bb.bl, %bb.bg, %.loopexit597.i.i, %.loopexit594.i.i, %bb.au, %bb.ap
  %.sink784.i.sroa.phi.i = phi ptr [ %.sink784.i.sroa.gep.i, %bb.ap ], [ %.sink784.i.sroa.gep38.i, %bb.au ], [ %.sink784.i.sroa.gep39.i, %.loopexit594.i.i ], [ %.sink784.i.sroa.gep40.i, %.loopexit597.i.i ], [ %.sink784.i.sroa.gep41.i, %bb.bg ], [ %.sink784.i.sroa.gep42.i, %bb.bl ], [ %.sink784.i.sroa.gep43.i, %bb.bq ], [ %.sink784.i.sroa.gep44.i, %bb.bv ], [ %.sink784.i.sroa.gep45.i, %bb.ca ], [ %.sink784.i.sroa.gep46.i, %bb.cf ]
  %.sink784.i.i = phi ptr [ %i.am, %bb.ap ], [ %i.ai, %bb.au ], [ %i.ae, %.loopexit594.i.i ], [ %i.aa, %.loopexit597.i.i ], [ %i.w, %bb.bg ], [ %i.s, %bb.bl ], [ %i.o, %bb.bq ], [ %i.k, %bb.bv ], [ %i.g, %bb.ca ], [ %i.c, %bb.cf ]
  %i.km = phi ptr [ @711, %bb.ap ], [ @713, %bb.au ], [ @717, %.loopexit594.i.i ], [ @719, %.loopexit597.i.i ], [ @723, %bb.bg ], [ @725, %bb.bl ], [ @729, %bb.bq ], [ @731, %bb.bv ], [ @735, %bb.ca ], [ @737, %bb.cf ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink784.i.sroa.phi.i, align 8, !noalias !102529
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink784.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.km) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102529

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit256.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102599
  %i.kn = icmp eq ptr %i.jn, %i.fi
  br i1 %i.kn, label %.thread364.loopexit.i.i, label %bb.bw

bb.cg:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ch, %bb.cg
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102529
  unreachable

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %.pn91.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.di, %bb.o ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ax)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.ch, !noalias !102529

bb.ch:                                            ; preds = %.body.i.i
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.kq) #63
          to label %.body.i unwind label %bb.ci, !noalias !102529

bb.ci:                                            ; preds = %bb.ch
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102603
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ks)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.cg, !noalias !102544

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %.pn91.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, %bb.r
  %.sroa.8.i.sroa.0.0 = phi ptr [ %.sroa.8.i.sroa.0.0.copyload61, %bb.r ], [ %.sroa.8.i.sroa.0.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.8.i.sroa.10.0 = phi ptr [ %.sroa.8.i.sroa.10.0.copyload66, %bb.r ], [ %.sroa.8.i.sroa.10.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.8.i.sroa.11.0 = phi i64 [ %.sroa.8.i.sroa.11.0.copyload67, %bb.r ], [ %.sroa.8.i.sroa.11.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.032.0.i = phi i64 [ %.sroa.032.0.copyload34.i, %bb.r ], [ %.sroa.032.0.copyload33.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ] ; 2 uses
  %i.kt = phi <2 x i32> [ %i.dp, %bb.r ], [ %i.ga, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %i.ku = phi <2 x i64> [ %i.dn, %bb.r ], [ %i.fy, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %i.kv = phi <2 x ptr> [ %i.do, %bb.r ], [ %i.fz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !102529
  %i.kw = icmp eq i64 %.sroa.032.0.i, -1
  br i1 %i.kw, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.thread.i, label %bb.cl

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i, %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102544
  %i.kx = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102544 ; 4 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.cj, label %bb.ck, !prof !104

bb.cj:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !102544
  unreachable

bb.ck:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.thread.i
  store ptr @2448, ptr %i.kx, align 8, !noalias !102544
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 24, ptr %i.kz, align 8, !noalias !102544
  %i.la = insertelement <2 x ptr> <ptr poison, ptr @1267>, ptr %i.kx, i64 0
  br label %bb.cm

bb.cl:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 %.sroa.032.0.i, ptr %i.bc, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.8.i.sroa.0.0, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.719.sroa.7.0..sroa.719.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x i64> %i.ku, ptr %.sroa.719.sroa.7.0..sroa.719.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <2 x ptr> %i.kv, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr %.sroa.8.i.sroa.10.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i64 %.sroa.8.i.sroa.11.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store <2 x i32> %i.kt, ptr %.sroa.1425.0..sroa_idx, align 8
  %.sroa.1528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store ptr @_Py_NoneStruct, ptr %.sroa.1528.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 81
  store i8 %i.ch, ptr %.sroa.17.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102604
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE19create_class_objectB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.bc), !noalias !102605, !inline_history !55
  %i.lb = load i64, ptr %i.a, align 8, !range !68, !noalias !102604, !noundef !67
  %i.lc = trunc nuw i64 %i.lb to i1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload31 = load ptr, ptr %i.ld, align 8, !noalias !102606 ; 2 uses
  br i1 %i.lc, label %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.cn

_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.cl
  %.sroa.1032.8..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.le = load <2 x i64>, ptr %.sroa.1032.8..sroa_idx34, align 8, !noalias !102606
  %.sroa.1032.sroa.6.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1032.sroa.6.0.copyload44 = load ptr, ptr %.sroa.1032.sroa.6.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102606
  %.sroa.1032.sroa.7.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.lf = load <2 x ptr>, ptr %.sroa.1032.sroa.7.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102606
  %.sroa.1032.sroa.9.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1032.sroa.9.0.copyload47 = load i64, ptr %.sroa.1032.sroa.9.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102606
  %.sroa.1032.sroa.10.0..sroa.1032.8..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.lg = load <2 x i32>, ptr %.sroa.1032.sroa.10.0..sroa.1032.8..sroa_idx34.sroa_idx, align 8, !noalias !102606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.cm

bb.cm:                                            ; preds = %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ck
  %.sroa.1032.sroa.9.0 = phi i64 [ undef, %bb.ck ], [ %.sroa.1032.sroa.9.0.copyload47, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %.sroa.1032.sroa.6.0 = phi ptr [ null, %bb.ck ], [ %.sroa.1032.sroa.6.0.copyload44, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %.sroa.5.0 = phi ptr [ null, %bb.ck ], [ %.sroa.5.8.copyload31, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lh = phi <2 x i32> [ <i32 3, i32 undef>, %bb.ck ], [ %i.lg, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.li = phi <2 x i64> [ <i64 0, i64 1>, %bb.ck ], [ %i.le, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lj = phi <2 x ptr> [ %i.la, %bb.ck ], [ %i.lf, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.lk, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.li, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.1032.sroa.6.0, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x ptr> %i.lj, ptr %.sroa.756.0..sroa_idx, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators37___pyfunction_directed_heavy_hex_graph:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = alloca [72 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2531, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.da, i64 noundef 3)
  %i.db = load i64, ptr %i.cz, align 8, !range !68, !noundef !67
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.de, ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.ee

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.df = load ptr, ptr %i.da, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !103979
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cr, ptr noundef nonnull %i.df), !noalias !103979
  %i.dg = load i64, ptr %i.cr, align 8, !range !68, !noalias !103979, !noundef !67
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.d, label %bb.e, !prof !71

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !103979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i64 64, i1 false), !noalias !103979
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2491, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !103979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !103979
  %.sroa.017.0.copyload = load i64, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload, ptr %i.dk, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i64 56, i1 false)
  br label %bb.ee

bb.e:                                             ; preds = %bb.c
  %i.dl = load i64, ptr %i.di, align 8, !noalias !103979, !noundef !67 ; 16 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dl, ptr %i.dm, align 8
  store i64 0, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !103979
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !103980
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cp, ptr noundef nonnull %i.do), !noalias !103980
  %i.dp = load i8, ptr %i.cp, align 8, !range !69, !noalias !103980, !noundef !67
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.dr, align 1
  store i8 0, ptr %i.cv, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !69, !noalias !103980, !noundef !67
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.dt, ptr %i.du, align 1
  store i8 0, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !103980
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !103980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false), !noalias !103980
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2505, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !103980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !103980
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  br label %bb.ee

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !range !69, !noundef !67
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !67 ; 2 uses
  %.not.i21 = icmp eq ptr %i.eb, null
  br i1 %.not.i21, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !103981
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cn, ptr noundef nonnull %i.eb), !noalias !103981
  %i.ec = load i8, ptr %i.cn, align 8, !range !69, !noalias !103981, !noundef !67
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.j, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread: ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 1, ptr %i.ee, align 1
  store i8 0, ptr %i.ct, align 8
  br label %bb.k

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24: ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !range !69, !noalias !103981, !noundef !67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 %i.eg, ptr %i.eh, align 1
  store i8 0, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !103981
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !103981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i64 64, i1 false), !noalias !103981
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1120, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !103981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !103981
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  br label %bb.ee

bb.k:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread
  %i.el = trunc nuw i8 %i.dz to i1                ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !69, !noundef !67
  %i.eo = and i64 %i.dl, 1
  %i.ep = icmp eq i64 %i.eo, 0
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sink.i.sroa.gep42.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sink.i.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sink.i.sroa.gep44.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sink.i.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sink.i.sroa.gep46.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sink.i.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sink.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sink.i.sroa.gep49.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sink.i.sroa.gep50.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sink.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sink.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sink.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink.i.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sink.i.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sink.i.sroa.gep56.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink.i.sroa.gep57.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink.i.sroa.gep58.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.i.sroa.gep59.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.i.sroa.gep60.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink1321.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sink1321.i.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sink1321.i.sroa.gep62.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sink1321.i.sroa.gep63.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sink1321.i.sroa.gep64.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sink1321.i.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sink1321.i.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sink1321.i.sroa.gep67.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sink1321.i.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sink1321.i.sroa.gep69.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sink1321.i.sroa.gep70.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink1321.i.sroa.gep71.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink1321.i.sroa.gep72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink1321.i.sroa.gep73.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink1321.i.sroa.gep74.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink1321.i.sroa.gep75.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink1321.i.sroa.gep76.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1321.i.sroa.gep77.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink1321.i.sroa.gep78.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink1321.i.sroa.gep79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.ep, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = mul i64 %i.dl, 5
  %i.er = shl i64 %i.dl, 1                        ; 2 uses
  %i.es = add i64 %i.eq, -2
  %i.et = mul i64 %i.es, %i.dl
  %i.eu = add nsw i64 %i.et, -1
  %i.ev = lshr exact i64 %i.eu, 1
  %i.ew = add nsw i64 %i.dl, -1                   ; 11 uses
  %i.ex = add i64 %i.dl, 1
  %i.ey = add i64 %i.ex, %i.er
  %i.ez = mul i64 %i.ey, %i.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !103982
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.cl, i64 noundef %i.ev, i64 noundef %i.ez), !noalias !103982
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false), !alias.scope !103983, !noalias !103982
  store i32 -1, ptr %i.fb, align 8, !alias.scope !103983, !noalias !103982
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  store i32 -1, ptr %i.fc, align 4, !alias.scope !103983, !noalias !103982
  %i.fd = icmp eq i64 %i.dl, 1
  br i1 %i.fd, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fe = mul i64 %i.dl, %i.dl                    ; 11 uses
  %i.ff = lshr i64 %i.dl, 1
  %i.fg = mul i64 %i.ew, %i.dl                    ; 15 uses
  %i.fh = shl i64 %i.fe, 2                        ; 6 uses
  %i.fi = icmp ugt i64 %i.fe, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.fh, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.fi, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.o, label %bb.n, !prof !73

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103984
  %i.fj = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103984 ; 13 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.o, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.n ], [ 0, %bb.m ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.fh) #61
          to label %.noexc.i.i unwind label %bb.r, !noalias !103982

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fm, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.fm = add i64 %.val4.i.i.i.i.i.i.i.i.i, 1     ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !103986
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !103987

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !103988)
  %i.fn = load i64, ptr %i.ck, align 8, !range !123, !alias.scope !103988, !noalias !103989, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fn, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !103990
  %i.fo = load i64, ptr %i.fl, align 8, !alias.scope !103988, !noalias !103989
  store i64 %i.fn, ptr %i.cj, align 8, !noalias !103990
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !noalias !103990
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !103987

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.q
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.fq = load i32, ptr %i.fl, align 8, !alias.scope !103988, !noalias !103989, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !103986
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.fq, ptr %i.fr, align 4, !noalias !103991
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fm, %i.fe
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i, label %bb.p

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.p
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103992
  br label %.body.i.i

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.o
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.l
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !103993
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc110.i.i unwind label %bb.r, !noalias !103982

.noexc110.i.i:                                    ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !103994)
  %i.ft = load i64, ptr %i.ci, align 8, !range !123, !alias.scope !103994, !noalias !103995, !noundef !67 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ft, -1
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t, !prof !77

bb.t:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !103996
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !103994, !noalias !103995
  store i64 %i.ft, ptr %i.ch, align 8, !noalias !103996
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !noalias !103996
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc111.i.i unwind label %bb.r, !noalias !103982

.noexc111.i.i:                                    ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !103993
  %.sroa.034.0.copyload36.i = load i64, ptr %i.cl, align 8, !noalias !103997
  %.sroa.8.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload69 = load ptr, ptr %.sroa.8.0..sroa_idx39.i, align 8, !noalias !103997
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.fx = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.fy = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.10.0.copyload74 = load ptr, ptr %i.fa, align 8, !noalias !103997
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload75 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !103997
  %i.fz = load <2 x i32>, ptr %i.fb, align 8, !noalias !103997
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i
  %i.ga = add nuw i64 %i.ff, 1                    ; 3 uses
  %i.gb = mul i64 %i.ga, %i.ew                    ; 8 uses
  %i.gc = shl i64 %i.gb, 2                        ; 4 uses
  %i.gd = icmp ugt i64 %i.gb, 4611686018427387903
  %.not.i.i.i115.i.i = icmp ugt i64 %i.gc, 9223372036854775804
  %or.cond.i.i.i116.i.i = or i1 %i.gd, %.not.i.i.i115.i.i
  br i1 %or.cond.i.i.i116.i.i, label %bb.y, label %bb.v, !prof !73

bb.v:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i
  %i.ge = icmp eq i64 %i.gc, 0
  br i1 %i.ge, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103998
  %i.gf = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103998 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gh = ptrtoint ptr %i.gf to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i

bb.y:                                             ; preds = %bb.w, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i
  %.sroa.410.0.ph.i.i139.i.i = phi i64 [ 4, %bb.w ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i139.i.i, i64 %i.gc) #61
          to label %.noexc140.i.i unwind label %bb.ab, !noalias !103982

.noexc140.i.i:                                    ; preds = %bb.y
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i: ; preds = %bb.x, %bb.v
  %.sroa.10.0.i.i118.i.i = phi i64 [ %i.gh, %bb.x ], [ 4, %bb.v ]
  %.sroa.410.0.i.i119.i.i = phi i64 [ %i.gb, %bb.x ], [ 0, %bb.v ] ; 6 uses
  %i.gi = inttoptr i64 %.sroa.10.0.i.i118.i.i to ptr ; 8 uses
  %i.gj = icmp samesign ule i64 %i.gb, %.sroa.410.0.i.i119.i.i
  call void @llvm.assume(i1 %i.gj)
  %.not458.i.i.a = icmp eq i64 %i.gb, 0           ; 2 uses
  br i1 %.not458.i.i.a, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

.lr.ph.i.i.i.i.i.i.i124.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i124.i.i
  %.val4.i.i.i.i.i.i.i125.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i124.i.i ], [ %i.gl, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gl = add nuw nsw i64 %.val4.i.i.i.i.i.i.i125.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !104000
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i133.i.i unwind label %.loopexit.i.i.i.i.i.i.i127.i.i, !noalias !104001

.noexc.i.i.i.i.i.i.i133.i.i:                      ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !104002)
  %i.gm = load i64, ptr %i.cg, align 8, !range !123, !alias.scope !104002, !noalias !104003, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i134.i.i = icmp eq i64 %i.gm, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i134.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !77

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i133.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !104004
  %i.gn = load i64, ptr %i.gk, align 8, !alias.scope !104002, !noalias !104003
  store i64 %i.gm, ptr %i.cf, align 8, !noalias !104004
  %i.go = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !noalias !104004
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i137.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i, !noalias !104001

.noexc7.i.i.i.i.i.i.i137.i.i:                     ; preds = %bb.aa
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i133.i.i
  %i.gp = load i32, ptr %i.gk, align 8, !alias.scope !104002, !noalias !104003, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !104000
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.val4.i.i.i.i.i.i.i125.i.i
  store i32 %i.gp, ptr %i.gq, align 4, !noalias !104005
  %exitcond.not.i.i.i.i.i.i.i138.i.i = icmp eq i64 %i.gl, %i.gb
  br i1 %exitcond.not.i.i.i.i.i.i.i138.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i, label %bb.z

.loopexit.i.i.i.i.i.i.i127.i.i:                   ; preds = %bb.z
  %lpad.loopexit.i.i.i.i.i.i.i128.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i

.loopexit.split-lp.i.i.i.i.i.i.i135.i.i:          ; preds = %bb.aa
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i, %.loopexit.i.i.i.i.i.i.i127.i.i
  %lpad.phi.i.i.i.i.i.i.i130.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i128.i.i, %.loopexit.i.i.i.i.i.i.i127.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i136.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i135.i.i ]
  %i.gr = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104006
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i, %.body172.i.i, %bb.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i ], [ %i.gs, %bb.ab ], [ %lpad.phi.i.i.i.i.i.i.i130.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i131.i.i ], [ %.pn.i.i, %.body172.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.y
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.gt = shl i64 %i.fg, 2                        ; 4 uses
  %i.gu = icmp ugt i64 %i.fg, 4611686018427387903
  %.not.i.i.i146.i.i = icmp ugt i64 %i.gt, 9223372036854775804
  %or.cond.i.i.i147.i.i = or i1 %i.gu, %.not.i.i.i146.i.i
  br i1 %or.cond.i.i.i147.i.i, label %bb.af, label %bb.ac, !prof !73

bb.ac:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i
  %i.gv = icmp eq i64 %i.gt, 0
  br i1 %i.gv, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !104007
  %i.gw = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104007 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gy = ptrtoint ptr %i.gw to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i

bb.af:                                            ; preds = %bb.ad, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i
  %.sroa.410.0.ph.i.i170.i.i = phi i64 [ 4, %bb.ad ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i170.i.i, i64 %i.gt) #61
          to label %.noexc171.i.i unwind label %bb.ai, !noalias !103982

.noexc171.i.i:                                    ; preds = %bb.af
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i: ; preds = %bb.ae, %bb.ac
  %.sroa.10.0.i.i149.i.i = phi i64 [ %i.gy, %bb.ae ], [ 4, %bb.ac ]
  %.sroa.410.0.i.i150.i.i = phi i64 [ %i.fg, %bb.ae ], [ 0, %bb.ac ] ; 7 uses
  %i.gz = inttoptr i64 %.sroa.10.0.i.i149.i.i to ptr ; 12 uses
  %i.ha = icmp samesign ule i64 %i.fg, %.sroa.410.0.i.i150.i.i
  call void @llvm.assume(i1 %i.ha)
  %.not459.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not459.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i155.i.i

.lr.ph.i.i.i.i.i.i.i155.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7e_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i155.i.i
  %.val4.i.i.i.i.i.i.i156.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i155.i.i ], [ %i.hc, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7e_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hc = add i64 %.val4.i.i.i.i.i.i.i156.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !104009
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i164.i.i unwind label %.loopexit.i.i.i.i.i.i.i158.i.i, !noalias !104010

.noexc.i.i.i.i.i.i.i164.i.i:                      ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !104011)
  %i.hd = load i64, ptr %i.ce, align 8, !range !123, !alias.scope !104011, !noalias !104012, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i165.i.i = icmp eq i64 %i.hd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i165.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7e_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, label %bb.ah, !prof !77

bb.ah:                                            ; preds = %.noexc.i.i.i.i.i.i.i164.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !104013
  %i.he = load i64, ptr %i.hb, align 8, !alias.scope !104011, !noalias !104012
  store i64 %i.hd, ptr %i.cd, align 8, !noalias !104013
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !noalias !104013
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i168.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i, !noalias !104010

.noexc7.i.i.i.i.i.i.i168.i.i:                     ; preds = %bb.ah
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7e_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i164.i.i
  %i.hg = load i32, ptr %i.hb, align 8, !alias.scope !104011, !noalias !104012, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !104009
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.val4.i.i.i.i.i.i.i156.i.i
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !104014
  %exitcond.not.i.i.i.i.i.i.i169.i.i = icmp eq i64 %i.hc, %i.fg
  br i1 %exitcond.not.i.i.i.i.i.i.i169.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i, label %bb.ag

.loopexit.i.i.i.i.i.i.i158.i.i:                   ; preds = %bb.ag
  %lpad.loopexit.i.i.i.i.i.i.i159.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i160.i.i

.loopexit.split-lp.i.i.i.i.i.i.i166.i.i:          ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i167.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i160.i.i

.body.i.i160.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i, %.loopexit.i.i.i.i.i.i.i158.i.i
  %lpad.phi.i.i.i.i.i.i.i161.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i159.i.i, %.loopexit.i.i.i.i.i.i.i158.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i167.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i ] ; 2 uses
  %i.hi = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.hi, label %.body172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i: ; preds = %.body.i.i160.i.i
  %i.hj = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104015
  br label %.body172.i.i

.body172.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i, %.loopexit.split-lp.i.i, %bb.ai, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i, %.body.i.i160.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i161.i.i, %.body.i.i160.i.i ], [ %i.hm, %bb.ai ], [ %lpad.phi.i.i.i.i.i.i.i161.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i ] ; 2 uses
  %i.hk = icmp eq i64 %.sroa.410.0.i.i119.i.i, 0
  br i1 %i.hk, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i: ; preds = %.body172.i.i
  %i.hl = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.ai:                                            ; preds = %bb.af
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7e_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i
  br i1 %i.el, label %.lr.ph.us.i.i, label %.lr.ph.i.i

.lr.ph.us.i.i:                                    ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i, %.thread452.loopexit.us.i.i
  %.sroa.0391.0699.us.i.i = phi ptr [ %i.ho, %.thread452.loopexit.us.i.i ], [ %i.gz, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 4 uses
  %.sroa.5392.0698.us.i.i = phi i64 [ %i.hp, %.thread452.loopexit.us.i.i ], [ %i.fg, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %.sroa.10393.0697.us.i.i = phi i64 [ %i.hq, %.thread452.loopexit.us.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %i.hn = call i64 @llvm.umin.i64(i64 %.sroa.5392.0698.us.i.i, i64 %i.ew) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0391.0699.us.i.i) ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0391.0699.us.i.i, i64 %i.hn
  %i.hp = sub nuw nsw i64 %.sroa.5392.0698.us.i.i, %i.hn ; 2 uses
  %i.hq = add i64 %.sroa.10393.0697.us.i.i, 1
  %.idx724.i.i = shl nuw nsw i64 %i.hn, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0391.0699.us.i.i, i64 %.idx724.i.i
  %i.hs = mul i64 %.sroa.10393.0697.us.i.i, %i.dl
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i, %.lr.ph.us.i.i
  %.sroa.0397.0672.us.us.i.i = phi ptr [ %.sroa.0391.0699.us.i.i, %.lr.ph.us.i.i ], [ %i.ht, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i ] ; 5 uses
  %.sroa.7399.0671.us.us.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.hu, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0397.0672.us.us.i.i, i64 4 ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.7399.0671.us.us.i.i, 1
  %i.hv = add nuw i64 %.sroa.7399.0671.us.us.i.i, %i.hs ; 5 uses
  %.not725.i.i = icmp ugt i64 %i.hv, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not725.i.i, label %.split680.us.invoke.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.hy = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104016
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hx, i32 noundef %i.hy, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc308.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc308.us.us.i.i:                              ; preds = %bb.ak
  %i.hz = load i64, ptr %i.q, align 8, !range !123, !noalias !104016, !noundef !67 ; 3 uses
  %cond.i.i305.us.us.i.i = icmp eq i64 %i.hz, 2
  br i1 %cond.i.i305.us.us.i.i, label %.split675.us.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc308.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104017)
  %.not.i.i.i306.us.us.i.i = icmp eq i64 %i.hz, -1
  br i1 %.not.i.i.i306.us.us.i.i, label %bb.am, label %.split677.us.i.i, !prof !77

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104016
  %i.ia = add nuw i64 %i.hv, 1                    ; 2 uses
  %i.ib = icmp ult i64 %i.hv, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.ib, label %bb.an, label %.split680.us.invoke.i.i

bb.an:                                            ; preds = %bb.am
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ia
  %i.id = load i32, ptr %i.ic, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.ie = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104018
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.id, i32 noundef %i.ie, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc315.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc315.us.us.i.i:                              ; preds = %bb.an
  %i.if = load i64, ptr %i.m, align 8, !range !123, !noalias !104018, !noundef !67 ; 3 uses
  %cond.i.i312.us.us.i.i = icmp eq i64 %i.if, 2
  br i1 %cond.i.i312.us.us.i.i, label %.split683.us.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc315.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104019)
  %.not.i.i.i313.us.us.i.i = icmp eq i64 %i.if, -1
  br i1 %.not.i.i.i313.us.us.i.i, label %bb.ap, label %.split685.us.i.i, !prof !77

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104018
  %i.ig = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104020
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ig, i32 noundef %i.hx, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc322.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc322.us.us.i.i:                              ; preds = %bb.ap
  %i.ih = load i64, ptr %i.i, align 8, !range !123, !noalias !104020, !noundef !67 ; 3 uses
  %cond.i.i319.us.us.i.i = icmp eq i64 %i.ih, 2
  br i1 %cond.i.i319.us.us.i.i, label %.split688.us.i.i, label %bb.aq, !prof !79

bb.aq:                                            ; preds = %.noexc322.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104021)
  %.not.i.i.i320.us.us.i.i = icmp eq i64 %i.ih, -1
  br i1 %.not.i.i.i320.us.us.i.i, label %bb.ar, label %.split690.us.i.i, !prof !77

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !104020
  %i.ii = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104022
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ii, i32 noundef %i.id, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc329.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc329.us.us.i.i:                              ; preds = %bb.ar
  %i.ij = load i64, ptr %i.e, align 8, !range !123, !noalias !104022, !noundef !67 ; 3 uses
  %cond.i.i326.us.us.i.i = icmp eq i64 %i.ij, 2
  br i1 %cond.i.i326.us.us.i.i, label %.split693.us.i.i, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc329.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104023)
  %.not.i.i.i327.us.us.i.i = icmp eq i64 %i.ij, -1
  br i1 %.not.i.i.i327.us.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i, label %.split695.us.i.i, !prof !77

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104022
  %i.ik = icmp eq ptr %i.ht, %i.hr
  br i1 %i.ik, label %.thread452.loopexit.us.i.i, label %bb.aj

.thread452.loopexit.us.i.i:                       ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i
  %i.il = icmp eq i64 %i.hp, 0
  br i1 %i.il, label %.preheader464.i.i, label %.lr.ph.us.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i: ; preds = %bb.ar, %bb.ap, %bb.an, %bb.ak
  %lpad.loopexit467.us.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.thread.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @675, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @677) #61
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !103982

.loopexit.i.i:                                    ; preds = %bb.bf, %bb.bd, %bb.ba, %bb.ax
  %lpad.loopexit963.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.by, %bb.bu, %bb.bp, %bb.bk
  %lpad.loopexit461.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.dl, %bb.dh, %bb.dc, %bb.cx, %bb.ct, %bb.cp, %bb.cj, %bb.ce
  %lpad.loopexit465.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i: ; preds = %bb.dt, %bb.dq
  %lpad.loopexit467.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.split693.us.invoke.i.i, %.split695.us.invoke.i.i, %.split680.us.invoke.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.thread.i.i
  %lpad.loopexit.split-lp468.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit963.i.i, %.loopexit.i.i ], [ %lpad.loopexit461.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit465.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp468.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit467.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %lpad.loopexit467.us.us.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %i.im = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.im, label %.body172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.in = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %.body172.i.i

bb.at:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.thread.i.i
  unreachable

.thread452.loopexit.i.i:                          ; preds = %bb.dv
  %i.io = icmp eq i64 %i.is, 0
  br i1 %i.io, label %.preheader464.i.i, label %.lr.ph.i.i

.preheader464.i.i:                                ; preds = %.thread452.loopexit.i.i, %.thread452.loopexit.us.i.i
  br i1 %.not458.i.i.a, label %._crit_edge.i.i, label %.lr.ph711.i.i

.lr.ph711.i.i:                                    ; preds = %.preheader464.i.i
  %i.ip = add nsw i64 %i.er, -1
  br label %bb.au

.lr.ph.i.i:                                       ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i, %.thread452.loopexit.i.i
  %.sroa.0391.0699.i.i = phi ptr [ %i.ir, %.thread452.loopexit.i.i ], [ %i.gz, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 4 uses
  %.sroa.5392.0698.i.i = phi i64 [ %i.is, %.thread452.loopexit.i.i ], [ %i.fg, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %.sroa.10393.0697.i.i = phi i64 [ %i.it, %.thread452.loopexit.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %i.iq = call i64 @llvm.umin.i64(i64 %.sroa.5392.0698.i.i, i64 %i.ew) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0391.0699.i.i) ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0391.0699.i.i, i64 %i.iq
  %i.is = sub nuw nsw i64 %.sroa.5392.0698.i.i, %i.iq ; 2 uses
  %i.it = add i64 %.sroa.10393.0697.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.iq, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0391.0699.i.i, i64 %.idx.i.i
  %i.iv = mul i64 %.sroa.10393.0697.i.i, %i.dl
  br label %bb.dp

bb.au:                                            ; preds = %bb.co, %.lr.ph711.i.i
  %.sroa.0400.0710.i.i = phi ptr [ %i.gi, %.lr.ph711.i.i ], [ %i.ix, %bb.co ] ; 6 uses
  %.sroa.5401.0709.i.i = phi i64 [ %i.gb, %.lr.ph711.i.i ], [ %i.iy, %bb.co ] ; 2 uses
  %.sroa.10403.0708.i.i = phi i64 [ 0, %.lr.ph711.i.i ], [ %i.iz, %bb.co ] ; 4 uses
  %i.iw = call i64 @llvm.umin.i64(i64 %.sroa.5401.0709.i.i, i64 %i.ga) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0400.0710.i.i) ]
  %i.ix = getelementptr [4 x i8], ptr %.sroa.0400.0710.i.i, i64 %i.iw ; 2 uses
  %i.iy = sub nuw nsw i64 %.sroa.5401.0709.i.i, %i.iw ; 2 uses
  %i.iz = add i64 %.sroa.10403.0708.i.i, 1
  %i.ja = and i64 %.sroa.10403.0708.i.i, 1
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = mul i64 %.sroa.10403.0708.i.i, %i.dl    ; 5 uses
  br i1 %i.jb, label %bb.cc, label %bb.cd

.lr.ph723.i.i:                                    ; preds = %bb.co, %.thread.i.i
  %.sroa.0407.0722.i.i = phi ptr [ %i.je, %.thread.i.i ], [ %i.gi, %bb.co ] ; 5 uses
  %.sroa.5408.0721.i.i = phi i64 [ %i.jf, %.thread.i.i ], [ %i.gb, %bb.co ] ; 2 uses
  %.sroa.10410.0720.i.i = phi i64 [ %i.jg, %.thread.i.i ], [ 0, %bb.co ] ; 5 uses
  %i.jd = call i64 @llvm.umin.i64(i64 %.sroa.5408.0721.i.i, i64 %i.ga) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0407.0722.i.i) ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0407.0722.i.i, i64 %i.jd
  %i.jf = sub nuw nsw i64 %.sroa.5408.0721.i.i, %i.jd ; 2 uses
  %i.jg = add i64 %.sroa.10410.0720.i.i, 1        ; 2 uses
  %i.jh = and i64 %.sroa.10410.0720.i.i, 1
  %i.ji = icmp eq i64 %i.jh, 0
  %.idx726.i.i = shl nuw nsw i64 %i.jd, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0407.0722.i.i, i64 %.idx726.i.i ; 2 uses
  br i1 %i.ji, label %bb.av, label %.lr.ph714.i.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %.preheader464.i.i
  %.sroa.034.0.copyload35.i = load i64, ptr %i.cl, align 8, !noalias !103997
  %.sroa.8.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx38.i, align 8, !noalias !103997
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.jk = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.jl = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.fa, align 8, !noalias !103997
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %i.jm = load <2 x i32>, ptr %i.fb, align 8, !noalias !103997
  %i.jn = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.jn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i: ; preds = %._crit_edge.i.i
  %i.jo = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef %i.jo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i, %._crit_edge.i.i
  %i.jp = icmp eq i64 %.sroa.410.0.i.i119.i.i, 0
  br i1 %i.jp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
  %i.jq = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef %i.jq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators37___pyfunction_directed_heavy_hex_graph:bb.a
  %cond.i.i208.i.i = icmp eq i64 %i.ku, 2
  br i1 %cond.i.i208.i.i, label %.loopexit972.i.i, label %bb.bg, !prof !79

bb.bg:                                            ; preds = %.noexc211.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104037)
  %.not.i.i.i209.i.i = icmp eq i64 %i.ku, -1
  br i1 %.not.i.i.i209.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit214.i.i, label %.loopexit973.i.i, !prof !77

.loopexit973.i.i:                                 ; preds = %bb.bg
  %.phi.trans.insert997.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre998.i.i = load i64, ptr %.phi.trans.insert997.i.i, align 8, !alias.scope !104037, !noalias !104038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !104039
  store i64 %i.ku, ptr %i.bn, align 8, !noalias !104039
  br label %.split695.us.invoke.i.i

.loopexit972.i.i:                                 ; preds = %.noexc211.i.i
  %.phi.trans.insert999.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre1000.i.i = load i64, ptr %.phi.trans.insert999.i.i, align 8, !noalias !104036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !104036
  store i64 %.pre1000.i.i, ptr %i.bp, align 8, !noalias !104036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !104036
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !104036
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit214.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !104036
  br label %bb.aw

bb.bh:                                            ; preds = %bb.bj, %.lr.ph714.i.i
  %.sroa.7419.0713.i.i = phi i64 [ 0, %.lr.ph714.i.i ], [ %i.kw, %bb.bj ] ; 3 uses
  %.sroa.0417.0712.i.i = phi ptr [ %.sroa.0407.0722.i.i, %.lr.ph714.i.i ], [ %i.kv, %bb.bj ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0417.0712.i.i, i64 4 ; 2 uses
  %i.kw = add nuw nsw i64 %.sroa.7419.0713.i.i, 1
  %.not90.i.i = icmp eq i64 %.sroa.7419.0713.i.i, %i.jw
  br i1 %.not90.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = shl nuw nsw i64 %.sroa.7419.0713.i.i, 1 ; 2 uses
  %i.ky = add i64 %i.kx, %i.jx                    ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %i.fg
  br i1 %i.kz, label %bb.bk, label %.split680.us.invoke.i.i

bb.bj:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, %bb.bt, %bb.bh
  %i.la = icmp eq ptr %i.kv, %i.jj
  br i1 %i.la, label %.thread.i.i, label %bb.bh

bb.bk:                                            ; preds = %bb.bi
  %i.lb = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ky ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !104040
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lb, i32 noundef %i.ld, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc221.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc221.i.i:                                    ; preds = %bb.bk
  %i.le = load i64, ptr %i.bm, align 8, !range !123, !noalias !104040, !noundef !67 ; 3 uses
  %cond.i.i218.i.i = icmp eq i64 %i.le, 2
  br i1 %cond.i.i218.i.i, label %bb.bn, label %bb.bl, !prof !79

bb.bl:                                            ; preds = %.noexc221.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104041)
  %.not.i.i.i219.i.i = icmp eq i64 %i.le, -1
  br i1 %.not.i.i.i219.i.i, label %bb.bo, label %bb.bm, !prof !77

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !104042
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !alias.scope !104041, !noalias !104043
  store i64 %i.le, ptr %i.bj, align 8, !noalias !104042
  br label %.split695.us.invoke.i.i

bb.bn:                                            ; preds = %.noexc221.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !104040
  %i.li = load i64, ptr %i.lh, align 8, !noalias !104040, !noundef !67
  store i64 %i.li, ptr %i.bl, align 8, !noalias !104040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !104040
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !104040
  br label %.split693.us.invoke.i.i

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !104040
  %i.lj = add i64 %i.kx, %i.jy                    ; 3 uses
  %i.lk = icmp ult i64 %i.lj, %i.fg
  br i1 %i.lk, label %bb.bp, label %.split680.us.invoke.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ll = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.lj ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !104044
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ll, i32 noundef %i.ln, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc228.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc228.i.i:                                    ; preds = %bb.bp
  %i.lo = load i64, ptr %i.bi, align 8, !range !123, !noalias !104044, !noundef !67 ; 3 uses
  %cond.i.i225.i.i = icmp eq i64 %i.lo, 2
  br i1 %cond.i.i225.i.i, label %bb.bs, label %bb.bq, !prof !79

bb.bq:                                            ; preds = %.noexc228.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104045)
  %.not.i.i.i226.i.i = icmp eq i64 %i.lo, -1
  br i1 %.not.i.i.i226.i.i, label %bb.bt, label %bb.br, !prof !77

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !104046
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !104045, !noalias !104047
  store i64 %i.lo, ptr %i.bf, align 8, !noalias !104046
  br label %.split695.us.invoke.i.i

bb.bs:                                            ; preds = %.noexc228.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !104044
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !104044, !noundef !67
  store i64 %i.ls, ptr %i.bh, align 8, !noalias !104044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !104044
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !104044
  br label %.split693.us.invoke.i.i

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !104044
  br i1 %i.el, label %bb.bu, label %bb.bj

bb.bu:                                            ; preds = %bb.bt
  %i.lt = load i32, ptr %i.lc, align 4, !noalias !103982, !noundef !67
  %i.lu = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !104048
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lt, i32 noundef %i.lu, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc235.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc235.i.i:                                    ; preds = %bb.bu
  %i.lv = load i64, ptr %i.be, align 8, !range !123, !noalias !104048, !noundef !67 ; 3 uses
  %cond.i.i232.i.i = icmp eq i64 %i.lv, 2
  br i1 %cond.i.i232.i.i, label %bb.bx, label %bb.bv, !prof !79

bb.bv:                                            ; preds = %.noexc235.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104049)
  %.not.i.i.i233.i.i = icmp eq i64 %i.lv, -1
  br i1 %.not.i.i.i233.i.i, label %bb.by, label %bb.bw, !prof !77

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !104050
  %i.lw = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !104049, !noalias !104051
  store i64 %i.lv, ptr %i.bb, align 8, !noalias !104050
  br label %.split695.us.invoke.i.i

bb.bx:                                            ; preds = %.noexc235.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !104048
  %i.lz = load i64, ptr %i.ly, align 8, !noalias !104048, !noundef !67
  store i64 %i.lz, ptr %i.bd, align 8, !noalias !104048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !104048
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !104048
  br label %.split693.us.invoke.i.i

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !104048
  %i.ma = load i32, ptr %i.lm, align 4, !noalias !103982, !noundef !67
  %i.mb = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !104052
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ma, i32 noundef %i.mb, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc242.i.i:                                    ; preds = %bb.by
  %i.mc = load i64, ptr %i.ba, align 8, !range !123, !noalias !104052, !noundef !67 ; 3 uses
  %cond.i.i239.i.i = icmp eq i64 %i.mc, 2
  br i1 %cond.i.i239.i.i, label %bb.cb, label %bb.bz, !prof !79

bb.bz:                                            ; preds = %.noexc242.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104053)
  %.not.i.i.i240.i.i = icmp eq i64 %i.mc, -1
  br i1 %.not.i.i.i240.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, label %bb.ca, !prof !77

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !104054
  %i.md = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !104053, !noalias !104055
  store i64 %i.mc, ptr %i.ax, align 8, !noalias !104054
  br label %.split695.us.invoke.i.i

bb.cb:                                            ; preds = %.noexc242.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !104052
  %i.mg = load i64, ptr %i.mf, align 8, !noalias !104052, !noundef !67
  store i64 %i.mg, ptr %i.az, align 8, !noalias !104052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !104052
  store ptr %i.az, ptr %i.ay, align 8, !noalias !104052
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !104052
  br label %bb.bj

bb.cc:                                            ; preds = %bb.au
  %.not728.i.i = icmp ugt i64 %i.jc, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not728.i.i, label %.split680.us.invoke.i.i, label %bb.ce

bb.cd:                                            ; preds = %bb.au
  %i.mh = add i64 %i.jc, %i.ew                    ; 3 uses
  %.not726.i.i = icmp ugt i64 %i.mh, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not726.i.i, label %.split680.us.invoke.i.i, label %bb.cx

bb.ce:                                            ; preds = %bb.cc
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.jc
  %i.mj = load i32, ptr %i.mi, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.mk = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !104056
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mj, i32 noundef %i.mk, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc249.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc249.i.i:                                    ; preds = %bb.ce
  %i.ml = load i64, ptr %i.aw, align 8, !range !123, !noalias !104056, !noundef !67 ; 3 uses
  %cond.i.i246.i.i = icmp eq i64 %i.ml, 2
  br i1 %cond.i.i246.i.i, label %bb.ch, label %bb.cf, !prof !79

bb.cf:                                            ; preds = %.noexc249.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104057)
  %.not.i.i.i247.i.i = icmp eq i64 %i.ml, -1
  br i1 %.not.i.i.i247.i.i, label %bb.ci, label %bb.cg, !prof !77

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !104058
  %i.mm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !104057, !noalias !104059
  store i64 %i.ml, ptr %i.at, align 8, !noalias !104058
  br label %.split695.us.invoke.i.i

bb.ch:                                            ; preds = %.noexc249.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !104056
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !104056, !noundef !67
  store i64 %i.mp, ptr %i.av, align 8, !noalias !104056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !104056
  store ptr %i.av, ptr %i.au, align 8, !noalias !104056
  br label %.split693.us.invoke.i.i

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !104056
  %i.mq = or disjoint i64 %.sroa.10403.0708.i.i, 1
  %i.mr = mul i64 %i.mq, %i.dl                    ; 3 uses
  %.not729.i.i = icmp ugt i64 %i.mr, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not729.i.i, label %.split680.us.invoke.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.mu = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !104060
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mt, i32 noundef %i.mu, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc256.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc256.i.i:                                    ; preds = %bb.cj
  %i.mv = load i64, ptr %i.as, align 8, !range !123, !noalias !104060, !noundef !67 ; 3 uses
  %cond.i.i253.i.i = icmp eq i64 %i.mv, 2
  br i1 %cond.i.i253.i.i, label %bb.cm, label %bb.ck, !prof !79

bb.ck:                                            ; preds = %.noexc256.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104061)
  %.not.i.i.i254.i.i = icmp eq i64 %i.mv, -1
  br i1 %.not.i.i.i254.i.i, label %bb.cn, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !104062
  %i.mw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !104061, !noalias !104063
  store i64 %i.mv, ptr %i.ap, align 8, !noalias !104062
  br label %.split695.us.invoke.i.i

bb.cm:                                            ; preds = %.noexc256.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !104060
  %i.mz = load i64, ptr %i.my, align 8, !noalias !104060, !noundef !67
  store i64 %i.mz, ptr %i.ar, align 8, !noalias !104060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !104060
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !104060
  br label %.split693.us.invoke.i.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !104060
  br i1 %i.el, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit301.i.i, %bb.dg, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i, %bb.cn
  %i.na = icmp eq i64 %i.iy, 0
  br i1 %i.na, label %.lr.ph723.i.i, label %bb.au

bb.cp:                                            ; preds = %bb.cn
  %i.nb = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !104064
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.nb, i32 noundef %i.mj, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc263.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc263.i.i:                                    ; preds = %bb.cp
  %i.nc = load i64, ptr %i.ao, align 8, !range !123, !noalias !104064, !noundef !67 ; 3 uses
  %cond.i.i260.i.i = icmp eq i64 %i.nc, 2
  br i1 %cond.i.i260.i.i, label %bb.cs, label %bb.cq, !prof !79

bb.cq:                                            ; preds = %.noexc263.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104065)
  %.not.i.i.i261.i.i = icmp eq i64 %i.nc, -1
  br i1 %.not.i.i.i261.i.i, label %bb.ct, label %bb.cr, !prof !77

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !104066
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !104065, !noalias !104067
  store i64 %i.nc, ptr %i.al, align 8, !noalias !104066
  br label %.split695.us.invoke.i.i

bb.cs:                                            ; preds = %.noexc263.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !104064
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !104064, !noundef !67
  store i64 %i.ng, ptr %i.an, align 8, !noalias !104064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !104064
  store ptr %i.an, ptr %i.am, align 8, !noalias !104064
  br label %.split693.us.invoke.i.i

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !104064
  %i.nh = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !104068
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.nh, i32 noundef %i.mt, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc270.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc270.i.i:                                    ; preds = %bb.ct
  %i.ni = load i64, ptr %i.ak, align 8, !range !123, !noalias !104068, !noundef !67 ; 3 uses
  %cond.i.i267.i.i = icmp eq i64 %i.ni, 2
  br i1 %cond.i.i267.i.i, label %bb.cw, label %bb.cu, !prof !79

bb.cu:                                            ; preds = %.noexc270.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104069)
  %.not.i.i.i268.i.i = icmp eq i64 %i.ni, -1
  br i1 %.not.i.i.i268.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i, label %bb.cv, !prof !77

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !104070
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !104069, !noalias !104071
  store i64 %i.ni, ptr %i.ah, align 8, !noalias !104070
  br label %.split695.us.invoke.i.i

bb.cw:                                            ; preds = %.noexc270.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !104068
  %i.nm = load i64, ptr %i.nl, align 8, !noalias !104068, !noundef !67
  store i64 %i.nm, ptr %i.aj, align 8, !noalias !104068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !104068
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !104068
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !104068
  br label %bb.co

bb.cx:                                            ; preds = %bb.cd
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.mh
  %i.no = load i32, ptr %i.nn, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.np = getelementptr i8, ptr %i.ix, i64 -4     ; 4 uses
  %i.nq = load i32, ptr %i.np, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !104072
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.no, i32 noundef %i.nq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc277.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc277.i.i:                                    ; preds = %bb.cx
  %i.nr = load i64, ptr %i.ag, align 8, !range !123, !noalias !104072, !noundef !67 ; 3 uses
  %cond.i.i274.i.i = icmp eq i64 %i.nr, 2
  br i1 %cond.i.i274.i.i, label %bb.da, label %bb.cy, !prof !79

bb.cy:                                            ; preds = %.noexc277.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104073)
  %.not.i.i.i275.i.i = icmp eq i64 %i.nr, -1
  br i1 %.not.i.i.i275.i.i, label %bb.db, label %bb.cz, !prof !77

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !104074
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !alias.scope !104073, !noalias !104075
  store i64 %i.nr, ptr %i.ad, align 8, !noalias !104074
  br label %.split695.us.invoke.i.i

bb.da:                                            ; preds = %.noexc277.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !104072
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !104072, !noundef !67
  store i64 %i.nv, ptr %i.af, align 8, !noalias !104072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !104072
  store ptr %i.af, ptr %i.ae, align 8, !noalias !104072
  br label %.split693.us.invoke.i.i

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !104072
  %i.nw = add i64 %i.ip, %i.jc                    ; 3 uses
  %.not727.i.i = icmp ugt i64 %i.nw, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not727.i.i, label %.split680.us.invoke.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.nz = load i32, ptr %i.np, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !104076
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ny, i32 noundef %i.nz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc284.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc284.i.i:                                    ; preds = %bb.dc
  %i.oa = load i64, ptr %i.ac, align 8, !range !123, !noalias !104076, !noundef !67 ; 3 uses
  %cond.i.i281.i.i = icmp eq i64 %i.oa, 2
  br i1 %cond.i.i281.i.i, label %bb.df, label %bb.dd, !prof !79

bb.dd:                                            ; preds = %.noexc284.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104077)
  %.not.i.i.i282.i.i = icmp eq i64 %i.oa, -1
  br i1 %.not.i.i.i282.i.i, label %bb.dg, label %bb.de, !prof !77

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !104078
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !104077, !noalias !104079
  store i64 %i.oa, ptr %i.z, align 8, !noalias !104078
  br label %.split695.us.invoke.i.i

bb.df:                                            ; preds = %.noexc284.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !104076
  %i.oe = load i64, ptr %i.od, align 8, !noalias !104076, !noundef !67
  store i64 %i.oe, ptr %i.ab, align 8, !noalias !104076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !104076
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !104076
  br label %.split693.us.invoke.i.i

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !104076
  br i1 %i.el, label %bb.dh, label %bb.co

bb.dh:                                            ; preds = %bb.dg
  %i.of = load i32, ptr %i.np, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !104080
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.of, i32 noundef %i.no, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc291.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc291.i.i:                                    ; preds = %bb.dh
  %i.og = load i64, ptr %i.y, align 8, !range !123, !noalias !104080, !noundef !67 ; 3 uses
  %cond.i.i288.i.i = icmp eq i64 %i.og, 2
  br i1 %cond.i.i288.i.i, label %bb.dk, label %bb.di, !prof !79

bb.di:                                            ; preds = %.noexc291.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104081)
  %.not.i.i.i289.i.i = icmp eq i64 %i.og, -1
  br i1 %.not.i.i.i289.i.i, label %bb.dl, label %bb.dj, !prof !77

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !104082
  %i.oh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !104081, !noalias !104083
  store i64 %i.og, ptr %i.v, align 8, !noalias !104082
  br label %.split695.us.invoke.i.i

bb.dk:                                            ; preds = %.noexc291.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !104080
  %i.ok = load i64, ptr %i.oj, align 8, !noalias !104080, !noundef !67
  store i64 %i.ok, ptr %i.x, align 8, !noalias !104080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !104080
  store ptr %i.x, ptr %i.w, align 8, !noalias !104080
  br label %.split693.us.invoke.i.i

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !104080
  %i.ol = load i32, ptr %i.np, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !104084
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ol, i32 noundef %i.ny, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc298.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc298.i.i:                                    ; preds = %bb.dl
  %i.om = load i64, ptr %i.u, align 8, !range !123, !noalias !104084, !noundef !67 ; 3 uses
  %cond.i.i295.i.i = icmp eq i64 %i.om, 2
  br i1 %cond.i.i295.i.i, label %bb.do, label %bb.dm, !prof !79

bb.dm:                                            ; preds = %.noexc298.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104085)
  %.not.i.i.i296.i.i = icmp eq i64 %i.om, -1
  br i1 %.not.i.i.i296.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit301.i.i, label %bb.dn, !prof !77

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !104086
  %i.on = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !104085, !noalias !104087
  store i64 %i.om, ptr %i.r, align 8, !noalias !104086
  br label %.split695.us.invoke.i.i

bb.do:                                            ; preds = %.noexc298.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !104084
  %i.oq = load i64, ptr %i.op, align 8, !noalias !104084, !noundef !67
  store i64 %i.oq, ptr %i.t, align 8, !noalias !104084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !104084
  store ptr %i.t, ptr %i.s, align 8, !noalias !104084
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit301.i.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !104084
  br label %bb.co

bb.dp:                                            ; preds = %bb.dv, %.lr.ph.i.i
  %.sroa.0397.0672.i.i = phi ptr [ %.sroa.0391.0699.i.i, %.lr.ph.i.i ], [ %i.or, %bb.dv ] ; 3 uses
  %.sroa.7399.0671.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.os, %bb.dv ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0397.0672.i.i, i64 4 ; 2 uses
  %i.os = add nuw nsw i64 %.sroa.7399.0671.i.i, 1
  %i.ot = add nuw i64 %.sroa.7399.0671.i.i, %i.iv ; 5 uses
  %.not723.i.i = icmp ugt i64 %i.ot, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not723.i.i, label %.split680.us.invoke.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !noalias !103982, !noundef !67
  %i.ow = load i32, ptr %.sroa.0397.0672.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104016
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ov, i32 noundef %i.ow, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc308.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !103982

.noexc308.i.i:                                    ; preds = %bb.dq
  %i.ox = load i64, ptr %i.q, align 8, !range !123, !noalias !104016, !noundef !67 ; 3 uses
  %cond.i.i305.i.i = icmp eq i64 %i.ox, 2
  br i1 %cond.i.i305.i.i, label %.split675.us.i.i, label %bb.dr, !prof !79

bb.dr:                                            ; preds = %.noexc308.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104017)
  %.not.i.i.i306.i.i = icmp eq i64 %i.ox, -1
  br i1 %.not.i.i.i306.i.i, label %bb.ds, label %.split677.us.i.i, !prof !77

.split677.us.i.i:                                 ; preds = %bb.dr, %bb.al
  %.us-phi678.i.i = phi i64 [ %i.hz, %bb.al ], [ %i.ox, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !104088
  %i.oy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !104017, !noalias !104089
  store i64 %.us-phi678.i.i, ptr %i.n, align 8, !noalias !104088
  br label %.split695.us.invoke.i.i

.split675.us.i.i:                                 ; preds = %.noexc308.i.i, %.noexc308.us.us.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !104016
  %i.pb = load i64, ptr %i.pa, align 8, !noalias !104016, !noundef !67
  store i64 %i.pb, ptr %i.p, align 8, !noalias !104016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !104016
  store ptr %i.p, ptr %i.o, align 8, !noalias !104016
  br label %.split693.us.invoke.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104016
  %i.pc = add nuw i64 %i.ot, 1                    ; 2 uses
  %i.pd = icmp ult i64 %i.ot, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.pd, label %bb.dt, label %.split680.us.invoke.i.i

.split680.us.invoke.i.i:                          ; preds = %bb.ds, %bb.dp, %bb.am, %bb.aj, %bb.db, %bb.ci, %bb.cd, %bb.cc, %bb.bo, %bb.bi, %bb.az, %.peel.next.i.i
  %i.pe = phi i64 [ %i.nw, %bb.db ], [ %i.ia, %bb.am ], [ %i.lj, %bb.bo ], [ %.reass719.i.i, %bb.az ], [ %.reass.i.i, %.peel.next.i.i ], [ %i.ky, %bb.bi ], [ %i.mh, %bb.cd ], [ %i.mr, %bb.ci ], [ %i.jc, %bb.cc ], [ %i.hv, %bb.aj ], [ %i.ot, %bb.dp ], [ %i.pc, %bb.ds ]
  %i.pf = phi i64 [ %i.fe, %bb.db ], [ %i.fe, %bb.am ], [ %i.fg, %bb.bo ], [ %i.fg, %bb.az ], [ %i.fg, %.peel.next.i.i ], [ %i.fg, %bb.bi ], [ %i.fe, %bb.cc ], [ %i.fe, %bb.cd ], [ %i.fe, %bb.ci ], [ %i.fe, %bb.aj ], [ %i.fe, %bb.dp ], [ %i.fe, %bb.ds ]
  %i.pg = phi ptr [ @698, %bb.db ], [ @704, %bb.am ], [ @686, %bb.bo ], [ @680, %bb.az ], [ @678, %.peel.next.i.i ], [ @684, %bb.bi ], [ @696, %bb.cd ], [ @692, %bb.ci ], [ @690, %bb.cc ], [ @702, %bb.aj ], [ @702, %bb.dp ], [ @704, %bb.ds ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.pe, i64 noundef %i.pf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pg) #61
          to label %.split680.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !103982

.split680.us.cont.i.i:                            ; preds = %.split680.us.invoke.i.i
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.pc
  %i.pi = load i32, ptr %i.ph, align 4, !noalias !103982, !noundef !67
  %i.pj = load i32, ptr %.sroa.0397.0672.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104018
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.pi, i32 noundef %i.pj, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc315.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !103982

.noexc315.i.i:                                    ; preds = %bb.dt
  %i.pk = load i64, ptr %i.m, align 8, !range !123, !noalias !104018, !noundef !67 ; 3 uses
  %cond.i.i312.i.i = icmp eq i64 %i.pk, 2
  br i1 %cond.i.i312.i.i, label %.split683.us.i.i, label %bb.du, !prof !79

bb.du:                                            ; preds = %.noexc315.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104019)
  %.not.i.i.i313.i.i = icmp eq i64 %i.pk, -1
  br i1 %.not.i.i.i313.i.i, label %bb.dv, label %.split685.us.i.i, !prof !77

.split685.us.i.i:                                 ; preds = %bb.du, %bb.ao
  %.us-phi686.i.i = phi i64 [ %i.if, %bb.ao ], [ %i.pk, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !104090
  %i.pl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !alias.scope !104019, !noalias !104091
  store i64 %.us-phi686.i.i, ptr %i.j, align 8, !noalias !104090
  br label %.split695.us.invoke.i.i

.split683.us.i.i:                                 ; preds = %.noexc315.i.i, %.noexc315.us.us.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !104018
  %i.po = load i64, ptr %i.pn, align 8, !noalias !104018, !noundef !67
  store i64 %i.po, ptr %i.l, align 8, !noalias !104018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !104018
  store ptr %i.l, ptr %i.k, align 8, !noalias !104018
  br label %.split693.us.invoke.i.i

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104018
  %i.pp = icmp eq ptr %i.or, %i.iu
  br i1 %i.pp, label %.thread452.loopexit.i.i, label %bb.dp

.split690.us.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104092
  %i.pq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !alias.scope !104021, !noalias !104093
  store i64 %i.ih, ptr %i.f, align 8, !noalias !104092
  br label %.split695.us.invoke.i.i

.split688.us.i.i:                                 ; preds = %.noexc322.us.us.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !104020
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !104020, !noundef !67
  store i64 %i.pt, ptr %i.h, align 8, !noalias !104020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !104020
  store ptr %i.h, ptr %i.g, align 8, !noalias !104020
  br label %.split693.us.invoke.i.i

.split695.us.i.i:                                 ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104094
  %i.pu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !alias.scope !104023, !noalias !104095
  store i64 %i.ij, ptr %i.b, align 8, !noalias !104094
  br label %.split695.us.invoke.i.i

.split695.us.invoke.i.i:                          ; preds = %.split695.us.i.i, %.split690.us.i.i, %.split685.us.i.i, %.split677.us.i.i, %bb.dn, %bb.dj, %bb.de, %bb.cz, %bb.cv, %bb.cr, %bb.cl, %bb.cg, %bb.ca, %bb.bw, %bb.br, %bb.bm, %.loopexit973.i.i, %.loopexit971.i.i, %.loopexit969.i.i, %.loopexit966.i.i
  %.sink1321.i.sroa.phi.i = phi ptr [ %.sink1321.i.sroa.gep.i, %.loopexit966.i.i ], [ %.sink1321.i.sroa.gep61.i, %.loopexit969.i.i ], [ %.sink1321.i.sroa.gep62.i, %.loopexit971.i.i ], [ %.sink1321.i.sroa.gep63.i, %.loopexit973.i.i ], [ %.sink1321.i.sroa.gep64.i, %bb.bm ], [ %.sink1321.i.sroa.gep65.i, %bb.br ], [ %.sink1321.i.sroa.gep66.i, %bb.bw ], [ %.sink1321.i.sroa.gep67.i, %bb.ca ], [ %.sink1321.i.sroa.gep68.i, %bb.cg ], [ %.sink1321.i.sroa.gep69.i, %bb.cl ], [ %.sink1321.i.sroa.gep70.i, %bb.cr ], [ %.sink1321.i.sroa.gep71.i, %bb.cv ], [ %.sink1321.i.sroa.gep72.i, %bb.cz ], [ %.sink1321.i.sroa.gep73.i, %bb.de ], [ %.sink1321.i.sroa.gep74.i, %bb.dj ], [ %.sink1321.i.sroa.gep75.i, %bb.dn ], [ %.sink1321.i.sroa.gep76.i, %.split677.us.i.i ], [ %.sink1321.i.sroa.gep77.i, %.split685.us.i.i ], [ %.sink1321.i.sroa.gep78.i, %.split690.us.i.i ], [ %.sink1321.i.sroa.gep79.i, %.split695.us.i.i ]
  %.sink1321.i.i = phi ptr [ %i.bz, %.loopexit966.i.i ], [ %i.bv, %.loopexit969.i.i ], [ %i.br, %.loopexit971.i.i ], [ %i.bn, %.loopexit973.i.i ], [ %i.bj, %bb.bm ], [ %i.bf, %bb.br ], [ %i.bb, %bb.bw ], [ %i.ax, %bb.ca ], [ %i.at, %bb.cg ], [ %i.ap, %bb.cl ], [ %i.al, %bb.cr ], [ %i.ah, %bb.cv ], [ %i.ad, %bb.cz ], [ %i.z, %bb.de ], [ %i.v, %bb.dj ], [ %i.r, %bb.dn ], [ %i.n, %.split677.us.i.i ], [ %i.j, %.split685.us.i.i ], [ %i.f, %.split690.us.i.i ], [ %i.b, %.split695.us.i.i ]
  %.pre.sink.i.i = phi i64 [ %.pre.i.i, %.loopexit966.i.i ], [ %.pre994.i.i, %.loopexit969.i.i ], [ %.pre996.i.i, %.loopexit971.i.i ], [ %.pre998.i.i, %.loopexit973.i.i ], [ %i.lg, %bb.bm ], [ %i.lq, %bb.br ], [ %i.lx, %bb.bw ], [ %i.me, %bb.ca ], [ %i.mn, %bb.cg ], [ %i.mx, %bb.cl ], [ %i.ne, %bb.cr ], [ %i.nk, %bb.cv ], [ %i.nt, %bb.cz ], [ %i.oc, %bb.de ], [ %i.oi, %bb.dj ], [ %i.oo, %bb.dn ], [ %i.oz, %.split677.us.i.i ], [ %i.pm, %.split685.us.i.i ], [ %i.pr, %.split690.us.i.i ], [ %i.pv, %.split695.us.i.i ]
  %i.pw = phi ptr [ @679, %.loopexit966.i.i ], [ @681, %.loopexit969.i.i ], [ @682, %.loopexit971.i.i ], [ @683, %.loopexit973.i.i ], [ @685, %bb.bm ], [ @687, %bb.br ], [ @688, %bb.bw ], [ @689, %bb.ca ], [ @691, %bb.cg ], [ @693, %bb.cl ], [ @694, %bb.cr ], [ @695, %bb.cv ], [ @697, %bb.cz ], [ @699, %bb.de ], [ @700, %bb.dj ], [ @701, %bb.dn ], [ @703, %.split677.us.i.i ], [ @705, %.split685.us.i.i ], [ @706, %.split690.us.i.i ], [ @707, %.split695.us.i.i ]
  store i64 %.pre.sink.i.i, ptr %.sink1321.i.sroa.phi.i, align 8, !noalias !103982
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink1321.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pw) #60
          to label %.split695.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !103982

.split695.us.cont.i.i:                            ; preds = %.split695.us.invoke.i.i
  unreachable

.split693.us.i.i:                                 ; preds = %.noexc329.us.us.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !104022
  %i.py = load i64, ptr %i.px, align 8, !noalias !104022, !noundef !67
  store i64 %i.py, ptr %i.d, align 8, !noalias !104022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104022
  store ptr %i.d, ptr %i.c, align 8, !noalias !104022
  br label %.split693.us.invoke.i.i

.split693.us.invoke.i.i:                          ; preds = %.split693.us.i.i, %.split688.us.i.i, %.split683.us.i.i, %.split675.us.i.i, %bb.do, %bb.dk, %bb.df, %bb.da, %bb.cw, %bb.cs, %bb.cm, %bb.ch, %bb.cb, %bb.bx, %bb.bs, %bb.bn, %.loopexit972.i.i, %.loopexit970.i.i, %.loopexit968.i.i, %.loopexit965.i.i
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %.loopexit965.i.i ], [ %.sink.i.sroa.gep42.i, %.loopexit968.i.i ], [ %.sink.i.sroa.gep43.i, %.loopexit970.i.i ], [ %.sink.i.sroa.gep44.i, %.loopexit972.i.i ], [ %.sink.i.sroa.gep45.i, %bb.bn ], [ %.sink.i.sroa.gep46.i, %bb.bs ], [ %.sink.i.sroa.gep47.i, %bb.bx ], [ %.sink.i.sroa.gep48.i, %bb.cb ], [ %.sink.i.sroa.gep49.i, %bb.ch ], [ %.sink.i.sroa.gep50.i, %bb.cm ], [ %.sink.i.sroa.gep51.i, %bb.cs ], [ %.sink.i.sroa.gep52.i, %bb.cw ], [ %.sink.i.sroa.gep53.i, %bb.da ], [ %.sink.i.sroa.gep54.i, %bb.df ], [ %.sink.i.sroa.gep55.i, %bb.dk ], [ %.sink.i.sroa.gep56.i, %bb.do ], [ %.sink.i.sroa.gep57.i, %.split675.us.i.i ], [ %.sink.i.sroa.gep58.i, %.split683.us.i.i ], [ %.sink.i.sroa.gep59.i, %.split688.us.i.i ], [ %.sink.i.sroa.gep60.i, %.split693.us.i.i ]
  %.sink.i.i25 = phi ptr [ %i.ca, %.loopexit965.i.i ], [ %i.bw, %.loopexit968.i.i ], [ %i.bs, %.loopexit970.i.i ], [ %i.bo, %.loopexit972.i.i ], [ %i.bk, %bb.bn ], [ %i.bg, %bb.bs ], [ %i.bc, %bb.bx ], [ %i.ay, %bb.cb ], [ %i.au, %bb.ch ], [ %i.aq, %bb.cm ], [ %i.am, %bb.cs ], [ %i.ai, %bb.cw ], [ %i.ae, %bb.da ], [ %i.aa, %bb.df ], [ %i.w, %bb.dk ], [ %i.s, %bb.do ], [ %i.o, %.split675.us.i.i ], [ %i.k, %.split683.us.i.i ], [ %i.g, %.split688.us.i.i ], [ %i.c, %.split693.us.i.i ]
  %i.pz = phi ptr [ @679, %.loopexit965.i.i ], [ @681, %.loopexit968.i.i ], [ @682, %.loopexit970.i.i ], [ @683, %.loopexit972.i.i ], [ @685, %bb.bn ], [ @687, %bb.bs ], [ @688, %bb.bx ], [ @689, %bb.cb ], [ @691, %bb.ch ], [ @693, %bb.cm ], [ @694, %bb.cs ], [ @695, %bb.cw ], [ @697, %bb.da ], [ @699, %bb.df ], [ @700, %bb.dk ], [ @701, %bb.do ], [ @703, %.split675.us.i.i ], [ @705, %.split683.us.i.i ], [ @706, %.split688.us.i.i ], [ @707, %.split693.us.i.i ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi.i, align 8, !noalias !103982
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink.i.i25, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz) #60
          to label %.split693.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !103982

.split693.us.cont.i.i:                            ; preds = %.split693.us.invoke.i.i
  unreachable

bb.dw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.dx, %bb.dw
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103982
  unreachable

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.r, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %.pn97.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.fs, %bb.r ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.dx, !noalias !103982

bb.dx:                                            ; preds = %.body.i.i
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.qc) #63
          to label %.body.i unwind label %bb.dy, !noalias !103982

bb.dy:                                            ; preds = %bb.dx
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !104096
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.qe)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.dw, !noalias !103997

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %.pn97.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i, %bb.u
  %.sroa.8.i.sroa.0.0 = phi ptr [ %.sroa.8.i.sroa.0.0.copyload69, %bb.u ], [ %.sroa.8.i.sroa.0.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.8.i.sroa.10.0 = phi ptr [ %.sroa.8.i.sroa.10.0.copyload74, %bb.u ], [ %.sroa.8.i.sroa.10.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.8.i.sroa.11.0 = phi i64 [ %.sroa.8.i.sroa.11.0.copyload75, %bb.u ], [ %.sroa.8.i.sroa.11.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %.sroa.034.0.i = phi i64 [ %.sroa.034.0.copyload36.i, %bb.u ], [ %.sroa.034.0.copyload35.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ] ; 2 uses
  %i.qf = phi <2 x i32> [ %i.fz, %bb.u ], [ %i.jm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %i.qg = phi <2 x i64> [ %i.fx, %bb.u ], [ %i.jk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  %i.qh = phi <2 x ptr> [ %i.fy, %bb.u ], [ %i.jl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !103982
  %i.qi = icmp eq i64 %.sroa.034.0.i, -1
  br i1 %i.qi, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i, label %bb.eb

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i, %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103997
  %i.qj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103997 ; 4 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.dz, label %bb.ea, !prof !104

bb.dz:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !103997
  unreachable

bb.ea:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i
  store ptr @2448, ptr %i.qj, align 8, !noalias !103997
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store i64 24, ptr %i.ql, align 8, !noalias !103997
  %i.qm = insertelement <2 x ptr> <ptr poison, ptr @1267>, ptr %i.qj, i64 0
  br label %bb.ec

bb.eb:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103997
  store i64 %.sroa.034.0.i, ptr %i.cs, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %.sroa.8.i.sroa.0.0, ptr %.sroa.727.0..sroa_idx, align 8
  %.sroa.727.sroa.7.0..sroa.727.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x i64> %i.qg, ptr %.sroa.727.sroa.7.0..sroa.727.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store <2 x ptr> %i.qh, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %.sroa.8.i.sroa.10.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i64 %.sroa.8.i.sroa.11.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store <2 x i32> %i.qf, ptr %.sroa.1433.0..sroa_idx, align 8
  %.sroa.1536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store i64 0, ptr %.sroa.1536.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr @_Py_NoneStruct, ptr %.sroa.20.0..sroa_idx, align 8
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators40___pyfunction_directed_heavy_square_graph:bb.a
  %i.cv = alloca [72 x i8], align 8               ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = alloca [72 x i8], align 8               ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = alloca [72 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2537, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.da, i64 noundef 3)
  %i.db = load i64, ptr %i.cz, align 8, !range !68, !noundef !67
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.de, ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.ee

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.df = load ptr, ptr %i.da, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !104575
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cr, ptr noundef nonnull %i.df), !noalias !104575
  %i.dg = load i64, ptr %i.cr, align 8, !range !68, !noalias !104575, !noundef !67
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.d, label %bb.e, !prof !71

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i64 64, i1 false), !noalias !104575
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2491, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !104575
  %.sroa.017.0.copyload = load i64, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload, ptr %i.dk, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i64 56, i1 false)
  br label %bb.ee

bb.e:                                             ; preds = %bb.c
  %i.dl = load i64, ptr %i.di, align 8, !noalias !104575, !noundef !67 ; 16 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dl, ptr %i.dm, align 8
  store i64 0, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !104575
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !104576
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cp, ptr noundef nonnull %i.do), !noalias !104576
  %i.dp = load i8, ptr %i.cp, align 8, !range !69, !noalias !104576, !noundef !67
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.dr, align 1
  store i8 0, ptr %i.cv, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !69, !noalias !104576, !noundef !67
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.dt, ptr %i.du, align 1
  store i8 0, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !104576
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !104576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false), !noalias !104576
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2505, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !104576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !104576
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  br label %bb.ee

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !range !69, !noundef !67
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !67 ; 2 uses
  %.not.i21 = icmp eq ptr %i.eb, null
  br i1 %.not.i21, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !104577
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cn, ptr noundef nonnull %i.eb), !noalias !104577
  %i.ec = load i8, ptr %i.cn, align 8, !range !69, !noalias !104577, !noundef !67
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.j, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, !prof !71

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread: ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 1, ptr %i.ee, align 1
  store i8 0, ptr %i.ct, align 8
  br label %bb.k

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24: ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !range !69, !noalias !104577, !noundef !67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 %i.eg, ptr %i.eh, align 1
  store i8 0, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !104577
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !104577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i64 64, i1 false), !noalias !104577
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1120, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !104577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !104577
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  br label %bb.ee

bb.k:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread
  %i.el = trunc nuw i8 %i.dz to i1                ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !69, !noundef !67
  %i.eo = and i64 %i.dl, 1
  %i.ep = icmp eq i64 %i.eo, 0
  %.sink1330.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sink1330.i.sroa.gep42.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sink1330.i.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sink1330.i.sroa.gep44.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sink1330.i.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sink1330.i.sroa.gep46.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sink1330.i.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sink1330.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sink1330.i.sroa.gep49.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sink1330.i.sroa.gep50.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sink1330.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sink1330.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sink1330.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink1330.i.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sink1330.i.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sink1330.i.sroa.gep56.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink1330.i.sroa.gep57.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink1330.i.sroa.gep58.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink1330.i.sroa.gep59.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink1330.i.sroa.gep60.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink1329.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sink1329.i.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sink1329.i.sroa.gep62.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sink1329.i.sroa.gep63.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sink1329.i.sroa.gep64.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sink1329.i.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sink1329.i.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sink1329.i.sroa.gep67.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sink1329.i.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sink1329.i.sroa.gep69.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sink1329.i.sroa.gep70.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink1329.i.sroa.gep71.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink1329.i.sroa.gep72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink1329.i.sroa.gep73.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink1329.i.sroa.gep74.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink1329.i.sroa.gep75.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink1329.i.sroa.gep76.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1329.i.sroa.gep77.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink1329.i.sroa.gep78.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink1329.i.sroa.gep79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.ep, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = mul i64 %i.dl, 3
  %i.er = shl i64 %i.dl, 1                        ; 2 uses
  %i.es = add i64 %i.eq, -2
  %i.et = mul i64 %i.es, %i.dl
  %i.eu = add nsw i64 %i.dl, -1                   ; 10 uses
  %i.ev = shl i64 %i.eu, 1
  %i.ew = mul i64 %i.ev, %i.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !104578
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.cl, i64 noundef %i.et, i64 noundef %i.ew), !noalias !104578
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false), !alias.scope !104579, !noalias !104578
  store i32 -1, ptr %i.ey, align 8, !alias.scope !104579, !noalias !104578
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  store i32 -1, ptr %i.ez, align 4, !alias.scope !104579, !noalias !104578
  %i.fa = icmp eq i64 %i.dl, 1
  br i1 %i.fa, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fb = mul i64 %i.dl, %i.dl                    ; 11 uses
  %i.fc = mul i64 %i.eu, %i.dl                    ; 20 uses
  %i.fd = shl i64 %i.fb, 2                        ; 6 uses
  %i.fe = icmp ugt i64 %i.fb, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.fd, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.fe, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.o, label %bb.n, !prof !73

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !104580
  %i.ff = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104580 ; 13 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.o, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.n ], [ 0, %bb.m ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.fd) #61
          to label %.noexc.i.i unwind label %bb.r, !noalias !104578

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fi, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.fi = add i64 %.val4.i.i.i.i.i.i.i.i.i, 1     ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !104582
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !104583

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !104584)
  %i.fj = load i64, ptr %i.ck, align 8, !range !123, !alias.scope !104584, !noalias !104585, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fj, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !104586
  %i.fk = load i64, ptr %i.fh, align 8, !alias.scope !104584, !noalias !104585
  store i64 %i.fj, ptr %i.cj, align 8, !noalias !104586
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.fk, ptr %i.fl, align 8, !noalias !104586
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !104583

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.q
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.fm = load i32, ptr %i.fh, align 8, !alias.scope !104584, !noalias !104585, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !104582
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.fm, ptr %i.fn, align 4, !noalias !104587
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.fb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_E0EE9from_iterB6E_.exit.i.i, label %bb.p

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.p
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104588
  br label %.body.i.i

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.o
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.l
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !104589
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc104.i.i unwind label %bb.r, !noalias !104578

.noexc104.i.i:                                    ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !104590)
  %i.fp = load i64, ptr %i.ci, align 8, !range !123, !alias.scope !104590, !noalias !104591, !noundef !67 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fp, -1
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t, !prof !77

bb.t:                                             ; preds = %.noexc104.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !104592
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !104590, !noalias !104591
  store i64 %i.fp, ptr %i.ch, align 8, !noalias !104592
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.fr, ptr %i.fs, align 8, !noalias !104592
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc105.i.i unwind label %bb.r, !noalias !104578

.noexc105.i.i:                                    ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.noexc104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !104589
  %.sroa.034.0.copyload36.i = load i64, ptr %i.cl, align 8, !noalias !104593
  %.sroa.8.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload69 = load ptr, ptr %.sroa.8.0..sroa_idx39.i, align 8, !noalias !104593
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ft = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.fu = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.10.0.copyload74 = load ptr, ptr %i.ex, align 8, !noalias !104593
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload75 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !104593
  %i.fv = load <2 x i32>, ptr %i.ey, align 8, !noalias !104593
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_E0EE9from_iterB6E_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i
  %i.fw = shl i64 %i.fc, 2                        ; 6 uses
  %i.fx = icmp ugt i64 %i.fc, 4611686018427387903
  %.not.i.i.i109.i.i = icmp ugt i64 %i.fw, 9223372036854775804
  %or.cond.i.i.i110.i.i = or i1 %i.fx, %.not.i.i.i109.i.i
  br i1 %or.cond.i.i.i110.i.i, label %bb.y, label %bb.v, !prof !73

bb.v:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_E0EE9from_iterB6E_.exit.i.i
  %i.fy = icmp eq i64 %i.fw, 0                    ; 2 uses
  br i1 %i.fy, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !104594
  %i.fz = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104594 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gb = ptrtoint ptr %i.fz to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i

bb.y:                                             ; preds = %bb.w, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_E0EE9from_iterB6E_.exit.i.i
  %.sroa.410.0.ph.i.i133.i.i = phi i64 [ 4, %bb.w ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_E0EE9from_iterB6E_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i133.i.i, i64 %i.fw) #61
          to label %.noexc134.i.i unwind label %bb.ab, !noalias !104578

.noexc134.i.i:                                    ; preds = %bb.y
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i: ; preds = %bb.x, %bb.v
  %.sroa.10.0.i.i112.i.i = phi i64 [ %i.gb, %bb.x ], [ 4, %bb.v ]
  %.sroa.410.0.i.i113.i.i = phi i64 [ %i.fc, %bb.x ], [ 0, %bb.v ] ; 7 uses
  %i.gc = inttoptr i64 %.sroa.10.0.i.i112.i.i to ptr ; 8 uses
  %i.gd = icmp samesign ule i64 %i.fc, %.sroa.410.0.i.i113.i.i
  call void @llvm.assume(i1 %i.gd)
  %.not460.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not460.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i118.i.i

.lr.ph.i.i.i.i.i.i.i118.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i118.i.i
  %.val4.i.i.i.i.i.i.i119.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i118.i.i ], [ %i.gf, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gf = add i64 %.val4.i.i.i.i.i.i.i119.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !104596
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i127.i.i unwind label %.loopexit.i.i.i.i.i.i.i121.i.i, !noalias !104597

.noexc.i.i.i.i.i.i.i127.i.i:                      ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !104598)
  %i.gg = load i64, ptr %i.cg, align 8, !range !123, !alias.scope !104598, !noalias !104599, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i128.i.i = icmp eq i64 %i.gg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i128.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !77

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !104600
  %i.gh = load i64, ptr %i.ge, align 8, !alias.scope !104598, !noalias !104599
  store i64 %i.gg, ptr %i.cf, align 8, !noalias !104600
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.gh, ptr %i.gi, align 8, !noalias !104600
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i131.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i, !noalias !104597

.noexc7.i.i.i.i.i.i.i131.i.i:                     ; preds = %bb.aa
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i127.i.i
  %i.gj = load i32, ptr %i.ge, align 8, !alias.scope !104598, !noalias !104599, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !104596
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %.val4.i.i.i.i.i.i.i119.i.i
  store i32 %i.gj, ptr %i.gk, align 4, !noalias !104601
  %exitcond.not.i.i.i.i.i.i.i132.i.i = icmp eq i64 %i.gf, %i.fc
  br i1 %exitcond.not.i.i.i.i.i.i.i132.i.i, label %bb.ac, label %bb.z

.loopexit.i.i.i.i.i.i.i121.i.i:                   ; preds = %bb.z
  %lpad.loopexit.i.i.i.i.i.i.i122.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

.loopexit.split-lp.i.i.i.i.i.i.i129.i.i:          ; preds = %bb.aa
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i130.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

.body.i.i123.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i, %.loopexit.i.i.i.i.i.i.i121.i.i
  %lpad.phi.i.i.i.i.i.i.i124.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i122.i.i, %.loopexit.i.i.i.i.i.i.i121.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i130.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i129.i.i ] ; 2 uses
  %i.gl = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.gl, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i: ; preds = %.body.i.i123.i.i
  %i.gm = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104602
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i, %.body166.i.i, %bb.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i, %.body.i.i123.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i124.i.i, %.body.i.i123.i.i ], [ %i.gn, %bb.ab ], [ %lpad.phi.i.i.i.i.i.i.i124.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i125.i.i ], [ %.pn.i.i, %.body166.i.i ], [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.y
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.ac:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i
  br i1 %i.fy, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !104603
  %i.go = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104603 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = ptrtoint ptr %i.go to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.fw) #61
          to label %.noexc165.i.i unwind label %bb.ai, !noalias !104578

.noexc165.i.i:                                    ; preds = %bb.af
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i: ; preds = %bb.ae, %bb.ac
  %.sroa.10.0.i.i143.i.i = phi i64 [ %i.gq, %bb.ae ], [ 4, %bb.ac ]
  %.sroa.410.0.i.i144.i.i = phi i64 [ %i.fc, %bb.ae ], [ 0, %bb.ac ] ; 13 uses
  %i.gr = inttoptr i64 %.sroa.10.0.i.i143.i.i to ptr ; 18 uses
  %i.gs = icmp samesign ule i64 %i.fc, %.sroa.410.0.i.i144.i.i
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7n_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i
  %.val4.i.i.i.i.i.i.i150.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i142.i.i ], [ %i.gu, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7n_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gu = add i64 %.val4.i.i.i.i.i.i.i150.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !104605
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i158.i.i unwind label %.loopexit.i.i.i.i.i.i.i152.i.i, !noalias !104606

.noexc.i.i.i.i.i.i.i158.i.i:                      ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !104607)
  %i.gv = load i64, ptr %i.ce, align 8, !range !123, !alias.scope !104607, !noalias !104608, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i159.i.i = icmp eq i64 %i.gv, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i159.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7n_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i, label %bb.ah, !prof !77

bb.ah:                                            ; preds = %.noexc.i.i.i.i.i.i.i158.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !104609
  %i.gw = load i64, ptr %i.gt, align 8, !alias.scope !104607, !noalias !104608
  store i64 %i.gv, ptr %i.cd, align 8, !noalias !104609
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.gw, ptr %i.gx, align 8, !noalias !104609
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i162.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i, !noalias !104606

.noexc7.i.i.i.i.i.i.i162.i.i:                     ; preds = %bb.ah
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7n_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i158.i.i
  %i.gy = load i32, ptr %i.gt, align 8, !alias.scope !104607, !noalias !104608, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !104605
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.val4.i.i.i.i.i.i.i150.i.i
  store i32 %i.gy, ptr %i.gz, align 4, !noalias !104610
  %exitcond.not.i.i.i.i.i.i.i163.i.i = icmp eq i64 %i.gu, %i.fc
  br i1 %exitcond.not.i.i.i.i.i.i.i163.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i, label %bb.ag

.loopexit.i.i.i.i.i.i.i152.i.i:                   ; preds = %bb.ag
  %lpad.loopexit.i.i.i.i.i.i.i153.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i154.i.i

.loopexit.split-lp.i.i.i.i.i.i.i160.i.i:          ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i161.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i154.i.i

.body.i.i154.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i, %.loopexit.i.i.i.i.i.i.i152.i.i
  %lpad.phi.i.i.i.i.i.i.i155.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i153.i.i, %.loopexit.i.i.i.i.i.i.i152.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i161.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i160.i.i ] ; 2 uses
  %i.ha = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.ha, label %.body166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i: ; preds = %.body.i.i154.i.i
  %i.hb = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104611
  br label %.body166.i.i

.body166.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i, %.loopexit.split-lp.i.i, %bb.ai, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i, %.body.i.i154.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i155.i.i, %.body.i.i154.i.i ], [ %i.he, %bb.ai ], [ %lpad.phi.i.i.i.i.i.i.i155.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i156.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i ] ; 2 uses
  %i.hc = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.hc, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i168.i.i: ; preds = %.body166.i.i
  %i.hd = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.ai:                                            ; preds = %bb.af
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body166.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7n_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gr) ]
  br i1 %i.el, label %.lr.ph.us.i.i, label %.lr.ph.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i111.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @675, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #61
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !104578

.lr.ph.us.i.i:                                    ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i, %.thread454.loopexit.us.i.i
  %.sroa.0385.0700.us.i.i = phi ptr [ %i.hg, %.thread454.loopexit.us.i.i ], [ %i.gr, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 3 uses
  %.sroa.5386.0699.us.i.i = phi i64 [ %i.hh, %.thread454.loopexit.us.i.i ], [ %i.fc, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %.sroa.10387.0698.us.i.i = phi i64 [ %i.hi, %.thread454.loopexit.us.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %i.hf = call i64 @llvm.umin.i64(i64 %.sroa.5386.0699.us.i.i, i64 %i.eu) ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0385.0700.us.i.i, i64 %i.hf
  %i.hh = sub nuw nsw i64 %.sroa.5386.0699.us.i.i, %i.hf ; 2 uses
  %i.hi = add i64 %.sroa.10387.0698.us.i.i, 1
  %.idx723.i.i = shl nuw nsw i64 %i.hf, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0385.0700.us.i.i, i64 %.idx723.i.i
  %i.hk = mul i64 %.sroa.10387.0698.us.i.i, %i.dl
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i, %.lr.ph.us.i.i
  %.sroa.0391.0673.us.us.i.i = phi ptr [ %.sroa.0385.0700.us.i.i, %.lr.ph.us.i.i ], [ %i.hl, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i ] ; 5 uses
  %.sroa.7393.0672.us.us.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.hm, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0391.0673.us.us.i.i, i64 4 ; 2 uses
  %i.hm = add nuw nsw i64 %.sroa.7393.0672.us.us.i.i, 1
  %i.hn = add nuw i64 %.sroa.7393.0672.us.us.i.i, %i.hk ; 5 uses
  %.not724.i.i = icmp ugt i64 %i.hn, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not724.i.i, label %.split681.us.invoke.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.hq = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104612
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hp, i32 noundef %i.hq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc302.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc302.us.us.i.i:                              ; preds = %bb.ak
  %i.hr = load i64, ptr %i.q, align 8, !range !123, !noalias !104612, !noundef !67 ; 3 uses
  %cond.i.i299.us.us.i.i = icmp eq i64 %i.hr, 2
  br i1 %cond.i.i299.us.us.i.i, label %.split676.us.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc302.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104613)
  %.not.i.i.i300.us.us.i.i = icmp eq i64 %i.hr, -1
  br i1 %.not.i.i.i300.us.us.i.i, label %bb.am, label %.split678.us.i.i, !prof !77

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104612
  %i.hs = add nuw i64 %i.hn, 1                    ; 2 uses
  %i.ht = icmp ult i64 %i.hn, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.ht, label %bb.an, label %.split681.us.invoke.i.i

bb.an:                                            ; preds = %bb.am
  %i.hu = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hs
  %i.hw = load i32, ptr %i.hv, align 4, !noalias !104578, !noundef !67 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104614
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hu, i32 noundef %i.hw, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc309.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc309.us.us.i.i:                              ; preds = %bb.an
  %i.hx = load i64, ptr %i.m, align 8, !range !123, !noalias !104614, !noundef !67 ; 3 uses
  %cond.i.i306.us.us.i.i = icmp eq i64 %i.hx, 2
  br i1 %cond.i.i306.us.us.i.i, label %.split684.us.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc309.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104615)
  %.not.i.i.i307.us.us.i.i = icmp eq i64 %i.hx, -1
  br i1 %.not.i.i.i307.us.us.i.i, label %bb.ap, label %.split686.us.i.i, !prof !77

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104614
  %i.hy = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104616
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hy, i32 noundef %i.hp, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc316.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc316.us.us.i.i:                              ; preds = %bb.ap
  %i.hz = load i64, ptr %i.i, align 8, !range !123, !noalias !104616, !noundef !67 ; 3 uses
  %cond.i.i313.us.us.i.i = icmp eq i64 %i.hz, 2
  br i1 %cond.i.i313.us.us.i.i, label %.split689.us.i.i, label %bb.aq, !prof !79

bb.aq:                                            ; preds = %.noexc316.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104617)
  %.not.i.i.i314.us.us.i.i = icmp eq i64 %i.hz, -1
  br i1 %.not.i.i.i314.us.us.i.i, label %bb.ar, label %.split691.us.i.i, !prof !77

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !104616
  %i.ia = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104618
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hw, i32 noundef %i.ia, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc323.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc323.us.us.i.i:                              ; preds = %bb.ar
  %i.ib = load i64, ptr %i.e, align 8, !range !123, !noalias !104618, !noundef !67 ; 3 uses
  %cond.i.i320.us.us.i.i = icmp eq i64 %i.ib, 2
  br i1 %cond.i.i320.us.us.i.i, label %.split694.us.i.i, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc323.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104619)
  %.not.i.i.i321.us.us.i.i = icmp eq i64 %i.ib, -1
  br i1 %.not.i.i.i321.us.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i, label %.split696.us.i.i, !prof !77

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104618
  %i.ic = icmp eq ptr %i.hl, %i.hj
  br i1 %i.ic, label %.thread454.loopexit.us.i.i, label %bb.aj

.thread454.loopexit.us.i.i:                       ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i
  %i.id = icmp eq i64 %i.hh, 0
  br i1 %i.id, label %.preheader464.i.i, label %.lr.ph.us.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i: ; preds = %bb.ar, %bb.ap, %bb.an, %bb.ak
  %lpad.loopexit468.us.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %bb.bn, %bb.bj, %bb.be, %bb.az
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ca, %bb.by, %bb.bv, %bb.bs
  %lpad.loopexit964.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.dl, %bb.dh, %bb.dc, %bb.cx, %bb.ct, %bb.cp, %bb.cj, %bb.ce
  %lpad.loopexit466.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i: ; preds = %bb.dt, %bb.dq
  %lpad.loopexit468.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.split694.us.invoke.i.i, %.split696.us.invoke.i.i, %.split681.us.invoke.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i
  %.sroa.410.0.i.i1444201090.i.i = phi i64 [ %.sroa.410.0.i.i144.i.i, %.split694.us.invoke.i.i ], [ %.sroa.410.0.i.i144.i.i, %.split696.us.invoke.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i ], [ %.sroa.410.0.i.i144.i.i, %.split681.us.invoke.i.i ]
  %i.ie = phi ptr [ %i.gr, %.split694.us.invoke.i.i ], [ %i.gr, %.split696.us.invoke.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i ], [ %i.gr, %.split681.us.invoke.i.i ]
  %lpad.loopexit.split-lp469.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i
  %.sroa.410.0.i.i1444201089.i.i = phi i64 [ %.sroa.410.0.i.i144.i.i, %.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i1444201090.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %i.if = phi ptr [ %i.gr, %.loopexit.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.ie, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit964.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit466.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp469.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit468.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %lpad.loopexit468.us.us.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %i.ig = icmp eq i64 %.sroa.410.0.i.i1444201089.i.i, 0
  br i1 %i.ig, label %.body166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.ih = shl nuw i64 %.sroa.410.0.i.i1444201089.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %.body166.i.i

bb.at:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i
  unreachable

.thread454.loopexit.i.i:                          ; preds = %bb.dv
  %i.ii = icmp eq i64 %i.il, 0
  br i1 %i.ii, label %.preheader464.i.i, label %.lr.ph.i.i

.preheader464.i.i:                                ; preds = %.thread454.loopexit.i.i, %.thread454.loopexit.us.i.i
  %5 = add nsw i64 %i.er, -1
  br label %bb.au

.lr.ph.i.i:                                       ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i, %.thread454.loopexit.i.i
  %.sroa.0385.0700.i.i = phi ptr [ %i.ik, %.thread454.loopexit.i.i ], [ %i.gr, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 3 uses
  %.sroa.5386.0699.i.i = phi i64 [ %i.il, %.thread454.loopexit.i.i ], [ %i.fc, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %.sroa.10387.0698.i.i = phi i64 [ %i.im, %.thread454.loopexit.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %i.ij = call i64 @llvm.umin.i64(i64 %.sroa.5386.0699.i.i, i64 %i.eu) ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0385.0700.i.i, i64 %i.ij
  %i.il = sub nuw nsw i64 %.sroa.5386.0699.i.i, %i.ij ; 2 uses
  %i.im = add i64 %.sroa.10387.0698.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.ij, 2
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0385.0700.i.i, i64 %.idx.i.i
  %i.io = mul i64 %.sroa.10387.0698.i.i, %i.dl
  br label %bb.dp

bb.au:                                            ; preds = %bb.co, %.preheader464.i.i
  %.sroa.0394.0711.i.i = phi ptr [ %i.gc, %.preheader464.i.i ], [ %i.iq, %bb.co ] ; 6 uses
  %.sroa.5395.0710.i.i = phi i64 [ %i.fc, %.preheader464.i.i ], [ %i.ir, %bb.co ] ; 2 uses
  %.sroa.10397.0709.i.i = phi i64 [ 0, %.preheader464.i.i ], [ %i.is, %bb.co ] ; 3 uses
  %i.ip = call i64 @llvm.umin.i64(i64 %.sroa.5395.0710.i.i, i64 %i.dl) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0394.0711.i.i) ]
  %i.iq = getelementptr [4 x i8], ptr %.sroa.0394.0711.i.i, i64 %i.ip ; 2 uses
  %i.ir = sub nuw nsw i64 %.sroa.5395.0710.i.i, %i.ip ; 2 uses
  %i.is = add i64 %.sroa.10397.0709.i.i, 1        ; 2 uses
  %i.it = and i64 %.sroa.10397.0709.i.i, 1
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = mul i64 %.sroa.10397.0709.i.i, %i.dl    ; 5 uses
  br i1 %i.iu, label %bb.cc, label %bb.cd

.lr.ph722.i.i:                                    ; preds = %bb.co, %.thread442.i.i
  %.sroa.0401.0721.i.i = phi ptr [ %i.ix, %.thread442.i.i ], [ %i.gc, %bb.co ] ; 5 uses
  %.sroa.5402.0720.i.i = phi i64 [ %i.iy, %.thread442.i.i ], [ %i.fc, %bb.co ] ; 2 uses
  %.sroa.10404.0719.i.i = phi i64 [ %i.iz, %.thread442.i.i ], [ 0, %bb.co ] ; 5 uses
  %i.iw = call i64 @llvm.umin.i64(i64 %.sroa.5402.0720.i.i, i64 %i.dl) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0401.0721.i.i) ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0721.i.i, i64 %i.iw
  %i.iy = sub nuw nsw i64 %.sroa.5402.0720.i.i, %i.iw ; 2 uses
  %i.iz = add i64 %.sroa.10404.0719.i.i, 1        ; 2 uses
  %i.ja = and i64 %.sroa.10404.0719.i.i, 1
  %i.jb = icmp eq i64 %i.ja, 0
  %.idx725.i.i = shl nuw nsw i64 %i.iw, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0401.0721.i.i, i64 %.idx725.i.i ; 2 uses
  br i1 %i.jb, label %.lr.ph718.i.i, label %bb.av

._crit_edge.i.i:                                  ; preds = %.thread442.i.i
  %.sroa.034.0.copyload35.i = load i64, ptr %i.cl, align 8, !noalias !104593
  %.sroa.8.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx38.i, align 8, !noalias !104593
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.jd = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.je = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.ex, align 8, !noalias !104593
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %i.jf = load <2 x i32>, ptr %i.ey, align 8, !noalias !104593
  %i.jg = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.jg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i: ; preds = %._crit_edge.i.i
  %i.jh = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i, %._crit_edge.i.i
  %i.ji = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.ji, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  %i.jj = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i

.lr.ph718.i.i:                                    ; preds = %.lr.ph722.i.i
  %i.jk = add nsw i64 %i.iw, -1
  %i.jl = mul i64 %.sroa.10404.0719.i.i, %i.eu
  %i.jm = or disjoint i64 %.sroa.10404.0719.i.i, 1
  %i.jn = mul i64 %i.jm, %i.eu
  br label %bb.aw

bb.av:                                            ; preds = %.lr.ph722.i.i
  %i.jo = mul i64 %.sroa.10404.0719.i.i, %i.eu
  %i.jp = add i64 %i.jo, -1
  %i.jq = mul i64 %i.iz, %i.eu
  %i.jr = add i64 %i.jq, -1
  %i.js = icmp eq i64 %i.iw, 1
  br i1 %i.js, label %.thread442.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.av
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0401.0721.i.i, i64 4
  br label %.peel.next.i.i

bb.aw:                                            ; preds = %bb.ay, %.lr.ph718.i.i
  %.sroa.0408.0717.i.i = phi ptr [ %.sroa.0401.0721.i.i, %.lr.ph718.i.i ], [ %i.ju, %bb.ay ] ; 5 uses
  %.sroa.7410.0716.i.i = phi i64 [ 0, %.lr.ph718.i.i ], [ %i.jv, %bb.ay ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0408.0717.i.i, i64 4 ; 2 uses
  %i.jv = add nuw nsw i64 %.sroa.7410.0716.i.i, 1
  %.not85.i.i = icmp eq i64 %.sroa.7410.0716.i.i, %i.jk
  br i1 %.not85.i.i, label %bb.ay, label %bb.ax

.thread442.i.i:                                   ; preds = %bb.br, %bb.ay, %bb.av
  %i.jw = icmp eq i64 %i.iy, 0
  br i1 %i.jw, label %._crit_edge.i.i, label %.lr.ph722.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jx = add i64 %.sroa.7410.0716.i.i, %i.jl     ; 3 uses
  %i.jy = icmp ult i64 %i.jx, %i.fc
  br i1 %i.jy, label %bb.az, label %.split681.us.invoke.i.i

bb.ay:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i, %bb.bi, %bb.aw
  %i.jz = icmp eq ptr %i.ju, %i.jc
  br i1 %i.jz, label %.thread442.i.i, label %bb.aw

bb.az:                                            ; preds = %bb.ax
  %i.ka = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.jx ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !104620
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ka, i32 noundef %i.kc, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc185.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc185.i.i:                                    ; preds = %bb.az
  %i.kd = load i64, ptr %i.cc, align 8, !range !123, !noalias !104620, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.kd, 2
  br i1 %cond.i.i.i.i, label %bb.bc, label %bb.ba, !prof !79

bb.ba:                                            ; preds = %.noexc185.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104621)
  %.not.i.i.i184.i.i = icmp eq i64 %i.kd, -1
  br i1 %.not.i.i.i184.i.i, label %bb.bd, label %bb.bb, !prof !77

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !104622
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !104621, !noalias !104623
  store i64 %i.kd, ptr %i.bz, align 8, !noalias !104622
  br label %.split696.us.invoke.i.i

bb.bc:                                            ; preds = %.noexc185.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !104620
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !104620, !noundef !67
  store i64 %i.kh, ptr %i.cb, align 8, !noalias !104620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !104620
  store ptr %i.cb, ptr %i.ca, align 8, !noalias !104620
  br label %.split694.us.invoke.i.i

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !104620
  %i.ki = add i64 %.sroa.7410.0716.i.i, %i.jn     ; 3 uses
  %i.kj = icmp ult i64 %i.ki, %i.fc
  br i1 %i.kj, label %bb.be, label %.split681.us.invoke.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kk = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ki ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !104624
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kk, i32 noundef %i.km, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc191.i.i:                                    ; preds = %bb.be
  %i.kn = load i64, ptr %i.by, align 8, !range !123, !noalias !104624, !noundef !67 ; 3 uses
  %cond.i.i188.i.i = icmp eq i64 %i.kn, 2
  br i1 %cond.i.i188.i.i, label %bb.bh, label %bb.bf, !prof !79

bb.bf:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104625)
  %.not.i.i.i189.i.i = icmp eq i64 %i.kn, -1
  br i1 %.not.i.i.i189.i.i, label %bb.bi, label %bb.bg, !prof !77

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !104626
  %i.ko = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !104625, !noalias !104627
  store i64 %i.kn, ptr %i.bv, align 8, !noalias !104626
  br label %.split696.us.invoke.i.i

bb.bh:                                            ; preds = %.noexc191.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !104624
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !104624, !noundef !67
  store i64 %i.kr, ptr %i.bx, align 8, !noalias !104624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !104624
  store ptr %i.bx, ptr %i.bw, align 8, !noalias !104624
  br label %.split694.us.invoke.i.i

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !104624
  br i1 %i.el, label %bb.bj, label %bb.ay

bb.bj:                                            ; preds = %bb.bi
  %i.ks = load i32, ptr %i.kb, align 4, !noalias !104578, !noundef !67
  %i.kt = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !104628
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ks, i32 noundef %i.kt, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc198.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc198.i.i:                                    ; preds = %bb.bj
  %i.ku = load i64, ptr %i.bu, align 8, !range !123, !noalias !104628, !noundef !67 ; 3 uses
  %cond.i.i195.i.i = icmp eq i64 %i.ku, 2
  br i1 %cond.i.i195.i.i, label %bb.bm, label %bb.bk, !prof !79

bb.bk:                                            ; preds = %.noexc198.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104629)
  %.not.i.i.i196.i.i = icmp eq i64 %i.ku, -1
  br i1 %.not.i.i.i196.i.i, label %bb.bn, label %bb.bl, !prof !77

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !104630
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !104629, !noalias !104631
  store i64 %i.ku, ptr %i.br, align 8, !noalias !104630
  br label %.split696.us.invoke.i.i

bb.bm:                                            ; preds = %.noexc198.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !104628
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !104628, !noundef !67
  store i64 %i.ky, ptr %i.bt, align 8, !noalias !104628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !104628
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !104628
  br label %.split694.us.invoke.i.i

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !104628
  %i.kz = load i32, ptr %i.kl, align 4, !noalias !104578, !noundef !67
  %i.la = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !104632
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kz, i32 noundef %i.la, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc205.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc205.i.i:                                    ; preds = %bb.bn
  %i.lb = load i64, ptr %i.bq, align 8, !range !123, !noalias !104632, !noundef !67 ; 3 uses
  %cond.i.i202.i.i = icmp eq i64 %i.lb, 2
  br i1 %cond.i.i202.i.i, label %bb.bq, label %bb.bo, !prof !79

bb.bo:                                            ; preds = %.noexc205.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104633)
  %.not.i.i.i203.i.i = icmp eq i64 %i.lb, -1
  br i1 %.not.i.i.i203.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !104634
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !104633, !noalias !104635
  store i64 %i.lb, ptr %i.bn, align 8, !noalias !104634
  br label %.split696.us.invoke.i.i

bb.bq:                                            ; preds = %.noexc205.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !104632
  %i.lf = load i64, ptr %i.le, align 8, !noalias !104632, !noundef !67
  store i64 %i.lf, ptr %i.bp, align 8, !noalias !104632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !104632
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !104632
  br label %.split694.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !104632
  br label %bb.ay

bb.br:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i, %bb.bx
  %i.lg = icmp eq ptr %i.lh, %i.jc
  br i1 %i.lg, label %.thread442.i.i, label %.peel.next.i.i, !llvm.loop !104455

.peel.next.i.i:                                   ; preds = %bb.br, %.peel.next.i.preheader.i
  %.sroa.7413.0714.i.i = phi i64 [ %i.li, %bb.br ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.0411.0713.i.i = phi ptr [ %i.lh, %bb.br ], [ %i.jt, %.peel.next.i.preheader.i ] ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0411.0713.i.i, i64 4 ; 2 uses
  %i.li = add nuw nsw i64 %.sroa.7413.0714.i.i, 1
  %i.lj = add i64 %i.jp, %.sroa.7413.0714.i.i     ; 3 uses
  %i.lk = icmp ult i64 %i.lj, %i.fc
  br i1 %i.lk, label %bb.bs, label %.split681.us.invoke.i.i

bb.bs:                                            ; preds = %.peel.next.i.i
  %i.ll = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.lj ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !104636
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ll, i32 noundef %i.ln, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc215.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc215.i.i:                                    ; preds = %bb.bs
  %i.lo = load i64, ptr %i.bm, align 8, !range !123, !noalias !104636, !noundef !67 ; 3 uses
  %cond.i.i212.i.i = icmp eq i64 %i.lo, 2
  br i1 %cond.i.i212.i.i, label %.loopexit966.i.i, label %bb.bt, !prof !79

bb.bt:                                            ; preds = %.noexc215.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104637)
  %.not.i.i.i213.i.i = icmp eq i64 %i.lo, -1
  br i1 %.not.i.i.i213.i.i, label %bb.bu, label %.loopexit967.i.i, !prof !77

.loopexit967.i.i:                                 ; preds = %bb.bt
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !104637, !noalias !104638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !104639
  store i64 %i.lo, ptr %i.bj, align 8, !noalias !104639
  br label %.split696.us.invoke.i.i

.loopexit966.i.i:                                 ; preds = %.noexc215.i.i
  %.phi.trans.insert1005.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre1006.i.i = load i64, ptr %.phi.trans.insert1005.i.i, align 8, !noalias !104636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !104636
  store i64 %.pre1006.i.i, ptr %i.bl, align 8, !noalias !104636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !104636
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !104636
  br label %.split694.us.invoke.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !104636
  %i.lp = add i64 %i.jr, %.sroa.7413.0714.i.i     ; 3 uses
  %i.lq = icmp ult i64 %i.lp, %i.fc
  br i1 %i.lq, label %bb.bv, label %.split681.us.invoke.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.lr = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.lp ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !104640
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lr, i32 noundef %i.lt, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc222.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc222.i.i:                                    ; preds = %bb.bv
  %i.lu = load i64, ptr %i.bi, align 8, !range !123, !noalias !104640, !noundef !67 ; 3 uses
  %cond.i.i219.i.i = icmp eq i64 %i.lu, 2
  br i1 %cond.i.i219.i.i, label %.loopexit969.i.i, label %bb.bw, !prof !79

bb.bw:                                            ; preds = %.noexc222.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104641)
  %.not.i.i.i220.i.i = icmp eq i64 %i.lu, -1
  br i1 %.not.i.i.i220.i.i, label %bb.bx, label %.loopexit970.i.i, !prof !77

.loopexit970.i.i:                                 ; preds = %bb.bw
  %.phi.trans.insert993.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre994.i.i = load i64, ptr %.phi.trans.insert993.i.i, align 8, !alias.scope !104641, !noalias !104642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !104643
  store i64 %i.lu, ptr %i.bf, align 8, !noalias !104643
  br label %.split696.us.invoke.i.i

.loopexit969.i.i:                                 ; preds = %.noexc222.i.i
  %.phi.trans.insert1003.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre1004.i.i = load i64, ptr %.phi.trans.insert1003.i.i, align 8, !noalias !104640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !104640
  store i64 %.pre1004.i.i, ptr %i.bh, align 8, !noalias !104640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !104640
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !104640
  br label %.split694.us.invoke.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !104640
  br i1 %i.el, label %bb.by, label %bb.br

bb.by:                                            ; preds = %bb.bx
  %i.lv = load i32, ptr %i.lm, align 4, !noalias !104578, !noundef !67
  %i.lw = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !104644
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lv, i32 noundef %i.lw, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc229.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc229.i.i:                                    ; preds = %bb.by
  %i.lx = load i64, ptr %i.be, align 8, !range !123, !noalias !104644, !noundef !67 ; 3 uses
  %cond.i.i226.i.i = icmp eq i64 %i.lx, 2
  br i1 %cond.i.i226.i.i, label %.loopexit971.i.i, label %bb.bz, !prof !79

bb.bz:                                            ; preds = %.noexc229.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104645)
  %.not.i.i.i227.i.i = icmp eq i64 %i.lx, -1
  br i1 %.not.i.i.i227.i.i, label %bb.ca, label %.loopexit972.i.i, !prof !77

.loopexit972.i.i:                                 ; preds = %bb.bz
  %.phi.trans.insert995.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre996.i.i = load i64, ptr %.phi.trans.insert995.i.i, align 8, !alias.scope !104645, !noalias !104646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !104647
  store i64 %i.lx, ptr %i.bb, align 8, !noalias !104647
  br label %.split696.us.invoke.i.i

.loopexit971.i.i:                                 ; preds = %.noexc229.i.i
  %.phi.trans.insert1001.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre1002.i.i = load i64, ptr %.phi.trans.insert1001.i.i, align 8, !noalias !104644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !104644
  store i64 %.pre1002.i.i, ptr %i.bd, align 8, !noalias !104644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !104644
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !104644
  br label %.split694.us.invoke.i.i

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !104644
  %i.ly = load i32, ptr %i.ls, align 4, !noalias !104578, !noundef !67
  %i.lz = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !104648
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ly, i32 noundef %i.lz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc236.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc236.i.i:                                    ; preds = %bb.ca
  %i.ma = load i64, ptr %i.ba, align 8, !range !123, !noalias !104648, !noundef !67 ; 3 uses
  %cond.i.i233.i.i = icmp eq i64 %i.ma, 2
  br i1 %cond.i.i233.i.i, label %.loopexit973.i.i, label %bb.cb, !prof !79

bb.cb:                                            ; preds = %.noexc236.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104649)
  %.not.i.i.i234.i.i = icmp eq i64 %i.ma, -1
  br i1 %.not.i.i.i234.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i, label %.loopexit974.i.i, !prof !77

.loopexit974.i.i:                                 ; preds = %bb.cb
  %.phi.trans.insert997.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre998.i.i = load i64, ptr %.phi.trans.insert997.i.i, align 8, !alias.scope !104649, !noalias !104650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !104651
  store i64 %i.ma, ptr %i.ax, align 8, !noalias !104651
  br label %.split696.us.invoke.i.i

.loopexit973.i.i:                                 ; preds = %.noexc236.i.i
  %.phi.trans.insert999.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre1000.i.i = load i64, ptr %.phi.trans.insert999.i.i, align 8, !noalias !104648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !104648
  store i64 %.pre1000.i.i, ptr %i.az, align 8, !noalias !104648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !104648
  store ptr %i.az, ptr %i.ay, align 8, !noalias !104648
  br label %.split694.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !104648
  br label %bb.br

bb.cc:                                            ; preds = %bb.au
  %i.mb = add i64 %i.iv, %i.eu                    ; 3 uses
  %.not727.i.i = icmp ugt i64 %i.mb, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not727.i.i, label %.split681.us.invoke.i.i, label %bb.ce

bb.cd:                                            ; preds = %bb.au
  %.not725.i.i = icmp ugt i64 %i.iv, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not725.i.i, label %.split681.us.invoke.i.i, label %bb.cx

bb.ce:                                            ; preds = %bb.cc
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.me = getelementptr i8, ptr %i.iq, i64 -4     ; 4 uses
  %i.mf = load i32, ptr %i.me, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !104652
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.md, i32 noundef %i.mf, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc243.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc243.i.i:                                    ; preds = %bb.ce
  %i.mg = load i64, ptr %i.aw, align 8, !range !123, !noalias !104652, !noundef !67 ; 3 uses
  %cond.i.i240.i.i = icmp eq i64 %i.mg, 2
  br i1 %cond.i.i240.i.i, label %bb.ch, label %bb.cf, !prof !79

bb.cf:                                            ; preds = %.noexc243.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104653)
  %.not.i.i.i241.i.i = icmp eq i64 %i.mg, -1
  br i1 %.not.i.i.i241.i.i, label %bb.ci, label %bb.cg, !prof !77

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !104654
  %i.mh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !104653, !noalias !104655
  store i64 %i.mg, ptr %i.at, align 8, !noalias !104654
  br label %.split696.us.invoke.i.i

bb.ch:                                            ; preds = %.noexc243.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !104652
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !104652, !noundef !67
  store i64 %i.mk, ptr %i.av, align 8, !noalias !104652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !104652
  store ptr %i.av, ptr %i.au, align 8, !noalias !104652
  br label %.split694.us.invoke.i.i

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !104652
  %i.ml = add i64 %5, %i.iv                       ; 3 uses
  %.not728.i.i = icmp ugt i64 %i.ml, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not728.i.i, label %.split681.us.invoke.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.mo = load i32, ptr %i.me, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !104656
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mn, i32 noundef %i.mo, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc250.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc250.i.i:                                    ; preds = %bb.cj
  %i.mp = load i64, ptr %i.as, align 8, !range !123, !noalias !104656, !noundef !67 ; 3 uses
  %cond.i.i247.i.i = icmp eq i64 %i.mp, 2
  br i1 %cond.i.i247.i.i, label %bb.cm, label %bb.ck, !prof !79

bb.ck:                                            ; preds = %.noexc250.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104657)
  %.not.i.i.i248.i.i = icmp eq i64 %i.mp, -1
  br i1 %.not.i.i.i248.i.i, label %bb.cn, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !104658
  %i.mq = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !104657, !noalias !104659
  store i64 %i.mp, ptr %i.ap, align 8, !noalias !104658
  br label %.split696.us.invoke.i.i

bb.cm:                                            ; preds = %.noexc250.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !104656
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !104656, !noundef !67
  store i64 %i.mt, ptr %i.ar, align 8, !noalias !104656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !104656
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !104656
  br label %.split694.us.invoke.i.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !104656
  br i1 %i.el, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit295.i.i, %bb.dg, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit267.i.i, %bb.cn
  %i.mu = icmp eq i64 %i.ir, 0
  br i1 %i.mu, label %.lr.ph722.i.i, label %bb.au

bb.cp:                                            ; preds = %bb.cn
  %i.mv = load i32, ptr %i.me, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !104660
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mv, i32 noundef %i.md, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc257.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc257.i.i:                                    ; preds = %bb.cp
  %i.mw = load i64, ptr %i.ao, align 8, !range !123, !noalias !104660, !noundef !67 ; 3 uses
  %cond.i.i254.i.i = icmp eq i64 %i.mw, 2
  br i1 %cond.i.i254.i.i, label %bb.cs, label %bb.cq, !prof !79

bb.cq:                                            ; preds = %.noexc257.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104661)
  %.not.i.i.i255.i.i = icmp eq i64 %i.mw, -1
  br i1 %.not.i.i.i255.i.i, label %bb.ct, label %bb.cr, !prof !77

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !104662
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !104661, !noalias !104663
  store i64 %i.mw, ptr %i.al, align 8, !noalias !104662
  br label %.split696.us.invoke.i.i

bb.cs:                                            ; preds = %.noexc257.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !104660
  %i.na = load i64, ptr %i.mz, align 8, !noalias !104660, !noundef !67
  store i64 %i.na, ptr %i.an, align 8, !noalias !104660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !104660
  store ptr %i.an, ptr %i.am, align 8, !noalias !104660
  br label %.split694.us.invoke.i.i

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !104660
  %i.nb = load i32, ptr %i.me, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !104664
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.nb, i32 noundef %i.mn, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc264.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc264.i.i:                                    ; preds = %bb.ct
  %i.nc = load i64, ptr %i.ak, align 8, !range !123, !noalias !104664, !noundef !67 ; 3 uses
  %cond.i.i261.i.i = icmp eq i64 %i.nc, 2
  br i1 %cond.i.i261.i.i, label %bb.cw, label %bb.cu, !prof !79

bb.cu:                                            ; preds = %.noexc264.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104665)
  %.not.i.i.i262.i.i = icmp eq i64 %i.nc, -1
  br i1 %.not.i.i.i262.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit267.i.i, label %bb.cv, !prof !77

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !104666
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !104665, !noalias !104667
  store i64 %i.nc, ptr %i.ah, align 8, !noalias !104666
  br label %.split696.us.invoke.i.i

bb.cw:                                            ; preds = %.noexc264.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !104664
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !104664, !noundef !67
  store i64 %i.ng, ptr %i.aj, align 8, !noalias !104664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !104664
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !104664
  br label %.split694.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit267.i.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !104664
  br label %bb.co

bb.cx:                                            ; preds = %bb.cd
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.iv
  %i.ni = load i32, ptr %i.nh, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.nj = load i32, ptr %.sroa.0394.0711.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !104668
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ni, i32 noundef %i.nj, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc271.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc271.i.i:                                    ; preds = %bb.cx
  %i.nk = load i64, ptr %i.ag, align 8, !range !123, !noalias !104668, !noundef !67 ; 3 uses
  %cond.i.i268.i.i = icmp eq i64 %i.nk, 2
  br i1 %cond.i.i268.i.i, label %bb.da, label %bb.cy, !prof !79

bb.cy:                                            ; preds = %.noexc271.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104669)
  %.not.i.i.i269.i.i = icmp eq i64 %i.nk, -1
  br i1 %.not.i.i.i269.i.i, label %bb.db, label %bb.cz, !prof !77

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !104670
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !alias.scope !104669, !noalias !104671
  store i64 %i.nk, ptr %i.ad, align 8, !noalias !104670
  br label %.split696.us.invoke.i.i

bb.da:                                            ; preds = %.noexc271.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !104668
  %i.no = load i64, ptr %i.nn, align 8, !noalias !104668, !noundef !67
  store i64 %i.no, ptr %i.af, align 8, !noalias !104668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !104668
  store ptr %i.af, ptr %i.ae, align 8, !noalias !104668
  br label %.split694.us.invoke.i.i

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !104668
  %i.np = mul i64 %i.is, %i.dl                    ; 3 uses
  %.not726.i.i = icmp ugt i64 %i.np, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not726.i.i, label %.split681.us.invoke.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.ns = load i32, ptr %.sroa.0394.0711.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !104672
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.nr, i32 noundef %i.ns, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc278.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc278.i.i:                                    ; preds = %bb.dc
  %i.nt = load i64, ptr %i.ac, align 8, !range !123, !noalias !104672, !noundef !67 ; 3 uses
  %cond.i.i275.i.i = icmp eq i64 %i.nt, 2
  br i1 %cond.i.i275.i.i, label %bb.df, label %bb.dd, !prof !79

bb.dd:                                            ; preds = %.noexc278.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104673)
  %.not.i.i.i276.i.i = icmp eq i64 %i.nt, -1
  br i1 %.not.i.i.i276.i.i, label %bb.dg, label %bb.de, !prof !77

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !104674
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !alias.scope !104673, !noalias !104675
  store i64 %i.nt, ptr %i.z, align 8, !noalias !104674
  br label %.split696.us.invoke.i.i

bb.df:                                            ; preds = %.noexc278.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !104672
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !104672, !noundef !67
  store i64 %i.nx, ptr %i.ab, align 8, !noalias !104672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !104672
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !104672
  br label %.split694.us.invoke.i.i

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !104672
  br i1 %i.el, label %bb.dh, label %bb.co

bb.dh:                                            ; preds = %bb.dg
  %i.ny = load i32, ptr %.sroa.0394.0711.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !104676
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ny, i32 noundef %i.ni, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc285.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc285.i.i:                                    ; preds = %bb.dh
  %i.nz = load i64, ptr %i.y, align 8, !range !123, !noalias !104676, !noundef !67 ; 3 uses
  %cond.i.i282.i.i = icmp eq i64 %i.nz, 2
  br i1 %cond.i.i282.i.i, label %bb.dk, label %bb.di, !prof !79

bb.di:                                            ; preds = %.noexc285.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104677)
  %.not.i.i.i283.i.i = icmp eq i64 %i.nz, -1
  br i1 %.not.i.i.i283.i.i, label %bb.dl, label %bb.dj, !prof !77

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !104678
  %i.oa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !104677, !noalias !104679
  store i64 %i.nz, ptr %i.v, align 8, !noalias !104678
  br label %.split696.us.invoke.i.i

bb.dk:                                            ; preds = %.noexc285.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !104676
  %i.od = load i64, ptr %i.oc, align 8, !noalias !104676, !noundef !67
  store i64 %i.od, ptr %i.x, align 8, !noalias !104676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !104676
  store ptr %i.x, ptr %i.w, align 8, !noalias !104676
  br label %.split694.us.invoke.i.i

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !104676
  %i.oe = load i32, ptr %.sroa.0394.0711.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !104680
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.oe, i32 noundef %i.nr, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc292.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc292.i.i:                                    ; preds = %bb.dl
  %i.of = load i64, ptr %i.u, align 8, !range !123, !noalias !104680, !noundef !67 ; 3 uses
  %cond.i.i289.i.i = icmp eq i64 %i.of, 2
  br i1 %cond.i.i289.i.i, label %bb.do, label %bb.dm, !prof !79

bb.dm:                                            ; preds = %.noexc292.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104681)
  %.not.i.i.i290.i.i = icmp eq i64 %i.of, -1
  br i1 %.not.i.i.i290.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit295.i.i, label %bb.dn, !prof !77

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !104682
  %i.og = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !alias.scope !104681, !noalias !104683
  store i64 %i.of, ptr %i.r, align 8, !noalias !104682
  br label %.split696.us.invoke.i.i

bb.do:                                            ; preds = %.noexc292.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !104680
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !104680, !noundef !67
  store i64 %i.oj, ptr %i.t, align 8, !noalias !104680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !104680
  store ptr %i.t, ptr %i.s, align 8, !noalias !104680
  br label %.split694.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit295.i.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !104680
  br label %bb.co

bb.dp:                                            ; preds = %bb.dv, %.lr.ph.i.i
  %.sroa.0391.0673.i.i = phi ptr [ %.sroa.0385.0700.i.i, %.lr.ph.i.i ], [ %i.ok, %bb.dv ] ; 3 uses
  %.sroa.7393.0672.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ol, %bb.dv ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0391.0673.i.i, i64 4 ; 2 uses
  %i.ol = add nuw nsw i64 %.sroa.7393.0672.i.i, 1
  %i.om = add nuw i64 %.sroa.7393.0672.i.i, %i.io ; 5 uses
  %.not722.i.i = icmp ugt i64 %i.om, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %.not722.i.i, label %.split681.us.invoke.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !noalias !104578, !noundef !67
  %i.op = load i32, ptr %.sroa.0391.0673.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104612
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.oo, i32 noundef %i.op, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc302.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !104578

.noexc302.i.i:                                    ; preds = %bb.dq
  %i.oq = load i64, ptr %i.q, align 8, !range !123, !noalias !104612, !noundef !67 ; 3 uses
  %cond.i.i299.i.i = icmp eq i64 %i.oq, 2
  br i1 %cond.i.i299.i.i, label %.split676.us.i.i, label %bb.dr, !prof !79

bb.dr:                                            ; preds = %.noexc302.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104613)
  %.not.i.i.i300.i.i = icmp eq i64 %i.oq, -1
  br i1 %.not.i.i.i300.i.i, label %bb.ds, label %.split678.us.i.i, !prof !77

.split678.us.i.i:                                 ; preds = %bb.dr, %bb.al
  %.us-phi679.i.i = phi i64 [ %i.hr, %bb.al ], [ %i.oq, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !104684
  %i.or = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !104613, !noalias !104685
  store i64 %.us-phi679.i.i, ptr %i.n, align 8, !noalias !104684
  br label %.split696.us.invoke.i.i

.split676.us.i.i:                                 ; preds = %.noexc302.i.i, %.noexc302.us.us.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !104612
  %i.ou = load i64, ptr %i.ot, align 8, !noalias !104612, !noundef !67
  store i64 %i.ou, ptr %i.p, align 8, !noalias !104612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !104612
  store ptr %i.p, ptr %i.o, align 8, !noalias !104612
  br label %.split694.us.invoke.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104612
  %i.ov = add nuw i64 %i.om, 1                    ; 2 uses
  %i.ow = icmp ult i64 %i.om, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.ow, label %bb.dt, label %.split681.us.invoke.i.i

.split681.us.invoke.i.i:                          ; preds = %bb.ds, %bb.dp, %bb.am, %bb.aj, %bb.db, %bb.ci, %bb.cd, %bb.cc, %bb.bu, %.peel.next.i.i, %bb.bd, %bb.ax
  %i.ox = phi i64 [ %i.np, %bb.db ], [ %i.hs, %bb.am ], [ %i.lp, %bb.bu ], [ %i.ki, %bb.bd ], [ %i.jx, %bb.ax ], [ %i.lj, %.peel.next.i.i ], [ %i.iv, %bb.cd ], [ %i.ml, %bb.ci ], [ %i.mb, %bb.cc ], [ %i.hn, %bb.aj ], [ %i.om, %bb.dp ], [ %i.ov, %bb.ds ]
  %i.oy = phi i64 [ %i.fb, %bb.db ], [ %i.fb, %bb.am ], [ %i.fc, %bb.bu ], [ %i.fc, %bb.bd ], [ %i.fc, %bb.ax ], [ %i.fc, %.peel.next.i.i ], [ %i.fb, %bb.cc ], [ %i.fb, %bb.cd ], [ %i.fb, %bb.ci ], [ %i.fb, %bb.aj ], [ %i.fb, %bb.dp ], [ %i.fb, %bb.ds ]
  %i.oz = phi ptr [ @730, %bb.db ], [ @736, %bb.am ], [ @718, %bb.bu ], [ @712, %bb.bd ], [ @710, %bb.ax ], [ @716, %.peel.next.i.i ], [ @728, %bb.cd ], [ @724, %bb.ci ], [ @722, %bb.cc ], [ @734, %bb.aj ], [ @734, %bb.dp ], [ @736, %bb.ds ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ox, i64 noundef %i.oy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz) #61
          to label %.split681.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !104578

.split681.us.cont.i.i:                            ; preds = %.split681.us.invoke.i.i
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.pa = load i32, ptr %.sroa.0391.0673.i.i, align 4, !noalias !104578, !noundef !67
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ov
  %i.pc = load i32, ptr %i.pb, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104614
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.pa, i32 noundef %i.pc, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc309.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !104578

.noexc309.i.i:                                    ; preds = %bb.dt
  %i.pd = load i64, ptr %i.m, align 8, !range !123, !noalias !104614, !noundef !67 ; 3 uses
  %cond.i.i306.i.i = icmp eq i64 %i.pd, 2
  br i1 %cond.i.i306.i.i, label %.split684.us.i.i, label %bb.du, !prof !79

bb.du:                                            ; preds = %.noexc309.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104615)
  %.not.i.i.i307.i.i = icmp eq i64 %i.pd, -1
  br i1 %.not.i.i.i307.i.i, label %bb.dv, label %.split686.us.i.i, !prof !77

.split686.us.i.i:                                 ; preds = %bb.du, %bb.ao
  %.us-phi687.i.i = phi i64 [ %i.hx, %bb.ao ], [ %i.pd, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !104686
  %i.pe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !alias.scope !104615, !noalias !104687
  store i64 %.us-phi687.i.i, ptr %i.j, align 8, !noalias !104686
  br label %.split696.us.invoke.i.i

.split684.us.i.i:                                 ; preds = %.noexc309.i.i, %.noexc309.us.us.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !104614
  %i.ph = load i64, ptr %i.pg, align 8, !noalias !104614, !noundef !67
  store i64 %i.ph, ptr %i.l, align 8, !noalias !104614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !104614
  store ptr %i.l, ptr %i.k, align 8, !noalias !104614
  br label %.split694.us.invoke.i.i

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104614
  %i.pi = icmp eq ptr %i.ok, %i.in
  br i1 %i.pi, label %.thread454.loopexit.i.i, label %bb.dp

.split691.us.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104688
  %i.pj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !104617, !noalias !104689
  store i64 %i.hz, ptr %i.f, align 8, !noalias !104688
  br label %.split696.us.invoke.i.i

.split689.us.i.i:                                 ; preds = %.noexc316.us.us.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !104616
  %i.pm = load i64, ptr %i.pl, align 8, !noalias !104616, !noundef !67
  store i64 %i.pm, ptr %i.h, align 8, !noalias !104616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !104616
  store ptr %i.h, ptr %i.g, align 8, !noalias !104616
  br label %.split694.us.invoke.i.i

.split696.us.i.i:                                 ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104690
  %i.pn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !alias.scope !104619, !noalias !104691
  store i64 %i.ib, ptr %i.b, align 8, !noalias !104690
  br label %.split696.us.invoke.i.i

.split696.us.invoke.i.i:                          ; preds = %.split696.us.i.i, %.split691.us.i.i, %.split686.us.i.i, %.split678.us.i.i, %bb.dn, %bb.dj, %bb.de, %bb.cz, %bb.cv, %bb.cr, %bb.cl, %bb.cg, %.loopexit974.i.i, %.loopexit972.i.i, %.loopexit970.i.i, %.loopexit967.i.i, %bb.bp, %bb.bl, %bb.bg, %bb.bb
  %.sink1329.i.sroa.phi.i = phi ptr [ %.sink1329.i.sroa.gep.i, %bb.bb ], [ %.sink1329.i.sroa.gep61.i, %bb.bg ], [ %.sink1329.i.sroa.gep62.i, %bb.bl ], [ %.sink1329.i.sroa.gep63.i, %bb.bp ], [ %.sink1329.i.sroa.gep64.i, %.loopexit967.i.i ], [ %.sink1329.i.sroa.gep65.i, %.loopexit970.i.i ], [ %.sink1329.i.sroa.gep66.i, %.loopexit972.i.i ], [ %.sink1329.i.sroa.gep67.i, %.loopexit974.i.i ], [ %.sink1329.i.sroa.gep68.i, %bb.cg ], [ %.sink1329.i.sroa.gep69.i, %bb.cl ], [ %.sink1329.i.sroa.gep70.i, %bb.cr ], [ %.sink1329.i.sroa.gep71.i, %bb.cv ], [ %.sink1329.i.sroa.gep72.i, %bb.cz ], [ %.sink1329.i.sroa.gep73.i, %bb.de ], [ %.sink1329.i.sroa.gep74.i, %bb.dj ], [ %.sink1329.i.sroa.gep75.i, %bb.dn ], [ %.sink1329.i.sroa.gep76.i, %.split678.us.i.i ], [ %.sink1329.i.sroa.gep77.i, %.split686.us.i.i ], [ %.sink1329.i.sroa.gep78.i, %.split691.us.i.i ], [ %.sink1329.i.sroa.gep79.i, %.split696.us.i.i ]
  %.sink1329.i.i = phi ptr [ %i.bz, %bb.bb ], [ %i.bv, %bb.bg ], [ %i.br, %bb.bl ], [ %i.bn, %bb.bp ], [ %i.bj, %.loopexit967.i.i ], [ %i.bf, %.loopexit970.i.i ], [ %i.bb, %.loopexit972.i.i ], [ %i.ax, %.loopexit974.i.i ], [ %i.at, %bb.cg ], [ %i.ap, %bb.cl ], [ %i.al, %bb.cr ], [ %i.ah, %bb.cv ], [ %i.ad, %bb.cz ], [ %i.z, %bb.de ], [ %i.v, %bb.dj ], [ %i.r, %bb.dn ], [ %i.n, %.split678.us.i.i ], [ %i.j, %.split686.us.i.i ], [ %i.f, %.split691.us.i.i ], [ %i.b, %.split696.us.i.i ]
  %.sink.i.i25 = phi i64 [ %i.kf, %bb.bb ], [ %i.kp, %bb.bg ], [ %i.kw, %bb.bl ], [ %i.ld, %bb.bp ], [ %.pre.i.i, %.loopexit967.i.i ], [ %.pre994.i.i, %.loopexit970.i.i ], [ %.pre996.i.i, %.loopexit972.i.i ], [ %.pre998.i.i, %.loopexit974.i.i ], [ %i.mi, %bb.cg ], [ %i.mr, %bb.cl ], [ %i.my, %bb.cr ], [ %i.ne, %bb.cv ], [ %i.nm, %bb.cz ], [ %i.nv, %bb.de ], [ %i.ob, %bb.dj ], [ %i.oh, %bb.dn ], [ %i.os, %.split678.us.i.i ], [ %i.pf, %.split686.us.i.i ], [ %i.pk, %.split691.us.i.i ], [ %i.po, %.split696.us.i.i ]
  %i.pp = phi ptr [ @711, %bb.bb ], [ @713, %bb.bg ], [ @714, %bb.bl ], [ @715, %bb.bp ], [ @717, %.loopexit967.i.i ], [ @719, %.loopexit970.i.i ], [ @720, %.loopexit972.i.i ], [ @721, %.loopexit974.i.i ], [ @723, %bb.cg ], [ @725, %bb.cl ], [ @726, %bb.cr ], [ @727, %bb.cv ], [ @729, %bb.cz ], [ @731, %bb.de ], [ @732, %bb.dj ], [ @733, %bb.dn ], [ @735, %.split678.us.i.i ], [ @737, %.split686.us.i.i ], [ @738, %.split691.us.i.i ], [ @739, %.split696.us.i.i ]
  store i64 %.sink.i.i25, ptr %.sink1329.i.sroa.phi.i, align 8, !noalias !104578
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink1329.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pp) #60
          to label %.split696.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !104578

.split696.us.cont.i.i:                            ; preds = %.split696.us.invoke.i.i
  unreachable

.split694.us.i.i:                                 ; preds = %.noexc323.us.us.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !104618
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !104618, !noundef !67
  store i64 %i.pr, ptr %i.d, align 8, !noalias !104618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104618
  store ptr %i.d, ptr %i.c, align 8, !noalias !104618
  br label %.split694.us.invoke.i.i

.split694.us.invoke.i.i:                          ; preds = %.split694.us.i.i, %.split689.us.i.i, %.split684.us.i.i, %.split676.us.i.i, %bb.do, %bb.dk, %bb.df, %bb.da, %bb.cw, %bb.cs, %bb.cm, %bb.ch, %.loopexit973.i.i, %.loopexit971.i.i, %.loopexit969.i.i, %.loopexit966.i.i, %bb.bq, %bb.bm, %bb.bh, %bb.bc
  %.sink1330.i.sroa.phi.i = phi ptr [ %.sink1330.i.sroa.gep.i, %bb.bc ], [ %.sink1330.i.sroa.gep42.i, %bb.bh ], [ %.sink1330.i.sroa.gep43.i, %bb.bm ], [ %.sink1330.i.sroa.gep44.i, %bb.bq ], [ %.sink1330.i.sroa.gep45.i, %.loopexit966.i.i ], [ %.sink1330.i.sroa.gep46.i, %.loopexit969.i.i ], [ %.sink1330.i.sroa.gep47.i, %.loopexit971.i.i ], [ %.sink1330.i.sroa.gep48.i, %.loopexit973.i.i ], [ %.sink1330.i.sroa.gep49.i, %bb.ch ], [ %.sink1330.i.sroa.gep50.i, %bb.cm ], [ %.sink1330.i.sroa.gep51.i, %bb.cs ], [ %.sink1330.i.sroa.gep52.i, %bb.cw ], [ %.sink1330.i.sroa.gep53.i, %bb.da ], [ %.sink1330.i.sroa.gep54.i, %bb.df ], [ %.sink1330.i.sroa.gep55.i, %bb.dk ], [ %.sink1330.i.sroa.gep56.i, %bb.do ], [ %.sink1330.i.sroa.gep57.i, %.split676.us.i.i ], [ %.sink1330.i.sroa.gep58.i, %.split684.us.i.i ], [ %.sink1330.i.sroa.gep59.i, %.split689.us.i.i ], [ %.sink1330.i.sroa.gep60.i, %.split694.us.i.i ]
  %.sink1330.i.i = phi ptr [ %i.ca, %bb.bc ], [ %i.bw, %bb.bh ], [ %i.bs, %bb.bm ], [ %i.bo, %bb.bq ], [ %i.bk, %.loopexit966.i.i ], [ %i.bg, %.loopexit969.i.i ], [ %i.bc, %.loopexit971.i.i ], [ %i.ay, %.loopexit973.i.i ], [ %i.au, %bb.ch ], [ %i.aq, %bb.cm ], [ %i.am, %bb.cs ], [ %i.ai, %bb.cw ], [ %i.ae, %bb.da ], [ %i.aa, %bb.df ], [ %i.w, %bb.dk ], [ %i.s, %bb.do ], [ %i.o, %.split676.us.i.i ], [ %i.k, %.split684.us.i.i ], [ %i.g, %.split689.us.i.i ], [ %i.c, %.split694.us.i.i ]
  %i.ps = phi ptr [ @711, %bb.bc ], [ @713, %bb.bh ], [ @714, %bb.bm ], [ @715, %bb.bq ], [ @717, %.loopexit966.i.i ], [ @719, %.loopexit969.i.i ], [ @720, %.loopexit971.i.i ], [ @721, %.loopexit973.i.i ], [ @723, %bb.ch ], [ @725, %bb.cm ], [ @726, %bb.cs ], [ @727, %bb.cw ], [ @729, %bb.da ], [ @731, %bb.df ], [ @732, %bb.dk ], [ @733, %bb.do ], [ @735, %.split676.us.i.i ], [ @737, %.split684.us.i.i ], [ @738, %.split689.us.i.i ], [ @739, %.split694.us.i.i ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink1330.i.sroa.phi.i, align 8, !noalias !104578
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink1330.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ps) #60
          to label %.split694.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !104578

.split694.us.cont.i.i:                            ; preds = %.split694.us.invoke.i.i
  unreachable

bb.dw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.dx, %bb.dw
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !104578
  unreachable

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.r, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %.pn91.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.fo, %bb.r ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.dx, !noalias !104578

bb.dx:                                            ; preds = %.body.i.i
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.pv) #63
          to label %.body.i unwind label %bb.dy, !noalias !104578

bb.dy:                                            ; preds = %bb.dx
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !104692
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.px)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.dw, !noalias !104593

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %.pn91.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, %bb.u
  %.sroa.8.i.sroa.0.0 = phi ptr [ %.sroa.8.i.sroa.0.0.copyload69, %bb.u ], [ %.sroa.8.i.sroa.0.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.8.i.sroa.10.0 = phi ptr [ %.sroa.8.i.sroa.10.0.copyload74, %bb.u ], [ %.sroa.8.i.sroa.10.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.8.i.sroa.11.0 = phi i64 [ %.sroa.8.i.sroa.11.0.copyload75, %bb.u ], [ %.sroa.8.i.sroa.11.0.copyload, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %.sroa.034.0.i = phi i64 [ %.sroa.034.0.copyload36.i, %bb.u ], [ %.sroa.034.0.copyload35.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ] ; 2 uses
  %i.py = phi <2 x i32> [ %i.fv, %bb.u ], [ %i.jf, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %i.pz = phi <2 x i64> [ %i.ft, %bb.u ], [ %i.jd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  %i.qa = phi <2 x ptr> [ %i.fu, %bb.u ], [ %i.je, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !104578
  %i.qb = icmp eq i64 %.sroa.034.0.i, -1
  br i1 %i.qb, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.thread.i, label %bb.eb

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i, %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !104593
  %i.qc = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !104593 ; 4 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.dz, label %bb.ea, !prof !104

bb.dz:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !104593
  unreachable

bb.ea:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.thread.i
  store ptr @2448, ptr %i.qc, align 8, !noalias !104593
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 24, ptr %i.qe, align 8, !noalias !104593
  %i.qf = insertelement <2 x ptr> <ptr poison, ptr @1267>, ptr %i.qc, i64 0
  br label %bb.ec

bb.eb:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104593
  store i64 %.sroa.034.0.i, ptr %i.cs, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %.sroa.8.i.sroa.0.0, ptr %.sroa.727.0..sroa_idx, align 8
  %.sroa.727.sroa.7.0..sroa.727.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x i64> %i.pz, ptr %.sroa.727.sroa.7.0..sroa.727.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store <2 x ptr> %i.qa, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %.sroa.8.i.sroa.10.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i64 %.sroa.8.i.sroa.11.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store <2 x i32> %i.py, ptr %.sroa.1433.0..sroa_idx, align 8
  %.sroa.1536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store i64 0, ptr %.sroa.1536.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr @_Py_NoneStruct, ptr %.sroa.20.0..sroa_idx, align 8
end_hunk_5
