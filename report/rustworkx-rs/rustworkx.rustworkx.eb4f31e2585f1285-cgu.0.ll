Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators27___pyfunction_lollipop_graph:bb.a
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit83: ; preds = %bb.ai, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ah

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit87: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.ph

bb.am:                                            ; preds = %bb.u, %bb.ak, %bb.aj
  %.pn.ph = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %lpad.thr_comm, %bb.ak ], [ %lpad.thr_comm, %bb.aj ]
  %i.df = load i64, ptr %i.u, align 8, !range !55, !alias.scope !97608, !noundef !56
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
  %i.ap = alloca [16 x i8], align 16              ; 3 uses
  %i.aq = alloca [16 x i8], align 16              ; 6 uses
  %i.ar = alloca [16 x i8], align 16              ; 3 uses
  %i.as = alloca [16 x i8], align 16              ; 6 uses
  %i.at = alloca [16 x i8], align 16              ; 3 uses
  %i.au = alloca [16 x i8], align 16              ; 5 uses
  %i.av = alloca [16 x i8], align 16              ; 3 uses
  %i.aw = alloca [16 x i8], align 16              ; 6 uses
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
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2489, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef 2)
  %i.bj = load i64, ptr %i.bh, align 8, !range !57, !noundef !56
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
  %i.bn = load ptr, ptr %i.bi, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !97828
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noundef nonnull %i.bn), !noalias !97828
  %i.bo = load i64, ptr %i.bb, align 8, !range !57, !noalias !97828, !noundef !56
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !97828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !97828
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2487, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !97828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !97828
  %.sroa.013.0.copyload = load i64, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload, ptr %i.bs, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false)
  br label %bb.co

bb.e:                                             ; preds = %bb.c
  %i.bt = load i64, ptr %i.bq, align 8, !noalias !97828, !noundef !56 ; 15 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  store i64 0, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !97828
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !56 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !97829
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.az, ptr noundef nonnull %i.bw), !noalias !97829
  %i.bx = load i8, ptr %i.az, align 8, !range !58, !noalias !97829, !noundef !56
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !60

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 1, ptr %i.bz, align 1
  store i8 0, ptr %i.bd, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !58, !noalias !97829, !noundef !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !97829
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !97829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false), !noalias !97829
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1116, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !97829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !97829
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false)
  br label %bb.co

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !58, !noundef !56
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
  %.sink792.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink792.i.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink792.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink792.i.sroa.gep49.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink792.i.sroa.gep50.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink792.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink792.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink792.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink792.i.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink792.i.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.cj, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = mul i64 %i.bt, 5
  %i.cl = shl i64 %i.bt, 1                        ; 2 uses
  %i.cm = add i64 %i.ck, -2
  %i.cn = mul i64 %i.cm, %i.bt
  %i.co = lshr i64 %i.cn, 1
  %i.cp = add nsw i64 %i.bt, -1                   ; 10 uses
  %i.cq = add i64 %i.bt, 1
  %i.cr = add i64 %i.cq, %i.cl
  %i.cs = mul i64 %i.cr, %i.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !97830
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.ax, i64 noundef %i.co, i64 noundef %i.cs), !noalias !97830
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !97831, !noalias !97830
  store i32 -1, ptr %i.cu, align 8, !alias.scope !97831, !noalias !97830
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  store i32 -1, ptr %i.cv, align 4, !alias.scope !97831, !noalias !97830
  %i.cw = icmp eq i64 %i.bt, 1
  br i1 %i.cw, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = mul i64 %i.bt, %i.bt                    ; 15 uses
  %i.cy = lshr i64 %i.bt, 1
  %i.cz = mul i64 %i.cp, %i.bt                    ; 14 uses
  %i.da = shl i64 %i.cx, 2                        ; 6 uses
  %i.db = icmp ugt i64 %i.cx, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.da, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.db, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.k, !prof !62

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !97832
  %i.dc = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97832 ; 11 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.l, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.da) #61
          to label %.noexc.i.i unwind label %bb.o, !noalias !97830

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.df, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = add nuw i64 %.val4.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !97833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !97834
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !97835

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !97836)
  %i.dg = load i64, ptr %i.aw, align 16, !range !107, !alias.scope !97836, !noalias !97834, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !66

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !97837
  %i.dh = load <2 x i64>, ptr %i.aw, align 16, !alias.scope !97836, !noalias !97834
  store <2 x i64> %i.dh, ptr %i.av, align 16, !noalias !97837
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !97835

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.n
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.di = load i32, ptr %i.de, align 8, !alias.scope !97836, !noalias !97834, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !97834
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.di, ptr %i.dj, align 4, !noalias !97838
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, %i.cx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i, label %bb.m

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.n
  %lpad.loopexit.split-lp452 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97839
  br label %.body.i.i

bb.o:                                             ; preds = %bb.q, %bb.p, %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !97830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !97840
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc110.i.i unwind label %bb.o, !noalias !97830

.noexc110.i.i:                                    ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !97841)
  %i.dl = load i64, ptr %i.au, align 16, !range !107, !alias.scope !97841, !noalias !97840, !noundef !56
  %.not.i.i.i.i = icmp eq i64 %i.dl, -1
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q, !prof !66

bb.q:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !97842
  %i.dm = load <2 x i64>, ptr %i.au, align 16, !alias.scope !97841, !noalias !97840
  store <2 x i64> %i.dm, ptr %i.at, align 16, !noalias !97842
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc111.i.i unwind label %bb.o, !noalias !97830

.noexc111.i.i:                                    ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !97840
  %.sroa.032.0.copyload34.i = load i64, ptr %i.ax, align 8, !noalias !97843
  %.sroa.8.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.8.i.sroa.0.0.copyload61 = load ptr, ptr %.sroa.8.0..sroa_idx36.i, align 8, !noalias !97843
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dn = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !97843
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.do = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !97843
  %.sroa.8.i.sroa.10.0.copyload66 = load ptr, ptr %i.ct, align 8, !noalias !97843
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.8.i.sroa.11.0.copyload67 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx36.i.sroa_idx, align 8, !noalias !97843
  %i.dp = load <2 x i32>, ptr %i.cu, align 8, !noalias !97843
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_NtB1r_10UndirectedEB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B3T_B2r_EB3Z_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i
  %i.dq = add nuw i64 %i.cy, 1                    ; 3 uses
  %i.dr = mul i64 %i.dq, %i.cp                    ; 8 uses
  %i.ds = shl i64 %i.dr, 2                        ; 4 uses
  %i.dt = icmp ugt i64 %i.dr, 4611686018427387903
  %.not.i.i.i115.i.i = icmp ugt i64 %i.ds, 9223372036854775804
  %or.cond.i.i.i116.i.i = or i1 %i.dt, %.not.i.i.i115.i.i
  br i1 %or.cond.i.i.i116.i.i, label %bb.v, label %bb.s, !prof !62

bb.s:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i
  %i.du = icmp eq i64 %i.ds, 0
  br i1 %i.du, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !97844
  %i.dv = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97844 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = ptrtoint ptr %i.dv to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i

bb.v:                                             ; preds = %bb.t, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i
  %.sroa.410.0.ph.i.i135.i.i = phi i64 [ 4, %bb.t ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_E0EE9from_iterB6P_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i135.i.i, i64 %i.ds) #61
          to label %.noexc136.i.i unwind label %bb.y, !noalias !97830

.noexc136.i.i:                                    ; preds = %bb.v
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i118.i.i = phi i64 [ %i.dx, %bb.u ], [ 4, %bb.s ]
  %.sroa.410.0.i.i119.i.i = phi i64 [ %i.dr, %bb.u ], [ 0, %bb.s ] ; 6 uses
  %i.dy = inttoptr i64 %.sroa.10.0.i.i118.i.i to ptr ; 8 uses
  %i.dz = icmp samesign ule i64 %i.dr, %.sroa.410.0.i.i119.i.i
  call void @llvm.assume(i1 %i.dz)
  %.not360.i.i = icmp eq i64 %i.dr, 0             ; 2 uses
  br i1 %.not360.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

.lr.ph.i.i.i.i.i.i.i124.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i124.i.i
  %.val4.i.i.i.i.i.i.i125.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i124.i.i ], [ %i.eb, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eb = add nuw nsw i64 %.val4.i.i.i.i.i.i.i125.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !97845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !97846
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i131.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !97847

.noexc.i.i.i.i.i.i.i131.i.i:                      ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !97848)
  %i.ec = load i64, ptr %i.as, align 16, !range !107, !alias.scope !97848, !noalias !97846, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.i132.i.i = icmp eq i64 %i.ec, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i132.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i, label %bb.x, !prof !66

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i131.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !97849
  %i.ed = load <2 x i64>, ptr %i.as, align 16, !alias.scope !97848, !noalias !97846
  store <2 x i64> %i.ed, ptr %i.ar, align 16, !noalias !97849
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc7.i.i.i.i.i.i.i133.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !97847

.noexc7.i.i.i.i.i.i.i133.i.i:                     ; preds = %bb.x
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_NtBZ_10UndirectedEB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B56_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i131.i.i
  %i.ee = load i32, ptr %i.ea, align 8, !alias.scope !97848, !noalias !97846, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !97846
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.val4.i.i.i.i.i.i.i125.i.i
  store i32 %i.ee, ptr %i.ef, align 4, !noalias !97850
  %exitcond.not.i.i.i.i.i.i.i134.i.i = icmp eq i64 %i.eb, %i.dr
  br i1 %exitcond.not.i.i.i.i.i.i.i134.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_NtBY_10UndirectedEB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators15heavy_hex_graph0B6J_B5i_Es_0EE9from_iterB6P_.exit.i.i, label %bb.w

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.x
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators37___pyfunction_directed_heavy_hex_graph:bb.a
  %i.cg = alloca [16 x i8], align 16              ; 6 uses
  %i.ch = alloca [16 x i8], align 16              ; 3 uses
  %i.ci = alloca [16 x i8], align 16              ; 5 uses
  %i.cj = alloca [16 x i8], align 16              ; 3 uses
  %i.ck = alloca [16 x i8], align 16              ; 6 uses
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
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2527, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.da, i64 noundef 3)
  %i.db = load i64, ptr %i.cz, align 8, !range !57, !noundef !56
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
  %i.df = load ptr, ptr %i.da, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !99538
  call void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cr, ptr noundef nonnull %i.df), !noalias !99538
  %i.dg = load i64, ptr %i.cr, align 8, !range !57, !noalias !99538, !noundef !56
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !99538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i64 64, i1 false), !noalias !99538
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2487, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !99538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !99538
  %.sroa.017.0.copyload = load i64, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload, ptr %i.dk, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i64 56, i1 false)
  br label %bb.ee

bb.e:                                             ; preds = %bb.c
  %i.dl = load i64, ptr %i.di, align 8, !noalias !99538, !noundef !56 ; 16 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dl, ptr %i.dm, align 8
  store i64 0, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !99538
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noundef !56 ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !99539
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cp, ptr noundef nonnull %i.do), !noalias !99539
  %i.dp = load i8, ptr %i.cp, align 8, !range !58, !noalias !99539, !noundef !56
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !60

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.dr, align 1
  store i8 0, ptr %i.cv, align 8
  br label %bb.h

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !58, !noalias !99539, !noundef !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.dt, ptr %i.du, align 1
  store i8 0, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !99539
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !99539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false), !noalias !99539
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2501, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !99539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !99539
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  br label %bb.ee

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !range !58, !noundef !56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !56 ; 2 uses
  %.not.i21 = icmp eq ptr %i.eb, null
  br i1 %.not.i21, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !99540
  call void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cn, ptr noundef nonnull %i.eb), !noalias !99540
  %i.ec = load i8, ptr %i.cn, align 8, !range !58, !noalias !99540, !noundef !56
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.j, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, !prof !60

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread: ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 1, ptr %i.ee, align 1
  store i8 0, ptr %i.ct, align 8
  br label %bb.k

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24: ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !range !58, !noalias !99540, !noundef !56
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 %i.eg, ptr %i.eh, align 1
  store i8 0, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !99540
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !99540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i64 64, i1 false), !noalias !99540
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1116, i64 noundef range(i64 5, 17) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !99540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !99540
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  br label %bb.ee

bb.k:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit24.thread
  %i.el = trunc nuw i8 %i.dz to i1                ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !58, !noundef !56
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
  %.sink1342.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sink1342.i.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sink1342.i.sroa.gep62.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sink1342.i.sroa.gep63.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sink1342.i.sroa.gep64.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sink1342.i.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sink1342.i.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sink1342.i.sroa.gep67.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sink1342.i.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sink1342.i.sroa.gep69.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sink1342.i.sroa.gep70.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sink1342.i.sroa.gep71.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink1342.i.sroa.gep72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink1342.i.sroa.gep73.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sink1342.i.sroa.gep74.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink1342.i.sroa.gep75.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink1342.i.sroa.gep76.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1342.i.sroa.gep77.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink1342.i.sroa.gep78.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink1342.i.sroa.gep79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.ep, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = mul i64 %i.dl, 5
  %i.er = shl i64 %i.dl, 1                        ; 2 uses
  %i.es = add i64 %i.eq, -2
  %i.et = mul i64 %i.es, %i.dl
  %i.eu = lshr i64 %i.et, 1
  %i.ev = add nsw i64 %i.dl, -1                   ; 11 uses
  %i.ew = add i64 %i.dl, 1
  %i.ex = add i64 %i.ew, %i.er
  %i.ey = mul i64 %i.ex, %i.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !99541
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.cl, i64 noundef %i.eu, i64 noundef %i.ey), !noalias !99541
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false), !alias.scope !99542, !noalias !99541
  store i32 -1, ptr %i.fa, align 8, !alias.scope !99542, !noalias !99541
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  store i32 -1, ptr %i.fb, align 4, !alias.scope !99542, !noalias !99541
  %i.fc = icmp eq i64 %i.dl, 1
  br i1 %i.fc, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fd = mul i64 %i.dl, %i.dl                    ; 19 uses
  %i.fe = lshr i64 %i.dl, 1
  %i.ff = mul i64 %i.ev, %i.dl                    ; 15 uses
  %i.fg = shl i64 %i.fd, 2                        ; 6 uses
  %i.fh = icmp ugt i64 %i.fd, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.fg, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.fh, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.o, label %bb.n, !prof !62

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !99543
  %i.fi = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !99543 ; 13 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.o, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.410.0.ph.i.i.i.i = phi i64 [ 4, %bb.n ], [ 0, %bb.m ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i.i.i, i64 %i.fg) #61
          to label %.noexc.i.i unwind label %bb.r, !noalias !99541

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fl, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fl = add nuw i64 %.val4.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !99544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !99545
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !99546

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !99547)
  %i.fm = load i64, ptr %i.ck, align 16, !range !107, !alias.scope !99547, !noalias !99545, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fm, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !66

bb.q:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !99548
  %i.fn = load <2 x i64>, ptr %i.ck, align 16, !alias.scope !99547, !noalias !99545
  store <2 x i64> %i.fn, ptr %i.cj, align 16, !noalias !99548
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !99546

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.q
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.fo = load i32, ptr %i.fk, align 8, !alias.scope !99547, !noalias !99545, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !99545
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.val4.i.i.i.i.i.i.i.i.i
  store i32 %i.fo, ptr %i.fp, align 4, !noalias !99549
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fl, %i.fd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i, label %bb.p

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fi, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !99550
  br label %.body.i.i

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.o
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.l
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !99541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !99551
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc110.i.i unwind label %bb.r, !noalias !99541

.noexc110.i.i:                                    ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !99552)
  %i.fr = load i64, ptr %i.ci, align 16, !range !107, !alias.scope !99552, !noalias !99551, !noundef !56
  %.not.i.i.i.i = icmp eq i64 %i.fr, -1
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t, !prof !66

bb.t:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !99553
  %i.fs = load <2 x i64>, ptr %i.ci, align 16, !alias.scope !99552, !noalias !99551
  store <2 x i64> %i.fs, ptr %i.ch, align 16, !noalias !99553
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc111.i.i unwind label %bb.r, !noalias !99541

.noexc111.i.i:                                    ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.noexc110.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !99551
  %.sroa.034.0.copyload36.i = load i64, ptr %i.cl, align 8, !noalias !99554
  %.sroa.8.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.i.sroa.0.0.copyload69 = load ptr, ptr %.sroa.8.0..sroa_idx39.i, align 8, !noalias !99554
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ft = load <2 x i64>, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !99554
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.fu = load <2 x ptr>, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !99554
  %.sroa.8.i.sroa.10.0.copyload74 = load ptr, ptr %i.ez, align 8, !noalias !99554
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.8.i.sroa.11.0.copyload75 = load i64, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx39.i.sroa_idx, align 8, !noalias !99554
  %i.fv = load <2 x i32>, ptr %i.fa, align 8, !noalias !99554
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2w_5types3any5PyAnyEB2r_EB2r_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B3B_B2r_EB3H_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7b_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i
  %i.fw = add nuw i64 %i.fe, 1                    ; 3 uses
  %i.fx = mul i64 %i.fw, %i.ev                    ; 8 uses
  %i.fy = shl i64 %i.fx, 2                        ; 4 uses
  %i.fz = icmp ugt i64 %i.fx, 4611686018427387903
  %.not.i.i.i115.i.i = icmp ugt i64 %i.fy, 9223372036854775804
  %or.cond.i.i.i116.i.i = or i1 %i.fz, %.not.i.i.i115.i.i
  br i1 %or.cond.i.i.i116.i.i, label %bb.y, label %bb.v, !prof !62

bb.v:                                             ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !99555
  %i.gb = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !99555 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gd = ptrtoint ptr %i.gb to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i

bb.y:                                             ; preds = %bb.w, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i
  %.sroa.410.0.ph.i.i135.i.i = phi i64 [ 4, %bb.w ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_E0EE9from_iterB6y_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph.i.i135.i.i, i64 %i.fy) #61
          to label %.noexc136.i.i unwind label %bb.ab, !noalias !99541

.noexc136.i.i:                                    ; preds = %bb.y
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i: ; preds = %bb.x, %bb.v
  %.sroa.10.0.i.i118.i.i = phi i64 [ %i.gd, %bb.x ], [ 4, %bb.v ]
  %.sroa.410.0.i.i119.i.i = phi i64 [ %i.fx, %bb.x ], [ 0, %bb.v ] ; 6 uses
  %i.ge = inttoptr i64 %.sroa.10.0.i.i118.i.i to ptr ; 8 uses
  %i.gf = icmp samesign ule i64 %i.fx, %.sroa.410.0.i.i119.i.i
  call void @llvm.assume(i1 %i.gf)
  %.not450.i.i = icmp eq i64 %i.fx, 0             ; 2 uses
  br i1 %.not450.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i124.i.i

.lr.ph.i.i.i.i.i.i.i124.i.i:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i117.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i124.i.i
  %.val4.i.i.i.i.i.i.i125.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i124.i.i ], [ %i.gh, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gh = add nuw nsw i64 %.val4.i.i.i.i.i.i.i125.i.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !99556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !99557
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i131.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !99558

.noexc.i.i.i.i.i.i.i131.i.i:                      ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !99559)
  %i.gi = load i64, ptr %i.cg, align 16, !range !107, !alias.scope !99559, !noalias !99557, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.i132.i.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i132.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !66

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i131.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !99560
  %i.gj = load <2 x i64>, ptr %i.cg, align 16, !alias.scope !99559, !noalias !99557
  store <2 x i64> %i.gj, ptr %i.cf, align 16, !noalias !99560
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc7.i.i.i.i.i.i.i133.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !99558

.noexc7.i.i.i.i.i.i.i133.i.i:                     ; preds = %bb.aa
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEB3F_EB3F_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B4P_B3F_Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7d_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B4V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i131.i.i
  %i.gk = load i32, ptr %i.gg, align 8, !alias.scope !99559, !noalias !99557, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !99557
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.val4.i.i.i.i.i.i.i125.i.i
  store i32 %i.gk, ptr %i.gl, align 4, !noalias !99561
  %exitcond.not.i.i.i.i.i.i.i134.i.i = icmp eq i64 %i.gh, %i.fx
  br i1 %exitcond.not.i.i.i.i.i.i.i134.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators15heavy_hex_graph15heavy_hex_graphINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5n_5types3any5PyAnyEB5i_EB5i_NCNvNtCskcxRuJ53GpR_9rustworkx10generators24directed_heavy_hex_graph0B6s_B5i_Es_0EE9from_iterB6y_.exit.i.i, label %bb.z

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.aa
end_hunk_1
