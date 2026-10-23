Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.05?download=true
inline.NumInlined: 1022
inline.NumDeleted: 483
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecase:bb.a
  %i.aw = alloca [16 x i8], align 16              ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 8 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [8 x i8], align 8                ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 10 uses
  %i.bg = alloca [32 x i8], align 8               ; 10 uses
  %i.bh = alloca [32 x i8], align 8               ; 10 uses
  %i.bi = alloca [32 x i8], align 8               ; 10 uses
  %i.bj = alloca [8 x i8], align 8                ; 3 uses
  store ptr %4, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i32 0, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store i8 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 0, ptr %i.bl, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 0, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i32 0, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  store i8 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 0, ptr %i.bn, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i32 0, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store i8 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bp, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 0, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i32 0, ptr %i.bf, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store i8 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.br, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %.sroa.566.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i32 0, ptr %i.be, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i8 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr null, ptr %i.bt, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 0, ptr %.sroa.575.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = atomicrmw add ptr %4, i64 1 monotonic, align 8
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 0, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.body117:                                         ; preds = %.body152, %bb.k, %bb.e
  %.sroa.034.0 = phi i8 [ %.sroa.034.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.034.2, %bb.k ]
  %.sroa.035.0 = phi i8 [ %.sroa.035.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.035.2, %bb.k ] ; 2 uses
  %.sroa.036.0 = phi i8 [ %.sroa.036.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.036.2, %bb.k ] ; 2 uses
  %.sroa.037.0 = phi i8 [ %.sroa.037.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.037.2, %bb.k ] ; 2 uses
  %.sroa.038.0 = phi i8 [ %.sroa.038.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.038.2, %bb.k ] ; 2 uses
  %.sroa.039.0 = phi i8 [ %.sroa.039.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.039.2, %bb.k ] ; 2 uses
  %.sroa.040.0 = phi i8 [ %.sroa.040.2, %.body152 ], [ %.sroa.040.1, %bb.e ], [ %.sroa.040.2, %bb.k ] ; 2 uses
  %.pn104 = phi { ptr, i32 } [ %.pn102, %.body152 ], [ %i.by, %bb.e ], [ %.pn102, %bb.k ] ; 2 uses
  %i.bx = trunc nuw i8 %.sroa.034.0 to i1
  br i1 %i.bx, label %.body117..body117.thread_crit_edge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit

.body117..body117.thread_crit_edge:               ; preds = %.body117
  %.pre = load ptr, ptr %i.bd, align 8, !alias.scope !1393
  br label %.body117.thread

bb.e:                                             ; preds = %bb.di, %bb.c
  %.sroa.040.1 = phi i8 [ 0, %bb.di ], [ 1, %bb.c ] ; 7 uses
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 1, ptr %i.w, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1394
  %i.cb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 40, i64 noundef 8) #31, !noalias !1394 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.g, label %bb.j, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w) #29
          to label %.body117.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.cb, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 226
  %i.cg = load i8, ptr %i.cf, align 2, !range !15, !noundef !4
  store i8 %i.cg, ptr %i.ax, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ch = load <2 x i64>, ptr %3, align 8
  store <2 x i64> %i.ch, ptr %i.aw, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.cj = load i8, ptr %i.ci, align 8, !range !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.cl = load i8, ptr %i.ck, align 4, !range !15, !noundef !4
  store i8 %i.cl, ptr %i.av, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 237
  %i.cn = load i8, ptr %i.cm, align 1, !range !15, !noundef !4 ; 2 uses
  store i8 %i.cn, ptr %i.au, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.m unwind label %bb.l

.body152:                                         ; preds = %bb.dg, %bb.l, %.body119
  %.sroa.034.2 = phi i8 [ %.sroa.034.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.035.2 = phi i8 [ %.sroa.035.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.036.2 = phi i8 [ %.sroa.036.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.037.2 = phi i8 [ %.sroa.037.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.038.2 = phi i8 [ %.sroa.038.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.039.2 = phi i8 [ %.sroa.039.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.sroa.040.2 = phi i8 [ %.sroa.040.4, %.body119 ], [ %.sroa.040.3, %bb.l ], [ 0, %bb.dg ] ; 2 uses
  %.pn102 = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn, %.body119 ], [ %i.cr, %bb.l ], [ %i.ke, %bb.dg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.co = load ptr, ptr %i.az, align 8, !alias.scope !1397, !nonnull !4, !noundef !4
  %i.cp = atomicrmw add ptr %i.co, i64 -1 release, align 8, !noalias !1397
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.k, label %.body117

bb.k:                                             ; preds = %.body152
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtB7_6string6StringEE9drop_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #32
          to label %.body117 unwind label %bb.bt

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.j
  %.sroa.040.3 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %bb.j ] ; 7 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 225
  %i.ct = load i8, ptr %i.cs, align 1, !range !15, !noundef !4
  %5 = trunc nuw i8 %i.ct to i1                   ; 4 uses
  br i1 %5, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !4
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cx)
          to label %bb.p unwind label %bb.o

.body119:                                         ; preds = %bb.do, %bb.dn, %bb.dp, %.body112, %bb.an, %bb.s, %bb.o
  %.sroa.034.4 = phi i8 [ %.sroa.034.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.035.4 = phi i8 [ %.sroa.035.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.036.4 = phi i8 [ %.sroa.036.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.037.4 = phi i8 [ %.sroa.037.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.038.4 = phi i8 [ %.sroa.038.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.039.4 = phi i8 [ %.sroa.039.10, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.sroa.040.4 = phi i8 [ 0, %.body112 ], [ 1, %bb.s ], [ 1, %bb.o ], [ 0, %bb.an ], [ 1, %bb.dp ], [ 1, %bb.dn ], [ 1, %bb.do ]
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body112 ], [ %i.dd, %bb.s ], [ %i.cy, %bb.o ], [ %i.ea, %bb.an ], [ %.pn96.pn.pn.pn.ph, %bb.dp ], [ %.pn96.pn.pn.pn.ph, %bb.dn ], [ %.pn96.pn.pn.pn.ph, %bb.do ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #29
          to label %.body152 unwind label %bb.bt

bb.o:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.p:                                             ; preds = %bb.n
  %.sroa.014.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.515.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not88 = icmp eq i64 %.sroa.014.0.copyload, -1
  br i1 %.not88, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.481.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, i64 120, i1 false)
  store i64 1, ptr %i.u, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.014.0.copyload, ptr %i.da, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1398
  %i.db = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 144, i64 noundef 8) #31, !noalias !1398 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.r, label %bb.v, !prof !6

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #33
          to label %.noexc122 unwind label %bb.s

.noexc122:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.u) #29
          to label %.body119 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.u:                                             ; preds = %bb.p, %bb.m, %bb.v
  %i.df = phi ptr [ %i.db, %bb.v ], [ null, %bb.m ], [ null, %bb.p ] ; 4 uses
  store ptr %i.df, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.db, ptr noundef nonnull align 8 dereferenceable(144) %i.u, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 72
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !range !12, !noundef !4
  %.not89 = icmp eq i64 %i.dk, -1                 ; 2 uses
  br i1 %.not89, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0175)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1400
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !1399, !noundef !4
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dj)
          to label %.noexc124 unwind label %bb.al

.noexc124:                                        ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1400
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do)
          to label %bb.ad unwind label %bb.ac, !noalias !1401

bb.ab:                                            ; preds = %bb.ae, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.dr, %bb.ae ], [ %i.dp, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #29
          to label %bb.dl unwind label %bb.ai, !noalias !1401

bb.ac:                                            ; preds = %.noexc124
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.noexc124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1400
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 176
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %bb.af unwind label %bb.ae, !noalias !1401

bb.ae:                                            ; preds = %bb.ad
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #29
          to label %bb.ab unwind label %bb.ai, !noalias !1401

bb.af:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dt = load <2 x i64>, ptr %i.ds, align 8, !alias.scope !1399
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1399, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !1401
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ab
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1401
  unreachable

bb.aj:                                            ; preds = %bb.z
  store i64 -1, ptr %i.ap, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder3newRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.ao unwind label %bb.dj

bb.al:                                            ; preds = %bb.aa
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.am:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0175, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !1399
  %.sroa.0175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0175, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0175.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1399
  %.sroa.0175.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0175, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0175.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0175, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.4177.0..sroa_idx, align 8
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.dv, ptr %.sroa.6178.0..sroa_idx, align 8
  br label %bb.ak

bb.an:                                            ; preds = %bb.de
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.ao:                                            ; preds = %bb.ak
  %6 = xor i8 %i.cj, 1
  %7 = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  store i8 %6, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 227
  %i.ec = load i8, ptr %i.eb, align 1, !range !15, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  store i8 %i.ec, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !8, !noundef !4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  store i64 %i.ef, ptr %i.ao, align 8, !alias.scope !1402
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 %i.eh, ptr %i.ei, align 8, !alias.scope !1402
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !8, !alias.scope !1402, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.not.i127 = icmp ne i64 %i.ek, 0
  %.not2.i = icmp ne i64 %i.ef, 0
  %or.cond.not5.i = and i1 %.not2.i, %.not.i127
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !1402 ; 2 uses
  %i.en = icmp ult i64 %i.eh, %i.em
  %or.cond4.i = select i1 %or.cond.not5.i, i1 %i.en, i1 false
  br i1 %or.cond4.i, label %bb.ap, label %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit

bb.ap:                                            ; preds = %bb.ao
  store i64 1, ptr %i.ao, align 8, !alias.scope !1402
  store i64 %i.em, ptr %i.ei, align 8, !alias.scope !1402
  br label %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit

.body112:                                         ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp, %bb.by, %bb.ay, %.body109, %bb.bp
  %.sroa.034.10 = phi i8 [ %.sroa.034.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.035.10 = phi i8 [ %.sroa.035.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.036.10 = phi i8 [ 0, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.037.10 = phi i8 [ 0, %.body109 ], [ 1, %bb.bp ], [ 0, %bb.by ], [ 1, %bb.ay ], [ %.sroa.037.11.ph, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.038.10 = phi i8 [ %.sroa.038.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.039.10 = phi i8 [ %.sroa.039.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body109 ], [ %i.hh, %bb.bp ], [ %i.ib, %bb.by ], [ %.pn.i130, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp285, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ao) #29
          to label %.body119 unwind label %bb.bt

.loopexit.split-lp:                               ; preds = %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit, %bb.bl, %._crit_edge, %bb.bu, %bb.as, %bb.aw, %bb.ax, %bb.bv
  %.sroa.037.11.ph = phi i8 [ 1, %bb.bl ], [ 1, %bb.as ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %._crit_edge ], [ 1, %bb.bu ], [ 0, %bb.bv ], [ 1, %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body112

_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit: ; preds = %bb.ap, %bb.ao
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 229
  %i.ep = load i8, ptr %i.eo, align 1, !range !15, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ao, i64 281
  store i8 %i.ep, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 231
  %i.es = load i8, ptr %i.er, align 1, !range !15
  %i.et = xor i8 %i.es, 1
  %.sroa.016.0 = select i1 %5, i8 0, i8 %i.et
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ao, i64 193
  store i8 %.sroa.016.0, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ao, i64 194
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.ex = load i8, ptr %i.ew, align 4, !range !15, !noundef !4 ; 2 uses
  %8 = xor i8 %i.ex, 1
  %9 = getelementptr inbounds nuw i8, ptr %i.ao, i64 199
  store i8 %8, ptr %9, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ez = load <4 x i8>, ptr %i.ey, align 8
  %i.fa = xor <4 x i8> %i.ez, splat (i8 1)
  %i.fb = insertelement <4 x i1> poison, i1 %5, i64 0
  %i.fc = shufflevector <4 x i1> %i.fb, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.fd = select <4 x i1> %i.fc, <4 x i8> zeroinitializer, <4 x i8> %i.fa
  %i.fe = shufflevector <4 x i8> %i.fd, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  store <4 x i8> %i.fe, ptr %i.ev, align 2
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 230
  %i.fg = load i8, ptr %i.ff, align 2, !range !15, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ao, i64 198
  store i8 %i.fg, ptr %i.fh, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fi, ptr noundef nonnull align 8 dereferenceable(104) %i.ap, i64 104, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  store ptr %4, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  store ptr %i.df, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.fm = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder12filter_entryNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases_0EB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.an)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.aq:                                            ; preds = %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !range !8, !noundef !4
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.as:                                            ; preds = %bb.aq
  %i.ft = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc128 unwind label %.loopexit.split-lp ; 2 uses

.noexc128:                                        ; preds = %bb.as
  %i.fu = extractvalue { i64, ptr } %i.ft, 0
  %i.fv = extractvalue { i64, ptr } %i.ft, 1      ; 4 uses
  %i.fw = ptrtoint ptr %i.fv to i64               ; 3 uses
  %i.fx = trunc nuw i64 %i.fu to i1
  br i1 %i.fx, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc128
  %i.fy = call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.fw, i64 12)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.au:                                            ; preds = %.noexc128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  %i.fz = and i64 %i.fw, 3
  switch i64 %i.fz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 3, label %bb.av
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 1, label %bb.aw
  ], !prof !13

default.unreachable:                              ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ga = icmp ult ptr %i.fv, inttoptr (i64 188978561024 to ptr)
  %i.gb = and i64 %i.fw, 1095216660480
  %i.gc = icmp ne i64 %i.gb, 1095216660480
  call void @llvm.assume(i1 %i.ga)
  call void @llvm.assume(i1 %i.gc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gd = getelementptr i8, ptr %i.fv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd) ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8, !alias.scope !1403
  store i8 3, ptr %i.j, align 8, !alias.scope !1403
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.at, %bb.ar
  %.sroa.021.0 = phi i64 [ %i.fs, %bb.ar ], [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %i.fy, %bb.at ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fm, i64 216
  store i64 %.sroa.021.0, ptr %i.gf, align 8
  br i1 %.not89, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1405
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !1404, !noundef !4
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dj)
          to label %.noexc132 unwind label %.loopexit.split-lp

.noexc132:                                        ; preds = %bb.ax
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.gh, ptr %i.gi, align 8, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1405
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gj)
          to label %bb.ba unwind label %bb.az, !noalias !1406

bb.ay:                                            ; preds = %bb.bb, %bb.az
  %.pn.i130 = phi { ptr, i32 } [ %i.gm, %bb.bb ], [ %i.gk, %bb.az ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #29
          to label %.body112 unwind label %bb.bf, !noalias !1406

bb.az:                                            ; preds = %.noexc132
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %.noexc132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1405
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 176
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl)
          to label %bb.bc unwind label %bb.bb, !noalias !1406

bb.bb:                                            ; preds = %bb.ba
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %bb.ay unwind label %bb.bf, !noalias !1406

bb.bc:                                            ; preds = %bb.ba
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.go = load <2 x i64>, ptr %i.gn, align 8, !alias.scope !1404
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !1404, !noundef !4 ; 3 uses
  %.not.i131 = icmp eq ptr %i.gq, null
  br i1 %.not.i131, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = atomicrmw add ptr %i.gq, i64 1 monotonic, align 8, !noalias !1406
  %i.gs = icmp slt i64 %i.gr, 0
  br i1 %i.gs, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %bb.bb, %bb.ay
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1406
  unreachable

bb.bg:                                            ; preds = %bb.bm, %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gx, 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx ; 2 uses
  %i.gz = icmp eq i64 %i.gx, 0
  br i1 %i.gz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.ha = trunc nuw i8 %i.cn to i1
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br i1 %i.ha, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bk
  %.sroa.025.0269.us = phi ptr [ %i.hb, %bb.bk ], [ %i.gv, %.lr.ph ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.025.0269.us, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder10add_ignoreRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.025.0269.us)
          to label %bb.bh unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %.lr.ph.split.us
  %i.hc = load i64, ptr %i.al, align 8, !range !1407, !noundef !4
  %.not91.us = icmp eq i64 %i.hc, -1
  br i1 %.not91.us, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs30WoLBgco1_6ignore5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
          to label %bb.bj unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.hd = icmp eq ptr %i.hb, %i.gy
  br i1 %i.hd, label %._crit_edge, label %.lr.ph.split.us

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %.lr.ph.split.us, %.lr.ph.split, %bb.bq
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecase:bb.a
  store ptr %i.bg, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.bf, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %i.be, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.bc, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.bb, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %i.ba, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr %i.at, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.au, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store ptr %i.av, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ax, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  store ptr %i.aw, ptr %i.hw, align 8
  invoke void @_RINvMsd_NtCs30WoLBgco1_6ignore4walkNtB6_12WalkParallel3runNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_0EB10_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.ah)
          to label %bb.bv unwind label %.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.sroa.3.0.copyload = load i8, ptr %i.bo, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1408
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false)
  %.not.i137 = icmp ne i8 %.sroa.3.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, i1 noundef zeroext %.not.i137, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.bw unwind label %.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1408
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.hy = load i64, ptr %i.af, align 8, !range !8, !alias.scope !1410, !noundef !4
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.bx, label %bb.cb, !prof !6

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1411
  %i.ia = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ia, i64 24, i1 false), !noalias !1412
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #33
          to label %bb.bz unwind label %bb.by, !noalias !1413

bb.by:                                            ; preds = %bb.bx
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %.body112 unwind label %bb.ca, !noalias !1413

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1413
  unreachable

bb.cb:                                            ; preds = %bb.bw
  %i.id = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.id, i64 24, i1 false), !alias.scope !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.sroa.3164.0.copyload = load i8, ptr %i.bq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1414
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false)
  %.not.i139 = icmp ne i8 %.sroa.3164.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, i1 noundef zeroext %.not.i139, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cd unwind label %bb.cc

.body109:                                         ; preds = %bb.cf, %bb.cc, %.body115
  %.sroa.034.11 = phi i8 [ %.sroa.034.12, %.body115 ], [ 1, %bb.cc ], [ 1, %bb.cf ]
  %.sroa.035.11 = phi i8 [ 0, %.body115 ], [ 1, %bb.cc ], [ 1, %bb.cf ]
  %.sroa.038.11 = phi i8 [ %.sroa.038.12, %.body115 ], [ 1, %bb.cc ], [ 1, %bb.cf ]
  %.sroa.039.11 = phi i8 [ %.sroa.039.12, %.body115 ], [ 1, %bb.cc ], [ 1, %bb.cf ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body115 ], [ %i.if, %bb.cc ], [ %i.ij, %bb.cf ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #29
          to label %.body112 unwind label %bb.bt

bb.cc:                                            ; preds = %bb.cb
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1414
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.ig = load i64, ptr %i.ad, align 8, !range !8, !alias.scope !1416, !noundef !4
  %i.ih = trunc nuw i64 %i.ig to i1
  br i1 %i.ih, label %bb.ce, label %bb.ci, !prof !6

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1417
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ii, i64 24, i1 false), !noalias !1418
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #33
          to label %bb.cg unwind label %bb.cf, !noalias !1419

bb.cf:                                            ; preds = %bb.ce
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #29
          to label %.body109 unwind label %bb.ch, !noalias !1419

bb.cg:                                            ; preds = %bb.ce
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1419
  unreachable

bb.ci:                                            ; preds = %bb.cd
  %i.il = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.il, i64 24, i1 false), !alias.scope !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.im = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !4, !noundef !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !noundef !4
  %i.iq = trunc nuw i8 %i.ex to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !4, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !4, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.3167.0.copyload = load i8, ptr %i.bs, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1420
  %i.iz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 24, i1 false)
  %.not.i142 = icmp ne i8 %.sroa.3167.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityNCNvMs5_NtB2_5mutexINtB1R_5MutexBN_E10into_inner0EBR_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, i1 noundef zeroext %.not.i142, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ck unwind label %bb.cj

.body115:                                         ; preds = %.body106, %bb.cm, %bb.cj
  %.sroa.034.12 = phi i8 [ 1, %bb.cm ], [ %.sroa.034.13, %bb.cj ], [ 0, %.body106 ]
  %.sroa.038.12 = phi i8 [ 1, %bb.cm ], [ 1, %bb.cj ], [ %.sroa.038.13, %.body106 ]
  %.sroa.039.12 = phi i8 [ 1, %bb.cm ], [ 1, %bb.cj ], [ 0, %.body106 ]
  %.pn.pn = phi { ptr, i32 } [ %i.je, %bb.cm ], [ %i.ja, %bb.cj ], [ %.pn, %.body106 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #29
          to label %.body109 unwind label %bb.bt

bb.cj:                                            ; preds = %bb.ci, %bb.cp
  %.sroa.034.13 = phi i8 [ 0, %bb.cp ], [ 1, %bb.ci ]
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body115

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1420
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.jb = load i64, ptr %i.aa, align 8, !range !8, !alias.scope !1422, !noundef !4
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %bb.cl, label %bb.cp, !prof !6

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1423
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jd, i64 24, i1 false), !noalias !1424
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #33
          to label %bb.cn unwind label %bb.cm, !noalias !1425

bb.cm:                                            ; preds = %bb.cl
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body115 unwind label %bb.co

bb.cn:                                            ; preds = %bb.cl
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1425
  unreachable

bb.cp:                                            ; preds = %bb.ck
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jg, i64 24, i1 false), !alias.scope !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker17finish_visibility(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.in, i64 noundef %i.ip, i1 noundef zeroext %5, i1 noundef zeroext %i.iq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iw, i64 noundef %i.iy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noundef %4)
          to label %bb.cq unwind label %bb.cj

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.sroa.3170.0.copyload = load i8, ptr %i.bk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1426
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false)
  %.not.i145 = icmp ne i8 %.sroa.3170.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, i1 noundef zeroext %.not.i145, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.cs unwind label %bb.cr

.body106:                                         ; preds = %bb.cu, %bb.cr, %.body
  %.sroa.038.13 = phi i8 [ 0, %.body ], [ 1, %bb.cr ], [ 1, %bb.cu ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ji, %bb.cr ], [ %i.jm, %bb.cu ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body115 unwind label %bb.bt

bb.cr:                                            ; preds = %bb.cq
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body106

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1426
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.jj = load i64, ptr %i.y, align 8, !range !8, !alias.scope !1428, !noundef !4
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.ct, label %bb.cx, !prof !6

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1429
  %i.jl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jl, i64 24, i1 false), !noalias !1430
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #33
          to label %bb.cv unwind label %bb.cu, !noalias !1431

bb.cu:                                            ; preds = %bb.ct
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #29
          to label %.body106 unwind label %bb.cw, !noalias !1431

bb.cv:                                            ; preds = %bb.ct
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1431
  unreachable

bb.cx:                                            ; preds = %bb.cs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !alias.scope !1431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.sroa.3173.0.copyload = load i8, ptr %i.bm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1432
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i64 24, i1 false)
  %.not.i149 = icmp ne i8 %.sroa.3173.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, i1 noundef zeroext %.not.i149, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.db, %bb.cy
  %eh.lpad-body = phi { ptr, i32 } [ %i.jq, %bb.cy ], [ %i.ju, %bb.db ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #29
          to label %.body106 unwind label %bb.bt

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1432
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.jr = load i64, ptr %i.x, align 8, !range !8, !alias.scope !1433, !noundef !4
  %i.js = trunc nuw i64 %i.jr to i1
  br i1 %i.js, label %bb.da, label %bb.de, !prof !6

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1434
  %i.jt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !noalias !1435
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #33
          to label %bb.dc unwind label %bb.db, !noalias !1436

bb.db:                                            ; preds = %bb.da
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #29
          to label %.body unwind label %bb.dd, !noalias !1436

bb.dc:                                            ; preds = %bb.da
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1436
  unreachable

bb.de:                                            ; preds = %bb.cz
  %i.jw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %.sroa.027.0.copyload = load i64, ptr %i.bc, align 8
  %.sroa.028.0.copyload = load i64, ptr %i.bb, align 8
  %.sroa.029.0.copyload = load i64, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.027.0.copyload, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.028.0.copyload, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.029.0.copyload, ptr %i.kd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ao)
          to label %bb.df unwind label %bb.an

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body152 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.df
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.kg = load ptr, ptr %i.az, align 8, !alias.scope !1439, !nonnull !4, !noundef !4
  %i.kh = atomicrmw add ptr %i.kg, i64 -1 release, align 8, !noalias !1439
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %bb.di, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit156

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtB7_6string6StringEE9drop_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit156 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit156: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  ret void

bb.dj:                                            ; preds = %bb.ak
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = load i64, ptr %i.ap, align 8, !range !12, !alias.scope !1440, !noundef !4
  %i.kl = icmp eq i64 %i.kk, -1
  br i1 %i.kl, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ap)
          to label %bb.dl unwind label %bb.bt

bb.dl:                                            ; preds = %bb.ab, %bb.al, %bb.dk, %bb.dj
  %.pn96.pn.ph = phi { ptr, i32 } [ %.pn.i, %bb.ab ], [ %i.dz, %bb.al ], [ %i.kj, %bb.dk ], [ %i.kj, %bb.dj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #29
          to label %bb.dm unwind label %bb.bt

bb.dm:                                            ; preds = %bb.dl, %bb.y
  %.pn96.pn.pn.ph = phi { ptr, i32 } [ %i.di, %bb.y ], [ %.pn96.pn.ph, %bb.dl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #29
          to label %bb.dn unwind label %bb.bt

bb.dn:                                            ; preds = %bb.dm, %bb.w
  %.pn96.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %.pn96.pn.pn.ph, %bb.dm ] ; 3 uses
  %i.km = icmp eq ptr %i.df, null
  br i1 %i.km, label %.body119, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kn = atomicrmw add ptr %i.df, i64 -1 release, align 8, !noalias !1441
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.dp, label %.body119

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #32
          to label %.body119 unwind label %bb.bt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit: ; preds = %bb.dq, %.body117.thread, %bb.dr, %.body117
  %.pn104267 = phi { ptr, i32 } [ %.pn104268, %bb.dq ], [ %.pn104268, %.body117.thread ], [ %.pn104268, %bb.dr ], [ %.pn104, %.body117 ]
  %.sroa.040.0265 = phi i8 [ %.sroa.040.0266, %bb.dq ], [ %.sroa.040.0266, %.body117.thread ], [ %.sroa.040.0266, %bb.dr ], [ %.sroa.040.0, %.body117 ]
  %.sroa.039.0263 = phi i8 [ %.sroa.039.0264, %bb.dq ], [ %.sroa.039.0264, %.body117.thread ], [ %.sroa.039.0264, %bb.dr ], [ %.sroa.039.0, %.body117 ]
  %.sroa.038.0261 = phi i8 [ %.sroa.038.0262, %bb.dq ], [ %.sroa.038.0262, %.body117.thread ], [ %.sroa.038.0262, %bb.dr ], [ %.sroa.038.0, %.body117 ]
  %.sroa.037.0259 = phi i8 [ %.sroa.037.0260, %bb.dq ], [ %.sroa.037.0260, %.body117.thread ], [ %.sroa.037.0260, %bb.dr ], [ %.sroa.037.0, %.body117 ]
  %.sroa.036.0257 = phi i8 [ %.sroa.036.0258, %bb.dq ], [ %.sroa.036.0258, %.body117.thread ], [ %.sroa.036.0258, %bb.dr ], [ %.sroa.036.0, %.body117 ]
  %.sroa.035.0255 = phi i8 [ %.sroa.035.0256, %bb.dq ], [ %.sroa.035.0256, %.body117.thread ], [ %.sroa.035.0256, %bb.dr ], [ %.sroa.035.0, %.body117 ]
  %i.kp = trunc nuw i8 %.sroa.035.0255 to i1
  br i1 %i.kp, label %bb.ds, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1u_.exit

.body117.thread:                                  ; preds = %.body117..body117.thread_crit_edge, %bb.h
  %i.kq = phi ptr [ %.pre, %.body117..body117.thread_crit_edge ], [ %4, %bb.h ] ; 2 uses
  %.pn104268 = phi { ptr, i32 } [ %.pn104, %.body117..body117.thread_crit_edge ], [ %i.cd, %bb.h ] ; 3 uses
  %.sroa.040.0266 = phi i8 [ %.sroa.040.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  %.sroa.039.0264 = phi i8 [ %.sroa.039.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  %.sroa.038.0262 = phi i8 [ %.sroa.038.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  %.sroa.037.0260 = phi i8 [ %.sroa.037.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  %.sroa.036.0258 = phi i8 [ %.sroa.036.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  %.sroa.035.0256 = phi i8 [ %.sroa.035.0, %.body117..body117.thread_crit_edge ], [ 1, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit, label %bb.dq

bb.dq:                                            ; preds = %.body117.thread
  %i.ks = atomicrmw add ptr %i.kq, i64 -1 release, align 8, !noalias !1442
  %i.kt = icmp eq i64 %i.ks, 1
  br i1 %i.kt, label %bb.dr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit unwind label %bb.bt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1u_.exit: ; preds = %bb.ds, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit
  %i.ku = trunc nuw i8 %.sroa.036.0257 to i1
  br i1 %i.ku, label %bb.du, label %bb.dt

bb.ds:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1u_.exit unwind label %bb.bt

bb.dt:                                            ; preds = %bb.du, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1u_.exit
  %i.kv = trunc nuw i8 %.sroa.037.0259 to i1
  br i1 %i.kv, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1u_.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bf) #29
          to label %bb.dt unwind label %bb.bt

bb.dv:                                            ; preds = %bb.dw, %bb.dt
  %i.kw = trunc nuw i8 %.sroa.038.0261 to i1
  br i1 %i.kw, label %bb.dy, label %bb.dx

bb.dw:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bg) #29
          to label %bb.dv unwind label %bb.bt

bb.dx:                                            ; preds = %bb.dy, %bb.dv
  %i.kx = trunc nuw i8 %.sroa.039.0263 to i1
  br i1 %i.kx, label %bb.ea, label %bb.dz

bb.dy:                                            ; preds = %bb.dv
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bh) #29
          to label %bb.dx unwind label %bb.bt

bb.dz:                                            ; preds = %bb.ea, %bb.dx
  %i.ky = trunc nuw i8 %.sroa.040.0265 to i1
  br i1 %i.ky, label %bb.eb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit162

bb.ea:                                            ; preds = %bb.dx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bi) #29
          to label %bb.dz unwind label %bb.bt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit162: ; preds = %bb.ec, %bb.eb, %bb.ed, %bb.dz
  resume { ptr, i32 } %.pn104267

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.kz = load ptr, ptr %i.bj, align 8, !alias.scope !1443, !noundef !4 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit162, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.lb = atomicrmw add ptr %i.kz, i64 -1 release, align 8, !noalias !1444
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %bb.ed, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit162

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit162 unwind label %bb.bt
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker34build_gitignore_matcher_from_files(ptr dead_on_unwind noalias nofree noundef writable sret([424 x i8]) align 8 captures(address) dereferenceable(424) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 384307168202282326) %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore38matcher_from_ignore_paths_with_options(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(address) dereferenceable(424) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext %7)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [144 x i8], align 8               ; 8 uses
  %i.m = alloca [128 x i8], align 8               ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [72 x i8], align 8                ; 12 uses
  %i.z = alloca [128 x i8], align 8               ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 7 uses
  %i.ab = alloca [288 x i8], align 8              ; 13 uses
  %i.ac = alloca [128 x i8], align 8              ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.512 = alloca [120 x i8], align 8         ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 10 uses
  %i.an = alloca [32 x i8], align 8               ; 10 uses
  %i.ao = alloca [32 x i8], align 8               ; 10 uses
  %i.ap = alloca [32 x i8], align 8               ; 10 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 3 uses
  store ptr %4, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.at = load i8, ptr %i.as, align 8, !range !15, !noundef !4 ; 2 uses
  %5 = trunc nuw i8 %i.at to i1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.au = load <2 x i64>, ptr %3, align 8
  store <2 x i64> %i.au, ptr %i.aq, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i32 0, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store i8 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.aw, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 0, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i32 0, ptr %i.ao, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store i8 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 0, ptr %i.ay, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 0, ptr %i.an, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  store i8 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ba, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 0, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i32 0, ptr %i.am, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store i8 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 0, ptr %i.bc, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 0, ptr %.sroa.553.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i32 0, ptr %i.al, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  store i8 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr null, ptr %i.be, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %.sroa.562.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = atomicrmw add ptr %4, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.body92:                                          ; preds = %.body94, %bb.l, %bb.e
  %.sroa.021.0 = phi i8 [ %.sroa.021.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.021.2, %bb.l ]
  %.sroa.022.0 = phi i8 [ %.sroa.022.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.022.2, %bb.l ] ; 2 uses
  %.sroa.023.0 = phi i8 [ %.sroa.023.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.023.2, %bb.l ] ; 2 uses
  %.sroa.024.0 = phi i8 [ %.sroa.024.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.024.2, %bb.l ] ; 2 uses
  %.sroa.025.0 = phi i8 [ %.sroa.025.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.025.2, %bb.l ] ; 2 uses
  %.sroa.026.0 = phi i8 [ %.sroa.026.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.026.2, %bb.l ] ; 2 uses
  %.sroa.027.0 = phi i8 [ %.sroa.027.2, %.body94 ], [ %.sroa.027.1, %bb.e ], [ %.sroa.027.2, %bb.l ] ; 2 uses
  %.pn81 = phi { ptr, i32 } [ %.pn77.pn.pn, %.body94 ], [ %i.bj, %bb.e ], [ %.pn77.pn.pn, %bb.l ] ; 2 uses
  %i.bi = trunc nuw i8 %.sroa.021.0 to i1
  br i1 %i.bi, label %.body92..body92.thread_crit_edge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_.exit

.body92..body92.thread_crit_edge:                 ; preds = %.body92
  %.pre = load ptr, ptr %i.ak, align 8, !alias.scope !1510
  br label %.body92.thread

bb.e:                                             ; preds = %bb.bv, %bb.c
  %.sroa.027.1 = phi i8 [ 0, %bb.bv ], [ 1, %bb.c ] ; 7 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body92

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.n, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1511
  %i.bm = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 40, i64 noundef 8) #31, !noalias !1511 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.g, label %bb.j, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #29
          to label %.body92.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr %i.bm, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %6 = xor i8 %i.at, 1                            ; 5 uses
  br i1 %5, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.m

.body94:                                          ; preds = %bb.bt, %bb.cb, %bb.ca, %bb.cc, %.body113, %bb.q, %bb.m
  %.sroa.021.2 = phi i8 [ %.sroa.021.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.021.3.ph, %bb.cc ], [ %.sroa.021.3.ph, %bb.ca ], [ %.sroa.021.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.022.2 = phi i8 [ %.sroa.022.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.022.3.ph, %bb.cc ], [ %.sroa.022.3.ph, %bb.ca ], [ %.sroa.022.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.023.2 = phi i8 [ %.sroa.023.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.023.3.ph, %bb.cc ], [ %.sroa.023.3.ph, %bb.ca ], [ %.sroa.023.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.024.2 = phi i8 [ %.sroa.024.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.024.3.ph, %bb.cc ], [ %.sroa.024.3.ph, %bb.ca ], [ %.sroa.024.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.025.2 = phi i8 [ %.sroa.025.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.025.3.ph, %bb.cc ], [ %.sroa.025.3.ph, %bb.ca ], [ %.sroa.025.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.026.2 = phi i8 [ %.sroa.026.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.026.3.ph, %bb.cc ], [ %.sroa.026.3.ph, %bb.ca ], [ %.sroa.026.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.027.2 = phi i8 [ 0, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ 1, %bb.cc ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77, %.body113 ], [ %i.by, %bb.q ], [ %i.bt, %bb.m ], [ %.pn77.pn.ph, %bb.cc ], [ %.pn77.pn.ph, %bb.ca ], [ %.pn77.pn.ph, %bb.cb ], [ %i.ft, %bb.bt ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.bq = load ptr, ptr %i.ai, align 8, !alias.scope !1514, !nonnull !4, !noundef !4
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !1514
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.l, label %.body92

bb.l:                                             ; preds = %.body94
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtB7_6string6StringEE9drop_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #32
          to label %.body92 unwind label %bb.bw

bb.m:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.n:                                             ; preds = %bb.k
  %.sroa.014.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.515.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not70 = icmp eq i64 %.sroa.014.0.copyload, -1
  br i1 %.not70, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, i64 120, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.014.0.copyload, ptr %i.bv, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1515
  %i.bw = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 144, i64 noundef 8) #31, !noalias !1515 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %bb.t, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #33
          to label %.noexc97 unwind label %bb.q

.noexc97:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l) #29
          to label %.body94 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.s:                                             ; preds = %bb.n, %bb.j, %bb.t
  %i.ca = phi ptr [ %i.bw, %bb.t ], [ null, %bb.j ], [ null, %bb.n ] ; 4 uses
  store ptr %i.ca, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bw, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.x unwind label %bb.w

.body113:                                         ; preds = %bb.w, %.thread152
  %.sroa.021.4 = phi i8 [ %.sroa.021.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.022.4 = phi i8 [ %.sroa.022.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.023.4 = phi i8 [ %.sroa.023.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.024.4 = phi i8 [ %.sroa.024.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.025.4 = phi i8 [ %.sroa.025.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.026.4 = phi i8 [ %.sroa.026.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.027.4 = phi i8 [ %.sroa.027.6, %.thread152 ], [ %.sroa.027.5, %bb.w ]
  %.pn77 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.thread152 ], [ %i.cd, %bb.w ] ; 2 uses
  %i.cc = trunc nuw i8 %.sroa.027.4 to i1
  br i1 %i.cc, label %bb.bz, label %.body94

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.v
  %.sroa.027.5 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %bb.v ] ; 7 uses
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce)
          to label %bb.z unwind label %bb.y

.thread152:                                       ; preds = %.body83, %bb.am, %.thread175, %bb.ab, %bb.bx, %bb.by, %bb.y
  %.sroa.021.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.021.9, %.body83 ]
  %.sroa.022.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.022.9, %.body83 ]
  %.sroa.023.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ 0, %.body83 ]
  %.sroa.024.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ %.sroa.024.9.ph, %.thread175 ], [ 1, %bb.bx ], [ 0, %bb.am ], [ 0, %.body83 ]
  %.sroa.025.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.025.9, %.body83 ]
  %.sroa.026.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.026.9, %.body83 ]
  %.sroa.027.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 0, %bb.ab ], [ 0, %.thread175 ], [ 0, %bb.bx ], [ 0, %bb.am ], [ 0, %.body83 ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.by ], [ %i.cf, %bb.y ], [ %i.cs, %bb.ab ], [ %lpad.thr_comm, %.thread175 ], [ %lpad.thr_comm.split-lp, %bb.bx ], [ %i.ds, %bb.am ], [ %.pn.pn.pn, %.body83 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #29
          to label %.body113 unwind label %bb.bw

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder3newRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.aa unwind label %bb.by

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  store i8 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 193
  store i8 %6, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 194
  store i8 %6, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 65
  %i.ck = load i8, ptr %i.cj, align 1, !range !15, !noundef !4 ; 2 uses
  %7 = xor i8 %i.ck, 1
  %8 = getelementptr inbounds nuw i8, ptr %i.ab, i64 199
  store i8 %7, ptr %8, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  store i8 %6, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 195
  store i8 %6, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 197
  store i8 %6, ptr %i.cn, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %4, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.ca, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.cr = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder12filter_entryNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases_0EB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.aa)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.ag, %bb.ac, %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit, %bb.aa
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ab) #29
          to label %.thread152 unwind label %bb.bw

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ct = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc99 unwind label %bb.ab  ; 2 uses

.noexc99:                                         ; preds = %bb.ac
  %i.cu = extractvalue { i64, ptr } %i.ct, 0
  %i.cv = extractvalue { i64, ptr } %i.ct, 1      ; 4 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cx = trunc nuw i64 %i.cu to i1
  br i1 %i.cx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc99
  %i.cy = call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.cw, i64 12)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.ae:                                            ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cz = and i64 %i.cw, 3
  switch i64 %i.cz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 3, label %bb.af
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 1, label %bb.ag
  ], !prof !13

default.unreachable:                              ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.da = icmp ult ptr %i.cv, inttoptr (i64 188978561024 to ptr)
  %i.db = and i64 %i.cw, 1095216660480
  %i.dc = icmp ne i64 %i.db, 1095216660480
  call void @llvm.assume(i1 %i.da)
  call void @llvm.assume(i1 %i.dc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dd = getelementptr i8, ptr %i.cv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !alias.scope !1516
  store i8 3, ptr %i.f, align 8, !alias.scope !1516
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.ab

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.ad
  %.sroa.0.010.i.i = phi i64 [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %i.cy, %bb.ad ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  store i64 %.sroa.0.010.i.i, ptr %i.df, align 8
  invoke void @_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder14build_parallel(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ac, ptr noundef nonnull align 8 %i.cr)
          to label %bb.ah unwind label %bb.ab

bb.ah:                                            ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ab)
          to label %bb.ai unwind label %bb.bx

.thread175:                                       ; preds = %bb.aj, %bb.ai
  %.sroa.024.9.ph = phi i8 [ 1, %bb.ai ], [ 0, %bb.aj ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ai, ptr %i.y, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ae, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ap, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ao, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.an, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.am, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.al, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.aj, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr %i.aq, ptr %i.dn, align 8
  invoke void @_RINvMsd_NtCs30WoLBgco1_6ignore4walkNtB6_12WalkParallel3runNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_0EB10_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.y)
          to label %bb.aj unwind label %.thread175

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.3.0.copyload = load i8, ptr %i.az, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1517
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %.not.i = icmp ne i8 %.sroa.3.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, i1 noundef zeroext %.not.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ak unwind label %.thread175

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1517
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.dp = load i64, ptr %i.w, align 8, !range !8, !alias.scope !1519, !noundef !4
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.al, label %bb.ap, !prof !6

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1520
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dr, i64 24, i1 false), !noalias !1521
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #33
          to label %bb.an unwind label %bb.am, !noalias !1522

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #29
          to label %.thread152 unwind label %bb.ao, !noalias !1522

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1522
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.du, i64 24, i1 false), !alias.scope !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.3124.0.copyload = load i8, ptr %i.bb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1523
  %i.dv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  %.not.i102 = icmp ne i8 %.sroa.3124.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, i1 noundef zeroext %.not.i102, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.aq

.body83:                                          ; preds = %bb.at, %bb.aq, %.body90
  %.sroa.021.9 = phi i8 [ %.sroa.021.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.022.9 = phi i8 [ 0, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.025.9 = phi i8 [ %.sroa.025.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.026.9 = phi i8 [ %.sroa.026.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body90 ], [ %i.dw, %bb.aq ], [ %i.ea, %bb.at ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #29
          to label %.thread152 unwind label %bb.bw

bb.aq:                                            ; preds = %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1523
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.dx = load i64, ptr %i.u, align 8, !range !8, !alias.scope !1525, !noundef !4
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.as, label %bb.aw, !prof !6

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1526
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !1527
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #33
          to label %bb.au unwind label %bb.at, !noalias !1528

bb.at:                                            ; preds = %bb.as
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #29
          to label %.body83 unwind label %bb.av, !noalias !1528

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1528
  unreachable

bb.aw:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !alias.scope !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4
  %i.eh = trunc nuw i8 %i.ck to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !4, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.3127.0.copyload = load i8, ptr %i.bd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1529
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  %.not.i105 = icmp ne i8 %.sroa.3127.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityNCNvMs5_NtB2_5mutexINtB1R_5MutexBN_E10into_inner0EBR_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, i1 noundef zeroext %.not.i105, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ay unwind label %bb.ax

.body90:                                          ; preds = %.body88, %bb.ba, %bb.ax
  %.sroa.021.10 = phi i8 [ 1, %bb.ba ], [ %.sroa.021.11, %bb.ax ], [ 0, %.body88 ]
  %.sroa.025.10 = phi i8 [ 1, %bb.ba ], [ 1, %bb.ax ], [ %.sroa.025.11, %.body88 ]
  %.sroa.026.10 = phi i8 [ 1, %bb.ba ], [ 1, %bb.ax ], [ 0, %.body88 ]
  %.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %i.er, %bb.ax ], [ %.pn, %.body88 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #29
          to label %.body83 unwind label %bb.bw

bb.ax:                                            ; preds = %bb.aw, %bb.bd
  %.sroa.021.11 = phi i8 [ 0, %bb.bd ], [ 1, %bb.aw ]
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body90

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1529
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.es = load i64, ptr %i.r, align 8, !range !8, !alias.scope !1531, !noundef !4
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.az, label %bb.bd, !prof !6

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1532
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eu, i64 24, i1 false), !noalias !1533
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #33
          to label %bb.bb unwind label %bb.ba, !noalias !1534

bb.ba:                                            ; preds = %bb.az
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body90 unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1534
  unreachable

bb.bd:                                            ; preds = %bb.ay
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ex, i64 24, i1 false), !alias.scope !1534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker17finish_visibility(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.eg, i1 noundef zeroext %5, i1 noundef zeroext %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ej, i64 noundef %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.en, i64 noundef %i.ep, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noundef %4)
          to label %bb.be unwind label %bb.ax

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.3130.0.copyload = load i8, ptr %i.av, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1535
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false)
  %.not.i108 = icmp ne i8 %.sroa.3130.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6walker8FileMetaENCNvMs5_NtB2_5mutexINtB2d_5MutexBN_E10into_inner0EB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, i1 noundef zeroext %.not.i108, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bg unwind label %bb.bf

.body88:                                          ; preds = %bb.bi, %bb.bf, %.body
  %.sroa.025.11 = phi i8 [ 0, %.body ], [ 1, %bb.bf ], [ 1, %bb.bi ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ez, %bb.bf ], [ %i.fd, %bb.bi ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body90 unwind label %bb.bw

bb.bf:                                            ; preds = %bb.be
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body88

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1535
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.fa = load i64, ptr %i.p, align 8, !range !8, !alias.scope !1537, !noundef !4
  %i.fb = trunc nuw i64 %i.fa to i1
  br i1 %i.fb, label %bb.bh, label %bb.bl, !prof !6

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1538
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fc, i64 24, i1 false), !noalias !1536
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #33
          to label %bb.bj unwind label %bb.bi, !noalias !1538

bb.bi:                                            ; preds = %bb.bh
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6walker8FileMetaEEEB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #29
          to label %.body88 unwind label %bb.bk, !noalias !1538

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1538
  unreachable

bb.bl:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !alias.scope !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sroa.3133.0.copyload = load i8, ptr %i.ax, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1539
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false)
  %.not.i111 = icmp ne i8 %.sroa.3133.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBS_6string6StringENCNvMs5_NtB2_5mutexINtB1O_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, i1 noundef zeroext %.not.i111, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bp, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.fh, %bb.bm ], [ %i.fl, %bb.bp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6walker8FileMetaEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #29
          to label %.body88 unwind label %bb.bw

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1539
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.fi = load i64, ptr %i.o, align 8, !range !8, !alias.scope !1540, !noundef !4
  %i.fj = trunc nuw i64 %i.fi to i1
  br i1 %i.fj, label %bb.bo, label %bb.bs, !prof !6

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1541
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fk, i64 24, i1 false), !noalias !1542
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #33
          to label %bb.bq unwind label %bb.bp, !noalias !1541

bb.bp:                                            ; preds = %bb.bo
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1u_6string6StringEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #29
          to label %.body unwind label %bb.br, !noalias !1541

bb.bq:                                            ; preds = %bb.bo
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1541
  unreachable

bb.bs:                                            ; preds = %bb.bn
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.016.0.copyload = load i64, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.016.0.copyload, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body94 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.fv = load ptr, ptr %i.ai, align 8, !alias.scope !1545, !nonnull !4, !noundef !4
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !1545
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit117

bb.bv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtB7_6string6StringEE9drop_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit117 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit117: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void

bb.bw:                                            ; preds = %bb.cq, %bb.cf, %bb.ce, %bb.cc, %.body88, %bb.l, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.bz, %bb.by, %bb.bx, %.body, %.body90, %.body83, %bb.ab, %.thread152
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bx:                                            ; preds = %bb.ah
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk12WalkParallelECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ac) #29
          to label %.thread152 unwind label %bb.bw

bb.by:                                            ; preds = %bb.z
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #29
          to label %.thread152 unwind label %bb.bw

bb.bz:                                            ; preds = %.body113
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #29
          to label %bb.ca unwind label %bb.bw

bb.ca:                                            ; preds = %bb.bz, %bb.u
  %.sroa.021.3.ph = phi i8 [ 1, %bb.u ], [ %.sroa.021.4, %bb.bz ] ; 3 uses
  %.sroa.022.3.ph = phi i8 [ 1, %bb.u ], [ %.sroa.022.4, %bb.bz ] ; 3 uses
end_hunk_1
