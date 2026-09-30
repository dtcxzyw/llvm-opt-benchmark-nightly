Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image
define hidden void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([392 x i8]) align 8 captures(none) dereferenceable(392) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 13 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [36 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 13 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 13 uses
  %i.x = alloca [32 x i8], align 8                ; 13 uses
  %i.y = alloca [352 x i8], align 8               ; 14 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.0245.i.i = alloca double, align 8        ; 32 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.58.i.i = alloca [272 x i8], align 8      ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 35 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.148.i = alloca [32 x i8], align 8        ; 2 uses
  %.sroa.149.i = alloca [272 x i8], align 8       ; 2 uses
  %i.au = alloca [128 x i8], align 8              ; 138 uses
  %i.av = alloca [80 x i8], align 8               ; 12 uses
  %i.aw = alloca [4 x i8], align 4                ; 6 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [40 x i8], align 8               ; 10 uses
  %i.bc = alloca [40 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadINtB1d_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ay, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2)
  %i.bd = load i8, ptr %i.ay, align 8, !range !16, !noundef !5 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 2
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -2, ptr %i.bg, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.443.0..sroa_idx, i64 39, i1 false)
  store i8 %i.bd, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadINtB1d_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ax, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.d

.body79:                                          ; preds = %bb.iz, %bb.is, %bb.iq, %.body15.i, %.body, %bb.d, %bb.jb
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.thr_comm, %bb.jb ], [ %i.bh, %bb.d ], [ %eh.lpad-body16.i, %.body15.i ], [ %i.uq, %bb.iq ], [ %.pn5.ph.i, %bb.is ], [ %i.vq, %bb.iz ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bc) #33
          to label %common.resume unwind label %bb.jc

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i78, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.e:                                             ; preds = %bb.c
  %i.bi = load i8, ptr %i.ax, align 8, !range !16, !noundef !5 ; 4 uses
  %i.bj = icmp eq i8 %i.bi, 2
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -2, ptr %i.bl, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82

bb.g:                                             ; preds = %bb.e
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.445.0..sroa_idx, i64 39, i1 false)
  store i8 %i.bi, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5374
  store i32 0, ptr %i.aw, align 4, !noalias !5374
  %i.bm = invoke noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.aw, i64 noundef 4)
          to label %.noexc unwind label %bb.jb    ; 2 uses

.noexc:                                           ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5374
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ba, ptr noundef nonnull %i.bm)
          to label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.jb

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %.noexc
  %i.bn = load i32, ptr %i.aw, align 4, !noalias !5374, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5374
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge

.body:                                            ; preds = %bb.im, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body79

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.h
  %.pr = load i64, ptr %i.ba, align 8             ; 2 uses
  %.not = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge, label %bb.i

bb.i:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.551.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 %.pr, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.pre, ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.ix

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.bo = phi i32 [ %i.bn, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.pre, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %_RNvNtCsdsTQD3x2eOp_3exr5error12i32_to_usize.exit

_RNvNtCsdsTQD3x2eOp_3exr5error12i32_to_usize.exit: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge
  store i64 2, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @51, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  br label %bb.ix

bb.j:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit._crit_edge
  %i.bq = zext nneg i32 %i.bo to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5376
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 8 uses
  store i64 0, ptr %i.br, align 8, !noalias !5376
  store i8 0, ptr %i.av, align 8, !noalias !5376
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5377)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %i.bu = icmp ult i32 %i.bo, 2
  br label %bb.k

bb.k:                                             ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i, %bb.j
  %i.bv = phi i64 [ %.pre.i.i, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i ], [ 0, %bb.j ] ; 5 uses
  %i.bw = icmp ugt i64 %i.bv, 64
  br i1 %i.bw, label %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i, label %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i

_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i: ; preds = %bb.k
  %i.bx = load i64, ptr %i.bs, align 8, !alias.scope !5378, !noalias !5379, !noundef !5 ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bq
  br i1 %i.by, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i: ; preds = %bb.k
  %i.bz = icmp ult i64 %i.bv, %i.bq
  br i1 %i.bz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i: ; preds = %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i
  %.sink252 = phi i64 [ %i.bx, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i ], [ %i.bv, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i ] ; 7 uses
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.bv, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i ], [ 64, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i ]
  %i.ca = add nuw nsw i64 %.sink252, 64
  %..i3.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.ca) ; 5 uses
  %i.cb = sub nuw nsw i64 %..i3.i.i, %.sink252    ; 5 uses
  %i.cc = sub i64 %.sink.i.i.i.i.i.i.i, %.sink252
  %.not.i.i.i.i.i.i = icmp ult i64 %i.cc, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

bb.l:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i
  %i.cd = add nsw i64 %..i3.i.i, -1
  %i.ce = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = lshr i64 -1, %i.ce
  %.sroa.010.0.i.i.i.i.i.i = select i1 %i.bu, i64 0, i64 %i.cf ; 2 uses
  %i.cg = icmp eq i64 %.sroa.010.0.i.i.i.i.i.i, -1
  br i1 %i.cg, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, !prof !9

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ch = add nuw i64 %.sroa.010.0.i.i.i.i.i.i, 1
  %i.ci = invoke fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E8try_growCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.av, i64 noundef %i.ch)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !5380 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %i.cj = extractvalue { i64, i64 } %i.ci, 0      ; 2 uses
  switch i64 %i.cj, label %bb.m [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit_crit_edge.i.i.i.i.i
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i
  ], !prof !27

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit_crit_edge.i.i.i.i.i: ; preds = %.noexc.i
  %.pre55.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !5381, !noalias !5382
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i
  %i.ck = extractvalue { i64, i64 } %i.ci, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.cj, i64 noundef %i.ck) #35
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !5380

.noexc7.i:                                        ; preds = %bb.m
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i: ; preds = %.noexc.i, %bb.l
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !5380

.noexc8.i:                                        ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit_crit_edge.i.i.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i
  %i.cl = phi i64 [ %.pre55.i.i.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit_crit_edge.i.i.i.i.i ], [ %i.bv, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ] ; 3 uses
  %i.cm = icmp ugt i64 %i.cl, 64
  br i1 %i.cm, label %bb.n, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i

bb.n:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %i.cn = load ptr, ptr %i.bt, align 8, !alias.scope !5381, !noalias !5382, !nonnull !5, !noundef !5
  %.pre.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !5383, !noalias !5384
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i: ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.n
  %i.co = phi i64 [ %.pre.i.i.i.i, %bb.n ], [ %i.cl, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ] ; 6 uses
  %.sink12.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.n ], [ %.sroa.4.0..sroa_idx.i, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ] ; 2 uses
  %.sink11.i.i3.i.i.i.i = phi ptr [ %i.bs, %bb.n ], [ %i.br, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.n ], [ 64, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ] ; 4 uses
  %i.cp = icmp ult i64 %i.co, %.sink.i.i.i.i.i.i
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i
  %i.cq = xor i64 %i.co, -1
  %i.cr = add i64 %.sink.i.i.i.i.i.i, %i.cq
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cb) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cs, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader269, label %vector.ph

.lr.ph.i.i.i.i.i.preheader269:                    ; preds = %vector.body, %.lr.ph.i.i.i.i.i.preheader
  %storemerge47.i.i.i.i.i.ph = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %vector.body ]
  %.sroa.0.046.i.i.i.i.i.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %vector.body ]
  br label %.lr.ph.i.i.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.cu = and i64 %i.ct, 31                       ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = select i1 %i.cv, i64 32, i64 %i.cu
  %n.vec = sub nsw i64 %i.ct, %i.cw               ; 3 uses
  %i.cx = add i64 %i.co, %n.vec
  %i.cy = sub nsw i64 %i.cb, %n.vec
  %i.cz = getelementptr i8, ptr %.sink12.i.i.i.i.i.i, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <16 x i8> zeroinitializer, ptr %i.da, align 1, !noalias !5385
  store <16 x i8> zeroinitializer, ptr %i.db, align 1, !noalias !5385
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.preheader269, label %vector.body, !llvm.loop !5315

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %i.cb, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i ], [ %i.do, %bb.q ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i = phi i64 [ %i.co, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i2.i.i.i.i ], [ %.sink.i.i.i.i.i.i, %bb.q ]
  store i64 %storemerge.lcssa.i.i.i.i.i, ptr %.sink11.i.i3.i.i.i.i, align 8, !alias.scope !5383, !noalias !5384
  %.not49.i.i.i.i.i = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i.i, 0
  br i1 %.not49.i.i.i.i.i, label %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph52.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader269, %bb.q
  %storemerge47.i.i.i.i.i = phi i64 [ %i.dq, %bb.q ], [ %storemerge47.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader269 ] ; 3 uses
  %.sroa.0.046.i.i.i.i.i = phi i64 [ %i.do, %bb.q ], [ %.sroa.0.046.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader269 ] ; 2 uses
  %.not43.i.i.i.i.i = icmp eq i64 %.sroa.0.046.i.i.i.i.i, 0
  br i1 %.not43.i.i.i.i.i, label %bb.r, label %bb.q

.lr.ph52.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %.sroa.031.050.i.i.i.i.i = phi i64 [ %i.dd, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.dd = add i64 %.sroa.031.050.i.i.i.i.i, -1    ; 2 uses
  %i.de = load i64, ptr %i.br, align 8, !alias.scope !5386, !noalias !5387, !noundef !5 ; 3 uses
  %i.df = icmp ugt i64 %i.de, 64
  br i1 %i.df, label %bb.o, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph52.i.i.i.i.i
  %i.dg = load ptr, ptr %i.bt, align 8, !alias.scope !5386, !noalias !5387, !nonnull !5, !noundef !5
  %.pre57.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !5388, !noalias !5384
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i: ; preds = %.lr.ph52.i.i.i.i.i, %bb.o
  %i.dh = phi i64 [ %.pre57.i.i.i.i.i, %bb.o ], [ %i.de, %.lr.ph52.i.i.i.i.i ] ; 2 uses
  %.sink12.i.i.i.i.i.i.i = phi ptr [ %i.dg, %bb.o ], [ %.sroa.4.0..sroa_idx.i, %.lr.ph52.i.i.i.i.i ]
  %.sink11.i.i17.i.i.i.i.i = phi ptr [ %i.bs, %bb.o ], [ %i.br, %.lr.ph52.i.i.i.i.i ]
  %.sink.i.i18.i.i.i.i.i = phi i64 [ %i.de, %bb.o ], [ 64, %.lr.ph52.i.i.i.i.i ]
  %i.di = icmp eq i64 %i.dh, %.sink.i.i18.i.i.i.i.i
  br i1 %i.di, label %bb.p, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, !prof !9

bb.p:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i
  invoke fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.av)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !5380

.noexc9.i:                                        ; preds = %bb.p
  %i.dj = load ptr, ptr %i.bt, align 8, !alias.scope !5388, !noalias !5384, !nonnull !5, !noundef !5
  %.pre.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !5388, !noalias !5384
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %.noexc9.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i
  %i.dk = phi i64 [ %.pre.i.i.i.i.i.i, %.noexc9.i ], [ %i.dh, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i ]
  %.sroa.04.0.i.i.i.i.i.i = phi ptr [ %i.dj, %.noexc9.i ], [ %.sink12.i.i.i.i.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i ]
  %.sroa.0.0.i19.i.i.i.i.i = phi ptr [ %i.bs, %.noexc9.i ], [ %.sink11.i.i17.i.i.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i16.i.i.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i.i, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !noalias !5385
  %i.dm = load i64, ptr %.sroa.0.0.i19.i.i.i.i.i, align 8, !alias.scope !5388, !noalias !5384, !noundef !5
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %.sroa.0.0.i19.i.i.i.i.i, align 8, !alias.scope !5388, !noalias !5384
  %.not.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph52.i.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.do = add i64 %.sroa.0.046.i.i.i.i.i, -1      ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sink12.i.i.i.i.i.i, i64 %storemerge47.i.i.i.i.i
  store i8 0, ptr %i.dp, align 1, !noalias !5385
  %i.dq = add i64 %storemerge47.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dq, %.sink.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5321

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i64 %storemerge47.i.i.i.i.i, ptr %.sink11.i.i3.i.i.i.i, align 8, !alias.scope !5383, !noalias !5384
  br label %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E4pushCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.r, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5389
  %i.dr = load i64, ptr %i.br, align 8, !alias.scope !5390, !noalias !5391, !noundef !5 ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, 64                  ; 2 uses
  %.pre.i = load i64, ptr %i.bs, align 8
  %i.dt = select i1 %i.ds, i64 %.pre.i, i64 %i.dr ; 2 uses
  %i.du = icmp ugt i64 %.sink252, %i.bq
  %.not.i.i72 = icmp ugt i64 %..i3.i.i, %i.dt
  %or.cond.i.i = or i1 %i.du, %.not.i.i72
  br i1 %or.cond.i.i, label %bb.t, label %bb.s, !prof !10

bb.s:                                             ; preds = %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i
  %i.dv = load ptr, ptr %i.bt, align 8, !nonnull !5
  %.sink12.i.i14.i.i = select i1 %i.ds, ptr %i.dv, ptr %.sroa.4.0..sroa_idx.i
  %3 = sub nuw i64 %..i3.i.i, %.sink252
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink12.i.i14.i.i, i64 %.sink252
  %i.dx = invoke noundef ptr @_RNvXso_NtCslM68MWqqr2K_4lebe2ioINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBw_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtB5_10ReadEndianB1Z_E28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.dw, i64 noundef range(i64 0, -9223372036854775808) %3)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !5380 ; 2 uses

.noexc10.i:                                       ; preds = %bb.s
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc10.i
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.at, ptr noundef nonnull %i.dx)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !5380

.noexc11.i:                                       ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i
  %.pr.i.i = load i64, ptr %i.at, align 8, !noalias !5389 ; 2 uses
  %.not9.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not9.i.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %bb.u

bb.t:                                             ; preds = %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image.exit.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sink252, i64 noundef %..i3.i.i, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #31
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !5380

.noexc12.i:                                       ; preds = %bb.t
  unreachable

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %.noexc11.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5389
  %.pre.i.i = load i64, ptr %i.br, align 8, !alias.scope !5378, !noalias !5379
  br label %bb.k

bb.u:                                             ; preds = %.noexc11.i
  %.sroa.7.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dy = load <2 x i32>, ptr %.sroa.7.0..sroa_idx51.i, align 8, !noalias !5392
  %.sroa.14.16..sroa.7.0..sroa_idx51.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.14.sroa.0.0.copyload = load <8 x i16>, ptr %.sroa.14.16..sroa.7.0..sroa_idx51.i.sroa_idx, align 8, !noalias !5392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5389
  call void @llvm.experimental.noalias.scope.decl(metadata !5393)
  call void @llvm.experimental.noalias.scope.decl(metadata !5394)
  %i.dz = load i64, ptr %i.br, align 8, !alias.scope !5395, !noalias !5376, !noundef !5 ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 64
  br i1 %i.ea, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %i.bt, align 8, !alias.scope !5395, !noalias !5376, !nonnull !5, !noundef !5
  %i.ec = load i64, ptr %i.bs, align 8, !alias.scope !5395, !noalias !5376, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5396
  store i64 %i.dz, ptr %i.as, align 8, !noalias !5396
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.eb, ptr %i.ed, align 8, !noalias !5396
  %i.ee = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %i.ec, ptr %i.ee, align 8, !noalias !5396
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.w, !noalias !5397

bb.w:                                             ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.is unwind label %bb.x, !noalias !5397

bb.x:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5397
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.noexc13.i unwind label %bb.io, !noalias !5380

.noexc13.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5396
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(80) %i.av, i64 80, i1 false), !noalias !5376
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !5398
  %i.ei = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  store i64 %i.bq, ptr %i.ei, align 8, !noalias !5376
  call void @llvm.experimental.noalias.scope.decl(metadata !5399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5376
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0245.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5400
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5401, !noalias !5402, !noundef !5 ; 4 uses
  %i.el = icmp ugt i64 %i.ek, 64                  ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sink13.i.i.i = select i1 %i.el, ptr %i.en, ptr %i.eq
  %.sink12.i.i.i = select i1 %i.el, i64 %i.ep, i64 %i.ek ; 2 uses
  store ptr %.sink13.i.i.i, ptr %i.ar, align 8, !noalias !5400
  %i.er = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store i64 %.sink12.i.i.i, ptr %i.er, align 8, !noalias !5400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.i.i)
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !5403, !noalias !5404, !noundef !5 ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 24                  ; 118 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !5 ; 115 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.au, i64 81
  %.sink13.i893.i.i = select i1 %i.eu, ptr %i.ew, ptr %i.ez ; 10 uses
  %.sink12.i894.i.i = select i1 %i.eu, i64 %i.ey, i64 %i.et
  switch i64 %.sink12.i894.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i64 5, label %bb.y
    i64 3, label %bb.be
    i64 6, label %bb.cl
    i64 8, label %bb.dt
    i64 14, label %bb.ey
    i64 11, label %bb.fp
    i64 7, label %bb.gd
    i64 9, label %bb.gw
    i64 4, label %bb.hi
    i64 12, label %bb.hu
  ]

bb.y:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.fa = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5380, !noundef !5
  switch i8 %i.fa, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 98, label %bb.ad
    i8 102, label %bb.ae
  ]

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.hq, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.bm, %bb.bl, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.ba, %bb.az, %bb.ay, %bb.ar, %bb.aq, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.y, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5400
  %i.fb = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.au, i64 81
  %.sink13.i.i.i.i.i = select i1 %i.eu, ptr %i.fc, ptr %i.ff ; 2 uses
  %.sink12.i.i.i.i.i = select i1 %i.eu, i64 %i.fe, i64 %i.et
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i.i.i, i64 %.sink12.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5405
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.fh, align 8, !noalias !5405
  store i8 0, ptr %i.e, align 8, !noalias !5405
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %.sink13.i.i.i.i.i, ptr noundef nonnull %i.fg)
          to label %_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i unwind label %bb.z, !noalias !5406

bb.z:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #33
          to label %.body15.i unwind label %bb.aa, !noalias !5406

bb.aa:                                            ; preds = %bb.z
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5406
  unreachable

_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5405
  %i.fk = load ptr, ptr %i.ar, align 8, !noalias !5400, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = load i64, ptr %i.er, align 8, !noalias !5400, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5408
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.fn, align 8, !noalias !5408
  store i8 0, ptr %i.d, align 8, !noalias !5408
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj10_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.fm)
          to label %bb.ik unwind label %bb.ab, !noalias !5409

bb.ab:                                            ; preds = %_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj10_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #33
          to label %.body.i.i unwind label %bb.ac, !noalias !5409

bb.ac:                                            ; preds = %bb.ab
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5409
  unreachable

bb.ad:                                            ; preds = %bb.y
  %.sroa.gep301.a = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %.sroa.gep302.a = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel303 = select i1 %i.eu, ptr %.sroa.gep301.a, ptr %.sroa.gep302.a
  %i.fq = load i8, ptr %.sink13.i893.i.i.sroa.sel303, align 1, !noalias !5380, !noundef !5
  switch i8 %i.fq, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 111, label %bb.af
    i8 121, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.y
  %.sroa.gep313 = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %.sroa.gep314.a = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel315 = select i1 %i.eu, ptr %.sroa.gep313, ptr %.sroa.gep314.a
  %i.fr = load i8, ptr %.sink13.i893.i.i.sroa.sel315, align 1, !noalias !5380, !noundef !5
  %i.fs = icmp eq i8 %i.fr, 108
  br i1 %i.fs, label %bb.ay, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
end_hunk_0
