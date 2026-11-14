Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.05?download=true
inline.NumInlined: 786
inline.NumDeleted: 407
begin_hunk_0_@_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCskAlUH1kY1DR_10polars_ooc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !7765 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7742), !dbg !7765
  %i.m = load ptr, ptr %i.l, align 8, !dbg !7766, !alias.scope !7742, !noundef !241 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !7766
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit, label %bb.f, !dbg !7766

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !7767, !noalias !7743
  %i.p = icmp eq i64 %i.o, 1, !dbg !7768
  br i1 %i.p, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit, !dbg !7768

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !7769
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.n, !dbg !7770

bb.h:                                             ; preds = %bb.d
  call void @llvm.trap(), !dbg !7771
  unreachable, !dbg !7771

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.f, %bb.e, %bb.g
  store ptr %i.i, ptr %i.l, align 8, !dbg !7765
  %i.q = load i64, ptr %i.c, align 8, !dbg !7772, !range !418, !alias.scope !7744, !noundef !241
  %i.r = icmp eq i64 %i.q, -9223372036854775808, !dbg !7772
  br i1 %i.r, label %.noexc15, label %bb.i, !dbg !7772

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %.noexc15 unwind label %bb.l, !dbg !7772

.thread:                                          ; preds = %bb.a, %.noexc15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7773
  store ptr %i.c, ptr %i.s, align 8, !dbg !7773
  store i64 18, ptr %0, align 8, !dbg !7773
  br label %bb.k, !dbg !7759

bb.j:                                             ; preds = %.noexc15
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #20, !dbg !7774
  unreachable, !dbg !7774

bb.k:                                             ; preds = %.thread, %bb.c
  ret void, !dbg !7759

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !7748
  br label %bb.m, !dbg !7749

bb.m:                                             ; preds = %bb.l, %bb.n
  %.pn20 = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.t, %bb.l ]
  resume { ptr, i32 } %.pn20, !dbg !7775

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %i.l, align 8, !dbg !7765
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(112) %i.b) #22
          to label %bb.m unwind label %bb.o, !dbg !7749

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !7775
  unreachable, !dbg !7775
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(312) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7776 !guid !9164 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [176 x i8], align 16              ; 4 uses
  %i.c = alloca [176 x i8], align 16              ; 4 uses
  %i.d = alloca [160 x i8], align 16              ; 4 uses
  %i.e = alloca [176 x i8], align 16              ; 6 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [160 x i8], align 16              ; 7 uses
  %i.h = alloca [176 x i8], align 16              ; 6 uses
  %i.i = alloca [352 x i8], align 16              ; 24 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.04.i = alloca [24 x i8], align 8         ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [104 x i8], align 8               ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [184 x i8], align 8              ; 7 uses
  %i.ad = alloca [112 x i8], align 8              ; 4 uses
  %i.ae = alloca [184 x i8], align 8              ; 7 uses
  %.sroa.625.i.i = alloca [72 x i8], align 8      ; 6 uses
  %i.af = alloca [88 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.616.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.69.i.i = alloca [72 x i8], align 8       ; 6 uses
  %i.al = alloca [112 x i8], align 8              ; 10 uses
  %i.am = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 9 uses
  %i.ao = alloca [16 x i8], align 8               ; 9 uses
  %i.ap = alloca [104 x i8], align 8              ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.639.i = alloca [48 x i8], align 8        ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [360 x i8], align 8              ; 4 uses
  %i.av = alloca [72 x i8], align 8               ; 7 uses
  %i.aw = alloca [112 x i8], align 8              ; 11 uses
  %i.ax = alloca [88 x i8], align 8               ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 12 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.620.i = alloca [24 x i8], align 8        ; 6 uses
  %i.bb = alloca [72 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 16 uses
  %i.bd = alloca [72 x i8], align 8               ; 6 uses
  %i.be = alloca [72 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [48 x i8], align 8               ; 10 uses
  %i.bh = alloca [72 x i8], align 8               ; 7 uses
  %i.bi = alloca [48 x i8], align 16              ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [160 x i8], align 16             ; 11 uses
  %i.bl = alloca [16 x i8], align 8               ; 8 uses
  %i.bm = alloca [24 x i8], align 8               ; 9 uses
  %i.bn = alloca [312 x i8], align 8              ; 75 uses
  %i.bo = alloca [72 x i8], align 8               ; 37 uses
  %.sroa.69 = alloca [48 x i8], align 8           ; 6 uses
  %i.bp = alloca [48 x i8], align 8               ; 17 uses
  %i.bq = alloca [40 x i8], align 8               ; 15 uses
  %i.br = alloca [24 x i8], align 8               ; 12 uses
  %i.bs = alloca [72 x i8], align 8               ; 7 uses
  %i.bt = alloca [8 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !9584
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !9585
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !9585, !noundef !241 ; 3 uses
  %.not = icmp eq ptr %i.bv, null, !dbg !9585
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9586

bb.b:                                             ; preds = %bb.a
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !dbg !9587
  %i.bx = icmp slt i64 %i.bw, 0, !dbg !9588
  br i1 %i.bx, label %bb.d, label %bb.e, !dbg !9588

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !9393
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bs, ptr noalias noundef align 8 dereferenceable(312) %1)
          to label %bb.hi unwind label %bb.lp, !dbg !9589

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !9590
  unreachable, !dbg !9590

bb.e:                                             ; preds = %bb.hk, %bb.b
  %storemerge = phi ptr [ %i.bv, %bb.b ], [ %i.qu, %bb.hk ], !dbg !9591 ; 2 uses
  store ptr %storemerge, ptr %i.bt, align 8, !dbg !9591
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge, i64 16, !dbg !9592 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !9593
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !9594 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !dbg !9594
  store i64 -9223372036854775808, ptr %i.bz, align 8, !dbg !9595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !9596
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !9597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !dbg !9597
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 247, !dbg !9598
  store i8 -38, ptr %.sroa.337.0..sroa_idx, align 1, !dbg !9598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !9599
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69), !dbg !9404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !9404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !9404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.bn, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 312, i1 false), !dbg !9404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9178), !dbg !9404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9179), !dbg !9404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !9600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !9600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !9600
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !9600 ; 22 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !9600, !range !418, !alias.scope !9179, !noundef !241
  %.not.i = icmp eq i64 %i.cc, -9223372036854775808, !dbg !9600
  br i1 %.not.i, label %bb.i, label %bb.g, !dbg !9601

.body138.thread.i:                                ; preds = %bb.bq, %bb.bp, %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i, %bb.l
  %.pn132.ph.i = phi { ptr, i32 } [ %.pn766.i.i, %bb.bo ], [ %.pn766.i.i, %bb.bq ], [ %.pn74.i.i, %bb.l ], [ %.pn7412.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i ], [ %.pn766.i.i, %bb.bp ] ; 2 uses
  %.sroa.38.0258.i = extractvalue { ptr, i32 } %.pn132.ph.i, 1
  %.sroa.0111.0259.i = extractvalue { ptr, i32 } %.pn132.ph.i, 0
  br label %.body153.thread.i, !dbg !9602

.body153.i:                                       ; preds = %bb.fn, %.body.thread.i, %.body.i, %bb.f
  %.sroa.052.0.i = phi i8 [ %.sroa.052.2.i, %.body.i ], [ %.sroa.052.2261.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.052.2261.i, %bb.fn ], !dbg !9603
  %.sroa.049.0.i = phi i8 [ %.sroa.049.2.i, %.body.i ], [ %.sroa.049.2262.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.049.2262.i, %bb.fn ], !dbg !9603 ; 2 uses
  %.pn132.i = phi { ptr, i32 } [ %.pn128.i, %.body.i ], [ %.pn128263.i, %.body.thread.i ], [ %i.cd, %bb.f ], [ %.pn128263.i, %bb.fn ] ; 2 uses
  %.sroa.38.0.i = extractvalue { ptr, i32 } %.pn132.i, 1 ; 2 uses
  %.sroa.0111.0.i = extractvalue { ptr, i32 } %.pn132.i, 0 ; 2 uses
  %cond.i = icmp eq i8 %.sroa.052.0.i, 0, !dbg !9602
  br i1 %cond.i, label %bb.gz, label %.body153.thread.i, !dbg !9602

bb.f:                                             ; preds = %bb.fp, %bb.fg, %bb.eg, %bb.cg, %bb.bs, %bb.bm, %bb.j
  %.sroa.049.1.i = phi i8 [ 1, %bb.fp ], [ 1, %bb.cg ], [ %.sroa.049.6.i, %bb.fg ], [ 0, %bb.eg ], [ 1, %bb.j ], [ 1, %bb.bs ], [ 1, %bb.bm ], !dbg !9604 ; 2 uses
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body153.i

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 32, !dbg !9605
  %.val.i = load i64, ptr %i.ce, align 8, !dbg !9605, !alias.scope !9179, !noundef !241 ; 2 uses
  %i.cf = icmp ult i64 %.val.i, 1152921504606846976, !dbg !9606
  tail call void @llvm.assume(i1 %i.cf), !dbg !9607
  %i.cg = icmp eq i64 %.val.i, 0, !dbg !9608
  br i1 %i.cg, label %bb.h, label %bb.i, !dbg !9609

bb.h:                                             ; preds = %bb.g
  %i.ch = load i64, ptr %i.bn, align 8, !dbg !9610, !range !248, !alias.scope !9179, !noundef !241
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !9611
  br i1 %i.ci, label %bb.fo, label %bb.fp, !dbg !9611

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 88, !dbg !9612 ; 6 uses
  %.val149.i = load i64, ptr %i.cj, align 8, !dbg !9613, !range !418, !alias.scope !9179, !noundef !241
  %.not274.i = icmp eq i64 %.val149.i, -9223372036854775808, !dbg !9614
  br i1 %.not274.i, label %bb.j, label %bb.k, !dbg !9612

bb.j:                                             ; preds = %bb.bv, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 308, !dbg !9615
  %i.cl = load i8, ptr %i.ck, align 4, !dbg !9615, !range !267, !alias.scope !9179, !noundef !241
  %i.cm = trunc nuw i8 %i.cl to i1, !dbg !9615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !9616, !noalias !9187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !9617, !noalias !9187
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(312) %i.bn)
          to label %bb.bw unwind label %bb.f, !dbg !9618, !noalias !9178

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9188), !dbg !9619
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9189), !dbg !9619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9187
  store ptr null, ptr %i.ao, align 8, !noalias !9190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 304, !dbg !9620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !9621, !noalias !9190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !9622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !9622, !noalias !9190
  invoke void @_RNvMs_NtCs2mZqlW55729_12polars_utils4mmapNtB4_13MMapSemaphore13new_from_file(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.am, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.co)
          to label %bb.m unwind label %.thread.i.i, !dbg !9622, !noalias !9192

bb.l:                                             ; preds = %bb.p
  br i1 %.sroa.036.1.i.i, label %bb.bo, label %.body138.thread.i, !dbg !9623

.thread.i.i:                                      ; preds = %bb.ad, %bb.k
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo, !dbg !9623

bb.m:                                             ; preds = %bb.k
  %i.cq = load i64, ptr %i.am, align 8, !dbg !9624, !range !9193, !noalias !9190, !noundef !241 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cq, 18, !dbg !9624
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !9625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false), !dbg !9625, !noalias !9190
  br i1 %.not.i.i, label %bb.o, label %bb.n, !dbg !9626

bb.n:                                             ; preds = %bb.m
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40, !dbg !9627
  %.sroa.345.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40, !dbg !9628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.345.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx.i.i, i64 32, i1 false), !dbg !9627, !noalias !9196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !9629, !noalias !9190
  %.sroa.244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !dbg !9629, !noalias !9196
  store i64 %i.cq, ptr %i.bo, align 8, !dbg !9628, !alias.scope !9192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !9630
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !9631

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !9629, !noalias !9190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !dbg !9622, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !9630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !9632, !noalias !9190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i), !dbg !9633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !9633, !noalias !9190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !9634, !noalias !9190
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !9635
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !9635, !noalias !9190, !noundef !241
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !9636
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !9636, !noalias !9190, !noundef !241
  store ptr %i.ct, ptr %i.aj, align 8, !dbg !9637, !noalias !9190
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !9637
  store i64 %i.cv, ptr %i.cw, align 8, !dbg !9637, !noalias !9190
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !9637
  store i64 0, ptr %i.cx, align 8, !dbg !9637, !noalias !9190
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file18read_file_metadataINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.q unwind label %.thread7.i.i, !dbg !9633, !noalias !9192

bb.p:                                             ; preds = %.body.thread.i.i, %.body.i.i
  %.sroa.036.1.i.i = phi i1 [ %.sroa.036.2.i.i, %.body.i.i ], [ %.sroa.036.218.i.i, %.body.thread.i.i ], !dbg !9620 ; 2 uses
  %.sroa.033.0.i.i = phi i8 [ %.sroa.033.1.i.i, %.body.i.i ], [ %.sroa.033.119.i.i, %.body.thread.i.i ], !dbg !9638
  %.pn74.i.i = phi { ptr, i32 } [ %.pn72.i.i, %.body.i.i ], [ %.pn7220.i.i, %.body.thread.i.i ] ; 3 uses
  %i.cy = trunc nuw i8 %.sroa.033.0.i.i to i1, !dbg !9639
  br i1 %i.cy, label %bb.bn, label %bb.l, !dbg !9639

.thread7.i.i:                                     ; preds = %bb.x, %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn, !dbg !9639

bb.q:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.ak, align 8, !dbg !9640, !range !418, !noalias !9190, !noundef !241 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775808, !dbg !9640
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !9641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.dc, i64 72, i1 false), !dbg !9641, !noalias !9190
  br i1 %i.db, label %bb.r, label %bb.s, !dbg !9642

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !9643, !noalias !9190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, i64 72, i1 false), !dbg !9643, !noalias !9196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !9644, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i), !dbg !9644
  br label %bb.ad, !dbg !9645

bb.s:                                             ; preds = %bb.q
  %.sroa.648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !9646
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80, !dbg !9647 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i.i, i64 32, i1 false), !dbg !9646, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !9643, !noalias !9190
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !9647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, i64 72, i1 false), !dbg !9633, !noalias !9190
  store i64 %i.da, ptr %i.al, align 8, !dbg !9647, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !9644, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i), !dbg !9644
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !9648
  %i.de = load i64, ptr %i.dd, align 8, !dbg !9648, !range !418, !alias.scope !9196, !noundef !241
  %.not67.i.i = icmp eq i64 %i.de, -9223372036854775808, !dbg !9648
  br i1 %.not67.i.i, label %bb.u, label %bb.t, !dbg !9649

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i), !dbg !9650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !9650, !noalias !9190
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 48, !dbg !9651
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !9651, !alias.scope !9196, !nonnull !241, !noundef !241
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 56, !dbg !9652
  %i.di = load i64, ptr %i.dh, align 8, !dbg !9652, !alias.scope !9196, !noundef !241
  %i.dj = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9653, !noalias !9190, !nonnull !241, !noundef !241
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16, !dbg !9654
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dk)
          to label %bb.w unwind label %bb.v, !dbg !9650, !noalias !9192

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !9655, !noalias !9190
  %i.dl = load i64, ptr %i.cb, align 8, !dbg !9656, !range !418, !alias.scope !9196, !noundef !241
  %.not69.i.i = icmp eq i64 %i.dl, -9223372036854775808, !dbg !9656
  br i1 %.not69.i.i, label %bb.af, label %bb.ae, !dbg !9657

.body.i.i:                                        ; preds = %bb.ar, %.critedge.i.i, %bb.v
  %.sroa.036.2.i.i = phi i1 [ %.sroa.036.4.i.i, %.critedge.i.i ], [ %.sroa.036.3.i.i, %bb.v ], [ %.sroa.036.4.i.i, %bb.ar ], !dbg !9658 ; 2 uses
  %.sroa.033.1.i.i = phi i8 [ 0, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.v ], [ 0, %bb.ar ], !dbg !9638 ; 2 uses
  %.sroa.032.0.i.i = phi i8 [ %.sroa.032.2.i.i, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.v ], [ %.sroa.032.2.i.i, %bb.ar ], !dbg !9659
  %.pn72.i.i = phi { ptr, i32 } [ %.pn.i.i, %.critedge.i.i ], [ %i.dn, %bb.v ], [ %.pn.i.i, %bb.ar ] ; 2 uses
  %i.dm = trunc nuw i8 %.sroa.032.0.i.i to i1, !dbg !9660
  br i1 %i.dm, label %.body.thread.i.i, label %bb.p, !dbg !9660

bb.v:                                             ; preds = %bb.bg, %bb.aw, %bb.ae, %bb.t
  %.sroa.036.3.i.i = phi i1 [ true, %bb.aw ], [ false, %bb.bg ], [ true, %bb.t ], [ true, %bb.ae ], !dbg !9658
  %.sroa.032.1.i.i = phi i8 [ 0, %bb.aw ], [ 0, %bb.bg ], [ 1, %bb.t ], [ 1, %bb.ae ], !dbg !9659 ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.w:                                             ; preds = %bb.t
  %i.do = load i64, ptr %i.ai, align 8, !dbg !9661, !range !9193, !noalias !9190, !noundef !241 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.do, 18, !dbg !9661
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !9662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false), !dbg !9662, !noalias !9190
  br i1 %.not68.i.i, label %bb.y, label %bb.x, !dbg !9663

bb.x:                                             ; preds = %bb.w
  %.sroa.654.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !9664
  %.sroa.357.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !9665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.357.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.654.0..sroa_idx.i.i, i64 40, i1 false), !dbg !9664, !noalias !9196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !9666, !noalias !9190
  %.sroa.256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.256.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, i64 24, i1 false), !dbg !9666, !noalias !9196
  store i64 %i.do, ptr %i.bo, align 8, !dbg !9665, !alias.scope !9192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i), !dbg !9667
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(112) %i.al)
          to label %bb.ad unwind label %.thread7.i.i, !dbg !9660, !noalias !9192

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !9666, !noalias !9190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !9668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, i64 24, i1 false), !dbg !9650, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i), !dbg !9667
  %i.dq = load i64, ptr %i.cb, align 8, !dbg !9669, !range !418, !alias.scope !9220, !noundef !241
  %i.dr = icmp eq i64 %i.dq, -9223372036854775808, !dbg !9669
  br i1 %i.dr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, label %bb.z, !dbg !9669

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.aa, !dbg !9670, !noalias !9192

bb.aa:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.thread13.i.i unwind label %bb.ab, !dbg !9671, !noalias !9192

bb.ab:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9670, !noalias !9192
  unreachable, !dbg !9670

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %bb.ac, !dbg !9672, !noalias !9192

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.thread13.i.i, !dbg !9673

.thread13.i.i:                                    ; preds = %bb.ac, %bb.aa
  %eh.lpad-body81.i.i = phi { ptr, i32 } [ %i.du, %bb.ac ], [ %i.ds, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !9673, !noalias !9192
  br label %.body.thread.i.i, !dbg !9660

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !9673, !noalias !9192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !9674
  br label %bb.u, !dbg !9675

bb.ad:                                            ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !9660, !noalias !9190
  invoke void @_RNvXNtCs2mZqlW55729_12polars_utils4mmapNtB2_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %.thread.i.i, !dbg !9676, !noalias !9192

bb.ae:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !9677, !noalias !9190
  %i.dv = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9678, !noalias !9190, !nonnull !241, !noundef !241
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16, !dbg !9679
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24, !dbg !9680
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !9680, !alias.scope !9196, !nonnull !241, !noundef !241
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bn, i64 32, !dbg !9681
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !9681, !alias.scope !9196, !noundef !241
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils5other16apply_projection(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef %i.ea)
          to label %bb.ag unwind label %bb.v, !dbg !9677, !noalias !9192

bb.af:                                            ; preds = %bb.u
  %i.eb = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9682, !noalias !9190, !nonnull !241, !noundef !241
  %i.ec = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8, !dbg !9683, !noalias !9192
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCskAlUH1kY1DR_10polars_ooc:bb.a
  %.sroa.036.4.i.i = phi i1 [ false, %.noexc93.i.i ], [ true, %bb.as ], [ false, %bb.bd ], [ true, %bb.an ], !dbg !9658 ; 2 uses
  %.sroa.032.2.i.i = phi i8 [ 0, %.noexc93.i.i ], [ 0, %bb.as ], [ 0, %bb.bd ], [ 1, %bb.an ], !dbg !9711 ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.fu, %.noexc93.i.i ], [ %i.eu, %bb.as ], [ %i.fo, %bb.bd ], [ %i.eo, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9232), !dbg !9712
  call void @llvm.experimental.noalias.scope.decl(metadata !9233), !dbg !9713
  %i.er = load ptr, ptr %i.ag, align 8, !dbg !9714, !alias.scope !9234, !noalias !9190, !nonnull !241, !noundef !241
  %i.es = atomicrmw add ptr %i.er, i64 -1 release, align 8, !dbg !9715, !noalias !9235
  %i.et = icmp eq i64 %i.es, 1, !dbg !9716
  br i1 %i.et, label %bb.ar, label %.body.i.i, !dbg !9716

bb.ar:                                            ; preds = %.critedge.i.i
  fence acquire, !dbg !9717
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %.body.i.i unwind label %bb.bk, !dbg !9718, !noalias !9192

bb.as:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.at:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !9719, !noalias !9192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !9720, !noalias !9190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !9711, !noalias !9190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, ptr noundef nonnull align 8 dereferenceable(112) %i.al, i64 112, i1 false), !dbg !9711, !noalias !9190
  invoke void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc4mmapNtB4_13MMapChunkIter3new(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ae, ptr noundef nonnull %i.em, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.au unwind label %bb.as, !dbg !9698, !noalias !9192

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !9721, !noalias !9190
  %i.ev = load i64, ptr %i.ae, align 8, !dbg !9722, !range !418, !noalias !9190, !noundef !241 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -9223372036854775808, !dbg !9722
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !9723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ex, i64 72, i1 false), !dbg !9723, !noalias !9190
  br i1 %i.ew, label %bb.av, label %bb.ax, !dbg !9724

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !9725, !noalias !9190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, i64 72, i1 false), !dbg !9725, !noalias !9196
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.i), !dbg !9725
  call void @llvm.experimental.noalias.scope.decl(metadata !9236), !dbg !9712
  call void @llvm.experimental.noalias.scope.decl(metadata !9237), !dbg !9726
  %i.ey = load ptr, ptr %i.ag, align 8, !dbg !9727, !alias.scope !9238, !noalias !9190, !nonnull !241, !noundef !241
  %i.ez = atomicrmw add ptr %i.ey, i64 -1 release, align 8, !dbg !9728, !noalias !9239
  %i.fa = icmp eq i64 %i.ez, 1, !dbg !9729
  br i1 %i.fa, label %bb.aw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit89.i.i, !dbg !9729

bb.aw:                                            ; preds = %bb.av
  fence acquire, !dbg !9730
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit89.i.i unwind label %bb.v, !dbg !9731, !noalias !9192

bb.ax:                                            ; preds = %bb.au
  %.sroa.664.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 80, !dbg !9732
  %.sroa.331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 80, !dbg !9733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !9733, !noalias !9190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.331.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.664.0..sroa_idx.i.i, i64 104, i1 false), !dbg !9732, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !9725, !noalias !9190
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !9733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.230.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, i64 72, i1 false), !dbg !9698, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.i), !dbg !9725
  store i64 %i.ev, ptr %i.ac, align 8, !dbg !9733, !noalias !9190
  %i.fb = load i64, ptr %i.bn, align 8, !dbg !9734, !range !248, !alias.scope !9196, !noundef !241
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !9734
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !9734, !alias.scope !9196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !9735, !noalias !9190
  %i.fe = load ptr, ptr %i.ao, align 8, !dbg !9735, !noalias !9190, !noundef !241 ; 4 uses
  %i.ff = load ptr, ptr %i.cn, align 8, !dbg !9735, !noalias !9190 ; 2 uses
  store ptr %i.fe, ptr %i.ab, align 8, !dbg !9735, !noalias !9190
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !9735
  store ptr %i.ff, ptr %i.fg, align 8, !dbg !9735, !noalias !9190
  %i.fh = load ptr, ptr %i.ag, align 8, !dbg !9736, !noalias !9190, !nonnull !241, !noundef !241
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16, !dbg !9737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !9738, !noalias !9190
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bn, i64 287, !dbg !9739
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !9739, !range !425, !alias.scope !9196, !noundef !241 ; 2 uses
  %.not70.i.i = icmp eq i8 %i.fk, -38, !dbg !9739
  br i1 %.not70.i.i, label %bb.bb, label %bb.ay, !dbg !9740

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !9739 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !9741, !noalias !9190
  %i.fm = icmp eq i8 %i.fk, -40, !dbg !9742
  br i1 %i.fm, label %bb.az, label %bb.ba, !dbg !9742

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fl) #24
          to label %bb.be unwind label %bb.bh, !dbg !9743, !noalias !9192

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fl, i64 24, i1 false), !dbg !9744, !noalias !9252
  br label %bb.be, !dbg !9745

bb.bb:                                            ; preds = %bb.ax
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aa, i64 23, !dbg !9746
  store i8 -38, ptr %i.fn, align 1, !dbg !9746, !noalias !9190
  br label %bb.bc, !dbg !9746

bb.bc:                                            ; preds = %bb.be, %bb.bb
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io6shared13finish_readerNtNtNtB4_3ipc4mmap13MMapChunkIterECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ac, i1 noundef zeroext false, i64 noundef %i.fb, i64 %i.fd, ptr noundef %i.fe, ptr %i.ff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.bf unwind label %bb.bd, !dbg !9747

bb.bd:                                            ; preds = %bb.bc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i, !dbg !9748

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bn, i64 288, !dbg !9749
  %i.fq = load i32, ptr %i.fp, align 8, !dbg !9749, !alias.scope !9253, !noundef !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !9750, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !9751, !noalias !9190
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !9752
  store i32 %i.fq, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !dbg !9752, !noalias !9190
  br label %bb.bc, !dbg !9753

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !9748, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !9748, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !9748, !noalias !9190
  call void @llvm.experimental.noalias.scope.decl(metadata !9254), !dbg !9712
  call void @llvm.experimental.noalias.scope.decl(metadata !9255), !dbg !9754
  %i.fr = load ptr, ptr %i.ag, align 8, !dbg !9755, !alias.scope !9256, !noalias !9190, !nonnull !241, !noundef !241
  %i.fs = atomicrmw add ptr %i.fr, i64 -1 release, align 8, !dbg !9756, !noalias !9257
  %i.ft = icmp eq i64 %i.fs, 1, !dbg !9757
  br i1 %i.ft, label %bb.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit92.i.i, !dbg !9757

bb.bg:                                            ; preds = %bb.bf
  fence acquire, !dbg !9758
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit92.i.i unwind label %bb.v, !dbg !9759, !noalias !9192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit92.i.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !9712, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !9660, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !9639, !noalias !9190
  br label %bb.br, !dbg !9623

bb.bh:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = icmp eq ptr %i.fe, null, !dbg !9760
  br i1 %i.fv, label %.noexc93.i.i, label %bb.bi, !dbg !9760

bb.bi:                                            ; preds = %bb.bh
  %i.fw = atomicrmw add ptr %i.fe, i64 -1 release, align 8, !dbg !9761, !noalias !9258
  %i.fx = icmp eq i64 %i.fw, 1, !dbg !9762
  br i1 %i.fx, label %bb.bj, label %.noexc93.i.i, !dbg !9762

bb.bj:                                            ; preds = %bb.bi
  fence acquire, !dbg !9763
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #24
          to label %.noexc93.i.i unwind label %bb.bk, !dbg !9764, !noalias !9192

bb.bk:                                            ; preds = %bb.bq, %bb.bn, %.body.thread.i.i, %.noexc93.i.i, %bb.bj, %bb.ar
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9765, !noalias !9192
  unreachable, !dbg !9765

.noexc93.i.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bh
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io3ipc4mmap13MMapChunkIterECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(184) %i.ac) #22
          to label %.critedge.i.i unwind label %bb.bk, !dbg !9748, !noalias !9192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit89.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !9712, !noalias !9190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !9660, !noalias !9190
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !9639

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit89.i.i, %bb.ad, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !9639, !noalias !9190
  call void @llvm.experimental.noalias.scope.decl(metadata !9259), !dbg !9623
  %i.fz = load ptr, ptr %i.ao, align 8, !dbg !9766, !alias.scope !9259, !noalias !9190, !noundef !241 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null, !dbg !9766
  br i1 %i.ga, label %bb.br, label %bb.bl, !dbg !9766

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.gb = atomicrmw add ptr %i.fz, i64 -1 release, align 8, !dbg !9767, !noalias !9260
  %i.gc = icmp eq i64 %i.gb, 1, !dbg !9768
  br i1 %i.gc, label %bb.bm, label %bb.br, !dbg !9768

bb.bm:                                            ; preds = %bb.bl
  fence acquire, !dbg !9769
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao) #24
          to label %bb.br unwind label %bb.f, !dbg !9770, !noalias !9178

.body.thread.i.i:                                 ; preds = %bb.ai, %.thread13.i.i, %.body.i.i
  %.pn7220.i.i = phi { ptr, i32 } [ %eh.lpad-body81.i.i, %.thread13.i.i ], [ %.pn72.i.i, %.body.i.i ], [ %i.ei, %bb.ai ]
  %.sroa.033.119.i.i = phi i8 [ 1, %.thread13.i.i ], [ %.sroa.033.1.i.i, %.body.i.i ], [ 1, %bb.ai ]
  %.sroa.036.218.i.i = phi i1 [ true, %.thread13.i.i ], [ %.sroa.036.2.i.i, %.body.i.i ], [ true, %bb.ai ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(112) %i.al) #22
          to label %bb.p unwind label %bb.bk, !dbg !9660, !noalias !9192

bb.bn:                                            ; preds = %.thread7.i.i, %bb.p
  %.pn7412.i.i = phi { ptr, i32 } [ %i.cz, %.thread7.i.i ], [ %.pn74.i.i, %bb.p ] ; 2 uses
  %.sroa.036.111.i.i = phi i1 [ true, %.thread7.i.i ], [ %.sroa.036.1.i.i, %bb.p ]
  invoke void @_RNvXNtCs2mZqlW55729_12polars_utils4mmapNtB2_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i unwind label %bb.bk, !dbg !9771, !noalias !9192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i: ; preds = %bb.bn
  br i1 %.sroa.036.111.i.i, label %bb.bo, label %.body138.thread.i, !dbg !9623

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i, %.thread.i.i, %bb.l
  %.pn766.i.i = phi { ptr, i32 } [ %i.cp, %.thread.i.i ], [ %.pn74.i.i, %bb.l ], [ %.pn7412.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit96.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9261), !dbg !9623
  %i.gd = load ptr, ptr %i.ao, align 8, !dbg !9772, !alias.scope !9261, !noalias !9190, !noundef !241 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null, !dbg !9772
  br i1 %i.ge, label %.body138.thread.i, label %bb.bp, !dbg !9772

bb.bp:                                            ; preds = %bb.bo
  %i.gf = atomicrmw add ptr %i.gd, i64 -1 release, align 8, !dbg !9773, !noalias !9262
  %i.gg = icmp eq i64 %i.gf, 1, !dbg !9774
  br i1 %i.gg, label %bb.bq, label %.body138.thread.i, !dbg !9774

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !dbg !9775
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao) #24
          to label %.body138.thread.i unwind label %bb.bk, !dbg !9776, !noalias !9192

bb.br:                                            ; preds = %bb.bm, %bb.bl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECskAlUH1kY1DR_10polars_ooc.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit92.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !9777, !noalias !9187
  %i.gh = load i64, ptr %i.bo, align 8, !dbg !9778, !range !9193, !alias.scope !9178, !noundef !241
  %.not113.i = icmp eq i64 %i.gh, 18, !dbg !9778
  br i1 %.not113.i, label %.thread264.i, label %bb.bs, !dbg !9779

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !9780, !noalias !9179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !9781, !noalias !9187
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file14check_mmap_err(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.be)
          to label %bb.bt unwind label %bb.f, !dbg !9781, !noalias !9178

bb.bt:                                            ; preds = %bb.bs
  %i.gi = load i64, ptr %i.bd, align 8, !dbg !9782, !range !9193, !noalias !9187, !noundef !241
  %.not114.i = icmp eq i64 %i.gi, 18, !dbg !9782
  br i1 %.not114.i, label %bb.bv, label %bb.bu, !dbg !9783

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i64 72, i1 false), !dbg !9784, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !9785, !noalias !9187
  br label %.thread264.i, !dbg !9786

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !9785, !noalias !9187
  br label %bb.j, !dbg !9787

bb.bw:                                            ; preds = %bb.j
  %i.gj = load i64, ptr %i.bb, align 8, !dbg !9788, !range !9193, !noalias !9187, !noundef !241 ; 2 uses
  %.not115.i = icmp eq i64 %i.gj, 18, !dbg !9788
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !9789
  %i.gl = load ptr, ptr %i.gk, align 8, !dbg !9789, !noalias !9187 ; 2 uses
  br i1 %.not115.i, label %bb.by, label %bb.bx, !dbg !9790

bb.bx:                                            ; preds = %bb.bw
  %.sroa.678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !9791
  %.sroa.381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16, !dbg !9792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.678.0..sroa_idx.i, i64 56, i1 false), !dbg !9791, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !9793, !noalias !9187
  store i64 %i.gj, ptr %i.bo, align 8, !dbg !9792, !alias.scope !9178
  %.sroa.280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9792
  store ptr %i.gl, ptr %.sroa.280.0..sroa_idx.i, align 8, !dbg !9792, !alias.scope !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !9794, !noalias !9187
  br label %.thread264.i, !dbg !9602

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !9793, !noalias !9187
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80, !dbg !9795
  %i.gn = load ptr, ptr %i.gm, align 8, !dbg !9795, !noalias !9178, !nonnull !241, !noundef !241 ; 3 uses
  %i.go = atomicrmw add ptr %i.gn, i64 1 monotonic, align 8, !dbg !9796, !noalias !9178
  %i.gp = icmp slt i64 %i.go, 0, !dbg !9797
  br i1 %i.gp, label %bb.ca, label %bb.bz, !dbg !9797

bb.bz:                                            ; preds = %bb.by
  store ptr %i.gn, ptr %i.bc, align 8, !dbg !9798, !noalias !9187
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !9799 ; 5 uses
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !9799, !range !418, !alias.scope !9179, !noundef !241
  %.not116.i = icmp eq i64 %i.gr, -9223372036854775808, !dbg !9799
  br i1 %.not116.i, label %bb.cc, label %bb.cb, !dbg !9800

bb.ca:                                            ; preds = %bb.by
  call void @llvm.trap(), !dbg !9801
  unreachable, !dbg !9801

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i), !dbg !9802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !9802, !noalias !9187
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bn, i64 48, !dbg !9803
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !9803, !alias.scope !9179, !nonnull !241, !noundef !241
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bn, i64 56, !dbg !9804
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !9804, !alias.scope !9179, !noundef !241
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16, !dbg !9805
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gt, i64 noundef %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gw)
          to label %bb.ce unwind label %bb.cd, !dbg !9802, !noalias !9178

bb.cc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !9806, !noalias !9187
  %i.gx = load i64, ptr %i.cb, align 8, !dbg !9807, !range !418, !alias.scope !9179, !noundef !241
  %.not118.i = icmp eq i64 %i.gx, -9223372036854775808, !dbg !9807
  br i1 %.not118.i, label %bb.cn, label %bb.cm, !dbg !9808

.body.i:                                          ; preds = %bb.cv, %.body165.i.a, %bb.cd
  %.sroa.052.2.i = phi i8 [ %.sroa.052.4.lpad-body.i, %.body165.i.a ], [ %.sroa.049.3.i, %bb.cd ], [ %.sroa.052.4.lpad-body.i, %bb.cv ], !dbg !9604 ; 2 uses
  %.sroa.049.2.i = phi i8 [ %.sroa.049.5.lpad-body.i, %.body165.i.a ], [ %.sroa.049.3.i, %bb.cd ], [ %.sroa.049.5.lpad-body.i, %bb.cv ], !dbg !9604 ; 2 uses
  %.sroa.046.0.i = phi i8 [ %.sroa.046.2.i, %.body165.i.a ], [ %.sroa.046.1.i, %bb.cd ], [ %.sroa.046.2.i, %bb.cv ], !dbg !9809
  %.pn128.i = phi { ptr, i32 } [ %eh.lpad-body166.i, %.body165.i.a ], [ %i.gz, %bb.cd ], [ %eh.lpad-body166.i, %bb.cv ] ; 2 uses
  %i.gy = trunc nuw i8 %.sroa.046.0.i to i1, !dbg !9794
  br i1 %i.gy, label %.body.thread.i, label %.body153.i, !dbg !9794

bb.cd:                                            ; preds = %bb.fe, %bb.eb, %bb.cm, %bb.cb
  %.sroa.049.3.i = phi i8 [ %.sroa.049.6.i, %bb.fe ], [ 0, %bb.eb ], [ 1, %bb.cb ], [ 1, %bb.cm ], !dbg !9604 ; 2 uses
  %.sroa.046.1.i = phi i8 [ %.sroa.046.2.i, %bb.fe ], [ %.sroa.046.2.i, %bb.eb ], [ 1, %bb.cb ], [ 1, %bb.cm ], !dbg !9809
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ce:                                            ; preds = %bb.cb
  %i.ha = load i64, ptr %i.ba, align 8, !dbg !9810, !range !9193, !noalias !9187, !noundef !241 ; 2 uses
  %.not117.i = icmp eq i64 %i.ha, 18, !dbg !9810
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !9811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !dbg !9811, !noalias !9187
  br i1 %.not117.i, label %bb.ch, label %bb.cf, !dbg !9812

bb.cf:                                            ; preds = %bb.ce
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !9813
  %.sroa.390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !9814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.390.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.687.0..sroa_idx.i, i64 40, i1 false), !dbg !9813, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !9815, !noalias !9187
  %.sroa.289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.289.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, i64 24, i1 false), !dbg !9815, !noalias !9179
  store i64 %i.ha, ptr %i.bo, align 8, !dbg !9814, !alias.scope !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i), !dbg !9816
  call void @llvm.experimental.noalias.scope.decl(metadata !9266), !dbg !9794
  call void @llvm.experimental.noalias.scope.decl(metadata !9267), !dbg !9817
  %i.hc = load ptr, ptr %i.bc, align 8, !dbg !9818, !alias.scope !9268, !noalias !9187, !nonnull !241, !noundef !241
  %i.hd = atomicrmw add ptr %i.hc, i64 -1 release, align 8, !dbg !9819, !noalias !9269
  %i.he = icmp eq i64 %i.hd, 1, !dbg !9820
  br i1 %i.he, label %bb.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !9820

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !dbg !9821
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.f, !dbg !9822, !noalias !9178

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !9815, !noalias !9187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !9823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, i64 24, i1 false), !dbg !9802, !noalias !9187
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i), !dbg !9816
  %i.hf = load i64, ptr %i.cb, align 8, !dbg !9824, !range !418, !alias.scope !9270, !noundef !241
  %i.hg = icmp eq i64 %i.hf, -9223372036854775808, !dbg !9824
  br i1 %i.hg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.ci, !dbg !9824

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %bb.cj, !dbg !9825, !noalias !9178

bb.cj:                                            ; preds = %bb.ci
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.thread256.i unwind label %bb.ck, !dbg !9826, !noalias !9178

bb.ck:                                            ; preds = %bb.cj
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9825, !noalias !9178
  unreachable, !dbg !9825

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.ci
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.cl, !dbg !9827, !noalias !9178

bb.cl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.thread256.i, !dbg !9828

.thread256.i:                                     ; preds = %bb.cl, %bb.cj
  %eh.lpad-body157.i = phi { ptr, i32 } [ %i.hj, %bb.cl ], [ %i.hh, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !dbg !9828, !noalias !9178
  br label %.body.thread.i, !dbg !9794

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !dbg !9828, !noalias !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !9829
  br label %bb.cc, !dbg !9830

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !9794, !noalias !9187
  br label %.thread264.i, !dbg !9786

bb.cm:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !9831, !noalias !9187
  %i.hk = load ptr, ptr %i.bc, align 8, !dbg !9832, !noalias !9187, !nonnull !241, !noundef !241
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16, !dbg !9833
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bn, i64 24, !dbg !9834
  %i.hn = load ptr, ptr %i.hm, align 8, !dbg !9834, !alias.scope !9179, !nonnull !241, !noundef !241
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bn, i64 32, !dbg !9835
  %i.hp = load i64, ptr %i.ho, align 8, !dbg !9835, !alias.scope !9179, !noundef !241
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils5other16apply_projection(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.hl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hn, i64 noundef %i.hp)
          to label %bb.co unwind label %bb.cd, !dbg !9831, !noalias !9178

bb.cn:                                            ; preds = %bb.cc
  %i.hq = load ptr, ptr %i.bc, align 8, !dbg !9836, !noalias !9187, !nonnull !241, !noundef !241
  store ptr %i.hq, ptr %i.ay, align 8, !dbg !9836, !noalias !9187
  br label %bb.ct, !dbg !9837

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !9838, !noalias !9187
  store i64 1, ptr %i.ap, align 8, !dbg !9838, !noalias !9187
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !9838
  store i64 1, ptr %i.hr, align 8, !dbg !9838, !noalias !9187
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !9838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hs, ptr noundef nonnull align 8 dereferenceable(88) %i.ax, i64 88, i1 false), !dbg !9838, !noalias !9187
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9839, !noalias !9279
  %i.ht = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 48, 105) 104, i64 noundef 8) #25, !dbg !9840, !noalias !9279 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null, !dbg !9841
  br i1 %i.hu, label %bb.cp, label %bb.cs, !dbg !9842, !prof !322

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #21
          to label %.noexc159.i unwind label %bb.cq, !dbg !9843, !noalias !9178

.noexc159.i:                                      ; preds = %bb.cp
  unreachable, !dbg !9843

bb.cq:                                            ; preds = %bb.cp
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3H_EEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ap) #22
          to label %.body.thread.i unwind label %bb.cr, !dbg !9844, !noalias !9178

bb.cr:                                            ; preds = %bb.cq
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9845, !noalias !9178
  unreachable, !dbg !9845

bb.cs:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ht, ptr noundef nonnull align 8 dereferenceable(104) %i.ap, i64 104, i1 false), !dbg !9846, !noalias !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !9847, !noalias !9187
  store ptr %i.ht, ptr %i.ay, align 8, !dbg !9848, !noalias !9187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !9849, !noalias !9187
  br label %bb.ct, !dbg !9837

bb.ct:                                            ; preds = %bb.cs, %bb.cn
  %.sroa.046.2.i = phi i8 [ 1, %bb.cs ], [ 0, %bb.cn ], !dbg !9850 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !9851, !noalias !9187
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(312) %i.bn)
          to label %bb.cw unwind label %bb.cu, !dbg !9852, !noalias !9178

bb.cu:                                            ; preds = %bb.dx, %bb.dw, %bb.ct
  %.sroa.052.4.i = phi i8 [ 0, %bb.dx ], [ 0, %bb.dw ], [ 1, %bb.ct ], !dbg !9604
  %.sroa.049.5.i = phi i8 [ 0, %bb.dx ], [ 1, %bb.dw ], [ 1, %bb.ct ], !dbg !9604
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body165.i.a, !dbg !9853

.body165.i.a:                                     ; preds = %bb.dv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i, %bb.cu
  %.sroa.052.4.lpad-body.i = phi i8 [ %.sroa.052.4.i, %bb.cu ], [ 1, %bb.dv ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i ] ; 2 uses
  %.sroa.049.5.lpad-body.i = phi i8 [ %.sroa.049.5.i, %bb.cu ], [ 1, %bb.dv ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i ] ; 2 uses
  %eh.lpad-body166.i = phi { ptr, i32 } [ %i.hx, %bb.cu ], [ %.pn.pn.i.i, %bb.dv ], [ %.pn.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9280), !dbg !9853
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCskAlUH1kY1DR_10polars_ooc:bb.a
  %.pn.i163.i = phi { ptr, i32 } [ %i.ja, %bb.dq ], [ %i.ix, %bb.dn ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc9IpcSchemaECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(32) %i.t) #22
          to label %bb.dh unwind label %bb.ds, !dbg !9896, !noalias !9304

bb.dn:                                            ; preds = %bb.dl
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !dbg !9897
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 56, !dbg !9898 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !dbg !9898, !range !418, !alias.scope !9287, !noalias !9178, !noundef !241
  %.not9.i.i = icmp eq i64 %i.iz, -9223372036854775808, !dbg !9898
  br i1 %.not9.i.i, label %bb.dw, label %bb.dp, !dbg !9899

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9900, !noalias !9288
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy)
          to label %bb.dr unwind label %bb.dq, !dbg !9901, !noalias !9304

bb.dq:                                            ; preds = %bb.dp
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.s) #22
          to label %bb.dm unwind label %bb.ds, !dbg !9896, !noalias !9304

bb.dr:                                            ; preds = %bb.dp
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.q, align 8, !dbg !9902, !noalias !9288
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !9902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !dbg !9902, !noalias !9288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9903, !noalias !9288
  br label %bb.dw, !dbg !9904

bb.ds:                                            ; preds = %bb.dv, %bb.du, %bb.dq, %bb.dm, %bb.dj
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9905, !noalias !9304
  unreachable, !dbg !9905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !9306), !dbg !9896
  %i.jc = load ptr, ptr %i.v, align 8, !dbg !9906, !alias.scope !9306, !noalias !9288, !noundef !241 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null, !dbg !9906
  br i1 %i.jd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i, label %bb.dt, !dbg !9906

bb.dt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.je = atomicrmw add ptr %i.jc, i64 -1 release, align 8, !dbg !9907, !noalias !9307
  %i.jf = icmp eq i64 %i.je, 1, !dbg !9908
  br i1 %i.jf, label %bb.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i, !dbg !9908

bb.du:                                            ; preds = %bb.dt
  fence acquire, !dbg !9909
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i unwind label %bb.ds, !dbg !9910, !noalias !9304

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i: ; preds = %bb.du, %bb.dt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9308), !dbg !9896
  call void @llvm.experimental.noalias.scope.decl(metadata !9309), !dbg !9911
  %i.jg = load ptr, ptr %i.w, align 8, !dbg !9912, !alias.scope !9310, !noalias !9288, !nonnull !241, !noundef !241
  %i.jh = atomicrmw add ptr %i.jg, i64 -1 release, align 8, !dbg !9913, !noalias !9311
  %i.ji = icmp eq i64 %i.jh, 1, !dbg !9914
  br i1 %i.ji, label %bb.dv, label %.body165.i.a, !dbg !9914

bb.dv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECskAlUH1kY1DR_10polars_ooc.exit13.i.i
  fence acquire, !dbg !9915
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #24
          to label %.body165.i.a unwind label %bb.ds, !dbg !9916, !noalias !9304

bb.dw:                                            ; preds = %bb.dr, %bb.do
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.dr ], [ -9223372036854775808, %bb.do ], !dbg !9917
  %i.jj = getelementptr inbounds nuw i8, ptr %i.id, i64 104, !dbg !9918
  %i.jk = load i64, ptr %i.jj, align 8, !dbg !9918, !alias.scope !9287, !noalias !9178, !noundef !241
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aw, i64 80, !dbg !9905
  store ptr %i.if, ptr %i.jl, align 8, !dbg !9905, !alias.scope !9286, !noalias !9187
  %i.jm = getelementptr inbounds nuw i8, ptr %i.aw, i64 88, !dbg !9905
  store ptr %i.ij, ptr %i.jm, align 8, !dbg !9905, !alias.scope !9286, !noalias !9187
  %i.jn = getelementptr inbounds nuw i8, ptr %i.aw, i64 96, !dbg !9905
  store ptr %i.in, ptr %i.jn, align 8, !dbg !9905, !alias.scope !9286, !noalias !9187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !9905, !noalias !9312
  %i.jo = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !9905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !9905, !noalias !9312
  %i.jp = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !9905
  store i64 %.sroa.0.0.i.i, ptr %i.jp, align 8, !dbg !9905, !alias.scope !9286, !noalias !9187
  %.sroa.5.0..sroa_idx.i164.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !9905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i164.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !dbg !9905, !noalias !9312
  %i.jq = getelementptr inbounds nuw i8, ptr %i.aw, i64 104, !dbg !9905
  store i64 %i.jk, ptr %i.jq, align 8, !dbg !9905, !alias.scope !9286, !noalias !9187
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !9896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9896, !noalias !9288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9896, !noalias !9288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9896, !noalias !9288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9896, !noalias !9288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !9896, !noalias !9288
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bn, i64 304, !dbg !9919
  %i.js = load i32, ptr %i.jr, align 8, !dbg !9919, !range !419, !alias.scope !9179, !noundef !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !9920, !noalias !9187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !dbg !9920, !noalias !9178
  %i.jt = load i64, ptr %i.bn, align 8, !dbg !9921, !range !248, !alias.scope !9179, !noundef !241
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !9921
  %i.jv = load i64, ptr %i.ju, align 8, !dbg !9921, !alias.scope !9179
  invoke void @_RNvMNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6readerINtB2_10FileReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE3newCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.au, i32 noundef %i.js, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.at, i64 noundef %i.jt, i64 %i.jv)
          to label %bb.dx unwind label %bb.cu, !dbg !9922, !noalias !9178

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !9923, !noalias !9187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i), !dbg !9924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !9924, !noalias !9187
  %i.jw = load ptr, ptr %i.ay, align 8, !dbg !9925, !noalias !9187, !nonnull !241, !noundef !241
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16, !dbg !9926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !9927, !noalias !9187
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !9927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.jy, i64 32, i1 false), !dbg !9927, !noalias !9178
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io6shared13finish_readerINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6reader10FileReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(360) %i.au, i1 noundef zeroext %i.cm, i64 noundef 0, i64 undef, ptr noundef null, ptr undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.jx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.dy unwind label %bb.cu, !dbg !9924, !noalias !9178

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !9928, !noalias !9187
  %i.jz = load i64, ptr %i.as, align 8, !dbg !9929, !range !9193, !noalias !9187, !noundef !241 ; 2 uses
  %.not120.i = icmp eq i64 %i.jz, 18, !dbg !9929
  %i.ka = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !9930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ka, i64 48, i1 false), !dbg !9930, !noalias !9187
  br i1 %.not120.i, label %bb.ea, label %bb.dz, !dbg !9931

bb.dz:                                            ; preds = %bb.dy
  %.sroa.6107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 56, !dbg !9932
  %.sroa.3110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56, !dbg !9933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3110.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6107.0..sroa_idx.i, i64 16, i1 false), !dbg !9932, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9934, !noalias !9187
  %.sroa.2109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2109.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, i64 48, i1 false), !dbg !9934, !noalias !9179
  store i64 %i.jz, ptr %i.bo, align 8, !dbg !9933, !alias.scope !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i), !dbg !9935
  br label %bb.fd, !dbg !9936

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9934, !noalias !9187
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !9937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kb, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, i64 48, i1 false), !dbg !9924, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i), !dbg !9935
  store i64 18, ptr %i.bo, align 8, !dbg !9937, !alias.scope !9178
  call void @llvm.experimental.noalias.scope.decl(metadata !9316), !dbg !9853
  call void @llvm.experimental.noalias.scope.decl(metadata !9317), !dbg !9938
  %i.kc = load ptr, ptr %i.ay, align 8, !dbg !9939, !alias.scope !9318, !noalias !9187, !nonnull !241, !noundef !241
  %i.kd = atomicrmw add ptr %i.kc, i64 -1 release, align 8, !dbg !9940, !noalias !9319
  %i.ke = icmp eq i64 %i.kd, 1, !dbg !9941
  br i1 %i.ke, label %bb.eb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit168.i, !dbg !9941

bb.eb:                                            ; preds = %bb.ea
  fence acquire, !dbg !9942
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit168.i unwind label %bb.cd, !dbg !9943, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit168.i: ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !9853, !noalias !9187
  %i.kf = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !9794
  br i1 %i.kf, label %bb.ef, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i, !dbg !9794

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i: ; preds = %bb.eg, %bb.ef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit168.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !9794, !noalias !9187
  %i.kg = load i64, ptr %i.gq, align 8, !dbg !9944, !range !418, !alias.scope !9320, !noundef !241
  %i.kh = icmp eq i64 %i.kg, -9223372036854775808, !dbg !9944
  br i1 %i.kh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.ec, !dbg !9944

bb.ec:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %bb.ed, !dbg !9945, !noalias !9178

bb.ed:                                            ; preds = %bb.ec
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %.body169.i unwind label %bb.ee, !dbg !9946, !noalias !9178

bb.ee:                                            ; preds = %bb.ed
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9945, !noalias !9178
  unreachable, !dbg !9945

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.ec
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.eh, !dbg !9947, !noalias !9178

bb.ef:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit168.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9321), !dbg !9794
  call void @llvm.experimental.noalias.scope.decl(metadata !9322), !dbg !9948
  %i.kk = load ptr, ptr %i.bc, align 8, !dbg !9949, !alias.scope !9323, !noalias !9187, !nonnull !241, !noundef !241
  %i.kl = atomicrmw add ptr %i.kk, i64 -1 release, align 8, !dbg !9950, !noalias !9324
  %i.km = icmp eq i64 %i.kl, 1, !dbg !9951
  br i1 %i.km, label %bb.eg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i, !dbg !9951

bb.eg:                                            ; preds = %bb.ef
  fence acquire, !dbg !9952
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i unwind label %bb.f, !dbg !9953, !noalias !9178

bb.eh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i, !dbg !9602

.body169.i:                                       ; preds = %bb.eh, %bb.ed
  %eh.lpad-body170.i = phi { ptr, i32 } [ %i.kn, %bb.eh ], [ %i.ki, %bb.ed ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bn, i64 64, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.ko) #22
          to label %.body174.i unwind label %bb.fc, !dbg !9602, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit173.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64, !dbg !9602 ; 4 uses
  %i.kq = load i64, ptr %i.kp, align 8, !dbg !9954, !range !418, !alias.scope !9325, !noundef !241
  %i.kr = icmp eq i64 %i.kq, -9223372036854775808, !dbg !9954
  br i1 %i.kr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.ei, !dbg !9954

bb.ei:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %bb.ej, !dbg !9955, !noalias !9178

bb.ej:                                            ; preds = %bb.ei
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %.body174.i unwind label %bb.ek, !dbg !9956, !noalias !9178

bb.ek:                                            ; preds = %bb.ej
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9955, !noalias !9178
  unreachable, !dbg !9955

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.ei
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.el, !dbg !9957, !noalias !9178

.body174.i:                                       ; preds = %bb.el, %bb.ej, %.body169.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body170.i, %.body169.i ], [ %i.kv, %bb.el ], [ %i.ks, %bb.ej ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bn, i64 224, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(40) %i.ku) #22
          to label %.body178.i unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.el:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body174.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bn, i64 247, !dbg !9958
  %i.kx = load i8, ptr %i.kw, align 1, !dbg !9958, !range !425, !alias.scope !9326, !noundef !241
  switch i8 %i.kx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i
    i8 -40, label %bb.em
  ], !dbg !9958, !prof !426

bb.em:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bn, i64 224, !dbg !9602
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ky)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.en, !dbg !9959, !noalias !9178

bb.en:                                            ; preds = %bb.em
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.bn, i64 248, !dbg !9960 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9327), !dbg !9960
  call void @llvm.experimental.noalias.scope.decl(metadata !9328), !dbg !9961
  call void @llvm.experimental.noalias.scope.decl(metadata !9329), !dbg !9962
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !9963, !alias.scope !9330, !nonnull !241, !noundef !241
  %i.lc = atomicrmw add ptr %i.lb, i64 -1 release, align 8, !dbg !9964, !noalias !9331
  %i.ld = icmp eq i64 %i.lc, 1, !dbg !9965
  br i1 %i.ld, label %bb.eo, label %.body178.i, !dbg !9965

bb.eo:                                            ; preds = %bb.en
  fence acquire, !dbg !9966
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.la) #24
          to label %.body178.i unwind label %bb.eq, !dbg !9967, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.em, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.bn, i64 248, !dbg !9960 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9332), !dbg !9960
  call void @llvm.experimental.noalias.scope.decl(metadata !9333), !dbg !9968
  call void @llvm.experimental.noalias.scope.decl(metadata !9334), !dbg !9969
  %i.lf = load ptr, ptr %i.le, align 8, !dbg !9970, !alias.scope !9335, !nonnull !241, !noundef !241
  %i.lg = atomicrmw add ptr %i.lf, i64 -1 release, align 8, !dbg !9971, !noalias !9336
  %i.lh = icmp eq i64 %i.lg, 1, !dbg !9972
  br i1 %i.lh, label %bb.ep, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !9972

bb.ep:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i.i
  fence acquire, !dbg !9973
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.le) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.er, !dbg !9974, !noalias !9178

bb.eq:                                            ; preds = %bb.eo
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9960, !noalias !9178
  unreachable, !dbg !9960

.body178.i:                                       ; preds = %bb.er, %bb.eo, %bb.en, %.body174.i
  %.pn122.i = phi { ptr, i32 } [ %.pn.i, %.body174.i ], [ %i.lj, %bb.er ], [ %i.kz, %bb.eo ], [ %i.kz, %bb.en ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.cj) #22
          to label %.body180.i unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.er:                                            ; preds = %bb.ep
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.ep, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.lk = load i64, ptr %i.cj, align 8, !dbg !9975, !range !418, !alias.scope !9337, !noundef !241
  %i.ll = icmp eq i64 %i.lk, -9223372036854775808, !dbg !9975
  br i1 %i.ll, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.es, !dbg !9975

bb.es:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.et, !dbg !9976, !noalias !9178

bb.et:                                            ; preds = %bb.es
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %.body180.i unwind label %bb.eu, !dbg !9977, !noalias !9178

bb.eu:                                            ; preds = %bb.et
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9976, !noalias !9178
  unreachable, !dbg !9976

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.es
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.ew, !dbg !9978, !noalias !9178

.body180.i:                                       ; preds = %bb.ew, %bb.et, %.body178.i
  %.pn124.i = phi { ptr, i32 } [ %.pn122.i, %.body178.i ], [ %i.lr, %bb.ew ], [ %i.lm, %bb.et ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112, !dbg !9602 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !9979, !range !418, !alias.scope !9338, !noundef !241
  %i.lq = icmp eq i64 %i.lp, -9223372036854775808, !dbg !9979
  br i1 %i.lq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.ev, !dbg !9979

bb.ev:                                            ; preds = %.body180.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.lo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.fc, !dbg !9979, !noalias !9178

bb.ew:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body180.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bn, i64 112, !dbg !9602 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !dbg !9980, !range !418, !alias.scope !9339, !noundef !241
  %i.lu = icmp eq i64 %i.lt, -9223372036854775808, !dbg !9980
  br i1 %i.lu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit185.i, label %bb.ex, !dbg !9980

bb.ex:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ls)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit185.i unwind label %bb.fa, !dbg !9980, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.fa, %bb.ev, %.body180.i
  %.pn126.i = phi { ptr, i32 } [ %i.ma, %bb.fa ], [ %.pn124.i, %bb.ev ], [ %.pn124.i, %.body180.i ] ; 2 uses
  %.sroa.38.5.i = extractvalue { ptr, i32 } %.pn126.i, 1 ; 3 uses
  %.sroa.0111.5.i = extractvalue { ptr, i32 } %.pn126.i, 0 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bn, i64 296, !dbg !9602 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9340), !dbg !9602
  %i.lw = load ptr, ptr %i.lv, align 8, !dbg !9981, !alias.scope !9341, !noundef !241 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null, !dbg !9981
  br i1 %i.lx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.ey, !dbg !9981

bb.ey:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.ly = atomicrmw add ptr %i.lw, i64 -1 release, align 8, !dbg !9982, !noalias !9342
  %i.lz = icmp eq i64 %i.ly, 1, !dbg !9983
  br i1 %i.lz, label %bb.ez, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !9983

bb.ez:                                            ; preds = %bb.ey
  fence acquire, !dbg !9984
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lv) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.fc, !dbg !9985, !noalias !9178

bb.fa:                                            ; preds = %bb.ex
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit185.i: ; preds = %bb.ex, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bn, i64 296, !dbg !9602 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9343), !dbg !9602
  %i.mc = load ptr, ptr %i.mb, align 8, !dbg !9986, !alias.scope !9344, !noundef !241 ; 2 uses
  %i.md = icmp eq ptr %i.mc, null, !dbg !9986
  br i1 %i.md, label %bb.hn, label %bb.fb, !dbg !9986

bb.fb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit185.i
  %i.me = atomicrmw add ptr %i.mc, i64 -1 release, align 8, !dbg !9987, !noalias !9345
  %i.mf = icmp eq i64 %i.me, 1, !dbg !9988
  br i1 %i.mf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit189.sink.split.i, label %bb.hn, !dbg !9988

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit189.sink.split.i: ; preds = %bb.gx, %bb.fb
  %.sink.i = phi ptr [ %i.ps, %bb.gx ], [ %i.mb, %bb.fb ]
  fence acquire, !dbg !9989
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i) #24
          to label %bb.hn unwind label %bb.hm, !dbg !9990

bb.fc:                                            ; preds = %bb.hh, %bb.hf, %bb.hd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit241.i, %bb.hb, %bb.ha, %.body153.thread.i, %bb.gz, %bb.gy, %bb.gv, %bb.gr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i, %.body210.i, %.body196.i, %.body202.i.a, %bb.fy, %bb.fn, %bb.ez, %bb.ev, %.body178.i, %.body174.i, %.body169.i, %bb.cv
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !9991, !noalias !9178
  unreachable, !dbg !9991

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.hh, %bb.hg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i, %bb.gv, %bb.gu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a, %bb.ez, %bb.ey, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i
  %.sroa.0111.6.i = phi ptr [ %.sroa.0111.5.i, %bb.ey ], [ %.sroa.0111.13.i, %bb.gu ], [ %.sroa.0111.5.i, %bb.ez ], [ %.sroa.0111.5.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i ], [ %.sroa.0111.13.i, %bb.gv ], [ %.sroa.0111.13.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a ], [ %.sroa.0111.0244.i, %bb.hh ], [ %.sroa.0111.0244.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i ], [ %.sroa.0111.0244.i, %bb.hg ]
  %.sroa.38.6.i = phi i32 [ %.sroa.38.5.i, %bb.ey ], [ %.sroa.38.13.i, %bb.gu ], [ %.sroa.38.5.i, %bb.ez ], [ %.sroa.38.5.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit.i ], [ %.sroa.38.13.i, %bb.gv ], [ %.sroa.38.13.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a ], [ %.sroa.38.0242.i, %bb.hh ], [ %.sroa.38.0242.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i ], [ %.sroa.38.0242.i, %bb.hg ]
  %2 = insertvalue { ptr, i32 } poison, ptr %.sroa.0111.6.i, 0, !dbg !9991
  %3 = insertvalue { ptr, i32 } %2, i32 %.sroa.38.6.i, 1, !dbg !9991
  br label %.body, !dbg !9991

bb.fd:                                            ; preds = %bb.dz, %bb.cx
  %.sroa.049.6.i = phi i8 [ 1, %bb.cx ], [ 0, %bb.dz ], !dbg !9604 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9346), !dbg !9853
  call void @llvm.experimental.noalias.scope.decl(metadata !9347), !dbg !9992
  %i.mh = load ptr, ptr %i.ay, align 8, !dbg !9993, !alias.scope !9348, !noalias !9187, !nonnull !241, !noundef !241
  %i.mi = atomicrmw add ptr %i.mh, i64 -1 release, align 8, !dbg !9994, !noalias !9349
  %i.mj = icmp eq i64 %i.mi, 1, !dbg !9995
  br i1 %i.mj, label %bb.fe, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit191.i, !dbg !9995

bb.fe:                                            ; preds = %bb.fd
  fence acquire, !dbg !9996
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit191.i unwind label %bb.cd, !dbg !9997, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit191.i: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !9853, !noalias !9187
  %i.mk = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !9794
  br i1 %i.mk, label %bb.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i, !dbg !9794

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i: ; preds = %bb.fg, %bb.ff, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !9794, !noalias !9187
  %i.ml = trunc nuw i8 %.sroa.049.6.i to i1, !dbg !9602
  br i1 %i.ml, label %.thread264.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i, !dbg !9602

bb.ff:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit191.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9350), !dbg !9794
  call void @llvm.experimental.noalias.scope.decl(metadata !9351), !dbg !9998
  %i.mm = load ptr, ptr %i.bc, align 8, !dbg !9999, !alias.scope !9352, !noalias !9187, !nonnull !241, !noundef !241
  %i.mn = atomicrmw add ptr %i.mm, i64 -1 release, align 8, !dbg !10000, !noalias !9353
  %i.mo = icmp eq i64 %i.mn, 1, !dbg !10001
  br i1 %i.mo, label %bb.fg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i, !dbg !10001

bb.fg:                                            ; preds = %bb.ff
  fence acquire, !dbg !10002
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i unwind label %bb.f, !dbg !10003, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i201.i, %.thread264.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i
  %.sroa.049.9.i = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i201.i ], [ 1, %.thread264.i ], !dbg !9603 ; 8 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !9602 ; 4 uses
  %i.mq = load i64, ptr %i.mp, align 8, !dbg !10004, !range !418, !alias.scope !9354, !noundef !241
  %i.mr = icmp eq i64 %i.mq, -9223372036854775808, !dbg !10004
  br i1 %i.mr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit199.i, label %bb.fh, !dbg !10004

bb.fh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i195.i unwind label %bb.fi, !dbg !10005, !noalias !9178

bb.fi:                                            ; preds = %bb.fh
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %.body196.i unwind label %bb.fj, !dbg !10006, !noalias !9178

bb.fj:                                            ; preds = %bb.fi
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10005, !noalias !9178
  unreachable, !dbg !10005

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i195.i: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit199.i unwind label %bb.gb, !dbg !10007, !noalias !9178

.thread264.i:                                     ; preds = %bb.fv, %bb.fs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit193.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.bx, %bb.bu, %bb.br
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bn, i64 304, !dbg !9602
  %.val151.i = load i32, ptr %i.mu, align 8, !dbg !9602, !range !419, !alias.scope !9179, !noundef !241
  %i.mv = call noundef i32 @close(i32 noundef %.val151.i) #25, !dbg !10008, !noalias !9178 ; 0 uses
  %i.mw = load i64, ptr %i.cb, align 8, !dbg !10009, !range !418, !alias.scope !9355, !noundef !241
  %i.mx = icmp eq i64 %i.mw, -9223372036854775808, !dbg !10009
  br i1 %i.mx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i, label %bb.fk, !dbg !10009

bb.fk:                                            ; preds = %.thread264.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i201.i unwind label %bb.fl, !dbg !10010, !noalias !9178

bb.fl:                                            ; preds = %bb.fk
  %i.my = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.body202.i.a unwind label %bb.fm, !dbg !10011, !noalias !9178

bb.fm:                                            ; preds = %bb.fl
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10010, !noalias !9178
  unreachable, !dbg !10010

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i201.i: ; preds = %bb.fk
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i unwind label %4, !dbg !10012, !noalias !9178

.body.thread.i:                                   ; preds = %bb.cq, %.thread256.i, %.body.i
  %.pn128263.i = phi { ptr, i32 } [ %eh.lpad-body157.i, %.thread256.i ], [ %.pn128.i, %.body.i ], [ %i.hv, %bb.cq ] ; 2 uses
  %.sroa.049.2262.i = phi i8 [ 1, %.thread256.i ], [ %.sroa.049.2.i, %.body.i ], [ 1, %bb.cq ] ; 2 uses
  %.sroa.052.2261.i = phi i8 [ 1, %.thread256.i ], [ %.sroa.052.2.i, %.body.i ], [ 1, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9356), !dbg !9794
  call void @llvm.experimental.noalias.scope.decl(metadata !9357), !dbg !10013
  %i.na = load ptr, ptr %i.bc, align 8, !dbg !10014, !alias.scope !9358, !noalias !9187, !nonnull !241, !noundef !241
  %i.nb = atomicrmw add ptr %i.na, i64 -1 release, align 8, !dbg !10015, !noalias !9359
  %i.nc = icmp eq i64 %i.nb, 1, !dbg !10016
  br i1 %i.nc, label %bb.fn, label %.body153.i, !dbg !10016

bb.fn:                                            ; preds = %.body.thread.i
  fence acquire, !dbg !10017
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #24
          to label %.body153.i unwind label %bb.fc, !dbg !10018, !noalias !9178

bb.fo:                                            ; preds = %bb.h
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !9610
  %i.ne = load i64, ptr %i.nd, align 8, !dbg !10019, !alias.scope !9179, !noundef !241
  br label %bb.fq, !dbg !10020

bb.fp:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !10021, !noalias !9187
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bn, i64 304, !dbg !10022
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file13get_row_countNtNtCsh8eZTKRCwoO_3std2fs4FileECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.nf)
          to label %bb.fr unwind label %bb.f, !dbg !10021, !noalias !9178

bb.fq:                                            ; preds = %bb.ft, %bb.fo
  %.sroa.01.0.i = phi i64 [ %i.ne, %bb.fo ], [ %i.nm, %bb.ft ], !dbg !9604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !10023, !noalias !9187
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !10024
  store i64 %.sroa.01.0.i, ptr %i.ng, align 8, !dbg !10024, !noalias !9187
  store i64 0, ptr %i.bg, align 8, !dbg !10024, !noalias !9187
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !10024
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.465.0..sroa_idx.i, align 8, !dbg !10024, !noalias !9187
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !10024
  store i64 0, ptr %.sroa.566.0..sroa_idx.i, align 8, !dbg !10024, !noalias !9187
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40, !dbg !10024
  store i32 3, ptr %.sroa.468.0..sroa_idx.i, align 8, !dbg !10024, !noalias !9187
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !10025 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bn, i64 287, !dbg !10025
  %i.nj = load i8, ptr %i.ni, align 1, !dbg !10025, !range !425, !alias.scope !9179, !noundef !241 ; 2 uses
  %.not131.i = icmp eq i8 %i.nj, -38, !dbg !10025
  br i1 %.not131.i, label %bb.fv, label %bb.fu, !dbg !10026

bb.fr:                                            ; preds = %bb.fp
  %i.nk = load i64, ptr %i.bh, align 8, !dbg !10027, !range !9193, !noalias !9187, !noundef !241 ; 2 uses
  %.not130.i = icmp eq i64 %i.nk, 18, !dbg !10027
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !10028
  %i.nm = load i64, ptr %i.nl, align 8, !dbg !10028, !noalias !9187 ; 2 uses
  br i1 %.not130.i, label %bb.ft, label %bb.fs, !dbg !10029

bb.fs:                                            ; preds = %bb.fr
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !10030
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16, !dbg !10031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.660.0..sroa_idx.i, i64 56, i1 false), !dbg !10030, !noalias !9179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !10032, !noalias !9187
  store i64 %i.nk, ptr %i.bo, align 8, !dbg !10031, !alias.scope !9178
  %.sroa.262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !10031
  store i64 %i.nm, ptr %.sroa.262.0..sroa_idx.i, align 8, !dbg !10031, !alias.scope !9178
  br label %.thread264.i, !dbg !9786

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !10032, !noalias !9187
  br label %bb.fq, !dbg !10020

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !10033, !noalias !9187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !10034, !noalias !9187
  %i.nn = icmp eq i8 %i.nj, -40, !dbg !10035
  br i1 %i.nn, label %bb.fw, label %bb.fx, !dbg !10035

bb.fv:                                            ; preds = %bb.ga, %bb.fq
  %i.no = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !10036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.no, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false), !dbg !10037, !noalias !9179
  store i64 18, ptr %i.bo, align 8, !dbg !10036, !alias.scope !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !10038, !noalias !9187
  br label %.thread264.i, !dbg !10039

bb.fw:                                            ; preds = %bb.fu
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nh)
          to label %bb.fz unwind label %bb.fy, !dbg !10040, !noalias !9178

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.nh, i64 24, i1 false), !dbg !10041, !noalias !9178
  br label %bb.fz, !dbg !10042

bb.fy:                                            ; preds = %bb.fz, %bb.fw
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(48) %i.bg) #22
          to label %.thread.i unwind label %bb.fc, !dbg !10038, !noalias !9178

.thread.i:                                        ; preds = %bb.fy
  %.sroa.38.0235.i = extractvalue { ptr, i32 } %i.np, 1
  %.sroa.0111.0236.i = extractvalue { ptr, i32 } %i.np, 0
  br label %.body153.thread.i, !dbg !9602

bb.fz:                                            ; preds = %bb.fx, %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !10043, !noalias !9187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !10044, !noalias !9187
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bn, i64 288, !dbg !10045
  %i.nr = load i32, ptr %i.nq, align 8, !dbg !10045, !alias.scope !9179, !noundef !241
  %i.ns = invoke noundef nonnull align 8 ptr @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame18with_row_index_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, i32 noundef 1, i32 %i.nr)
          to label %bb.ga unwind label %bb.fy, !dbg !10046, !noalias !9178 ; 0 uses

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !10047, !noalias !9187
  br label %bb.fv, !dbg !10048

4:                                                ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskAlUH1kY1DR_10polars_ooc.exit.i201.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body202.i.a

.body202.i.a:                                     ; preds = %4, %bb.fl
  %.pn134.i = phi { ptr, i32 } [ %5, %4 ], [ %i.my, %bb.fl ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.nt) #22
          to label %.body196.i unwind label %bb.fc, !dbg !9602, !noalias !9178

.body196.i:                                       ; preds = %bb.gb, %.body202.i.a, %bb.fi
  %.sroa.049.12.i = phi i8 [ 1, %.body202.i.a ], [ %.sroa.049.9.i, %bb.fi ], [ %.sroa.049.9.i, %bb.gb ], !dbg !9603
  %.pn136.i = phi { ptr, i32 } [ %.pn134.i, %.body202.i.a ], [ %i.ms, %bb.fi ], [ %i.nv, %bb.gb ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bn, i64 64, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.nu) #22
          to label %.body210.i unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.gb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i195.i
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body196.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit199.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECskAlUH1kY1DR_10polars_ooc.exit.i195.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc.exit205.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64, !dbg !9602 ; 4 uses
  %i.nx = load i64, ptr %i.nw, align 8, !dbg !10049, !range !418, !alias.scope !9367, !noundef !241
  %i.ny = icmp eq i64 %i.nx, -9223372036854775808, !dbg !10049
  br i1 %i.ny, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i, label %bb.gc, !dbg !10049

bb.gc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit199.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i209.i unwind label %bb.gd, !dbg !10050, !noalias !9178

bb.gd:                                            ; preds = %bb.gc
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nw)
          to label %.body210.i unwind label %bb.ge, !dbg !10051, !noalias !9178

bb.ge:                                            ; preds = %bb.gd
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10050, !noalias !9178
  unreachable, !dbg !10050

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i209.i: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i unwind label %bb.gf, !dbg !10052, !noalias !9178

.body210.i:                                       ; preds = %bb.gf, %bb.gd, %.body196.i
  %.sroa.049.13.i = phi i8 [ %.sroa.049.12.i, %.body196.i ], [ %.sroa.049.9.i, %bb.gd ], [ %.sroa.049.9.i, %bb.gf ], !dbg !9603
  %.pn138.i = phi { ptr, i32 } [ %.pn136.i, %.body196.i ], [ %i.nz, %bb.gd ], [ %i.oc, %bb.gf ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bn, i64 224, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(40) %i.ob) #22
          to label %.body217.i unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.gf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i209.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body210.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskAlUH1kY1DR_10polars_ooc.exit.i209.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc.exit199.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.bn, i64 247, !dbg !10053
  %i.oe = load i8, ptr %i.od, align 1, !dbg !10053, !range !425, !alias.scope !9368, !noundef !241
  switch i8 %i.oe, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i215.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i
    i8 -40, label %bb.gg
  ], !dbg !10053, !prof !426

bb.gg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.bn, i64 224, !dbg !9602
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.of)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i215.i unwind label %bb.gh, !dbg !10054, !noalias !9178

bb.gh:                                            ; preds = %bb.gg
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bn, i64 248, !dbg !10055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9369), !dbg !10055
  call void @llvm.experimental.noalias.scope.decl(metadata !9370), !dbg !10056
  call void @llvm.experimental.noalias.scope.decl(metadata !9371), !dbg !10057
  %i.oi = load ptr, ptr %i.oh, align 8, !dbg !10058, !alias.scope !9372, !nonnull !241, !noundef !241
  %i.oj = atomicrmw add ptr %i.oi, i64 -1 release, align 8, !dbg !10059, !noalias !9373
  %i.ok = icmp eq i64 %i.oj, 1, !dbg !10060
  br i1 %i.ok, label %bb.gi, label %.body217.i, !dbg !10060

bb.gi:                                            ; preds = %bb.gh
  fence acquire, !dbg !10061
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.oh) #24
          to label %.body217.i unwind label %bb.gk, !dbg !10062, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i215.i: ; preds = %bb.gg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bn, i64 248, !dbg !10055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9374), !dbg !10055
  call void @llvm.experimental.noalias.scope.decl(metadata !9375), !dbg !10063
  call void @llvm.experimental.noalias.scope.decl(metadata !9376), !dbg !10064
  %i.om = load ptr, ptr %i.ol, align 8, !dbg !10065, !alias.scope !9377, !nonnull !241, !noundef !241
  %i.on = atomicrmw add ptr %i.om, i64 -1 release, align 8, !dbg !10066, !noalias !9378
  %i.oo = icmp eq i64 %i.on, 1, !dbg !10067
  br i1 %i.oo, label %bb.gj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i, !dbg !10067

bb.gj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i215.i
  fence acquire, !dbg !10068
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ol) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i unwind label %bb.gl, !dbg !10069, !noalias !9178

bb.gk:                                            ; preds = %bb.gi
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10055, !noalias !9178
  unreachable, !dbg !10055

.body217.i:                                       ; preds = %bb.gl, %bb.gi, %bb.gh, %.body210.i
  %.sroa.049.14.i = phi i8 [ %.sroa.049.13.i, %.body210.i ], [ %.sroa.049.9.i, %bb.gh ], [ %.sroa.049.9.i, %bb.gi ], [ %.sroa.049.9.i, %bb.gl ], !dbg !9603
  %.pn140.i = phi { ptr, i32 } [ %.pn138.i, %.body210.i ], [ %i.og, %bb.gh ], [ %i.og, %bb.gi ], [ %i.ot, %bb.gl ] ; 2 uses
  %i.oq = trunc nuw i8 %.sroa.049.14.i to i1, !dbg !9602
  %i.or = getelementptr inbounds nuw i8, ptr %i.bn, i64 287
  %i.os = load i8, ptr %i.or, align 1, !range !425
  %cond.i236.i = icmp eq i8 %i.os, -40
  %or.cond149 = select i1 %i.oq, i1 %cond.i236.i, i1 false, !dbg !9602, !prof !9379
  br i1 %or.cond149, label %bb.gy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i, !dbg !9602, !prof !9379

bb.gl:                                            ; preds = %bb.gj
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body217.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i: ; preds = %bb.gj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i215.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc.exit213.i
  %i.ou = trunc nuw i8 %.sroa.049.9.i to i1, !dbg !9602
  %i.ov = getelementptr inbounds nuw i8, ptr %i.bn, i64 287
  %i.ow = load i8, ptr %i.ov, align 1, !range !425
  %cond.i.i = icmp eq i8 %i.ow, -40
  %or.cond147 = select i1 %i.ou, i1 %cond.i.i, i1 false, !dbg !9602, !prof !9379
  br i1 %or.cond147, label %bb.gp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !9602, !prof !9379

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.gp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bn, i64 88, !dbg !9602 ; 4 uses
  %i.oy = load i64, ptr %i.ox, align 8, !dbg !10070, !range !418, !alias.scope !9380, !noundef !241
  %i.oz = icmp eq i64 %i.oy, -9223372036854775808, !dbg !10070
  br i1 %i.oz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit225.i, label %bb.gm, !dbg !10070

bb.gm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ox)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i221.i unwind label %bb.gn, !dbg !10071, !noalias !9178

bb.gn:                                            ; preds = %bb.gm
  %i.pa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ox)
          to label %.body222.i unwind label %bb.go, !dbg !10072, !noalias !9178

bb.go:                                            ; preds = %bb.gn
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10071, !noalias !9178
  unreachable, !dbg !10071

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i221.i: ; preds = %bb.gm
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ox)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit225.i unwind label %bb.gs, !dbg !10073, !noalias !9178

bb.gp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit219.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !9602
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.gq, !dbg !10074, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i: ; preds = %bb.gy, %bb.gq, %.body217.i
  %.pn142.i = phi { ptr, i32 } [ %i.pe, %bb.gq ], [ %.pn140.i, %.body217.i ], [ %.pn140.i, %bb.gy ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bn, i64 88, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.pd) #22
          to label %.body222.i unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.gq:                                            ; preds = %bb.gp
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i

.body222.i:                                       ; preds = %bb.gs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i, %bb.gn
  %.pn144.i = phi { ptr, i32 } [ %.pn142.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i ], [ %i.pi, %bb.gs ], [ %i.pa, %bb.gn ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bn, i64 112, !dbg !9602 ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !dbg !10075, !range !418, !alias.scope !9381, !noundef !241
  %i.ph = icmp eq i64 %i.pg, -9223372036854775808, !dbg !10075
  br i1 %i.ph, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a, label %bb.gr, !dbg !10075

bb.gr:                                            ; preds = %.body222.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a unwind label %bb.fc, !dbg !10075, !noalias !9178

bb.gs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i221.i
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.body222.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit225.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit.i.i221.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bn, i64 112, !dbg !9602 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !dbg !10076, !range !418, !alias.scope !9382, !noundef !241
  %i.pl = icmp eq i64 %i.pk, -9223372036854775808, !dbg !10076
  br i1 %i.pl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit230.i, label %bb.gt, !dbg !10076

bb.gt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit225.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit230.i unwind label %bb.gw, !dbg !10076, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a: ; preds = %bb.gw, %bb.gr, %.body222.i
  %.pn146.i = phi { ptr, i32 } [ %i.pr, %bb.gw ], [ %.pn144.i, %bb.gr ], [ %.pn144.i, %.body222.i ] ; 2 uses
  %.sroa.38.13.i = extractvalue { ptr, i32 } %.pn146.i, 1 ; 3 uses
  %.sroa.0111.13.i = extractvalue { ptr, i32 } %.pn146.i, 0 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bn, i64 296, !dbg !9602 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9383), !dbg !9602
  %i.pn = load ptr, ptr %i.pm, align 8, !dbg !10077, !alias.scope !9384, !noundef !241 ; 2 uses
  %i.po = icmp eq ptr %i.pn, null, !dbg !10077
  br i1 %i.po, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.gu, !dbg !10077

bb.gu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a
  %i.pp = atomicrmw add ptr %i.pn, i64 -1 release, align 8, !dbg !10078, !noalias !9385
  %i.pq = icmp eq i64 %i.pp, 1, !dbg !10079
  br i1 %i.pq, label %bb.gv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10079

bb.gv:                                            ; preds = %bb.gu
  fence acquire, !dbg !10080
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pm) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.fc, !dbg !10081, !noalias !9178

bb.gw:                                            ; preds = %bb.gt
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit228.i.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit230.i: ; preds = %bb.gt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc.exit225.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bn, i64 296, !dbg !9602 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9386), !dbg !9602
  %i.pt = load ptr, ptr %i.ps, align 8, !dbg !10082, !alias.scope !9387, !noundef !241 ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null, !dbg !10082
  br i1 %i.pu, label %bb.hn, label %bb.gx, !dbg !10082

bb.gx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit230.i
  %i.pv = atomicrmw add ptr %i.pt, i64 -1 release, align 8, !dbg !10083, !noalias !9388
  %i.pw = icmp eq i64 %i.pv, 1, !dbg !10084
  br i1 %i.pw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit189.sink.split.i, label %bb.hn, !dbg !10084

bb.gy:                                            ; preds = %.body217.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !9602
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.px)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit238.i unwind label %bb.fc, !dbg !10085, !noalias !9178

bb.gz:                                            ; preds = %.body153.thread.i, %.body153.i
  %.sroa.0111.0244.i = phi ptr [ %.sroa.0111.0.i, %.body153.i ], [ %.sroa.0111.0243.i, %.body153.thread.i ] ; 3 uses
  %.sroa.38.0242.i = phi i32 [ %.sroa.38.0.i, %.body153.i ], [ %.sroa.38.0241.i, %.body153.thread.i ] ; 3 uses
  %.sroa.049.0253.i = phi i8 [ %.sroa.049.0.i, %.body153.i ], [ %.sroa.049.0239.i, %.body153.thread.i ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.py) #22
          to label %bb.ha unwind label %bb.fc, !dbg !9602, !noalias !9178

.body153.thread.i:                                ; preds = %.thread.i, %.body153.i, %.body138.thread.i
  %.sroa.0111.0243.i = phi ptr [ %.sroa.0111.0236.i, %.thread.i ], [ %.sroa.0111.0.i, %.body153.i ], [ %.sroa.0111.0259.i, %.body138.thread.i ]
  %.sroa.38.0241.i = phi i32 [ %.sroa.38.0235.i, %.thread.i ], [ %.sroa.38.0.i, %.body153.i ], [ %.sroa.38.0258.i, %.body138.thread.i ]
  %.sroa.049.0239.i = phi i8 [ 1, %.thread.i ], [ %.sroa.049.0.i, %.body153.i ], [ 1, %.body138.thread.i ]
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bn, i64 304, !dbg !9602
  %.val150.i = load i32, ptr %i.pz, align 8, !dbg !9602, !range !419, !alias.scope !9179, !noundef !241
  %i.qa = call noundef i32 @close(i32 noundef %.val150.i) #25, !dbg !10086, !noalias !9178 ; 0 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.cb) #22
          to label %bb.gz unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.ha:                                            ; preds = %bb.gz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.bn, i64 64, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.qb) #22
          to label %bb.hb unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.hb:                                            ; preds = %bb.ha
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bn, i64 224, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(40) %i.qc) #22
          to label %bb.hc unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.hc:                                            ; preds = %bb.hb
  %i.qd = trunc nuw i8 %.sroa.049.0253.i to i1, !dbg !9602
  %i.qe = getelementptr inbounds nuw i8, ptr %i.bn, i64 287
  %i.qf = load i8, ptr %i.qe, align 1, !range !425
  %cond.i239.i = icmp eq i8 %i.qf, -40
  %or.cond151 = select i1 %i.qd, i1 %cond.i239.i, i1 false, !dbg !9602, !prof !9379
  br i1 %or.cond151, label %bb.hd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit241.i, !dbg !9602, !prof !9379

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit241.i: ; preds = %bb.hd, %bb.hc
  %i.qg = getelementptr inbounds nuw i8, ptr %i.bn, i64 88, !dbg !9602
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.qg) #22
          to label %bb.he unwind label %bb.fc, !dbg !9602, !noalias !9178

bb.hd:                                            ; preds = %bb.hc
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bn, i64 264, !dbg !9602
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.qh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit241.i unwind label %bb.fc, !dbg !10087, !noalias !9178

bb.he:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECskAlUH1kY1DR_10polars_ooc.exit241.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bn, i64 112, !dbg !9602 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !dbg !10088, !range !418, !alias.scope !9389, !noundef !241
  %i.qk = icmp eq i64 %i.qj, -9223372036854775808, !dbg !10088
  br i1 %i.qk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i, label %bb.hf, !dbg !10088

bb.hf:                                            ; preds = %bb.he
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.qi)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i unwind label %bb.fc, !dbg !10088, !noalias !9178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i: ; preds = %bb.hf, %bb.he
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bn, i64 296, !dbg !9602 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9390), !dbg !9602
  %i.qm = load ptr, ptr %i.ql, align 8, !dbg !10089, !alias.scope !9391, !noundef !241 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, null, !dbg !10089
  br i1 %i.qn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.hg, !dbg !10089

bb.hg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit243.i
  %i.qo = atomicrmw add ptr %i.qm, i64 -1 release, align 8, !dbg !10090, !noalias !9392
  %i.qp = icmp eq i64 %i.qo, 1, !dbg !10091
  br i1 %i.qp, label %bb.hh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10091

bb.hh:                                            ; preds = %bb.hg
  fence acquire, !dbg !10092
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ql) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.fc, !dbg !10093, !noalias !9178

bb.hi:                                            ; preds = %bb.c
  %i.qq = load i64, ptr %i.bs, align 8, !dbg !10094, !range !9193, !noundef !241 ; 2 uses
  %.not63 = icmp eq i64 %i.qq, 18, !dbg !10094
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !10095
  %i.qs = load ptr, ptr %i.qr, align 8, !dbg !10095 ; 2 uses
  br i1 %.not63, label %bb.hk, label %bb.hj, !dbg !10096

bb.hj:                                            ; preds = %bb.hi
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16, !dbg !10097
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.630.0..sroa_idx, i64 56, i1 false), !dbg !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !10099
  store i64 %i.qq, ptr %0, align 8, !dbg !10098
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10098
  store ptr %i.qs, ptr %.sroa.232.0..sroa_idx, align 8, !dbg !10098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !10100
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(312) %1), !dbg !10100
  br label %bb.ld, !dbg !10100

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !10099
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 80, !dbg !10101
  %i.qu = load ptr, ptr %i.qt, align 8, !dbg !10101, !nonnull !241, !noundef !241 ; 2 uses
  %i.qv = atomicrmw add ptr %i.qu, i64 1 monotonic, align 8, !dbg !10102
  %i.qw = icmp slt i64 %i.qv, 0, !dbg !10103
  br i1 %i.qw, label %bb.hl, label %bb.e, !dbg !10103

bb.hl:                                            ; preds = %bb.hk
  tail call void @llvm.trap(), !dbg !10104
  unreachable, !dbg !10104

.body:                                            ; preds = %bb.hm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i, %.body92
  %.sroa.024.0 = phi i1 [ %.sroa.024.2, %.body92 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i ], [ true, %bb.hm ], !dbg !10105 ; 3 uses
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %.body92 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i ], [ 1, %bb.hm ], !dbg !10106
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body92 ], [ %3, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit.i ], [ %i.qz, %bb.hm ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bq, i64 23, !dbg !10107
  %i.qy = load i8, ptr %i.qx, align 1, !dbg !10107, !range !425, !noundef !241 ; 2 uses
  %.not70 = icmp eq i8 %i.qy, -38, !dbg !10107
  %cond = icmp eq i8 %.sroa.022.0, 0, !dbg !10107
  %or.cond77 = or i1 %cond, %.not70, !dbg !10107
  br i1 %or.cond77, label %.body79, label %bb.ll, !dbg !10107

bb.hm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit189.sink.split.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hn:                                            ; preds = %bb.gx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit230.i, %bb.fb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECskAlUH1kY1DR_10polars_ooc.exit185.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECskAlUH1kY1DR_10polars_ooc.exit189.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !10108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !10108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !10108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !10109
  %i.ra = load i64, ptr %i.bo, align 8, !dbg !10110, !range !9193, !noundef !241 ; 2 uses
  %.not64 = icmp eq i64 %i.ra, 18, !dbg !10110
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !10111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(48) %i.rb, i64 48, i1 false), !dbg !10111
  br i1 %.not64, label %bb.hu, label %bb.ho, !dbg !10112

bb.ho:                                            ; preds = %bb.hn
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56, !dbg !10113
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.0..sroa_idx, i64 16, i1 false), !dbg !10113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !10115
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, i64 48, i1 false), !dbg !10115
  store i64 %i.ra, ptr %0, align 8, !dbg !10114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !10116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !10117
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bq, i64 23, !dbg !10118
  %i.rd = load i8, ptr %i.rc, align 1, !dbg !10118, !range !425, !alias.scope !9407, !noundef !241
  switch i8 %i.rd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit
    i8 -40, label %bb.hp
  ], !dbg !10118, !prof !426

bb.hp:                                            ; preds = %bb.ho
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i unwind label %bb.hq, !dbg !10119

bb.hq:                                            ; preds = %bb.hp
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !10120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9408), !dbg !10120
  call void @llvm.experimental.noalias.scope.decl(metadata !9409), !dbg !10121
  call void @llvm.experimental.noalias.scope.decl(metadata !9410), !dbg !10122
  %i.rg = load ptr, ptr %i.rf, align 8, !dbg !10123, !alias.scope !9411, !nonnull !241, !noundef !241
  %i.rh = atomicrmw add ptr %i.rg, i64 -1 release, align 8, !dbg !10124, !noalias !9412
  %i.ri = icmp eq i64 %i.rh, 1, !dbg !10125
  br i1 %i.ri, label %bb.hr, label %.body79, !dbg !10125

bb.hr:                                            ; preds = %bb.hq
  fence acquire, !dbg !10126
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.rf) #24
          to label %.body79 unwind label %bb.ht, !dbg !10127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.hp, %bb.ho
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !10120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9413), !dbg !10120
  call void @llvm.experimental.noalias.scope.decl(metadata !9414), !dbg !10128
  call void @llvm.experimental.noalias.scope.decl(metadata !9415), !dbg !10129
  %i.rk = load ptr, ptr %i.rj, align 8, !dbg !10130, !alias.scope !9416, !nonnull !241, !noundef !241
  %i.rl = atomicrmw add ptr %i.rk, i64 -1 release, align 8, !dbg !10131, !noalias !9417
  %i.rm = icmp eq i64 %i.rl, 1, !dbg !10132
  br i1 %i.rm, label %bb.hs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit, !dbg !10132

bb.hs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc.exit.i.i
  fence acquire, !dbg !10133
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.rj) #24
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.le, !dbg !10134

bb.ht:                                            ; preds = %bb.hr
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !10120
  unreachable, !dbg !10120

bb.hu:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !10115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, i64 48, i1 false), !dbg !9404
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !10116
  %i.ro = load i64, ptr %i.br, align 8, !dbg !10135, !range !418, !noundef !241
  %.not65 = icmp eq i64 %i.ro, -9223372036854775808, !dbg !10135 ; 4 uses
  br i1 %.not65, label %bb.kf, label %bb.hv, !dbg !10136

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !10137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !dbg !10137
  %i.rp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !10138
  %i.rq = load ptr, ptr %i.rp, align 8, !dbg !10138, !nonnull !241, !noundef !241 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !10139
  %i.rs = load i64, ptr %i.rr, align 8, !dbg !10139, !noundef !241 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9423), !dbg !10140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !10141
  %i.rt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !10141 ; 4 uses
  %i.ru = load i64, ptr %i.rt, align 8, !dbg !10141, !alias.scope !9423, !noundef !241
  store i64 %i.ru, ptr %i.p, align 8, !dbg !10141, !noalias !9426
  %i.rv = icmp eq i64 %i.rs, 0, !dbg !10142
  br i1 %i.rv, label %bb.kh, label %bb.hw, !dbg !10142

.sink.split.i:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10143, !noalias !9426
  br label %bb.kh, !dbg !10144

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10145, !noalias !9426
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.rs, !dbg !10146
  store ptr %i.rq, ptr %i.n, align 8, !dbg !10147, !noalias !9426
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !10147
  store ptr %i.rw, ptr %i.rx, align 8, !dbg !10147, !noalias !9426
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !10147
  store ptr %i.p, ptr %i.ry, align 8, !dbg !10147, !noalias !9426
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2i_5slice4iter4IterNtNtB10_6series6SeriesENCINvNtCslpwjCj2YNBy_9polars_io4hive27materialize_hive_partitionsNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB6q_EE0EE9from_iterCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc87 unwind label %bb.kg, !dbg !10148

.noexc87:                                         ; preds = %bb.hw
  %i.rz = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !10149 ; 3 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !dbg !10149, !noalias !9426, !nonnull !241, !noundef !241 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !10150 ; 4 uses
  %i.sc = load i64, ptr %i.sb, align 8, !dbg !10150, !noalias !9426, !noundef !241
  %.not.i81 = icmp eq i64 %i.sc, 0, !dbg !10151
  br i1 %.not.i81, label %bb.hy, label %bb.hx, !dbg !10151

bb.hx:                                            ; preds = %.noexc87
  %i.sd = load i8, ptr %i.sa, align 16, !dbg !10152, !range !460, !noundef !241
  %.not20.i = icmp eq i8 %i.sd, 31, !dbg !10152
  br i1 %.not20.i, label %bb.ic, label %bb.ib, !dbg !10153

bb.hy:                                            ; preds = %.noexc87
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
          to label %bb.ia unwind label %.thread.i.a, !dbg !10151

bb.hz:                                            ; preds = %bb.jz
  br i1 %.sroa.09.1.ph.i, label %bb.ke, label %.body88, !dbg !10143

.thread.i.a:                                      ; preds = %bb.ka, %bb.im, %bb.ij, %bb.ig, %bb.ic, %bb.hy
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke, !dbg !10143

bb.ia:                                            ; preds = %bb.im, %bb.hy
  unreachable

bb.ib:                                            ; preds = %bb.hx
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 96, !dbg !10154
  br label %bb.id, !dbg !10155

bb.ic:                                            ; preds = %bb.hx
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 8, !dbg !10156
  %i.sh = load ptr, ptr %i.sg, align 8, !dbg !10156, !nonnull !241, !noundef !241
  %i.si = getelementptr inbounds nuw i8, ptr %i.sa, i64 16, !dbg !10156
  %i.sj = load ptr, ptr %i.si, align 16, !dbg !10156, !nonnull !241, !align !306, !noundef !241 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16, !dbg !10157
  %i.sl = load i64, ptr %i.sk, align 8, !dbg !10157, !range !468, !invariant.load !241
  %i.sm = add nsw i64 %i.sl, -1, !dbg !10157
  %i.sn = and i64 %i.sm, -16, !dbg !10157
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sn, !dbg !10157
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16, !dbg !10157
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 288, !dbg !10158
  %i.sr = load ptr, ptr %i.sq, align 8, !dbg !10158, !invariant.load !241, !nonnull !241
  %i.ss = invoke noundef nonnull align 8 ptr %i.sr(ptr noundef nonnull %i.sp)
          to label %bb.id unwind label %.thread.i.a, !dbg !10159

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.sroa.03.0.i = phi ptr [ %i.sf, %bb.ib ], [ %i.ss, %bb.ic ], !dbg !10160 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 23, !dbg !10161
  %i.su = load i8, ptr %i.st, align 1, !dbg !10161, !range !462, !alias.scope !9450, !noundef !241 ; 2 uses
  %i.sv = icmp ugt i8 %i.su, -41, !dbg !10162
  br i1 %i.sv, label %bb.if, label %bb.ie, !dbg !10162

bb.ie:                                            ; preds = %bb.id
  %i.sw = add i8 %i.su, 64, !dbg !10163
  %i.sx = call i8 @llvm.umin.i8(i8 %i.sw, i8 24), !dbg !10164
  %.sroa.0.0.i.i.i = zext nneg i8 %i.sx to i64, !dbg !10164
  br label %bb.ig, !dbg !10165

bb.if:                                            ; preds = %bb.id
  %i.sy = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !10166, !alias.scope !9450, !noundef !241
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8, !dbg !10167
  %i.ta = load i64, ptr %i.sz, align 8, !dbg !10167, !alias.scope !9450, !noundef !241
  br label %bb.ig, !dbg !10168

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.sroa.01.0.i.i = phi i64 [ %i.ta, %bb.if ], [ %.sroa.0.0.i.i.i, %bb.ie ], !dbg !10169
  %.sroa.0.0.i.i82 = phi ptr [ %i.sy, %bb.if ], [ %.sroa.03.0.i, %bb.ie ], !dbg !10170
  %i.tb = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i82, i64 noundef %.sroa.01.0.i.i)
          to label %bb.ih unwind label %.thread.i.a, !dbg !10171

bb.ih:                                            ; preds = %bb.ig
  %i.tc = extractvalue { i64, i64 } %i.tb, 0, !dbg !10172
  %.not21.i = icmp eq i64 %i.tc, 1, !dbg !10173
  %i.td = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.te = load i64, ptr %i.td, align 8, !dbg !10174, !alias.scope !9423 ; 3 uses
  %i.tf = icmp ult i64 %i.te, 57646075230342349, !dbg !10175
end_hunk_2
begin_hunk_3_@llvm.umax.i64
!9402 = !DILocation(line: 2394, column: 44, scope: !9397, inlinedAt: !9398)
!9403 = !DILocation(line: 3162, column: 26, scope: !9401, inlinedAt: !9402)
!9404 = !DILocation(line: 304, column: 22, scope: !7794)
!9405 = !DILexicalBlockFile(scope: !8567, file: !472, discriminator: 2)
!9406 = !DILocation(line: 304, column: 22, scope: !9405)
!9407 = !{!8570}
!9408 = !{!8577}
!9409 = !{!8579}
!9410 = !{!8582}
!9411 = !{!8582, !8579, !8577, !8585, !8570}
!9412 = !{!8582, !8579, !8577}
!9413 = !{!8593}
!9414 = !{!8595}
!9415 = !{!8598}
!9416 = !{!8598, !8595, !8593, !8585, !8570}
!9417 = !{!8598, !8595, !8593}
!9418 = !DILocation(line: 354, column: 80, scope: !8607)
!9419 = !DILocation(line: 1841, column: 76, scope: !8609, inlinedAt: !9418)
!9420 = !DILocation(line: 1942, column: 18, scope: !8610, inlinedAt: !9419)
!9421 = !DILocation(line: 296, column: 20, scope: !8611, inlinedAt: !9420)
!9422 = !DILocation(line: 609, column: 14, scope: !8612, inlinedAt: !9421)
!9423 = !{!8614}
!9424 = !DIFile(filename: "crates/polars-io/src/hive.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "8986a57cd84b3e4310bc37e7c4246f75")
!9425 = !DINamespace(name: "hive", scope: !473)
!9426 = !{!8614, !8620, !8619}
!9427 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!9428 = !DINamespace(name: "Iter", scope: !483)
!9429 = !DIFile(filename: "library/core/src/iter/adapters/map.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "47fd4c3c8424e034238ec6bb5a169812")
!9430 = !DINamespace(name: "adapters", scope: !402)
!9431 = !DINamespace(name: "map", scope: !9430)
!9432 = !DINamespace(name: "Map", scope: !9431)
!9433 = !DINamespace(name: "{impl#16}", scope: !478)
!9434 = !DINamespace(name: "{impl#14}", scope: !478)
!9435 = !DINamespace(name: "{impl#2}", scope: !491)
!9436 = !DINamespace(name: "{impl#0}", scope: !491)
!9437 = !DIFile(filename: "crates/polars-core/src/frame/column/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "651da6c05aa0dd2de80095214fb20de0")
!9438 = !DINamespace(name: "column", scope: !9362)
!9439 = !DINamespace(name: "Column", scope: !9438)
!9440 = !DIFile(filename: "crates/polars-core/src/frame/column/scalar.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "8ff8b1f9c00f11ec01586ddf8be37ba6")
!9441 = !DINamespace(name: "scalar", scope: !9438)
!9442 = !DINamespace(name: "ScalarColumn", scope: !9441)
!9443 = !DIFile(filename: "crates/polars-core/src/series/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "d4c2af3d28048baec72bbaff92502164")
!9444 = !DINamespace(name: "series", scope: !9361)
!9445 = !DINamespace(name: "{impl#5}", scope: !9444)
!9446 = !DILexicalBlockFile(scope: !8668, file: !9437, discriminator: 2)
!9447 = !DINamespace(name: "CompactString", scope: !428)
!9448 = !DINamespace(name: "PlSmallStr", scope: !9247)
!9449 = !DINamespace(name: "{impl#3}", scope: !9247)
!9450 = !{!8689}
!9451 = !DINamespace(name: "{impl#6}", scope: !407)
!9452 = !DIFile(filename: "crates/polars-schema/src/schema.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "92cf0aef41e3f2292b395fe85d7c90bc")
!9453 = !DINamespace(name: "polars_schema", scope: null)
!9454 = !DINamespace(name: "schema", scope: !9453)
!9455 = !DINamespace(name: "Schema", scope: !9454)
!9456 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3bdbac5c7616d584a36b114744411911")
!9457 = !DINamespace(name: "hint", scope: !258)
!9458 = !{!8726}
!9459 = !{!8732}
!9460 = !{!8734}
!9461 = !{!8734, !8732, !8726, !8614}
!9462 = !{!8741}
!9463 = !{!8744}
!9464 = !{!8744, !8741, !8734, !8732, !8726, !8614}
!9465 = !{!8744, !8741, !8734, !8732, !8726}
!9466 = !{!8726, !8614}
!9467 = !{!8620, !8619}
!9468 = !DINamespace(name: "{impl#17}", scope: !478)
!9469 = !{!8765, !8614, !8620, !8619}
!9470 = !{!8771}
!9471 = !DINamespace(name: "{impl#2}", scope: !488)
!9472 = !DIFile(filename: "library/core/src/iter/adapters/peekable.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "cb316e972c119b8727d765ade81ede6d")
!9473 = !DINamespace(name: "peekable", scope: !9430)
!9474 = !DINamespace(name: "{impl#5}", scope: !9473)
!9475 = !DINamespace(name: "peek", scope: !9474)
!9476 = !DINamespace(name: "Peekable", scope: !9473)
!9477 = !DINamespace(name: "merge_sorted_to_schema_order_impl", scope: !9425)
!9478 = !{!8785}
!9479 = !{!8785, !8765}
!9480 = !{!8796, !8765, !8614, !8620, !8619}
!9481 = !DINamespace(name: "merge_sorted_to_schema_order", scope: !9425)
!9482 = !DINamespace(name: "{closure#0}", scope: !9477)
!9483 = !DILexicalBlockFile(scope: !8816, file: !9437, discriminator: 2)
!9484 = !{!8823, !8765, !8614, !8620, !8619}
!9485 = !{!8823, !8765}
!9486 = !{!8765}
!9487 = !{!8836}
!9488 = !{i8 0, i8 34}
!9489 = !{!8848, !8796, !8765, !8614, !8620, !8619}
!9490 = !{!8854, !8852, !8848, !8796, !8765}
!9491 = !DILexicalBlockFile(scope: !8844, file: !9472, discriminator: 2)
!9492 = !DINamespace(name: "impls", scope: !260)
!9493 = !DINamespace(name: "{impl#2}", scope: !9492)
!9494 = !DILexicalBlockFile(scope: !8863, file: !309, discriminator: 2)
!9495 = !{!8875, !8765, !8614, !8620, !8619}
!9496 = !{!8875, !8765}
!9497 = !{!8883}
!9498 = !DINamespace(name: "{impl#1}", scope: !9473)
!9499 = !{!8796}
!9500 = !{!8904, !8903, !8796, !8765, !8614, !8620, !8619}
!9501 = !DINamespace(name: "{impl#20}", scope: !478)
!9502 = !{!8908}
!9503 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "850b034bcb1e8fcbd62ac2367d33e28f")
!9504 = !DINamespace(name: "{impl#1}", scope: !501)
!9505 = !{!8917, !8796, !8765, !8614, !8620, !8619}
!9506 = !{!8923, !8921, !8917, !8796}
!9507 = !DILexicalBlockFile(scope: !8913, file: !9472, discriminator: 4)
!9508 = !{!8937, !8765, !8614, !8620, !8619}
!9509 = !{!8937}
!9510 = !{!8945}
!9511 = !{!8953, !8952, !8765, !8614, !8620, !8619}
!9512 = !{!8959, !8958, !8765, !8614, !8620, !8619}
!9513 = !{!8964, !8962}
!9514 = !{!8974, !8972}
!9515 = !{!8981, !8979}
!9516 = !DILexicalBlockFile(scope: !8640, file: !9214, discriminator: 2)
!9517 = !DILexicalBlockFile(scope: !8641, file: !9214, discriminator: 2)
!9518 = !DILexicalBlockFile(scope: !8642, file: !9181, discriminator: 2)
!9519 = !DILexicalBlockFile(scope: !8643, file: !9181, discriminator: 2)
!9520 = !DILexicalBlockFile(scope: !8644, file: !9181, discriminator: 2)
!9521 = !DILexicalBlockFile(scope: !9010, file: !317, discriminator: 2)
!9522 = !DILocation(line: 363, column: 53, scope: !9004)
!9523 = !DILocation(line: 49, column: 16, scope: !9009, inlinedAt: !9522)
!9524 = !DILocation(line: 4194, column: 10, scope: !9521, inlinedAt: !9523)
!9525 = !DIFile(filename: "crates/polars-utils/src/pl_ref_str.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "9fdc687d48ab54acf4e9f6b63f68dbad")
!9526 = !DINamespace(name: "pl_ref_str", scope: !9206)
!9527 = !DINamespace(name: "PlRefStr", scope: !9526)
!9528 = !DILocation(line: 363, column: 62, scope: !9004)
!9529 = !DILocation(line: 778, column: 9, scope: !9015, inlinedAt: !9528)
!9530 = !DILocation(line: 154, column: 9, scope: !9016, inlinedAt: !9529)
!9531 = !DILocation(line: 57, column: 14, scope: !9017, inlinedAt: !9530)
!9532 = !DILocation(line: 2125, column: 9, scope: !9018, inlinedAt: !9531)
!9533 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!9534 = !DINamespace(name: "convert", scope: !258)
!9535 = !DINamespace(name: "{impl#3}", scope: !9534)
!9536 = !DINamespace(name: "{impl#9}", scope: !9247)
!9537 = !DINamespace(name: "{impl#27}", scope: !428)
!9538 = !DINamespace(name: "{impl#85}", scope: !428)
!9539 = !DILocation(line: 186, column: 29, scope: !9014, inlinedAt: !9532)
!9540 = !DIFile(filename: "src/repr/heap.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "0a35b08ae4c46775dd60a9bcc3619186")
!9541 = !DINamespace(name: "heap", scope: !429)
!9542 = !DINamespace(name: "HeapBuffer", scope: !9541)
!9543 = !{!9040, !9039, !9037, !9036}
!9544 = !DIFile(filename: "src/repr/inline.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "c85fca379c6f1e40282a5dbf97763233")
!9545 = !DINamespace(name: "inline", scope: !429)
!9546 = !DINamespace(name: "InlineBuffer", scope: !9545)
!9547 = !{!9040, !9037}
!9548 = !{!9039, !9037, !9036}
!9549 = !DIFile(filename: "src/repr/capacity.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "2be93deda079925c962bb96930d3290a")
!9550 = !DINamespace(name: "capacity", scope: !429)
!9551 = !DINamespace(name: "Capacity", scope: !9550)
!9552 = !{!9051, !9040, !9037}
!9553 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!9554 = !{!9060}
!9555 = !{!9062}
!9556 = !{!9062, !9060}
!9557 = !DIFile(filename: "crates/polars-core/src/scalar/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afaa8de78d6e8bed9cdb0709099d518b")
!9558 = !DINamespace(name: "scalar", scope: !9361)
!9559 = !DINamespace(name: "Scalar", scope: !9558)
!9560 = !DILocation(line: 361, column: 21, scope: !9004)
!9561 = !DILocation(line: 365, column: 24, scope: !9004)
!9562 = !DILocation(line: 359, column: 42, scope: !9004)
!9563 = !DILocation(line: 69, column: 22, scope: !9073, inlinedAt: !9562)
!9564 = !{!9076}
!9565 = !{!9078}
!9566 = !{!9081}
!9567 = !{!9081, !9078, !9076}
!9568 = !{!9090}
!9569 = !{!9092}
!9570 = !{!9095}
!9571 = !{!9095, !9092, !9090}
!9572 = !{!9116, !9114, !9112, !9110}
!9573 = !{!9118}
!9574 = !{!9124}
!9575 = !{!9126}
!9576 = !{!9126, !9124}
!9577 = !{!9135}
!9578 = !{!9137}
!9579 = !{!9137, !9135}
!9580 = !{!9150}
!9581 = !{!9152}
!9582 = !{!9155}
!9583 = !{!9155, !9152, !9150}
!9584 = !DILocation(line: 292, column: 13, scope: !7776)
!9585 = !DILocation(line: 292, column: 55, scope: !7777)
!9586 = !DILocation(line: 292, column: 36, scope: !7777)
!9587 = !DILocation(line: 3937, column: 24, scope: !7778, inlinedAt: !9167)
!9588 = !DILocation(line: 2411, column: 12, scope: !7781, inlinedAt: !9165)
!9589 = !DILocation(line: 295, column: 18, scope: !7776)
!9590 = !DILocation(line: 2412, column: 13, scope: !7781, inlinedAt: !9165)
!9591 = !DILocation(line: 310, column: 9, scope: !7782, inlinedAt: !9169)
!9592 = !DILocation(line: 2428, column: 9, scope: !7783, inlinedAt: !9171)
!9593 = !DILocation(line: 299, column: 13, scope: !7786)
!9594 = !DILocation(line: 929, column: 22, scope: !7787, inlinedAt: !9174)
!9595 = !DILocation(line: 930, column: 49, scope: !7789, inlinedAt: !9174)
!9596 = !DILocation(line: 300, column: 13, scope: !7790)
!9597 = !DILocation(line: 929, column: 22, scope: !7791, inlinedAt: !9177)
!9598 = !DILocation(line: 930, column: 49, scope: !7793, inlinedAt: !9177)
!9599 = !DILocation(line: 304, column: 13, scope: !7794)
!9600 = !DILocation(line: 745, column: 15, scope: !7798, inlinedAt: !7801)
!9601 = !DILocation(line: 745, column: 9, scope: !7798, inlinedAt: !7801)
!9602 = !DILocation(line: 351, column: 9, scope: !7799, inlinedAt: !7800)
!9603 = !DILocation(line: 305, column: 13, scope: !7799, inlinedAt: !7800)
!9604 = !DILocation(line: 0, scope: !7799, inlinedAt: !7800)
!9605 = !DILocation(line: 664, column: 24, scope: !7803, inlinedAt: !7804)
!9606 = !DILocation(line: 3029, column: 37, scope: !7806, inlinedAt: !7811)
!9607 = !DILocation(line: 3029, column: 18, scope: !7806, inlinedAt: !7811)
!9608 = !DILocation(line: 3049, column: 9, scope: !7807, inlinedAt: !7810)
!9609 = !DILocation(line: 305, column: 16, scope: !7799, inlinedAt: !7800)
!9610 = !DILocation(line: 306, column: 50, scope: !7812, inlinedAt: !7800)
!9611 = !DILocation(line: 306, column: 40, scope: !7812, inlinedAt: !7800)
!9612 = !DILocation(line: 319, column: 16, scope: !7799, inlinedAt: !7800)
!9613 = !DILocation(line: 319, column: 32, scope: !7799, inlinedAt: !7800)
!9614 = !DILocation(line: 636, column: 18, scope: !9184, inlinedAt: !7817)
!9615 = !DILocation(line: 331, column: 27, scope: !7799, inlinedAt: !7800)
!9616 = !DILocation(line: 332, column: 17, scope: !7818, inlinedAt: !7800)
!9617 = !DILocation(line: 332, column: 26, scope: !7818, inlinedAt: !7800)
!9618 = !DILocation(line: 332, column: 31, scope: !7818, inlinedAt: !7800)
!9619 = !DILocation(line: 323, column: 32, scope: !7799, inlinedAt: !7800)
!9620 = !DILocation(line: 21, column: 15, scope: !7822, inlinedAt: !7823)
!9621 = !DILocation(line: 23, column: 21, scope: !7824, inlinedAt: !7823)
!9622 = !DILocation(line: 23, column: 33, scope: !7824, inlinedAt: !7823)
!9623 = !DILocation(line: 54, column: 5, scope: !7822, inlinedAt: !7823)
!9624 = !DILocation(line: 2173, column: 15, scope: !7825, inlinedAt: !7826)
!9625 = !DILocation(line: 0, scope: !7825, inlinedAt: !7826)
!9626 = !DILocation(line: 2173, column: 9, scope: !7825, inlinedAt: !7826)
!9627 = !DILocation(line: 2175, column: 17, scope: !7825, inlinedAt: !7826)
!9628 = !DILocation(line: 2189, column: 23, scope: !7828, inlinedAt: !7831)
!9629 = !DILocation(line: 23, column: 67, scope: !7824, inlinedAt: !7823)
!9630 = !DILocation(line: 23, column: 68, scope: !7824, inlinedAt: !7823)
!9631 = !DILocation(line: 0, scope: !9197, inlinedAt: !7823)
!9632 = !DILocation(line: 24, column: 21, scope: !7832, inlinedAt: !7823)
!9633 = !DILocation(line: 25, column: 21, scope: !7832, inlinedAt: !7823)
!9634 = !DILocation(line: 25, column: 51, scope: !7832, inlinedAt: !7823)
!9635 = !DILocation(line: 428, column: 9, scope: !7833, inlinedAt: !7840)
!9636 = !DILocation(line: 438, column: 9, scope: !7841, inlinedAt: !7842)
!9637 = !DILocation(line: 99, column: 9, scope: !7843, inlinedAt: !7844)
!9638 = !DILocation(line: 0, scope: !7824, inlinedAt: !7823)
!9639 = !DILocation(line: 51, column: 13, scope: !7824, inlinedAt: !7823)
!9640 = !DILocation(line: 2173, column: 15, scope: !7845, inlinedAt: !7846)
!9641 = !DILocation(line: 0, scope: !7845, inlinedAt: !7846)
!9642 = !DILocation(line: 2173, column: 9, scope: !7845, inlinedAt: !7846)
!9643 = !DILocation(line: 25, column: 92, scope: !7832, inlinedAt: !7823)
!9644 = !DILocation(line: 25, column: 93, scope: !7832, inlinedAt: !7823)
!9645 = !DILocation(line: 0, scope: !9213, inlinedAt: !7823)
!9646 = !DILocation(line: 2174, column: 16, scope: !7845, inlinedAt: !7846)
!9647 = !DILocation(line: 25, column: 21, scope: !7848, inlinedAt: !7823)
!9648 = !DILocation(line: 27, column: 40, scope: !7850, inlinedAt: !7823)
!9649 = !DILocation(line: 27, column: 24, scope: !7850, inlinedAt: !7823)
!9650 = !DILocation(line: 29, column: 31, scope: !7851, inlinedAt: !7823)
!9651 = !DILocation(line: 614, column: 9, scope: !7852, inlinedAt: !7863)
!9652 = !DILocation(line: 1841, column: 86, scope: !7856, inlinedAt: !7859)
!9653 = !DILocation(line: 444, column: 20, scope: !7864, inlinedAt: !7869)
!9654 = !DILocation(line: 2428, column: 9, scope: !7866, inlinedAt: !7867)
!9655 = !DILocation(line: 33, column: 21, scope: !7849, inlinedAt: !7823)
!9656 = !DILocation(line: 33, column: 56, scope: !7870, inlinedAt: !7823)
!9657 = !DILocation(line: 33, column: 37, scope: !7870, inlinedAt: !7823)
!9658 = !DILocation(line: 0, scope: !7822, inlinedAt: !7823)
!9659 = !DILocation(line: 0, scope: !7832, inlinedAt: !7823)
!9660 = !DILocation(line: 51, column: 13, scope: !7832, inlinedAt: !7823)
!9661 = !DILocation(line: 2173, column: 15, scope: !7871, inlinedAt: !7872)
!9662 = !DILocation(line: 0, scope: !7871, inlinedAt: !7872)
!9663 = !DILocation(line: 2173, column: 9, scope: !7871, inlinedAt: !7872)
!9664 = !DILocation(line: 2175, column: 17, scope: !7871, inlinedAt: !7872)
!9665 = !DILocation(line: 2189, column: 23, scope: !7873, inlinedAt: !7876)
!9666 = !DILocation(line: 29, column: 69, scope: !7851, inlinedAt: !7823)
!9667 = !DILocation(line: 29, column: 70, scope: !7851, inlinedAt: !7823)
!9668 = !DILocation(line: 30, column: 39, scope: !7877, inlinedAt: !7823)
!9669 = !DILocation(line: 810, column: 1, scope: !91, inlinedAt: !7880)
!9670 = !DILocation(line: 810, column: 1, scope: !92, inlinedAt: !7881)
!9671 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !7882)
!9672 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !7883)
!9673 = !DILocation(line: 30, column: 21, scope: !7877, inlinedAt: !7823)
!9674 = !DILocation(line: 30, column: 47, scope: !7877, inlinedAt: !7823)
!9675 = !DILocation(line: 27, column: 17, scope: !7849, inlinedAt: !7823)
!9676 = !DILocation(line: 810, column: 1, scope: !7884, inlinedAt: !7885)
!9677 = !DILocation(line: 34, column: 30, scope: !7870, inlinedAt: !7823)
!9678 = !DILocation(line: 444, column: 20, scope: !7864, inlinedAt: !7888)
!9679 = !DILocation(line: 2428, column: 9, scope: !7866, inlinedAt: !7886)
!9680 = !DILocation(line: 614, column: 9, scope: !7889, inlinedAt: !7900)
!9681 = !DILocation(line: 1841, column: 86, scope: !7893, inlinedAt: !7896)
!9682 = !DILocation(line: 444, column: 20, scope: !7864, inlinedAt: !7904)
!9683 = !DILocation(line: 3937, column: 24, scope: !7905, inlinedAt: !7908)
!9684 = !DILocation(line: 2411, column: 12, scope: !7909, inlinedAt: !7902)
!9685 = !DILocation(line: 422, column: 34, scope: !7910, inlinedAt: !7911)
!9686 = !DILocation(line: 99, column: 9, scope: !7914, inlinedAt: !7926)
!9687 = !DILocation(line: 101, column: 9, scope: !7914, inlinedAt: !7926)
!9688 = !DILocation(line: 248, column: 11, scope: !7919, inlinedAt: !7922)
!9689 = !DILocation(line: 248, column: 5, scope: !7919, inlinedAt: !7922)
!9690 = !DILocation(line: 250, column: 19, scope: !7919, inlinedAt: !7922)
!9691 = !DILocation(line: 292, column: 5, scope: !7920, inlinedAt: !7921)
!9692 = !DILocation(line: 284, column: 5, scope: !7920, inlinedAt: !7921)
!9693 = !DILocation(line: 289, column: 56, scope: !7927, inlinedAt: !7921)
!9694 = !DILocation(line: 426, column: 10, scope: !7910, inlinedAt: !7911)
!9695 = !DILocation(line: 310, column: 9, scope: !7928, inlinedAt: !7932)
!9696 = !DILocation(line: 34, column: 76, scope: !7870, inlinedAt: !7823)
!9697 = !DILocation(line: 33, column: 30, scope: !7849, inlinedAt: !7823)
!9698 = !DILocation(line: 40, column: 30, scope: !7933, inlinedAt: !7823)
!9699 = !DILocation(line: 422, column: 34, scope: !7934, inlinedAt: !7935)
!9700 = !DILocation(line: 40, column: 58, scope: !7933, inlinedAt: !7823)
!9701 = !DILocation(line: 99, column: 9, scope: !7914, inlinedAt: !7944)
!9702 = !DILocation(line: 101, column: 9, scope: !7914, inlinedAt: !7944)
!9703 = !DILocation(line: 248, column: 11, scope: !7919, inlinedAt: !7940)
!9704 = !DILocation(line: 248, column: 5, scope: !7919, inlinedAt: !7940)
!9705 = !DILocation(line: 250, column: 19, scope: !7919, inlinedAt: !7940)
!9706 = !DILocation(line: 810, column: 1, scope: !7884, inlinedAt: !7947)
!9707 = !DILocation(line: 284, column: 5, scope: !7938, inlinedAt: !7939)
!9708 = !DILocation(line: 2415, column: 38, scope: !7909, inlinedAt: !7902)
!9709 = !DILocation(line: 310, column: 9, scope: !7928, inlinedAt: !7948)
!9710 = !DILocation(line: 2412, column: 13, scope: !7909, inlinedAt: !7902)
!9711 = !DILocation(line: 40, column: 70, scope: !7933, inlinedAt: !7823)
!9712 = !DILocation(line: 51, column: 13, scope: !7849, inlinedAt: !7823)
!9713 = !DILocation(line: 810, column: 1, scope: !174, inlinedAt: !7953)
!9714 = !DILocation(line: 444, column: 20, scope: !192, inlinedAt: !7956)
!9715 = !DILocation(line: 3956, column: 24, scope: !171, inlinedAt: !7958)
!9716 = !DILocation(line: 2814, column: 12, scope: !173, inlinedAt: !7954)
!9717 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !7959)
!9718 = !DILocation(line: 2857, column: 18, scope: !173, inlinedAt: !7954)
!9719 = !DILocation(line: 289, column: 56, scope: !7960, inlinedAt: !7939)
!9720 = !DILocation(line: 426, column: 10, scope: !7934, inlinedAt: !7935)
!9721 = !DILocation(line: 40, column: 96, scope: !7933, inlinedAt: !7823)
!9722 = !DILocation(line: 2173, column: 15, scope: !7961, inlinedAt: !7962)
!9723 = !DILocation(line: 0, scope: !7961, inlinedAt: !7962)
!9724 = !DILocation(line: 2173, column: 9, scope: !7961, inlinedAt: !7962)
!9725 = !DILocation(line: 40, column: 97, scope: !7933, inlinedAt: !7823)
!9726 = !DILocation(line: 810, column: 1, scope: !174, inlinedAt: !7967)
!9727 = !DILocation(line: 444, column: 20, scope: !192, inlinedAt: !7970)
!9728 = !DILocation(line: 3956, column: 24, scope: !171, inlinedAt: !7972)
!9729 = !DILocation(line: 2814, column: 12, scope: !173, inlinedAt: !7968)
!9730 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !7973)
!9731 = !DILocation(line: 2857, column: 18, scope: !173, inlinedAt: !7968)
!9732 = !DILocation(line: 2174, column: 16, scope: !7961, inlinedAt: !7962)
!9733 = !DILocation(line: 43, column: 21, scope: !7974, inlinedAt: !7823)
!9734 = !DILocation(line: 46, column: 21, scope: !7974, inlinedAt: !7823)
!9735 = !DILocation(line: 47, column: 21, scope: !7974, inlinedAt: !7823)
!9736 = !DILocation(line: 444, column: 20, scope: !7864, inlinedAt: !7977)
!9737 = !DILocation(line: 2428, column: 9, scope: !7866, inlinedAt: !7975)
!9738 = !DILocation(line: 49, column: 21, scope: !7974, inlinedAt: !7823)
!9739 = !DILocation(line: 2277, column: 15, scope: !7978, inlinedAt: !7979)
!9740 = !DILocation(line: 2277, column: 9, scope: !7978, inlinedAt: !7979)
!9741 = !DILocation(line: 612, column: 33, scope: !7980, inlinedAt: !7992)
!9742 = !DILocation(line: 744, column: 12, scope: !7982, inlinedAt: !7990)
!9743 = !DILocation(line: 745, column: 13, scope: !7982, inlinedAt: !7990)
!9744 = !DILocation(line: 1721, column: 9, scope: !7995, inlinedAt: !7996)
!9745 = !DILocation(line: 744, column: 9, scope: !7982, inlinedAt: !7990)
!9746 = !DILocation(line: 2279, column: 21, scope: !7978, inlinedAt: !7979)
!9747 = !DILocation(line: 42, column: 17, scope: !7974, inlinedAt: !7823)
!9748 = !DILocation(line: 50, column: 17, scope: !7974, inlinedAt: !7823)
!9749 = !DILocation(line: 13, column: 5, scope: !7985, inlinedAt: !7987)
!9750 = !DILocation(line: 8, column: 10, scope: !7985, inlinedAt: !7987)
!9751 = !DILocation(line: 8, column: 15, scope: !7985, inlinedAt: !7987)
!9752 = !DILocation(line: 2278, column: 24, scope: !7986, inlinedAt: !7979)
!9753 = !DILocation(line: 2278, column: 38, scope: !7978, inlinedAt: !7979)
!9754 = !DILocation(line: 810, column: 1, scope: !174, inlinedAt: !8002)
!9755 = !DILocation(line: 444, column: 20, scope: !192, inlinedAt: !8005)
!9756 = !DILocation(line: 3956, column: 24, scope: !171, inlinedAt: !8007)
!9757 = !DILocation(line: 2814, column: 12, scope: !173, inlinedAt: !8003)
!9758 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !8008)
!9759 = !DILocation(line: 2857, column: 18, scope: !173, inlinedAt: !8003)
!9760 = !DILocation(line: 810, column: 1, scope: !8009, inlinedAt: !8010)
!9761 = !DILocation(line: 3956, column: 24, scope: !8017, inlinedAt: !8024)
!9762 = !DILocation(line: 2814, column: 12, scope: !8019, inlinedAt: !8022)
!9763 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !8025)
!9764 = !DILocation(line: 2857, column: 18, scope: !8019, inlinedAt: !8022)
!9765 = !DILocation(line: 17, column: 5, scope: !7822, inlinedAt: !7823)
!9766 = !DILocation(line: 810, column: 1, scope: !8009, inlinedAt: !8028)
!9767 = !DILocation(line: 3956, column: 24, scope: !8017, inlinedAt: !8036)
!9768 = !DILocation(line: 2814, column: 12, scope: !8019, inlinedAt: !8034)
!9769 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !8037)
!9770 = !DILocation(line: 2857, column: 18, scope: !8019, inlinedAt: !8034)
!9771 = !DILocation(line: 810, column: 1, scope: !7884, inlinedAt: !8038)
!9772 = !DILocation(line: 810, column: 1, scope: !8009, inlinedAt: !8041)
!9773 = !DILocation(line: 3956, column: 24, scope: !8017, inlinedAt: !8049)
!9774 = !DILocation(line: 2814, column: 12, scope: !8019, inlinedAt: !8047)
!9775 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !8050)
!9776 = !DILocation(line: 2857, column: 18, scope: !8019, inlinedAt: !8047)
!9777 = !DILocation(line: 54, column: 6, scope: !7822, inlinedAt: !7823)
!9778 = !DILocation(line: 323, column: 27, scope: !7799, inlinedAt: !7800)
!9779 = !DILocation(line: 323, column: 21, scope: !7799, inlinedAt: !7800)
!9780 = !DILocation(line: 327, column: 29, scope: !7799, inlinedAt: !7800)
!9781 = !DILocation(line: 327, column: 37, scope: !8051, inlinedAt: !7800)
!9782 = !DILocation(line: 2173, column: 15, scope: !8052, inlinedAt: !8053)
!9783 = !DILocation(line: 2173, column: 9, scope: !8052, inlinedAt: !8053)
!9784 = !DILocation(line: 2175, column: 17, scope: !8052, inlinedAt: !8053)
!9785 = !DILocation(line: 327, column: 56, scope: !8051, inlinedAt: !7800)
!9786 = !DILocation(line: 0, scope: !9263, inlinedAt: !7800)
!9787 = !DILocation(line: 319, column: 13, scope: !7799, inlinedAt: !7800)
!9788 = !DILocation(line: 2173, column: 15, scope: !8054, inlinedAt: !8055)
!9789 = !DILocation(line: 0, scope: !8054, inlinedAt: !8055)
!9790 = !DILocation(line: 2173, column: 9, scope: !8054, inlinedAt: !8055)
!9791 = !DILocation(line: 2175, column: 17, scope: !8054, inlinedAt: !8055)
!9792 = !DILocation(line: 2189, column: 23, scope: !8057, inlinedAt: !8060)
!9793 = !DILocation(line: 332, column: 45, scope: !7818, inlinedAt: !7800)
!9794 = !DILocation(line: 351, column: 9, scope: !7818, inlinedAt: !7800)
!9795 = !DILocation(line: 444, column: 20, scope: !8061, inlinedAt: !8066)
!9796 = !DILocation(line: 3937, column: 24, scope: !8067, inlinedAt: !8070)
!9797 = !DILocation(line: 2411, column: 12, scope: !8071, inlinedAt: !8064)
!9798 = !DILocation(line: 310, column: 9, scope: !8072, inlinedAt: !8073)
!9799 = !DILocation(line: 334, column: 36, scope: !8075, inlinedAt: !7800)
!9800 = !DILocation(line: 334, column: 20, scope: !8075, inlinedAt: !7800)
!9801 = !DILocation(line: 2412, column: 13, scope: !8071, inlinedAt: !8064)
!9802 = !DILocation(line: 335, column: 27, scope: !8075, inlinedAt: !7800)
!9803 = !DILocation(line: 614, column: 9, scope: !8076, inlinedAt: !8087)
end_hunk_3
