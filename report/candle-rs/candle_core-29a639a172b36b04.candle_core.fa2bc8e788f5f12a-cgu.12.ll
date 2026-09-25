Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.12?download=true
inline.NumInlined: 1561
inline.NumDeleted: 692
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs4_NtCsa5n7gMT4fih_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsltEA4u8Pgfu_11candle_core:bb.a
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.g, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.h, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i ], [ %i.bk, %bb.h ], [ undef, %bb.g ], [ %i.ba, %.preheader56.i.i.i ], [ undef, %.preheader56.i.i.i.preheader ] ; 2 uses
  %not..sink.i.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.bf, %bb.h ], [ %i.bf, %.lr.ph.i.i.i ], [ false, %bb.g ], [ true, %.preheader56.i.i.i ], [ false, %.preheader56.i.i.i.preheader ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body61 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc63 unwind label %bb.ag

.noexc63:                                         ; preds = %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsltEA4u8Pgfu_11candle_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br i1 %not..sink.i.i.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.c, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc63
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCs5Xr050g3D4S_3std3env3varReECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 17)
          to label %.noexc64 unwind label %bb.ag

.noexc64:                                         ; preds = %bb.l
  %i.bn = load i64, ptr %i.h, align 8, !range !8, !noundef !4
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %.thread11.i, label %bb.s

bb.m:                                             ; preds = %.noexc63
  %.not29.i = icmp eq i64 %.sroa.102.0.i.i, 0
  br i1 %.not29.i, label %bb.n, label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc65 unwind label %bb.ag  ; 2 uses

.noexc65:                                         ; preds = %bb.n
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = extractvalue { i64, ptr } %i.bp, 1      ; 5 uses
  %i.bs = trunc nuw i64 %i.bq to i1
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

bb.p:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bu = and i64 %i.bt, 3
  switch i64 %i.bu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i
    i64 3, label %bb.q
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i
    i64 1, label %bb.r
  ], !prof !11

default.unreachable:                              ; preds = %bb.ad, %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp ult ptr %i.br, inttoptr (i64 188978561024 to ptr)
  %i.bw = and i64 %i.bt, 1095216660480
  %i.bx = icmp ne i64 %i.bw, 1095216660480
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.by = getelementptr i8, ptr %i.br, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !95
  store i8 3, ptr %i.e, align 8, !alias.scope !95
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

.thread11.i:                                      ; preds = %.noexc64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %.noexc67 unwind label %bb.ag

.noexc67:                                         ; preds = %.thread11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.s:                                             ; preds = %.noexc64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.021.0.copyload.i = load i64, ptr %i.ca, align 8 ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not28.i = icmp eq i64 %.sroa.021.0.copyload.i, -1
  br i1 %.not28.i, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, i64 16, i1 false)
  store i64 %.sroa.021.0.copyload.i, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.cb = load ptr, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !96, !nonnull !4, !noundef !4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !96, !noundef !4 ; 2 uses
  switch i64 %i.cd, label %thread-pre-split.i.i54.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = load i8, ptr %i.cb, align 1, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  switch i8 %i.ce, label %bb.v [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  ]

thread-pre-split.i.i54.i:                         ; preds = %bb.t
  %.pr.i.i55.i = load i8, ptr %i.cb, align 1, !alias.scope !97, !noalias !98
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split.i.i54.i, %bb.u
  %i.cf = phi i8 [ %.pr.i.i55.i, %thread-pre-split.i.i54.i ], [ %i.ce, %bb.u ]
  %cond.i.i37.i = icmp eq i8 %i.cf, 43            ; 2 uses
  %i.cg = sext i1 %cond.i.i37.i to i64
  %.sroa.15.0.i.i38.i = add nsw i64 %i.cd, %i.cg  ; 4 uses
  %.sroa.0.0.idx.i.i39.i = zext i1 %cond.i.i37.i to i64
  %.sroa.0.0.i.i40.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.0.0.idx.i.i39.i ; 2 uses
  %i.ch = icmp samesign ult i64 %.sroa.15.0.i.i38.i, 17
  br i1 %i.ch, label %.preheader.i.i47.i, label %.preheader56.i.i41.i.preheader

.preheader.i.i47.i:                               ; preds = %bb.v
  %.not5366.i.i48.i = icmp eq i64 %.sroa.15.0.i.i38.i, 0
  br i1 %.not5366.i.i48.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

.preheader56.i.i41.i:                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i239, i64 1
  %i.cj = add nsw i64 %.sroa.15.1.i.i43.i238, -1  ; 2 uses
  %.not52.i.not.i45.not.i.not = icmp eq i64 %i.cj, 0
  br i1 %.not52.i.not.i45.not.i.not, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i.preheader

.preheader56.i.i41.i.preheader:                   ; preds = %bb.v, %.preheader56.i.i41.i
  %.sroa.0.1.i.i44.i239 = phi ptr [ %i.ci, %.preheader56.i.i41.i ], [ %.sroa.0.0.i.i40.i, %bb.v ] ; 2 uses
  %.sroa.15.1.i.i43.i238 = phi i64 [ %i.cj, %.preheader56.i.i41.i ], [ %.sroa.15.0.i.i38.i, %bb.v ]
  %.sroa.042.0.i.i42.i237 = phi i64 [ %i.cs, %.preheader56.i.i41.i ], [ 0, %bb.v ]
  %i.ck = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i237, i64 10) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.w, !prof !9

bb.w:                                             ; preds = %.preheader56.i.i41.i.preheader
  %i.cm = extractvalue { i64, i1 } %i.ck, 0       ; 2 uses
  %i.cn = load i8, ptr %.sroa.0.1.i.i44.i239, align 1, !alias.scope !97, !noalias !98, !noundef !4
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ugt i32 %i.cp, 9
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = add i64 %i.cm, %i.cr                    ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.cm
  %or.cond.i46.i = select i1 %i.cq, i1 true, i1 %i.ct, !prof !10
  br i1 %or.cond.i46.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i, !prof !10

.lr.ph.i.i49.i:                                   ; preds = %.preheader.i.i47.i, %bb.x
  %.sroa.0.269.i.i50.i = phi ptr [ %i.da, %bb.x ], [ %.sroa.0.0.i.i40.i, %.preheader.i.i47.i ] ; 2 uses
  %.sroa.15.268.i.i51.i = phi i64 [ %i.cz, %bb.x ], [ %.sroa.15.0.i.i38.i, %.preheader.i.i47.i ]
  %.sroa.042.267.i.i52.i = phi i64 [ %i.dc, %bb.x ], [ 0, %.preheader.i.i47.i ]
  %i.cu = load i8, ptr %.sroa.0.269.i.i50.i, align 1, !alias.scope !97, !noalias !98, !noundef !4
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 9                   ; 3 uses
  br i1 %i.cx, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i49.i
  %i.cy = mul i64 %.sroa.042.267.i.i52.i, 10
  %i.cz = add nsw i64 %.sroa.15.268.i.i51.i, -1   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i, i64 1
  %i.db = zext nneg i32 %i.cw to i64
  %i.dc = add i64 %i.cy, %i.db                    ; 2 uses
  %.not53.i.i53.i = icmp eq i64 %i.cz, 0
  br i1 %.not53.i.i53.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i: ; preds = %bb.w, %.preheader56.i.i41.i.preheader, %.preheader56.i.i41.i, %bb.x, %.lr.ph.i.i49.i, %.preheader.i.i47.i, %bb.u, %bb.u, %bb.t
  %.sroa.102.0.i31.i = phi i64 [ undef, %bb.u ], [ 0, %.preheader.i.i47.i ], [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %.lr.ph.i.i49.i ], [ %i.dc, %bb.x ], [ undef, %bb.w ], [ %i.cs, %.preheader56.i.i41.i ], [ undef, %.preheader56.i.i41.i.preheader ]
  %.sink.i.i32.i = phi i1 [ true, %bb.u ], [ false, %.preheader.i.i47.i ], [ true, %bb.t ], [ true, %bb.u ], [ %i.cx, %bb.x ], [ %i.cx, %.lr.ph.i.i49.i ], [ true, %bb.w ], [ false, %.preheader56.i.i41.i ], [ true, %.preheader56.i.i41.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.y

bb.y:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body61 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc68 unwind label %bb.ag

.noexc68:                                         ; preds = %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsltEA4u8Pgfu_11candle_core.exit.i
  %.sroa.3.0.i36.i = select i1 %.sink.i.i32.i, i64 undef, i64 %.sroa.102.0.i31.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  %i.df = icmp eq i64 %.sroa.3.0.i36.i, 0
  %or.cond.not.i = select i1 %.sink.i.i32.i, i1 true, i1 %i.df
  br i1 %or.cond.not.i, label %bb.ab, label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

bb.aa:                                            ; preds = %bb.s, %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc68
  %i.dg = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc69 unwind label %bb.ag  ; 2 uses

.noexc69:                                         ; preds = %bb.ab
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 5 uses
  %i.dj = trunc nuw i64 %i.dh to i1
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  br i1 %i.dj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  br label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

bb.ad:                                            ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  %i.dl = and i64 %i.dk, 3
  switch i64 %i.dl, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i
    i64 1, label %bb.af
  ], !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dm = icmp ult ptr %i.di, inttoptr (i64 188978561024 to ptr)
  %i.dn = and i64 %i.dk, 1095216660480
  %i.do = icmp ne i64 %i.dn, 1095216660480
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.do)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i

bb.af:                                            ; preds = %bb.ad
  %i.dp = getelementptr i8, ptr %i.di, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !alias.scope !99
  store i8 3, ptr %i.d, align 8, !alias.scope !99
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit

.body61:                                          ; preds = %bb.cl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsa5n7gMT4fih_10rayon_core8registry10TerminatorECsltEA4u8Pgfu_11candle_core.exit, %bb.aj, %bb.ag, %bb.y, %bb.i, %.thread163
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn117166, %.thread163 ], [ %i.dd, %bb.y ], [ %i.dr, %bb.ag ], [ %i.bl, %bb.i ], [ %.pn48.pn.pn.pn, %bb.cl ], [ %.pn48.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsa5n7gMT4fih_10rayon_core8registry10TerminatorECsltEA4u8Pgfu_11candle_core.exit ], [ %i.eh, %bb.aj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsa5n7gMT4fih_10rayon_core17ThreadPoolBuilderECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #24
          to label %bb.cv unwind label %bb.cp

bb.ag:                                            ; preds = %bb.af, %bb.ab, %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsltEA4u8Pgfu_11candle_core.exit.i, %.thread11.i, %bb.r, %bb.n, %bb.l, %_RNCNvMs2_Csa5n7gMT4fih_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsltEA4u8Pgfu_11candle_core.exit.i, %.thread4.i, %bb.b, %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body61

_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i, %bb.ac, %.noexc68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i, %bb.o, %bb.m, %bb.a
  %.sroa.0.1.i = phi i64 [ %.sroa.102.0.i.i, %bb.m ], [ %.val, %bb.a ], [ %.sroa.3.0.i36.i, %.noexc68 ], [ %i.bt, %bb.o ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i.i ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsltEA4u8Pgfu_11candle_core.exit.i57.i ], [ %i.dk, %bb.ac ]
  %i.ds = call i64 @llvm.umin.i64(i64 %.sroa.0.1.i, i64 65535) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.du = load i8, ptr %i.dt, align 1, !range !12, !noundef !4
  store i8 %i.du, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ds, ptr %i.dw, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsa5n7gMT4fih_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsi6QvKh33q8P_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3n_EIB4P_B4u_EECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.ah unwind label %bb.ag

bb.ah:                                            ; preds = %_RNvMs2_Csa5n7gMT4fih_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsa5n7gMT4fih_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsi6QvKh33q8P_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3p_EIB4R_B4w_EECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, i64 noundef 0, i64 noundef %i.ds)
          to label %bb.ai unwind label %bb.cu

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.eb = load i64, ptr %i.ac, align 8, !range !5, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 576460752303423488
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.ed
  store ptr %i.ea, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.eb, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ef, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsa5n7gMT4fih_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCsi6QvKh33q8P_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
          to label %bb.ak unwind label %.thread136

.thread136:                                       ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

bb.aj:                                            ; preds = %bb.cn
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtCsa5n7gMT4fih_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i64 noundef %i.ds)
          to label %bb.an unwind label %bb.am

bb.al:                                            ; preds = %bb.ao, %bb.am
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ao ], [ %i.ei, %bb.am ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsa5n7gMT4fih_10rayon_core8registry10ThreadInfoEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #24
          to label %.thread118 unwind label %bb.cp

bb.am:                                            ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_5BlockNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE3newCsltEA4u8Pgfu_11candle_core()
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsa5n7gMT4fih_10rayon_core5sleep5SleepECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #24
          to label %bb.al unwind label %bb.cp

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 1, ptr %i.j, align 128
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 0, ptr %i.ep, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.ej, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store ptr %i.ej, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.eq = load <2 x ptr>, ptr %i.el, align 8
  store ptr null, ptr %i.el, align 8
  store <2 x ptr> %i.eq, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.er = load <2 x ptr>, ptr %i.em, align 8
  store ptr null, ptr %i.em, align 8
  store <2 x ptr> %i.er, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.es = load <2 x ptr>, ptr %i.en, align 8
  store ptr null, ptr %i.en, align 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsltEA4u8Pgfu_11candle_core5utilsNtB5_11BarrierPool3new:bb.a

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !2756
  unreachable

bb.f:                                             ; preds = %.noexc25
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_jEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %.thread unwind label %bb.e, !noalias !2756

bb.g:                                             ; preds = %.noexc25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %1, ptr %i.ag, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.ah, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range5RangejENCNvMs2_NtCsltEA4u8Pgfu_11candle_core5utilsNtB3U_11BarrierPool3news0_0EE9from_iterB3W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.body26, %bb.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body27, %.body26 ], [ %i.ai, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #24
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.an
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterINtNtB17_11join_handle10JoinHandleuEENCNvMs2_NtCsltEA4u8Pgfu_11candle_core5utilsNtB4f_11BarrierPool3news1_0EE9from_iterB4h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ao)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.l, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %bb.o, %bb.p, %bb.k
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ax, %bb.p ], [ %i.ax, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %bb.h unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aq = invoke { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadE16into_boxed_sliceCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2757
  store ptr %i.ar, ptr %i.a, align 8, !noalias !2757
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !noalias !2757
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.av = load atomic i32, ptr %i.au acquire, align 8, !noalias !2757
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core.exit.i, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core(ptr noundef nonnull align 8 %i.aj, ptr noundef nonnull align 8 %i.a)
          to label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.o, !noalias !2758

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !2757, !align !15, !noundef !4 ; 2 uses
  %i.ay = icmp eq ptr %.val.i, null
  br i1 %i.ay, label %.body26, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i = load i64, ptr %i.at, align 8, !noalias !2757
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEECsltEA4u8Pgfu_11candle_core(ptr nonnull %.val.i, i64 %.val3.i)
          to label %.body26 unwind label %bb.q, !noalias !2758

_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr %i.a, align 8, !noalias !2757, !align !15, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %.thread56, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !2758
  unreachable

.thread56:                                        ; preds = %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2757
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEEECsltEA4u8Pgfu_11candle_core.exit

bb.r:                                             ; preds = %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtB7_6thread6thread6ThreadEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsltEA4u8Pgfu_11candle_core.exit.i
  %i.bb = load i64, ptr %i.at, align 8, !noalias !2757, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2757
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEECsltEA4u8Pgfu_11candle_core(ptr nonnull %i.az, i64 %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.r, %.thread56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.u, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_jEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_jEEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEEECsltEA4u8Pgfu_11candle_core.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_jEEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadEEECsltEA4u8Pgfu_11candle_core.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.u:                                             ; preds = %.thread, %bb.v, %.body26, %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_jEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.thread unwind label %bb.u

.thread:                                          ; preds = %bb.f, %bb.v, %.thread47
  %.pn2140 = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.ab, %.thread47 ], [ %i.ad, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5utils16BarrierPoolInnerEEB1e_(ptr %i.u) #24
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils11candle_pool() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils4POOL, i64 8) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsa5n7gMT4fih_10rayon_core11thread_pool10ThreadPoolE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsltEA4u8Pgfu_11candle_core5utils11candle_pool0E0zEB2v_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsa5n7gMT4fih_10rayon_core11thread_pool10ThreadPoolE10initializeNCINvB2_11get_or_initNCNvNtCsltEA4u8Pgfu_11candle_core5utils11candle_pool0E0zEB2q_(ptr noundef nonnull align 8 @_RNvNtCsltEA4u8Pgfu_11candle_core5utils4POOL)
  br label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsa5n7gMT4fih_10rayon_core11thread_pool10ThreadPoolE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsltEA4u8Pgfu_11candle_core5utils11candle_pool0E0zEB2v_.exit

_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsa5n7gMT4fih_10rayon_core11thread_pool10ThreadPoolE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsltEA4u8Pgfu_11candle_core5utils11candle_pool0E0zEB2v_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils4POOL
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils12barrier_pool() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils12BARRIER_POOL, i64 72) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsltEA4u8Pgfu_11candle_core5utils11BarrierPoolE15get_or_try_initNCINvB2_11get_or_initNCNvBV_12barrier_pool0E0zEBX_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsltEA4u8Pgfu_11candle_core5utils11BarrierPoolE10initializeNCINvB2_11get_or_initNCNvBV_12barrier_pool0E0zEBX_(ptr noundef nonnull align 8 @_RNvNtCsltEA4u8Pgfu_11candle_core5utils12BARRIER_POOL)
  br label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsltEA4u8Pgfu_11candle_core5utils11BarrierPoolE15get_or_try_initNCINvB2_11get_or_initNCNvBV_12barrier_pool0E0zEBX_.exit

_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsltEA4u8Pgfu_11candle_core5utils11BarrierPoolE15get_or_try_initNCINvB2_11get_or_initNCNvBV_12barrier_pool0E0zEBX_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCsltEA4u8Pgfu_11candle_core5utils12BARRIER_POOL
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvNtCsltEA4u8Pgfu_11candle_core5utils15get_num_threads() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs5Xr050g3D4S_3std3env3varReECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 17)
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %.thread14.i, label %bb.b

.thread14.i:                                      ; preds = %bb.a
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread17.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.07.0.copyload.i = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i, label %.thread17.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  store i64 %.sroa.07.0.copyload.i, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  %i.f = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !2764, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2764, !noundef !4 ; 2 uses
  switch i64 %i.h, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !alias.scope !2765, !noalias !2766, !noundef !4 ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.c
  %.pr.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !2765, !noalias !2766
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i.i.i, %bb.d
  %i.j = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.i, %bb.d ]
  %cond.i.i.i = icmp eq i8 %i.j, 43               ; 2 uses
  %i.k = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.h, %i.k      ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.l, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.e
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i17, i64 1
  %i.n = add nsw i64 %.sroa.15.1.i.i.i16, -1      ; 2 uses
  %.not52.i.not.i.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not52.i.not.i.not.i.not, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.e, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i17 = phi ptr [ %i.m, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i.i.i16 = phi i64 [ %i.n, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.e ]
  %.sroa.042.0.i.i.i15 = phi i64 [ %i.w, %.preheader56.i.i.i ], [ 0, %bb.e ]
  %i.o = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i15, i64 10) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = load i8, ptr %.sroa.0.1.i.i.i17, align 1, !alias.scope !2765, !noalias !2766, !noundef !4
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -48                    ; 2 uses
  %i.u = icmp ugt i32 %i.t, 9
  %i.v = zext nneg i32 %i.t to i64
  %i.w = add i64 %i.q, %i.v                       ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.q
  %or.cond.i.i = select i1 %i.u, i1 true, i1 %i.x, !prof !10
  br i1 %or.cond.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !10

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.0.269.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %.preheader.i.i.i ]
  %i.y = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !2765, !noalias !2766, !noundef !4
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 9                   ; 3 uses
  br i1 %i.ab, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = mul i64 %.sroa.042.267.i.i.i, 10
  %i.ad = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = add i64 %i.ac, %i.af                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.f, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.g, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d, %bb.d, %bb.c
  %.sroa.102.0.i.i = phi i64 [ undef, %bb.d ], [ 0, %.preheader.i.i.i ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %.lr.ph.i.i.i ], [ %i.ag, %bb.g ], [ undef, %bb.f ], [ %i.w, %.preheader56.i.i.i ], [ undef, %.preheader56.i.i.i.preheader ]
  %.sink.i.i.i = phi i1 [ true, %bb.d ], [ false, %.preheader.i.i.i ], [ true, %bb.c ], [ true, %bb.d ], [ %i.ab, %bb.g ], [ %i.ab, %.lr.ph.i.i.i ], [ true, %bb.f ], [ false, %.preheader56.i.i.i ], [ true, %.preheader56.i.i.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.ah

.thread17.i:                                      ; preds = %bb.b, %.thread14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.k

bb.j:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %.sroa.3.0.i.i = select i1 %.sink.i.i.i, i64 undef, i64 %.sroa.102.0.i.i ; 2 uses
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.not.i.i = icmp eq i64 %.sroa.3.0.i.i, 0
  %narrow.i.not.i = select i1 %.sink.i.i.i, i1 true, i1 %.not.i.i
  br i1 %narrow.i.not.i, label %bb.k, label %_RNvNtCsltEA4u8Pgfu_11candle_core5utils17rayon_num_threads.exit

bb.k:                                             ; preds = %bb.j, %.thread17.i
  %i.aj = call noundef i64 @_RNvNtCsgvHt36SXnSm_8num_cpus5linux21get_num_physical_cpus()
  %i.ak = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  br label %_RNvNtCsltEA4u8Pgfu_11candle_core5utils17rayon_num_threads.exit

_RNvNtCsltEA4u8Pgfu_11candle_core5utils17rayon_num_threads.exit: ; preds = %bb.j, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.ak, %bb.k ], [ %.sroa.3.0.i.i, %bb.j ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvNtCsltEA4u8Pgfu_11candle_core5utils18candle_num_threads() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs5Xr050g3D4S_3std3env3varReECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 18)
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %.thread14, label %bb.b

.thread14:                                        ; preds = %bb.a
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread17

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.07.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %.sroa.07.0.copyload, -1
  br i1 %.not, label %.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 %.sroa.07.0.copyload, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %i.f = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !2772, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2772, !noundef !4 ; 2 uses
  switch i64 %i.h, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !alias.scope !2773, !noalias !2774, !noundef !4 ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.c
  %.pr.i.i = load i8, ptr %i.f, align 1, !alias.scope !2773, !noalias !2774
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i.i, %bb.d
  %i.j = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.i, %bb.d ]
  %cond.i.i = icmp eq i8 %i.j, 43                 ; 2 uses
  %i.k = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.h, %i.k        ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.l, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.e
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i40, i64 1
  %i.n = add nsw i64 %.sroa.15.1.i.i39, -1        ; 2 uses
  %.not52.i.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not52.i.not.i.not, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.e, %.preheader56.i.i
  %.sroa.0.1.i.i40 = phi ptr [ %i.m, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i.i39 = phi i64 [ %i.n, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.e ]
  %.sroa.042.0.i.i38 = phi i64 [ %i.w, %.preheader56.i.i ], [ 0, %bb.e ]
  %i.o = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i38, i64 10) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %.preheader56.i.i.preheader
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = load i8, ptr %.sroa.0.1.i.i40, align 1, !alias.scope !2773, !noalias !2774, !noundef !4
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -48                    ; 2 uses
  %i.u = icmp ugt i32 %i.t, 9
  %i.v = zext nneg i32 %i.t to i64
  %i.w = add i64 %i.q, %i.v                       ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.q
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.x, !prof !10
  br i1 %or.cond.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i, !prof !10

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.g
  %.sroa.0.269.i.i = phi ptr [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ad, %bb.g ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %.preheader.i.i ]
  %i.y = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !2773, !noalias !2774, !noundef !4
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 9                   ; 3 uses
  br i1 %i.ab, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = mul i64 %.sroa.042.267.i.i, 10
  %i.ad = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = add i64 %i.ac, %i.af                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.f, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.g, %.lr.ph.i.i, %.preheader.i.i, %bb.d, %bb.d, %bb.c
  %.sroa.102.0.i = phi i64 [ undef, %bb.d ], [ 0, %.preheader.i.i ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %.lr.ph.i.i ], [ %i.ag, %bb.g ], [ undef, %bb.f ], [ undef, %.preheader56.i.i.preheader ], [ %i.w, %.preheader56.i.i ]
  %.sink.i.i = phi i1 [ true, %bb.d ], [ false, %.preheader.i.i ], [ true, %bb.c ], [ true, %bb.d ], [ %i.ab, %bb.g ], [ %i.ab, %.lr.ph.i.i ], [ true, %bb.f ], [ true, %.preheader56.i.i.preheader ], [ false, %.preheader56.i.i ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsltEA4u8Pgfu_11candle_core.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsltEA4u8Pgfu_11candle_core.exit.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.ah

.thread17:                                        ; preds = %bb.b, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.k

bb.j:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %.sroa.3.0.i = select i1 %.sink.i.i, i64 undef, i64 %.sroa.102.0.i ; 2 uses
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.not.i = icmp eq i64 %.sroa.3.0.i, 0
  %narrow.i.not = select i1 %.sink.i.i, i1 true, i1 %.not.i
  br i1 %narrow.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread17, %bb.j
  %i.aj = call noundef i64 @_RNvNtCsgvHt36SXnSm_8num_cpus5linux21get_num_physical_cpus()
  %i.ak = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.0.0 = phi i64 [ %i.ak, %bb.k ], [ %.sroa.3.0.i, %bb.j ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCsa5n7gMT4fih_10rayon_core9ErrorKindNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  %i.c = load i64, ptr %i.b, align 8, !range !19, !alias.scope !2778, !noalias !2779, !noundef !4
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 28), !noalias !2778
  br label %_RNvXsc_Csa5n7gMT4fih_10rayon_coreNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 26), !noalias !2778
  br label %_RNvXsc_Csa5n7gMT4fih_10rayon_coreNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2780
  store ptr %i.f, ptr %i.a, align 8, !noalias !2780
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2780
  br label %_RNvXsc_Csa5n7gMT4fih_10rayon_coreNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXsc_Csa5n7gMT4fih_10rayon_coreNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5utilsNtB5_12BarrierGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph
  %i.m = icmp eq ptr %i.n, %i.g
  br i1 %i.m, label %._crit_edge31, label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %.loopexit
  %.sroa.0.028 = phi ptr [ %i.d, %.lr.ph30 ], [ %i.n, %.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 8 ; 2 uses
  %i.o = load i64, ptr %.sroa.0.028, align 8, !noundef !4 ; 4 uses
  %i.p = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge31:                                    ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsf3Ta7LF998c_4core6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB12_3any3AnyNtNtB12_6marker4SendEL_EEE4lockCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %i.t = load i64, ptr %i.b, align 8, !range !8, !alias.scope !2783, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.c, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsltEA4u8Pgfu_11candle_core.exit, !prof !9

bb.c:                                             ; preds = %._crit_edge31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2783
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2783, !nonnull !4, !align !15, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !12, !alias.scope !2783, !noundef !4
  store ptr %i.w, ptr %i.a, align 8, !noalias !2783
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !2783
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26
          to label %bb.e unwind label %bb.d, !noalias !2783

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %common.resume unwind label %bb.f, !noalias !2783

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !2783
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.y, %bb.w, %bb.x, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.aa, %bb.d ], [ %i.bj, %bb.x ], [ %i.ay, %bb.l ], [ %i.ay, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsltEA4u8Pgfu_11candle_core.exit: ; preds = %._crit_edge31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2783, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !12, !alias.scope !2783, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !4 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 10 uses
  store ptr null, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsltEA4u8Pgfu_11candle_core.exit
  %i.am = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  br i1 %i.ap, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %.noexc, %bb.g, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEINtBM_11PoisonErrorBH_EE6unwrapCsltEA4u8Pgfu_11candle_core.exit
  %i.aq = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.j, label %bb.m, !prof !9

bb.j:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
          to label %bb.m unwind label %bb.l

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %i.as = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load atomic i64, ptr %i.au acquire, align 8
  %.not = icmp eq i64 %i.av, %i.l
  br i1 %.not, label %.loopexit, label %bb.k

._crit_edge:                                      ; preds = %bb.b, %bb.k
  %.lcssa = phi i64 [ %i.aw, %bb.k ], [ %i.p, %bb.b ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #29
  unreachable

bb.k:                                             ; preds = %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.aw = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.ax = icmp ult i64 %i.o, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not21 = icmp eq ptr %i.ai, null
  br i1 %.not21, label %common.resume, label %bb.y

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %i.az = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bc = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.p unwind label %bb.l

end_hunk_1
