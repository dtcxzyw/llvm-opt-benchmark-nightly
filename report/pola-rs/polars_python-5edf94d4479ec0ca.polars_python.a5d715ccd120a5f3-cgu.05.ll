Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.05?download=true
inline.NumInlined: 16017
inline.NumDeleted: 6824
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs0_NtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6streamINtB5_12StreamReaderQINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB2U_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.38.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.7.i, i64 32, i1 false), !dbg !276281, !noalias !276274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i), !dbg !276292
  %.not23.i = icmp eq i64 %.sroa.011.0.copyload.i, -9223372036854775807, !dbg !276293
  br i1 %.not23.i, label %.thread16, label %bb.e, !dbg !276294

.thread16:                                        ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !dbg !276295, !alias.scope !276273
  br label %.thread, !dbg !276296

bb.d:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !276297
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !276298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i64 24, i1 false), !dbg !276297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !276291, !noalias !276274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.7.i, i64 32, i1 false), !dbg !276291, !noalias !276273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i), !dbg !276292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i), !dbg !276299
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !276298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, i64 32, i1 false), !dbg !276300
  store i64 %i.m, ptr %0, align 8, !dbg !276298
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !276298
  store i64 %.sroa.011.0.copyload.i, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !276298
  br label %bb.f, !dbg !276301

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.38.i, i64 32, i1 false), !dbg !276302, !noalias !276273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i), !dbg !276299
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !276303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, i64 32, i1 false), !dbg !276304
  store i64 18, ptr %0, align 8, !dbg !276303
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !276303
  store i64 %.sroa.011.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !276303
  br label %bb.f, !dbg !276305

.thread:                                          ; preds = %bb.a, %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i), !dbg !276299
  store i64 19, ptr %0, align 8, !dbg !276306
  br label %bb.f, !dbg !276306

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !276307
  ret void, !dbg !276308
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1_NtCslpwjCj2YNBy_9polars_io4mmapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtB5_15MmapBytesReader8to_bytesCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 !dbg !276309 !guid !276315 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !276317
  %i.b = load ptr, ptr %i.a, align 8, !dbg !276317, !alias.scope !276316, !nonnull !3778, !noundef !3778
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !276318
  %i.d = load i64, ptr %i.c, align 8, !dbg !276318, !alias.scope !276316, !noundef !3778
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !276319
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1, !dbg !276319
  ret { ptr, i64 } %i.f, !dbg !276320
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_4mmap15MmapBytesReaderEL_EEINtNtB9_6shared9SerReaderB10_E6finishCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(328) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !276321 !guid !277776 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 18 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 16 uses
  %i.r = alloca [16 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [72 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 11 uses
  %i.ae = alloca [48 x i8], align 8               ; 17 uses
  %i.af = alloca [48 x i8], align 8               ; 5 uses
  %i.ag = alloca [48 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [72 x i8], align 8               ; 10 uses
  %i.ak = alloca [72 x i8], align 8               ; 6 uses
  %i.al = alloca [72 x i8], align 8               ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 12 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 21 uses
  %i.ap = alloca [40 x i8], align 8               ; 7 uses
  %i.aq = alloca [72 x i8], align 8               ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 18 uses
  %i.as = alloca [16 x i8], align 8               ; 10 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [48 x i8], align 8               ; 6 uses
  %i.av = alloca [104 x i8], align 8              ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 13 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [184 x i8], align 8              ; 16 uses
  %i.az = alloca [112 x i8], align 8              ; 4 uses
  %i.ba = alloca [184 x i8], align 8              ; 14 uses
  %.sroa.625.i.i.sroa.10.sroa.7 = alloca [16 x i8], align 8 ; 6 uses
  %i.bb = alloca [88 x i8], align 8               ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 12 uses
  %i.bd = alloca [72 x i8], align 8               ; 12 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [112 x i8], align 8              ; 14 uses
  %.sroa.69.i.i.sroa.10.sroa.7 = alloca [16 x i8], align 8 ; 6 uses
  %i.bg = alloca [112 x i8], align 8              ; 17 uses
  %i.bh = alloca [72 x i8], align 8               ; 12 uses
  %i.bi = alloca [32 x i8], align 8               ; 10 uses
  %i.bj = alloca [16 x i8], align 8               ; 9 uses
  %i.bk = alloca [104 x i8], align 8              ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 11 uses
  %.sroa.16.i.sroa.9.sroa.9.sroa.12 = alloca [16 x i8], align 8 ; 7 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [376 x i8], align 8              ; 7 uses
  %i.bp = alloca [72 x i8], align 8               ; 12 uses
  %i.bq = alloca [112 x i8], align 8              ; 12 uses
  %i.br = alloca [88 x i8], align 8               ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 12 uses
  %i.bt = alloca [72 x i8], align 8               ; 12 uses
  %i.bu = alloca [72 x i8], align 8               ; 12 uses
  %i.bv = alloca [8 x i8], align 8                ; 16 uses
  %i.bw = alloca [72 x i8], align 8               ; 12 uses
  %i.bx = alloca [72 x i8], align 8               ; 12 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [48 x i8], align 8               ; 11 uses
  %i.ca = alloca [72 x i8], align 8               ; 12 uses
  %i.cb = alloca [48 x i8], align 16              ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [160 x i8], align 16             ; 11 uses
  %i.ce = alloca [16 x i8], align 8               ; 8 uses
  %i.cf = alloca [24 x i8], align 8               ; 9 uses
  %i.cg = alloca [328 x i8], align 8              ; 89 uses
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24 = alloca [16 x i8], align 8 ; 19 uses
  %i.ch = alloca [48 x i8], align 8               ; 13 uses
  %i.ci = alloca [40 x i8], align 8               ; 15 uses
  %i.cj = alloca [24 x i8], align 8               ; 12 uses
  %i.ck = alloca [72 x i8], align 8               ; 7 uses
  %i.cl = alloca [8 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !278137
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !278138
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !278138, !noundef !3778 ; 3 uses
  %.not = icmp eq ptr %i.cn, null, !dbg !278138
  br i1 %.not, label %bb.c, label %bb.b, !dbg !278139

bb.b:                                             ; preds = %bb.a
  %i.co = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8, !dbg !278140
  %i.cp = icmp slt i64 %i.co, 0, !dbg !278141
  br i1 %i.cp, label %bb.d, label %bb.e, !dbg !278141

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !278052
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_4mmap15MmapBytesReaderEL_EE12get_metadataCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ck, ptr noalias noundef align 8 dereferenceable(328) %1)
          to label %bb.oc unwind label %bb.qa, !dbg !278142

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !278143
  unreachable, !dbg !278143

bb.e:                                             ; preds = %bb.oe, %bb.b
  %storemerge = phi ptr [ %i.cn, %bb.b ], [ %i.acs, %bb.oe ], !dbg !278144 ; 2 uses
  store ptr %storemerge, ptr %i.cl, align 8, !dbg !278144
  %i.cq = getelementptr inbounds nuw i8, ptr %storemerge, i64 16, !dbg !278145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !278146
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !278147 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !dbg !278147
  store i64 -9223372036854775808, ptr %i.cr, align 8, !dbg !278148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !278149
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !278150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !dbg !278150
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 247, !dbg !278151
  store i8 -38, ptr %.sroa.337.0..sroa_idx, align 1, !dbg !278151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !278152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24), !dbg !278063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !278063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cg, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false), !dbg !278063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277789), !dbg !278063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !278153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !278153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !278153
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !278153 ; 23 uses
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !278153, !range !3914, !alias.scope !277789, !noundef !3778
  %.not.i = icmp eq i64 %i.cu, -9223372036854775808, !dbg !278153
  br i1 %.not.i, label %bb.i, label %bb.g, !dbg !278154

.body157.i:                                       ; preds = %bb.mf, %.body.thread.i, %.body.i, %bb.f
  %.sroa.052.0.i = phi i8 [ %.sroa.052.2.i, %.body.i ], [ %.sroa.052.2319.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.052.2319.i, %bb.mf ], !dbg !278155
  %.sroa.049.0.i = phi i8 [ %.sroa.049.2.i, %.body.i ], [ %.sroa.049.2320.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.049.2320.i, %bb.mf ], !dbg !278155 ; 2 uses
  %.pn133.i = phi { ptr, i32 } [ %.pn129.i, %.body.i ], [ %.pn129321.i, %.body.thread.i ], [ %i.cv, %bb.f ], [ %.pn129321.i, %bb.mf ] ; 2 uses
  %cond.i = icmp eq i8 %.sroa.052.0.i, 0, !dbg !278156
  br i1 %cond.i, label %bb.ns, label %.thread.i.a, !dbg !278156

bb.f:                                             ; preds = %bb.mh, %bb.ly, %bb.ky, %bb.fv, %bb.fb, %bb.t, %bb.k, %bb.j
  %.sroa.049.1.i = phi i8 [ 1, %bb.mh ], [ 1, %bb.fv ], [ %.sroa.049.6.i, %bb.ly ], [ 0, %bb.ky ], [ 1, %bb.k ], [ 1, %bb.fb ], [ 1, %bb.t ], [ 1, %bb.j ], !dbg !278157 ; 2 uses
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body157.i

bb.g:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !278158
  %.val155.i = load i64, ptr %i.cw, align 8, !dbg !278158, !alias.scope !277789, !noundef !3778 ; 2 uses
  %i.cx = icmp ult i64 %.val155.i, 1152921504606846976, !dbg !278159
  tail call void @llvm.assume(i1 %i.cx), !dbg !278160
  %i.cy = icmp eq i64 %.val155.i, 0, !dbg !278161
  br i1 %i.cy, label %bb.h, label %bb.i, !dbg !278162

bb.h:                                             ; preds = %bb.g
  %i.cz = load i64, ptr %i.cg, align 8, !dbg !278163, !range !3913, !alias.scope !277789, !noundef !3778
  %i.da = trunc nuw i64 %i.cz to i1, !dbg !278164
  br i1 %i.da, label %bb.mg, label %bb.mh, !dbg !278164

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 88, !dbg !278165 ; 6 uses
  %.val156.i = load i64, ptr %i.db, align 8, !dbg !278166, !range !3914, !alias.scope !277789, !noundef !3778
  %.not335.i = icmp eq i64 %.val156.i, -9223372036854775808, !dbg !278167
  br i1 %.not335.i, label %bb.k, label %bb.j, !dbg !278165

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 296, !dbg !278168 ; 2 uses
  %i.dd = invoke noundef align 4 ptr @_RNvXs2_NtCslpwjCj2YNBy_9polars_io4mmapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_15MmapBytesReaderEL_EB1a_7to_fileCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc)
          to label %bb.l unwind label %bb.f, !dbg !278169, !noalias !277795

bb.k:                                             ; preds = %bb.fe, %bb.l, %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 320, !dbg !278170
  %i.df = load i8, ptr %i.de, align 8, !dbg !278170, !range !3829, !alias.scope !277789, !noundef !3778
  %i.dg = trunc nuw i8 %i.df to i1, !dbg !278170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !278171, !noalias !277796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !278172, !noalias !277796
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_4mmap15MmapBytesReaderEL_EE12get_metadataCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cg)
          to label %bb.fl unwind label %bb.f, !dbg !278173, !noalias !277795

bb.l:                                             ; preds = %bb.j
  %.not113.i = icmp eq ptr %i.dd, null, !dbg !278174
  br i1 %.not113.i, label %bb.k, label %bb.m, !dbg !278168

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !277798), !dbg !278175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !277796
  store ptr null, ptr %i.bj, align 8, !noalias !277799
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.di = invoke noundef align 4 ptr @_RNvXs2_NtCslpwjCj2YNBy_9polars_io4mmapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_15MmapBytesReaderEL_EB1a_7to_fileCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc)
          to label %bb.o unwind label %.thread.i.i, !dbg !278176, !noalias !277800 ; 2 uses

bb.n:                                             ; preds = %bb.x
  br i1 %.sroa.036.1.i.i, label %bb.ex, label %.thread.i.a, !dbg !278177

.thread.i.i:                                      ; preds = %bb.al, %bb.p, %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex, !dbg !278177

bb.o:                                             ; preds = %bb.m
  %.not.i.i = icmp eq ptr %i.di, null, !dbg !278178
  br i1 %.not.i.i, label %bb.q, label %bb.p, !dbg !278179

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !278180, !noalias !277799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !278181, !noalias !277799
  invoke void @_RNvMs_NtCs2mZqlW55729_12polars_utils4mmapNtB4_13MMapSemaphore13new_from_file(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.di)
          to label %bb.u unwind label %.thread.i.i, !dbg !278181, !noalias !277800

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @1022, i64 56), i64 16, i1 false), !dbg !278182, !noalias !277802
  br label %bb.r, !dbg !278182

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i, %bb.q
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.1 = phi i64 [ 0, %bb.q ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.1 = phi i64 [ 0, %bb.q ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.47.sroa.24.sroa.0.1 = phi i64 [ undef, %bb.q ], [ %.sroa.47.sroa.24.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.47.sroa.0.1 = phi i64 [ 42, %bb.q ], [ %.sroa.47.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.40.1 = phi ptr [ @1021, %bb.q ], [ %.sroa.40.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.24.1 = phi i64 [ -9223372036854775808, %bb.q ], [ %.sroa.24.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  %.sroa.0.1 = phi i64 [ 2, %bb.q ], [ %.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278183 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277803), !dbg !278177
  %i.dk = load ptr, ptr %i.bj, align 8, !dbg !278184, !alias.scope !277803, !noalias !277799, !noundef !3778 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null, !dbg !278184
  br i1 %i.dl, label %bb.fa, label %bb.s, !dbg !278184

bb.s:                                             ; preds = %bb.r
  %i.dm = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !dbg !278185, !noalias !277804
  %i.dn = icmp eq i64 %i.dm, 1, !dbg !278186
  br i1 %i.dn, label %bb.t, label %bb.fa, !dbg !278186

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !278187
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #36
          to label %bb.fa unwind label %bb.f, !dbg !278188, !noalias !277795

bb.u:                                             ; preds = %bb.p
  %i.do = load i64, ptr %i.bh, align 8, !dbg !278189, !range !4199, !noalias !277799, !noundef !3778 ; 2 uses
  %.not67.i.i = icmp eq i64 %i.do, 18, !dbg !278189
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !278190
  %.sroa.6.i.i.sroa.0.0.copyload = load i64, ptr %i.dp, align 8, !dbg !278190, !noalias !277799 ; 2 uses
  %.sroa.6.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !278190
  %.sroa.6.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.6.i.i.sroa.6.0..sroa_idx, align 8, !dbg !278190, !noalias !277799 ; 2 uses
  %.sroa.6.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24, !dbg !278190
  %.sroa.6.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.i.sroa.7.0..sroa_idx, align 8, !dbg !278190, !noalias !277799 ; 3 uses
  %.sroa.6.i.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32, !dbg !278190
  %.sroa.6.i.i.sroa.8.0.copyload = load i64, ptr %.sroa.6.i.i.sroa.8.0..sroa_idx, align 8, !dbg !278190, !noalias !277799 ; 3 uses
  br i1 %.not67.i.i, label %bb.w, label %bb.v, !dbg !278191

bb.v:                                             ; preds = %bb.u
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 40, !dbg !278192
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload288 = load i64, ptr %.sroa.642.0..sroa_idx.i.i, align 8, !dbg !278192, !noalias !277802
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.642.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48, !dbg !278192
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload310 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.642.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278192, !noalias !277802
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.642.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 56, !dbg !278192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.642.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278192, !noalias !277802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !278193, !noalias !277799
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !278194

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !278193, !noalias !277799
  store i64 %.sroa.6.i.i.sroa.0.0.copyload, ptr %i.bi, align 8, !dbg !278181, !noalias !277799
  %.sroa.6.i.i.sroa.6.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !278181
  store ptr %.sroa.6.i.i.sroa.6.0.copyload, ptr %.sroa.6.i.i.sroa.6.0..sroa_idx210, align 8, !dbg !278181, !noalias !277799
  %.sroa.6.i.i.sroa.7.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !278181
  store i64 %.sroa.6.i.i.sroa.7.0.copyload, ptr %.sroa.6.i.i.sroa.7.0..sroa_idx212, align 8, !dbg !278181, !noalias !277799
  %.sroa.6.i.i.sroa.8.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !278181
  store i64 %.sroa.6.i.i.sroa.8.0.copyload, ptr %.sroa.6.i.i.sroa.8.0..sroa_idx214, align 8, !dbg !278181, !noalias !277799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !278195, !noalias !277799
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i.sroa.10.sroa.7), !dbg !278196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !278196, !noalias !277799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !278197, !noalias !277799
  %i.dq = inttoptr i64 %.sroa.6.i.i.sroa.7.0.copyload to ptr, !dbg !278198
  store ptr %i.dq, ptr %i.be, align 8, !dbg !278199, !noalias !277799
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !278199
  store i64 %.sroa.6.i.i.sroa.8.0.copyload, ptr %i.dr, align 8, !dbg !278199, !noalias !277799
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !278199
  store i64 0, ptr %i.ds, align 8, !dbg !278199, !noalias !277799
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file18read_file_metadataINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.y unwind label %.thread7.i.i, !dbg !278196, !noalias !277800

bb.x:                                             ; preds = %.body.thread.i.i, %.body.i.i
  %.sroa.036.1.i.i = phi i1 [ %.sroa.036.2.i.i, %.body.i.i ], [ %.sroa.036.218.i.i, %.body.thread.i.i ], !dbg !278178 ; 2 uses
  %.sroa.033.0.i.i = phi i8 [ %.sroa.033.1.i.i, %.body.i.i ], [ %.sroa.033.119.i.i, %.body.thread.i.i ], !dbg !278200
  %.pn75.i.i = phi { ptr, i32 } [ %.pn73.i.i, %.body.i.i ], [ %.pn7320.i.i, %.body.thread.i.i ] ; 3 uses
  %i.dt = trunc nuw i8 %.sroa.033.0.i.i to i1, !dbg !278201
  br i1 %i.dt, label %bb.ew, label %bb.n, !dbg !278201

.thread7.i.i:                                     ; preds = %bb.af, %bb.w
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew, !dbg !278201

bb.y:                                             ; preds = %bb.w
  %i.dv = load i64, ptr %i.bf, align 8, !dbg !278202, !range !3914, !noalias !277799, !noundef !3778 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, -9223372036854775808, !dbg !278202
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !278203
  %.sroa.69.i.i.sroa.0.0.copyload = load i64, ptr %i.dx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !278203
  %.sroa.69.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.69.i.i.sroa.6.0..sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24, !dbg !278203
  %.sroa.69.i.i.sroa.7.0.copyload = load ptr, ptr %.sroa.69.i.i.sroa.7.0..sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32, !dbg !278203
  %.sroa.69.i.i.sroa.8.0.copyload = load i64, ptr %.sroa.69.i.i.sroa.8.0..sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40, !dbg !278203
  %.sroa.69.i.i.sroa.9.0.copyload = load i64, ptr %.sroa.69.i.i.sroa.9.0..sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 48, !dbg !278203
  %.sroa.69.i.i.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.69.i.i.sroa.10.0..sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.10.sroa.6.0..sroa.69.i.i.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 56, !dbg !278203
  %.sroa.69.i.i.sroa.10.sroa.6.0.copyload = load i64, ptr %.sroa.69.i.i.sroa.10.sroa.6.0..sroa.69.i.i.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !278203, !noalias !277799 ; 2 uses
  %.sroa.69.i.i.sroa.10.sroa.7.0..sroa.69.i.i.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 64, !dbg !278203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i.i.sroa.10.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i.i.sroa.10.sroa.7.0..sroa.69.i.i.sroa.10.0..sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278203, !noalias !277799
  br i1 %i.dw, label %bb.z, label %bb.aa, !dbg !278204

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !278205, !noalias !277799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i.i.sroa.10.sroa.7, i64 16, i1 false), !dbg !278205, !noalias !277802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !278206, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i.sroa.10.sroa.7), !dbg !278206
  br label %bb.al, !dbg !278207

bb.aa:                                            ; preds = %bb.y
  %.sroa.648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 80, !dbg !278208
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 80, !dbg !278209 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i.i, i64 32, i1 false), !dbg !278208, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !278205, !noalias !277799
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !278209
  store i64 %.sroa.69.i.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !278196
  store i64 %.sroa.69.i.i.sroa.6.0.copyload, ptr %.sroa.69.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !278196
  store ptr %.sroa.69.i.i.sroa.7.0.copyload, ptr %.sroa.69.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32, !dbg !278196
  store i64 %.sroa.69.i.i.sroa.8.0.copyload, ptr %.sroa.69.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40, !dbg !278196
  store i64 %.sroa.69.i.i.sroa.9.0.copyload, ptr %.sroa.69.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48, !dbg !278196
  store i64 %.sroa.69.i.i.sroa.10.sroa.0.0.copyload, ptr %.sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.10.sroa.6.0..sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 56, !dbg !278196
  store i64 %.sroa.69.i.i.sroa.10.sroa.6.0.copyload, ptr %.sroa.69.i.i.sroa.10.sroa.6.0..sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.sroa_idx, align 8, !dbg !278196, !noalias !277799
  %.sroa.69.i.i.sroa.10.sroa.7.0..sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 64, !dbg !278196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i.i.sroa.10.sroa.7.0..sroa.69.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i.i.sroa.10.sroa.7, i64 16, i1 false), !dbg !278196, !noalias !277799
  store i64 %i.dv, ptr %i.bg, align 8, !dbg !278209, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !278206, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i.sroa.10.sroa.7), !dbg !278206
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !278210
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !278210, !range !3914, !alias.scope !277802, !noundef !3778
  %.not68.i.i = icmp eq i64 %i.dz, -9223372036854775808, !dbg !278210
  br i1 %.not68.i.i, label %thread-pre-split, label %bb.ab, !dbg !278211

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !278212, !noalias !277799
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 48, !dbg !278213
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !278213, !alias.scope !277802, !nonnull !3778, !noundef !3778
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cg, i64 56, !dbg !278214
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !278214, !alias.scope !277802, !noundef !3778
  %i.ee = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !278215, !noalias !277799, !nonnull !3778, !noundef !3778
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !278216
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.eb, i64 noundef %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ef)
          to label %bb.ae unwind label %bb.ad, !dbg !278212, !noalias !277800

thread-pre-split:                                 ; preds = %bb.aa
  %.pr = load i64, ptr %i.ct, align 8, !dbg !278217, !alias.scope !277802
  br label %bb.ac, !dbg !278218

bb.ac:                                            ; preds = %thread-pre-split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i.i
  %i.eg = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.616.i.i.sroa.0.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !278217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !278218, !noalias !277799
  %.not70.i.i = icmp eq i64 %i.eg, -9223372036854775808, !dbg !278217
  br i1 %.not70.i.i, label %bb.an, label %bb.am, !dbg !278219

.body.i.i:                                        ; preds = %bb.az, %.critedge.i.i, %bb.ad
  %.sroa.036.2.i.i = phi i1 [ %.sroa.036.4.i.i, %.critedge.i.i ], [ %.sroa.036.3.i.i, %bb.ad ], [ %.sroa.036.4.i.i, %bb.az ], !dbg !278183 ; 2 uses
  %.sroa.033.1.i.i = phi i8 [ 0, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.ad ], [ 0, %bb.az ], !dbg !278200 ; 2 uses
  %.sroa.032.0.i.i = phi i8 [ %.sroa.032.2.i.i, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.ad ], [ %.sroa.032.2.i.i, %bb.az ], !dbg !278220
  %.pn73.i.i = phi { ptr, i32 } [ %.pn.i.i, %.critedge.i.i ], [ %i.ei, %bb.ad ], [ %.pn.i.i, %bb.az ] ; 2 uses
  %i.eh = trunc nuw i8 %.sroa.032.0.i.i to i1, !dbg !278221
  br i1 %i.eh, label %.body.thread.i.i, label %bb.x, !dbg !278221

bb.ad:                                            ; preds = %bb.er, %bb.be, %bb.am, %bb.ab
  %.sroa.036.3.i.i = phi i1 [ true, %bb.be ], [ false, %bb.er ], [ true, %bb.ab ], [ true, %bb.am ], !dbg !278183
  %.sroa.032.1.i.i = phi i8 [ 0, %bb.be ], [ 0, %bb.er ], [ 1, %bb.ab ], [ 1, %bb.am ], !dbg !278220 ; 2 uses
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.ej = load i64, ptr %i.bd, align 8, !dbg !278222, !range !4199, !noalias !277799, !noundef !3778 ; 2 uses
  %.not69.i.i = icmp eq i64 %i.ej, 18, !dbg !278222
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !278223
  %.sroa.616.i.i.sroa.0.0.copyload = load i64, ptr %i.ek, align 8, !dbg !278223, !noalias !277799 ; 4 uses
  %.sroa.616.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !278223
  %.sroa.616.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.616.i.i.sroa.6.0..sroa_idx, align 8, !dbg !278223, !noalias !277799 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_4mmap15MmapBytesReaderEL_EEINtNtB9_6shared9SerReaderB10_E6finishCseeLknQCOKOd_13polars_python:bb.a

bb.ef:                                            ; preds = %bb.ed
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit117.i.i.i unwind label %bb.bq, !dbg !278485, !noalias !277842

bb.eg:                                            ; preds = %bb.ee
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278483, !noalias !277842
  unreachable, !dbg !278483

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.ej, %bb.bl, %.body100.i.i.i
  %.pn89.pn.i.i.i = phi { ptr, i32 } [ %i.lq, %bb.ej ], [ %.pn89.i.i.i, %bb.bl ], [ %.pn89.i.i.i, %.body100.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277876), !dbg !278486
  %i.lm = load ptr, ptr %i.as, align 8, !dbg !278487, !alias.scope !277876, !noalias !277839, !noundef !3778 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null, !dbg !278487
  br i1 %i.ln, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.eh, !dbg !278487

bb.eh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.lo = atomicrmw add ptr %i.lm, i64 -1 release, align 8, !dbg !278488, !noalias !277877
  %i.lp = icmp eq i64 %i.lo, 1, !dbg !278489
  br i1 %i.lp, label %bb.ei, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !278489

bb.ei:                                            ; preds = %bb.eh
  fence acquire, !dbg !278490
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.cw, !dbg !278491, !noalias !277842

bb.ej:                                            ; preds = %bb.em, %bb.ec
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i: ; preds = %bb.ec, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit117.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !277878), !dbg !278486
  %i.lr = load ptr, ptr %i.as, align 8, !dbg !278492, !alias.scope !277878, !noalias !277839, !noundef !3778 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null, !dbg !278492
  br i1 %i.ls, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i, label %bb.ek, !dbg !278492

bb.ek:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i
  %i.lt = atomicrmw add ptr %i.lr, i64 -1 release, align 8, !dbg !278493, !noalias !277879
  %i.lu = icmp eq i64 %i.lt, 1, !dbg !278494
  br i1 %i.lu, label %.invoke.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i, !dbg !278494

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.el, %bb.ei, %bb.eh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i.i
  %.pn89.pn.pn.i.i.i = phi { ptr, i32 } [ %i.lv, %bb.el ], [ %.pn89.pn.i.i.i, %bb.ei ], [ %.pn89.pn.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %.pn89.pn.i.i.i, %bb.eh ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io3ipc4mmap13MMapChunkIterECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ay) #30
          to label %.critedge.i.i unwind label %bb.cw, !dbg !278486, !noalias !277842

bb.el:                                            ; preds = %.invoke.i.i.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i: ; preds = %.invoke.i.i.i, %bb.en, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i, %bb.ek, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.11 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.12, %.invoke.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.24.sroa.24.sroa.0.11 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.12, %.invoke.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.24.sroa.0.11 = phi i64 [ %.sroa.47.sroa.24.sroa.0.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.47.sroa.24.sroa.0.12, %.invoke.i.i.i ], [ %.sroa.47.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.0.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.47.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.0.11 = phi i64 [ %.sroa.47.sroa.0.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.47.sroa.0.12, %.invoke.i.i.i ], [ %.sroa.47.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.0.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.47.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.40.11 = phi ptr [ %.sroa.40.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.40.12, %.invoke.i.i.i ], [ %.sroa.40.14, %bb.ek ], [ %.sroa.40.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.40.10, %bb.en ], !dbg !278495
  %.sroa.24.11 = phi i64 [ %.sroa.24.14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.24.12, %.invoke.i.i.i ], [ %.sroa.24.14, %bb.ek ], [ %.sroa.24.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.24.10, %bb.en ], !dbg !278495
  %.sroa.0.11 = phi i64 [ 18, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit112.i.i.i ], [ %.sroa.0.12, %.invoke.i.i.i ], [ 18, %bb.ek ], [ %.sroa.0.10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i ], [ %.sroa.0.10, %bb.en ], !dbg !278495
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io3ipc4mmap13MMapChunkIterECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ay)
          to label %bb.eq unwind label %.body94.i.i, !dbg !278486, !noalias !277800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !278322, !noalias !277839
  %i.lw = load i8, ptr %i.gx, align 1, !dbg !278496, !range !4216, !alias.scope !277880, !noalias !277799, !noundef !3778
  %cond.i121.i.i.i = icmp eq i8 %i.lw, -40, !dbg !278496
  br i1 %cond.i121.i.i.i, label %bb.em, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i, !dbg !278496, !prof !4090

bb.em:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i unwind label %bb.ej, !dbg !278497, !noalias !277842

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i: ; preds = %bb.em, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !277881), !dbg !278486
  %i.lx = load ptr, ptr %i.as, align 8, !dbg !278498, !alias.scope !277881, !noalias !277839, !noundef !3778 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null, !dbg !278498
  br i1 %i.ly, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i, label %bb.en, !dbg !278498

bb.en:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit123.i.i.i
  %i.lz = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !dbg !278499, !noalias !277882
  %i.ma = icmp eq i64 %i.lz, 1, !dbg !278500
  br i1 %i.ma, label %.invoke.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i, !dbg !278500

.invoke.i.i.i:                                    ; preds = %bb.en, %bb.ek
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.12 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.24.sroa.24.sroa.0.12 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.24.sroa.0.12 = phi i64 [ %.sroa.47.sroa.24.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.24.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.47.sroa.0.12 = phi i64 [ %.sroa.47.sroa.0.14, %bb.ek ], [ %.sroa.47.sroa.0.10, %bb.en ], !dbg !278495
  %.sroa.40.12 = phi ptr [ %.sroa.40.14, %bb.ek ], [ %.sroa.40.10, %bb.en ], !dbg !278495
  %.sroa.24.12 = phi i64 [ %.sroa.24.14, %bb.ek ], [ %.sroa.24.10, %bb.en ], !dbg !278495
  %.sroa.0.12 = phi i64 [ 18, %bb.ek ], [ %.sroa.0.10, %bb.en ], !dbg !278495
  fence acquire, !dbg !278501
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i unwind label %bb.el, !dbg !278502, !noalias !277842

.thread129.i.i.i:                                 ; preds = %.thread133.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dy, %bb.dx, %bb.dv, %.thread140.i.i.i, %bb.de
  %.pn87128.i.i.i = phi { ptr, i32 } [ %i.lf, %bb.dx ], [ %i.jn, %bb.de ], [ %i.lg, %bb.dy ], [ %i.lc, %bb.dv ], [ %.pn85139.i.i.i, %.thread140.i.i.i ], [ %lpad.loopexit.split-lp717, %.thread133.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #30
          to label %.body100.i.i.i unwind label %bb.cw, !dbg !278322, !noalias !277842

bb.eo:                                            ; preds = %bb.bn
  unreachable

.body94.i.i:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i, !dbg !278503

bb.ep:                                            ; preds = %bb.bi, %bb.bh
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cg, i64 288, !dbg !278504
  %i.md = load i32, ptr %i.mc, align 8, !dbg !278504, !alias.scope !277883, !noundef !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !dbg !278505, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !278506, !noalias !277799
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !278507
  store i32 %i.md, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !dbg !278507, !noalias !277799
  br label %bb.bk, !dbg !278508

bb.eq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit125.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !278509, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !278509, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !278503, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !278503, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !278503, !noalias !277799
  call void @llvm.experimental.noalias.scope.decl(metadata !277884), !dbg !278269
  call void @llvm.experimental.noalias.scope.decl(metadata !277885), !dbg !278510
  %i.me = load ptr, ptr %i.bc, align 8, !dbg !278511, !alias.scope !277886, !noalias !277799, !nonnull !3778, !noundef !3778
  %i.mf = atomicrmw add ptr %i.me, i64 -1 release, align 8, !dbg !278512, !noalias !277887
  %i.mg = icmp eq i64 %i.mf, 1, !dbg !278513
  br i1 %i.mg, label %bb.er, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i, !dbg !278513

bb.er:                                            ; preds = %bb.eq
  fence acquire, !dbg !278514
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i unwind label %bb.ad, !dbg !278515, !noalias !277800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i: ; preds = %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !278269, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !278221, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !278201, !noalias !277799
  br label %bb.fa, !dbg !278177

bb.es:                                            ; preds = %bb.bh
  %i.mh = landingpad { ptr, i32 }
          cleanup
  %i.mi = icmp eq ptr %i.fz, null, !dbg !278516
  br i1 %i.mi, label %.noexc98.i.i, label %bb.et, !dbg !278516

bb.et:                                            ; preds = %bb.es
  %i.mj = atomicrmw add ptr %i.fz, i64 -1 release, align 8, !dbg !278517, !noalias !277888
  %i.mk = icmp eq i64 %i.mj, 1, !dbg !278518
  br i1 %i.mk, label %bb.eu, label %.noexc98.i.i, !dbg !278518

bb.eu:                                            ; preds = %bb.et
  fence acquire, !dbg !278519
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #36
          to label %.noexc98.i.i unwind label %bb.ev, !dbg !278520, !noalias !277800

bb.ev:                                            ; preds = %bb.ez, %bb.ew, %.body.thread.i.i, %.noexc98.i.i, %bb.eu, %bb.az
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278521, !noalias !277800
  unreachable, !dbg !278521

.noexc98.i.i:                                     ; preds = %bb.eu, %bb.et, %bb.es
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io3ipc4mmap13MMapChunkIterECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(184) %i.ay) #30
          to label %.critedge.i.i unwind label %bb.ev, !dbg !278503, !noalias !277800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !278269, !noalias !277799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !278221, !noalias !277799
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !278201

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i, %bb.al, %bb.v
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.9, %bb.al ], [ %.sroa.625.i.i.sroa.10.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload310, %bb.v ], !dbg !278200
  %.sroa.47.sroa.24.sroa.24.sroa.0.0 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.9, %bb.al ], [ %.sroa.625.i.i.sroa.10.sroa.0.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload288, %bb.v ], !dbg !278200
  %.sroa.47.sroa.24.sroa.0.0 = phi i64 [ %.sroa.47.sroa.24.sroa.0.9, %bb.al ], [ %.sroa.625.i.i.sroa.9.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.6.i.i.sroa.8.0.copyload, %bb.v ], !dbg !278200
  %.sroa.47.sroa.0.0 = phi i64 [ %.sroa.47.sroa.0.9, %bb.al ], [ %.sroa.625.i.i.sroa.8.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.6.i.i.sroa.7.0.copyload, %bb.v ], !dbg !278200
  %.sroa.40.0 = phi ptr [ %.sroa.40.9, %bb.al ], [ %.sroa.625.i.i.sroa.7.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.6.i.i.sroa.6.0.copyload, %bb.v ], !dbg !278200
  %.sroa.24.0 = phi i64 [ %.sroa.24.9, %bb.al ], [ %.sroa.625.i.i.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %.sroa.6.i.i.sroa.0.0.copyload, %bb.v ], !dbg !278200
  %.sroa.0.0 = phi i64 [ %.sroa.0.9, %bb.al ], [ %.sroa.625.i.i.sroa.0.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit91.i.i ], [ %i.do, %bb.v ], !dbg !278200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !278201, !noalias !277799
  br label %bb.r, !dbg !278522

.body.thread.i.i:                                 ; preds = %bb.aq, %.thread13.i.i, %.body.i.i
  %.pn7320.i.i = phi { ptr, i32 } [ %eh.lpad-body82.i.i, %.thread13.i.i ], [ %.pn73.i.i, %.body.i.i ], [ %i.fd, %bb.aq ]
  %.sroa.033.119.i.i = phi i8 [ 1, %.thread13.i.i ], [ %.sroa.033.1.i.i, %.body.i.i ], [ 1, %bb.aq ]
  %.sroa.036.218.i.i = phi i1 [ true, %.thread13.i.i ], [ %.sroa.036.2.i.i, %.body.i.i ], [ true, %bb.aq ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(112) %i.bg) #30
          to label %bb.x unwind label %bb.ev, !dbg !278221, !noalias !277800

bb.ew:                                            ; preds = %.thread7.i.i, %bb.x
  %.pn7512.i.i = phi { ptr, i32 } [ %i.du, %.thread7.i.i ], [ %.pn75.i.i, %bb.x ] ; 2 uses
  %.sroa.036.111.i.i = phi i1 [ true, %.thread7.i.i ], [ %.sroa.036.1.i.i, %bb.x ]
  invoke void @_RNvXNtCs2mZqlW55729_12polars_utils4mmapNtB2_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i unwind label %bb.ev, !dbg !278523, !noalias !277800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i: ; preds = %bb.ew
  br i1 %.sroa.036.111.i.i, label %bb.ex, label %.thread.i.a, !dbg !278177

bb.ex:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i, %.thread.i.i, %bb.n
  %.pn776.i.i = phi { ptr, i32 } [ %i.dj, %.thread.i.i ], [ %.pn75.i.i, %bb.n ], [ %.pn7512.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277890), !dbg !278177
  %i.mm = load ptr, ptr %i.bj, align 8, !dbg !278524, !alias.scope !277890, !noalias !277799, !noundef !3778 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null, !dbg !278524
  br i1 %i.mn, label %.thread.i.a, label %bb.ey, !dbg !278524

bb.ey:                                            ; preds = %bb.ex
  %i.mo = atomicrmw add ptr %i.mm, i64 -1 release, align 8, !dbg !278525, !noalias !277891
  %i.mp = icmp eq i64 %i.mo, 1, !dbg !278526
  br i1 %i.mp, label %bb.ez, label %.thread.i.a, !dbg !278526

bb.ez:                                            ; preds = %bb.ey
  fence acquire, !dbg !278527
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #36
          to label %.thread.i.a unwind label %bb.ev, !dbg !278528, !noalias !277800

bb.fa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i, %bb.t, %bb.s, %bb.r
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.2 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.1, %bb.r ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.1, %bb.t ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.1, %bb.s ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.2 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.1, %bb.r ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.1, %bb.t ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.1, %bb.s ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.2 = phi i64 [ %.sroa.47.sroa.24.sroa.0.1, %bb.r ], [ %.sroa.47.sroa.24.sroa.0.1, %bb.t ], [ %.sroa.47.sroa.24.sroa.0.1, %bb.s ], [ %.sroa.47.sroa.24.sroa.0.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.47.sroa.0.2 = phi i64 [ %.sroa.47.sroa.0.1, %bb.r ], [ %.sroa.47.sroa.0.1, %bb.t ], [ %.sroa.47.sroa.0.1, %bb.s ], [ %.sroa.47.sroa.0.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.40.2 = phi ptr [ %.sroa.40.1, %bb.r ], [ %.sroa.40.1, %bb.t ], [ %.sroa.40.1, %bb.s ], [ %.sroa.40.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.24.2 = phi i64 [ %.sroa.24.1, %bb.r ], [ %.sroa.24.1, %bb.t ], [ %.sroa.24.1, %bb.s ], [ %.sroa.24.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.r ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.1, %bb.s ], [ %.sroa.0.11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit97.i.i ], !dbg !278183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !278529, !noalias !277796
  %.not114.i = icmp eq i64 %.sroa.0.2, 18, !dbg !278530
  br i1 %.not114.i, label %bb.ff, label %bb.fb, !dbg !278531

bb.fb:                                            ; preds = %bb.fa
  store i64 %.sroa.0.2, ptr %i.bx, align 8, !dbg !278532, !noalias !277789
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !278532
  store i64 %.sroa.24.2, ptr %.sroa.24.0..sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !278532
  store ptr %.sroa.40.2, ptr %.sroa.40.0..sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !278532
  store i64 %.sroa.47.sroa.0.2, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32, !dbg !278532
  store i64 %.sroa.47.sroa.24.sroa.0.2, ptr %.sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !278532
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.0.2, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 48, !dbg !278532
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.2, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278532, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 56, !dbg !278532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, i64 16, i1 false), !dbg !278532, !noalias !277789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !278533, !noalias !277796
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file14check_mmap_err(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bx)
          to label %bb.fc unwind label %bb.f, !dbg !278533, !noalias !277795

bb.fc:                                            ; preds = %bb.fb
  %i.mq = load i64, ptr %i.bw, align 8, !dbg !278534, !range !4199, !noalias !277796, !noundef !3778 ; 2 uses
  %.not115.i = icmp eq i64 %i.mq, 18, !dbg !278534
  br i1 %.not115.i, label %bb.fe, label %bb.fd, !dbg !278535

bb.fd:                                            ; preds = %bb.fc
  %.sroa.24.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !278536
  %.sroa.24.0.copyload107 = load i64, ptr %.sroa.24.0..sroa_idx106, align 8, !dbg !278536, !noalias !277789
  %.sroa.40.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !278536
  %.sroa.40.0.copyload120 = load ptr, ptr %.sroa.40.0..sroa_idx119, align 8, !dbg !278536, !noalias !277789
  %.sroa.47.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !278536
  %.sroa.47.sroa.0.0.copyload172 = load i64, ptr %.sroa.47.0..sroa_idx138, align 8, !dbg !278536, !noalias !277789
  %.sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !278536
  %.sroa.47.sroa.24.sroa.0.0.copyload216 = load i64, ptr %.sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx, align 8, !dbg !278536, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40, !dbg !278536
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload280 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx, align 8, !dbg !278536, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48, !dbg !278536
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload302 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278536, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56, !dbg !278536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.0..sroa_idx138.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278536, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !278537, !noalias !277796
  br label %bb.ff, !dbg !278538

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !278537, !noalias !277796
  br label %bb.k, !dbg !278539

bb.ff:                                            ; preds = %bb.mn, %bb.mk, %bb.fm, %bb.fd, %bb.fa
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.3 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload304, %bb.fm ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.2, %bb.fa ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload302, %bb.fd ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload317, %bb.mn ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload306, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.3 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload282, %bb.fm ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.2, %bb.fa ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload280, %bb.fd ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload294, %bb.mn ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload284, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.3 = phi i64 [ %.sroa.47.sroa.24.sroa.0.0.copyload220, %bb.fm ], [ %.sroa.47.sroa.24.sroa.0.2, %bb.fa ], [ %.sroa.47.sroa.24.sroa.0.0.copyload216, %bb.fd ], [ %.sroa.47.sroa.24.sroa.0.0.copyload229, %bb.mn ], [ %.sroa.47.sroa.24.sroa.0.0.copyload222, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.47.sroa.0.3 = phi i64 [ %.sroa.47.sroa.0.0.copyload176, %bb.fm ], [ %.sroa.47.sroa.0.2, %bb.fa ], [ %.sroa.47.sroa.0.0.copyload172, %bb.fd ], [ %.sroa.47.sroa.0.0.copyload183, %bb.mn ], [ %.sroa.47.sroa.0.0.copyload178, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.40.3 = phi ptr [ %.sroa.40.16.copyload, %bb.fm ], [ %.sroa.40.2, %bb.fa ], [ %.sroa.40.0.copyload120, %bb.fd ], [ %.sroa.40.8.copyload131, %bb.mn ], [ %.sroa.40.16.copyload136, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.24.3 = phi i64 [ %i.ni, %bb.fm ], [ %.sroa.24.2, %bb.fa ], [ %.sroa.24.0.copyload107, %bb.fd ], [ %.sroa.24.8.copyload115, %bb.mn ], [ %i.zk, %bb.mk ], !dbg !278157 ; 2 uses
  %.sroa.0.3 = phi i64 [ %i.nf, %bb.fm ], [ 18, %bb.fa ], [ %i.mq, %bb.fd ], [ 18, %bb.mn ], [ %i.zi, %bb.mk ], !dbg !278157 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.cg, i64 296, !dbg !278156
  %.val153.i = load ptr, ptr %i.mr, align 8, !dbg !278156, !alias.scope !277789 ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.cg, i64 304, !dbg !278156
  %.val154.i = load ptr, ptr %i.ms, align 8, !dbg !278156, !alias.scope !277789, !nonnull !3778, !align !4055, !noundef !3778 ; 5 uses
  %i.mt = load ptr, ptr %.val154.i, align 8, !dbg !278540, !invariant.load !3778, !noalias !277795 ; 2 uses
  %.not.i159.i = icmp eq ptr %i.mt, null, !dbg !278540
  br i1 %.not.i159.i, label %bb.fh, label %bb.fg, !dbg !278540

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val153.i) ]
  invoke void %i.mt(ptr noundef nonnull %.val153.i)
          to label %bb.fh unwind label %bb.fj, !dbg !278540, !noalias !277795

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.mu = getelementptr inbounds nuw i8, ptr %.val154.i, i64 8, !dbg !278541
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !278541, !range !3991, !invariant.load !3778, !noalias !277795 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0, !dbg !278542
  br i1 %i.mw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i, label %bb.fi, !dbg !278542

bb.fi:                                            ; preds = %bb.fh
  %i.mx = getelementptr inbounds nuw i8, ptr %.val154.i, i64 16, !dbg !278541
  %i.my = load i64, ptr %i.mx, align 8, !dbg !278543, !range !4194, !invariant.load !3778, !noalias !277795
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val153.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val153.i, i64 noundef range(i64 1, 0) %i.mv, i64 noundef range(i64 1, 536870913) %i.my) #33, !dbg !278544, !noalias !277795
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i, !dbg !278545

bb.fj:                                            ; preds = %bb.fg
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val154.i, i64 8, !dbg !278546
  %i.nb = load i64, ptr %i.na, align 8, !dbg !278546, !range !3991, !invariant.load !3778, !noalias !277795 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0, !dbg !278547
  br i1 %i.nc, label %.body160.thread.i, label %bb.fk, !dbg !278547

bb.fk:                                            ; preds = %bb.fj
  %i.nd = getelementptr inbounds nuw i8, ptr %.val154.i, i64 16, !dbg !278546
  %i.ne = load i64, ptr %i.nd, align 8, !dbg !278548, !range !4194, !invariant.load !3778, !noalias !277795
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val153.i, i64 noundef range(i64 1, 0) %i.nb, i64 noundef range(i64 1, 536870913) %i.ne) #33, !dbg !278549, !noalias !277795
  br label %.body160.thread.i, !dbg !278550

bb.fl:                                            ; preds = %bb.k
  %i.nf = load i64, ptr %i.bu, align 8, !dbg !278551, !range !4199, !noalias !277796, !noundef !3778 ; 2 uses
  %.not116.i = icmp eq i64 %i.nf, 18, !dbg !278551
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !278552
  %i.nh = load ptr, ptr %i.ng, align 8, !dbg !278552, !noalias !277796 ; 2 uses
  br i1 %.not116.i, label %bb.fn, label %bb.fm, !dbg !278553

bb.fm:                                            ; preds = %bb.fl
  %.sroa.678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !278554
  %.sroa.40.16.copyload = load ptr, ptr %.sroa.678.0..sroa_idx.i, align 8, !dbg !278554, !noalias !277789
  %.sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !278554
  %.sroa.47.sroa.0.0.copyload176 = load i64, ptr %.sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx, align 8, !dbg !278554, !noalias !277789
  %.sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32, !dbg !278554
  %.sroa.47.sroa.24.sroa.0.0.copyload220 = load i64, ptr %.sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !278554, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40, !dbg !278554
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload282 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278554, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48, !dbg !278554
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload304 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278554, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56, !dbg !278554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.678.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278554, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !278555, !noalias !277796
  %i.ni = ptrtoint ptr %i.nh to i64, !dbg !278556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !278557, !noalias !277796
  br label %bb.ff, !dbg !278156

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !278555, !noalias !277796
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 80, !dbg !278558
  %i.nk = load ptr, ptr %i.nj, align 8, !dbg !278558, !noalias !277795, !nonnull !3778, !noundef !3778 ; 3 uses
  %i.nl = atomicrmw add ptr %i.nk, i64 1 monotonic, align 8, !dbg !278559, !noalias !277795
  %i.nm = icmp slt i64 %i.nl, 0, !dbg !278560
  br i1 %i.nm, label %bb.fp, label %bb.fo, !dbg !278560

bb.fo:                                            ; preds = %bb.fn
  store ptr %i.nk, ptr %i.bv, align 8, !dbg !278561, !noalias !277796
  %i.nn = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !278562 ; 5 uses
  %i.no = load i64, ptr %i.nn, align 8, !dbg !278562, !range !3914, !alias.scope !277789, !noundef !3778
  %.not117.i = icmp eq i64 %i.no, -9223372036854775808, !dbg !278562
  br i1 %.not117.i, label %thread-pre-split397, label %bb.fq, !dbg !278563

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.trap(), !dbg !278564
  unreachable, !dbg !278564

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !278565, !noalias !277796
  %i.np = getelementptr inbounds nuw i8, ptr %i.cg, i64 48, !dbg !278566
  %i.nq = load ptr, ptr %i.np, align 8, !dbg !278566, !alias.scope !277789, !nonnull !3778, !noundef !3778
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cg, i64 56, !dbg !278567
  %i.ns = load i64, ptr %i.nr, align 8, !dbg !278567, !alias.scope !277789, !noundef !3778
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 16, !dbg !278568
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.nq, i64 noundef %i.ns, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.nt)
          to label %bb.ft unwind label %bb.fs, !dbg !278565, !noalias !277795

thread-pre-split397:                              ; preds = %bb.fo
  %.pr398 = load i64, ptr %i.ct, align 8, !dbg !278569, !alias.scope !277789
  br label %bb.fr, !dbg !278570

bb.fr:                                            ; preds = %thread-pre-split397, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i
  %i.nu = phi i64 [ %.pr398, %thread-pre-split397 ], [ %.sroa.620.i.sroa.0.0.copyload162, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !278569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !278570, !noalias !277796
  %.not119.i = icmp eq i64 %i.nu, -9223372036854775808, !dbg !278569
  br i1 %.not119.i, label %bb.gi, label %bb.gh, !dbg !278571

.body.i:                                          ; preds = %bb.gq, %.body178.i, %bb.fs
  %.sroa.052.2.i = phi i8 [ %.sroa.052.4.lpad-body.i, %.body178.i ], [ %.sroa.049.3.i, %bb.fs ], [ %.sroa.052.4.lpad-body.i, %bb.gq ], !dbg !278157 ; 2 uses
  %.sroa.049.2.i = phi i8 [ %.sroa.049.5.lpad-body.i, %.body178.i ], [ %.sroa.049.3.i, %bb.fs ], [ %.sroa.049.5.lpad-body.i, %bb.gq ], !dbg !278157 ; 2 uses
  %.sroa.046.0.i = phi i8 [ %.sroa.046.2.i, %.body178.i ], [ %.sroa.046.1.i, %bb.fs ], [ %.sroa.046.2.i, %bb.gq ], !dbg !278572
  %.pn129.i = phi { ptr, i32 } [ %eh.lpad-body179.i, %.body178.i ], [ %i.nw, %bb.fs ], [ %eh.lpad-body179.i, %bb.gq ] ; 2 uses
  %i.nv = trunc nuw i8 %.sroa.046.0.i to i1, !dbg !278557
  br i1 %i.nv, label %.body.thread.i, label %.body157.i, !dbg !278557

bb.fs:                                            ; preds = %bb.lw, %bb.kt, %bb.gh, %bb.fq
  %.sroa.049.3.i = phi i8 [ %.sroa.049.6.i, %bb.lw ], [ 0, %bb.kt ], [ 1, %bb.fq ], [ 1, %bb.gh ], !dbg !278157 ; 2 uses
  %.sroa.046.1.i = phi i8 [ %.sroa.046.2.i, %bb.lw ], [ %.sroa.046.2.i, %bb.kt ], [ 1, %bb.fq ], [ 1, %bb.gh ], !dbg !278572
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ft:                                            ; preds = %bb.fq
  %i.nx = load i64, ptr %i.bt, align 8, !dbg !278573, !range !4199, !noalias !277796, !noundef !3778 ; 2 uses
  %.not118.i = icmp eq i64 %i.nx, 18, !dbg !278573
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !278574
  %.sroa.620.i.sroa.0.0.copyload162 = load i64, ptr %i.ny, align 8, !dbg !278574, !noalias !277796 ; 4 uses
  %.sroa.620.i.sroa.7.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !278574
  %.sroa.620.i.sroa.7.0.copyload165 = load ptr, ptr %.sroa.620.i.sroa.7.0..sroa_idx164, align 8, !dbg !278574, !noalias !277796 ; 3 uses
  %.sroa.620.i.sroa.8.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24, !dbg !278574
  %.sroa.620.i.sroa.8.0.copyload169 = load i64, ptr %.sroa.620.i.sroa.8.0..sroa_idx168, align 8, !dbg !278574, !noalias !277796 ; 3 uses
  br i1 %.not118.i, label %bb.fw, label %bb.fu, !dbg !278575

bb.fu:                                            ; preds = %bb.ft
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !278576
  %.sroa.47.sroa.24.sroa.0.0.copyload224 = load i64, ptr %.sroa.687.0..sroa_idx.i, align 8, !dbg !278576, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40, !dbg !278576
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload286 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx, align 8, !dbg !278576, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48, !dbg !278576
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload308 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !278576, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56, !dbg !278576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.687.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278576, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !278577, !noalias !277796
  call void @llvm.experimental.noalias.scope.decl(metadata !277894), !dbg !278557
  call void @llvm.experimental.noalias.scope.decl(metadata !277895), !dbg !278578
  %i.nz = load ptr, ptr %i.bv, align 8, !dbg !278579, !alias.scope !277896, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.oa = atomicrmw add ptr %i.nz, i64 -1 release, align 8, !dbg !278580, !noalias !277897
  %i.ob = icmp eq i64 %i.oa, 1, !dbg !278581
  br i1 %i.ob, label %bb.fv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i, !dbg !278581

bb.fv:                                            ; preds = %bb.fu
  fence acquire, !dbg !278582
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.f, !dbg !278583, !noalias !277795

bb.fw:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !278577, !noalias !277796
  %i.oc = load i64, ptr %i.ct, align 8, !dbg !278584, !range !3914, !alias.scope !277898, !noundef !3778
  %i.od = icmp eq i64 %i.oc, -9223372036854775808, !dbg !278584
  br i1 %i.od, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i, label %bb.fx, !dbg !278584

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.fy, !dbg !278585, !noalias !277795

bb.fy:                                            ; preds = %bb.fx
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %.thread314.i unwind label %bb.fz, !dbg !278586, !noalias !277795

bb.fz:                                            ; preds = %bb.fy
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278585, !noalias !277795
  unreachable, !dbg !278585

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.fx
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.ga, !dbg !278587, !noalias !277795

bb.ga:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.thread314.i, !dbg !278588

.thread314.i:                                     ; preds = %bb.ga, %bb.fy
  %eh.lpad-body164.i.a = phi { ptr, i32 } [ %i.og, %bb.ga ], [ %i.oe, %bb.fy ]
  store i64 %.sroa.620.i.sroa.0.0.copyload162, ptr %i.ct, align 8, !dbg !278588, !noalias !277795
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !278588
  store ptr %.sroa.620.i.sroa.7.0.copyload165, ptr %.sroa.5198.0..sroa_idx, align 8, !dbg !278588, !noalias !277795
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !278588
  store i64 %.sroa.620.i.sroa.8.0.copyload169, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !278588, !noalias !277795
  br label %.body.thread.i, !dbg !278557

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i.i, %bb.fw
  store i64 %.sroa.620.i.sroa.0.0.copyload162, ptr %i.ct, align 8, !dbg !278588, !noalias !277795
  %.sroa.5198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !278588
  store ptr %.sroa.620.i.sroa.7.0.copyload165, ptr %.sroa.5198.0..sroa_idx199, align 8, !dbg !278588, !noalias !277795
  %.sroa.6.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !278588
  store i64 %.sroa.620.i.sroa.8.0.copyload169, ptr %.sroa.6.0..sroa_idx201, align 8, !dbg !278588, !noalias !277795
  br label %bb.fr, !dbg !278589

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.fv, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !278557, !noalias !277796
  br label %bb.gb, !dbg !278538

bb.gb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.7 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload308, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.7 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload286, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.7 = phi i64 [ %.sroa.47.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.47.sroa.24.sroa.0.0.copyload224, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.47.sroa.0.7 = phi i64 [ %.sroa.47.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.620.i.sroa.8.0.copyload169, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.40.7 = phi ptr [ %.sroa.40.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.620.i.sroa.7.0.copyload165, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.24.7 = phi i64 [ %.sroa.24.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %.sroa.620.i.sroa.0.0.copyload162, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !277899 ; 2 uses
  %.sroa.0.7 = phi i64 [ %.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], [ %i.nx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !278590 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cg, i64 296, !dbg !278156
  %.val151.i = load ptr, ptr %i.oh, align 8, !dbg !278156, !alias.scope !277789 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.cg, i64 304, !dbg !278156
  %.val152.i = load ptr, ptr %i.oi, align 8, !dbg !278156, !alias.scope !277789, !nonnull !3778, !align !4055, !noundef !3778 ; 5 uses
  %i.oj = load ptr, ptr %.val152.i, align 8, !dbg !278591, !invariant.load !3778, !noalias !277795 ; 2 uses
  %.not.i166.i = icmp eq ptr %i.oj, null, !dbg !278591
  br i1 %.not.i166.i, label %bb.gd, label %bb.gc, !dbg !278591

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val151.i) ]
  invoke void %i.oj(ptr noundef nonnull %.val151.i)
          to label %bb.gd unwind label %bb.gf, !dbg !278591, !noalias !277795

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.ok = getelementptr inbounds nuw i8, ptr %.val152.i, i64 8, !dbg !278592
  %i.ol = load i64, ptr %i.ok, align 8, !dbg !278592, !range !3991, !invariant.load !3778, !noalias !277795 ; 2 uses
  %i.om = icmp eq i64 %i.ol, 0, !dbg !278593
  br i1 %i.om, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i, label %bb.ge, !dbg !278593

bb.ge:                                            ; preds = %bb.gd
  %i.on = getelementptr inbounds nuw i8, ptr %.val152.i, i64 16, !dbg !278592
  %i.oo = load i64, ptr %i.on, align 8, !dbg !278594, !range !4194, !invariant.load !3778, !noalias !277795
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val151.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val151.i, i64 noundef range(i64 1, 0) %i.ol, i64 noundef range(i64 1, 536870913) %i.oo) #33, !dbg !278595, !noalias !277795
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i, !dbg !278596

bb.gf:                                            ; preds = %bb.gc
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.val152.i, i64 8, !dbg !278597
  %i.or = load i64, ptr %i.oq, align 8, !dbg !278597, !range !3991, !invariant.load !3778, !noalias !277795 ; 2 uses
  %i.os = icmp eq i64 %i.or, 0, !dbg !278598
  br i1 %i.os, label %.body160.thread.i, label %bb.gg, !dbg !278598

bb.gg:                                            ; preds = %bb.gf
  %i.ot = getelementptr inbounds nuw i8, ptr %.val152.i, i64 16, !dbg !278597
  %i.ou = load i64, ptr %i.ot, align 8, !dbg !278599, !range !4194, !invariant.load !3778, !noalias !277795
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val151.i, i64 noundef range(i64 1, 0) %i.or, i64 noundef range(i64 1, 536870913) %i.ou) #33, !dbg !278600, !noalias !277795
  br label %.body160.thread.i, !dbg !278601

bb.gh:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !278602, !noalias !277796
  %i.ov = load ptr, ptr %i.bv, align 8, !dbg !278603, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16, !dbg !278604
  %i.ox = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !278605
  %i.oy = load ptr, ptr %i.ox, align 8, !dbg !278605, !alias.scope !277789, !nonnull !3778, !noundef !3778
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !278606
  %i.pa = load i64, ptr %i.oz, align 8, !dbg !278606, !alias.scope !277789, !noundef !3778
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils5other16apply_projection(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.oy, i64 noundef %i.pa)
          to label %bb.gj unwind label %bb.fs, !dbg !278602, !noalias !277795

bb.gi:                                            ; preds = %bb.fr
  %i.pb = load ptr, ptr %i.bv, align 8, !dbg !278607, !noalias !277796, !nonnull !3778, !noundef !3778
  store ptr %i.pb, ptr %i.bs, align 8, !dbg !278607, !noalias !277796
  br label %bb.go, !dbg !278608

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !278609, !noalias !277796
  store i64 1, ptr %i.bk, align 8, !dbg !278609, !noalias !277796
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !278609
  store i64 1, ptr %i.pc, align 8, !dbg !278609, !noalias !277796
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bk, i64 16, !dbg !278609 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.pd, ptr noundef nonnull align 8 dereferenceable(88) %i.br, i64 88, i1 false), !dbg !278609, !noalias !277796
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !278610, !noalias !277908
  %i.pe = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 24, 641) 104, i64 noundef range(i64 8, 129) 8) #33, !dbg !278611, !noalias !277908 ; 3 uses
  %i.pf = icmp eq ptr %i.pe, null, !dbg !278612
  br i1 %i.pf, label %bb.gk, label %bb.gn, !dbg !278613, !prof !3790

bb.gk:                                            ; preds = %bb.gj
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #31
          to label %.noexc171.i unwind label %bb.gl, !dbg !278614, !noalias !277795

.noexc171.i:                                      ; preds = %bb.gk
  unreachable, !dbg !278614

bb.gl:                                            ; preds = %bb.gk
  %i.pg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3l_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(88) %i.pd)
          to label %.body.thread.i unwind label %bb.gm, !dbg !278615, !noalias !277795

bb.gm:                                            ; preds = %bb.gl
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278616, !noalias !277795
  unreachable, !dbg !278616

bb.gn:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.pe, ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 104, i1 false), !dbg !278617, !noalias !277795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !278618, !noalias !277796
  store ptr %i.pe, ptr %i.bs, align 8, !dbg !278619, !noalias !277796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !278620, !noalias !277796
  br label %bb.go, !dbg !278608

bb.go:                                            ; preds = %bb.gn, %bb.gi
  %.sroa.046.2.i = phi i8 [ 1, %bb.gn ], [ 0, %bb.gi ], !dbg !278020 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !278621, !noalias !277796
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_4mmap15MmapBytesReaderEL_EE12get_metadataCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cg)
          to label %bb.gr unwind label %bb.gp, !dbg !278622, !noalias !277795

bb.gp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i, %bb.hr, %bb.go
  %.sroa.052.4.i = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i ], [ 0, %bb.hr ], [ 1, %bb.go ], !dbg !278157
  %.sroa.049.5.i = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i ], [ 1, %bb.hr ], [ 1, %bb.go ], !dbg !278157
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i, !dbg !278623

.body178.i:                                       ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i, %bb.hq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit13.i.i, %bb.gp
  %.sroa.052.4.lpad-body.i = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit13.i.i ], [ %.sroa.052.4.i, %bb.gp ], [ 1, %bb.hq ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i ] ; 2 uses
  %.sroa.049.5.lpad-body.i = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit13.i.i ], [ %.sroa.049.5.i, %bb.gp ], [ 1, %bb.hq ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i ] ; 2 uses
  %eh.lpad-body179.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit13.i.i ], [ %i.pi, %bb.gp ], [ %.pn.pn.i.i, %bb.hq ], [ %.pn88.pn.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277909), !dbg !278623
  call void @llvm.experimental.noalias.scope.decl(metadata !277910), !dbg !278624
  %i.pj = load ptr, ptr %i.bs, align 8, !dbg !278625, !alias.scope !277911, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.pk = atomicrmw add ptr %i.pj, i64 -1 release, align 8, !dbg !278626, !noalias !277912
  %i.pl = icmp eq i64 %i.pk, 1, !dbg !278627
  br i1 %i.pl, label %bb.gq, label %.body.i, !dbg !278627

bb.gq:                                            ; preds = %.body178.i
  fence acquire, !dbg !278628
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs) #36
          to label %.body.i unwind label %bb.lu, !dbg !278629, !noalias !277795

bb.gr:                                            ; preds = %bb.go
  %i.pm = load i64, ptr %i.bp, align 8, !dbg !278630, !range !4199, !noalias !277796, !noundef !3778 ; 2 uses
  %.not120.i = icmp eq i64 %i.pm, 18, !dbg !278630
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !278631
  %i.po = load ptr, ptr %i.pn, align 8, !dbg !278631, !noalias !277796 ; 9 uses
  br i1 %.not120.i, label %bb.gt, label %bb.gs, !dbg !278632

bb.gs:                                            ; preds = %bb.gr
  %.sroa.698.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !278633
  %.sroa.40.16.copyload135 = load ptr, ptr %.sroa.698.0..sroa_idx.i, align 8, !dbg !278633, !noalias !277789
  %.sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !278633
  %.sroa.47.sroa.0.0.copyload177 = load i64, ptr %.sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx, align 8, !dbg !278633, !noalias !277789
  %.sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32, !dbg !278633
  %.sroa.47.sroa.24.sroa.0.0.copyload221 = load i64, ptr %.sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !278633, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !278633
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload283 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278633, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48, !dbg !278633
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload305 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278633, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56, !dbg !278633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.698.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278633, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !278634, !noalias !277796
  %i.pp = ptrtoint ptr %i.po to i64, !dbg !278635
  br label %bb.lv, !dbg !278636

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !278634, !noalias !277796
  call void @llvm.experimental.noalias.scope.decl(metadata !277915), !dbg !278637
  call void @llvm.experimental.noalias.scope.decl(metadata !277916), !dbg !278637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !278638, !noalias !277917
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 80, !dbg !278639
  %i.pr = load ptr, ptr %i.pq, align 8, !dbg !278639, !alias.scope !277916, !noalias !277795, !nonnull !3778, !noundef !3778 ; 3 uses
  %i.ps = atomicrmw add ptr %i.pr, i64 1 monotonic, align 8, !dbg !278640, !noalias !277921
  %i.pt = icmp slt i64 %i.ps, 0, !dbg !278641
  br i1 %i.pt, label %bb.gv, label %bb.gu, !dbg !278641

bb.gu:                                            ; preds = %bb.gt
  store ptr %i.pr, ptr %i.y, align 8, !dbg !278642, !noalias !277917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !278643, !noalias !277917
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 88, !dbg !278644
  %i.pv = load ptr, ptr %i.pu, align 8, !dbg !278644, !alias.scope !277916, !noalias !277795, !noundef !3778 ; 4 uses
  %.not.i175.i = icmp eq ptr %i.pv, null, !dbg !278644
  br i1 %.not.i175.i, label %bb.gx, label %bb.gw, !dbg !278645

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.trap(), !dbg !278646
  unreachable, !dbg !278646

bb.gw:                                            ; preds = %bb.gu
  %i.pw = atomicrmw add ptr %i.pv, i64 1 monotonic, align 8, !dbg !278647, !noalias !277921
  %i.px = icmp slt i64 %i.pw, 0, !dbg !278648
  br i1 %i.px, label %bb.gy, label %bb.gx, !dbg !278648

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  store ptr %i.pv, ptr %i.x, align 8, !dbg !278649, !noalias !277917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !278650, !noalias !277917
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 96, !dbg !278651
  %i.pz = load ptr, ptr %i.py, align 8, !dbg !278651, !alias.scope !277916, !noalias !277795, !noundef !3778 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.pz, null, !dbg !278651 ; 2 uses
  br i1 %.not7.i.i, label %bb.ha, label %bb.gz, !dbg !278652

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.trap(), !dbg !278653
  unreachable, !dbg !278653

bb.gz:                                            ; preds = %bb.gx
  %i.qa = atomicrmw add ptr %i.pz, i64 1 monotonic, align 8, !dbg !278654, !noalias !277921
  %i.qb = icmp slt i64 %i.qa, 0, !dbg !278655
  br i1 %i.qb, label %bb.hb, label %bb.ha, !dbg !278655

bb.ha:                                            ; preds = %bb.gz, %bb.gx
  store ptr %i.pz, ptr %i.w, align 8, !dbg !278656, !noalias !277917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !278657, !noalias !277917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !278658, !noalias !277917
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc8IpcFieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.po)
          to label %bb.hg unwind label %bb.hf, !dbg !278658, !noalias !277929

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.trap(), !dbg !278659
  unreachable, !dbg !278659

bb.hc:                                            ; preds = %bb.hh, %bb.hf
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i176.i, %bb.hh ], [ %i.qe, %bb.hf ] ; 2 uses
  br i1 %.not7.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit.i.i, label %bb.hd, !dbg !278660

bb.hd:                                            ; preds = %bb.hc
  %i.qc = atomicrmw add ptr %i.pz, i64 -1 release, align 8, !dbg !278661, !noalias !277930
  %i.qd = icmp eq i64 %i.qc, 1, !dbg !278662
  br i1 %i.qd, label %bb.he, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !278662

bb.he:                                            ; preds = %bb.hd
  fence acquire, !dbg !278663
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.hn, !dbg !278664, !noalias !277929

bb.hf:                                            ; preds = %bb.ha
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hg:                                            ; preds = %bb.ha
  %i.qf = getelementptr inbounds nuw i8, ptr %i.po, i64 24, !dbg !278658
  %i.qg = load i8, ptr %i.qf, align 8, !dbg !278658, !range !3829, !alias.scope !277916, !noalias !277795, !noundef !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !278658, !noalias !277917
  %i.qh = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !278658
  store i8 %i.qg, ptr %i.qh, align 8, !dbg !278658, !noalias !277917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !278658, !noalias !277917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !278665, !noalias !277917
  %i.qi = getelementptr inbounds nuw i8, ptr %i.po, i64 32, !dbg !278665
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qi)
          to label %bb.hj unwind label %bb.hi, !dbg !278665, !noalias !277929

bb.hh:                                            ; preds = %bb.hl, %bb.hi
  %.pn.i176.i = phi { ptr, i32 } [ %i.qm, %bb.hl ], [ %i.qj, %bb.hi ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc9IpcSchemaECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.v) #30
          to label %bb.hc unwind label %bb.hn, !dbg !278666, !noalias !277929

end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_4mmap15MmapBytesReaderEL_EEINtNtB9_6shared9SerReaderB10_E6finishCseeLknQCOKOd_13polars_python:bb.a
          to label %.body102.i.i unwind label %bb.je, !dbg !278844, !noalias !277944

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit112.i.i: ; preds = %bb.kg, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !278715, !noalias !277941
  %i.vk = load i8, ptr %i.sc, align 1, !dbg !278846, !range !4216, !alias.scope !277971, !noalias !277796, !noundef !3778
  %cond.i105.i.i = icmp eq i8 %i.vk, -40, !dbg !278846
  br i1 %cond.i105.i.i, label %bb.kd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i, !dbg !278846, !prof !4090

bb.kd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit112.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i unwind label %bb.kk, !dbg !278847, !noalias !277944

bb.ke:                                            ; preds = %bb.ka
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.kg unwind label %bb.kf, !dbg !278848, !noalias !277944

bb.kf:                                            ; preds = %bb.ke
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body98.i.i unwind label %bb.kh, !dbg !278849, !noalias !277944

bb.kg:                                            ; preds = %bb.ke
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit112.i.i unwind label %bb.hu, !dbg !278850, !noalias !277944

bb.kh:                                            ; preds = %bb.kf
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278848, !noalias !277944
  unreachable, !dbg !278848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.kk, %bb.ht, %.body98.i.i
  %.pn88.pn.i.i = phi { ptr, i32 } [ %i.vr, %bb.kk ], [ %.pn88.i.i, %bb.ht ], [ %.pn88.i.i, %.body98.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277972), !dbg !278851
  %i.vn = load ptr, ptr %i.r, align 8, !dbg !278852, !alias.scope !277972, !noalias !277941, !noundef !3778 ; 2 uses
  %i.vo = icmp eq ptr %i.vn, null, !dbg !278852
  br i1 %i.vo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i, label %bb.ki, !dbg !278852

bb.ki:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i
  %i.vp = atomicrmw add ptr %i.vn, i64 -1 release, align 8, !dbg !278853, !noalias !277973
  %i.vq = icmp eq i64 %i.vp, 1, !dbg !278854
  br i1 %i.vq, label %bb.kj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !278854

bb.kj:                                            ; preds = %bb.ki
  fence acquire, !dbg !278855
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.je, !dbg !278856, !noalias !277944

bb.kk:                                            ; preds = %bb.kn, %bb.kd
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i: ; preds = %bb.kd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit112.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !277974), !dbg !278851
  %i.vs = load ptr, ptr %i.r, align 8, !dbg !278857, !alias.scope !277974, !noalias !277941, !noundef !3778 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null, !dbg !278857
  br i1 %i.vt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i, label %bb.kl, !dbg !278857

bb.kl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i
  %i.vu = atomicrmw add ptr %i.vs, i64 -1 release, align 8, !dbg !278858, !noalias !277975
  %i.vv = icmp eq i64 %i.vu, 1, !dbg !278859
  br i1 %i.vv, label %.invoke.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i, !dbg !278859

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.km, %bb.kj, %bb.ki, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i
  %.pn88.pn.pn.i.i = phi { ptr, i32 } [ %i.vw, %bb.km ], [ %.pn88.pn.i.i, %bb.kj ], [ %.pn88.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i.i ], [ %.pn88.pn.i.i, %bb.ki ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6reader10FileReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.bo) #30
          to label %.body178.i unwind label %bb.je, !dbg !278851, !noalias !277944

bb.km:                                            ; preds = %.invoke.i.i
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i: ; preds = %.invoke.i.i, %bb.ko, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i, %bb.kl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i
  %.sroa.16.i.sroa.9.sroa.9.sroa.0.1 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0.copyload330, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.2, %.invoke.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0.copyload330, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.16.i.sroa.9.sroa.9.sroa.9.1 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0.copyload333, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.2, %.invoke.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0.copyload333, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.16.i.sroa.9.sroa.0.1 = phi i64 [ %.sroa.16.i.sroa.9.sroa.0.0.copyload241, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.16.i.sroa.9.sroa.0.2, %.invoke.i.i ], [ %.sroa.16.i.sroa.9.sroa.0.0.copyload241, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.16.i.sroa.9.sroa.0.0, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.16.i.sroa.0.1 = phi i64 [ %.sroa.16.i.sroa.0.0.copyload206, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.16.i.sroa.0.2, %.invoke.i.i ], [ %.sroa.16.i.sroa.0.0.copyload206, %bb.kl ], [ %.sroa.16.i.sroa.0.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.16.i.sroa.0.0, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.8.copyload279.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.14.2.i, %.invoke.i.i ], [ %.sroa.14.8.copyload279.i, %bb.kl ], [ %.sroa.14.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.14.0.i, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.8272.1.i = phi i64 [ %.sroa.8272.8.copyload275.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.8272.2.i, %.invoke.i.i ], [ %.sroa.8272.8.copyload275.i, %bb.kl ], [ %.sroa.8272.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.8272.0.i, %bb.ko ], !dbg !278840 ; 3 uses
  %.sroa.0.1.i = phi i64 [ 18, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit107.i.i ], [ %.sroa.0.2.i, %.invoke.i.i ], [ 18, %bb.kl ], [ %.sroa.0.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i ], [ %.sroa.0.0.i, %bb.ko ], !dbg !278840 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6reader10FileReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.bo)
          to label %bb.kq unwind label %bb.gp, !dbg !278851, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !278715, !noalias !277941
  %i.vx = load i8, ptr %i.sc, align 1, !dbg !278860, !range !4216, !alias.scope !277976, !noalias !277796, !noundef !3778
  %cond.i116.i.i = icmp eq i8 %i.vx, -40, !dbg !278860
  br i1 %cond.i116.i.i, label %bb.kn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i, !dbg !278860, !prof !4090

bb.kn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i unwind label %bb.kk, !dbg !278861, !noalias !277944

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i: ; preds = %bb.kn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !277977), !dbg !278851
  %i.vy = load ptr, ptr %i.r, align 8, !dbg !278862, !alias.scope !277977, !noalias !277941, !noundef !3778 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, null, !dbg !278862
  br i1 %i.vz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i, label %bb.ko, !dbg !278862

bb.ko:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit118.i.i
  %i.wa = atomicrmw add ptr %i.vy, i64 -1 release, align 8, !dbg !278863, !noalias !277978
  %i.wb = icmp eq i64 %i.wa, 1, !dbg !278864
  br i1 %i.wb, label %.invoke.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i, !dbg !278864

.invoke.i.i:                                      ; preds = %bb.ko, %bb.kl
  %.sroa.16.i.sroa.9.sroa.9.sroa.0.2 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0.copyload330, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.0, %bb.ko ], !dbg !278840
  %.sroa.16.i.sroa.9.sroa.9.sroa.9.2 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0.copyload333, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.0, %bb.ko ], !dbg !278840
  %.sroa.16.i.sroa.9.sroa.0.2 = phi i64 [ %.sroa.16.i.sroa.9.sroa.0.0.copyload241, %bb.kl ], [ %.sroa.16.i.sroa.9.sroa.0.0, %bb.ko ], !dbg !278840
  %.sroa.16.i.sroa.0.2 = phi i64 [ %.sroa.16.i.sroa.0.0.copyload206, %bb.kl ], [ %.sroa.16.i.sroa.0.0, %bb.ko ], !dbg !278840
  %.sroa.14.2.i = phi ptr [ %.sroa.14.8.copyload279.i, %bb.kl ], [ %.sroa.14.0.i, %bb.ko ], !dbg !278840
  %.sroa.8272.2.i = phi i64 [ %.sroa.8272.8.copyload275.i, %bb.kl ], [ %.sroa.8272.0.i, %bb.ko ], !dbg !278840
  %.sroa.0.2.i = phi i64 [ 18, %bb.kl ], [ %.sroa.0.0.i, %bb.ko ], !dbg !278840
  fence acquire, !dbg !278865
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i unwind label %bb.km, !dbg !278866, !noalias !277944

.thread.i181.i:                                   ; preds = %bb.jv, %bb.ju, %bb.js, %.thread4.i.i, %bb.jm, %.body102.thread.i.i, %.body102.i.i
  %.pn863.i.i = phi { ptr, i32 } [ %.pn86.i.i, %.body102.i.i ], [ %i.va, %bb.js ], [ %.pn847.i.i, %.thread4.i.i ], [ %i.uv, %bb.jm ], [ %i.vd, %bb.ju ], [ %i.ve, %bb.jv ], [ %lpad.loopexit.i.i, %.body102.thread.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.q) #30
          to label %.body98.i.i unwind label %bb.je, !dbg !278715, !noalias !277944

bb.kp:                                            ; preds = %bb.hw
  unreachable

bb.kq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEECseeLknQCOKOd_13polars_python.exit120.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !278867, !noalias !277796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !278867, !noalias !277796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !278868, !noalias !277796
  %.not121.i = icmp eq i64 %.sroa.0.1.i, 18, !dbg !278869
  br i1 %.not121.i, label %bb.ks, label %bb.kr, !dbg !278870

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.i.sroa.9.sroa.9.sroa.12, i64 16, i1 false), !dbg !278871, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.sroa.9.sroa.9.sroa.12), !dbg !278872
  br label %bb.lv, !dbg !278873

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.sroa.9.sroa.9.sroa.12), !dbg !278872
  call void @llvm.experimental.noalias.scope.decl(metadata !277979), !dbg !278623
  call void @llvm.experimental.noalias.scope.decl(metadata !277980), !dbg !278874
  %i.wc = load ptr, ptr %i.bs, align 8, !dbg !278875, !alias.scope !277981, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.wd = atomicrmw add ptr %i.wc, i64 -1 release, align 8, !dbg !278876, !noalias !277982
  %i.we = icmp eq i64 %i.wd, 1, !dbg !278877
  br i1 %i.we, label %bb.kt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit193.i, !dbg !278877

bb.kt:                                            ; preds = %bb.ks
  fence acquire, !dbg !278878
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit193.i unwind label %bb.fs, !dbg !278879, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit193.i: ; preds = %bb.kt, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !278623, !noalias !277796
  %i.wf = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !278557
  br i1 %i.wf, label %bb.kx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i, !dbg !278557

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i: ; preds = %bb.ky, %bb.kx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !278557, !noalias !277796
  %i.wg = load i64, ptr %i.nn, align 8, !dbg !278880, !range !3914, !alias.scope !277983, !noundef !3778
  %i.wh = icmp eq i64 %i.wg, -9223372036854775808, !dbg !278880
  br i1 %i.wh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit.i, label %bb.ku, !dbg !278880

bb.ku:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.kv, !dbg !278881, !noalias !277795

bb.kv:                                            ; preds = %bb.ku
  %i.wi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nn)
          to label %.body194.i unwind label %bb.kw, !dbg !278882, !noalias !277795

bb.kw:                                            ; preds = %bb.kv
  %i.wj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278881, !noalias !277795
  unreachable, !dbg !278881

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ku
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.kz, !dbg !278883, !noalias !277795

bb.kx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit193.i
  call void @llvm.experimental.noalias.scope.decl(metadata !277984), !dbg !278557
  call void @llvm.experimental.noalias.scope.decl(metadata !277985), !dbg !278884
  %i.wk = load ptr, ptr %i.bv, align 8, !dbg !278885, !alias.scope !277986, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.wl = atomicrmw add ptr %i.wk, i64 -1 release, align 8, !dbg !278886, !noalias !277987
  %i.wm = icmp eq i64 %i.wl, 1, !dbg !278887
  br i1 %i.wm, label %bb.ky, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i, !dbg !278887

bb.ky:                                            ; preds = %bb.kx
  fence acquire, !dbg !278888
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i unwind label %bb.f, !dbg !278889, !noalias !277795

bb.kz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i.i
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.body194.i, !dbg !278156

.body194.i:                                       ; preds = %bb.kz, %bb.kv
  %eh.lpad-body195.i = phi { ptr, i32 } [ %i.wn, %bb.kz ], [ %i.wi, %bb.kv ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.wo) #30
          to label %.body199.i unwind label %bb.lu, !dbg !278156, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit198.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !278156 ; 4 uses
  %i.wq = load i64, ptr %i.wp, align 8, !dbg !278890, !range !3914, !alias.scope !277988, !noundef !3778
  %i.wr = icmp eq i64 %i.wq, -9223372036854775808, !dbg !278890
  br i1 %i.wr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i, label %bb.la, !dbg !278890

bb.la:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.lb, !dbg !278891, !noalias !277795

bb.lb:                                            ; preds = %bb.la
  %i.ws = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wp)
          to label %.body199.i unwind label %bb.lc, !dbg !278892, !noalias !277795

bb.lc:                                            ; preds = %bb.lb
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278891, !noalias !277795
  unreachable, !dbg !278891

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.la
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.ld, !dbg !278893, !noalias !277795

.body199.i:                                       ; preds = %bb.ld, %bb.lb, %.body194.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body195.i, %.body194.i ], [ %i.wv, %bb.ld ], [ %i.ws, %bb.lb ]
  %i.wu = getelementptr inbounds nuw i8, ptr %i.cg, i64 224, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.wu) #30
          to label %.body203.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.ld:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i.i
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %.body199.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.cg, i64 247, !dbg !278894
  %i.wx = load i8, ptr %i.ww, align 1, !dbg !278894, !range !4216, !alias.scope !277989, !noundef !3778
  switch i8 %i.wx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i
    i8 -40, label %bb.le
  ], !dbg !278894, !prof !4217

bb.le:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.cg, i64 224, !dbg !278156
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.wy)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.lf, !dbg !278895, !noalias !277795

bb.lf:                                            ; preds = %bb.le
  %i.wz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.cg, i64 248, !dbg !278896 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277990), !dbg !278896
  call void @llvm.experimental.noalias.scope.decl(metadata !277991), !dbg !278897
  call void @llvm.experimental.noalias.scope.decl(metadata !277992), !dbg !278898
  %i.xb = load ptr, ptr %i.xa, align 8, !dbg !278899, !alias.scope !277993, !nonnull !3778, !noundef !3778
  %i.xc = atomicrmw add ptr %i.xb, i64 -1 release, align 8, !dbg !278900, !noalias !277994
  %i.xd = icmp eq i64 %i.xc, 1, !dbg !278901
  br i1 %i.xd, label %bb.lg, label %.body203.i, !dbg !278901

bb.lg:                                            ; preds = %bb.lf
  fence acquire, !dbg !278902
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.xa) #36
          to label %.body203.i unwind label %bb.li, !dbg !278903, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.le, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.cg, i64 248, !dbg !278896 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277995), !dbg !278896
  call void @llvm.experimental.noalias.scope.decl(metadata !277996), !dbg !278904
  call void @llvm.experimental.noalias.scope.decl(metadata !277997), !dbg !278905
  %i.xf = load ptr, ptr %i.xe, align 8, !dbg !278906, !alias.scope !277998, !nonnull !3778, !noundef !3778
  %i.xg = atomicrmw add ptr %i.xf, i64 -1 release, align 8, !dbg !278907, !noalias !277999
  %i.xh = icmp eq i64 %i.xg, 1, !dbg !278908
  br i1 %i.xh, label %bb.lh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i, !dbg !278908

bb.lh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i
  fence acquire, !dbg !278909
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.xe) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.lj, !dbg !278910, !noalias !277795

bb.li:                                            ; preds = %bb.lg
  %i.xi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278896, !noalias !277795
  unreachable, !dbg !278896

.body203.i:                                       ; preds = %bb.lj, %bb.lg, %bb.lf, %.body199.i
  %.pn123.i = phi { ptr, i32 } [ %.pn.i, %.body199.i ], [ %i.xj, %bb.lj ], [ %i.wz, %bb.lg ], [ %i.wz, %bb.lf ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.db) #30
          to label %.body205.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.lj:                                            ; preds = %bb.lh
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.lh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit.i
  %i.xk = load i64, ptr %i.db, align 8, !dbg !278911, !range !3914, !alias.scope !278000, !noundef !3778
  %i.xl = icmp eq i64 %i.xk, -9223372036854775808, !dbg !278911
  br i1 %i.xl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit.i, label %bb.lk, !dbg !278911

bb.lk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.ll, !dbg !278912, !noalias !277795

bb.ll:                                            ; preds = %bb.lk
  %i.xm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %.body205.i unwind label %bb.lm, !dbg !278913, !noalias !277795

bb.lm:                                            ; preds = %bb.ll
  %i.xn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278912, !noalias !277795
  unreachable, !dbg !278912

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.lk
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.lo, !dbg !278914, !noalias !277795

.body205.i:                                       ; preds = %bb.lo, %bb.ll, %.body203.i
  %.pn125.i = phi { ptr, i32 } [ %.pn123.i, %.body203.i ], [ %i.xr, %bb.lo ], [ %i.xm, %bb.ll ] ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.cg, i64 112, !dbg !278156 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !dbg !278915, !range !3914, !alias.scope !278001, !noundef !3778
  %i.xq = icmp eq i64 %i.xp, -9223372036854775808, !dbg !278915
  br i1 %i.xq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i, label %bb.ln, !dbg !278915

bb.ln:                                            ; preds = %.body205.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.xo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.lu, !dbg !278915, !noalias !277795

bb.lo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %.body205.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit.i
  %i.xs = getelementptr inbounds nuw i8, ptr %i.cg, i64 112, !dbg !278156 ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !dbg !278916, !range !3914, !alias.scope !278002, !noundef !3778
  %i.xu = icmp eq i64 %i.xt, -9223372036854775808, !dbg !278916
  br i1 %i.xu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit210.i, label %bb.lp, !dbg !278916

bb.lp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.xs)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit210.i unwind label %bb.ls, !dbg !278916, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.ls, %bb.ln, %.body205.i
  %.pn127.i = phi { ptr, i32 } [ %i.ya, %bb.ls ], [ %.pn125.i, %bb.ln ], [ %.pn125.i, %.body205.i ] ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.cg, i64 312, !dbg !278156 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278003), !dbg !278156
  %i.xw = load ptr, ptr %i.xv, align 8, !dbg !278917, !alias.scope !278004, !noundef !3778 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null, !dbg !278917
  br i1 %i.xx, label %.body, label %bb.lq, !dbg !278917

bb.lq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i
  %i.xy = atomicrmw add ptr %i.xw, i64 -1 release, align 8, !dbg !278918, !noalias !278005
  %i.xz = icmp eq i64 %i.xy, 1, !dbg !278919
  br i1 %i.xz, label %bb.lr, label %.body, !dbg !278919

bb.lr:                                            ; preds = %bb.lq
  fence acquire, !dbg !278920
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xv) #36
          to label %.body unwind label %bb.lu, !dbg !278921, !noalias !277795

bb.ls:                                            ; preds = %bb.lp
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit210.i: ; preds = %bb.lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.cg, i64 312, !dbg !278156 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278006), !dbg !278156
  %i.yc = load ptr, ptr %i.yb, align 8, !dbg !278922, !alias.scope !278007, !noundef !3778 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, null, !dbg !278922
  br i1 %i.yd, label %.thread406, label %bb.lt, !dbg !278922

bb.lt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit210.i
  %i.ye = atomicrmw add ptr %i.yc, i64 -1 release, align 8, !dbg !278923, !noalias !278008
  %i.yf = icmp eq i64 %i.ye, 1, !dbg !278924
  br i1 %i.yf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i, label %.thread406, !dbg !278924

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i: ; preds = %bb.nq, %bb.lt
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.6 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.1, %bb.lt ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.5, %bb.nq ], !dbg !278925
  %.sroa.47.sroa.24.sroa.24.sroa.0.6 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.1, %bb.lt ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.5, %bb.nq ], !dbg !278925
  %.sroa.47.sroa.24.sroa.0.6 = phi i64 [ %.sroa.16.i.sroa.9.sroa.0.1, %bb.lt ], [ %.sroa.47.sroa.24.sroa.0.5, %bb.nq ], !dbg !278925
  %.sroa.47.sroa.0.6 = phi i64 [ %.sroa.16.i.sroa.0.1, %bb.lt ], [ %.sroa.47.sroa.0.5, %bb.nq ], !dbg !278925
  %.sroa.40.6 = phi ptr [ %.sroa.14.1.i, %bb.lt ], [ %.sroa.40.5, %bb.nq ], !dbg !278926
  %.sroa.24.6 = phi i64 [ %.sroa.8272.1.i, %bb.lt ], [ %.sroa.24.5, %bb.nq ], !dbg !278926
  %.sroa.0.6 = phi i64 [ 18, %bb.lt ], [ %.sroa.0.5, %bb.nq ], !dbg !278926
  %.sink.i = phi ptr [ %i.yb, %bb.lt ], [ %i.abq, %bb.nq ]
  fence acquire, !dbg !278927
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i) #36
          to label %bb.oh unwind label %bb.og, !dbg !278928

bb.lu:                                            ; preds = %bb.ob, %bb.nz, %bb.nx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit266.i, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %.thread.i.a, %bb.nr, %.body160.thread.i, %bb.no, %bb.nk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i, %.body235.i, %.body221.i, %.body227.i.a, %bb.mq, %bb.mf, %bb.lr, %bb.ln, %.body203.i, %.body199.i, %.body194.i, %bb.gq
  %i.yg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278929, !noalias !277795
  unreachable, !dbg !278929

bb.lv:                                            ; preds = %bb.kr, %bb.gs
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.8 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.1, %bb.kr ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload305, %bb.gs ], !dbg !278009 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.8 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.1, %bb.kr ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload283, %bb.gs ], !dbg !278009 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.8 = phi i64 [ %.sroa.16.i.sroa.9.sroa.0.1, %bb.kr ], [ %.sroa.47.sroa.24.sroa.0.0.copyload221, %bb.gs ], !dbg !278009 ; 2 uses
  %.sroa.47.sroa.0.8 = phi i64 [ %.sroa.16.i.sroa.0.1, %bb.kr ], [ %.sroa.47.sroa.0.0.copyload177, %bb.gs ], !dbg !278009 ; 2 uses
  %.sroa.40.8 = phi ptr [ %.sroa.14.1.i, %bb.kr ], [ %.sroa.40.16.copyload135, %bb.gs ], !dbg !278009 ; 2 uses
  %.sroa.24.8 = phi i64 [ %.sroa.8272.1.i, %bb.kr ], [ %i.pp, %bb.gs ], !dbg !278930 ; 2 uses
  %.sroa.0.8 = phi i64 [ %.sroa.0.1.i, %bb.kr ], [ %i.pm, %bb.gs ], !dbg !278930 ; 2 uses
  %.sroa.049.6.i = phi i8 [ 0, %bb.kr ], [ 1, %bb.gs ], !dbg !278157 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278010), !dbg !278623
  call void @llvm.experimental.noalias.scope.decl(metadata !278011), !dbg !278931
  %i.yh = load ptr, ptr %i.bs, align 8, !dbg !278932, !alias.scope !278012, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.yi = atomicrmw add ptr %i.yh, i64 -1 release, align 8, !dbg !278933, !noalias !278013
  %i.yj = icmp eq i64 %i.yi, 1, !dbg !278934
  br i1 %i.yj, label %bb.lw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit216.i, !dbg !278934

bb.lw:                                            ; preds = %bb.lv
  fence acquire, !dbg !278935
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit216.i unwind label %bb.fs, !dbg !278936, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit216.i: ; preds = %bb.lw, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !278623, !noalias !277796
  %i.yk = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !278557
  br i1 %i.yk, label %bb.lx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i, !dbg !278557

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i: ; preds = %bb.ly, %bb.lx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit216.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !278557, !noalias !277796
  %i.yl = trunc nuw i8 %.sroa.049.6.i to i1, !dbg !278156
  br i1 %i.yl, label %bb.gb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i, !dbg !278156

bb.lx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit216.i
  call void @llvm.experimental.noalias.scope.decl(metadata !278014), !dbg !278557
  call void @llvm.experimental.noalias.scope.decl(metadata !278015), !dbg !278937
  %i.ym = load ptr, ptr %i.bv, align 8, !dbg !278938, !alias.scope !278016, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.yn = atomicrmw add ptr %i.ym, i64 -1 release, align 8, !dbg !278939, !noalias !278017
  %i.yo = icmp eq i64 %i.yn, 1, !dbg !278940
  br i1 %i.yo, label %bb.ly, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i, !dbg !278940

bb.ly:                                            ; preds = %bb.lx
  fence acquire, !dbg !278941
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i unwind label %bb.f, !dbg !278942, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.5 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278872 ; 3 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.5 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278872 ; 3 uses
  %.sroa.47.sroa.24.sroa.0.5 = phi i64 [ %.sroa.47.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.47.sroa.24.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.47.sroa.24.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278872 ; 3 uses
  %.sroa.47.sroa.0.5 = phi i64 [ %.sroa.47.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.47.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.47.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278872 ; 3 uses
  %.sroa.40.5 = phi ptr [ %.sroa.40.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.40.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.40.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278943 ; 3 uses
  %.sroa.24.5 = phi i64 [ %.sroa.24.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.24.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.24.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278943 ; 3 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.0.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ %.sroa.0.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278943 ; 3 uses
  %.sroa.049.9.i = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python.exit218.i ], !dbg !278155 ; 8 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !278156 ; 4 uses
  %i.yq = load i64, ptr %i.yp, align 8, !dbg !278944, !range !3914, !alias.scope !278019, !noundef !3778
  %i.yr = icmp eq i64 %i.yq, -9223372036854775808, !dbg !278944
  br i1 %i.yr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit224.i, label %bb.lz, !dbg !278944

bb.lz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i220.i unwind label %bb.ma, !dbg !278945, !noalias !277795

bb.ma:                                            ; preds = %bb.lz
  %i.ys = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp)
          to label %.body221.i unwind label %bb.mb, !dbg !278946, !noalias !277795

bb.mb:                                            ; preds = %bb.ma
  %i.yt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278945, !noalias !277795
  unreachable, !dbg !278945

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i220.i: ; preds = %bb.lz
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit224.i unwind label %bb.mu, !dbg !278947, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.ge, %bb.gd, %bb.fi, %bb.fh
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.4 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.7, %bb.gd ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.7, %bb.ge ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.3, %bb.fh ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.3, %bb.fi ], !dbg !278020 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.4 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.7, %bb.gd ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.7, %bb.ge ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.3, %bb.fh ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.3, %bb.fi ], !dbg !278020 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.4 = phi i64 [ %.sroa.47.sroa.24.sroa.0.7, %bb.gd ], [ %.sroa.47.sroa.24.sroa.0.7, %bb.ge ], [ %.sroa.47.sroa.24.sroa.0.3, %bb.fh ], [ %.sroa.47.sroa.24.sroa.0.3, %bb.fi ], !dbg !278020 ; 2 uses
  %.sroa.47.sroa.0.4 = phi i64 [ %.sroa.47.sroa.0.7, %bb.gd ], [ %.sroa.47.sroa.0.7, %bb.ge ], [ %.sroa.47.sroa.0.3, %bb.fh ], [ %.sroa.47.sroa.0.3, %bb.fi ], !dbg !278020 ; 2 uses
  %.sroa.40.4 = phi ptr [ %.sroa.40.7, %bb.gd ], [ %.sroa.40.7, %bb.ge ], [ %.sroa.40.3, %bb.fh ], [ %.sroa.40.3, %bb.fi ], !dbg !278020 ; 2 uses
  %.sroa.24.4 = phi i64 [ %.sroa.24.7, %bb.gd ], [ %.sroa.24.7, %bb.ge ], [ %.sroa.24.3, %bb.fh ], [ %.sroa.24.3, %bb.fi ], !dbg !278948 ; 2 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.7, %bb.gd ], [ %.sroa.0.7, %bb.ge ], [ %.sroa.0.3, %bb.fh ], [ %.sroa.0.3, %bb.fi ], !dbg !278948 ; 2 uses
  %i.yu = load i64, ptr %i.ct, align 8, !dbg !278949, !range !3914, !alias.scope !278021, !noundef !3778
  %i.yv = icmp eq i64 %i.yu, -9223372036854775808, !dbg !278949
  br i1 %i.yv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i, label %bb.mc, !dbg !278949

bb.mc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i unwind label %bb.md, !dbg !278950, !noalias !277795

bb.md:                                            ; preds = %bb.mc
  %i.yw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %.body227.i.a unwind label %bb.me, !dbg !278951, !noalias !277795

bb.me:                                            ; preds = %bb.md
  %i.yx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278950, !noalias !277795
  unreachable, !dbg !278950

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i: ; preds = %bb.mc
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i unwind label %bb.mt, !dbg !278952, !noalias !277795

.body.thread.i:                                   ; preds = %bb.gl, %.thread314.i, %.body.i
  %.pn129321.i = phi { ptr, i32 } [ %eh.lpad-body164.i.a, %.thread314.i ], [ %.pn129.i, %.body.i ], [ %i.pg, %bb.gl ] ; 2 uses
  %.sroa.049.2320.i = phi i8 [ 1, %.thread314.i ], [ %.sroa.049.2.i, %.body.i ], [ 1, %bb.gl ] ; 2 uses
  %.sroa.052.2319.i = phi i8 [ 1, %.thread314.i ], [ %.sroa.052.2.i, %.body.i ], [ 1, %bb.gl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278022), !dbg !278557
  call void @llvm.experimental.noalias.scope.decl(metadata !278023), !dbg !278953
  %i.yy = load ptr, ptr %i.bv, align 8, !dbg !278954, !alias.scope !278024, !noalias !277796, !nonnull !3778, !noundef !3778
  %i.yz = atomicrmw add ptr %i.yy, i64 -1 release, align 8, !dbg !278955, !noalias !278025
  %i.za = icmp eq i64 %i.yz, 1, !dbg !278956
  br i1 %i.za, label %bb.mf, label %.body157.i, !dbg !278956

bb.mf:                                            ; preds = %.body.thread.i
  fence acquire, !dbg !278957
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv) #36
          to label %.body157.i unwind label %bb.lu, !dbg !278958, !noalias !277795

bb.mg:                                            ; preds = %bb.h
  %i.zb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !278163
  %i.zc = load i64, ptr %i.zb, align 8, !dbg !278959, !alias.scope !277789, !noundef !3778
  br label %bb.mi, !dbg !278960

bb.mh:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !278961, !noalias !277796
  %i.zd = getelementptr inbounds nuw i8, ptr %i.cg, i64 296, !dbg !278962
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file13get_row_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.zd)
          to label %bb.mj unwind label %bb.f, !dbg !278961, !noalias !277795

bb.mi:                                            ; preds = %bb.ml, %bb.mg
  %.sroa.01.0.i = phi i64 [ %i.zc, %bb.mg ], [ %i.zk, %bb.ml ], !dbg !278157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !278963, !noalias !277796
  %i.ze = getelementptr inbounds nuw i8, ptr %i.bz, i64 24, !dbg !278964 ; 2 uses
  store i64 %.sroa.01.0.i, ptr %i.ze, align 8, !dbg !278964, !noalias !277796
  store i64 0, ptr %i.bz, align 8, !dbg !278964, !noalias !277796
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !278964 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.465.0..sroa_idx.i, align 8, !dbg !278964, !noalias !277796
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !278964 ; 2 uses
  store i64 0, ptr %.sroa.566.0..sroa_idx.i, align 8, !dbg !278964, !noalias !277796
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40, !dbg !278964 ; 2 uses
  store i32 3, ptr %.sroa.468.0..sroa_idx.i, align 8, !dbg !278964, !noalias !277796
  %i.zf = getelementptr inbounds nuw i8, ptr %i.cg, i64 264, !dbg !278965 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.cg, i64 287, !dbg !278965
  %i.zh = load i8, ptr %i.zg, align 1, !dbg !278965, !range !4216, !alias.scope !277789, !noundef !3778 ; 2 uses
  %.not132.i = icmp eq i8 %i.zh, -38, !dbg !278965
  br i1 %.not132.i, label %bb.mn, label %bb.mm, !dbg !278966

bb.mj:                                            ; preds = %bb.mh
  %i.zi = load i64, ptr %i.ca, align 8, !dbg !278967, !range !4199, !noalias !277796, !noundef !3778 ; 2 uses
  %.not131.i = icmp eq i64 %i.zi, 18, !dbg !278967
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8, !dbg !278968
  %i.zk = load i64, ptr %i.zj, align 8, !dbg !278968, !noalias !277796 ; 2 uses
  br i1 %.not131.i, label %bb.ml, label %bb.mk, !dbg !278969

bb.mk:                                            ; preds = %bb.mj
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !278970
  %.sroa.40.16.copyload136 = load ptr, ptr %.sroa.660.0..sroa_idx.i, align 8, !dbg !278970, !noalias !277789
  %.sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24, !dbg !278970
  %.sroa.47.sroa.0.0.copyload178 = load i64, ptr %.sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx, align 8, !dbg !278970, !noalias !277789
  %.sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32, !dbg !278970
  %.sroa.47.sroa.24.sroa.0.0.copyload222 = load i64, ptr %.sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !278970, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 40, !dbg !278970
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload284 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278970, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 48, !dbg !278970
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload306 = load i64, ptr %.sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !278970, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 56, !dbg !278970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.sroa.24.0..sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.16..sroa.660.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !278970, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !278971, !noalias !277796
  br label %bb.ff, !dbg !278538

bb.ml:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !278971, !noalias !277796
  br label %bb.mi, !dbg !278960

bb.mm:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !278972, !noalias !277796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !278973, !noalias !277796
  %i.zl = icmp eq i8 %i.zh, -40, !dbg !278974
  br i1 %i.zl, label %bb.mo, label %bb.mp, !dbg !278974

bb.mn:                                            ; preds = %bb.ms, %bb.mi
  %.sroa.47.sroa.24.sroa.0.0.copyload229 = phi i64 [ %.sroa.47.sroa.24.sroa.0.0.copyload229.pre, %bb.ms ], [ %.sroa.01.0.i, %bb.mi ], !dbg !278975
  %.sroa.47.sroa.0.0.copyload183 = phi i64 [ %.sroa.47.sroa.0.0.copyload183.pre, %bb.ms ], [ 0, %bb.mi ], !dbg !278975
  %.sroa.40.8.copyload131 = phi ptr [ %.sroa.40.8.copyload131.pre, %bb.ms ], [ inttoptr (i64 16 to ptr), %bb.mi ], !dbg !278975
  %.sroa.24.8.copyload115 = phi i64 [ %.sroa.24.8.copyload115.pre, %bb.ms ], [ 0, %bb.mi ], !dbg !278975
  %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.8..sroa_idx141.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32, !dbg !278975
  %.sroa.47.sroa.24.sroa.24.sroa.0.0.copyload294 = load i64, ptr %.sroa.47.sroa.24.sroa.24.0..sroa.47.sroa.24.0..sroa.47.8..sroa_idx141.sroa_idx.sroa_idx, align 8, !dbg !278975, !noalias !277789
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.0.copyload317 = load i64, ptr %.sroa.468.0..sroa_idx.i, align 8, !dbg !278975, !noalias !277789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !278976, !noalias !277796
  br label %bb.ff, !dbg !278977

bb.mo:                                            ; preds = %bb.mm
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zf)
          to label %bb.mr unwind label %bb.mq, !dbg !278978, !noalias !277795

bb.mp:                                            ; preds = %bb.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.zf, i64 24, i1 false), !dbg !278979, !noalias !277795
  br label %bb.mr, !dbg !278980

bb.mq:                                            ; preds = %bb.mr, %bb.mo
  %i.zm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.bz) #30
          to label %.thread.i.a unwind label %bb.lu, !dbg !278976, !noalias !277795

bb.mr:                                            ; preds = %bb.mp, %bb.mo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !dbg !278981, !noalias !277796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !278982, !noalias !277796
  %i.zn = getelementptr inbounds nuw i8, ptr %i.cg, i64 288, !dbg !278983
  %i.zo = load i32, ptr %i.zn, align 8, !dbg !278983, !alias.scope !277789, !noundef !3778
  %i.zp = invoke noundef nonnull align 8 ptr @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame18with_row_index_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.by, i32 noundef 1, i32 %i.zo)
          to label %bb.ms unwind label %bb.mq, !dbg !278984, !noalias !277795 ; 0 uses

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !278985, !noalias !277796
  %.sroa.24.8.copyload115.pre = load i64, ptr %i.bz, align 8, !dbg !278975, !noalias !277789
  %.sroa.40.8.copyload131.pre = load ptr, ptr %.sroa.465.0..sroa_idx.i, align 8, !dbg !278975, !noalias !277789
  %.sroa.47.sroa.0.0.copyload183.pre = load i64, ptr %.sroa.566.0..sroa_idx.i, align 8, !dbg !278975, !noalias !277789
  %.sroa.47.sroa.24.sroa.0.0.copyload229.pre = load i64, ptr %i.ze, align 8, !dbg !278975, !noalias !277789
  br label %bb.mn, !dbg !278986

.body227.i.a:                                     ; preds = %.body160.thread.i, %bb.mt, %bb.md
  %.pn135.i = phi { ptr, i32 } [ %i.yw, %bb.md ], [ %eh.lpad-body161326.i, %.body160.thread.i ], [ %i.zr, %bb.mt ]
  %i.zq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.zq) #30
          to label %.body221.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.mt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECseeLknQCOKOd_13polars_python.exit.i226.i
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %.body227.i.a

.body221.i:                                       ; preds = %bb.mu, %.body227.i.a, %bb.ma
  %.sroa.049.12.i = phi i8 [ 1, %.body227.i.a ], [ %.sroa.049.9.i, %bb.ma ], [ %.sroa.049.9.i, %bb.mu ], !dbg !278155
  %.pn137.i = phi { ptr, i32 } [ %.pn135.i, %.body227.i.a ], [ %i.ys, %bb.ma ], [ %i.zt, %bb.mu ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.zs) #30
          to label %.body235.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.mu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i220.i
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %.body221.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit224.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i220.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python.exit170.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !278156 ; 4 uses
  %i.zv = load i64, ptr %i.zu, align 8, !dbg !278987, !range !3914, !alias.scope !278027, !noundef !3778
  %i.zw = icmp eq i64 %i.zv, -9223372036854775808, !dbg !278987
  br i1 %i.zw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i, label %bb.mv, !dbg !278987

bb.mv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit224.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i234.i unwind label %bb.mw, !dbg !278988, !noalias !277795

bb.mw:                                            ; preds = %bb.mv
  %i.zx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu)
          to label %.body235.i unwind label %bb.mx, !dbg !278989, !noalias !277795

bb.mx:                                            ; preds = %bb.mw
  %i.zy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278988, !noalias !277795
  unreachable, !dbg !278988

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i234.i: ; preds = %bb.mv
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i unwind label %bb.my, !dbg !278990, !noalias !277795

.body235.i:                                       ; preds = %bb.my, %bb.mw, %.body221.i
  %.sroa.049.13.i = phi i8 [ %.sroa.049.12.i, %.body221.i ], [ %.sroa.049.9.i, %bb.mw ], [ %.sroa.049.9.i, %bb.my ], !dbg !278155
  %.pn139.i = phi { ptr, i32 } [ %.pn137.i, %.body221.i ], [ %i.zx, %bb.mw ], [ %i.aaa, %bb.my ]
  %i.zz = getelementptr inbounds nuw i8, ptr %i.cg, i64 224, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.zz) #30
          to label %.body242.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.my:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i234.i
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body235.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i234.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python.exit224.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.cg, i64 247, !dbg !278991
  %i.aac = load i8, ptr %i.aab, align 1, !dbg !278991, !range !4216, !alias.scope !278028, !noundef !3778
  switch i8 %i.aac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i240.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i
    i8 -40, label %bb.mz
  ], !dbg !278991, !prof !4217

bb.mz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i
  %i.aad = getelementptr inbounds nuw i8, ptr %i.cg, i64 224, !dbg !278156
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aad)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i240.i unwind label %bb.na, !dbg !278992, !noalias !277795

bb.na:                                            ; preds = %bb.mz
  %i.aae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.cg, i64 248, !dbg !278993 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278029), !dbg !278993
  call void @llvm.experimental.noalias.scope.decl(metadata !278030), !dbg !278994
  call void @llvm.experimental.noalias.scope.decl(metadata !278031), !dbg !278995
  %i.aag = load ptr, ptr %i.aaf, align 8, !dbg !278996, !alias.scope !278032, !nonnull !3778, !noundef !3778
  %i.aah = atomicrmw add ptr %i.aag, i64 -1 release, align 8, !dbg !278997, !noalias !278033
  %i.aai = icmp eq i64 %i.aah, 1, !dbg !278998
  br i1 %i.aai, label %bb.nb, label %.body242.i, !dbg !278998

bb.nb:                                            ; preds = %bb.na
  fence acquire, !dbg !278999
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aaf) #36
          to label %.body242.i unwind label %bb.nd, !dbg !279000, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i240.i: ; preds = %bb.mz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.cg, i64 248, !dbg !278993 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278034), !dbg !278993
  call void @llvm.experimental.noalias.scope.decl(metadata !278035), !dbg !279001
  call void @llvm.experimental.noalias.scope.decl(metadata !278036), !dbg !279002
  %i.aak = load ptr, ptr %i.aaj, align 8, !dbg !279003, !alias.scope !278037, !nonnull !3778, !noundef !3778
  %i.aal = atomicrmw add ptr %i.aak, i64 -1 release, align 8, !dbg !279004, !noalias !278038
  %i.aam = icmp eq i64 %i.aal, 1, !dbg !279005
  br i1 %i.aam, label %bb.nc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i, !dbg !279005

bb.nc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i240.i
  fence acquire, !dbg !279006
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aaj) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i unwind label %bb.ne, !dbg !279007, !noalias !277795

bb.nd:                                            ; preds = %bb.nb
  %i.aan = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !278993, !noalias !277795
  unreachable, !dbg !278993

.body242.i:                                       ; preds = %bb.ne, %bb.nb, %bb.na, %.body235.i
  %.sroa.049.14.i = phi i8 [ %.sroa.049.13.i, %.body235.i ], [ %.sroa.049.9.i, %bb.na ], [ %.sroa.049.9.i, %bb.nb ], [ %.sroa.049.9.i, %bb.ne ], !dbg !278155
  %.pn141.i = phi { ptr, i32 } [ %.pn139.i, %.body235.i ], [ %i.aae, %bb.na ], [ %i.aae, %bb.nb ], [ %i.aar, %bb.ne ] ; 2 uses
  %i.aao = trunc nuw i8 %.sroa.049.14.i to i1, !dbg !278156
  %i.aap = getelementptr inbounds nuw i8, ptr %i.cg, i64 287
  %i.aaq = load i8, ptr %i.aap, align 1, !range !4216
  %cond.i261.i = icmp eq i8 %i.aaq, -40
  %or.cond438 = select i1 %i.aao, i1 %cond.i261.i, i1 false, !dbg !278156, !prof !4943
  br i1 %or.cond438, label %bb.nr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i, !dbg !278156, !prof !4943

bb.ne:                                            ; preds = %bb.nc
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.body242.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i: ; preds = %bb.nc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i240.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python.exit238.i
  %i.aas = trunc nuw i8 %.sroa.049.9.i to i1, !dbg !278156
  %i.aat = getelementptr inbounds nuw i8, ptr %i.cg, i64 287
  %i.aau = load i8, ptr %i.aat, align 1, !range !4216
  %cond.i.i = icmp eq i8 %i.aau, -40
  %or.cond436 = select i1 %i.aas, i1 %cond.i.i, i1 false, !dbg !278156, !prof !4943
  br i1 %or.cond436, label %bb.ni, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i, !dbg !278156, !prof !4943

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.ni, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.cg, i64 88, !dbg !278156 ; 4 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !dbg !279008, !range !3914, !alias.scope !278039, !noundef !3778
  %i.aax = icmp eq i64 %i.aaw, -9223372036854775808, !dbg !279008
  br i1 %i.aax, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit250.i, label %bb.nf, !dbg !279008

bb.nf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aav)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i246.i unwind label %bb.ng, !dbg !279009, !noalias !277795

bb.ng:                                            ; preds = %bb.nf
  %i.aay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aav)
          to label %.body247.i unwind label %bb.nh, !dbg !279010, !noalias !277795

bb.nh:                                            ; preds = %bb.ng
  %i.aaz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !279009, !noalias !277795
  unreachable, !dbg !279009

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i246.i: ; preds = %bb.nf
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aav)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit250.i unwind label %bb.nl, !dbg !279011, !noalias !277795

bb.ni:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit244.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.cg, i64 264, !dbg !278156
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aba)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.nj, !dbg !279012, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i: ; preds = %bb.nr, %bb.nj, %.body242.i
  %.pn143.i = phi { ptr, i32 } [ %i.abc, %bb.nj ], [ %.pn141.i, %.body242.i ], [ %.pn141.i, %bb.nr ]
  %i.abb = getelementptr inbounds nuw i8, ptr %i.cg, i64 88, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.abb) #30
          to label %.body247.i unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nj:                                            ; preds = %bb.ni
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i

.body247.i:                                       ; preds = %bb.nl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i, %bb.ng
  %.pn145.i = phi { ptr, i32 } [ %.pn143.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i ], [ %i.abg, %bb.nl ], [ %i.aay, %bb.ng ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.cg, i64 112, !dbg !278156 ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 8, !dbg !279013, !range !3914, !alias.scope !278040, !noundef !3778
  %i.abf = icmp eq i64 %i.abe, -9223372036854775808, !dbg !279013
  br i1 %i.abf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a, label %bb.nk, !dbg !279013

bb.nk:                                            ; preds = %.body247.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.abd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a unwind label %bb.lu, !dbg !279013, !noalias !277795

bb.nl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i246.i
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %.body247.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit250.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECseeLknQCOKOd_13polars_python.exit.i.i246.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.cg, i64 112, !dbg !278156 ; 2 uses
  %i.abi = load i64, ptr %i.abh, align 8, !dbg !279014, !range !3914, !alias.scope !278041, !noundef !3778
  %i.abj = icmp eq i64 %i.abi, -9223372036854775808, !dbg !279014
  br i1 %i.abj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i, label %bb.nm, !dbg !279014

bb.nm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit250.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.abh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i unwind label %bb.np, !dbg !279014, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a: ; preds = %bb.np, %bb.nk, %.body247.i
  %.pn147.i = phi { ptr, i32 } [ %i.abp, %bb.np ], [ %.pn145.i, %bb.nk ], [ %.pn145.i, %.body247.i ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cg, i64 312, !dbg !278156 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278042), !dbg !278156
  %i.abl = load ptr, ptr %i.abk, align 8, !dbg !279015, !alias.scope !278043, !noundef !3778 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null, !dbg !279015
  br i1 %i.abm, label %.body, label %bb.nn, !dbg !279015

bb.nn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a
  %i.abn = atomicrmw add ptr %i.abl, i64 -1 release, align 8, !dbg !279016, !noalias !278044
  %i.abo = icmp eq i64 %i.abn, 1, !dbg !279017
  br i1 %i.abo, label %bb.no, label %.body, !dbg !279017

bb.no:                                            ; preds = %bb.nn
  fence acquire, !dbg !279018
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abk) #36
          to label %.body unwind label %bb.lu, !dbg !279019, !noalias !277795

bb.np:                                            ; preds = %bb.nm
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i: ; preds = %bb.nm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python.exit250.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cg, i64 312, !dbg !278156 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278045), !dbg !278156
  %i.abr = load ptr, ptr %i.abq, align 8, !dbg !279020, !alias.scope !278046, !noundef !3778 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, null, !dbg !279020
  br i1 %i.abs, label %bb.oh, label %bb.nq, !dbg !279020

bb.nq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i
  %i.abt = atomicrmw add ptr %i.abr, i64 -1 release, align 8, !dbg !279021, !noalias !278047
  %i.abu = icmp eq i64 %i.abt, 1, !dbg !279022
  br i1 %i.abu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i, label %bb.oh, !dbg !279022

.body160.thread.i:                                ; preds = %bb.gg, %bb.gf, %bb.fk, %bb.fj
  %eh.lpad-body161326.i = phi { ptr, i32 } [ %i.mz, %bb.fj ], [ %i.op, %bb.gf ], [ %i.op, %bb.gg ], [ %i.mz, %bb.fk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.ct) #30
          to label %.body227.i.a unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nr:                                            ; preds = %.body242.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.cg, i64 264, !dbg !278156
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.abv)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit263.i unwind label %bb.lu, !dbg !279023, !noalias !277795

.thread.i.a:                                      ; preds = %bb.mq, %bb.ez, %bb.ey, %bb.ex, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i, %bb.n, %.body157.i
  %.pn133312.i = phi { ptr, i32 } [ %.pn133.i, %.body157.i ], [ %i.zm, %bb.mq ], [ %.pn776.i.i, %bb.ex ], [ %.pn776.i.i, %bb.ez ], [ %.pn75.i.i, %bb.n ], [ %.pn7512.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i ], [ %.pn776.i.i, %bb.ey ]
  %.sroa.049.0310.i = phi i8 [ %.sroa.049.0.i, %.body157.i ], [ 1, %bb.mq ], [ 1, %bb.ex ], [ 1, %bb.ez ], [ 1, %bb.n ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECseeLknQCOKOd_13polars_python.exit101.i.i ], [ 1, %bb.ey ]
  %i.abw = getelementptr inbounds nuw i8, ptr %i.cg, i64 296, !dbg !278156
  %.val.i = load ptr, ptr %i.abw, align 8, !dbg !278156, !alias.scope !277789
  %i.abx = getelementptr inbounds nuw i8, ptr %i.cg, i64 304, !dbg !278156
  %.val150.i = load ptr, ptr %i.abx, align 8, !dbg !278156, !alias.scope !277789, !nonnull !3778, !align !4055, !noundef !3778
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EECseeLknQCOKOd_13polars_python(ptr %.val.i, ptr nonnull %.val150.i) #30
          to label %bb.nt unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.ns:                                            ; preds = %bb.nt, %.body157.i
  %.pn133313.i = phi { ptr, i32 } [ %.pn133.i, %.body157.i ], [ %.pn133312.i, %bb.nt ] ; 3 uses
  %.sroa.049.0311.i = phi i8 [ %.sroa.049.0.i, %.body157.i ], [ %.sroa.049.0310.i, %bb.nt ]
  %i.aby = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.aby) #30
          to label %bb.nu unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nt:                                            ; preds = %.thread.i.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.ct) #30
          to label %bb.ns unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nu:                                            ; preds = %bb.ns
  %i.abz = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.abz) #30
          to label %bb.nv unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nv:                                            ; preds = %bb.nu
  %i.aca = getelementptr inbounds nuw i8, ptr %i.cg, i64 224, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.aca) #30
          to label %bb.nw unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nw:                                            ; preds = %bb.nv
  %i.acb = trunc nuw i8 %.sroa.049.0311.i to i1, !dbg !278156
  %i.acc = getelementptr inbounds nuw i8, ptr %i.cg, i64 287
  %i.acd = load i8, ptr %i.acc, align 1, !range !4216
  %cond.i264.i = icmp eq i8 %i.acd, -40
  %or.cond440 = select i1 %i.acb, i1 %cond.i264.i, i1 false, !dbg !278156, !prof !4943
  br i1 %or.cond440, label %bb.nx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit266.i, !dbg !278156, !prof !4943

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit266.i: ; preds = %bb.nx, %bb.nw
  %i.ace = getelementptr inbounds nuw i8, ptr %i.cg, i64 88, !dbg !278156
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.ace) #30
          to label %bb.ny unwind label %bb.lu, !dbg !278156, !noalias !277795

bb.nx:                                            ; preds = %bb.nw
  %i.acf = getelementptr inbounds nuw i8, ptr %i.cg, i64 264, !dbg !278156
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit266.i unwind label %bb.lu, !dbg !279024, !noalias !277795

bb.ny:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit266.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.cg, i64 112, !dbg !278156 ; 2 uses
  %i.ach = load i64, ptr %i.acg, align 8, !dbg !279025, !range !3914, !alias.scope !278048, !noundef !3778
  %i.aci = icmp eq i64 %i.ach, -9223372036854775808, !dbg !279025
  br i1 %i.aci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i, label %bb.nz, !dbg !279025

bb.nz:                                            ; preds = %bb.ny
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.acg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i unwind label %bb.lu, !dbg !279025, !noalias !277795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i: ; preds = %bb.nz, %bb.ny
  %i.acj = getelementptr inbounds nuw i8, ptr %i.cg, i64 312, !dbg !278156 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278049), !dbg !278156
  %i.ack = load ptr, ptr %i.acj, align 8, !dbg !279026, !alias.scope !278050, !noundef !3778 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, null, !dbg !279026
  br i1 %i.acl, label %.body, label %bb.oa, !dbg !279026

bb.oa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i
  %i.acm = atomicrmw add ptr %i.ack, i64 -1 release, align 8, !dbg !279027, !noalias !278051
  %i.acn = icmp eq i64 %i.acm, 1, !dbg !279028
  br i1 %i.acn, label %bb.ob, label %.body, !dbg !279028

bb.ob:                                            ; preds = %bb.oa
  fence acquire, !dbg !279029
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acj) #36
          to label %.body unwind label %bb.lu, !dbg !279030, !noalias !277795

bb.oc:                                            ; preds = %bb.c
  %i.aco = load i64, ptr %i.ck, align 8, !dbg !279031, !range !4199, !noundef !3778 ; 2 uses
  %.not63 = icmp eq i64 %i.aco, 18, !dbg !279031
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !279032
  %i.acq = load ptr, ptr %i.acp, align 8, !dbg !279032 ; 2 uses
  br i1 %.not63, label %bb.oe, label %bb.od, !dbg !279033

bb.od:                                            ; preds = %bb.oc
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !279034
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !279035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.630.0..sroa_idx, i64 56, i1 false), !dbg !279034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !279036
  store i64 %i.aco, ptr %0, align 8, !dbg !279035
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !279035
  store ptr %i.acq, ptr %.sroa.232.0..sroa_idx, align 8, !dbg !279035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !279037
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file9IpcReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBN_4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(328) %1), !dbg !279037
  br label %bb.po, !dbg !279037

bb.oe:                                            ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !279036
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 80, !dbg !279038
  %i.acs = load ptr, ptr %i.acr, align 8, !dbg !279038, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.act = atomicrmw add ptr %i.acs, i64 1 monotonic, align 8, !dbg !279039
  %i.acu = icmp slt i64 %i.act, 0, !dbg !279040
  br i1 %i.acu, label %bb.of, label %bb.e, !dbg !279040

bb.of:                                            ; preds = %bb.oe
  tail call void @llvm.trap(), !dbg !279041
  unreachable, !dbg !279041

.body:                                            ; preds = %bb.og, %bb.ob, %bb.oa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i, %bb.no, %bb.nn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a, %bb.lr, %bb.lq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i, %.body82
  %.sroa.024.0 = phi i1 [ %.not65, %.body82 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i ], [ true, %bb.lq ], [ true, %bb.lr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a ], [ true, %bb.nn ], [ true, %bb.no ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i ], [ true, %bb.oa ], [ true, %bb.ob ], [ true, %bb.og ], !dbg !279042 ; 3 uses
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %.body82 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i ], [ 1, %bb.lq ], [ 1, %bb.lr ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a ], [ 1, %bb.nn ], [ 1, %bb.no ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i ], [ 1, %bb.oa ], [ 1, %bb.ob ], [ 1, %bb.og ], !dbg !279043
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body82 ], [ %.pn127.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit.i ], [ %.pn127.i, %bb.lq ], [ %.pn127.i, %bb.lr ], [ %.pn147.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit253.i.a ], [ %.pn147.i, %bb.nn ], [ %.pn147.i, %bb.no ], [ %.pn133313.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit268.i ], [ %.pn133313.i, %bb.oa ], [ %.pn133313.i, %bb.ob ], [ %i.acx, %bb.og ] ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ci, i64 23, !dbg !279044
  %i.acw = load i8, ptr %i.acv, align 1, !dbg !279044, !range !4216, !noundef !3778 ; 2 uses
  %.not70 = icmp eq i8 %i.acw, -38, !dbg !279044
  %cond = icmp eq i8 %.sroa.022.0, 0, !dbg !279044
  %or.cond77 = or i1 %cond, %.not70, !dbg !279044
  br i1 %or.cond77, label %.body79, label %bb.pw, !dbg !279044

bb.og:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread406:                                       ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit210.i, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !279046
  br label %bb.oo, !dbg !279047

bb.oh:                                            ; preds = %bb.nq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.15 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.5, %bb.nq ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278925 ; 2 uses
  %.sroa.47.sroa.24.sroa.24.sroa.0.15 = phi i64 [ %.sroa.47.sroa.24.sroa.24.sroa.0.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.5, %bb.nq ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278925 ; 2 uses
  %.sroa.47.sroa.24.sroa.0.15 = phi i64 [ %.sroa.47.sroa.24.sroa.0.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.47.sroa.24.sroa.0.5, %bb.nq ], [ %.sroa.47.sroa.24.sroa.0.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278925 ; 2 uses
  %.sroa.47.sroa.0.15 = phi i64 [ %.sroa.47.sroa.0.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.47.sroa.0.5, %bb.nq ], [ %.sroa.47.sroa.0.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278925 ; 2 uses
  %.sroa.40.15 = phi ptr [ %.sroa.40.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.40.5, %bb.nq ], [ %.sroa.40.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278926 ; 2 uses
  %.sroa.24.15 = phi i64 [ %.sroa.24.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.24.5, %bb.nq ], [ %.sroa.24.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278926 ; 2 uses
  %.sroa.0.15 = phi i64 [ %.sroa.0.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECseeLknQCOKOd_13polars_python.exit255.i ], [ %.sroa.0.5, %bb.nq ], [ %.sroa.0.6, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECseeLknQCOKOd_13polars_python.exit214.sink.split.i ], !dbg !278926 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !279045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !279046
  %.not64 = icmp eq i64 %.sroa.0.15, 18, !dbg !279048
  br i1 %.not64, label %bb.oo, label %bb.oi, !dbg !279047

bb.oi:                                            ; preds = %bb.oh
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !279049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24, i64 16, i1 false), !dbg !279050
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24), !dbg !279051
  store i64 %.sroa.0.15, ptr %0, align 8, !dbg !279049
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !279049
  store i64 %.sroa.24.15, ptr %.sroa.246.0..sroa_idx, align 8, !dbg !279049
  %.sroa.246.sroa.2.0..sroa.246.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !279049
  store ptr %.sroa.40.15, ptr %.sroa.246.sroa.2.0..sroa.246.0..sroa_idx.sroa_idx, align 8, !dbg !279049
  %.sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !279049
  store i64 %.sroa.47.sroa.0.15, ptr %.sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx, align 8, !dbg !279049
  %.sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !279049
  store i64 %.sroa.47.sroa.24.sroa.0.15, ptr %.sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !279049
  %.sroa.246.sroa.3.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !279049
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.0.15, ptr %.sroa.246.sroa.3.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !279049
  %.sroa.246.sroa.3.sroa.2.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !279049
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.15, ptr %.sroa.246.sroa.3.sroa.2.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.sroa.2.0..sroa.246.sroa.3.sroa.2.0..sroa.246.sroa.3.0..sroa.246.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !279049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !279052
  %i.acy = getelementptr inbounds nuw i8, ptr %i.ci, i64 23, !dbg !279053
  %i.acz = load i8, ptr %i.acy, align 1, !dbg !279053, !range !4216, !alias.scope !278066, !noundef !3778
  switch i8 %i.acz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit
    i8 -40, label %bb.oj
  ], !dbg !279053, !prof !4217

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ci)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.ok, !dbg !279054

bb.ok:                                            ; preds = %bb.oj
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !279055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278067), !dbg !279055
  call void @llvm.experimental.noalias.scope.decl(metadata !278068), !dbg !279056
  call void @llvm.experimental.noalias.scope.decl(metadata !278069), !dbg !279057
  %i.adc = load ptr, ptr %i.adb, align 8, !dbg !279058, !alias.scope !278070, !nonnull !3778, !noundef !3778
  %i.add = atomicrmw add ptr %i.adc, i64 -1 release, align 8, !dbg !279059, !noalias !278071
  %i.ade = icmp eq i64 %i.add, 1, !dbg !279060
  br i1 %i.ade, label %bb.ol, label %.body79, !dbg !279060

bb.ol:                                            ; preds = %bb.ok
  fence acquire, !dbg !279061
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.adb) #36
          to label %.body79 unwind label %bb.on, !dbg !279062

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.oj, %bb.oi
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !279055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278072), !dbg !279055
  call void @llvm.experimental.noalias.scope.decl(metadata !278073), !dbg !279063
  call void @llvm.experimental.noalias.scope.decl(metadata !278074), !dbg !279064
  %i.adg = load ptr, ptr %i.adf, align 8, !dbg !279065, !alias.scope !278075, !nonnull !3778, !noundef !3778
  %i.adh = atomicrmw add ptr %i.adg, i64 -1 release, align 8, !dbg !279066, !noalias !278076
  %i.adi = icmp eq i64 %i.adh, 1, !dbg !279067
  br i1 %i.adi, label %bb.om, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit, !dbg !279067

bb.om:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i
  fence acquire, !dbg !279068
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.adf) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.pp, !dbg !279069

bb.on:                                            ; preds = %bb.ol
  %i.adj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !279055
  unreachable, !dbg !279055

bb.oo:                                            ; preds = %.thread406, %bb.oh
  %.sroa.24.15420 = phi i64 [ %.sroa.8272.1.i, %.thread406 ], [ %.sroa.24.15, %bb.oh ]
  %.sroa.40.15419 = phi ptr [ %.sroa.14.1.i, %.thread406 ], [ %.sroa.40.15, %bb.oh ]
  %.sroa.47.sroa.0.15418 = phi i64 [ %.sroa.16.i.sroa.0.1, %.thread406 ], [ %.sroa.47.sroa.0.15, %bb.oh ]
  %.sroa.47.sroa.24.sroa.0.15417 = phi i64 [ %.sroa.16.i.sroa.9.sroa.0.1, %.thread406 ], [ %.sroa.47.sroa.24.sroa.0.15, %bb.oh ]
  %.sroa.47.sroa.24.sroa.24.sroa.0.15416 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.0.1, %.thread406 ], [ %.sroa.47.sroa.24.sroa.24.sroa.0.15, %bb.oh ]
  %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.15415 = phi i64 [ %.sroa.16.i.sroa.9.sroa.9.sroa.9.1, %.thread406 ], [ %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.15, %bb.oh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.24), !dbg !279051
  store i64 %.sroa.24.15420, ptr %i.ch, align 8, !dbg !279070
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !279070
  store ptr %.sroa.40.15419, ptr %.sroa.4151.0..sroa_idx, align 8, !dbg !279070
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16, !dbg !279070
  store i64 %.sroa.47.sroa.0.15418, ptr %.sroa.5152.0..sroa_idx, align 8, !dbg !279070
  %.sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24, !dbg !279070 ; 2 uses
  store i64 %.sroa.47.sroa.24.sroa.0.15417, ptr %.sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx, align 8, !dbg !279070
  %.sroa.5152.sroa.4.sroa.4.0..sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32, !dbg !279070
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.0.15416, ptr %.sroa.5152.sroa.4.sroa.4.0..sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !279070
  %.sroa.5152.sroa.4.sroa.4.sroa.4.0..sroa.5152.sroa.4.sroa.4.0..sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 40, !dbg !279070
  store i64 %.sroa.47.sroa.24.sroa.24.sroa.24.sroa.0.15415, ptr %.sroa.5152.sroa.4.sroa.4.sroa.4.0..sroa.5152.sroa.4.sroa.4.0..sroa.5152.sroa.4.0..sroa.5152.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !279070
  %i.adk = load i64, ptr %i.cj, align 8, !dbg !279071, !range !3914, !noundef !3778
  %.not65 = icmp eq i64 %i.adk, -9223372036854775808, !dbg !279071 ; 2 uses
  br i1 %.not65, label %bb.oq, label %bb.op, !dbg !279072

bb.op:                                            ; preds = %bb.oo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !279073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !dbg !279073
  %i.adl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !279074
  %i.adm = load ptr, ptr %i.adl, align 8, !dbg !279074, !nonnull !3778, !noundef !3778
  %i.adn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !279075
  %i.ado = load i64, ptr %i.adn, align 8, !dbg !279075, !noundef !3778
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io4hive27materialize_hive_partitionsNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2T_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.adm, i64 %i.ado)
          to label %bb.os unwind label %bb.or, !dbg !279076

bb.oq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit, %bb.oo
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ci, i64 23, !dbg !279077
  %i.adq = load i8, ptr %i.adp, align 1, !dbg !279077, !range !4216, !noundef !3778
  %.not66 = icmp eq i8 %i.adq, -38, !dbg !279077
  br i1 %.not66, label %bb.pd, label %bb.oy, !dbg !279078

bb.or:                                            ; preds = %bb.op
  %i.adr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.cf) #30
          to label %.body82 unwind label %bb.ox, !dbg !279079

bb.os:                                            ; preds = %bb.op
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.ou unwind label %bb.ot, !dbg !279080

bb.ot:                                            ; preds = %bb.os
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %.body82 unwind label %bb.ov, !dbg !279081

bb.ou:                                            ; preds = %bb.os
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit unwind label %bb.ow, !dbg !279082

bb.ov:                                            ; preds = %bb.ot
  %i.adt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !279080
  unreachable, !dbg !279080

.body82:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit, %bb.ph, %bb.ow, %bb.ot, %bb.or
  %.sroa.022.1 = phi i8 [ 1, %bb.ot ], [ 1, %bb.or ], [ %.sroa.022.2, %bb.ow ], [ 0, %bb.ph ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit ], !dbg !279043
  %.pn.pn = phi { ptr, i32 } [ %i.ads, %bb.ot ], [ %i.adr, %bb.or ], [ %i.adu, %bb.ow ], [ %.pn, %bb.ph ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.ch) #30
          to label %.body unwind label %bb.ox, !dbg !279052

bb.ow:                                            ; preds = %bb.pk, %bb.ou
  %.sroa.022.2 = phi i8 [ 0, %bb.pk ], [ 1, %bb.ou ], !dbg !279043
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %.body82

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !279079
  br label %bb.oq, !dbg !279083

bb.ox:                                            ; preds = %bb.py, %bb.px, %bb.pt, %bb.pn, %bb.ph, %bb.qa, %bb.pz, %bb.pf, %.body82, %bb.or
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !279084
  unreachable, !dbg !279084

bb.oy:                                            ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !279085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !dbg !279086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !279087
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !279087
  %i.adx = load ptr, ptr %i.adw, align 8, !dbg !279087, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ci, i64 32, !dbg !279087
  %i.adz = load i64, ptr %i.ady, align 8, !dbg !279087, !noundef !3778 ; 8 uses
  store ptr %i.adx, ptr %i.ce, align 8, !dbg !279087
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ce, i64 8, !dbg !279087
  store i64 %i.adz, ptr %i.aea, align 8, !dbg !279087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !278114
end_hunk_2
begin_hunk_3_@llvm.umax.i64
!277955 = !{!277130, !277127, !277125, !277061, !276362}
!277956 = !{!277139}
!277957 = !{!277139, !277061, !277060, !277059, !277058, !276362, !276341}
!277958 = !{!277139, !277061, !276362}
!277959 = !{!277145}
!277960 = !{!277147}
!277961 = !{!277150}
!277962 = !{!277150, !277147, !277145}
!277963 = !{!277150, !277147, !277145, !277061, !276362}
!277964 = !{!277159}
!277965 = !{!277161}
!277966 = !{!277164}
!277967 = !{!277164, !277161, !277159}
!277968 = !{!277164, !277161, !277159, !277061, !276362}
!277969 = !{!277178}
!277970 = !{!277184, !277061, !276362}
!277971 = !{!277201, !277058}
!277972 = !{!277212}
!277973 = !{!277217, !277215, !277212, !277061, !276362}
!277974 = !{!277224}
!277975 = !{!277229, !277227, !277224, !277061, !276362}
!277976 = !{!277235, !277058}
!277977 = !{!277243}
!277978 = !{!277248, !277246, !277243, !277061, !276362}
!277979 = !{!277260}
!277980 = !{!277262}
!277981 = !{!277262, !277260}
!277982 = !{!277262, !277260, !276362}
!277983 = !{!277271, !276341}
!277984 = !{!277277}
!277985 = !{!277279}
!277986 = !{!277279, !277277}
!277987 = !{!277279, !277277, !276362}
!277988 = !{!277288, !276341}
!277989 = !{!277295, !276341}
!277990 = !{!277302}
!277991 = !{!277304}
!277992 = !{!277307}
!277993 = !{!277307, !277304, !277302, !277310, !277295, !276341}
!277994 = !{!277307, !277304, !277302, !276362}
!277995 = !{!277318}
!277996 = !{!277320}
!277997 = !{!277323}
!277998 = !{!277323, !277320, !277318, !277310, !277295, !276341}
!277999 = !{!277323, !277320, !277318, !276362}
!278000 = !{!277334, !277332, !276341}
!278001 = !{!277344, !276341}
!278002 = !{!277347, !276341}
!278003 = !{!277350}
!278004 = !{!277350, !276341}
!278005 = !{!277355, !277353, !277350, !276362}
!278006 = !{!277362}
!278007 = !{!277362, !276341}
!278008 = !{!277367, !277365, !277362, !276362}
!278009 = !DILocation(line: 0, scope: !276963, inlinedAt: !276344)
!278010 = !{!277377}
!278011 = !{!277379}
!278012 = !{!277379, !277377}
!278013 = !{!277379, !277377, !276362}
!278014 = !{!277388}
!278015 = !{!277390}
!278016 = !{!277390, !277388}
!278017 = !{!277390, !277388, !276362}
!278018 = !DILexicalBlockFile(scope: !277400, file: !4483, discriminator: 2)
!278019 = !{!277403, !276341}
!278020 = !DILocation(line: 0, scope: !276363, inlinedAt: !276344)
!278021 = !{!277409, !276341}
!278022 = !{!277415}
!278023 = !{!277417}
!278024 = !{!277417, !277415}
!278025 = !{!277417, !277415, !276362}
!278026 = !DILexicalBlockFile(scope: !277425, file: !3943, discriminator: 0)
!278027 = !{!277441, !276341}
!278028 = !{!277448, !276341}
!278029 = !{!277455}
!278030 = !{!277457}
!278031 = !{!277460}
!278032 = !{!277460, !277457, !277455, !277463, !277448, !276341}
!278033 = !{!277460, !277457, !277455, !276362}
!278034 = !{!277471}
!278035 = !{!277473}
!278036 = !{!277476}
!278037 = !{!277476, !277473, !277471, !277463, !277448, !276341}
!278038 = !{!277476, !277473, !277471, !276362}
!278039 = !{!277487, !277485, !276341}
!278040 = !{!277503, !276341}
!278041 = !{!277506, !276341}
!278042 = !{!277509}
!278043 = !{!277509, !276341}
!278044 = !{!277514, !277512, !277509, !276362}
!278045 = !{!277521}
!278046 = !{!277521, !276341}
!278047 = !{!277526, !277524, !277521, !276362}
!278048 = !{!277544, !276341}
!278049 = !{!277547}
!278050 = !{!277547, !276341}
!278051 = !{!277552, !277550, !277547, !276362}
!278052 = !DILocation(line: 295, column: 13, scope: !276321)
!278053 = !DILexicalBlockFile(scope: !277562, file: !4483, discriminator: 2)
!278054 = !DILocation(line: 295, column: 13, scope: !278053)
!278055 = !DILexicalBlockFile(scope: !277564, file: !3856, discriminator: 2)
!278056 = !DILexicalBlockFile(scope: !276324, file: !3856, discriminator: 2)
!278057 = !DILocation(line: 295, column: 41, scope: !276321)
!278058 = !DILocation(line: 2394, column: 29, scope: !278056, inlinedAt: !278057)
!278059 = !DILocation(line: 2110, column: 27, scope: !278055, inlinedAt: !278058)
!278060 = !DILexicalBlockFile(scope: !276325, file: !3830, discriminator: 2)
!278061 = !DILocation(line: 2394, column: 44, scope: !278056, inlinedAt: !278057)
!278062 = !DILocation(line: 3162, column: 26, scope: !278060, inlinedAt: !278061)
!278063 = !DILocation(line: 304, column: 22, scope: !276339)
!278064 = !DILexicalBlockFile(scope: !277569, file: !4483, discriminator: 2)
!278065 = !DILocation(line: 304, column: 22, scope: !278064)
!278066 = !{!277572}
!278067 = !{!277579}
!278068 = !{!277581}
!278069 = !{!277584}
!278070 = !{!277584, !277581, !277579, !277587, !277572}
!278071 = !{!277584, !277581, !277579}
!278072 = !{!277595}
!278073 = !{!277597}
!278074 = !{!277600}
!278075 = !{!277600, !277597, !277595, !277587, !277572}
!278076 = !{!277600, !277597, !277595}
!278077 = !DILocation(line: 354, column: 80, scope: !277611)
!278078 = !DILocation(line: 1841, column: 76, scope: !277613, inlinedAt: !278077)
!278079 = !DILocation(line: 1942, column: 18, scope: !277614, inlinedAt: !278078)
!278080 = !DILocation(line: 296, column: 20, scope: !277615, inlinedAt: !278079)
!278081 = !DILocation(line: 609, column: 14, scope: !277616, inlinedAt: !278080)
!278082 = !DILexicalBlockFile(scope: !277623, file: !3856, discriminator: 2)
!278083 = !DILocation(line: 363, column: 53, scope: !277617)
!278084 = !DILocation(line: 49, column: 16, scope: !277622, inlinedAt: !278083)
!278085 = !DILocation(line: 4194, column: 10, scope: !278082, inlinedAt: !278084)
!278086 = !DILocation(line: 363, column: 62, scope: !277617)
!278087 = !DILocation(line: 778, column: 9, scope: !277628, inlinedAt: !278086)
!278088 = !DILocation(line: 154, column: 9, scope: !277629, inlinedAt: !278087)
!278089 = !DILocation(line: 57, column: 14, scope: !277630, inlinedAt: !278088)
!278090 = !DILocation(line: 2125, column: 9, scope: !277631, inlinedAt: !278089)
!278091 = !DINamespace(name: "{impl#9}", scope: !4273)
!278092 = !DINamespace(name: "{impl#27}", scope: !4210)
!278093 = !DINamespace(name: "{impl#85}", scope: !4210)
!278094 = !DILocation(line: 186, column: 29, scope: !277627, inlinedAt: !278090)
!278095 = !DIFile(filename: "src/repr/heap.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "0a35b08ae4c46775dd60a9bcc3619186")
!278096 = !DINamespace(name: "heap", scope: !4211)
!278097 = !DINamespace(name: "HeapBuffer", scope: !278096)
!278098 = !{!277652, !277651, !277649, !277648}
!278099 = !{!277652, !277649}
!278100 = !{!277651, !277649, !277648}
!278101 = !DIFile(filename: "src/repr/capacity.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "2be93deda079925c962bb96930d3290a")
!278102 = !DINamespace(name: "capacity", scope: !4211)
!278103 = !DINamespace(name: "Capacity", scope: !278102)
!278104 = !{!277663, !277652, !277649}
!278105 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!278106 = !{!277672}
!278107 = !{!277674}
!278108 = !{!277674, !277672}
!278109 = !DIFile(filename: "crates/polars-core/src/scalar/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afaa8de78d6e8bed9cdb0709099d518b")
!278110 = !DINamespace(name: "Scalar", scope: !5070)
!278111 = !DILocation(line: 361, column: 21, scope: !277617)
!278112 = !DILocation(line: 365, column: 24, scope: !277617)
!278113 = !DINamespace(name: "Column", scope: !4863)
!278114 = !DILocation(line: 359, column: 42, scope: !277617)
!278115 = !DINamespace(name: "ScalarColumn", scope: !4967)
!278116 = !DILocation(line: 69, column: 22, scope: !277685, inlinedAt: !278114)
!278117 = !{!277688}
!278118 = !{!277690}
!278119 = !{!277693}
!278120 = !{!277693, !277690, !277688}
!278121 = !{!277702}
!278122 = !{!277704}
!278123 = !{!277707}
!278124 = !{!277707, !277704, !277702}
!278125 = !{!277728, !277726, !277724, !277722}
!278126 = !{!277730}
!278127 = !{!277736}
!278128 = !{!277738}
!278129 = !{!277738, !277736}
!278130 = !{!277747}
!278131 = !{!277749}
!278132 = !{!277749, !277747}
!278133 = !{!277762}
!278134 = !{!277764}
!278135 = !{!277767}
!278136 = !{!277767, !277764, !277762}
!278137 = !DILocation(line: 292, column: 13, scope: !276321)
!278138 = !DILocation(line: 292, column: 55, scope: !276322)
!278139 = !DILocation(line: 292, column: 36, scope: !276322)
!278140 = !DILocation(line: 3937, column: 24, scope: !276323, inlinedAt: !277779)
!278141 = !DILocation(line: 2411, column: 12, scope: !276326, inlinedAt: !277777)
!278142 = !DILocation(line: 295, column: 18, scope: !276321)
!278143 = !DILocation(line: 2412, column: 13, scope: !276326, inlinedAt: !277777)
!278144 = !DILocation(line: 310, column: 9, scope: !276327, inlinedAt: !277781)
!278145 = !DILocation(line: 2428, column: 9, scope: !276328, inlinedAt: !277783)
!278146 = !DILocation(line: 299, column: 13, scope: !276331)
!278147 = !DILocation(line: 929, column: 22, scope: !276332, inlinedAt: !277785)
!278148 = !DILocation(line: 930, column: 49, scope: !276334, inlinedAt: !277785)
!278149 = !DILocation(line: 300, column: 13, scope: !276335)
!278150 = !DILocation(line: 929, column: 22, scope: !276336, inlinedAt: !277788)
!278151 = !DILocation(line: 930, column: 49, scope: !276338, inlinedAt: !277788)
!278152 = !DILocation(line: 304, column: 13, scope: !276339)
!278153 = !DILocation(line: 745, column: 15, scope: !276342, inlinedAt: !276345)
!278154 = !DILocation(line: 745, column: 9, scope: !276342, inlinedAt: !276345)
!278155 = !DILocation(line: 305, column: 13, scope: !276343, inlinedAt: !276344)
!278156 = !DILocation(line: 351, column: 9, scope: !276343, inlinedAt: !276344)
!278157 = !DILocation(line: 0, scope: !276343, inlinedAt: !276344)
!278158 = !DILocation(line: 664, column: 24, scope: !276347, inlinedAt: !276348)
!278159 = !DILocation(line: 3029, column: 37, scope: !276350, inlinedAt: !276355)
!278160 = !DILocation(line: 3029, column: 18, scope: !276350, inlinedAt: !276355)
!278161 = !DILocation(line: 3049, column: 9, scope: !276351, inlinedAt: !276354)
!278162 = !DILocation(line: 305, column: 16, scope: !276343, inlinedAt: !276344)
!278163 = !DILocation(line: 306, column: 50, scope: !276356, inlinedAt: !276344)
!278164 = !DILocation(line: 306, column: 40, scope: !276356, inlinedAt: !276344)
!278165 = !DILocation(line: 319, column: 16, scope: !276343, inlinedAt: !276344)
!278166 = !DILocation(line: 319, column: 32, scope: !276343, inlinedAt: !276344)
!278167 = !DILocation(line: 636, column: 18, scope: !277792, inlinedAt: !276361)
!278168 = !DILocation(line: 319, column: 44, scope: !276343, inlinedAt: !276344)
!278169 = !DILocation(line: 319, column: 56, scope: !276343, inlinedAt: !276344)
!278170 = !DILocation(line: 331, column: 27, scope: !276343, inlinedAt: !276344)
!278171 = !DILocation(line: 332, column: 17, scope: !276363, inlinedAt: !276344)
!278172 = !DILocation(line: 332, column: 26, scope: !276363, inlinedAt: !276344)
!278173 = !DILocation(line: 332, column: 31, scope: !276363, inlinedAt: !276344)
!278174 = !DILocation(line: 636, column: 18, scope: !277797, inlinedAt: !276366)
!278175 = !DILocation(line: 323, column: 32, scope: !276343, inlinedAt: !276344)
!278176 = !DILocation(line: 21, column: 27, scope: !276370, inlinedAt: !276371)
!278177 = !DILocation(line: 54, column: 5, scope: !276370, inlinedAt: !276371)
!278178 = !DILocation(line: 21, column: 15, scope: !276370, inlinedAt: !276371)
!278179 = !DILocation(line: 21, column: 9, scope: !276370, inlinedAt: !276371)
!278180 = !DILocation(line: 23, column: 21, scope: !276372, inlinedAt: !276371)
!278181 = !DILocation(line: 23, column: 33, scope: !276372, inlinedAt: !276371)
!278182 = !DILocation(line: 52, column: 21, scope: !276370, inlinedAt: !276371)
!278183 = !DILocation(line: 0, scope: !276370, inlinedAt: !276371)
!278184 = !DILocation(line: 810, column: 1, scope: !906, inlinedAt: !276375)
!278185 = !DILocation(line: 3956, column: 24, scope: !907, inlinedAt: !276383)
!278186 = !DILocation(line: 2814, column: 12, scope: !909, inlinedAt: !276381)
!278187 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !276384)
!278188 = !DILocation(line: 2857, column: 18, scope: !909, inlinedAt: !276381)
!278189 = !DILocation(line: 2173, column: 15, scope: !276385, inlinedAt: !276386)
!278190 = !DILocation(line: 0, scope: !276385, inlinedAt: !276386)
!278191 = !DILocation(line: 2173, column: 9, scope: !276385, inlinedAt: !276386)
!278192 = !DILocation(line: 2175, column: 17, scope: !276385, inlinedAt: !276386)
!278193 = !DILocation(line: 23, column: 67, scope: !276372, inlinedAt: !276371)
!278194 = !DILocation(line: 0, scope: !277805, inlinedAt: !276371)
!278195 = !DILocation(line: 24, column: 21, scope: !276387, inlinedAt: !276371)
!278196 = !DILocation(line: 25, column: 21, scope: !276387, inlinedAt: !276371)
!278197 = !DILocation(line: 25, column: 51, scope: !276387, inlinedAt: !276371)
!278198 = !DILocation(line: 428, column: 9, scope: !276388, inlinedAt: !276395)
!278199 = !DILocation(line: 99, column: 9, scope: !276396, inlinedAt: !276397)
!278200 = !DILocation(line: 0, scope: !276372, inlinedAt: !276371)
!278201 = !DILocation(line: 51, column: 13, scope: !276372, inlinedAt: !276371)
!278202 = !DILocation(line: 2173, column: 15, scope: !276398, inlinedAt: !276399)
!278203 = !DILocation(line: 0, scope: !276398, inlinedAt: !276399)
!278204 = !DILocation(line: 2173, column: 9, scope: !276398, inlinedAt: !276399)
!278205 = !DILocation(line: 25, column: 92, scope: !276387, inlinedAt: !276371)
!278206 = !DILocation(line: 25, column: 93, scope: !276387, inlinedAt: !276371)
!278207 = !DILocation(line: 0, scope: !277814, inlinedAt: !276371)
!278208 = !DILocation(line: 2174, column: 16, scope: !276398, inlinedAt: !276399)
!278209 = !DILocation(line: 25, column: 21, scope: !276401, inlinedAt: !276371)
!278210 = !DILocation(line: 27, column: 40, scope: !276403, inlinedAt: !276371)
!278211 = !DILocation(line: 27, column: 24, scope: !276403, inlinedAt: !276371)
!278212 = !DILocation(line: 29, column: 31, scope: !276404, inlinedAt: !276371)
!278213 = !DILocation(line: 614, column: 9, scope: !276405, inlinedAt: !276416)
!278214 = !DILocation(line: 1841, column: 86, scope: !276409, inlinedAt: !276412)
!278215 = !DILocation(line: 444, column: 20, scope: !276417, inlinedAt: !276422)
!278216 = !DILocation(line: 2428, column: 9, scope: !276419, inlinedAt: !276420)
!278217 = !DILocation(line: 33, column: 56, scope: !276423, inlinedAt: !276371)
!278218 = !DILocation(line: 33, column: 21, scope: !276402, inlinedAt: !276371)
!278219 = !DILocation(line: 33, column: 37, scope: !276423, inlinedAt: !276371)
!278220 = !DILocation(line: 0, scope: !276387, inlinedAt: !276371)
!278221 = !DILocation(line: 51, column: 13, scope: !276387, inlinedAt: !276371)
!278222 = !DILocation(line: 2173, column: 15, scope: !276424, inlinedAt: !276425)
!278223 = !DILocation(line: 0, scope: !276424, inlinedAt: !276425)
!278224 = !DILocation(line: 2173, column: 9, scope: !276424, inlinedAt: !276425)
!278225 = !DILocation(line: 2175, column: 17, scope: !276424, inlinedAt: !276425)
!278226 = !DILocation(line: 29, column: 69, scope: !276404, inlinedAt: !276371)
!278227 = !DILocation(line: 810, column: 1, scope: !357, inlinedAt: !276429)
!278228 = !DILocation(line: 810, column: 1, scope: !358, inlinedAt: !276430)
!278229 = !DILocation(line: 810, column: 1, scope: !359, inlinedAt: !276431)
!278230 = !DILocation(line: 810, column: 1, scope: !359, inlinedAt: !276432)
!278231 = !DILocation(line: 30, column: 21, scope: !276428, inlinedAt: !276371)
!278232 = !DILocation(line: 27, column: 17, scope: !276402, inlinedAt: !276371)
!278233 = !DILocation(line: 810, column: 1, scope: !276433, inlinedAt: !276434)
!278234 = !DILocation(line: 34, column: 30, scope: !276423, inlinedAt: !276371)
!278235 = !DILocation(line: 444, column: 20, scope: !276417, inlinedAt: !276437)
!278236 = !DILocation(line: 2428, column: 9, scope: !276419, inlinedAt: !276435)
!278237 = !DILocation(line: 614, column: 9, scope: !276438, inlinedAt: !276449)
!278238 = !DILocation(line: 1841, column: 86, scope: !276442, inlinedAt: !276445)
!278239 = !DILocation(line: 444, column: 20, scope: !276417, inlinedAt: !276453)
!278240 = !DILocation(line: 3937, column: 24, scope: !276454, inlinedAt: !276457)
!278241 = !DILocation(line: 2411, column: 12, scope: !276458, inlinedAt: !276451)
!278242 = !DILocation(line: 422, column: 34, scope: !276459, inlinedAt: !276460)
!278243 = !DILocation(line: 99, column: 9, scope: !134, inlinedAt: !276469)
!278244 = !DILocation(line: 101, column: 9, scope: !134, inlinedAt: !276469)
!278245 = !DILocation(line: 248, column: 11, scope: !139, inlinedAt: !276465)
!278246 = !DILocation(line: 248, column: 5, scope: !139, inlinedAt: !276465)
!278247 = !DILocation(line: 250, column: 19, scope: !139, inlinedAt: !276465)
!278248 = !DILocation(line: 810, column: 1, scope: !276470, inlinedAt: !276471)
!278249 = !DILocation(line: 284, column: 5, scope: !276463, inlinedAt: !276464)
!278250 = !DILocation(line: 289, column: 56, scope: !276472, inlinedAt: !276464)
!278251 = !DILocation(line: 426, column: 10, scope: !276459, inlinedAt: !276460)
!278252 = !DILocation(line: 310, column: 9, scope: !276473, inlinedAt: !276477)
!278253 = !DILocation(line: 34, column: 76, scope: !276423, inlinedAt: !276371)
!278254 = !DILocation(line: 33, column: 30, scope: !276402, inlinedAt: !276371)
!278255 = !DILocation(line: 40, column: 30, scope: !276478, inlinedAt: !276371)
!278256 = !DILocation(line: 422, column: 34, scope: !276479, inlinedAt: !276480)
!278257 = !DILocation(line: 40, column: 58, scope: !276478, inlinedAt: !276371)
!278258 = !DILocation(line: 99, column: 9, scope: !134, inlinedAt: !276489)
!278259 = !DILocation(line: 101, column: 9, scope: !134, inlinedAt: !276489)
!278260 = !DILocation(line: 248, column: 11, scope: !139, inlinedAt: !276485)
!278261 = !DILocation(line: 248, column: 5, scope: !139, inlinedAt: !276485)
!278262 = !DILocation(line: 250, column: 19, scope: !139, inlinedAt: !276485)
!278263 = !DILocation(line: 810, column: 1, scope: !276433, inlinedAt: !276492)
!278264 = !DILocation(line: 284, column: 5, scope: !276483, inlinedAt: !276484)
!278265 = !DILocation(line: 2415, column: 38, scope: !276458, inlinedAt: !276451)
!278266 = !DILocation(line: 310, column: 9, scope: !276473, inlinedAt: !276493)
!278267 = !DILocation(line: 2412, column: 13, scope: !276458, inlinedAt: !276451)
!278268 = !DILocation(line: 40, column: 70, scope: !276478, inlinedAt: !276371)
!278269 = !DILocation(line: 51, column: 13, scope: !276402, inlinedAt: !276371)
!278270 = !DILocation(line: 810, column: 1, scope: !323, inlinedAt: !276498)
!278271 = !DILocation(line: 444, column: 20, scope: !324, inlinedAt: !276501)
!278272 = !DILocation(line: 3956, column: 24, scope: !327, inlinedAt: !276503)
!278273 = !DILocation(line: 2814, column: 12, scope: !326, inlinedAt: !276499)
!278274 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !276504)
!278275 = !DILocation(line: 2857, column: 18, scope: !326, inlinedAt: !276499)
!278276 = !DILocation(line: 289, column: 56, scope: !276505, inlinedAt: !276484)
!278277 = !DILocation(line: 426, column: 10, scope: !276479, inlinedAt: !276480)
!278278 = !DILocation(line: 40, column: 96, scope: !276478, inlinedAt: !276371)
!278279 = !DILocation(line: 2173, column: 15, scope: !276506, inlinedAt: !276507)
!278280 = !DILocation(line: 0, scope: !276506, inlinedAt: !276507)
!278281 = !DILocation(line: 2173, column: 9, scope: !276506, inlinedAt: !276507)
!278282 = !DILocation(line: 40, column: 97, scope: !276478, inlinedAt: !276371)
!278283 = !DILocation(line: 810, column: 1, scope: !323, inlinedAt: !276512)
!278284 = !DILocation(line: 444, column: 20, scope: !324, inlinedAt: !276515)
!278285 = !DILocation(line: 3956, column: 24, scope: !327, inlinedAt: !276517)
!278286 = !DILocation(line: 2814, column: 12, scope: !326, inlinedAt: !276513)
!278287 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !276518)
!278288 = !DILocation(line: 2857, column: 18, scope: !326, inlinedAt: !276513)
!278289 = !DILocation(line: 2174, column: 16, scope: !276506, inlinedAt: !276507)
!278290 = !DILocation(line: 43, column: 21, scope: !276519, inlinedAt: !276371)
!278291 = !DILocation(line: 46, column: 21, scope: !276519, inlinedAt: !276371)
!278292 = !DILocation(line: 47, column: 21, scope: !276519, inlinedAt: !276371)
!278293 = !DILocation(line: 444, column: 20, scope: !276417, inlinedAt: !276522)
!278294 = !DILocation(line: 2428, column: 9, scope: !276419, inlinedAt: !276520)
!278295 = !DILocation(line: 49, column: 21, scope: !276519, inlinedAt: !276371)
!278296 = !DILocation(line: 2277, column: 15, scope: !276523, inlinedAt: !276524)
!278297 = !DILocation(line: 2277, column: 9, scope: !276523, inlinedAt: !276524)
!278298 = !DILocation(line: 612, column: 33, scope: !276525, inlinedAt: !276537)
!278299 = !DILocation(line: 744, column: 12, scope: !276527, inlinedAt: !276535)
!278300 = !DILocation(line: 745, column: 13, scope: !276527, inlinedAt: !276535)
!278301 = !DILocation(line: 1721, column: 9, scope: !276540, inlinedAt: !276541)
!278302 = !DILocation(line: 744, column: 9, scope: !276527, inlinedAt: !276535)
!278303 = !DILocation(line: 2279, column: 21, scope: !276523, inlinedAt: !276524)
!278304 = !DILocation(line: 42, column: 17, scope: !276519, inlinedAt: !276371)
!278305 = !DILocation(line: 58, column: 9, scope: !276548, inlinedAt: !276549)
!278306 = !DILocation(line: 434, column: 15, scope: !276550, inlinedAt: !276557)
!278307 = !DILocation(line: 810, column: 1, scope: !661, inlinedAt: !276558)
!278308 = !DILocation(line: 780, column: 13, scope: !409, inlinedAt: !276565)
!278309 = !DILocation(line: 434, column: 9, scope: !276550, inlinedAt: !276557)
!278310 = !DILocation(line: 0, scope: !276550, inlinedAt: !276557)
!278311 = !DILocation(line: 442, column: 17, scope: !276550, inlinedAt: !276557)
!278312 = !DILocation(line: 442, column: 25, scope: !276566, inlinedAt: !276557)
!278313 = !DILocation(line: 435, column: 16, scope: !276550, inlinedAt: !276557)
!278314 = !DILocation(line: 767, column: 9, scope: !276567, inlinedAt: !276569)
!278315 = !DILocation(line: 210, column: 9, scope: !276570, inlinedAt: !276571)
!278316 = !DILocation(line: 443, column: 9, scope: !276550, inlinedAt: !276557)
!278317 = !DILocation(line: 977, column: 9, scope: !276552, inlinedAt: !276555)
!278318 = !DILocation(line: 60, column: 5, scope: !276572, inlinedAt: !276549)
!278319 = !DILocation(line: 0, scope: !276547, inlinedAt: !276549)
!278320 = !DILocation(line: 60, column: 29, scope: !276573, inlinedAt: !276549)
!278321 = !DILocation(line: 60, column: 36, scope: !276573, inlinedAt: !276549)
!278322 = !DILocation(line: 107, column: 1, scope: !276548, inlinedAt: !276549)
!278323 = !DILocation(line: 2173, column: 15, scope: !276574, inlinedAt: !276575)
!278324 = !DILocation(line: 0, scope: !276574, inlinedAt: !276575)
!278325 = !DILocation(line: 2173, column: 9, scope: !276574, inlinedAt: !276575)
!278326 = !DILocation(line: 2175, column: 17, scope: !276574, inlinedAt: !276575)
!278327 = !DILocation(line: 60, column: 55, scope: !276573, inlinedAt: !276549)
!278328 = !DILocation(line: 0, scope: !277844, inlinedAt: !276549)
!278329 = !DILocation(line: 60, column: 15, scope: !276573, inlinedAt: !276549)
!278330 = !DILocation(line: 60, column: 20, scope: !276573, inlinedAt: !276549)
!278331 = !DILocation(line: 61, column: 32, scope: !276573, inlinedAt: !276549)
!278332 = !DILocation(line: 62, column: 9, scope: !276576, inlinedAt: !276549)
!278333 = !DILocation(line: 63, column: 13, scope: !276576, inlinedAt: !276549)
!278334 = !DILocation(line: 63, column: 22, scope: !276576, inlinedAt: !276549)
!278335 = !DILocation(line: 65, column: 27, scope: !276578, inlinedAt: !276549)
!278336 = !DILocation(line: 65, column: 16, scope: !276578, inlinedAt: !276549)
!278337 = !DILocation(line: 66, column: 44, scope: !276578, inlinedAt: !276549)
!278338 = !DILocation(line: 1955, column: 14, scope: !276579, inlinedAt: !276582)
!278339 = !DILocation(line: 744, column: 12, scope: !276583, inlinedAt: !276584)
!278340 = !DILocation(line: 69, column: 34, scope: !276585, inlinedAt: !276549)
!278341 = !DILocation(line: 69, column: 16, scope: !276585, inlinedAt: !276549)
!278342 = !DILocation(line: 745, column: 13, scope: !276583, inlinedAt: !276584)
!278343 = !DILocation(line: 1721, column: 9, scope: !276586, inlinedAt: !276587)
!278344 = !DILocation(line: 744, column: 9, scope: !276583, inlinedAt: !276584)
!278345 = !DILocation(line: 1955, column: 9, scope: !276579, inlinedAt: !276582)
!278346 = !DILocation(line: 1955, column: 28, scope: !276579, inlinedAt: !276582)
!278347 = !DILocation(line: 66, column: 85, scope: !276578, inlinedAt: !276549)
!278348 = !DILocation(line: 66, column: 66, scope: !276578, inlinedAt: !276549)
!278349 = !DILocation(line: 66, column: 25, scope: !276578, inlinedAt: !276549)
!278350 = !DILocation(line: 66, column: 95, scope: !276578, inlinedAt: !276549)
!278351 = !DILocation(line: 65, column: 9, scope: !276577, inlinedAt: !276549)
!278352 = !DILocation(line: 70, column: 17, scope: !276585, inlinedAt: !276549)
!278353 = !DILocation(line: 70, column: 21, scope: !276585, inlinedAt: !276549)
!278354 = !DILocation(line: 444, column: 20, scope: !276588, inlinedAt: !276593)
!278355 = !DILocation(line: 2428, column: 9, scope: !276590, inlinedAt: !276591)
!278356 = !DILocation(line: 70, column: 31, scope: !276585, inlinedAt: !276549)
end_hunk_3
