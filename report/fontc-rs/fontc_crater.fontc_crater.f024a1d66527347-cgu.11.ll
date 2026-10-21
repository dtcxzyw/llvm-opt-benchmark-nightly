Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.11?download=true
inline.NumInlined: 625
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = add i64 %i.bg, %i.bj                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.g, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.h, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i ], [ %i.bk, %bb.h ], [ undef, %bb.g ], [ %i.ba, %.preheader56.i.i.i ], [ undef, %.preheader56.i.i.i.preheader ] ; 2 uses
  %not..sink.i.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.bf, %bb.h ], [ %i.bf, %.lr.ph.i.i.i ], [ false, %bb.g ], [ true, %.preheader56.i.i.i ], [ false, %.preheader56.i.i.i.preheader ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body61 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc63 unwind label %bb.ag

.noexc63:                                         ; preds = %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br i1 %not..sink.i.i.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.c, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc63
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCs5Xr050g3D4S_3std3env3varReECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 17)
          to label %.noexc64 unwind label %bb.ag

.noexc64:                                         ; preds = %bb.l
  %i.bn = load i64, ptr %i.h, align 8, !range !7, !noundef !5
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %.thread11.i, label %bb.r

bb.m:                                             ; preds = %.noexc63
  %.not29.i = icmp eq i64 %.sroa.102.0.i.i, 0
  br i1 %.not29.i, label %bb.n, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc65 unwind label %bb.ag  ; 2 uses

.noexc65:                                         ; preds = %bb.n
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = extractvalue { i64, ptr } %i.bp, 1      ; 4 uses
  %i.bs = trunc nuw i64 %i.bq to i1
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br i1 %i.bs, label %bb.o, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.o:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !430
  %i.bu = and i64 %i.bt, 3
  switch i64 %i.bu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
    i64 1, label %bb.q
  ], !prof !16

default.unreachable:                              ; preds = %bb.ab, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp ult ptr %i.br, inttoptr (i64 188978561024 to ptr)
  %i.bw = and i64 %i.bt, 1095216660480
  %i.bx = icmp ne i64 %i.bw, 1095216660480
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.by = getelementptr i8, ptr %i.br, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !431, !noalias !430
  store i8 3, ptr %i.e, align 8, !alias.scope !431, !noalias !430
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !430
  br label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

.thread11.i:                                      ; preds = %.noexc64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %.noexc67 unwind label %bb.ag

.noexc67:                                         ; preds = %.thread11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.z

bb.r:                                             ; preds = %.noexc64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.021.0.copyload.i = load i64, ptr %i.ca, align 8 ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not28.i = icmp eq i64 %.sroa.021.0.copyload.i, -1
  br i1 %.not28.i, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, i64 16, i1 false)
  store i64 %.sroa.021.0.copyload.i, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.cb = load ptr, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !432, !nonnull !5, !noundef !5 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !432, !noundef !5 ; 2 uses
  switch i64 %i.cd, label %thread-pre-split.i.i54.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = load i8, ptr %i.cb, align 1, !alias.scope !433, !noalias !432, !noundef !5 ; 2 uses
  switch i8 %i.ce, label %bb.u [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  ]

thread-pre-split.i.i54.i:                         ; preds = %bb.s
  %.pr.i.i55.i = load i8, ptr %i.cb, align 1, !alias.scope !433, !noalias !432
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i54.i, %bb.t
  %i.cf = phi i8 [ %.pr.i.i55.i, %thread-pre-split.i.i54.i ], [ %i.ce, %bb.t ]
  %cond.i.i37.i = icmp eq i8 %i.cf, 43            ; 2 uses
  %i.cg = sext i1 %cond.i.i37.i to i64
  %.sroa.15.0.i.i38.i = add nsw i64 %i.cd, %i.cg  ; 4 uses
  %.sroa.0.0.idx.i.i39.i = zext i1 %cond.i.i37.i to i64
  %.sroa.0.0.i.i40.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.0.0.idx.i.i39.i ; 2 uses
  %i.ch = icmp samesign ult i64 %.sroa.15.0.i.i38.i, 17
  br i1 %i.ch, label %.preheader.i.i47.i, label %.preheader56.i.i41.i.preheader

.preheader.i.i47.i:                               ; preds = %bb.u
  %.not5366.i.i48.i = icmp eq i64 %.sroa.15.0.i.i38.i, 0
  br i1 %.not5366.i.i48.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

.preheader56.i.i41.i:                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i243, i64 1
  %i.cj = add nsw i64 %.sroa.15.1.i.i43.i242, -1  ; 2 uses
  %.not52.i.not.i45.not.i.not = icmp eq i64 %i.cj, 0
  br i1 %.not52.i.not.i45.not.i.not, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i.preheader

.preheader56.i.i41.i.preheader:                   ; preds = %bb.u, %.preheader56.i.i41.i
  %.sroa.0.1.i.i44.i243 = phi ptr [ %i.ci, %.preheader56.i.i41.i ], [ %.sroa.0.0.i.i40.i, %bb.u ] ; 2 uses
  %.sroa.15.1.i.i43.i242 = phi i64 [ %i.cj, %.preheader56.i.i41.i ], [ %.sroa.15.0.i.i38.i, %bb.u ]
  %.sroa.042.0.i.i42.i241 = phi i64 [ %i.cs, %.preheader56.i.i41.i ], [ 0, %bb.u ]
  %i.ck = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i241, i64 10) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.v, !prof !10

bb.v:                                             ; preds = %.preheader56.i.i41.i.preheader
  %i.cm = extractvalue { i64, i1 } %i.ck, 0       ; 2 uses
  %i.cn = load i8, ptr %.sroa.0.1.i.i44.i243, align 1, !alias.scope !433, !noalias !432, !noundef !5
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ugt i32 %i.cp, 9
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = add i64 %i.cm, %i.cr                    ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.cm
  %or.cond.i46.i = select i1 %i.cq, i1 true, i1 %i.ct, !prof !15
  br i1 %or.cond.i46.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i, !prof !15

.lr.ph.i.i49.i:                                   ; preds = %.preheader.i.i47.i, %bb.w
  %.sroa.0.269.i.i50.i = phi ptr [ %i.da, %bb.w ], [ %.sroa.0.0.i.i40.i, %.preheader.i.i47.i ] ; 2 uses
  %.sroa.15.268.i.i51.i = phi i64 [ %i.cz, %bb.w ], [ %.sroa.15.0.i.i38.i, %.preheader.i.i47.i ]
  %.sroa.042.267.i.i52.i = phi i64 [ %i.dc, %bb.w ], [ 0, %.preheader.i.i47.i ]
  %i.cu = load i8, ptr %.sroa.0.269.i.i50.i, align 1, !alias.scope !433, !noalias !432, !noundef !5
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 9                   ; 3 uses
  br i1 %i.cx, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i49.i
  %i.cy = mul i64 %.sroa.042.267.i.i52.i, 10
  %i.cz = add nsw i64 %.sroa.15.268.i.i51.i, -1   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i, i64 1
  %i.db = zext nneg i32 %i.cw to i64
  %i.dc = add i64 %i.cy, %i.db                    ; 2 uses
  %.not53.i.i53.i = icmp eq i64 %i.cz, 0
  br i1 %.not53.i.i53.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i: ; preds = %bb.v, %.preheader56.i.i41.i.preheader, %.preheader56.i.i41.i, %bb.w, %.lr.ph.i.i49.i, %.preheader.i.i47.i, %bb.t, %bb.t, %bb.s
  %.sroa.102.0.i31.i = phi i64 [ undef, %bb.t ], [ 0, %.preheader.i.i47.i ], [ undef, %bb.s ], [ undef, %bb.t ], [ undef, %.lr.ph.i.i49.i ], [ %i.dc, %bb.w ], [ undef, %bb.v ], [ %i.cs, %.preheader56.i.i41.i ], [ undef, %.preheader56.i.i41.i.preheader ]
  %.sink.i.i32.i = phi i1 [ true, %bb.t ], [ false, %.preheader.i.i47.i ], [ true, %bb.s ], [ true, %bb.t ], [ %i.cx, %bb.w ], [ %i.cx, %.lr.ph.i.i49.i ], [ true, %bb.v ], [ false, %.preheader56.i.i41.i ], [ true, %.preheader56.i.i41.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.x

bb.x:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body61 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc68 unwind label %bb.ag

.noexc68:                                         ; preds = %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i
  %.sroa.3.0.i36.i = select i1 %.sink.i.i32.i, i64 undef, i64 %.sroa.102.0.i31.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  %i.df = icmp eq i64 %.sroa.3.0.i36.i, 0
  %or.cond.not.i = select i1 %.sink.i.i32.i, i1 true, i1 %i.df
  br i1 %or.cond.not.i, label %bb.aa, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.z:                                             ; preds = %bb.r, %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc68
  %i.dg = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc69 unwind label %bb.ag  ; 2 uses

.noexc69:                                         ; preds = %bb.aa
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 4 uses
  %i.dj = trunc nuw i64 %i.dh to i1
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  br i1 %i.dj, label %bb.ab, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.ab:                                            ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !434
  %i.dl = and i64 %i.dk, 3
  switch i64 %i.dl, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i
    i64 3, label %bb.ac
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i
    i64 1, label %bb.ad
  ], !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp ult ptr %i.di, inttoptr (i64 188978561024 to ptr)
  %i.dn = and i64 %i.dk, 1095216660480
  %i.do = icmp ne i64 %i.dn, 1095216660480
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.do)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr i8, ptr %i.di, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !alias.scope !435, !noalias !434
  store i8 3, ptr %i.d, align 8, !alias.scope !435, !noalias !434
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !434
  br label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

.body61:                                          ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry10TerminatorECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.ag, %bb.x, %bb.i, %.thread166
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn120169, %.thread166 ], [ %i.dd, %bb.x ], [ %i.eg, %bb.ag ], [ %i.bl, %bb.i ], [ %.pn48.pn.pn.pn, %bb.ci ], [ %.pn48.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry10TerminatorECs1hTjP0dFAwJ_12fontc_crater.exit ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsaM4fumF1j8I_10rayon_core17ThreadPoolBuilderECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #30
          to label %bb.cs unwind label %bb.cm

_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i, %.noexc69, %.noexc68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i, %.noexc65, %bb.m, %bb.a
  %.sroa.0.1.i = phi i64 [ %.sroa.102.0.i.i, %bb.m ], [ %.val, %bb.a ], [ %.sroa.3.0.i36.i, %.noexc68 ], [ %i.bt, %.noexc65 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i ], [ %i.dk, %.noexc69 ]
  %i.dr = call i64 @llvm.umin.i64(i64 %.sroa.0.1.i, i64 65535) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dt = load i8, ptr %i.ds, align 1, !range !12, !noundef !5
  store i8 %i.dt, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.dr, ptr %i.dv, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3n_EIB4P_B4u_EECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3p_EIB4R_B4w_EECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, i64 noundef 0, i64 noundef %i.dr)
          to label %bb.af unwind label %bb.cr

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ea = load i64, ptr %i.ac, align 8, !range !17, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 576460752303423488
  call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ec
  store ptr %i.dz, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.dz, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.ea, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ee, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
          to label %bb.ah unwind label %.thread139

.thread139:                                       ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.ag:                                            ; preds = %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit, %bb.b, %.thread4.i, %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.l, %bb.n, %bb.q, %.thread11.i, %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.aa, %bb.ad, %bb.ck
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i64 noundef %i.dr)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.al, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.al ], [ %i.eh, %bb.aj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #30
          to label %.thread121 unwind label %bb.cm

bb.aj:                                            ; preds = %bb.ah
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  %i.ei = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_5BlockNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE3newCs1hTjP0dFAwJ_12fontc_crater()
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core5sleep5SleepECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #30
          to label %bb.ai unwind label %bb.cm

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
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
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 0, ptr %i.eo, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.ei, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store ptr %i.ei, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.ep = load <2 x ptr>, ptr %i.ek, align 8
  store ptr null, ptr %i.ek, align 8
  store <2 x ptr> %i.ep, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.eq = load <2 x ptr>, ptr %i.el, align 8
  store ptr null, ptr %i.el, align 8
  store <2 x ptr> %i.eq, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.er = load <2 x ptr>, ptr %i.em, align 8
  store ptr null, ptr %i.em, align 8
  store <2 x ptr> %i.er, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !436
  %i.es = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 641) 640, i64 noundef range(i64 8, 129) 128) #34, !noalias !436 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.an, label %bb.ar, !prof !10

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #32
          to label %.noexc71 unwind label %bb.ao

.noexc71:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.j) #30
          to label %.thread121 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.body77:                                          ; preds = %bb.bi, %bb.ay, %bb.aq, %.critedge
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.critedge ], [ %i.gk, %bb.ay ], [ %i.ew, %bb.aq ], [ %i.gz, %bb.bi ]
  invoke void @_RNvXs3_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_10TerminatorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry10TerminatorECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.cm

bb.aq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEECs1hTjP0dFAwJ_12fontc_crater.exit.i81, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.es, ptr noundef nonnull align 128 dereferenceable(640) %i.j, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.es, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ez = load i64, ptr %i.ad, align 8, !range !17, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !5 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 288230376151711744
  call void @llvm.assume(i1 %i.fc)
  %.idx = shl nuw nsw i64 %i.fb, 5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4110.0.copyload = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5111.0.copyload = load i64, ptr %.sroa.5111.0..sroa_idx, align 8 ; 2 uses
  %i.fe = icmp ult i64 %.sroa.5111.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4110.0.copyload, i64 %.sroa.5111.0.copyload
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.ey, ptr %i.r, align 8
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.ey, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
end_hunk_0
