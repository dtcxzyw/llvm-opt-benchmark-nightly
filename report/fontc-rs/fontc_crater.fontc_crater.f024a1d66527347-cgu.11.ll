Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.11?download=true
inline.NumInlined: 625
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.715.i = alloca [16 x i8], align 8        ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 5 uses
  %i.j = alloca [640 x i8], align 128             ; 19 uses
  %i.k = alloca [104 x i8], align 8               ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 4 uses
  %i.m = alloca [384 x i8], align 128             ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [104 x i8], align 16              ; 14 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [88 x i8], align 8                ; 16 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.539 = alloca [27 x i8], align 1          ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 12 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvNtCs5Xr050g3D4S_3std3env3varReECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 17)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  %i.ag = load i64, ptr %i.i, align 8, !range !7, !noundef !5
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %.thread4.i, label %bb.c

.thread4.i:                                       ; preds = %.noexc
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
          to label %.noexc60 unwind label %bb.ag

.noexc60:                                         ; preds = %.thread4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.c:                                             ; preds = %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.017.0.copyload.i = load i64, ptr %i.ai, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not27.i = icmp eq i64 %.sroa.017.0.copyload.i, -1
  br i1 %.not27.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false)
  store i64 %.sroa.017.0.copyload.i, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.aj = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !428, !nonnull !5, !noundef !5 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !428, !noundef !5 ; 2 uses
  switch i64 %i.al, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.aj, align 1, !alias.scope !429, !noalias !428, !noundef !5 ; 2 uses
  switch i8 %i.am, label %bb.f [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.d
  %.pr.i.i.i = load i8, ptr %i.aj, align 1, !alias.scope !429, !noalias !428
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i, %bb.e
  %i.an = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.am, %bb.e ]
  %cond.i.i.i = icmp eq i8 %i.an, 43              ; 2 uses
  %i.ao = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.al, %i.ao    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ap, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.f
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i240, i64 1
  %i.ar = add nsw i64 %.sroa.15.1.i.i.i239, -1    ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.f, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i240 = phi ptr [ %i.aq, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i.i239 = phi i64 [ %i.ar, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.f ]
  %.sroa.042.0.i.i.i238 = phi i64 [ %i.ba, %.preheader56.i.i.i ], [ 0, %bb.f ]
  %i.as = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i238, i64 10) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.au = extractvalue { i64, i1 } %i.as, 0       ; 2 uses
  %i.av = load i8, ptr %.sroa.0.1.i.i.i240, align 1, !alias.scope !429, !noalias !428, !noundef !5
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 9
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = add i64 %i.au, %i.az                    ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.au
  %or.cond.i.i = select i1 %i.ay, i1 true, i1 %i.bb, !prof !15
  br i1 %or.cond.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !15

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.sroa.0.269.i.i.i = phi ptr [ %i.bi, %bb.h ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.bk, %bb.h ], [ 0, %.preheader.i.i.i ]
  %i.bc = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !429, !noalias !428, !noundef !5
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10                  ; 3 uses
  br i1 %i.bf, label %bb.h, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = mul i64 %.sroa.042.267.i.i.i, 10
  %i.bh = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
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
  %2 = trunc nuw i64 %i.bq to i1
  %3 = ptrtoint ptr %i.br to i64                  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br i1 %2, label %bb.o, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.o:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !430
  %i.bs = and i64 %3, 3
  switch i64 %i.bs, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
    i64 1, label %bb.q
  ], !prof !16

default.unreachable:                              ; preds = %bb.ab, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp ult ptr %i.br, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %3, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bw = getelementptr i8, ptr %i.br, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !431, !noalias !430
  store i8 3, ptr %i.e, align 8, !alias.scope !431, !noalias !430
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx)
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
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.021.0.copyload.i = load i64, ptr %i.by, align 8 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !432, !nonnull !5, !noundef !5 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !432, !noundef !5 ; 2 uses
  switch i64 %i.cb, label %thread-pre-split.i.i54.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cc = load i8, ptr %i.bz, align 1, !alias.scope !433, !noalias !432, !noundef !5 ; 2 uses
  switch i8 %i.cc, label %bb.u [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  ]

thread-pre-split.i.i54.i:                         ; preds = %bb.s
  %.pr.i.i55.i = load i8, ptr %i.bz, align 1, !alias.scope !433, !noalias !432
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i54.i, %bb.t
  %i.cd = phi i8 [ %.pr.i.i55.i, %thread-pre-split.i.i54.i ], [ %i.cc, %bb.t ]
  %cond.i.i37.i = icmp eq i8 %i.cd, 43            ; 2 uses
  %i.ce = sext i1 %cond.i.i37.i to i64
  %.sroa.15.0.i.i38.i = add nsw i64 %i.cb, %i.ce  ; 4 uses
  %.sroa.0.0.idx.i.i39.i = zext i1 %cond.i.i37.i to i64
  %.sroa.0.0.i.i40.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.0.0.idx.i.i39.i ; 2 uses
  %i.cf = icmp samesign ult i64 %.sroa.15.0.i.i38.i, 17
  br i1 %i.cf, label %.preheader.i.i47.i, label %.preheader56.i.i41.i.preheader

.preheader.i.i47.i:                               ; preds = %bb.u
  %.not5366.i.i48.i = icmp eq i64 %.sroa.15.0.i.i38.i, 0
  br i1 %.not5366.i.i48.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

.preheader56.i.i41.i:                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i243, i64 1
  %i.ch = add nsw i64 %.sroa.15.1.i.i43.i242, -1  ; 2 uses
  %.not52.i.not.i45.not.i.not = icmp eq i64 %i.ch, 0
  br i1 %.not52.i.not.i45.not.i.not, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i.preheader

.preheader56.i.i41.i.preheader:                   ; preds = %bb.u, %.preheader56.i.i41.i
  %.sroa.0.1.i.i44.i243 = phi ptr [ %i.cg, %.preheader56.i.i41.i ], [ %.sroa.0.0.i.i40.i, %bb.u ] ; 2 uses
  %.sroa.15.1.i.i43.i242 = phi i64 [ %i.ch, %.preheader56.i.i41.i ], [ %.sroa.15.0.i.i38.i, %bb.u ]
  %.sroa.042.0.i.i42.i241 = phi i64 [ %i.cq, %.preheader56.i.i41.i ], [ 0, %bb.u ]
  %i.ci = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i241, i64 10) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.cj, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.v, !prof !10

bb.v:                                             ; preds = %.preheader56.i.i41.i.preheader
  %i.ck = extractvalue { i64, i1 } %i.ci, 0       ; 2 uses
  %i.cl = load i8, ptr %.sroa.0.1.i.i44.i243, align 1, !alias.scope !433, !noalias !432, !noundef !5
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = add i64 %i.ck, %i.cp                    ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.ck
  %or.cond.i46.i = select i1 %i.co, i1 true, i1 %i.cr, !prof !15
  br i1 %or.cond.i46.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.preheader56.i.i41.i, !prof !15

.lr.ph.i.i49.i:                                   ; preds = %.preheader.i.i47.i, %bb.w
  %.sroa.0.269.i.i50.i = phi ptr [ %i.cy, %bb.w ], [ %.sroa.0.0.i.i40.i, %.preheader.i.i47.i ] ; 2 uses
  %.sroa.15.268.i.i51.i = phi i64 [ %i.cx, %bb.w ], [ %.sroa.15.0.i.i38.i, %.preheader.i.i47.i ]
  %.sroa.042.267.i.i52.i = phi i64 [ %i.da, %bb.w ], [ 0, %.preheader.i.i47.i ]
  %i.cs = load i8, ptr %.sroa.0.269.i.i50.i, align 1, !alias.scope !433, !noalias !432, !noundef !5
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, 9                   ; 3 uses
  br i1 %i.cv, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i49.i
  %i.cw = mul i64 %.sroa.042.267.i.i52.i, 10
  %i.cx = add nsw i64 %.sroa.15.268.i.i51.i, -1   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i, i64 1
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = add i64 %i.cw, %i.cz                    ; 2 uses
  %.not53.i.i53.i = icmp eq i64 %i.cx, 0
  br i1 %.not53.i.i53.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i, label %.lr.ph.i.i49.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i: ; preds = %bb.v, %.preheader56.i.i41.i.preheader, %.preheader56.i.i41.i, %bb.w, %.lr.ph.i.i49.i, %.preheader.i.i47.i, %bb.t, %bb.t, %bb.s
  %.sroa.102.0.i31.i = phi i64 [ undef, %bb.t ], [ 0, %.preheader.i.i47.i ], [ undef, %bb.s ], [ undef, %bb.t ], [ undef, %.lr.ph.i.i49.i ], [ %i.da, %bb.w ], [ undef, %bb.v ], [ %i.cq, %.preheader56.i.i41.i ], [ undef, %.preheader56.i.i41.i.preheader ]
  %.sink.i.i32.i = phi i1 [ true, %bb.t ], [ false, %.preheader.i.i47.i ], [ true, %bb.s ], [ true, %bb.t ], [ %i.cv, %bb.w ], [ %i.cv, %.lr.ph.i.i49.i ], [ true, %bb.v ], [ false, %.preheader56.i.i41.i ], [ true, %.preheader56.i.i41.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.x

bb.x:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body61 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
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
  %i.dd = icmp eq i64 %.sroa.3.0.i36.i, 0
  %or.cond.not.i = select i1 %.sink.i.i32.i, i1 true, i1 %i.dd
  br i1 %or.cond.not.i, label %bb.aa, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.z:                                             ; preds = %bb.r, %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc68
  %i.de = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc69 unwind label %bb.ag  ; 2 uses

.noexc69:                                         ; preds = %bb.aa
  %i.df = extractvalue { i64, ptr } %i.de, 0
  %i.dg = extractvalue { i64, ptr } %i.de, 1      ; 4 uses
  %4 = trunc nuw i64 %i.df to i1
  %5 = ptrtoint ptr %i.dg to i64                  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  br i1 %4, label %bb.ab, label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.ab:                                            ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !434
  %i.dh = and i64 %5, 3
  switch i64 %i.dh, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i
    i64 3, label %bb.ac
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i
    i64 1, label %bb.ad
  ], !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.di = icmp ult ptr %i.dg, inttoptr (i64 188978561024 to ptr)
  %i.dj = and i64 %5, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.di)
  call void @llvm.assume(i1 %i.dk)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i

bb.ad:                                            ; preds = %bb.ab
  %i.dl = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !435, !noalias !434
  store i8 3, ptr %i.d, align 8, !alias.scope !435, !noalias !434
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !434
  br label %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit

.body61:                                          ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry10TerminatorECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.ag, %bb.x, %bb.i, %.thread166
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn120169, %.thread166 ], [ %i.db, %bb.x ], [ %i.ec, %bb.ag ], [ %i.bl, %bb.i ], [ %.pn48.pn.pn.pn, %bb.ci ], [ %.pn48.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry10TerminatorECs1hTjP0dFAwJ_12fontc_crater.exit ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsaM4fumF1j8I_10rayon_core17ThreadPoolBuilderECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #30
          to label %bb.cs unwind label %bb.cm

_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i, %.noexc69, %.noexc68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i, %.noexc65, %bb.m, %bb.a
  %.sroa.0.1.i = phi i64 [ %.sroa.102.0.i.i, %bb.m ], [ %.val, %bb.a ], [ %.sroa.3.0.i36.i, %.noexc68 ], [ %3, %.noexc65 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit.i57.i ], [ %5, %.noexc69 ]
  %i.dn = call i64 @llvm.umin.i64(i64 %.sroa.0.1.i, i64 65535) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dp = load i8, ptr %i.do, align 1, !range !12, !noundef !5
  store i8 %i.dp, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.dn, ptr %i.dr, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3n_EIB4P_B4u_EECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgCecv3eZDcN_5alloc3vec3VecB3p_EIB4R_B4w_EECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, i64 noundef 0, i64 noundef %i.dn)
          to label %bb.af unwind label %bb.cr

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dw = load i64, ptr %i.ac, align 8, !range !17, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 576460752303423488
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dy
  store ptr %i.dv, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.dw, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ea, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
          to label %bb.ah unwind label %.thread139

.thread139:                                       ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.ag:                                            ; preds = %_RNvMs2_CsaM4fumF1j8I_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs1hTjP0dFAwJ_12fontc_crater.exit, %bb.b, %.thread4.i, %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.l, %bb.n, %bb.q, %.thread11.i, %_RNCNvMs2_CsaM4fumF1j8I_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.aa, %bb.ad, %bb.ck
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i64 noundef %i.dn)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.al, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.al ], [ %i.ed, %bb.aj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #30
          to label %.thread121 unwind label %bb.cm

bb.aj:                                            ; preds = %bb.ah
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  %i.ee = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_5BlockNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE3newCs1hTjP0dFAwJ_12fontc_crater()
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core5sleep5SleepECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #30
          to label %bb.ai unwind label %bb.cm

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
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
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 0, ptr %i.ek, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.ee, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store ptr %i.ee, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.el = load <2 x ptr>, ptr %i.eg, align 8
  store ptr null, ptr %i.eg, align 8
  store <2 x ptr> %i.el, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.em = load <2 x ptr>, ptr %i.eh, align 8
  store ptr null, ptr %i.eh, align 8
  store <2 x ptr> %i.em, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.en = load <2 x ptr>, ptr %i.ei, align 8
  store ptr null, ptr %i.ei, align 8
  store <2 x ptr> %i.en, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !436
  %i.eo = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 641) 640, i64 noundef range(i64 8, 129) 128) #34, !noalias !436 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.an, label %bb.ar, !prof !10

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #32
          to label %.noexc71 unwind label %bb.ao

.noexc71:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.j) #30
          to label %.thread121 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
end_hunk_0
begin_hunk_1_@_RINvNtCsaM4fumF1j8I_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB1p_3map11MapConsumerNtNtB1p_6extend15ListVecConsumerNCNCINvB32_7run_allNtNtB32_15ttx_diff_runner10DiffOutputNtB50_9DiffErrorNtB50_10TtxContextNvB50_12run_ttx_diffE00EE0NCB1i_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6N_3vec3VecTB2Y_INtB32_9RunResultB4Y_B5z_EEEEB6G_E0TB6G_B6G_EEB32_:bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaM4fumF1j8I_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1p_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1i_s_0uuE0TuuEEB4J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = tail call noundef ptr @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellPNtNtCsaM4fumF1j8I_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtBY_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCBR_s_0uuE0B4h_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 128 %i.b) #35
  br label %_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1H_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1A_s_0uuE0TuuEEB51_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 ptr @_RNvNtCsaM4fumF1j8I_10rayon_core8registry15global_registry()
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.g = tail call noundef ptr @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellPNtNtCsaM4fumF1j8I_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4), !noalias !495 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.j = load ptr, ptr %i.i, align 16, !noalias !495, !nonnull !5, !noundef !5
  %.not.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !13

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.f, ptr %i.k, align 8, !noalias !496
  call void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCsaM4fumF1j8I_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB3e_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB37_s_0uuE0TuuEE0B7H_EB6y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !496
  br label %_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1H_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1A_s_0uuE0TuuEEB51_.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtBY_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCBR_s_0uuE0B4h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 128 %i.g) #35
  br label %_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1H_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1A_s_0uuE0TuuEEB51_.exit

bb.g:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1O_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1H_s_0uuE0TuuEEB58_(ptr noundef nonnull align 128 %i.f, ptr noundef nonnull align 128 %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0)
  br label %_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1H_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1A_s_0uuE0TuuEEB51_.exit

_RINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB1H_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB1A_s_0uuE0TuuEEB51_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner10DiffOutputENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner9DiffErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner9DiffErrorEEB1E_.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner9DiffErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner9DiffErrorEEB1E_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater9RunResultNtNtBE_15ttx_diff_runner10DiffOutputNtB1i_9DiffErrorEEBE_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.b = icmp eq i64 %i.a, -3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !7, !alias.scope !499, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEBF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEBF_.exit

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %0)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEBF_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEBF_.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !502, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !502, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !502 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !502 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !502

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !5, !noalias !502 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !20, !invariant.load !5, !noalias !502
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #34, !noalias !502
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !17, !invariant.load !5, !noalias !502 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !20, !invariant.load !5, !noalias !502
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #34, !noalias !502
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2l_9RunResultNtNtB2l_15ttx_diff_runner10DiffOutputNtB3k_9DiffErrorEEEEEEB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.a = load i64, ptr %0, align 8, !range !506, !alias.scope !505, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1W_9RunResultNtNtB1W_15ttx_diff_runner10DiffOutputNtB2V_9DiffErrorEEEEEB1W_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !505 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !505, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.h = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !505 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !505

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !5, !noalias !505 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1W_9RunResultNtNtB1W_15ttx_diff_runner10DiffOutputNtB2V_9DiffErrorEEEEEB1W_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !20, !invariant.load !5, !noalias !505
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34, !noalias !505
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1W_9RunResultNtNtB1W_15ttx_diff_runner10DiffOutputNtB2V_9DiffErrorEEEEEB1W_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !17, !invariant.load !5, !noalias !505 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !20, !invariant.load !5, !noalias !505
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #34, !noalias !505
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBK_9RunResultNtNtBK_15ttx_diff_runner10DiffOutputNtB1I_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBR_9RunResultNtNtBR_15ttx_diff_runner10DiffOutputNtB1P_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBR_9RunResultNtNtBR_15ttx_diff_runner10DiffOutputNtB1P_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1W_9RunResultNtNtB1W_15ttx_diff_runner10DiffOutputNtB2V_9DiffErrorEEEEEB1W_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1W_9RunResultNtNtB1W_15ttx_diff_runner10DiffOutputNtB2V_9DiffErrorEEEEEB1W_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !509, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2J_9RunResultNtNtB2J_15ttx_diff_runner10DiffOutputNtB3I_9DiffErrorEEEEEEB2J_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !509 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !509, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !509 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !509

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5, !noalias !509 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2J_9RunResultNtNtB2J_15ttx_diff_runner10DiffOutputNtB3I_9DiffErrorEEEEEEB2J_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !20, !invariant.load !5, !noalias !509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #34, !noalias !509
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2J_9RunResultNtNtB2J_15ttx_diff_runner10DiffOutputNtB3I_9DiffErrorEEEEEEB2J_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5, !noalias !509 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !20, !invariant.load !5, !noalias !509
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !noalias !509
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2J_9RunResultNtNtB2J_15ttx_diff_runner10DiffOutputNtB3I_9DiffErrorEEEEEEB2J_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2J_9RunResultNtNtB2J_15ttx_diff_runner10DiffOutputNtB3I_9DiffErrorEEEEEEB2J_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !512, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2t_9RunResultNtNtB2t_15ttx_diff_runner10DiffOutputNtB3s_9DiffErrorEEEEEB2t_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !512 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !512, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !512 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !512

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5, !noalias !512 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2t_9RunResultNtNtB2t_15ttx_diff_runner10DiffOutputNtB3s_9DiffErrorEEEEEB2t_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !20, !invariant.load !5, !noalias !512
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #34, !noalias !512
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2t_9RunResultNtNtB2t_15ttx_diff_runner10DiffOutputNtB3s_9DiffErrorEEEEEB2t_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5, !noalias !512 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !20, !invariant.load !5, !noalias !512
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !noalias !512
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2t_9RunResultNtNtB2t_15ttx_diff_runner10DiffOutputNtB3s_9DiffErrorEEEEEB2t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2t_9RunResultNtNtB2t_15ttx_diff_runner10DiffOutputNtB3s_9DiffErrorEEEEEB2t_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB39_9RunResultNtNtB39_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorEEEEB1K_EEEEB39_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !517, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2K_9RunResultNtNtB2K_15ttx_diff_runner10DiffOutputNtB3J_9DiffErrorEEEEB1l_EEEB2K_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !517 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !517, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !517 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !517

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5, !noalias !517 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2K_9RunResultNtNtB2K_15ttx_diff_runner10DiffOutputNtB3J_9DiffErrorEEEEB1l_EEEB2K_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !20, !invariant.load !5, !noalias !517
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #34, !noalias !517
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2K_9RunResultNtNtB2K_15ttx_diff_runner10DiffOutputNtB3J_9DiffErrorEEEEB1l_EEEB2K_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5, !noalias !517 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !20, !invariant.load !5, !noalias !517
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !noalias !517
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB20_9RunResultNtNtB20_15ttx_diff_runner10DiffOutputNtB2Z_9DiffErrorEEEEBC_EEB20_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !518
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB20_9RunResultNtNtB20_15ttx_diff_runner10DiffOutputNtB2Z_9DiffErrorEEEEBC_EEB20_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2K_9RunResultNtNtB2K_15ttx_diff_runner10DiffOutputNtB3J_9DiffErrorEEEEB1l_EEEB2K_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2K_9RunResultNtNtB2K_15ttx_diff_runner10DiffOutputNtB3J_9DiffErrorEEEEB1l_EEEB2K_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB20_9RunResultNtNtB20_15ttx_diff_runner10DiffOutputNtB2Z_9DiffErrorEEEEBC_EEB20_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2T_9RunResultNtNtB2T_15ttx_diff_runner10DiffOutputNtB3S_9DiffErrorEEEB1K_EEEEB2T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !521, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2u_9RunResultNtNtB2u_15ttx_diff_runner10DiffOutputNtB3t_9DiffErrorEEEB1l_EEEB2u_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !521 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !521, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !521 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !521

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5, !noalias !521 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2u_9RunResultNtNtB2u_15ttx_diff_runner10DiffOutputNtB3t_9DiffErrorEEEB1l_EEEB2u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !20, !invariant.load !5, !noalias !521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #34, !noalias !521
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2u_9RunResultNtNtB2u_15ttx_diff_runner10DiffOutputNtB3t_9DiffErrorEEEB1l_EEEB2u_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5, !noalias !521 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !20, !invariant.load !5, !noalias !521
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !noalias !521
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1L_9RunResultNtNtB1L_15ttx_diff_runner10DiffOutputNtB2K_9DiffErrorEEEBC_EEB1L_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1L_9RunResultNtNtB1L_15ttx_diff_runner10DiffOutputNtB2K_9DiffErrorEEEBC_EEB1L_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2u_9RunResultNtNtB2u_15ttx_diff_runner10DiffOutputNtB3t_9DiffErrorEEEB1l_EEEB2u_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2u_9RunResultNtNtB2u_15ttx_diff_runner10DiffOutputNtB3t_9DiffErrorEEEB1l_EEEB2u_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1L_9RunResultNtNtB1L_15ttx_diff_runner10DiffOutputNtB2K_9DiffErrorEEEBC_EEB1L_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner15CompilerFailureEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
end_hunk_1
begin_hunk_2_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater:bb.a
_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !529
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit
    i64 1, label %bb.e
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !530, !noalias !529
  store i8 3, ptr %i.a, align 8, !alias.scope !530, !noalias !529
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !529
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvMNtBG_11thread_poolNtB2F_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB3s_15ttx_diff_runner10DiffOutputNtB44_9DiffErrorNtB44_10TtxContextNvB44_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3s_6target6TargetINtB3s_9RunResultB42_B4D_EEEE0B5x_E0B5x_EEB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !535, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvMNtB1x_11thread_poolNtB2I_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB3w_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorNtB48_10TtxContextNvB48_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3w_6target6TargetINtB3w_9RunResultB46_B4H_EEEE0B5B_E0EEEB3w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvMNtBM_11thread_poolNtB1W_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB2J_15ttx_diff_runner10DiffOutputNtB3l_9DiffErrorNtB3l_10TtxContextNvB3l_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB2J_6target6TargetINtB2J_9RunResultB3j_B3U_EEEE0B4O_E0EB2J_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvMNtBM_11thread_poolNtB1W_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB2J_15ttx_diff_runner10DiffOutputNtB3l_9DiffErrorNtB3l_10TtxContextNvB3l_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB2J_6target6TargetINtB2J_9RunResultB3j_B3U_EEEE0B4O_E0EB2J_.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvMNtB1x_11thread_poolNtB2I_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB3w_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorNtB48_10TtxContextNvB48_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3w_6target6TargetINtB3w_9RunResultB46_B4H_EEEE0B5B_E0EEEB3w_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvMNtBM_11thread_poolNtB1W_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB2J_15ttx_diff_runner10DiffOutputNtB3l_9DiffErrorNtB3l_10TtxContextNvB3l_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB2J_6target6TargetINtB2J_9RunResultB3j_B3U_EEEE0B4O_E0EB2J_.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2l_9RunResultNtNtB2l_15ttx_diff_runner10DiffOutputNtB3k_9DiffErrorEEEEEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #30
          to label %bb.g unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvMNtB1x_11thread_poolNtB2I_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB3w_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorNtB48_10TtxContextNvB48_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3w_6target6TargetINtB3w_9RunResultB46_B4H_EEEE0B5B_E0EEEB3w_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvMNtBM_11thread_poolNtB1W_10ThreadPool7installNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB2J_15ttx_diff_runner10DiffOutputNtB3l_9DiffErrorNtB3l_10TtxContextNvB3l_12run_ttx_diffE0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB2J_6target6TargetINtB2J_9RunResultB3j_B3U_EEEE0B4O_E0EB2J_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2l_9RunResultNtNtB2l_15ttx_diff_runner10DiffOutputNtB3k_9DiffErrorEEEEEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTB4K_INtB4O_9RunResultNtNtB4O_15ttx_diff_runner10DiffOutputNtB72_9DiffErrorEEENCNCINvB4O_7run_allB70_B7B_NtB72_10TtxContextNvB72_12run_ttx_diffE00EE0NCB34_s_0INtB5Y_13CollectResultB6E_EB9c_E0TB9c_B9c_EE0B9J_EEB4O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !540, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTB4O_INtB4S_9RunResultNtNtB4S_15ttx_diff_runner10DiffOutputNtB76_9DiffErrorEEENCNCINvB4S_7run_allB74_B7F_NtB76_10TtxContextNvB76_12run_ttx_diffE00EE0NCB38_s_0INtB62_13CollectResultB6I_EB9g_E0TB9g_B9g_EE0EEEB4S_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerTB39_INtB3d_9RunResultNtNtB3d_15ttx_diff_runner10DiffOutputNtB5r_9DiffErrorEEENCNCINvB3d_7run_allB5p_B60_NtB5r_10TtxContextNvB5r_12run_ttx_diffE00EE0NCB1t_s_0INtB4n_13CollectResultB53_EB7B_E0EB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTB4O_INtB4S_9RunResultNtNtB4S_15ttx_diff_runner10DiffOutputNtB76_9DiffErrorEEENCNCINvB4S_7run_allB74_B7F_NtB76_10TtxContextNvB76_12run_ttx_diffE00EE0NCB38_s_0INtB62_13CollectResultB6I_EB9g_E0TB9g_B9g_EE0EEEB4S_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2T_9RunResultNtNtB2T_15ttx_diff_runner10DiffOutputNtB3S_9DiffErrorEEEB1K_EEEEB2T_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #30
          to label %bb.e unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTB4O_INtB4S_9RunResultNtNtB4S_15ttx_diff_runner10DiffOutputNtB76_9DiffErrorEEENCNCINvB4S_7run_allB74_B7F_NtB76_10TtxContextNvB76_12run_ttx_diffE00EE0NCB38_s_0INtB62_13CollectResultB6I_EB9g_E0TB9g_B9g_EE0EEEB4S_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2T_9RunResultNtNtB2T_15ttx_diff_runner10DiffOutputNtB3S_9DiffErrorEEEB1K_EEEEB2T_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3b_3map11MapConsumerNtNtB3b_6extend15ListVecConsumerNCNCINvB4O_7run_allNtNtB4O_15ttx_diff_runner10DiffOutputNtB6M_9DiffErrorNtB6M_10TtxContextNvB6M_12run_ttx_diffE00EE0NCB34_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB8z_3vec3VecTB4K_INtB4O_9RunResultB6K_B7l_EEEEB8s_E0TB8s_B8s_EE0Baq_EEB4O_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !545, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCNCINvB4S_7run_allNtNtB4S_15ttx_diff_runner10DiffOutputNtB6Q_9DiffErrorNtB6Q_10TtxContextNvB6Q_12run_ttx_diffE00EE0NCB38_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB8D_3vec3VecTB4O_INtB4S_9RunResultB6O_B7p_EEEEB8w_E0TB8w_B8w_EE0EEEB4S_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB1A_3map11MapConsumerNtNtB1A_6extend15ListVecConsumerNCNCINvB3d_7run_allNtNtB3d_15ttx_diff_runner10DiffOutputNtB5b_9DiffErrorNtB5b_10TtxContextNvB5b_12run_ttx_diffE00EE0NCB1t_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6Y_3vec3VecTB39_INtB3d_9RunResultB59_B5K_EEEEB6R_E0EB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCNCINvB4S_7run_allNtNtB4S_15ttx_diff_runner10DiffOutputNtB6Q_9DiffErrorNtB6Q_10TtxContextNvB6Q_12run_ttx_diffE00EE0NCB38_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB8D_3vec3VecTB4O_INtB4S_9RunResultB6O_B7p_EEEEB8w_E0TB8w_B8w_EE0EEEB4S_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB39_9RunResultNtNtB39_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorEEEEB1K_EEEEB39_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #30
          to label %bb.e unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCNCINvB4S_7run_allNtNtB4S_15ttx_diff_runner10DiffOutputNtB6Q_9DiffErrorNtB6Q_10TtxContextNvB6Q_12run_ttx_diffE00EE0NCB38_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB8D_3vec3VecTB4O_INtB4S_9RunResultB6O_B7p_EEEEB8w_E0TB8w_B8w_EE0EEEB4S_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB39_9RunResultNtNtB39_15ttx_diff_runner10DiffOutputNtB48_9DiffErrorEEEEB1K_EEEEB39_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB3b_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCB34_s_0uuE0TuuEE0B7E_EEB6v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.b = load i64, ptr %i.a, align 8, !range !21, !alias.scope !552, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTuuEEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !552 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !552, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !552 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !552

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5, !noalias !552 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTuuEEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !20, !invariant.load !5, !noalias !552
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34, !noalias !552
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTuuEEEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !5, !noalias !552 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !20, !invariant.load !5, !noalias !552
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34, !noalias !552
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultTuuEEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3H_9RunResultNtNtB3H_15ttx_diff_runner10DiffOutputNtB4G_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5K_3vec13DrainProducerB3D_EINtNtB5I_3map11MapConsumerNtNtB5I_6extend15ListVecConsumerNCNCINvB3H_7run_allB4E_B5f_NtB4G_10TtxContextNvB4G_12run_ttx_diffE00EEs_0E0B2i_EEB3H_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !571, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !576, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !576, !noundef !5 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !576
  store i64 0, ptr %i.f, align 8, !alias.scope !576
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i.i.i.i.i4
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j)
          to label %bb.c unwind label %bb.e, !noalias !576

bb.d:                                             ; preds = %.lr.ph6
  %i.l = add i64 %.sroa.0.1.i.i.i.i.i.i.i5, 1     ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %.body, label %.lr.ph6

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i.i5 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i.i.i.i.i5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p) #30
          to label %bb.d unwind label %bb.f, !noalias !576

bb.f:                                             ; preds = %.lr.ph6
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !576
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #30
          to label %common.resume unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.r = load i64, ptr %0, align 8, !range !21, !alias.scope !579, !noundef !5
  switch i64 %i.r, label %bb.g [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_.exit
    i64 1, label %bb.m
  ]

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.s, align 8, !alias.scope !579 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !579, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.u = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !579 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i.i)
          to label %bb.i unwind label %bb.k, !noalias !579

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !5, !noalias !579 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !20, !invariant.load !5, !noalias !579
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !579
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !5, !noalias !579 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !20, !invariant.load !5, !noalias !579
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !579
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.aa, %bb.l ], [ %i.n, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB38_9RunResultNtNtB38_15ttx_diff_runner10DiffOutputNtB47_9DiffErrorEEEEEEEB38_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3K_9RunResultNtNtB3K_15ttx_diff_runner10DiffOutputNtB4J_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5N_3vec13DrainProducerB3G_EINtNtB5L_3map11MapConsumerNtNtB5L_6extend15ListVecConsumerNCNCINvB3K_7run_allB4H_B5i_NtB4J_10TtxContextNvB4J_12run_ttx_diffE00EEs_0E0EEEB3K_.exit, %bb.i, %bb.j, %bb.m
  ret void

bb.n:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3r_9RunResultNtNtB3r_15ttx_diff_runner10DiffOutputNtB4q_9DiffErrorEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerB3n_EINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCNCINvB3r_7run_allB4o_B4Z_NtB4q_10TtxContextNvB4q_12run_ttx_diffE00EEs_0E0B2i_EEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !598, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !603, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !603, !noundef !5 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !603
  store i64 0, ptr %i.e, align 8, !alias.scope !603
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i4 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i.i.i.i.i4
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.i)
          to label %bb.c unwind label %bb.e, !noalias !603

bb.d:                                             ; preds = %.lr.ph6
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i.i.i5, 1     ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body, label %.lr.ph6

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i.i5 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %.sroa.0.1.i.i.i.i.i.i.i5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.o) #30
          to label %bb.d unwind label %bb.f, !noalias !603

bb.f:                                             ; preds = %.lr.ph6
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !603
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #30
          to label %common.resume unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.s = load i64, ptr %i.r, align 8, !range !21, !alias.scope !606, !noundef !5
  switch i64 %i.s, label %bb.g [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_.exit
    i64 1, label %bb.m
  ]

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !606 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.u, align 8, !alias.scope !606, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.v = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !606 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i.i)
          to label %bb.i unwind label %bb.k, !noalias !606

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !5, !noalias !606 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !20, !invariant.load !5, !noalias !606
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !606
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !17, !invariant.load !5, !noalias !606 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !20, !invariant.load !5, !noalias !606
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !606
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.ab, %bb.l ], [ %i.m, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2S_9RunResultNtNtB2S_15ttx_diff_runner10DiffOutputNtB3R_9DiffErrorEEEEEEB2S_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsaM4fumF1j8I_10rayon_core4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3u_9RunResultNtNtB3u_15ttx_diff_runner10DiffOutputNtB4t_9DiffErrorEEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerB3q_EINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCNCINvB3u_7run_allB4r_B52_NtB4t_10TtxContextNvB4t_12run_ttx_diffE00EEs_0E0EEEB3u_.exit, %bb.i, %bb.j, %bb.m
  ret void

bb.n:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_buNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtB2s_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EEs_0E0uEEB5M_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.b = load i64, ptr %i.a, align 8, !range !21, !alias.scope !613, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !613 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !613, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !613 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !613

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5, !noalias !613 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !20, !invariant.load !5, !noalias !613
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34, !noalias !613
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !5, !noalias !613 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !20, !invariant.load !5, !noalias !613
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34, !noalias !613
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsaM4fumF1j8I_10rayon_core3job9JobResultuEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2Z_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2Z_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsaM4fumF1j8I_10rayon_core8registry10ThreadInfoEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecPaEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
end_hunk_2
begin_hunk_3_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater:bb.a
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.l

.body24.i:                                        ; preds = %bb.l, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque8InjectorNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque8InjectorNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit.i ], [ %i.r, %bb.l ], [ %i.n, %bb.j ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val11.i = load ptr, ptr %i.p, align 32, !alias.scope !651, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val12.i = load ptr, ptr %i.q, align 8, !alias.scope !651
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.val11.i, ptr %.val12.i) #30
          to label %.body26.i unwind label %bb.ae

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val.i = load ptr, ptr %i.s, align 32, !alias.scope !651, !noundef !5 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val10.i = load ptr, ptr %i.t, align 8, !alias.scope !651 ; 6 uses
  %i.u = icmp eq ptr %.val.i, null
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.v = load ptr, ptr %.val10.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body26.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34
  br label %.body26.i

.body26.i:                                        ; preds = %bb.r, %bb.q, %.body24.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body24.i ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val19.i = load ptr, ptr %i.ah, align 16, !alias.scope !651, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val20.i = load ptr, ptr %i.ai, align 8, !alias.scope !651
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.val19.i, ptr %.val20.i) #30
          to label %.body29.i unwind label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.p, %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val17.i = load ptr, ptr %i.aj, align 16, !alias.scope !651, !noundef !5 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val18.i = load ptr, ptr %i.ak, align 8, !alias.scope !651 ; 6 uses
  %i.al = icmp eq ptr %.val17.i, null
  br i1 %i.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i) ]
  %i.am = load ptr, ptr %.val18.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i28.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.am(ptr noundef nonnull %.val17.i)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.w:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body29.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #34
  br label %.body29.i

.body29.i:                                        ; preds = %bb.x, %bb.w, %.body26.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body26.i ], [ %i.as, %bb.w ], [ %i.as, %bb.x ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val15.i = load ptr, ptr %i.ay, align 64, !alias.scope !651, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val16.i = load ptr, ptr %i.az, align 8, !alias.scope !651
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr %.val15.i, ptr %.val16.i) #30
          to label %common.resume.i unwind label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.v, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val13.i = load ptr, ptr %i.ba, align 64, !alias.scope !651, !noundef !5 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val14.i = load ptr, ptr %i.bb, align 8, !alias.scope !651 ; 6 uses
  %i.bc = icmp eq ptr %.val13.i, null
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.bd = load ptr, ptr %.val14.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i31.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i31.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.bd(ptr noundef nonnull %.val13.i)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ac:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #34
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %.body29.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.bj, %bb.ad ], [ %.pn8.i, %.body29.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %.body29.i, %.body26.i, %.body24.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque8InjectorNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit.i, %.body21.i, %.body.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !20, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #34
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #34
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1n_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !654, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !654, !noundef !5 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !654
  store i64 0, ptr %i.b, align 8, !alias.scope !654
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsa_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.c
  br i1 %i.e, label %_RNvXsa_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.sroa.0.0.i.i1
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.f)
          to label %bb.b unwind label %bb.d, !noalias !654

bb.c:                                             ; preds = %.lr.ph3
  %i.h = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.c
  br i1 %i.i, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.g, %i.c
  br i1 %i.k, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.l) #30
          to label %bb.c unwind label %bb.e, !noalias !654

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %.lr.ph3
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !654
  unreachable

_RNvXsa_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !657, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !657, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !657, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !657, !noundef !5 ; 2 uses
  %i.i = icmp ult i64 %i.h, 88686269585142076
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !657, !noundef !5 ; 4 uses
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.c, %i.e
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.c, i64 noundef %i.e), !noalias !657
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  br label %_RNvXs7_NtCsimRn6g4KI1Q_5rayon3vecINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.e, %i.k
  br i1 %i.n, label %bb.f, label %_RNvXs7_NtCsimRn6g4KI1Q_5rayon3vecINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_.exit

bb.e:                                             ; preds = %bb.b
  store i64 %i.k, ptr %i.g, align 8, !noalias !657
  br label %_RNvXs7_NtCsimRn6g4KI1Q_5rayon3vecINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !657, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.c
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.e
  %i.s = sub nuw i64 %i.k, %i.e                   ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !noalias !657
  %i.u = add i64 %i.s, %i.c
  store i64 %i.u, ptr %i.g, align 8, !noalias !657
  br label %_RNvXs7_NtCsimRn6g4KI1Q_5rayon3vecINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_.exit

_RNvXs7_NtCsimRn6g4KI1Q_5rayon3vecINtB5_5DrainNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec8IntoIterNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.g, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardbEECs1hTjP0dFAwJ_12fontc_crater.exit, !prof !10

bb.e:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardbEECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardbEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1S_9RunResultNtNtB1S_15ttx_diff_runner10DiffOutputNtB2R_9DiffErrorEEEEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBK_9RunResultNtNtBK_15ttx_diff_runner10DiffOutputNtB1I_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit unwind label %bb.b

end_hunk_3
begin_hunk_4_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std7process6OutputECs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std7process7CommandECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !803, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val16.i = load i64, ptr %i.b, align 8, !alias.scope !803 ; 2 uses
  store i8 0, ptr %.val.i, align 1, !noalias !803
  %i.c = icmp eq i64 %.val16.i, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val16.i, i64 noundef 1) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringECs1hTjP0dFAwJ_12fontc_crater.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXs3_NtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_arrayNtB5_12CStringArrayNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) #30
          to label %.body.i unwind label %bb.g

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringECs1hTjP0dFAwJ_12fontc_crater.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_array12CStringArrayECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %bb.h ], [ %i.e, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.ad

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_array12CStringArrayECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecPaEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringINtNtCsf3Ta7LF998c_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit41.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.k, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn.i, %.body.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val23.i = load ptr, ptr %i.k, align 8, !alias.scope !803, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val24.i = load i64, ptr %i.l, align 8, !alias.scope !803 ; 2 uses
  %i.m = icmp eq ptr %.val23.i, null
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit.i
  store i8 0, ptr %.val23.i, align 1
  %i.n = icmp eq i64 %.val24.i, 0
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef range(i64 1, 0) %.val24.i, i64 noundef 1) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_array12CStringArrayECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit41.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common13cstring_array12CStringArrayECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val21.i = load ptr, ptr %i.p, align 8, !alias.scope !803, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val22.i = load i64, ptr %i.q, align 8, !alias.scope !803 ; 2 uses
  %i.r = icmp eq ptr %.val21.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit41.i
  store i8 0, ptr %.val21.i, align 1
  %i.s = icmp eq i64 %.val22.i, 0
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, 0) %.val22.i, i64 noundef 1) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.j, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val19.i = load ptr, ptr %i.t, align 8, !alias.scope !803, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val20.i = load i64, ptr %i.u, align 8, !alias.scope !803 ; 2 uses
  %i.v = icmp eq ptr %.val19.i, null
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  store i8 0, ptr %.val19.i, align 1
  %i.w = icmp eq i64 %.val20.i, 0
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef range(i64 1, 0) %.val20.i, i64 noundef 1) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i: ; preds = %bb.m, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys7process3env10CommandEnvECs1hTjP0dFAwJ_12fontc_crater.exit41.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val17.i = load ptr, ptr %i.x, align 8, !alias.scope !803, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val18.i = load i64, ptr %i.y, align 8, !alias.scope !803 ; 2 uses
  %i.z = icmp eq ptr %.val17.i, null
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i
  store i8 0, ptr %.val17.i, align 1
  %i.aa = icmp eq i64 %.val18.i, 0
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %.val18.i, i64 noundef 1) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i: ; preds = %bb.o, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #30
          to label %.body45.i unwind label %bb.ad

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i: ; preds = %bb.q, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit42.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body45.i unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit44.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.body45.i:                                        ; preds = %bb.v, %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i
  %.pn8.i = phi { ptr, i32 } [ %.pn2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i ], [ %i.aj, %bb.v ], [ %i.ad, %bb.r ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val27.i = load ptr, ptr %i.af, align 8, !alias.scope !803, !align !18, !noundef !5 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val28.i = load i64, ptr %i.ag, align 8, !alias.scope !803 ; 2 uses
  %i.ah = icmp eq ptr %.val27.i, null
  %i.ai = icmp eq i64 %.val28.i, 0
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.u

bb.u:                                             ; preds = %.body45.i
  %1 = shl nuw nsw i64 %.val28.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef range(i64 1, 0) %1, i64 noundef 4) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.v:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val25.i = load ptr, ptr %i.ak, align 8, !alias.scope !803, !align !18, !noundef !5 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val26.i = load i64, ptr %i.al, align 8, !alias.scope !803 ; 2 uses
  %i.am = icmp eq ptr %.val25.i, null
  %i.an = icmp eq i64 %.val26.i, 0
  %or.cond.i47.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i47.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit48.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %2 = shl nuw nsw i64 %.val26.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit48.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.u, %.body45.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val39.i = load i32, ptr %i.ao, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i.i = icmp eq i32 %.val39.i, 3
  br i1 %cond.i.i, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val40.i = load i32, ptr %i.ap, align 4, !alias.scope !803
  %i.aq = tail call noundef i32 @close(i32 noundef %.val40.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit48.i: ; preds = %bb.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val37.i = load i32, ptr %i.ar, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i49.i = icmp eq i32 %.val37.i, 3
  br i1 %cond.i49.i, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit50.i

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit48.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val38.i = load i32, ptr %i.as, align 4, !alias.scope !803
  %i.at = tail call noundef i32 @close(i32 noundef %.val38.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit50.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val35.i = load i32, ptr %i.au, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i51.i = icmp eq i32 %.val35.i, 3
  br i1 %cond.i51.i, label %bb.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit52.i

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val36.i = load i32, ptr %i.av, align 4, !alias.scope !803
  %i.aw = tail call noundef i32 @close(i32 noundef %.val36.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit52.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit50.i: ; preds = %bb.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSmEEECs1hTjP0dFAwJ_12fontc_crater.exit48.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val33.i = load i32, ptr %i.ax, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i53.i = icmp eq i32 %.val33.i, 3
  br i1 %cond.i53.i, label %bb.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit54.i

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit50.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val34.i = load i32, ptr %i.ay, align 4, !alias.scope !803
  %i.az = tail call noundef i32 @close(i32 noundef %.val34.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit54.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit52.i: ; preds = %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val31.i = load i32, ptr %i.ba, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i55.i = icmp eq i32 %.val31.i, 3
  br i1 %cond.i55.i, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit56.i

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit52.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val32.i = load i32, ptr %i.bb, align 4, !alias.scope !803
  %i.bc = tail call noundef i32 @close(i32 noundef %.val32.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit56.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit54.i: ; preds = %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit50.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val29.i = load i32, ptr %i.bd, align 8, !range !804, !alias.scope !803, !noundef !5
  %cond.i57.i = icmp eq i32 %.val29.i, 3
  br i1 %cond.i57.i, label %bb.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common7CommandECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit54.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val30.i = load i32, ptr %i.be, align 4, !alias.scope !803
  %i.bf = tail call noundef i32 @close(i32 noundef %.val30.i) #34 ; 0 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common7CommandECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgCecv3eZDcN_5alloc3ffi5c_str7CStringEECs1hTjP0dFAwJ_12fontc_crater.exit43.i, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit56.i: ; preds = %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit52.i
  resume { ptr, i32 } %.pn8.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common7CommandECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6common5StdioEECs1hTjP0dFAwJ_12fontc_crater.exit54.i, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core11thread_pool10ThreadPoolECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtCsaM4fumF1j8I_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !815, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !815
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !818, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !818
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit1

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core5sleep5SleepECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEEECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedNtNtCsaM4fumF1j8I_10rayon_core5sleep16WorkerSleepStateEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry12WorkerThreadECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs7_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !854, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !854
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8FY1skn7E2W_15crossbeam_deque5deque5InnerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !858, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !858
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit7

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs250ZbEhTtZx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8FY1skn7E2W_15crossbeam_deque5deque5InnerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.c, %bb.g
end_hunk_4
begin_hunk_5_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaM4fumF1j8I_10rayon_core8registry13ThreadBuilderECs1hTjP0dFAwJ_12fontc_crater:bb.a
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit6, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !929, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !929
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit11

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit9
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #33
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit11

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit11: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit9, %bb.m
  ret void

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsaM4fumF1j8I_10rayon_core8registry8RegistryEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8FY1skn7E2W_15crossbeam_deque5deque7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1hTjP0dFAwJ_12fontc_crater.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1hTjP0dFAwJ_12fontc_crater.exit
    i64 1, label %bb.c
  ], !prof !16

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !932
  store i8 3, ptr %i.a, align 8, !alias.scope !932
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9lifecycle10ThreadInitECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !945, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !945
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs1hTjP0dFAwJ_12fontc_crater.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !5, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs1hTjP0dFAwJ_12fontc_crater(ptr %.val2, ptr nonnull %.val3) #30
          to label %common.resume unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs1hTjP0dFAwJ_12fontc_crater.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !20, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #34
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !17, !invariant.load !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook15ChildSpawnHooksECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCs5Xr050g3D4S_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !961, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !962
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !964, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !965
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECs1hTjP0dFAwJ_12fontc_crater.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !968, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !968, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !968, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !968, !noundef !5
  %i.k = load ptr, ptr %3, align 8, !alias.scope !968, !nonnull !5, !noundef !5
  %i.l = load ptr, ptr %i.d, align 8, !noalias !968, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !968, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !968, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !968
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !968
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !968
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !968
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !968
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !968
  store i64 0, ptr %i.b, align 8, !noalias !968
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !968
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !968
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !968
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !968
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !968
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !968
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !968
  call void @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !968
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs5Xr050g3D4S_3std6thread9lifecycle15spawn_uncheckedNCNvCs1hTjP0dFAwJ_12fontc_crater33compute_sha1sum_skipping_ttx_diff0uEB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCs5Xr050g3D4S_3std6thread9lifecycle15spawn_uncheckedNCNvCs1hTjP0dFAwJ_12fontc_crater33compute_sha1sum_skipping_ttx_diff0uE0B12_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCs5Xr050g3D4S_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs5Xr050g3D4S_3std3env6var_osReECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !6, !noundef !5
end_hunk_5
begin_hunk_6_@_RINvXs_Cs1hTjP0dFAwJ_12fontc_craterINtB5_7ResultsNtNtB5_15ttx_diff_runner10DiffOutputNtBN_9DiffErrorEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTNtNtB5_6target6TargetINtB5_9RunResultBL_B1l_EEE9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB2B_EEB5_:bb.a

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffErrorEEB11_.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffErrorEEB11_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.l:                                             ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1u_9RunResultNtNtB1u_15ttx_diff_runner10DiffOutputNtB2t_9DiffErrorEEEEB1u_.exit
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1u_9RunResultNtNtB1u_15ttx_diff_runner10DiffOutputNtB2t_9DiffErrorEEEEB1u_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1A_3map9MapFolderINtNtB1A_6extend13ListVecFolderTBL_INtBP_9RunResultNtNtBP_15ttx_diff_runner10DiffOutputNtB3q_9DiffErrorEEENCNCINvBP_7run_allB3o_B3Y_NtB3q_10TtxContextNvB3q_12run_ttx_diffE00EEBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1106
  store ptr %1, ptr %i.a, align 8, !alias.scope !1107, !noalias !1106
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !alias.scope !1107, !noalias !1106
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.6.0.copyload, ptr %i.e, align 8, !alias.scope !1107, !noalias !1106
  call void @_RINvXs0_NtNtCsimRn6g4KI1Q_5rayon4iter6extendINtB6_13ListVecFolderTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB16_9RunResultNtNtB16_15ttx_diff_runner10DiffOutputNtB25_9DiffErrorEEEINtNtB8_8plumbing6FolderB11_E12consume_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_3vec10SliceDrainB12_ERNCNCINvB16_7run_allB23_B2E_NtB25_10TtxContextNvB25_12run_ttx_diffE00EEB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !alias.scope !1106
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1A_3map9MapFolderINtNtNtB1A_7collect8consumer13CollectResultTBL_INtBP_9RunResultNtNtBP_15ttx_diff_runner10DiffOutputNtB3C_9DiffErrorEEENCNCINvBP_7run_allB3A_B4a_NtB3C_10TtxContextNvB3C_12run_ttx_diffE00EEBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1115
  store ptr %1, ptr %i.a, align 8, !alias.scope !1116, !noalias !1115
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !alias.scope !1116, !noalias !1115
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.e, align 8, !alias.scope !1116, !noalias !1115
  call void @_RINvYINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1c_9RunResultNtNtB1c_15ttx_diff_runner10DiffOutputNtB2b_9DiffErrorEEEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBc_3vec10SliceDrainB18_ERNCNCINvB1c_7run_allB29_B2K_NtB2b_10TtxContextNvB2b_12run_ttx_diffE00EEB1c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1115
  store ptr %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !1115
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !alias.scope !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTB2x_INtB2B_9RunResultNtNtB2B_15ttx_diff_runner10DiffOutputNtB4N_9DiffErrorEEENCNCINvB2B_7run_allB4L_B5m_NtB4N_10TtxContextNvB4N_12run_ttx_diffE00EE0NCBR_s_0INtB3K_13CollectResultB4p_EB6W_E0B2B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE8is_emptyCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE4pushCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Y_9RunResultNtNtB2Y_15ttx_diff_runner10DiffOutputNtB3X_9DiffErrorEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2U_EINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNCINvB2Y_7run_allB3V_B4w_NtB3X_10TtxContextNvB3X_12run_ttx_diffE00EEs_0E0B1P_ENtB5_3Job7executeB2Y_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCsaM4fumF1j8I_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !13

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.ac = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1126, !noundef !5
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1126, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1126, !noundef !5
  invoke void @_RINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTB1E_INtB1I_9RunResultNtNtB1I_15ttx_diff_runner10DiffOutputNtB3U_9DiffErrorEEENCNCINvB1I_7run_allB3S_B4t_NtB3U_10TtxContextNvB3U_12run_ttx_diffE00EEB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull align 8 %i.ac, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.al = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.al, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap), "nonnull"(ptr %i.aq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCsaM4fumF1j8I_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #32
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.ar = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %.loopexit78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = invoke { ptr, ptr } @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE3popCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE5stealCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.av = load i64, ptr %i.c, align 8, !range !21, !noundef !5
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.ax = load ptr, ptr %i.ao, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ax, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.aw, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.az = insertvalue { ptr, ptr } %i.ay, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit78:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Y_9RunResultNtNtB2Y_15ttx_diff_runner10DiffOutputNtB3X_9DiffErrorEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2U_EINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNCINvB2Y_7run_allB3V_B4w_NtB3X_10TtxContextNvB3X_12run_ttx_diffE00EEs_0E0B1P_E11into_resultB2Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.at, %.noexc41 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bc = icmp eq ptr %i.j, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull @_RNvXs2_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Y_9RunResultNtNtB2Y_15ttx_diff_runner10DiffOutputNtB3X_9DiffErrorEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2U_EINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNCINvB2Y_7run_allB3V_B4w_NtB3X_10TtxContextNvB3X_12run_ttx_diffE00EEs_0E0B1P_ENtB5_3Job7executeB2Y_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.ba(ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull %i.ba)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Y_9RunResultNtNtB2Y_15ttx_diff_runner10DiffOutputNtB3X_9DiffErrorEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2U_EINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNCINvB2Y_7run_allB3V_B4w_NtB3X_10TtxContextNvB3X_12run_ttx_diffE00EEs_0E0B1P_E10run_inlineB2Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bh = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bi = icmp eq i64 %i.bh, 3
  br i1 %i.bi, label %.loopexit78, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit78 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit78
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread74 unwind label %bb.z

bb.y:                                             ; preds = %.loopexit78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ad, %bb.ac
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ac, label %.thread74

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %bb.ac
  br i1 %.sroa.020.059, label %bb.ad, label %.thread74

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46, %.thread
  %.pn3861 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46 ] ; 2 uses
  %.sroa.020.059 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3r_9RunResultNtNtB3r_15ttx_diff_runner10DiffOutputNtB4q_9DiffErrorEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerB3n_EINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCNCINvB3r_7run_allB4o_B4Z_NtB4q_10TtxContextNvB4q_12run_ttx_diffE00EEs_0E0B2i_EEB3r_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #30
          to label %bb.ab unwind label %bb.z

.thread74:                                        ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46, %bb.ad, %bb.ab
  %.pn386077 = phi { ptr, i32 } [ %.pn3861, %bb.ab ], [ %.pn3861, %bb.ad ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit46 ], [ %i.bj, %bb.x ]
  resume { ptr, i32 } %.pn386077

bb.ad:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTB2i_INtB2m_9RunResultNtNtB2m_15ttx_diff_runner10DiffOutputNtB4y_9DiffErrorEEENCNCINvB2m_7run_allB4w_B57_NtB4y_10TtxContextNvB4y_12run_ttx_diffE00EE0EB2m_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bm) #30
          to label %.thread74 unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCNCINvB2B_7run_allNtNtB2B_15ttx_diff_runner10DiffOutputNtB4x_9DiffErrorNtB4x_10TtxContextNvB4x_12run_ttx_diffE00EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6j_3vec3VecTB2x_INtB2B_9RunResultB4v_B56_EEEEB6c_E0B2B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE8is_emptyCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE4pushCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3e_9RunResultNtNtB3e_15ttx_diff_runner10DiffOutputNtB4d_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_3vec13DrainProducerB3a_EINtNtB5f_3map11MapConsumerNtNtB5f_6extend15ListVecConsumerNCNCINvB3e_7run_allB4b_B4M_NtB4d_10TtxContextNvB4d_12run_ttx_diffE00EEs_0E0B1P_ENtB5_3Job7executeB3e_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCsaM4fumF1j8I_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !13

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.051.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1136, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1136, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1136, !noundef !5
  invoke void @_RINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCNCINvB1I_7run_allNtNtB1I_15ttx_diff_runner10DiffOutputNtB3E_9DiffErrorNtB3E_10TtxContextNvB3E_12run_ttx_diffE00EEB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull align 8 %i.ab, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsaM4fumF1j8I_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCsaM4fumF1j8I_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #32
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE3popCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_7StealerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefE5stealCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !21, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit78:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3e_9RunResultNtNtB3e_15ttx_diff_runner10DiffOutputNtB4d_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_3vec13DrainProducerB3a_EINtNtB5f_3map11MapConsumerNtNtB5f_6extend15ListVecConsumerNCNCINvB3e_7run_allB4b_B4M_NtB4d_10TtxContextNvB4d_12run_ttx_diffE00EEs_0E0B1P_E11into_resultB3e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull @_RNvXs2_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3e_9RunResultNtNtB3e_15ttx_diff_runner10DiffOutputNtB4d_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_3vec13DrainProducerB3a_EINtNtB5f_3map11MapConsumerNtNtB5f_6extend15ListVecConsumerNCNCINvB3e_7run_allB4b_B4M_NtB4d_10TtxContextNvB4d_12run_ttx_diffE00EEs_0E0B1P_ENtB5_3Job7executeB3e_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCsaM4fumF1j8I_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3e_9RunResultNtNtB3e_15ttx_diff_runner10DiffOutputNtB4d_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_3vec13DrainProducerB3a_EINtNtB5f_3map11MapConsumerNtNtB5f_6extend15ListVecConsumerNCNCINvB3e_7run_allB4b_B4M_NtB4d_10TtxContextNvB4d_12run_ttx_diffE00EEs_0E0B1P_E10run_inlineB3e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit78, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCsaM4fumF1j8I_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit78 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit78
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread74 unwind label %bb.z

bb.y:                                             ; preds = %.loopexit78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ad, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ac, label %.thread74

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %bb.ac
  br i1 %.sroa.020.059, label %bb.ad, label %.thread74

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46, %.thread
  %.pn3861 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46 ] ; 2 uses
  %.sroa.020.059 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaM4fumF1j8I_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB3H_9RunResultNtNtB3H_15ttx_diff_runner10DiffOutputNtB4G_9DiffErrorEEEENCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5K_3vec13DrainProducerB3D_EINtNtB5I_3map11MapConsumerNtNtB5I_6extend15ListVecConsumerNCNCINvB3H_7run_allB4E_B5f_NtB4G_10TtxContextNvB4G_12run_ttx_diffE00EEs_0E0B2i_EEB3H_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #30
          to label %bb.ab unwind label %bb.z

.thread74:                                        ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46, %bb.ad, %bb.ab
  %.pn386077 = phi { ptr, i32 } [ %.pn3861, %bb.ab ], [ %.pn3861, %bb.ad ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1Z_9RunResultNtNtB1Z_15ttx_diff_runner10DiffOutputNtB2Y_9DiffErrorEEEEEB1Z_.exit46 ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn386077

bb.ad:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCNCINvB2m_7run_allNtNtB2m_15ttx_diff_runner10DiffOutputNtB4i_9DiffErrorNtB4i_10TtxContextNvB4i_12run_ttx_diffE00EE0EB2m_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bl) #30
          to label %.thread74 unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsaM4fumF1j8I_10rayon_core4join12join_contextNCINvNvNtNtCsimRn6g4KI1Q_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerRNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceEINtNtBY_8for_each15ForEachConsumerNCNvNtCs1hTjP0dFAwJ_12fontc_crater2ci19preflight_all_reposs_0EE0NCBR_s_0uuE0B4h_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull align 128 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load i64, ptr %i.f, align 128, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.i, align 8
end_hunk_6
