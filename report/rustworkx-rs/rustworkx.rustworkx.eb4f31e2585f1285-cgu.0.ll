Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators27___pyfunction_lollipop_graph:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83: ; preds = %bb.ai, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ah

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit87: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.ph

bb.am:                                            ; preds = %bb.u, %bb.ak, %bb.aj
  %.pn.ph = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %lpad.thr_comm, %bb.ak ], [ %lpad.thr_comm, %bb.aj ]
  %i.df = load i64, ptr %i.u, align 8, !range !66, !alias.scope !101996, !noundef !67
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit87, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit87 unwind label %bb.al
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
  %i.cy = mul i64 %i.bt, %i.bt                    ; 15 uses
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
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dg, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
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
  %.not368.i.i = icmp eq i64 %i.dv, 0             ; 2 uses
  br i1 %.not368.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

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
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators28___pyfunction_heavy_hex_graph:bb.a

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
  %or.cond.i.i.i147.i.i = or i1 %i.eo, %.not.i.i.i146.i.i
  br i1 %or.cond.i.i.i147.i.i, label %bb.ac, label %bb.z, !prof !73

bb.z:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102243
  %i.eq = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102243 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = ptrtoint ptr %i.eq to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i

bb.ac:                                            ; preds = %bb.aa, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i
  %.sroa.410.0.ph.i.i170.i.i = phi i64 [ 4, %bb.aa ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i170.i.i, i64 %i.en) #61
          to label %.noexc171.i.i unwind label %bb.af, !noalias !102218

.noexc171.i.i:                                    ; preds = %bb.ac
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i: ; preds = %bb.ab, %bb.z
  %.sroa.10.0.i.i149.i.i = phi i64 [ %i.es, %bb.ab ], [ 4, %bb.z ]
  %.sroa.410.0.i.i150.i.i = phi i64 [ %i.da, %bb.ab ], [ 0, %bb.z ] ; 7 uses
  %i.et = inttoptr i64 %.sroa.10.0.i.i149.i.i to ptr ; 11 uses
  %i.eu = icmp samesign ule i64 %i.da, %.sroa.410.0.i.i150.i.i
  call void @llvm.assume(i1 %i.eu)
  %.not369.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not369.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es0_0EE9from_iterB6P_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i155.i.i

.lr.ph.i.i.i.i.i.i.i155.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i155.i.i
  %.val4.i.i.i.i.i.i.i156.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i155.i.i ], [ %i.ew, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ew = add i64 %.val4.i.i.i.i.i.i.i156.i.i, 1  ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !102245
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i164.i.i unwind label %.loopexit.i.i.i.i.i.i.i158.i.i, !noalias !102246

.noexc.i.i.i.i.i.i.i164.i.i:                      ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !102247)
  %i.ex = load i64, ptr %i.aq, align 8, !range !123, !alias.scope !102247, !noalias !102248, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i165.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i165.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, label %bb.ae, !prof !77

bb.ae:                                            ; preds = %.noexc.i.i.i.i.i.i.i164.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !102249
  %i.ey = load i64, ptr %i.ev, align 8, !alias.scope !102247, !noalias !102248
  store i64 %i.ex, ptr %i.ap, align 8, !noalias !102249
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !noalias !102249
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i168.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i, !noalias !102246

.noexc7.i.i.i.i.i.i.i168.i.i:                     ; preds = %bb.ae
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i164.i.i
  %i.fa = load i32, ptr %i.ev, align 8, !alias.scope !102247, !noalias !102248, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !102245
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.val4.i.i.i.i.i.i.i156.i.i
  store i32 %i.fa, ptr %i.fb, align 4, !noalias !102250
  %exitcond.not.i.i.i.i.i.i.i169.i.i = icmp eq i64 %i.ew, %i.da
  br i1 %exitcond.not.i.i.i.i.i.i.i169.i.i, label %.lr.ph.i.i, label %bb.ad

.loopexit.i.i.i.i.i.i.i158.i.i:                   ; preds = %bb.ad
  %lpad.loopexit.i.i.i.i.i.i.i159.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i160.i.i

.loopexit.split-lp.i.i.i.i.i.i.i166.i.i:          ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i167.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i160.i.i

.body.i.i160.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i, %.loopexit.i.i.i.i.i.i.i158.i.i
  %lpad.phi.i.i.i.i.i.i.i161.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i159.i.i, %.loopexit.i.i.i.i.i.i.i158.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i167.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i166.i.i ] ; 2 uses
  %i.fc = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.fc, label %.body172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i: ; preds = %.body.i.i160.i.i
  %i.fd = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102251
  br label %.body172.i.i

.body172.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i, %.loopexit.split-lp.i.i, %bb.af, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i, %.body.i.i160.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i161.i.i, %.body.i.i160.i.i ], [ %i.fg, %bb.af ], [ %lpad.phi.i.i.i.i.i.i.i161.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i162.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.410.0.i.i119.i.i, 0
  br i1 %i.fe, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i.i: ; preds = %.body172.i.i
  %i.ff = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es0_0EE9from_iterB6P_.exit.thread.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i148.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @675, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @677) #61
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102218

.loopexit.i.i:                                    ; preds = %bb.an, %bb.ak
  %lpad.loopexit591.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ax, %bb.as
  %lpad.loopexit371.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bs, %bb.bn, %bb.bi, %bb.bd
  %lpad.loopexit375.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.cc, %bb.bx
  %lpad.loopexit377.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke.i.i, %.invoke770.i.i, %.invoke772.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es0_0EE9from_iterB6P_.exit.thread.i.i
  %lpad.loopexit.split-lp378.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit591.i.i, %.loopexit.i.i ], [ %lpad.loopexit371.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit375.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit377.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp378.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.fh = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.fh, label %.body172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.fi = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %.body172.i.i

bb.ag:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es0_0EE9from_iterB6P_.exit.thread.i.i
  unreachable

.thread362.loopexit.i.i:                          ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i
  %i.fj = icmp eq i64 %i.fn, 0
  br i1 %i.fj, label %.preheader374.i.i, label %.lr.ph.i.i

.preheader374.i.i:                                ; preds = %.thread362.loopexit.i.i
  br i1 %.not368.i.i, label %._crit_edge.i.i, label %.lr.ph480.i.i

.lr.ph480.i.i:                                    ; preds = %.preheader374.i.i
  %i.fk = add nsw i64 %i.cl, -1
  br label %bb.ah

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.thread362.loopexit.i.i
  %.sroa.0301.0475.i.i = phi ptr [ %i.fm, %.thread362.loopexit.i.i ], [ %i.et, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5302.0474.i.i = phi i64 [ %i.fn, %.thread362.loopexit.i.i ], [ %i.da, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10303.0473.i.i = phi i64 [ %i.fo, %.thread362.loopexit.i.i ], [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7m_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fl = call i64 @llvm.umin.i64(i64 %.sroa.5302.0474.i.i, i64 %i.cq) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0301.0475.i.i) ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0301.0475.i.i, i64 %i.fl
  %i.fn = sub nuw nsw i64 %.sroa.5302.0474.i.i, %i.fl ; 2 uses
  %i.fo = add i64 %.sroa.10303.0473.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.fl, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0301.0475.i.i, i64 %.idx.i.i
  %i.fq = mul i64 %.sroa.10303.0473.i.i, %i.bt
  br label %bb.bw

bb.ah:                                            ; preds = %bb.bm, %.lr.ph480.i.i
  %.sroa.0310.0479.i.i = phi ptr [ %i.ec, %.lr.ph480.i.i ], [ %i.fs, %bb.bm ] ; 4 uses
  %.sroa.5311.0478.i.i = phi i64 [ %i.dv, %.lr.ph480.i.i ], [ %i.ft, %bb.bm ] ; 2 uses
  %.sroa.10313.0477.i.i = phi i64 [ 0, %.lr.ph480.i.i ], [ %i.fu, %bb.bm ] ; 4 uses
  %i.fr = call i64 @llvm.umin.i64(i64 %.sroa.5311.0478.i.i, i64 %i.du) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0310.0479.i.i) ]
  %i.fs = getelementptr [4 x i8], ptr %.sroa.0310.0479.i.i, i64 %i.fr ; 2 uses
  %i.ft = sub nuw nsw i64 %.sroa.5311.0478.i.i, %i.fr ; 2 uses
  %i.fu = add i64 %.sroa.10313.0477.i.i, 1
  %i.fv = and i64 %.sroa.10313.0477.i.i, 1
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = mul i64 %.sroa.10313.0477.i.i, %i.bt    ; 5 uses
  br i1 %i.fw, label %bb.bb, label %bb.bc

.lr.ph492.i.i:                                    ; preds = %bb.bm, %.thread.i.i
  %.sroa.0317.0491.i.i = phi ptr [ %i.fz, %.thread.i.i ], [ %i.ec, %bb.bm ] ; 5 uses
  %.sroa.5318.0490.i.i = phi i64 [ %i.ga, %.thread.i.i ], [ %i.dv, %bb.bm ] ; 2 uses
  %.sroa.10320.0489.i.i = phi i64 [ %i.gb, %.thread.i.i ], [ 0, %bb.bm ] ; 5 uses
  %i.fy = call i64 @llvm.umin.i64(i64 %.sroa.5318.0490.i.i, i64 %i.du) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0317.0491.i.i) ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0317.0491.i.i, i64 %i.fy
  %i.ga = sub nuw nsw i64 %.sroa.5318.0490.i.i, %i.fy ; 2 uses
  %i.gb = add i64 %.sroa.10320.0489.i.i, 1        ; 2 uses
  %i.gc = and i64 %.sroa.10320.0489.i.i, 1
  %i.gd = icmp eq i64 %i.gc, 0
  %.idx494.i.i = shl nuw nsw i64 %i.fy, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0317.0491.i.i, i64 %.idx494.i.i ; 2 uses
  br i1 %i.gd, label %bb.ai, label %.lr.ph483.i.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %.preheader374.i.i
  %.sroa.032.0.copyload33.i = load i64, ptr %i.ax, align 8, !noalias !102233
  %.sroa.8.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx35.i, align 8, !noalias !102233
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.gf = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102233
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.gg = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102233
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.cu, align 8, !noalias !102233
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102233
  %i.gh = load <2 x i32>, ptr %i.cv, align 8, !noalias !102233
  %i.gi = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.gi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i: ; preds = %._crit_edge.i.i
  %i.gj = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i, %._crit_edge.i.i
  %i.gk = icmp eq i64 %.sroa.410.0.i.i119.i.i, 0
  br i1 %i.gk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
  %i.gl = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102218
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i

bb.ai:                                            ; preds = %.lr.ph492.i.i
  %i.gm = mul i64 %.sroa.10320.0489.i.i, %i.cq
  %invariant.op.i.i = or disjoint i64 %i.gm, 1
  %i.gn = or disjoint i64 %.sroa.10320.0489.i.i, 1
  %5 = mul i64 %i.gn, %i.cq
  %invariant.op487.i.i = or disjoint i64 %5, 1
  %i.go = icmp eq i64 %i.fy, 1
  br i1 %i.go, label %.thread.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.ai
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0317.0491.i.i, i64 4
  br label %.peel.next.i.i

.lr.ph483.i.i:                                    ; preds = %.lr.ph492.i.i
  %i.gq = add nsw i64 %i.fy, -1
  %i.gr = mul i64 %.sroa.10320.0489.i.i, %i.cq
  %6 = mul i64 %i.gb, %i.cq
  br label %bb.ap

.thread.i.i:                                      ; preds = %bb.ar, %bb.aj, %bb.ai
  %i.gs = icmp eq i64 %i.ga, 0
  br i1 %i.gs, label %._crit_edge.i.i, label %.lr.ph492.i.i

bb.aj:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !102252
  %i.gt = icmp eq ptr %i.gu, %i.ge
  br i1 %i.gt, label %.thread.i.i, label %.peel.next.i.i, !llvm.loop !102124

.peel.next.i.i:                                   ; preds = %bb.aj, %.peel.next.i.preheader.i
  %.sroa.0324.0485.i.i = phi ptr [ %i.gu, %bb.aj ], [ %i.gp, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.7326.0484.i.i = phi i64 [ %i.gv, %bb.aj ], [ 1, %.peel.next.i.preheader.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0324.0485.i.i, i64 4 ; 2 uses
  %i.gv = add nuw nsw i64 %.sroa.7326.0484.i.i, 1
  %i.gw = shl nuw nsw i64 %.sroa.7326.0484.i.i, 1
  %i.gx = add nsw i64 %i.gw, -2                   ; 2 uses
  %.reass.i.i = add i64 %invariant.op.i.i, %i.gx  ; 3 uses
  %i.gy = icmp ult i64 %.reass.i.i, %i.da
  br i1 %i.gy, label %bb.ak, label %.invoke772.i.i

bb.ak:                                            ; preds = %.peel.next.i.i
  %i.gz = load i32, ptr %.sroa.0324.0485.i.i, align 4, !noalias !102218, !noundef !67
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.reass.i.i
  %i.hb = load i32, ptr %i.ha, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !102253
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.gz, i32 noundef %i.hb, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !102218

.noexc191.i.i:                                    ; preds = %bb.ak
  %i.hc = load i64, ptr %i.ao, align 8, !range !123, !noalias !102253, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.hc, 2
  br i1 %cond.i.i.i.i, label %.loopexit593.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102254)
  %.not.i.i.i190.i.i = icmp eq i64 %i.hc, -1
  br i1 %.not.i.i.i190.i.i, label %bb.am, label %.loopexit594.i.i, !prof !77

.loopexit594.i.i:                                 ; preds = %bb.al
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !102254, !noalias !102255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !102256
  store i64 %i.hc, ptr %i.al, align 8, !noalias !102256
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
  %.reass488.i.i = add i64 %invariant.op487.i.i, %i.gx ; 3 uses
  %i.hd = icmp ult i64 %.reass488.i.i, %i.da
  br i1 %i.hd, label %bb.an, label %.invoke772.i.i

bb.an:                                            ; preds = %bb.am
  %i.he = load i32, ptr %.sroa.0324.0485.i.i, align 4, !noalias !102218, !noundef !67
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.reass488.i.i
  %i.hg = load i32, ptr %i.hf, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !102252
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.he, i32 noundef %i.hg, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc197.i.i unwind label %.loopexit.i.i, !noalias !102218

.noexc197.i.i:                                    ; preds = %bb.an
  %i.hh = load i64, ptr %i.ak, align 8, !range !123, !noalias !102252, !noundef !67 ; 3 uses
  %cond.i.i194.i.i = icmp eq i64 %i.hh, 2
  br i1 %cond.i.i194.i.i, label %.loopexit596.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc197.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102257)
  %.not.i.i.i195.i.i = icmp eq i64 %i.hh, -1
  br i1 %.not.i.i.i195.i.i, label %bb.aj, label %.loopexit597.i.i, !prof !77

.loopexit597.i.i:                                 ; preds = %bb.ao
  %.phi.trans.insert610.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre611.i.i = load i64, ptr %.phi.trans.insert610.i.i, align 8, !alias.scope !102257, !noalias !102258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !102259
  store i64 %i.hh, ptr %i.ah, align 8, !noalias !102259
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
  %.sroa.7329.0482.i.i = phi i64 [ 0, %.lr.ph483.i.i ], [ %i.hj, %bb.ar ] ; 3 uses
  %.sroa.0327.0481.i.i = phi ptr [ %.sroa.0317.0491.i.i, %.lr.ph483.i.i ], [ %i.hi, %bb.ar ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0327.0481.i.i, i64 4 ; 2 uses
  %i.hj = add nuw nsw i64 %.sroa.7329.0482.i.i, 1
  %.not90.i.i = icmp eq i64 %.sroa.7329.0482.i.i, %i.gq
  br i1 %.not90.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hk = shl nuw nsw i64 %.sroa.7329.0482.i.i, 1 ; 2 uses
  %i.hl = add i64 %i.hk, %i.gr                    ; 3 uses
  %i.hm = icmp ult i64 %i.hl, %i.da
  br i1 %i.hm, label %bb.as, label %.invoke772.i.i

bb.ar:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i, %bb.ap
  %i.hn = icmp eq ptr %i.hi, %i.ge
  br i1 %i.hn, label %.thread.i.i, label %bb.ap

bb.as:                                            ; preds = %bb.aq
  %i.ho = load i32, ptr %.sroa.0327.0481.i.i, align 4, !noalias !102218, !noundef !67
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.hl
  %i.hq = load i32, ptr %i.hp, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !102260
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ho, i32 noundef %i.hq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc207.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc207.i.i:                                    ; preds = %bb.as
  %i.hr = load i64, ptr %i.ag, align 8, !range !123, !noalias !102260, !noundef !67 ; 3 uses
  %cond.i.i204.i.i = icmp eq i64 %i.hr, 2
  br i1 %cond.i.i204.i.i, label %bb.av, label %bb.at, !prof !79

bb.at:                                            ; preds = %.noexc207.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102261)
  %.not.i.i.i205.i.i = icmp eq i64 %i.hr, -1
  br i1 %.not.i.i.i205.i.i, label %bb.aw, label %bb.au, !prof !77

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !102262
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !102261, !noalias !102263
  store i64 %i.hr, ptr %i.ad, align 8, !noalias !102262
  br label %.invoke770.i.i

bb.av:                                            ; preds = %.noexc207.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !102260
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !102260, !noundef !67
  store i64 %i.hv, ptr %i.af, align 8, !noalias !102260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !102260
  store ptr %i.af, ptr %i.ae, align 8, !noalias !102260
  br label %.invoke.i.i

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !102260
  %i.hw = add i64 %i.hk, %6                       ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.da
  br i1 %i.hx, label %bb.ax, label %.invoke772.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.hy = load i32, ptr %.sroa.0327.0481.i.i, align 4, !noalias !102218, !noundef !67
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.hw
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !102264
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hy, i32 noundef %i.ia, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc214.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc214.i.i:                                    ; preds = %bb.ax
  %i.ib = load i64, ptr %i.ac, align 8, !range !123, !noalias !102264, !noundef !67 ; 3 uses
  %cond.i.i211.i.i = icmp eq i64 %i.ib, 2
  br i1 %cond.i.i211.i.i, label %bb.ba, label %bb.ay, !prof !79

bb.ay:                                            ; preds = %.noexc214.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102265)
  %.not.i.i.i212.i.i = icmp eq i64 %i.ib, -1
  br i1 %.not.i.i.i212.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i, label %bb.az, !prof !77

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !102266
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !102265, !noalias !102267
  store i64 %i.ib, ptr %i.z, align 8, !noalias !102266
  br label %.invoke770.i.i

bb.ba:                                            ; preds = %.noexc214.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !102264
  %i.if = load i64, ptr %i.ie, align 8, !noalias !102264, !noundef !67
  store i64 %i.if, ptr %i.ab, align 8, !noalias !102264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !102264
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !102264
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit217.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !102264
  br label %bb.ar

bb.bb:                                            ; preds = %bb.ah
  %i.ig = icmp ult i64 %i.fx, %i.cy
  br i1 %i.ig, label %bb.bd, label %.invoke772.i.i

bb.bc:                                            ; preds = %bb.ah
  %i.ih = add i64 %i.fx, %i.cq                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.cy
  br i1 %i.ii, label %bb.bn, label %.invoke772.i.i

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
  %7 = or disjoint i64 %.sroa.10313.0477.i.i, 1
  %i.ir = mul i64 %7, %i.bt                       ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.cy
  br i1 %i.is, label %bb.bi, label %.invoke772.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ir
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
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ih
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
  %i.jm = icmp ult i64 %i.jl, %i.cy
  br i1 %i.jm, label %bb.bs, label %.invoke772.i.i

bb.bs:                                            ; preds = %bb.br
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.jl
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !102218, !noundef !67
  %i.jp = load i32, ptr %i.je, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !102280
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.jo, i32 noundef %i.jp, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc242.i.i:                                    ; preds = %bb.bs
  %i.jq = load i64, ptr %i.m, align 8, !range !123, !noalias !102280, !noundef !67 ; 3 uses
  %cond.i.i239.i.i = icmp eq i64 %i.jq, 2
  br i1 %cond.i.i239.i.i, label %bb.bv, label %bb.bt, !prof !79

bb.bt:                                            ; preds = %.noexc242.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102281)
  %.not.i.i.i240.i.i = icmp eq i64 %i.jq, -1
  br i1 %.not.i.i.i240.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, label %bb.bu, !prof !77

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !102282
  %i.jr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !102281, !noalias !102283
  store i64 %i.jq, ptr %i.j, align 8, !noalias !102282
  br label %.invoke770.i.i

bb.bv:                                            ; preds = %.noexc242.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !102280
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !102280, !noundef !67
  store i64 %i.ju, ptr %i.l, align 8, !noalias !102280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !102280
  store ptr %i.l, ptr %i.k, align 8, !noalias !102280
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !102280
  br label %bb.bm

bb.bw:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i, %.lr.ph.i.i
  %.sroa.0307.0472.i.i = phi ptr [ %.sroa.0301.0475.i.i, %.lr.ph.i.i ], [ %i.jv, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i ] ; 3 uses
  %.sroa.7309.0471.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.jw, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit262.i.i ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0307.0472.i.i, i64 4 ; 2 uses
  %i.jw = add nuw nsw i64 %.sroa.7309.0471.i.i, 1
  %i.jx = add nuw i64 %.sroa.7309.0471.i.i, %i.fq ; 4 uses
  %i.jy = icmp ult i64 %i.jx, %i.cy
  br i1 %i.jy, label %bb.bx, label %.invoke772.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.jx
  %i.ka = load i32, ptr %i.jz, align 4, !noalias !102218, !noundef !67
  %i.kb = load i32, ptr %.sroa.0307.0472.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !102284
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ka, i32 noundef %i.kb, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc252.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc252.i.i:                                    ; preds = %bb.bx
  %i.kc = load i64, ptr %i.i, align 8, !range !123, !noalias !102284, !noundef !67 ; 3 uses
  %cond.i.i249.i.i = icmp eq i64 %i.kc, 2
  br i1 %cond.i.i249.i.i, label %bb.ca, label %bb.by, !prof !79

bb.by:                                            ; preds = %.noexc252.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102285)
  %.not.i.i.i250.i.i = icmp eq i64 %i.kc, -1
  br i1 %.not.i.i.i250.i.i, label %bb.cb, label %bb.bz, !prof !77

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !102286
  %i.kd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !102285, !noalias !102287
  store i64 %i.kc, ptr %i.f, align 8, !noalias !102286
  br label %.invoke770.i.i

bb.ca:                                            ; preds = %.noexc252.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102284
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !102284, !noundef !67
  store i64 %i.kg, ptr %i.h, align 8, !noalias !102284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !102284
  store ptr %i.h, ptr %i.g, align 8, !noalias !102284
  br label %.invoke.i.i

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !102284
  %i.kh = add nuw nsw i64 %i.jx, 1                ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %i.cy
  br i1 %i.ki, label %bb.cc, label %.invoke772.i.i

.invoke772.i.i:                                   ; preds = %bb.cb, %bb.bw, %bb.br, %bb.bh, %bb.bc, %bb.bb, %bb.aw, %bb.aq, %bb.am, %.peel.next.i.i
  %i.kj = phi i64 [ %i.jl, %bb.br ], [ %i.hw, %bb.aw ], [ %.reass488.i.i, %bb.am ], [ %.reass.i.i, %.peel.next.i.i ], [ %i.hl, %bb.aq ], [ %i.ir, %bb.bh ], [ %i.fx, %bb.bb ], [ %i.ih, %bb.bc ], [ %i.jx, %bb.bw ], [ %i.kh, %bb.cb ]
  %i.kk = phi i64 [ %i.cy, %bb.br ], [ %i.da, %bb.aw ], [ %i.da, %bb.am ], [ %i.da, %.peel.next.i.i ], [ %i.da, %bb.aq ], [ %i.cy, %bb.bb ], [ %i.cy, %bb.bc ], [ %i.cy, %bb.bh ], [ %i.cy, %bb.bw ], [ %i.cy, %bb.cb ]
  %i.kl = phi ptr [ @698, %bb.br ], [ @686, %bb.aw ], [ @680, %bb.am ], [ @678, %.peel.next.i.i ], [ @684, %bb.aq ], [ @692, %bb.bh ], [ @690, %bb.bb ], [ @696, %bb.bc ], [ @702, %bb.bw ], [ @704, %bb.cb ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.kj, i64 noundef %i.kk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl) #61
          to label %.cont773.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !102218

.cont773.i.i:                                     ; preds = %.invoke772.i.i
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.kh
  %i.kn = load i32, ptr %i.km, align 4, !noalias !102218, !noundef !67
  %i.ko = load i32, ptr %.sroa.0307.0472.i.i, align 4, !noalias !102218, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102288
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.kn, i32 noundef %i.ko, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc259.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102218

.noexc259.i.i:                                    ; preds = %bb.cc
  %i.kp = load i64, ptr %i.e, align 8, !range !123, !noalias !102288, !noundef !67 ; 3 uses
  %cond.i.i256.i.i = icmp eq i64 %i.kp, 2
  br i1 %cond.i.i256.i.i, label %bb.cf, label %bb.cd, !prof !79
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators30___pyfunction_karate_club_graph:bb.a
  %.sroa.5.0 = phi ptr [ %.sroa.07.0.copyload, %bb.g ], [ %.sroa.5.8.copyload4, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.af, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, i64 56, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102306
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload4, ptr %i.ag, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.b, %bb.e
  %.sink15 = phi i64 [ 1, %bb.b ], [ 1, %bb.e ], [ 0, %bb.j ], [ 1, %bb.i ]
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
  %i.cv = mul i64 %i.bt, %i.bt                    ; 15 uses
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
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dc, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_NtBZ_10UndirectedEB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B5c_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7s_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5i_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
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
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators31___pyfunction_heavy_square_graph:bb.a
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
  br i1 %i.fd, label %.preheader375.i.i, label %.lr.ph.i.i

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

.preheader375.i.i:                                ; preds = %.thread364.loopexit.i.i
  %i.fk = add nsw i64 %i.cl, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bm, %.preheader375.i.i
  %.sroa.0304.0480.i.i = phi ptr [ %i.dw, %.preheader375.i.i ], [ %i.fm, %bb.bm ] ; 4 uses
  %.sroa.5305.0479.i.i = phi i64 [ %i.cw, %.preheader375.i.i ], [ %i.fn, %bb.bm ] ; 2 uses
  %.sroa.10307.0478.i.i = phi i64 [ 0, %.preheader375.i.i ], [ %i.fo, %bb.bm ] ; 3 uses
  %i.fl = call i64 @llvm.umin.i64(i64 %.sroa.5305.0479.i.i, i64 %i.bt) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0304.0480.i.i) ]
  %i.fm = getelementptr [4 x i8], ptr %.sroa.0304.0480.i.i, i64 %i.fl ; 2 uses
  %i.fn = sub nuw nsw i64 %.sroa.5305.0479.i.i, %i.fl ; 2 uses
  %i.fo = add i64 %.sroa.10307.0478.i.i, 1        ; 2 uses
  %i.fp = and i64 %.sroa.10307.0478.i.i, 1
  %i.fq = icmp eq i64 %i.fp, 0
  %i.fr = mul i64 %.sroa.10307.0478.i.i, %i.bt    ; 5 uses
  br i1 %i.fq, label %bb.bb, label %bb.bc

.lr.ph491.i.i:                                    ; preds = %bb.bm, %.thread352.i.i
  %.sroa.0311.0490.i.i = phi ptr [ %i.ft, %.thread352.i.i ], [ %i.dw, %bb.bm ] ; 5 uses
  %.sroa.5312.0489.i.i = phi i64 [ %i.fu, %.thread352.i.i ], [ %i.cw, %bb.bm ] ; 3 uses
  %.sroa.10314.0488.i.i = phi i64 [ %i.fv, %.thread352.i.i ], [ 0, %bb.bm ] ; 5 uses
  %i.fs = call i64 @llvm.umin.i64(i64 %.sroa.5312.0489.i.i, i64 %i.bt) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0311.0490.i.i) ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0311.0490.i.i, i64 %i.fs
  %i.fu = sub nuw nsw i64 %.sroa.5312.0489.i.i, %i.fs ; 2 uses
  %i.fv = add i64 %.sroa.10314.0488.i.i, 1        ; 2 uses
  %i.fw = and i64 %.sroa.10314.0488.i.i, 1
  %i.fx = icmp eq i64 %i.fw, 0
  %.idx493.i.i = shl nuw nsw i64 %i.fs, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0311.0490.i.i, i64 %.idx493.i.i ; 2 uses
  br i1 %i.fx, label %.lr.ph487.i.i, label %bb.ai

._crit_edge.i.i:                                  ; preds = %.thread352.i.i
  %.sroa.032.0.copyload33.i = load i64, ptr %i.ax, align 8, !noalias !102544
  %.sroa.8.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx35.i, align 8, !noalias !102544
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.fz = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ga = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.cr, align 8, !noalias !102544
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx35.i.sroa_idx, align 8, !noalias !102544
  %i.gb = load <2 x i32>, ptr %i.cs, align 8, !noalias !102544
  %i.gc = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.gc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i: ; preds = %._crit_edge.i.i
  %i.gd = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i, %._crit_edge.i.i
  %i.ge = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.ge, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  %i.gf = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102529
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators18heavy_square_graph0B3Z_B2x_EB45_.exit.i

.lr.ph487.i.i:                                    ; preds = %.lr.ph491.i.i
  %i.gg = add nsw i64 %i.fs, -1
  %i.gh = mul i64 %.sroa.10314.0488.i.i, %i.co
  %5 = or disjoint i64 %.sroa.10314.0488.i.i, 1
  %6 = mul i64 %5, %i.co
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph491.i.i
  %i.gi = mul i64 %.sroa.10314.0488.i.i, %i.co
  %i.gj = add i64 %i.gi, -1
  %7 = mul i64 %i.fv, %i.co
  %i.gk = add i64 %7, -1
  %i.gl = icmp eq i64 %.sroa.5312.0489.i.i, 1
  br i1 %i.gl, label %.thread352.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0311.0490.i.i, i64 4
  br label %.peel.next.i.i

bb.aj:                                            ; preds = %bb.al, %.lr.ph487.i.i
  %.sroa.0318.0486.i.i = phi ptr [ %.sroa.0311.0490.i.i, %.lr.ph487.i.i ], [ %i.gn, %bb.al ] ; 3 uses
  %.sroa.7320.0485.i.i = phi i64 [ 0, %.lr.ph487.i.i ], [ %i.go, %bb.al ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0318.0486.i.i, i64 4 ; 2 uses
  %i.go = add nuw nsw i64 %.sroa.7320.0485.i.i, 1
  %.not85.i.i = icmp eq i64 %.sroa.7320.0485.i.i, %i.gg
  br i1 %.not85.i.i, label %bb.al, label %bb.ak

.thread352.i.i:                                   ; preds = %bb.av, %bb.al, %bb.ai
  %i.gp = icmp eq i64 %i.fu, 0
  br i1 %i.gp, label %._crit_edge.i.i, label %.lr.ph491.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gq = add i64 %.sroa.7320.0485.i.i, %i.gh     ; 3 uses
  %i.gr = icmp ult i64 %i.gq, %i.cw
  br i1 %i.gr, label %bb.am, label %.invoke780.i.i

bb.al:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i, %bb.aj
  %i.gs = icmp eq ptr %i.gn, %i.fy
  br i1 %i.gs, label %.thread352.i.i, label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.gt = load i32, ptr %.sroa.0318.0486.i.i, align 4, !noalias !102529, !noundef !67
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.gq
  %i.gv = load i32, ptr %i.gu, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !102563
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.gt, i32 noundef %i.gv, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc185.i.i unwind label %.loopexit.i.i, !noalias !102529

.noexc185.i.i:                                    ; preds = %bb.am
  %i.gw = load i64, ptr %i.ao, align 8, !range !123, !noalias !102563, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.gw, 2
  br i1 %cond.i.i.i.i, label %bb.ap, label %bb.an, !prof !79

bb.an:                                            ; preds = %.noexc185.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102564)
  %.not.i.i.i184.i.i = icmp eq i64 %i.gw, -1
  br i1 %.not.i.i.i184.i.i, label %bb.aq, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !102565
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !102564, !noalias !102566
  store i64 %i.gw, ptr %i.al, align 8, !noalias !102565
  br label %.invoke778.i.i

bb.ap:                                            ; preds = %.noexc185.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !102563
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !102563, !noundef !67
  store i64 %i.ha, ptr %i.an, align 8, !noalias !102563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !102563
  store ptr %i.an, ptr %i.am, align 8, !noalias !102563
  br label %.invoke.i.i

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !102563
  %i.hb = add i64 %.sroa.7320.0485.i.i, %6        ; 3 uses
  %i.hc = icmp ult i64 %i.hb, %i.cw
  br i1 %i.hc, label %bb.ar, label %.invoke780.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hd = load i32, ptr %.sroa.0318.0486.i.i, align 4, !noalias !102529, !noundef !67
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hb
  %i.hf = load i32, ptr %i.he, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !102567
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hd, i32 noundef %i.hf, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !102529

.noexc191.i.i:                                    ; preds = %bb.ar
  %i.hg = load i64, ptr %i.ak, align 8, !range !123, !noalias !102567, !noundef !67 ; 3 uses
  %cond.i.i188.i.i = icmp eq i64 %i.hg, 2
  br i1 %cond.i.i188.i.i, label %bb.au, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102568)
  %.not.i.i.i189.i.i = icmp eq i64 %i.hg, -1
  br i1 %.not.i.i.i189.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i, label %bb.at, !prof !77

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !102569
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !102568, !noalias !102570
  store i64 %i.hg, ptr %i.ah, align 8, !noalias !102569
  br label %.invoke778.i.i

bb.au:                                            ; preds = %.noexc191.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !102567
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !102567, !noundef !67
  store i64 %i.hk, ptr %i.aj, align 8, !noalias !102567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !102567
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !102567
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit194.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !102567
  br label %bb.al

bb.av:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !102571
  %i.hl = icmp eq ptr %i.hm, %i.fy
  br i1 %i.hl, label %.thread352.i.i, label %.peel.next.i.i, !llvm.loop !102453

.peel.next.i.i:                                   ; preds = %bb.av, %.peel.next.i.preheader.i
  %.sroa.7323.0483.i.i = phi i64 [ %i.hn, %bb.av ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.0321.0482.i.i = phi ptr [ %i.hm, %bb.av ], [ %i.gm, %.peel.next.i.preheader.i ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0321.0482.i.i, i64 4 ; 2 uses
  %i.hn = add nuw nsw i64 %.sroa.7323.0483.i.i, 1
  %i.ho = add i64 %i.gj, %.sroa.7323.0483.i.i     ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %i.cw
  br i1 %i.hp, label %bb.aw, label %.invoke780.i.i

bb.aw:                                            ; preds = %.peel.next.i.i
  %i.hq = load i32, ptr %.sroa.0321.0482.i.i, align 4, !noalias !102529, !noundef !67
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ho
  %i.hs = load i32, ptr %i.hr, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !102572
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hq, i32 noundef %i.hs, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc201.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc201.i.i:                                    ; preds = %bb.aw
  %i.ht = load i64, ptr %i.ag, align 8, !range !123, !noalias !102572, !noundef !67 ; 3 uses
  %cond.i.i198.i.i = icmp eq i64 %i.ht, 2
  br i1 %cond.i.i198.i.i, label %.loopexit594.i.i, label %bb.ax, !prof !79

bb.ax:                                            ; preds = %.noexc201.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102573)
  %.not.i.i.i199.i.i = icmp eq i64 %i.ht, -1
  br i1 %.not.i.i.i199.i.i, label %bb.ay, label %.loopexit595.i.i, !prof !77

.loopexit595.i.i:                                 ; preds = %bb.ax
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !102573, !noalias !102574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !102575
  store i64 %i.ht, ptr %i.ad, align 8, !noalias !102575
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
  %i.hu = add i64 %i.gk, %.sroa.7323.0483.i.i     ; 3 uses
  %i.hv = icmp ult i64 %i.hu, %i.cw
  br i1 %i.hv, label %bb.az, label %.invoke780.i.i

bb.az:                                            ; preds = %bb.ay
  %i.hw = load i32, ptr %.sroa.0321.0482.i.i, align 4, !noalias !102529, !noundef !67
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hu
  %i.hy = load i32, ptr %i.hx, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !102571
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.hw, i32 noundef %i.hy, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc208.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc208.i.i:                                    ; preds = %bb.az
  %i.hz = load i64, ptr %i.ac, align 8, !range !123, !noalias !102571, !noundef !67 ; 3 uses
  %cond.i.i205.i.i = icmp eq i64 %i.hz, 2
  br i1 %cond.i.i205.i.i, label %.loopexit597.i.i, label %bb.ba, !prof !79

bb.ba:                                            ; preds = %.noexc208.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102576)
  %.not.i.i.i206.i.i = icmp eq i64 %i.hz, -1
  br i1 %.not.i.i.i206.i.i, label %bb.av, label %.loopexit598.i.i, !prof !77

.loopexit598.i.i:                                 ; preds = %bb.ba
  %.phi.trans.insert610.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre611.i.i = load i64, ptr %.phi.trans.insert610.i.i, align 8, !alias.scope !102576, !noalias !102577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !102578
  store i64 %i.hz, ptr %i.z, align 8, !noalias !102578
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
  %i.ia = add i64 %i.fr, %i.co                    ; 3 uses
  %i.ib = icmp ult i64 %i.ia, %i.cv
  br i1 %i.ib, label %bb.bd, label %.invoke780.i.i

bb.bc:                                            ; preds = %bb.ah
  %i.ic = icmp ult i64 %i.fr, %i.cv
  br i1 %i.ic, label %bb.bn, label %.invoke780.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ia
  %i.ie = load i32, ptr %i.id, align 4, !noalias !102529, !noundef !67
  %i.if = getelementptr i8, ptr %i.fm, i64 -4     ; 2 uses
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
  %i.im = add i64 %i.fk, %i.fr                    ; 3 uses
  %i.in = icmp ult i64 %i.im, %i.cv
  br i1 %i.in, label %bb.bi, label %.invoke780.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.im
  %i.ip = load i32, ptr %i.io, align 4, !noalias !102529, !noundef !67
  %i.iq = load i32, ptr %i.if, align 4, !noalias !102529, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !102583
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, i32 noundef %i.ip, i32 noundef %i.iq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc222.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !102529

.noexc222.i.i:                                    ; preds = %bb.bi
  %i.ir = load i64, ptr %i.u, align 8, !range !123, !noalias !102583, !noundef !67 ; 3 uses
  %cond.i.i219.i.i = icmp eq i64 %i.ir, 2
  br i1 %cond.i.i219.i.i, label %bb.bl, label %bb.bj, !prof !79

bb.bj:                                            ; preds = %.noexc222.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102584)
  %.not.i.i.i220.i.i = icmp eq i64 %i.ir, -1
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators37___pyfunction_directed_heavy_hex_graph:bb.a
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [72 x i8], align 8               ; 45 uses
  %i.cm = alloca [64 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 7 uses
  %i.co = alloca [64 x i8], align 8               ; 4 uses
  %i.cp = alloca [72 x i8], align 8               ; 7 uses
  %i.cq = alloca [64 x i8], align 8               ; 4 uses
  %i.cr = alloca [72 x i8], align 8               ; 6 uses
  %i.cs = alloca [136 x i8], align 8              ; 20 uses
  %i.ct = alloca [72 x i8], align 8               ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = alloca [72 x i8], align 8               ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = alloca [72 x i8], align 8               ; 4 uses
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
  %i.fe = mul i64 %i.dl, %i.dl                    ; 19 uses
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
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fm, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
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
  %.not458.i.i = icmp eq i64 %i.gb, 0             ; 2 uses
  br i1 %.not458.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

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
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators37___pyfunction_directed_heavy_hex_graph:bb.a
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
  %i.hv = add nuw i64 %.sroa.7399.0671.us.us.i.i, %i.hs ; 4 uses
  %i.hw = icmp ult i64 %i.hv, %i.fe
  br i1 %i.hw, label %bb.ak, label %.split680.us.invoke.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hv
  %i.hy = load i32, ptr %i.hx, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.hz = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104016
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hy, i32 noundef %i.hz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc308.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc308.us.us.i.i:                              ; preds = %bb.ak
  %i.ia = load i64, ptr %i.q, align 8, !range !123, !noalias !104016, !noundef !67 ; 3 uses
  %cond.i.i305.us.us.i.i = icmp eq i64 %i.ia, 2
  br i1 %cond.i.i305.us.us.i.i, label %.split675.us.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc308.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104017)
  %.not.i.i.i306.us.us.i.i = icmp eq i64 %i.ia, -1
  br i1 %.not.i.i.i306.us.us.i.i, label %bb.am, label %.split677.us.i.i, !prof !77

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104016
  %i.ib = add nuw nsw i64 %i.hv, 1                ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %i.fe
  br i1 %i.ic, label %bb.an, label %.split680.us.invoke.i.i

bb.an:                                            ; preds = %bb.am
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.if = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104018
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ie, i32 noundef %i.if, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc315.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc315.us.us.i.i:                              ; preds = %bb.an
  %i.ig = load i64, ptr %i.m, align 8, !range !123, !noalias !104018, !noundef !67 ; 3 uses
  %cond.i.i312.us.us.i.i = icmp eq i64 %i.ig, 2
  br i1 %cond.i.i312.us.us.i.i, label %.split683.us.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc315.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104019)
  %.not.i.i.i313.us.us.i.i = icmp eq i64 %i.ig, -1
  br i1 %.not.i.i.i313.us.us.i.i, label %bb.ap, label %.split685.us.i.i, !prof !77

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104018
  %i.ih = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104020
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ih, i32 noundef %i.hy, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc322.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc322.us.us.i.i:                              ; preds = %bb.ap
  %i.ii = load i64, ptr %i.i, align 8, !range !123, !noalias !104020, !noundef !67 ; 3 uses
  %cond.i.i319.us.us.i.i = icmp eq i64 %i.ii, 2
  br i1 %cond.i.i319.us.us.i.i, label %.split688.us.i.i, label %bb.aq, !prof !79

bb.aq:                                            ; preds = %.noexc322.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104021)
  %.not.i.i.i320.us.us.i.i = icmp eq i64 %i.ii, -1
  br i1 %.not.i.i.i320.us.us.i.i, label %bb.ar, label %.split690.us.i.i, !prof !77

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !104020
  %i.ij = load i32, ptr %.sroa.0397.0672.us.us.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104022
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ij, i32 noundef %i.ie, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc329.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !103982

.noexc329.us.us.i.i:                              ; preds = %bb.ar
  %i.ik = load i64, ptr %i.e, align 8, !range !123, !noalias !104022, !noundef !67 ; 3 uses
  %cond.i.i326.us.us.i.i = icmp eq i64 %i.ik, 2
  br i1 %cond.i.i326.us.us.i.i, label %.split693.us.i.i, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc329.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104023)
  %.not.i.i.i327.us.us.i.i = icmp eq i64 %i.ik, -1
  br i1 %.not.i.i.i327.us.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i, label %.split695.us.i.i, !prof !77

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104022
  %i.il = icmp eq ptr %i.ht, %i.hr
  br i1 %i.il, label %.thread452.loopexit.us.i.i, label %bb.aj

.thread452.loopexit.us.i.i:                       ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit332.us.us.i.i
  %i.im = icmp eq i64 %i.hp, 0
  br i1 %i.im, label %.preheader464.i.i, label %.lr.ph.us.i.i

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
  %i.in = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.in, label %.body172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i176.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.io = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %.body172.i.i

bb.at:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.thread.i.i
  unreachable

.thread452.loopexit.i.i:                          ; preds = %bb.dv
  %i.ip = icmp eq i64 %i.it, 0
  br i1 %i.ip, label %.preheader464.i.i, label %.lr.ph.i.i

.preheader464.i.i:                                ; preds = %.thread452.loopexit.i.i, %.thread452.loopexit.us.i.i
  br i1 %.not458.i.i, label %._crit_edge.i.i, label %.lr.ph711.i.i

.lr.ph711.i.i:                                    ; preds = %.preheader464.i.i
  %i.iq = add nsw i64 %i.er, -1
  br label %bb.au

.lr.ph.i.i:                                       ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i, %.thread452.loopexit.i.i
  %.sroa.0391.0699.i.i = phi ptr [ %i.is, %.thread452.loopexit.i.i ], [ %i.gz, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 4 uses
  %.sroa.5392.0698.i.i = phi i64 [ %i.it, %.thread452.loopexit.i.i ], [ %i.fg, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %.sroa.10393.0697.i.i = phi i64 [ %i.iu, %.thread452.loopexit.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es0_0EE9from_iterB6y_.exit.i.i ] ; 2 uses
  %i.ir = call i64 @llvm.umin.i64(i64 %.sroa.5392.0698.i.i, i64 %i.ew) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0391.0699.i.i) ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0391.0699.i.i, i64 %i.ir
  %i.it = sub nuw nsw i64 %.sroa.5392.0698.i.i, %i.ir ; 2 uses
  %i.iu = add i64 %.sroa.10393.0697.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.ir, 2
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0391.0699.i.i, i64 %.idx.i.i
  %i.iw = mul i64 %.sroa.10393.0697.i.i, %i.dl
  br label %bb.dp

bb.au:                                            ; preds = %bb.co, %.lr.ph711.i.i
  %.sroa.0400.0710.i.i = phi ptr [ %i.gi, %.lr.ph711.i.i ], [ %i.iy, %bb.co ] ; 6 uses
  %.sroa.5401.0709.i.i = phi i64 [ %i.gb, %.lr.ph711.i.i ], [ %i.iz, %bb.co ] ; 2 uses
  %.sroa.10403.0708.i.i = phi i64 [ 0, %.lr.ph711.i.i ], [ %i.ja, %bb.co ] ; 4 uses
  %i.ix = call i64 @llvm.umin.i64(i64 %.sroa.5401.0709.i.i, i64 %i.ga) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0400.0710.i.i) ]
  %i.iy = getelementptr [4 x i8], ptr %.sroa.0400.0710.i.i, i64 %i.ix ; 2 uses
  %i.iz = sub nuw nsw i64 %.sroa.5401.0709.i.i, %i.ix ; 2 uses
  %i.ja = add i64 %.sroa.10403.0708.i.i, 1
  %i.jb = and i64 %.sroa.10403.0708.i.i, 1
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = mul i64 %.sroa.10403.0708.i.i, %i.dl    ; 5 uses
  br i1 %i.jc, label %bb.cc, label %bb.cd

.lr.ph723.i.i:                                    ; preds = %bb.co, %.thread.i.i
  %.sroa.0407.0722.i.i = phi ptr [ %i.jf, %.thread.i.i ], [ %i.gi, %bb.co ] ; 5 uses
  %.sroa.5408.0721.i.i = phi i64 [ %i.jg, %.thread.i.i ], [ %i.gb, %bb.co ] ; 2 uses
  %.sroa.10410.0720.i.i = phi i64 [ %i.jh, %.thread.i.i ], [ 0, %bb.co ] ; 5 uses
  %i.je = call i64 @llvm.umin.i64(i64 %.sroa.5408.0721.i.i, i64 %i.ga) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0407.0722.i.i) ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0407.0722.i.i, i64 %i.je
  %i.jg = sub nuw nsw i64 %.sroa.5408.0721.i.i, %i.je ; 2 uses
  %i.jh = add i64 %.sroa.10410.0720.i.i, 1        ; 2 uses
  %i.ji = and i64 %.sroa.10410.0720.i.i, 1
  %i.jj = icmp eq i64 %i.ji, 0
  %.idx726.i.i = shl nuw nsw i64 %i.je, 2
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0407.0722.i.i, i64 %.idx726.i.i ; 2 uses
  br i1 %i.jj, label %bb.av, label %.lr.ph714.i.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %.preheader464.i.i
  %.sroa.034.0.copyload35.i = load i64, ptr %i.cl, align 8, !noalias !103997
  %.sroa.8.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx38.i, align 8, !noalias !103997
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.jl = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.jm = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.fa, align 8, !noalias !103997
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !103997
  %i.jn = load <2 x i32>, ptr %i.fb, align 8, !noalias !103997
  %i.jo = icmp eq i64 %.sroa.410.0.i.i150.i.i, 0
  br i1 %i.jo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i: ; preds = %._crit_edge.i.i
  %i.jp = shl nuw i64 %.sroa.410.0.i.i150.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i184.i.i, %._crit_edge.i.i
  %i.jq = icmp eq i64 %.sroa.410.0.i.i119.i.i, 0
  br i1 %i.jq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
  %i.jr = shl nuw i64 %.sroa.410.0.i.i119.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit189.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit185.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103982
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i

bb.av:                                            ; preds = %.lr.ph723.i.i
  %i.js = mul i64 %.sroa.10410.0720.i.i, %i.ew
  %invariant.op.i.i = or disjoint i64 %i.js, 1
  %i.jt = or disjoint i64 %.sroa.10410.0720.i.i, 1
  %5 = mul i64 %i.jt, %i.ew
  %invariant.op718.i.i = or disjoint i64 %5, 1
  %i.ju = icmp eq i64 %i.je, 1
  br i1 %i.ju, label %.thread.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.av
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0407.0722.i.i, i64 4
  br label %.peel.next.i.i

.lr.ph714.i.i:                                    ; preds = %.lr.ph723.i.i
  %i.jw = add nsw i64 %i.je, -1
  %i.jx = mul i64 %.sroa.10410.0720.i.i, %i.ew
  %6 = mul i64 %i.jh, %i.ew
  br label %bb.bh

.thread.i.i:                                      ; preds = %bb.bj, %bb.aw, %bb.av
  %i.jy = icmp eq i64 %i.jg, 0
  br i1 %i.jy, label %._crit_edge.i.i, label %.lr.ph723.i.i

bb.aw:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit214.i.i, %bb.bc
  %i.jz = icmp eq ptr %i.ka, %i.jk
  br i1 %i.jz, label %.thread.i.i, label %.peel.next.i.i, !llvm.loop !103823

.peel.next.i.i:                                   ; preds = %bb.aw, %.peel.next.i.preheader.i
  %.sroa.0414.0716.i.i = phi ptr [ %i.ka, %bb.aw ], [ %i.jv, %.peel.next.i.preheader.i ] ; 5 uses
  %.sroa.7416.0715.i.i = phi i64 [ %i.kb, %bb.aw ], [ 1, %.peel.next.i.preheader.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0414.0716.i.i, i64 4 ; 2 uses
  %i.kb = add nuw nsw i64 %.sroa.7416.0715.i.i, 1
  %i.kc = shl nuw nsw i64 %.sroa.7416.0715.i.i, 1
  %i.kd = add nsw i64 %i.kc, -2                   ; 2 uses
  %.reass.i.i = add i64 %invariant.op.i.i, %i.kd  ; 3 uses
  %i.ke = icmp ult i64 %.reass.i.i, %i.fg
  br i1 %i.ke, label %bb.ax, label %.split680.us.invoke.i.i

bb.ax:                                            ; preds = %.peel.next.i.i
  %i.kf = load i32, ptr %.sroa.0414.0716.i.i, align 4, !noalias !103982, !noundef !67
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.reass.i.i ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !104024
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kf, i32 noundef %i.kh, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !103982

.noexc191.i.i:                                    ; preds = %bb.ax
  %i.ki = load i64, ptr %i.cc, align 8, !range !123, !noalias !104024, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.ki, 2
  br i1 %cond.i.i.i.i, label %.loopexit965.i.i, label %bb.ay, !prof !79

bb.ay:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104025)
  %.not.i.i.i190.i.i = icmp eq i64 %i.ki, -1
  br i1 %.not.i.i.i190.i.i, label %bb.az, label %.loopexit966.i.i, !prof !77

.loopexit966.i.i:                                 ; preds = %bb.ay
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !104025, !noalias !104026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !104027
  store i64 %i.ki, ptr %i.bz, align 8, !noalias !104027
  br label %.split695.us.invoke.i.i

.loopexit965.i.i:                                 ; preds = %.noexc191.i.i
  %.phi.trans.insert1005.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre1006.i.i = load i64, ptr %.phi.trans.insert1005.i.i, align 8, !noalias !104024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !104024
  store i64 %.pre1006.i.i, ptr %i.cb, align 8, !noalias !104024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !104024
  store ptr %i.cb, ptr %i.ca, align 8, !noalias !104024
  br label %.split693.us.invoke.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !104024
  %.reass719.i.i = add i64 %invariant.op718.i.i, %i.kd ; 3 uses
  %i.kj = icmp ult i64 %.reass719.i.i, %i.fg
  br i1 %i.kj, label %bb.ba, label %.split680.us.invoke.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kk = load i32, ptr %.sroa.0414.0716.i.i, align 4, !noalias !103982, !noundef !67
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.reass719.i.i ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !104028
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kk, i32 noundef %i.km, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc197.i.i unwind label %.loopexit.i.i, !noalias !103982

.noexc197.i.i:                                    ; preds = %bb.ba
  %i.kn = load i64, ptr %i.by, align 8, !range !123, !noalias !104028, !noundef !67 ; 3 uses
  %cond.i.i194.i.i = icmp eq i64 %i.kn, 2
  br i1 %cond.i.i194.i.i, label %.loopexit968.i.i, label %bb.bb, !prof !79

bb.bb:                                            ; preds = %.noexc197.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104029)
  %.not.i.i.i195.i.i = icmp eq i64 %i.kn, -1
  br i1 %.not.i.i.i195.i.i, label %bb.bc, label %.loopexit969.i.i, !prof !77

.loopexit969.i.i:                                 ; preds = %bb.bb
  %.phi.trans.insert993.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre994.i.i = load i64, ptr %.phi.trans.insert993.i.i, align 8, !alias.scope !104029, !noalias !104030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !104031
  store i64 %i.kn, ptr %i.bv, align 8, !noalias !104031
  br label %.split695.us.invoke.i.i

.loopexit968.i.i:                                 ; preds = %.noexc197.i.i
  %.phi.trans.insert1003.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre1004.i.i = load i64, ptr %.phi.trans.insert1003.i.i, align 8, !noalias !104028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !104028
  store i64 %.pre1004.i.i, ptr %i.bx, align 8, !noalias !104028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !104028
  store ptr %i.bx, ptr %i.bw, align 8, !noalias !104028
  br label %.split693.us.invoke.i.i

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !104028
  br i1 %i.el, label %bb.bd, label %bb.aw

bb.bd:                                            ; preds = %bb.bc
  %i.ko = load i32, ptr %i.kg, align 4, !noalias !103982, !noundef !67
  %i.kp = load i32, ptr %.sroa.0414.0716.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !104032
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ko, i32 noundef %i.kp, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc204.i.i unwind label %.loopexit.i.i, !noalias !103982

.noexc204.i.i:                                    ; preds = %bb.bd
  %i.kq = load i64, ptr %i.bu, align 8, !range !123, !noalias !104032, !noundef !67 ; 3 uses
  %cond.i.i201.i.i = icmp eq i64 %i.kq, 2
  br i1 %cond.i.i201.i.i, label %.loopexit970.i.i, label %bb.be, !prof !79

bb.be:                                            ; preds = %.noexc204.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104033)
  %.not.i.i.i202.i.i = icmp eq i64 %i.kq, -1
  br i1 %.not.i.i.i202.i.i, label %bb.bf, label %.loopexit971.i.i, !prof !77

.loopexit971.i.i:                                 ; preds = %bb.be
  %.phi.trans.insert995.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre996.i.i = load i64, ptr %.phi.trans.insert995.i.i, align 8, !alias.scope !104033, !noalias !104034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !104035
  store i64 %i.kq, ptr %i.br, align 8, !noalias !104035
  br label %.split695.us.invoke.i.i

.loopexit970.i.i:                                 ; preds = %.noexc204.i.i
  %.phi.trans.insert1001.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre1002.i.i = load i64, ptr %.phi.trans.insert1001.i.i, align 8, !noalias !104032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !104032
  store i64 %.pre1002.i.i, ptr %i.bt, align 8, !noalias !104032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !104032
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !104032
  br label %.split693.us.invoke.i.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !104032
  %i.kr = load i32, ptr %i.kl, align 4, !noalias !103982, !noundef !67
  %i.ks = load i32, ptr %.sroa.0414.0716.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !104036
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kr, i32 noundef %i.ks, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc211.i.i unwind label %.loopexit.i.i, !noalias !103982

.noexc211.i.i:                                    ; preds = %bb.bf
  %i.kt = load i64, ptr %i.bq, align 8, !range !123, !noalias !104036, !noundef !67 ; 3 uses
  %cond.i.i208.i.i = icmp eq i64 %i.kt, 2
  br i1 %cond.i.i208.i.i, label %.loopexit972.i.i, label %bb.bg, !prof !79

bb.bg:                                            ; preds = %.noexc211.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104037)
  %.not.i.i.i209.i.i = icmp eq i64 %i.kt, -1
  br i1 %.not.i.i.i209.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit214.i.i, label %.loopexit973.i.i, !prof !77

.loopexit973.i.i:                                 ; preds = %bb.bg
  %.phi.trans.insert997.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre998.i.i = load i64, ptr %.phi.trans.insert997.i.i, align 8, !alias.scope !104037, !noalias !104038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !104039
  store i64 %i.kt, ptr %i.bn, align 8, !noalias !104039
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
  %.sroa.7419.0713.i.i = phi i64 [ 0, %.lr.ph714.i.i ], [ %i.kv, %bb.bj ] ; 3 uses
  %.sroa.0417.0712.i.i = phi ptr [ %.sroa.0407.0722.i.i, %.lr.ph714.i.i ], [ %i.ku, %bb.bj ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0417.0712.i.i, i64 4 ; 2 uses
  %i.kv = add nuw nsw i64 %.sroa.7419.0713.i.i, 1
  %.not90.i.i = icmp eq i64 %.sroa.7419.0713.i.i, %i.jw
  br i1 %.not90.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kw = shl nuw nsw i64 %.sroa.7419.0713.i.i, 1 ; 2 uses
  %i.kx = add i64 %i.kw, %i.jx                    ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %i.fg
  br i1 %i.ky, label %bb.bk, label %.split680.us.invoke.i.i

bb.bj:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, %bb.bt, %bb.bh
  %i.kz = icmp eq ptr %i.ku, %i.jk
  br i1 %i.kz, label %.thread.i.i, label %bb.bh

bb.bk:                                            ; preds = %bb.bi
  %i.la = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.kx ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !104040
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.la, i32 noundef %i.lc, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc221.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc221.i.i:                                    ; preds = %bb.bk
  %i.ld = load i64, ptr %i.bm, align 8, !range !123, !noalias !104040, !noundef !67 ; 3 uses
  %cond.i.i218.i.i = icmp eq i64 %i.ld, 2
  br i1 %cond.i.i218.i.i, label %bb.bn, label %bb.bl, !prof !79

bb.bl:                                            ; preds = %.noexc221.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104041)
  %.not.i.i.i219.i.i = icmp eq i64 %i.ld, -1
  br i1 %.not.i.i.i219.i.i, label %bb.bo, label %bb.bm, !prof !77

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !104042
  %i.le = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !104041, !noalias !104043
  store i64 %i.ld, ptr %i.bj, align 8, !noalias !104042
  br label %.split695.us.invoke.i.i

bb.bn:                                            ; preds = %.noexc221.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !104040
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !104040, !noundef !67
  store i64 %i.lh, ptr %i.bl, align 8, !noalias !104040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !104040
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !104040
  br label %.split693.us.invoke.i.i

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !104040
  %i.li = add i64 %i.kw, %6                       ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.fg
  br i1 %i.lj, label %bb.bp, label %.split680.us.invoke.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.lk = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.li ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !104044
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lk, i32 noundef %i.lm, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc228.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc228.i.i:                                    ; preds = %bb.bp
  %i.ln = load i64, ptr %i.bi, align 8, !range !123, !noalias !104044, !noundef !67 ; 3 uses
  %cond.i.i225.i.i = icmp eq i64 %i.ln, 2
  br i1 %cond.i.i225.i.i, label %bb.bs, label %bb.bq, !prof !79

bb.bq:                                            ; preds = %.noexc228.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104045)
  %.not.i.i.i226.i.i = icmp eq i64 %i.ln, -1
  br i1 %.not.i.i.i226.i.i, label %bb.bt, label %bb.br, !prof !77

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !104046
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !104045, !noalias !104047
  store i64 %i.ln, ptr %i.bf, align 8, !noalias !104046
  br label %.split695.us.invoke.i.i

bb.bs:                                            ; preds = %.noexc228.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !104044
  %i.lr = load i64, ptr %i.lq, align 8, !noalias !104044, !noundef !67
  store i64 %i.lr, ptr %i.bh, align 8, !noalias !104044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !104044
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !104044
  br label %.split693.us.invoke.i.i

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !104044
  br i1 %i.el, label %bb.bu, label %bb.bj

bb.bu:                                            ; preds = %bb.bt
  %i.ls = load i32, ptr %i.lb, align 4, !noalias !103982, !noundef !67
  %i.lt = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !104048
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ls, i32 noundef %i.lt, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc235.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc235.i.i:                                    ; preds = %bb.bu
  %i.lu = load i64, ptr %i.be, align 8, !range !123, !noalias !104048, !noundef !67 ; 3 uses
  %cond.i.i232.i.i = icmp eq i64 %i.lu, 2
  br i1 %cond.i.i232.i.i, label %bb.bx, label %bb.bv, !prof !79

bb.bv:                                            ; preds = %.noexc235.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104049)
  %.not.i.i.i233.i.i = icmp eq i64 %i.lu, -1
  br i1 %.not.i.i.i233.i.i, label %bb.by, label %bb.bw, !prof !77

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !104050
  %i.lv = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !104049, !noalias !104051
  store i64 %i.lu, ptr %i.bb, align 8, !noalias !104050
  br label %.split695.us.invoke.i.i

bb.bx:                                            ; preds = %.noexc235.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !104048
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !104048, !noundef !67
  store i64 %i.ly, ptr %i.bd, align 8, !noalias !104048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !104048
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !104048
  br label %.split693.us.invoke.i.i

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !104048
  %i.lz = load i32, ptr %i.ll, align 4, !noalias !103982, !noundef !67
  %i.ma = load i32, ptr %.sroa.0417.0712.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !104052
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc242.i.i:                                    ; preds = %bb.by
  %i.mb = load i64, ptr %i.ba, align 8, !range !123, !noalias !104052, !noundef !67 ; 3 uses
  %cond.i.i239.i.i = icmp eq i64 %i.mb, 2
  br i1 %cond.i.i239.i.i, label %bb.cb, label %bb.bz, !prof !79

bb.bz:                                            ; preds = %.noexc242.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104053)
  %.not.i.i.i240.i.i = icmp eq i64 %i.mb, -1
  br i1 %.not.i.i.i240.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i, label %bb.ca, !prof !77

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !104054
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !104053, !noalias !104055
  store i64 %i.mb, ptr %i.ax, align 8, !noalias !104054
  br label %.split695.us.invoke.i.i

bb.cb:                                            ; preds = %.noexc242.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !104052
  %i.mf = load i64, ptr %i.me, align 8, !noalias !104052, !noundef !67
  store i64 %i.mf, ptr %i.az, align 8, !noalias !104052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !104052
  store ptr %i.az, ptr %i.ay, align 8, !noalias !104052
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit245.i.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !104052
  br label %bb.bj

bb.cc:                                            ; preds = %bb.au
  %i.mg = icmp ult i64 %i.jd, %i.fe
  br i1 %i.mg, label %bb.ce, label %.split680.us.invoke.i.i

bb.cd:                                            ; preds = %bb.au
  %i.mh = add i64 %i.jd, %i.ew                    ; 3 uses
  %i.mi = icmp ult i64 %i.mh, %i.fe
  br i1 %i.mi, label %bb.cx, label %.split680.us.invoke.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.jd
  %i.mk = load i32, ptr %i.mj, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.ml = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !104056
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mk, i32 noundef %i.ml, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc249.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc249.i.i:                                    ; preds = %bb.ce
  %i.mm = load i64, ptr %i.aw, align 8, !range !123, !noalias !104056, !noundef !67 ; 3 uses
  %cond.i.i246.i.i = icmp eq i64 %i.mm, 2
  br i1 %cond.i.i246.i.i, label %bb.ch, label %bb.cf, !prof !79

bb.cf:                                            ; preds = %.noexc249.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104057)
  %.not.i.i.i247.i.i = icmp eq i64 %i.mm, -1
  br i1 %.not.i.i.i247.i.i, label %bb.ci, label %bb.cg, !prof !77

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !104058
  %i.mn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !104057, !noalias !104059
  store i64 %i.mm, ptr %i.at, align 8, !noalias !104058
  br label %.split695.us.invoke.i.i

bb.ch:                                            ; preds = %.noexc249.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !104056
  %i.mq = load i64, ptr %i.mp, align 8, !noalias !104056, !noundef !67
  store i64 %i.mq, ptr %i.av, align 8, !noalias !104056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !104056
  store ptr %i.av, ptr %i.au, align 8, !noalias !104056
  br label %.split693.us.invoke.i.i

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !104056
  %7 = or disjoint i64 %.sroa.10403.0708.i.i, 1
  %i.mr = mul i64 %7, %i.dl                       ; 3 uses
  %i.ms = icmp ult i64 %i.mr, %i.fe
  br i1 %i.ms, label %bb.cj, label %.split680.us.invoke.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.mr
  %i.mu = load i32, ptr %i.mt, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.mv = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !104060
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.mu, i32 noundef %i.mv, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc256.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc256.i.i:                                    ; preds = %bb.cj
  %i.mw = load i64, ptr %i.as, align 8, !range !123, !noalias !104060, !noundef !67 ; 3 uses
  %cond.i.i253.i.i = icmp eq i64 %i.mw, 2
  br i1 %cond.i.i253.i.i, label %bb.cm, label %bb.ck, !prof !79

bb.ck:                                            ; preds = %.noexc256.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104061)
  %.not.i.i.i254.i.i = icmp eq i64 %i.mw, -1
  br i1 %.not.i.i.i254.i.i, label %bb.cn, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !104062
  %i.mx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !104061, !noalias !104063
  store i64 %i.mw, ptr %i.ap, align 8, !noalias !104062
  br label %.split695.us.invoke.i.i

bb.cm:                                            ; preds = %.noexc256.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !104060
  %i.na = load i64, ptr %i.mz, align 8, !noalias !104060, !noundef !67
  store i64 %i.na, ptr %i.ar, align 8, !noalias !104060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !104060
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !104060
  br label %.split693.us.invoke.i.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !104060
  br i1 %i.el, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit301.i.i, %bb.dg, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i, %bb.cn
  %i.nb = icmp eq i64 %i.iz, 0
  br i1 %i.nb, label %.lr.ph723.i.i, label %bb.au

bb.cp:                                            ; preds = %bb.cn
  %i.nc = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !104064
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.nc, i32 noundef %i.mk, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc263.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc263.i.i:                                    ; preds = %bb.cp
  %i.nd = load i64, ptr %i.ao, align 8, !range !123, !noalias !104064, !noundef !67 ; 3 uses
  %cond.i.i260.i.i = icmp eq i64 %i.nd, 2
  br i1 %cond.i.i260.i.i, label %bb.cs, label %bb.cq, !prof !79

bb.cq:                                            ; preds = %.noexc263.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104065)
  %.not.i.i.i261.i.i = icmp eq i64 %i.nd, -1
  br i1 %.not.i.i.i261.i.i, label %bb.ct, label %bb.cr, !prof !77

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !104066
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !104065, !noalias !104067
  store i64 %i.nd, ptr %i.al, align 8, !noalias !104066
  br label %.split695.us.invoke.i.i

bb.cs:                                            ; preds = %.noexc263.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !104064
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !104064, !noundef !67
  store i64 %i.nh, ptr %i.an, align 8, !noalias !104064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !104064
  store ptr %i.an, ptr %i.am, align 8, !noalias !104064
  br label %.split693.us.invoke.i.i

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !104064
  %i.ni = load i32, ptr %.sroa.0400.0710.i.i, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !104068
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ni, i32 noundef %i.mu, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc270.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc270.i.i:                                    ; preds = %bb.ct
  %i.nj = load i64, ptr %i.ak, align 8, !range !123, !noalias !104068, !noundef !67 ; 3 uses
  %cond.i.i267.i.i = icmp eq i64 %i.nj, 2
  br i1 %cond.i.i267.i.i, label %bb.cw, label %bb.cu, !prof !79

bb.cu:                                            ; preds = %.noexc270.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104069)
  %.not.i.i.i268.i.i = icmp eq i64 %i.nj, -1
  br i1 %.not.i.i.i268.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i, label %bb.cv, !prof !77

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !104070
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !104069, !noalias !104071
  store i64 %i.nj, ptr %i.ah, align 8, !noalias !104070
  br label %.split695.us.invoke.i.i

bb.cw:                                            ; preds = %.noexc270.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !104068
  %i.nn = load i64, ptr %i.nm, align 8, !noalias !104068, !noundef !67
  store i64 %i.nn, ptr %i.aj, align 8, !noalias !104068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !104068
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !104068
  br label %.split693.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit273.i.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !104068
  br label %bb.co

bb.cx:                                            ; preds = %bb.cd
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.mh
  %i.np = load i32, ptr %i.no, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.iy, i64 -4     ; 4 uses
  %i.nr = load i32, ptr %i.nq, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !104072
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.np, i32 noundef %i.nr, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc277.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc277.i.i:                                    ; preds = %bb.cx
  %i.ns = load i64, ptr %i.ag, align 8, !range !123, !noalias !104072, !noundef !67 ; 3 uses
  %cond.i.i274.i.i = icmp eq i64 %i.ns, 2
  br i1 %cond.i.i274.i.i, label %bb.da, label %bb.cy, !prof !79

bb.cy:                                            ; preds = %.noexc277.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104073)
  %.not.i.i.i275.i.i = icmp eq i64 %i.ns, -1
  br i1 %.not.i.i.i275.i.i, label %bb.db, label %bb.cz, !prof !77

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !104074
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !alias.scope !104073, !noalias !104075
  store i64 %i.ns, ptr %i.ad, align 8, !noalias !104074
  br label %.split695.us.invoke.i.i

bb.da:                                            ; preds = %.noexc277.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !104072
  %i.nw = load i64, ptr %i.nv, align 8, !noalias !104072, !noundef !67
  store i64 %i.nw, ptr %i.af, align 8, !noalias !104072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !104072
  store ptr %i.af, ptr %i.ae, align 8, !noalias !104072
  br label %.split693.us.invoke.i.i

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !104072
  %i.nx = add i64 %i.iq, %i.jd                    ; 3 uses
  %i.ny = icmp ult i64 %i.nx, %i.fe
  br i1 %i.ny, label %bb.dc, label %.split680.us.invoke.i.i

bb.dc:                                            ; preds = %bb.db
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.nx
  %i.oa = load i32, ptr %i.nz, align 4, !noalias !103982, !noundef !67 ; 2 uses
  %i.ob = load i32, ptr %i.nq, align 4, !noalias !103982, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !103982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !104076
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.oa, i32 noundef %i.ob, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc284.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !103982

.noexc284.i.i:                                    ; preds = %bb.dc
  %i.oc = load i64, ptr %i.ac, align 8, !range !123, !noalias !104076, !noundef !67 ; 3 uses
  %cond.i.i281.i.i = icmp eq i64 %i.oc, 2
  br i1 %cond.i.i281.i.i, label %bb.df, label %bb.dd, !prof !79

bb.dd:                                            ; preds = %.noexc284.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104077)
  %.not.i.i.i282.i.i = icmp eq i64 %i.oc, -1
  br i1 %.not.i.i.i282.i.i, label %bb.dg, label %bb.de, !prof !77

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !104078
  %i.od = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !alias.scope !104077, !noalias !104079
  store i64 %i.oc, ptr %i.z, align 8, !noalias !104078
  br label %.split695.us.invoke.i.i

bb.df:                                            ; preds = %.noexc284.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !104076
  %i.og = load i64, ptr %i.of, align 8, !noalias !104076, !noundef !67
  store i64 %i.og, ptr %i.ab, align 8, !noalias !104076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !104076
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !104076
  br label %.split693.us.invoke.i.i

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !104076
  br i1 %i.el, label %bb.dh, label %bb.co

bb.dh:                                            ; preds = %bb.dg
  %i.oh = load i32, ptr %i.nq, align 4, !noalias !103982, !noundef !67
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators40___pyfunction_directed_heavy_square_graph:bb.a
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [16 x i8], align 8               ; 4 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [72 x i8], align 8               ; 45 uses
  %i.cm = alloca [64 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 7 uses
  %i.co = alloca [64 x i8], align 8               ; 4 uses
  %i.cp = alloca [72 x i8], align 8               ; 7 uses
  %i.cq = alloca [64 x i8], align 8               ; 4 uses
  %i.cr = alloca [72 x i8], align 8               ; 6 uses
  %i.cs = alloca [136 x i8], align 8              ; 20 uses
  %i.ct = alloca [72 x i8], align 8               ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
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
  %i.fb = mul i64 %i.dl, %i.dl                    ; 19 uses
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
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fi, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Q_5types3any5PyAnyEB3L_EB3L_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B4V_B3L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B51_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
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
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators40___pyfunction_directed_heavy_square_graph:bb.a
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
  %i.hn = add nuw i64 %.sroa.7393.0672.us.us.i.i, %i.hk ; 4 uses
  %i.ho = icmp ult i64 %i.hn, %i.fb
  br i1 %i.ho, label %bb.ak, label %.split681.us.invoke.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !noalias !104578, !noundef !67 ; 2 uses
  %i.hr = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104612
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc302.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc302.us.us.i.i:                              ; preds = %bb.ak
  %i.hs = load i64, ptr %i.q, align 8, !range !123, !noalias !104612, !noundef !67 ; 3 uses
  %cond.i.i299.us.us.i.i = icmp eq i64 %i.hs, 2
  br i1 %cond.i.i299.us.us.i.i, label %.split676.us.i.i, label %bb.al, !prof !79

bb.al:                                            ; preds = %.noexc302.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104613)
  %.not.i.i.i300.us.us.i.i = icmp eq i64 %i.hs, -1
  br i1 %.not.i.i.i300.us.us.i.i, label %bb.am, label %.split678.us.i.i, !prof !77

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104612
  %i.ht = add nuw nsw i64 %i.hn, 1                ; 3 uses
  %i.hu = icmp ult i64 %i.ht, %i.fb
  br i1 %i.hu, label %bb.an, label %.split681.us.invoke.i.i

bb.an:                                            ; preds = %bb.am
  %i.hv = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ht
  %i.hx = load i32, ptr %i.hw, align 4, !noalias !104578, !noundef !67 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104614
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hv, i32 noundef %i.hx, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc309.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc309.us.us.i.i:                              ; preds = %bb.an
  %i.hy = load i64, ptr %i.m, align 8, !range !123, !noalias !104614, !noundef !67 ; 3 uses
  %cond.i.i306.us.us.i.i = icmp eq i64 %i.hy, 2
  br i1 %cond.i.i306.us.us.i.i, label %.split684.us.i.i, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc309.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104615)
  %.not.i.i.i307.us.us.i.i = icmp eq i64 %i.hy, -1
  br i1 %.not.i.i.i307.us.us.i.i, label %bb.ap, label %.split686.us.i.i, !prof !77

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104614
  %i.hz = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104616
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hz, i32 noundef %i.hq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc316.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc316.us.us.i.i:                              ; preds = %bb.ap
  %i.ia = load i64, ptr %i.i, align 8, !range !123, !noalias !104616, !noundef !67 ; 3 uses
  %cond.i.i313.us.us.i.i = icmp eq i64 %i.ia, 2
  br i1 %cond.i.i313.us.us.i.i, label %.split689.us.i.i, label %bb.aq, !prof !79

bb.aq:                                            ; preds = %.noexc316.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104617)
  %.not.i.i.i314.us.us.i.i = icmp eq i64 %i.ia, -1
  br i1 %.not.i.i.i314.us.us.i.i, label %bb.ar, label %.split691.us.i.i, !prof !77

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !104616
  %i.ib = load i32, ptr %.sroa.0391.0673.us.us.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104618
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.hx, i32 noundef %i.ib, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc323.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i, !noalias !104578

.noexc323.us.us.i.i:                              ; preds = %bb.ar
  %i.ic = load i64, ptr %i.e, align 8, !range !123, !noalias !104618, !noundef !67 ; 3 uses
  %cond.i.i320.us.us.i.i = icmp eq i64 %i.ic, 2
  br i1 %cond.i.i320.us.us.i.i, label %.split694.us.i.i, label %bb.as, !prof !79

bb.as:                                            ; preds = %.noexc323.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104619)
  %.not.i.i.i321.us.us.i.i = icmp eq i64 %i.ic, -1
  br i1 %.not.i.i.i321.us.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i, label %.split696.us.i.i, !prof !77

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104618
  %i.id = icmp eq ptr %i.hl, %i.hj
  br i1 %i.id, label %.thread454.loopexit.us.i.i, label %bb.aj

.thread454.loopexit.us.i.i:                       ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit326.us.us.i.i
  %i.ie = icmp eq i64 %i.hh, 0
  br i1 %i.ie, label %.preheader465.i.i, label %.lr.ph.us.i.i

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
  %i.if = phi ptr [ %i.gr, %.split694.us.invoke.i.i ], [ %i.gr, %.split696.us.invoke.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i ], [ %i.gr, %.split681.us.invoke.i.i ]
  %lpad.loopexit.split-lp469.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i
  %.sroa.410.0.i.i1444201089.i.i = phi i64 [ %.sroa.410.0.i.i144.i.i, %.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.410.0.i.i1444201090.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %.sroa.410.0.i.i144.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %i.ig = phi ptr [ %i.gr, %.loopexit.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.if, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %i.gr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit964.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit466.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp469.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit468.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i ], [ %lpad.loopexit468.us.us.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.i.i ] ; 2 uses
  %i.ih = icmp eq i64 %.sroa.410.0.i.i1444201089.i.i, 0
  br i1 %i.ih, label %.body166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i170.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.ii = shl nuw i64 %.sroa.410.0.i.i1444201089.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ig) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ig, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %.body166.i.i

bb.at:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.thread.i.i
  unreachable

.thread454.loopexit.i.i:                          ; preds = %bb.dv
  %i.ij = icmp eq i64 %i.im, 0
  br i1 %i.ij, label %.preheader465.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i, %.thread454.loopexit.i.i
  %.sroa.0385.0700.i.i = phi ptr [ %i.il, %.thread454.loopexit.i.i ], [ %i.gr, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 3 uses
  %.sroa.5386.0699.i.i = phi i64 [ %i.im, %.thread454.loopexit.i.i ], [ %i.fc, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %.sroa.10387.0698.i.i = phi i64 [ %i.in, %.thread454.loopexit.i.i ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5t_5types3any5PyAnyEB5o_EB5o_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B6y_B5o_Es0_0EE9from_iterB6E_.exit.i.i ] ; 2 uses
  %i.ik = call i64 @llvm.umin.i64(i64 %.sroa.5386.0699.i.i, i64 %i.eu) ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0385.0700.i.i, i64 %i.ik
  %i.im = sub nuw nsw i64 %.sroa.5386.0699.i.i, %i.ik ; 2 uses
  %i.in = add i64 %.sroa.10387.0698.i.i, 1
  %.idx.i.i = shl nuw nsw i64 %i.ik, 2
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0385.0700.i.i, i64 %.idx.i.i
  %i.ip = mul i64 %.sroa.10387.0698.i.i, %i.dl
  br label %bb.dp

.preheader465.i.i:                                ; preds = %.thread454.loopexit.i.i, %.thread454.loopexit.us.i.i
  %i.iq = add nsw i64 %i.er, -1
  br label %bb.au

bb.au:                                            ; preds = %bb.co, %.preheader465.i.i
  %.sroa.0394.0711.i.i = phi ptr [ %i.gc, %.preheader465.i.i ], [ %i.is, %bb.co ] ; 6 uses
  %.sroa.5395.0710.i.i = phi i64 [ %i.fc, %.preheader465.i.i ], [ %i.it, %bb.co ] ; 2 uses
  %.sroa.10397.0709.i.i = phi i64 [ 0, %.preheader465.i.i ], [ %i.iu, %bb.co ] ; 3 uses
  %i.ir = call i64 @llvm.umin.i64(i64 %.sroa.5395.0710.i.i, i64 %i.dl) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0394.0711.i.i) ]
  %i.is = getelementptr [4 x i8], ptr %.sroa.0394.0711.i.i, i64 %i.ir ; 2 uses
  %i.it = sub nuw nsw i64 %.sroa.5395.0710.i.i, %i.ir ; 2 uses
  %i.iu = add i64 %.sroa.10397.0709.i.i, 1        ; 2 uses
  %i.iv = and i64 %.sroa.10397.0709.i.i, 1
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = mul i64 %.sroa.10397.0709.i.i, %i.dl    ; 5 uses
  br i1 %i.iw, label %bb.cc, label %bb.cd

.lr.ph722.i.i:                                    ; preds = %bb.co, %.thread442.i.i
  %.sroa.0401.0721.i.i = phi ptr [ %i.iz, %.thread442.i.i ], [ %i.gc, %bb.co ] ; 5 uses
  %.sroa.5402.0720.i.i = phi i64 [ %i.ja, %.thread442.i.i ], [ %i.fc, %bb.co ] ; 3 uses
  %.sroa.10404.0719.i.i = phi i64 [ %i.jb, %.thread442.i.i ], [ 0, %bb.co ] ; 5 uses
  %i.iy = call i64 @llvm.umin.i64(i64 %.sroa.5402.0720.i.i, i64 %i.dl) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0401.0721.i.i) ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0721.i.i, i64 %i.iy
  %i.ja = sub nuw nsw i64 %.sroa.5402.0720.i.i, %i.iy ; 2 uses
  %i.jb = add i64 %.sroa.10404.0719.i.i, 1        ; 2 uses
  %i.jc = and i64 %.sroa.10404.0719.i.i, 1
  %i.jd = icmp eq i64 %i.jc, 0
  %.idx725.i.i = shl nuw nsw i64 %i.iy, 2
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0401.0721.i.i, i64 %.idx725.i.i ; 2 uses
  br i1 %i.jd, label %.lr.ph718.i.i, label %bb.av

._crit_edge.i.i:                                  ; preds = %.thread442.i.i
  %.sroa.034.0.copyload35.i = load i64, ptr %i.cl, align 8, !noalias !104593
  %.sroa.8.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx38.i, align 8, !noalias !104593
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.jf = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.jg = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %.sroa.8.i.sroa.10.0.copyload = load ptr, ptr %i.ex, align 8, !noalias !104593
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx38.i.sroa_idx, align 8, !noalias !104593
  %i.jh = load <2 x i32>, ptr %i.ey, align 8, !noalias !104593
  %i.ji = icmp eq i64 %.sroa.410.0.i.i144.i.i, 0
  br i1 %i.ji, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i: ; preds = %._crit_edge.i.i
  %i.jj = shl nuw i64 %.sroa.410.0.i.i144.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i178.i.i, %._crit_edge.i.i
  %i.jk = icmp eq i64 %.sroa.410.0.i.i113.i.i, 0
  br i1 %i.jk, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  %i.jl = shl nuw i64 %.sroa.410.0.i.i113.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i180.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit179.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !104578
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators18heavy_square_graph18heavy_square_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EB2x_NCNvNtCskcxRuJ53GpR_9rustworkx10generators27directed_heavy_square_graph0B3H_B2x_EB3N_.exit.i

.lr.ph718.i.i:                                    ; preds = %.lr.ph722.i.i
  %i.jm = add nsw i64 %i.iy, -1
  %i.jn = mul i64 %.sroa.10404.0719.i.i, %i.eu
  %5 = or disjoint i64 %.sroa.10404.0719.i.i, 1
  %6 = mul i64 %5, %i.eu
  br label %bb.aw

bb.av:                                            ; preds = %.lr.ph722.i.i
  %i.jo = mul i64 %.sroa.10404.0719.i.i, %i.eu
  %i.jp = add i64 %i.jo, -1
  %7 = mul i64 %i.jb, %i.eu
  %i.jq = add i64 %7, -1
  %i.jr = icmp eq i64 %.sroa.5402.0720.i.i, 1
  br i1 %i.jr, label %.thread442.i.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.av
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0401.0721.i.i, i64 4
  br label %.peel.next.i.i

bb.aw:                                            ; preds = %bb.ay, %.lr.ph718.i.i
  %.sroa.0408.0717.i.i = phi ptr [ %.sroa.0401.0721.i.i, %.lr.ph718.i.i ], [ %i.jt, %bb.ay ] ; 5 uses
  %.sroa.7410.0716.i.i = phi i64 [ 0, %.lr.ph718.i.i ], [ %i.ju, %bb.ay ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0408.0717.i.i, i64 4 ; 2 uses
  %i.ju = add nuw nsw i64 %.sroa.7410.0716.i.i, 1
  %.not85.i.i = icmp eq i64 %.sroa.7410.0716.i.i, %i.jm
  br i1 %.not85.i.i, label %bb.ay, label %bb.ax

.thread442.i.i:                                   ; preds = %bb.br, %bb.ay, %bb.av
  %i.jv = icmp eq i64 %i.ja, 0
  br i1 %i.jv, label %._crit_edge.i.i, label %.lr.ph722.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jw = add i64 %.sroa.7410.0716.i.i, %i.jn     ; 3 uses
  %i.jx = icmp ult i64 %i.jw, %i.fc
  br i1 %i.jx, label %bb.az, label %.split681.us.invoke.i.i

bb.ay:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i, %bb.bi, %bb.aw
  %i.jy = icmp eq ptr %i.jt, %i.je
  br i1 %i.jy, label %.thread442.i.i, label %bb.aw

bb.az:                                            ; preds = %bb.ax
  %i.jz = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.jw ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !104620
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.jz, i32 noundef %i.kb, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc185.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc185.i.i:                                    ; preds = %bb.az
  %i.kc = load i64, ptr %i.cc, align 8, !range !123, !noalias !104620, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.kc, 2
  br i1 %cond.i.i.i.i, label %bb.bc, label %bb.ba, !prof !79

bb.ba:                                            ; preds = %.noexc185.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104621)
  %.not.i.i.i184.i.i = icmp eq i64 %i.kc, -1
  br i1 %.not.i.i.i184.i.i, label %bb.bd, label %bb.bb, !prof !77

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !104622
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !104621, !noalias !104623
  store i64 %i.kc, ptr %i.bz, align 8, !noalias !104622
  br label %.split696.us.invoke.i.i

bb.bc:                                            ; preds = %.noexc185.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !104620
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !104620, !noundef !67
  store i64 %i.kg, ptr %i.cb, align 8, !noalias !104620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !104620
  store ptr %i.cb, ptr %i.ca, align 8, !noalias !104620
  br label %.split694.us.invoke.i.i

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !104620
  %i.kh = add i64 %.sroa.7410.0716.i.i, %6        ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %i.fc
  br i1 %i.ki, label %bb.be, label %.split681.us.invoke.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kj = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kh ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !104624
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kj, i32 noundef %i.kl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc191.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc191.i.i:                                    ; preds = %bb.be
  %i.km = load i64, ptr %i.by, align 8, !range !123, !noalias !104624, !noundef !67 ; 3 uses
  %cond.i.i188.i.i = icmp eq i64 %i.km, 2
  br i1 %cond.i.i188.i.i, label %bb.bh, label %bb.bf, !prof !79

bb.bf:                                            ; preds = %.noexc191.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104625)
  %.not.i.i.i189.i.i = icmp eq i64 %i.km, -1
  br i1 %.not.i.i.i189.i.i, label %bb.bi, label %bb.bg, !prof !77

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !104626
  %i.kn = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !104625, !noalias !104627
  store i64 %i.km, ptr %i.bv, align 8, !noalias !104626
  br label %.split696.us.invoke.i.i

bb.bh:                                            ; preds = %.noexc191.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !104624
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !104624, !noundef !67
  store i64 %i.kq, ptr %i.bx, align 8, !noalias !104624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !104624
  store ptr %i.bx, ptr %i.bw, align 8, !noalias !104624
  br label %.split694.us.invoke.i.i

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !104624
  br i1 %i.el, label %bb.bj, label %bb.ay

bb.bj:                                            ; preds = %bb.bi
  %i.kr = load i32, ptr %i.ka, align 4, !noalias !104578, !noundef !67
  %i.ks = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !104628
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.kr, i32 noundef %i.ks, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc198.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc198.i.i:                                    ; preds = %bb.bj
  %i.kt = load i64, ptr %i.bu, align 8, !range !123, !noalias !104628, !noundef !67 ; 3 uses
  %cond.i.i195.i.i = icmp eq i64 %i.kt, 2
  br i1 %cond.i.i195.i.i, label %bb.bm, label %bb.bk, !prof !79

bb.bk:                                            ; preds = %.noexc198.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104629)
  %.not.i.i.i196.i.i = icmp eq i64 %i.kt, -1
  br i1 %.not.i.i.i196.i.i, label %bb.bn, label %bb.bl, !prof !77

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !104630
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !104629, !noalias !104631
  store i64 %i.kt, ptr %i.br, align 8, !noalias !104630
  br label %.split696.us.invoke.i.i

bb.bm:                                            ; preds = %.noexc198.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !104628
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !104628, !noundef !67
  store i64 %i.kx, ptr %i.bt, align 8, !noalias !104628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !104628
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !104628
  br label %.split694.us.invoke.i.i

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !104628
  %i.ky = load i32, ptr %i.kk, align 4, !noalias !104578, !noundef !67
  %i.kz = load i32, ptr %.sroa.0408.0717.i.i, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !104632
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.ky, i32 noundef %i.kz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc205.i.i unwind label %.loopexit.i.i, !noalias !104578

.noexc205.i.i:                                    ; preds = %bb.bn
  %i.la = load i64, ptr %i.bq, align 8, !range !123, !noalias !104632, !noundef !67 ; 3 uses
  %cond.i.i202.i.i = icmp eq i64 %i.la, 2
  br i1 %cond.i.i202.i.i, label %bb.bq, label %bb.bo, !prof !79

bb.bo:                                            ; preds = %.noexc205.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104633)
  %.not.i.i.i203.i.i = icmp eq i64 %i.la, -1
  br i1 %.not.i.i.i203.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !104634
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !104633, !noalias !104635
  store i64 %i.la, ptr %i.bn, align 8, !noalias !104634
  br label %.split696.us.invoke.i.i

bb.bq:                                            ; preds = %.noexc205.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !104632
  %i.le = load i64, ptr %i.ld, align 8, !noalias !104632, !noundef !67
  store i64 %i.le, ptr %i.bp, align 8, !noalias !104632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !104632
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !104632
  br label %.split694.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit208.i.i: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !104632
  br label %bb.ay

bb.br:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit239.i.i, %bb.bx
  %i.lf = icmp eq ptr %i.lg, %i.je
  br i1 %i.lf, label %.thread442.i.i, label %.peel.next.i.i, !llvm.loop !104455

.peel.next.i.i:                                   ; preds = %bb.br, %.peel.next.i.preheader.i
  %.sroa.7413.0714.i.i = phi i64 [ %i.lh, %bb.br ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.sroa.0411.0713.i.i = phi ptr [ %i.lg, %bb.br ], [ %i.js, %.peel.next.i.preheader.i ] ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0411.0713.i.i, i64 4 ; 2 uses
  %i.lh = add nuw nsw i64 %.sroa.7413.0714.i.i, 1
  %i.li = add i64 %i.jp, %.sroa.7413.0714.i.i     ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.fc
  br i1 %i.lj, label %bb.bs, label %.split681.us.invoke.i.i

bb.bs:                                            ; preds = %.peel.next.i.i
  %i.lk = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.li ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !104636
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lk, i32 noundef %i.lm, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc215.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc215.i.i:                                    ; preds = %bb.bs
  %i.ln = load i64, ptr %i.bm, align 8, !range !123, !noalias !104636, !noundef !67 ; 3 uses
  %cond.i.i212.i.i = icmp eq i64 %i.ln, 2
  br i1 %cond.i.i212.i.i, label %.loopexit966.i.i, label %bb.bt, !prof !79

bb.bt:                                            ; preds = %.noexc215.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104637)
  %.not.i.i.i213.i.i = icmp eq i64 %i.ln, -1
  br i1 %.not.i.i.i213.i.i, label %bb.bu, label %.loopexit967.i.i, !prof !77

.loopexit967.i.i:                                 ; preds = %bb.bt
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !104637, !noalias !104638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !104639
  store i64 %i.ln, ptr %i.bj, align 8, !noalias !104639
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
  %i.lo = add i64 %i.jq, %.sroa.7413.0714.i.i     ; 3 uses
  %i.lp = icmp ult i64 %i.lo, %i.fc
  br i1 %i.lp, label %bb.bv, label %.split681.us.invoke.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load i32, ptr %.sroa.0411.0713.i.i, align 4, !noalias !104578, !noundef !67
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.lo ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !noalias !104578, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !104640
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.lq, i32 noundef %i.ls, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc222.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !104578

.noexc222.i.i:                                    ; preds = %bb.bv
  %i.lt = load i64, ptr %i.bi, align 8, !range !123, !noalias !104640, !noundef !67 ; 3 uses
  %cond.i.i219.i.i = icmp eq i64 %i.lt, 2
  br i1 %cond.i.i219.i.i, label %.loopexit969.i.i, label %bb.bw, !prof !79

bb.bw:                                            ; preds = %.noexc222.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104641)
  %.not.i.i.i220.i.i = icmp eq i64 %i.lt, -1
  br i1 %.not.i.i.i220.i.i, label %bb.bx, label %.loopexit970.i.i, !prof !77

.loopexit970.i.i:                                 ; preds = %bb.bw
  %.phi.trans.insert993.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre994.i.i = load i64, ptr %.phi.trans.insert993.i.i, align 8, !alias.scope !104641, !noalias !104642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !104643
  store i64 %i.lt, ptr %i.bf, align 8, !noalias !104643
  br label %.split696.us.invoke.i.i

.loopexit969.i.i:                                 ; preds = %.noexc222.i.i
  %.phi.trans.insert1003.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre1004.i.i = load i64, ptr %.phi.trans.insert1003.i.i, align 8, !noalias !104640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !104640
  store i64 %.pre1004.i.i, ptr %i.bh, align 8, !noalias !104640
end_hunk_7
