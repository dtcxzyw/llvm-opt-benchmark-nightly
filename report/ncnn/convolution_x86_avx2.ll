Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  store <32 x i8> %wide.load149, ptr %i.ajy, align 1, !tbaa !20
  store <32 x i8> %wide.load150, ptr %i.ajz, align 1, !tbaa !20
  %index.next151 = add nuw i64 %index145, 128     ; 2 uses
  %i.aka = icmp eq i64 %index.next151, %n.vec143
  br i1 %i.aka, label %middle.block152, label %vector.body144, !llvm.loop !85

middle.block152:                                  ; preds = %vector.body144
  br i1 %cmp.n153, label %._crit_edge935.i, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block152
  br i1 %min.epilog.iters.check158, label %vec.epilog.scalar.ph156.preheader, label %vec.epilog.ph159, !prof !86

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check157
  %vec.epilog.resume.val154 = phi i64 [ %n.vec143, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check140 ]
  %i.akb = getelementptr i8, ptr %.4937.i, i64 %n.vec160 ; 2 uses
  br label %vec.epilog.vector.body161

vec.epilog.vector.body161:                        ; preds = %vec.epilog.vector.body161, %vec.epilog.ph159
  %index162 = phi i64 [ %vec.epilog.resume.val154, %vec.epilog.ph159 ], [ %index.next165, %vec.epilog.vector.body161 ] ; 3 uses
  %next.gep163 = getelementptr i8, ptr %.4937.i, i64 %index162
  %i.akc = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %index162
  %wide.load164 = load <8 x i8>, ptr %i.akc, align 1, !tbaa !20
  store <8 x i8> %wide.load164, ptr %next.gep163, align 1, !tbaa !20
  %index.next165 = add nuw i64 %index162, 8       ; 2 uses
  %i.akd = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.akd, label %vec.epilog.middle.block166, label %vec.epilog.vector.body161, !llvm.loop !87

vec.epilog.middle.block166:                       ; preds = %vec.epilog.vector.body161
  br i1 %cmp.n167, label %._crit_edge935.i, label %vec.epilog.scalar.ph156.preheader

vec.epilog.scalar.ph156.preheader:                ; preds = %iter.check155, %vec.epilog.iter.check157, %vec.epilog.middle.block166
  %indvars.iv1106.i.ph = phi i64 [ 0, %iter.check155 ], [ %n.vec143, %vec.epilog.iter.check157 ], [ %n.vec160, %vec.epilog.middle.block166 ] ; 3 uses
  %.5932.i.ph = phi ptr [ %.4937.i, %iter.check155 ], [ %i.ajs, %vec.epilog.iter.check157 ], [ %i.akb, %vec.epilog.middle.block166 ] ; 2 uses
  br i1 %lcmp.mod285.not, label %vec.epilog.scalar.ph156.prol.loopexit, label %vec.epilog.scalar.ph156.prol

vec.epilog.scalar.ph156.prol:                     ; preds = %vec.epilog.scalar.ph156.preheader, %vec.epilog.scalar.ph156.prol
  %indvars.iv1106.i.prol = phi i64 [ %indvars.iv.next1107.i.prol, %vec.epilog.scalar.ph156.prol ], [ %indvars.iv1106.i.ph, %vec.epilog.scalar.ph156.preheader ] ; 2 uses
  %.5932.i.prol = phi ptr [ %i.akg, %vec.epilog.scalar.ph156.prol ], [ %.5932.i.ph, %vec.epilog.scalar.ph156.preheader ] ; 2 uses
  %prol.iter286 = phi i64 [ %prol.iter286.next, %vec.epilog.scalar.ph156.prol ], [ 0, %vec.epilog.scalar.ph156.preheader ]
  %i.ake = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i.prol
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !20
  store i8 %i.akf, ptr %.5932.i.prol, align 1, !tbaa !20
  %i.akg = getelementptr inbounds nuw i8, ptr %.5932.i.prol, i64 1 ; 3 uses
  %indvars.iv.next1107.i.prol = add nuw nsw i64 %indvars.iv1106.i.prol, 1 ; 2 uses
  %prol.iter286.next = add i64 %prol.iter286, 1   ; 2 uses
  %prol.iter286.cmp.not = icmp eq i64 %prol.iter286.next, %xtraiter284
  br i1 %prol.iter286.cmp.not, label %vec.epilog.scalar.ph156.prol.loopexit, label %vec.epilog.scalar.ph156.prol, !llvm.loop !88

vec.epilog.scalar.ph156.prol.loopexit:            ; preds = %vec.epilog.scalar.ph156.prol, %vec.epilog.scalar.ph156.preheader
  %.lcssa225.unr = phi ptr [ poison, %vec.epilog.scalar.ph156.preheader ], [ %i.akg, %vec.epilog.scalar.ph156.prol ]
  %indvars.iv1106.i.unr = phi i64 [ %indvars.iv1106.i.ph, %vec.epilog.scalar.ph156.preheader ], [ %indvars.iv.next1107.i.prol, %vec.epilog.scalar.ph156.prol ]
  %.5932.i.unr = phi ptr [ %.5932.i.ph, %vec.epilog.scalar.ph156.preheader ], [ %i.akg, %vec.epilog.scalar.ph156.prol ]
  %i.akh = sub nsw i64 %indvars.iv1106.i.ph, %wide.trip.count1098.i
  %i.aki = icmp ugt i64 %i.akh, -8
  br i1 %i.aki, label %._crit_edge935.i, label %vec.epilog.scalar.ph156

._crit_edge935.i:                                 ; preds = %vec.epilog.scalar.ph156.prol.loopexit, %vec.epilog.scalar.ph156, %vec.epilog.middle.block166, %middle.block152
  %.lcssa97 = phi ptr [ %i.akb, %vec.epilog.middle.block166 ], [ %i.ajs, %middle.block152 ], [ %.lcssa225.unr, %vec.epilog.scalar.ph156.prol.loopexit ], [ %i.alo, %vec.epilog.scalar.ph156 ]
  %i.akj = add nuw nsw i32 %.2547938.i, 1         ; 2 uses
  %exitcond1111.not.i = icmp eq i32 %i.akj, %2
  br i1 %exitcond1111.not.i, label %._crit_edge939.split.i, label %iter.check155, !llvm.loop !89

vec.epilog.scalar.ph156:                          ; preds = %vec.epilog.scalar.ph156.prol.loopexit, %vec.epilog.scalar.ph156
  %indvars.iv1106.i = phi i64 [ %indvars.iv.next1107.i.7, %vec.epilog.scalar.ph156 ], [ %indvars.iv1106.i.unr, %vec.epilog.scalar.ph156.prol.loopexit ] ; 9 uses
  %.5932.i = phi ptr [ %i.alo, %vec.epilog.scalar.ph156 ], [ %.5932.i.unr, %vec.epilog.scalar.ph156.prol.loopexit ] ; 9 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !20
  store i8 %i.akl, ptr %.5932.i, align 1, !tbaa !20
  %i.akm = getelementptr inbounds nuw i8, ptr %.5932.i, i64 1
  %i.akn = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 1
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !20
  store i8 %i.akp, ptr %i.akm, align 1, !tbaa !20
  %i.akq = getelementptr inbounds nuw i8, ptr %.5932.i, i64 2
  %i.akr = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 2
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !20
  store i8 %i.akt, ptr %i.akq, align 1, !tbaa !20
  %i.aku = getelementptr inbounds nuw i8, ptr %.5932.i, i64 3
  %i.akv = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 3
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !20
  store i8 %i.akx, ptr %i.aku, align 1, !tbaa !20
  %i.aky = getelementptr inbounds nuw i8, ptr %.5932.i, i64 4
  %i.akz = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !20
  store i8 %i.alb, ptr %i.aky, align 1, !tbaa !20
  %i.alc = getelementptr inbounds nuw i8, ptr %.5932.i, i64 5
  %i.ald = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 5
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !20
  store i8 %i.alf, ptr %i.alc, align 1, !tbaa !20
  %i.alg = getelementptr inbounds nuw i8, ptr %.5932.i, i64 6
  %i.alh = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 6
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !20
  store i8 %i.alj, ptr %i.alg, align 1, !tbaa !20
  %i.alk = getelementptr inbounds nuw i8, ptr %.5932.i, i64 7
  %i.all = getelementptr inbounds nuw i8, ptr %.1553.lcssa.i, i64 %indvars.iv1106.i
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 7
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !20
  store i8 %i.aln, ptr %i.alk, align 1, !tbaa !20
  %i.alo = getelementptr inbounds nuw i8, ptr %.5932.i, i64 8 ; 2 uses
  %indvars.iv.next1107.i.7 = add nuw nsw i64 %indvars.iv1106.i, 8 ; 2 uses
  %exitcond1110.not.i.7 = icmp eq i64 %indvars.iv.next1107.i.7, %wide.trip.count1098.i
  br i1 %exitcond1110.not.i.7, label %._crit_edge935.i, label %vec.epilog.scalar.ph156, !llvm.loop !90

._crit_edge939.split.i:                           ; preds = %._crit_edge935.i, %.preheader737.i, %.preheader736.lr.ph.i, %.lr.ph911.i
  %indvars.iv.next1113.i = add nuw nsw i64 %indvars.iv1112.i, 1 ; 2 uses
  %exitcond1116.not.i = icmp eq i64 %indvars.iv.next1113.i, %wide.trip.count1115.i
  br i1 %exitcond1116.not.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !91

_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge939.split.i, %.preheader739.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 27 uses
  %i.b = alloca i32, align 4                      ; 27 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 27 uses
  %i.g = alloca ptr, align 8                      ; 27 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %7, ptr %i.a, align 4, !tbaa !92
  store i32 %8, ptr %i.b, align 4, !tbaa !92
  %i.k = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn31convolution_packed_int8_avxvnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 28 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94   ; 6 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !95
  %i.r = mul nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.d, align 4, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 30 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = sext i32 %i.o to i64
  %i.v = mul i64 %i.t, %i.u                       ; 80 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !93   ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !95
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.af = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.af, ptr %i.f, align 4, !tbaa !92
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.noexc2517.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc2517.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc2518.i

.noexc2518.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #25 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !92
  %i.al = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc2518.i
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc2518.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ak, %.noexc2518.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.04148.0.i = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aj, %.noexc2518.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store ptr %.sroa.04148.0.i, ptr %i.g, align 8, !tbaa !97
  %i.ao = mul nsw i32 %i.m, %6
  %i.ap = mul nsw i32 %5, %3
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = icmp sgt i32 %4, 0
  %i.as = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %.preheader4312.i.preheader, label %._crit_edge4376.split.i

.preheader4312.i.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.at = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check598 = icmp ult i32 %3, 32
  %i.au = and i64 %i.at, 24
  %n.vec = and i64 %i.at, 2147483616              ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %5, %i.av
  %i.ax = shl <8 x i32> %broadcast.splat, splat (i32 3) ; 5 uses
  %broadcast.splatinsert599.a = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat600.a = shufflevector <8 x i32> %broadcast.splatinsert599.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ay = mul nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = add <8 x i32> %i.ax, %i.ax      ; 2 uses
  %invariant.op1332 = add <8 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op1333 = add <8 x i32> %invariant.op1332, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec604 = and i64 %i.at, 2147483640           ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec604 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert605.a = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat606.a = shufflevector <8 x i32> %broadcast.splatinsert605.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat610 = shufflevector <8 x i32> %broadcast.splatinsert609, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bb = mul nsw <8 x i32> %broadcast.splat610, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = shl nsw i32 %5, 3
  %broadcast.splatinsert612 = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat613 = shufflevector <8 x i32> %broadcast.splatinsert612, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n618 = icmp eq i64 %n.vec604, %i.at
  br label %iter.check

iter.check:                                       ; preds = %.preheader4312.i.preheader, %._crit_edge.i
  %.015764375.i = phi i32 [ %i.be, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ] ; 2 uses
  %.015784374.i = phi i32 [ %i.ci, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ] ; 5 uses
  %.015994373.i = phi i32 [ %i.cj, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ]
  %i.bd = sext i32 %.015764375.i to i64           ; 5 uses
  %i.be = add i32 %.015764375.i, %3               ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check598, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = add nsw i64 %n.vec, %i.bd
  %i.bg = add i32 %.015784374.i, %i.aw            ; 3 uses
  %broadcast.splatinsert601 = insertelement <8 x i32> poison, i32 %.015784374.i, i64 0
  %broadcast.splat602 = shufflevector <8 x i32> %broadcast.splatinsert601, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat602, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.04148.0.i, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, %i.ax
  %step.add.2.reass = add <8 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op1332
  %i.bh = mul nsw <8 x i32> %vec.ind, %broadcast.splat600.a
  %i.bi = mul nsw <8 x i32> %step.add, %broadcast.splat600.a
  %i.bj = mul nsw <8 x i32> %step.add.2.reass, %broadcast.splat600.a
  %i.bk = mul nsw <8 x i32> %step.add.3.reass, %broadcast.splat600.a
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.bh, ptr %gep, align 4, !tbaa !92
  store <8 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !92
  store <8 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !92
  store <8 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op1333
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val603 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.015784374.i, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec604, %i.bd
  %i.bq = add i32 %.015784374.i, %i.ba            ; 2 uses
  %broadcast.splatinsert607 = insertelement <8 x i32> poison, i32 %bc.resume.val603, i64 0
  %broadcast.splat608 = shufflevector <8 x i32> %broadcast.splatinsert607, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction611 = add nsw <8 x i32> %broadcast.splat608, %i.bb
  %invariant.gep1334 = getelementptr [4 x i8], ptr %.sroa.04148.0.i, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index614 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next616, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind615 = phi <8 x i32> [ %induction611, %vec.epilog.ph ], [ %vec.ind.next617, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <8 x i32> %vec.ind615, %broadcast.splat606.a
  %gep1335 = getelementptr [4 x i8], ptr %invariant.gep1334, i64 %index614
  store <8 x i32> %i.br, ptr %gep1335, align 4, !tbaa !92
  %index.next616 = add nuw i64 %index614, 8       ; 2 uses
  %vec.ind.next617 = add nsw <8 x i32> %vec.ind615, %broadcast.splat613
  %i.bs = icmp eq i64 %index.next616, %n.vec604
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n618, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.115794370.i.ph = phi i32 [ %.015784374.i, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4376.split.i:                          ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i32 0, ptr %i.i, align 4, !tbaa !92
  %i.bt = sdiv i32 %i.ae, 8
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !100
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !92
  %i.bx = shl nsw i32 %i.bw, 3
  %i.by = load i32, ptr %i.i, align 4, !tbaa !92
  %i.bz = add nsw i32 %i.by, %i.bx                ; 3 uses
  store i32 %i.bz, ptr %i.i, align 4, !tbaa !92
  %i.ca = sub nsw i32 %i.ae, %i.bz                ; 2 uses
  %i.cb = sdiv i32 %i.ca, 4                       ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !92
  %i.cc = icmp sgt i32 %i.ca, 3
  br i1 %i.cc, label %.noexc1917.lr.ph.i, label %._crit_edge4678.i

.noexc1917.lr.ph.i:                               ; preds = %._crit_edge4376.split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  br label %.noexc1917.i

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa597 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.cm, %vec.epilog.scalar.ph ]
  %i.ci = add nsw i32 %i.aq, %.lcssa597
  %i.cj = add nuw nsw i32 %.015994373.i, 1        ; 2 uses
  %exitcond5520.not.i = icmp eq i32 %i.cj, %4
  br i1 %exitcond5520.not.i, label %._crit_edge4376.split.i, label %iter.check, !llvm.loop !103

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.115794370.i = phi i32 [ %i.cm, %vec.epilog.scalar.ph ], [ %.115794370.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ck = mul nsw i32 %.115794370.i, %i.o
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.04148.0.i, i64 %indvars.iv.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !92
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cm = add nsw i32 %.115794370.i, %5           ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
end_hunk_0
begin_hunk_1_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  store <2 x i32> %i.age, ptr %.316534599.i, align 4, !tbaa !92
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.316534599.i, i64 %i.dk
  %i.agg = shufflevector <4 x i32> %i.aga, <4 x i32> %i.agb, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.agg, ptr %i.agf, align 4, !tbaa !92
  %i.agh = getelementptr inbounds nuw i8, ptr %.316534599.i, i64 %.idx4294.i
  %i.agi = shufflevector <4 x i32> %i.aga, <4 x i32> %i.agb, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.agi, ptr %i.agh, align 4, !tbaa !92
  %i.agj = getelementptr inbounds nuw i8, ptr %.316534599.i, i64 %.idx4295.i
  %i.agk = shufflevector <4 x i32> %i.aga, <4 x i32> %i.agb, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.agk, ptr %i.agj, align 4, !tbaa !92
  %i.agl = getelementptr inbounds nuw i8, ptr %.316534599.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread4262.i, %._crit_edge4583.i
  %i.agm = phi i32 [ %.pre5827.i.a, %bb.m ], [ %i.vq, %._crit_edge4583.i ], [ %i.vq, %.thread4262.i ]
  %.51655.i = phi ptr [ %i.agl, %bb.m ], [ %.316534599.i, %._crit_edge4583.i ], [ %i.agd, %.thread4262.i ] ; 2 uses
  %i.agn = add nuw nsw i32 %.116624598.i, 2       ; 3 uses
  %i.ago = or disjoint i32 %i.agn, 1              ; 2 uses
  %i.agp = icmp slt i32 %i.ago, %i.ds
  br i1 %i.agp, label %_ZN4ncnn3MatD2Ev.exit1979.i, label %.preheader4310.i, !llvm.loop !145

_ZN4ncnn3MatD2Ev.exit1972.i:                      ; preds = %bb.r, %_ZN4ncnn3MatD2Ev.exit1972.lr.ph.i
  %i.agq = phi i32 [ %.pre5830.i.a, %_ZN4ncnn3MatD2Ev.exit1972.lr.ph.i ], [ %i.arc, %bb.r ] ; 13 uses
  %.616564675.i = phi ptr [ %.31653.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1972.lr.ph.i ], [ %.81658.i, %bb.r ] ; 8 uses
  %.216634674.i = phi i32 [ %.11662.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1972.lr.ph.i ], [ %i.ard, %bb.r ] ; 3 uses
  %i.agr = sdiv i32 %.216634674.i, %i.db          ; 3 uses
  %i.ags = srem i32 %.216634674.i, %i.db          ; 3 uses
  %i.agt = load ptr, ptr %2, align 8, !tbaa !9, !noalias !146
  %i.agu = load i64, ptr %i.cf, align 8, !tbaa !18, !noalias !146
  %i.agv = mul i64 %i.agu, %i.vl
  %i.agw = load i64, ptr %i.cg, align 8, !tbaa !19, !noalias !146
  %i.agx = mul i64 %i.agv, %i.agw
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.agx ; 4 uses
  %i.agz = icmp sgt i32 %i.agq, 7
  br i1 %i.agz, label %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.i, label %._crit_edge4614.i

_ZN4ncnn3MatD2Ev.exit1971.lr.ph.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1972.i
  %i.aha = load i32, ptr %i.c, align 4, !tbaa !92 ; 3 uses
  %i.ahb = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !149
  %i.ahc = load ptr, ptr %0, align 8, !tbaa !9, !noalias !149
  %i.ahd = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !149
  %i.ahe = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !149 ; 2 uses
  %factor.op.mul4619.i = mul i64 %i.ahe, %i.ahd   ; 2 uses
  %i.ahf = sext i32 %i.ahb to i64
  %i.ahg = load i32, ptr %i.b, align 4, !tbaa !92
  %i.ahh = mul nsw i32 %i.ahg, %i.agr
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = mul i64 %i.ahe, %i.ahf
  %i.ahk = mul i64 %i.ahj, %i.ahi
  %invariant.gep4621.i = getelementptr i8, ptr %i.ahc, i64 %i.ahk
  %i.ahl = load i32, ptr %i.a, align 4, !tbaa !92
  %i.ahm = mul i32 %i.aha, %i.ags
  %i.ahn = mul i32 %i.ahm, %i.ahl
  %i.aho = sext i32 %i.ahn to i64
  %invariant.gep4622.i = getelementptr i8, ptr %invariant.gep4621.i, i64 %i.aho ; 2 uses
  %i.ahp = load i32, ptr %i.f, align 4, !tbaa !92 ; 3 uses
  %i.ahq = icmp sgt i32 %i.ahp, 0
  %i.ahr = load ptr, ptr %i.g, align 8            ; 2 uses
  br i1 %i.ahq, label %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i, label %_ZN4ncnn3MatD2Ev.exit1971.preheader.i

_ZN4ncnn3MatD2Ev.exit1971.preheader.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.i
  %i.ahs = and i32 %i.agq, 2147483640
  br label %._crit_edge4614.i

_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i:       ; preds = %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.i
  %i.aht = icmp eq i32 %i.aha, 8
  %i.ahu = add nsw i32 %i.ahp, -1
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = shl nuw nsw i64 %i.ahv, 5              ; 2 uses
  %wide.trip.count5592.i = zext nneg i32 %i.ahp to i64 ; 2 uses
  br i1 %i.aht, label %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit1971.us.i

_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader:      ; preds = %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i
  %i.ahx = zext nneg i32 %i.agq to i64
  br label %_ZN4ncnn3MatD2Ev.exit1971.us.us.i

_ZN4ncnn3MatD2Ev.exit1971.us.us.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader, %._crit_edge4605.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge4605.split.us.us.us.i ] ; 2 uses
  %.016964612.us.us.i = phi ptr [ %i.agy, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader ], [ %scevgep5590.i, %._crit_edge4605.split.us.us.us.i ] ; 2 uses
  %i.ahy = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader ], [ %i.aja, %._crit_edge4605.split.us.us.us.i ]
  %i.ahz = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i.preheader ], [ %i.aiw, %._crit_edge4605.split.us.us.us.i ]
  %i.aia = lshr exact i64 %indvars.iv, 3
  %.reass4620.us.us.i = mul i64 %factor.op.mul4619.i, %i.aia
  %gep4623.us.us.i = getelementptr i8, ptr %invariant.gep4622.i, i64 %.reass4620.us.us.i
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i
  %indvars.iv5587.i = phi i64 [ %indvars.iv.next5588.i, %bb.o ], [ 0, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i ] ; 2 uses
  %.116974602.us.us.us.i = phi ptr [ %i.ajb, %bb.o ], [ %.016964612.us.us.i, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i ] ; 2 uses
  %i.aib = phi <8 x i32> [ %i.aja, %bb.o ], [ %i.ahy, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i ]
  %i.aic = phi <8 x i32> [ %i.aiw, %bb.o ], [ %i.ahz, %_ZN4ncnn3MatD2Ev.exit1971.us.us.i ]
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv5587.i
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !92
  %i.aif = sext i32 %i.aie to i64
  %i.aig = getelementptr inbounds i8, ptr %gep4623.us.us.i, i64 %i.aif
  %i.aih = load <8 x i8>, ptr %i.aig, align 1, !tbaa !20
  %i.aii = sext <8 x i8> %i.aih to <8 x i16>      ; 2 uses
  %i.aij = load <4 x i64>, ptr %.116974602.us.us.us.i, align 32, !tbaa !20 ; 2 uses
  %i.aik = bitcast <4 x i64> %i.aij to <32 x i8>
  %i.ail = shufflevector <32 x i8> %i.aik, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aim = sext <16 x i8> %i.ail to <16 x i16>
  %i.ain = bitcast <4 x i64> %i.aij to <32 x i8>
  %i.aio = shufflevector <32 x i8> %i.ain, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aip = sext <16 x i8> %i.aio to <16 x i16>
  %i.aiq = bitcast <8 x i16> %i.aii to <4 x i32>
  %i.air = bitcast <8 x i16> %i.aii to <4 x i32>
  %i.ais = shufflevector <4 x i32> %i.air, <4 x i32> %i.aiq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.ait = bitcast <8 x i32> %i.ais to <16 x i16>
  %i.aiu = shufflevector <16 x i16> %i.ait, <16 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9>
  %i.aiv = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aiu, <16 x i16> %i.aim)
  %i.aiw = add <8 x i32> %i.aiv, %i.aic           ; 3 uses
  %i.aix = bitcast <8 x i32> %i.ais to <16 x i16>
  %i.aiy = shufflevector <16 x i16> %i.aix, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13>
  %i.aiz = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aiy, <16 x i16> %i.aip)
  %i.aja = add <8 x i32> %i.aiz, %i.aib           ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.116974602.us.us.us.i, i64 32
  %indvars.iv.next5588.i = add nuw nsw i64 %indvars.iv5587.i, 1 ; 2 uses
  %exitcond5593.not.i = icmp eq i64 %indvars.iv.next5588.i, %wide.trip.count5592.i
  br i1 %exitcond5593.not.i, label %._crit_edge4605.split.us.us.us.i, label %bb.o, !llvm.loop !152

._crit_edge4605.split.us.us.us.i:                 ; preds = %bb.o
  %scevgep5589.i = getelementptr i8, ptr %.016964612.us.us.i, i64 32
  %scevgep5590.i = getelementptr i8, ptr %scevgep5589.i, i64 %i.ahw ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ajc = or disjoint i64 %indvars.iv.next, 7
  %i.ajd = icmp samesign ult i64 %i.ajc, %i.ahx
  br i1 %i.ajd, label %_ZN4ncnn3MatD2Ev.exit1971.us.us.i, label %._crit_edge4614.loopexit.i, !llvm.loop !153

_ZN4ncnn3MatD2Ev.exit1971.us.i:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i, %._crit_edge4605.split.us4626.i
  %.016934613.us.i = phi i32 [ %i.akq, %._crit_edge4605.split.us4626.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i ] ; 2 uses
  %.016964612.us.i = phi ptr [ %scevgep5583.i, %._crit_edge4605.split.us4626.i ], [ %i.agy, %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i ] ; 2 uses
  %i.aje = phi <8 x i32> [ %i.ako, %._crit_edge4605.split.us4626.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i ]
  %i.ajf = phi <8 x i32> [ %i.akk, %._crit_edge4605.split.us4626.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.lr.ph.split.us.i ]
  %i.ajg = sdiv i32 %.016934613.us.i, %i.aha
  %i.ajh = sext i32 %i.ajg to i64
  %.reass4620.us.i = mul i64 %factor.op.mul4619.i, %i.ajh
  %gep4623.us.i = getelementptr i8, ptr %invariant.gep4622.i, i64 %.reass4620.us.i
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN4ncnn3MatD2Ev.exit1971.us.i
  %indvars.iv5580.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1971.us.i ], [ %indvars.iv.next5581.i, %bb.p ] ; 2 uses
  %.116974602.us4625.i = phi ptr [ %.016964612.us.i, %_ZN4ncnn3MatD2Ev.exit1971.us.i ], [ %i.akp, %bb.p ] ; 2 uses
  %i.aji = phi <8 x i32> [ %i.aje, %_ZN4ncnn3MatD2Ev.exit1971.us.i ], [ %i.ako, %bb.p ]
  %i.ajj = phi <8 x i32> [ %i.ajf, %_ZN4ncnn3MatD2Ev.exit1971.us.i ], [ %i.akk, %bb.p ]
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv5580.i
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !92
  %i.ajm = sext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds i8, ptr %gep4623.us.i, i64 %i.ajm
  %i.ajo = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ajn, <8 x i32> %i.vp, <8 x i32> splat (i32 -1), i8 1)
  %i.ajp = bitcast <8 x i32> %i.ajo to <32 x i8>
  %i.ajq = shufflevector <32 x i8> %i.ajp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.ajr = bitcast <32 x i8> %i.ajq to <8 x i32>
  %i.ajs = bitcast <32 x i8> %i.ajq to <8 x i32>
  %i.ajt = shufflevector <8 x i32> %i.ajr, <8 x i32> %i.ajs, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.aju = bitcast <4 x i32> %i.ajt to <16 x i8>
  %i.ajv = shufflevector <16 x i8> %i.aju, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajw = sext <8 x i8> %i.ajv to <8 x i16>      ; 2 uses
  %i.ajx = load <4 x i64>, ptr %.116974602.us4625.i, align 32, !tbaa !20 ; 2 uses
  %i.ajy = bitcast <4 x i64> %i.ajx to <32 x i8>
  %i.ajz = shufflevector <32 x i8> %i.ajy, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aka = sext <16 x i8> %i.ajz to <16 x i16>
  %i.akb = bitcast <4 x i64> %i.ajx to <32 x i8>
  %i.akc = shufflevector <32 x i8> %i.akb, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.akd = sext <16 x i8> %i.akc to <16 x i16>
  %i.ake = bitcast <8 x i16> %i.ajw to <4 x i32>
  %i.akf = bitcast <8 x i16> %i.ajw to <4 x i32>
  %i.akg = shufflevector <4 x i32> %i.akf, <4 x i32> %i.ake, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.akh = bitcast <8 x i32> %i.akg to <16 x i16>
  %i.aki = shufflevector <16 x i16> %i.akh, <16 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9>
  %i.akj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aki, <16 x i16> %i.aka)
  %i.akk = add <8 x i32> %i.akj, %i.ajj           ; 3 uses
  %i.akl = bitcast <8 x i32> %i.akg to <16 x i16>
  %i.akm = shufflevector <16 x i16> %i.akl, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13>
  %i.akn = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.akm, <16 x i16> %i.akd)
  %i.ako = add <8 x i32> %i.akn, %i.aji           ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.116974602.us4625.i, i64 32
  %indvars.iv.next5581.i = add nuw nsw i64 %indvars.iv5580.i, 1 ; 2 uses
  %exitcond5586.not.i = icmp eq i64 %indvars.iv.next5581.i, %wide.trip.count5592.i
  br i1 %exitcond5586.not.i, label %._crit_edge4605.split.us4626.i, label %bb.p, !llvm.loop !152

._crit_edge4605.split.us4626.i:                   ; preds = %bb.p
  %scevgep5582.i = getelementptr i8, ptr %.016964612.us.i, i64 32
  %scevgep5583.i = getelementptr i8, ptr %scevgep5582.i, i64 %i.ahw ; 2 uses
  %i.akq = add nuw nsw i32 %.016934613.us.i, 8    ; 2 uses
  %i.akr = or disjoint i32 %i.akq, 7
  %i.aks = icmp slt i32 %i.akr, %i.agq
  br i1 %i.aks, label %_ZN4ncnn3MatD2Ev.exit1971.us.i, label %._crit_edge4614.loopexit5339.i, !llvm.loop !153

._crit_edge4614.loopexit.i:                       ; preds = %._crit_edge4605.split.us.us.us.i
  %i.akt = and i32 %i.agq, 2147483640
  br label %._crit_edge4614.i

._crit_edge4614.loopexit5339.i:                   ; preds = %._crit_edge4605.split.us4626.i
  %i.aku = and i32 %i.agq, 2147483640
  br label %._crit_edge4614.i

._crit_edge4614.i:                                ; preds = %._crit_edge4614.loopexit5339.i, %._crit_edge4614.loopexit.i, %_ZN4ncnn3MatD2Ev.exit1971.preheader.i, %_ZN4ncnn3MatD2Ev.exit1972.i
  %.lcssa4363.i = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1972.i ], [ %i.aiw, %._crit_edge4614.loopexit.i ], [ %i.akk, %._crit_edge4614.loopexit5339.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.preheader.i ]
  %.lcssa4362.i = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1972.i ], [ %i.aja, %._crit_edge4614.loopexit.i ], [ %i.ako, %._crit_edge4614.loopexit5339.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1971.preheader.i ]
  %.01696.lcssa.i = phi ptr [ %i.agy, %_ZN4ncnn3MatD2Ev.exit1972.i ], [ %scevgep5590.i, %._crit_edge4614.loopexit.i ], [ %scevgep5583.i, %._crit_edge4614.loopexit5339.i ], [ %i.agy, %_ZN4ncnn3MatD2Ev.exit1971.preheader.i ] ; 3 uses
  %.01693.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1972.i ], [ %i.akt, %._crit_edge4614.loopexit.i ], [ %i.aku, %._crit_edge4614.loopexit5339.i ], [ %i.ahs, %_ZN4ncnn3MatD2Ev.exit1971.preheader.i ] ; 6 uses
  %i.akv = add <8 x i32> %.lcssa4362.i, %.lcssa4363.i ; 2 uses
  %i.akw = shufflevector <8 x i32> %i.akv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.akx = shufflevector <8 x i32> %i.akv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aky = add <4 x i32> %i.akw, %i.akx           ; 3 uses
  %i.akz = or disjoint i32 %.01693.lcssa.i, 1
  %i.ala = icmp slt i32 %i.akz, %i.agq
  br i1 %i.ala, label %_ZN4ncnn3MatD2Ev.exit1970.lr.ph.i, label %.preheader4307.i

_ZN4ncnn3MatD2Ev.exit1970.lr.ph.i:                ; preds = %._crit_edge4614.i
  %i.alb = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !154
  %i.alc = load ptr, ptr %0, align 8, !tbaa !9, !noalias !154
  %i.ald = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !154
  %i.ale = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !154 ; 2 uses
  %factor.op.mul4650.i = mul i64 %i.ale, %i.ald
  %i.alf = sext i32 %i.alb to i64
  %i.alg = load i32, ptr %i.b, align 4, !tbaa !92
  %i.alh = mul nsw i32 %i.alg, %i.agr
  %i.ali = sext i32 %i.alh to i64
  %i.alj = mul i64 %i.ale, %i.alf
  %i.alk = mul i64 %i.alj, %i.ali
  %invariant.gep4652.i = getelementptr i8, ptr %i.alc, i64 %i.alk
  %i.all = load i32, ptr %i.a, align 4, !tbaa !92
  %i.alm = mul nsw i32 %i.all, %i.ags
  %i.aln = sext i32 %i.alm to i64
  %invariant.gep4653.i = getelementptr i8, ptr %invariant.gep4652.i, i64 %i.aln
  %i.alo = load i32, ptr %i.f, align 4, !tbaa !92 ; 5 uses
  %i.alp = icmp sgt i32 %i.alo, 0
  %i.alq = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.alp, label %_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit1970.preheader.i

_ZN4ncnn3MatD2Ev.exit1970.preheader.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit1970.lr.ph.i
  %i.alr = or disjoint i32 %.01693.lcssa.i, 2
  %10 = or disjoint i32 %.01693.lcssa.i, 3
  %11 = call i32 @llvm.umax.i32(i32 %i.agq, i32 %10)
  %reass.sub = sub nsw i32 %11, %.01693.lcssa.i
  %i.als = and i32 %reass.sub, -2
  %12 = add i32 %i.als, -2
  %i.alt = add i32 %i.alr, %12
  br label %.preheader4307.i

_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i:         ; preds = %_ZN4ncnn3MatD2Ev.exit1970.lr.ph.i
  %i.alu = add nsw i32 %i.alo, -1
  %i.alv = zext nneg i32 %i.alu to i64
  %i.alw = shl nuw nsw i64 %i.alv, 3
  %i.alx = zext nneg i32 %.01693.lcssa.i to i64
  %wide.trip.count5599.i = zext nneg i32 %i.alo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count5599.i, 1
  %i.aly = icmp eq i32 %i.alo, 1
  %unroll_iter = and i64 %wide.trip.count5599.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1135 = trunc i32 %i.alo to i1
  br label %_ZN4ncnn3MatD2Ev.exit1970.us.i

_ZN4ncnn3MatD2Ev.exit1970.us.i:                   ; preds = %._crit_edge4642.us.i, %_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i
  %indvars.iv5601.i = phi i64 [ %i.alx, %_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i ], [ %indvars.iv.next5602.i, %._crit_edge4642.us.i ] ; 2 uses
  %.216984645.us.i = phi ptr [ %.01696.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i ], [ %scevgep5597.i, %._crit_edge4642.us.i ] ; 3 uses
  %i.alz = phi <4 x i32> [ %i.aky, %_ZN4ncnn3MatD2Ev.exit1970.us.preheader.i ], [ %.lcssa1129.a, %._crit_edge4642.us.i ] ; 2 uses
  %.reass4651.us.i = mul i64 %factor.op.mul4650.i, %indvars.iv5601.i
  %gep4654.us.i = getelementptr i8, ptr %invariant.gep4653.i, i64 %.reass4651.us.i ; 3 uses
  br i1 %i.aly, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit1970.us.i.new

_ZN4ncnn3MatD2Ev.exit1970.us.i.new:               ; preds = %_ZN4ncnn3MatD2Ev.exit1970.us.i, %_ZN4ncnn3MatD2Ev.exit1970.us.i.new
  %indvars.iv5594.i = phi i64 [ %indvars.iv.next5595.i.1, %_ZN4ncnn3MatD2Ev.exit1970.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1970.us.i ] ; 3 uses
  %.316994639.us.i = phi ptr [ %i.anh, %_ZN4ncnn3MatD2Ev.exit1970.us.i.new ], [ %.216984645.us.i, %_ZN4ncnn3MatD2Ev.exit1970.us.i ] ; 3 uses
  %i.ama = phi <4 x i32> [ %i.ang, %_ZN4ncnn3MatD2Ev.exit1970.us.i.new ], [ %i.alz, %_ZN4ncnn3MatD2Ev.exit1970.us.i ]
  %niter = phi i64 [ %niter.next.1, %_ZN4ncnn3MatD2Ev.exit1970.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1970.us.i ]
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %indvars.iv5594.i
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !92
  %i.amd = sext i32 %i.amc to i64
  %i.ame = getelementptr inbounds i8, ptr %gep4654.us.i, i64 %i.amd ; 2 uses
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !20
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ame, i64 %i.dg
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !20
  %i.ami = insertelement <2 x i8> poison, i8 %i.amf, i64 0
  %i.amj = insertelement <2 x i8> %i.ami, i8 %i.amh, i64 1
  %i.amk = shufflevector <2 x i8> %i.amj, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aml = sext <8 x i8> %i.amk to <8 x i16>
  %i.amm = load <8 x i8>, ptr %.316994639.us.i, align 1, !tbaa !20
  %i.amn = sext <8 x i8> %i.amm to <8 x i16>
  %i.amo = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aml, <8 x i16> %i.amn)
  %i.amp = add <4 x i32> %i.amo, %i.ama
  %i.amq = getelementptr inbounds nuw i8, ptr %.316994639.us.i, i64 8
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %indvars.iv5594.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 4
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !92
  %i.amu = sext i32 %i.amt to i64
  %i.amv = getelementptr inbounds i8, ptr %gep4654.us.i, i64 %i.amu ; 2 uses
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !20
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.dg
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !20
  %i.amz = insertelement <2 x i8> poison, i8 %i.amw, i64 0
  %i.ana = insertelement <2 x i8> %i.amz, i8 %i.amy, i64 1
  %i.anb = shufflevector <2 x i8> %i.ana, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.anc = sext <8 x i8> %i.anb to <8 x i16>
  %i.and = load <8 x i8>, ptr %i.amq, align 1, !tbaa !20
  %i.ane = sext <8 x i8> %i.and to <8 x i16>
  %i.anf = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.anc, <8 x i16> %i.ane)
  %i.ang = add <4 x i32> %i.anf, %i.amp           ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.316994639.us.i, i64 16 ; 2 uses
  %indvars.iv.next5595.i.1 = add nuw nsw i64 %indvars.iv5594.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge4642.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1970.us.i.new, !llvm.loop !157

._crit_edge4642.us.i.unr-lcssa:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1970.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge4642.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge4642.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1970.us.i
  %indvars.iv5594.i.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1970.us.i ], [ %indvars.iv.next5595.i.1, %._crit_edge4642.us.i.unr-lcssa ]
  %.316994639.us.i.epil.init = phi ptr [ %.216984645.us.i, %_ZN4ncnn3MatD2Ev.exit1970.us.i ], [ %i.anh, %._crit_edge4642.us.i.unr-lcssa ]
  %.epil.init = phi <4 x i32> [ %i.alz, %_ZN4ncnn3MatD2Ev.exit1970.us.i ], [ %i.ang, %._crit_edge4642.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1135)
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %indvars.iv5594.i.epil.init
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !92
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds i8, ptr %gep4654.us.i, i64 %i.ank ; 2 uses
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !20
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.dg
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !20
  %i.anp = insertelement <2 x i8> poison, i8 %i.anm, i64 0
  %i.anq = insertelement <2 x i8> %i.anp, i8 %i.ano, i64 1
  %i.anr = shufflevector <2 x i8> %i.anq, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ans = sext <8 x i8> %i.anr to <8 x i16>
  %i.ant = load <8 x i8>, ptr %.316994639.us.i.epil.init, align 1, !tbaa !20
  %i.anu = sext <8 x i8> %i.ant to <8 x i16>
  %i.anv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ans, <8 x i16> %i.anu)
  %i.anw = add <4 x i32> %i.anv, %.epil.init
  br label %._crit_edge4642.us.i

._crit_edge4642.us.i:                             ; preds = %._crit_edge4642.us.i.unr-lcssa, %.epil.preheader
  %.lcssa1129.a = phi <4 x i32> [ %i.ang, %._crit_edge4642.us.i.unr-lcssa ], [ %i.anw, %.epil.preheader ] ; 2 uses
  %scevgep5596.i = getelementptr i8, ptr %.216984645.us.i, i64 8
  %scevgep5597.i = getelementptr i8, ptr %scevgep5596.i, i64 %i.alw ; 2 uses
  %indvars.iv.next5602.i = add nuw nsw i64 %indvars.iv5601.i, 2 ; 2 uses
  %i.anx = trunc i64 %indvars.iv.next5602.i to i32 ; 2 uses
  %i.any = or i32 %i.anx, 1
  %i.anz = icmp slt i32 %i.any, %i.agq
  br i1 %i.anz, label %_ZN4ncnn3MatD2Ev.exit1970.us.i, label %.preheader4307.i, !llvm.loop !158

.preheader4307.i:                                 ; preds = %._crit_edge4642.us.i, %_ZN4ncnn3MatD2Ev.exit1970.preheader.i, %._crit_edge4614.i
  %.lcssa4365.i = phi <4 x i32> [ %i.aky, %._crit_edge4614.i ], [ %i.aky, %_ZN4ncnn3MatD2Ev.exit1970.preheader.i ], [ %.lcssa1129.a, %._crit_edge4642.us.i ] ; 3 uses
  %.21698.lcssa.i = phi ptr [ %.01696.lcssa.i, %._crit_edge4614.i ], [ %.01696.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1970.preheader.i ], [ %scevgep5597.i, %._crit_edge4642.us.i ]
  %.11694.lcssa.i = phi i32 [ %.01693.lcssa.i, %._crit_edge4614.i ], [ %i.alt, %_ZN4ncnn3MatD2Ev.exit1970.preheader.i ], [ %i.anx, %._crit_edge4642.us.i ] ; 2 uses
  %i.aoa = icmp slt i32 %.11694.lcssa.i, %i.agq
  br i1 %i.aoa, label %_ZN4ncnn3MatD2Ev.exit1969.lr.ph.i, label %._crit_edge4666.i

_ZN4ncnn3MatD2Ev.exit1969.lr.ph.i:                ; preds = %.preheader4307.i
  %i.aob = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !159
  %i.aoc = load ptr, ptr %0, align 8, !tbaa !9, !noalias !159
  %i.aod = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !159
  %i.aoe = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !159 ; 2 uses
  %factor.op.mul4668.i = mul i64 %i.aoe, %i.aod
  %i.aof = sext i32 %i.aob to i64
  %i.aog = load i32, ptr %i.b, align 4, !tbaa !92
  %i.aoh = mul nsw i32 %i.aog, %i.agr
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = mul i64 %i.aoe, %i.aof
  %i.aok = mul i64 %i.aoj, %i.aoi
  %invariant.gep4670.i = getelementptr i8, ptr %i.aoc, i64 %i.aok
  %i.aol = load i32, ptr %i.a, align 4, !tbaa !92
  %i.aom = mul nsw i32 %i.aol, %i.ags
  %i.aon = sext i32 %i.aom to i64
  %invariant.gep4671.i = getelementptr i8, ptr %invariant.gep4670.i, i64 %i.aon
  %i.aoo = load i32, ptr %i.f, align 4, !tbaa !92 ; 5 uses
  %i.aop = icmp sgt i32 %i.aoo, 0
  %i.aoq = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.aop, label %_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i, label %._crit_edge4666.i

_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i:         ; preds = %_ZN4ncnn3MatD2Ev.exit1969.lr.ph.i
  %i.aor = add nsw i32 %i.aoo, -1
  %i.aos = zext nneg i32 %i.aor to i64
  %i.aot = shl nuw nsw i64 %i.aos, 2
  %i.aou = zext i32 %.11694.lcssa.i to i64
  %wide.trip.count5609.i = zext nneg i32 %i.aoo to i64 ; 2 uses
  %xtraiter1137 = and i64 %wide.trip.count5609.i, 1
  %i.aov = icmp eq i32 %i.aoo, 1
  %unroll_iter1143 = and i64 %wide.trip.count5609.i, 2147483646
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1137, 0
  %lcmp.mod1142 = trunc i32 %i.aoo to i1
  br label %_ZN4ncnn3MatD2Ev.exit1969.us.i

_ZN4ncnn3MatD2Ev.exit1969.us.i:                   ; preds = %._crit_edge4661.us.i, %_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i
  %indvars.iv5611.i = phi i64 [ %i.aou, %_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i ], [ %indvars.iv.next5612.i, %._crit_edge4661.us.i ] ; 2 uses
  %.417004664.us.i = phi ptr [ %.21698.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i ], [ %scevgep5607.i, %._crit_edge4661.us.i ] ; 3 uses
  %i.aow = phi <4 x i32> [ %.lcssa4365.i, %_ZN4ncnn3MatD2Ev.exit1969.us.preheader.i ], [ %.lcssa1131, %._crit_edge4661.us.i ] ; 2 uses
  %.reass4669.us.i = mul i64 %factor.op.mul4668.i, %indvars.iv5611.i
  %gep4672.us.i = getelementptr i8, ptr %invariant.gep4671.i, i64 %.reass4669.us.i ; 3 uses
  br i1 %i.aov, label %.epil.preheader1136, label %_ZN4ncnn3MatD2Ev.exit1969.us.i.new

_ZN4ncnn3MatD2Ev.exit1969.us.i.new:               ; preds = %_ZN4ncnn3MatD2Ev.exit1969.us.i, %_ZN4ncnn3MatD2Ev.exit1969.us.i.new
  %indvars.iv5604.i = phi i64 [ %indvars.iv.next5605.i.1, %_ZN4ncnn3MatD2Ev.exit1969.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1969.us.i ] ; 3 uses
  %.517014658.us.i = phi ptr [ %i.aqe, %_ZN4ncnn3MatD2Ev.exit1969.us.i.new ], [ %.417004664.us.i, %_ZN4ncnn3MatD2Ev.exit1969.us.i ] ; 3 uses
  %i.aox = phi <4 x i32> [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit1969.us.i.new ], [ %i.aow, %_ZN4ncnn3MatD2Ev.exit1969.us.i ]
  %niter1144 = phi i64 [ %niter1144.next.1, %_ZN4ncnn3MatD2Ev.exit1969.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1969.us.i ]
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %indvars.iv5604.i
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !92
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds i8, ptr %gep4672.us.i, i64 %i.apa
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !20
  %i.apd = sext i8 %i.apc to i16
  %i.ape = insertelement <8 x i16> poison, i16 %i.apd, i64 0
  %i.apf = shufflevector <8 x i16> %i.ape, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apg = load <8 x i8>, ptr %.517014658.us.i, align 1, !tbaa !20
  %i.aph = sext <8 x i8> %i.apg to <8 x i16>      ; 2 uses
  %i.api = mul <8 x i16> %i.apf, %i.aph
  %i.apj = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.apf, <8 x i16> %i.aph)
  %i.apk = shufflevector <8 x i16> %i.api, <8 x i16> %i.apj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apl = bitcast <8 x i16> %i.apk to <4 x i32>
  %i.apm = add <4 x i32> %i.aox, %i.apl
  %i.apn = getelementptr inbounds nuw i8, ptr %.517014658.us.i, i64 4
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %indvars.iv5604.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 4
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !92
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds i8, ptr %gep4672.us.i, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !20
  %i.apu = sext i8 %i.apt to i16
  %i.apv = insertelement <8 x i16> poison, i16 %i.apu, i64 0
  %i.apw = shufflevector <8 x i16> %i.apv, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apx = load <8 x i8>, ptr %i.apn, align 1, !tbaa !20
  %i.apy = sext <8 x i8> %i.apx to <8 x i16>      ; 2 uses
  %i.apz = mul <8 x i16> %i.apw, %i.apy
  %i.aqa = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.apw, <8 x i16> %i.apy)
  %i.aqb = shufflevector <8 x i16> %i.apz, <8 x i16> %i.aqa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqc = bitcast <8 x i16> %i.aqb to <4 x i32>
  %i.aqd = add <4 x i32> %i.apm, %i.aqc           ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.517014658.us.i, i64 8 ; 2 uses
  %indvars.iv.next5605.i.1 = add nuw nsw i64 %indvars.iv5604.i, 2 ; 2 uses
  %niter1144.next.1 = add i64 %niter1144, 2       ; 2 uses
  %niter1144.ncmp.1 = icmp eq i64 %niter1144.next.1, %unroll_iter1143
  br i1 %niter1144.ncmp.1, label %._crit_edge4661.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1969.us.i.new, !llvm.loop !162

._crit_edge4661.us.i.unr-lcssa:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1969.us.i.new
  br i1 %lcmp.mod1140.not, label %._crit_edge4661.us.i, label %.epil.preheader1136

.epil.preheader1136:                              ; preds = %._crit_edge4661.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1969.us.i
  %indvars.iv5604.i.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1969.us.i ], [ %indvars.iv.next5605.i.1, %._crit_edge4661.us.i.unr-lcssa ]
  %.517014658.us.i.epil.init = phi ptr [ %.417004664.us.i, %_ZN4ncnn3MatD2Ev.exit1969.us.i ], [ %i.aqe, %._crit_edge4661.us.i.unr-lcssa ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %.21640.lcssa.i = phi i32 [ %.01638.lcssa.i, %.preheader4303.i ], [ %.01638.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1948.lr.ph.i ], [ %.lcssa548, %._crit_edge4896.us.i ]
  %.21636.lcssa.i = phi i32 [ %.01634.lcssa.i, %.preheader4303.i ], [ %.01634.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1948.lr.ph.i ], [ %.lcssa546, %._crit_edge4896.us.i ]
  store i32 %.21648.lcssa.i, ptr %.116814927.i, align 4, !tbaa !92
  %i.chh = getelementptr inbounds nuw i8, ptr %.116814927.i, i64 4
  store i32 %.21644.lcssa.i, ptr %i.chh, align 4, !tbaa !92
  store i32 %.21640.lcssa.i, ptr %.116784928.i, align 4, !tbaa !92
  %i.chi = getelementptr inbounds nuw i8, ptr %.116784928.i, i64 4
  store i32 %.21636.lcssa.i, ptr %i.chi, align 4, !tbaa !92
  %i.chj = getelementptr inbounds nuw i8, ptr %.116814927.i, i64 8 ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %.116784928.i, i64 8 ; 2 uses
  %i.chl = add nuw nsw i32 %.116754929.i, 2       ; 3 uses
  %i.chm = or disjoint i32 %i.chl, 1              ; 2 uses
  %i.chn = icmp slt i32 %i.chm, %i.asu
  br i1 %i.chn, label %_ZN4ncnn3MatD2Ev.exit1953.i, label %.preheader4305.i, !llvm.loop !213

_ZN4ncnn3MatD2Ev.exit1946.i:                      ; preds = %._crit_edge5006.i, %_ZN4ncnn3MatD2Ev.exit1946.lr.ph.i
  %.216765018.i = phi i32 [ %.11675.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1946.lr.ph.i ], [ %i.dfy, %._crit_edge5006.i ] ; 3 uses
  %.216795017.i = phi ptr [ %.11678.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1946.lr.ph.i ], [ %i.dfx, %._crit_edge5006.i ] ; 2 uses
  %.216825016.i = phi ptr [ %.11681.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1946.lr.ph.i ], [ %i.dfw, %._crit_edge5006.i ] ; 2 uses
  %i.cho = sdiv i32 %.216765018.i, %i.asd         ; 3 uses
  %i.chp = srem i32 %.216765018.i, %i.asd         ; 3 uses
  %i.chq = load i32, ptr %i.d, align 4, !tbaa !92 ; 11 uses
  %i.chr = icmp sgt i32 %i.chq, 7
  br i1 %i.chr, label %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.i, label %._crit_edge4945.i

_ZN4ncnn3MatD2Ev.exit1945.lr.ph.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1946.i
  %i.chs = load i32, ptr %i.c, align 4, !tbaa !92 ; 3 uses
  %i.cht = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !214
  %i.chu = load ptr, ptr %0, align 8, !tbaa !9, !noalias !214
  %i.chv = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !214
  %i.chw = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !214 ; 2 uses
  %factor.op.mul4949.i = mul i64 %i.chw, %i.chv   ; 2 uses
  %i.chx = sext i32 %i.cht to i64
  %i.chy = load i32, ptr %i.b, align 4, !tbaa !92
  %i.chz = mul nsw i32 %i.chy, %i.cho
  %i.cia = sext i32 %i.chz to i64
  %i.cib = mul i64 %i.chw, %i.chx
  %i.cic = mul i64 %i.cib, %i.cia
  %invariant.gep4951.i = getelementptr i8, ptr %i.chu, i64 %i.cic
  %i.cid = load i32, ptr %i.a, align 4, !tbaa !92
  %i.cie = mul i32 %i.chs, %i.chp
  %i.cif = mul i32 %i.cie, %i.cid
  %i.cig = sext i32 %i.cif to i64
  %invariant.gep4952.i = getelementptr i8, ptr %invariant.gep4951.i, i64 %i.cig ; 2 uses
  %i.cih = load i32, ptr %i.f, align 4, !tbaa !92 ; 5 uses
  %i.cii = icmp sgt i32 %i.cih, 0
  %i.cij = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.cii, label %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i, label %_ZN4ncnn3MatD2Ev.exit1945.preheader.i

_ZN4ncnn3MatD2Ev.exit1945.preheader.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.i
  %i.cik = and i32 %i.chq, 2147483640
  br label %._crit_edge4945.i

_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i:       ; preds = %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.i
  %i.cil = icmp eq i32 %i.chs, 8
  %i.cim = add nsw i32 %i.cih, -1
  %i.cin = zext nneg i32 %i.cim to i64
  %i.cio = shl nuw nsw i64 %i.cin, 4              ; 2 uses
  %wide.trip.count5695.i = zext nneg i32 %i.cih to i64 ; 3 uses
  br i1 %i.cil, label %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit1945.us.i

_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader:      ; preds = %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i
  %i.cip = zext nneg i32 %i.chq to i64
  %xtraiter1146 = and i64 %wide.trip.count5695.i, 1
  %i.ciq = icmp eq i32 %i.cih, 1
  %unroll_iter1150 = and i64 %wide.trip.count5695.i, 2147483646
  %lcmp.mod1147.not = icmp eq i64 %xtraiter1146, 0
  %lcmp.mod1149 = trunc i32 %i.cih to i1
  br label %_ZN4ncnn3MatD2Ev.exit1945.us.us.i

_ZN4ncnn3MatD2Ev.exit1945.us.us.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader, %._crit_edge4937.split.us.us.us.i
  %indvars.iv299 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader ], [ %indvars.iv.next300, %._crit_edge4937.split.us.us.us.i ] ; 2 uses
  %.016064943.us.us.i = phi ptr [ %i.bhp, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader ], [ %scevgep5693.i, %._crit_edge4937.split.us.us.us.i ] ; 3 uses
  %i.cir = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.preheader ], [ %.lcssa1078, %._crit_edge4937.split.us.us.us.i ] ; 2 uses
  %i.cis = lshr exact i64 %indvars.iv299, 3
  %.reass4950.us.us.i = mul i64 %factor.op.mul4949.i, %i.cis
  %gep4953.us.us.i = getelementptr i8, ptr %invariant.gep4952.i, i64 %.reass4950.us.us.i ; 3 uses
  br i1 %i.ciq, label %.epil.preheader1145, label %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new

_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new:            ; preds = %_ZN4ncnn3MatD2Ev.exit1945.us.us.i, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new
  %indvars.iv5690.i = phi i64 [ %indvars.iv.next5691.i.1, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ] ; 3 uses
  %.116074934.us.us.us.i = phi ptr [ %i.cjr, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new ], [ %.016064943.us.us.i, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ] ; 3 uses
  %.142034933.us.us.us.i = phi <8 x i32> [ %i.cjq, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new ], [ %i.cir, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ]
  %niter1151 = phi i64 [ %niter1151.next.1, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ]
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %i.cij, i64 %indvars.iv5690.i
  %i.ciu = load i32, ptr %i.cit, align 4, !tbaa !92
  %i.civ = sext i32 %i.ciu to i64
  %i.ciw = getelementptr inbounds i8, ptr %gep4953.us.us.i, i64 %i.civ
  %i.cix = load <8 x i8>, ptr %i.ciw, align 1, !tbaa !20
  %i.ciy = sext <8 x i8> %i.cix to <8 x i16>
  %i.ciz = load <16 x i8>, ptr %.116074934.us.us.us.i, align 16, !tbaa !20
  %i.cja = sext <16 x i8> %i.ciz to <16 x i16>
  %i.cjb = shufflevector <8 x i16> %i.ciy, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cjc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjb, <16 x i16> %i.cja)
  %i.cjd = add <8 x i32> %i.cjc, %.142034933.us.us.us.i
  %i.cje = getelementptr inbounds nuw i8, ptr %.116074934.us.us.us.i, i64 16
  %i.cjf = getelementptr inbounds nuw [4 x i8], ptr %i.cij, i64 %indvars.iv5690.i
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cjf, i64 4
  %i.cjh = load i32, ptr %i.cjg, align 4, !tbaa !92
  %i.cji = sext i32 %i.cjh to i64
  %i.cjj = getelementptr inbounds i8, ptr %gep4953.us.us.i, i64 %i.cji
  %i.cjk = load <8 x i8>, ptr %i.cjj, align 1, !tbaa !20
  %i.cjl = sext <8 x i8> %i.cjk to <8 x i16>
  %i.cjm = load <16 x i8>, ptr %i.cje, align 16, !tbaa !20
  %i.cjn = sext <16 x i8> %i.cjm to <16 x i16>
  %i.cjo = shufflevector <8 x i16> %i.cjl, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cjp = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjo, <16 x i16> %i.cjn)
  %i.cjq = add <8 x i32> %i.cjp, %i.cjd           ; 3 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %.116074934.us.us.us.i, i64 32 ; 2 uses
  %indvars.iv.next5691.i.1 = add nuw nsw i64 %indvars.iv5690.i, 2 ; 2 uses
  %niter1151.next.1 = add i64 %niter1151, 2       ; 2 uses
  %niter1151.ncmp.1 = icmp eq i64 %niter1151.next.1, %unroll_iter1150
  br i1 %niter1151.ncmp.1, label %._crit_edge4937.split.us.us.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new, !llvm.loop !217

._crit_edge4937.split.us.us.us.i.unr-lcssa:       ; preds = %_ZN4ncnn3MatD2Ev.exit1945.us.us.i.new
  br i1 %lcmp.mod1147.not, label %._crit_edge4937.split.us.us.us.i, label %.epil.preheader1145

.epil.preheader1145:                              ; preds = %._crit_edge4937.split.us.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i
  %indvars.iv5690.i.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ], [ %indvars.iv.next5691.i.1, %._crit_edge4937.split.us.us.us.i.unr-lcssa ]
  %.116074934.us.us.us.i.epil.init = phi ptr [ %.016064943.us.us.i, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ], [ %i.cjr, %._crit_edge4937.split.us.us.us.i.unr-lcssa ]
  %.142034933.us.us.us.i.epil.init = phi <8 x i32> [ %i.cir, %_ZN4ncnn3MatD2Ev.exit1945.us.us.i ], [ %i.cjq, %._crit_edge4937.split.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1149)
  %i.cjs = getelementptr inbounds nuw [4 x i8], ptr %i.cij, i64 %indvars.iv5690.i.epil.init
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !92
  %i.cju = sext i32 %i.cjt to i64
  %i.cjv = getelementptr inbounds i8, ptr %gep4953.us.us.i, i64 %i.cju
  %i.cjw = load <8 x i8>, ptr %i.cjv, align 1, !tbaa !20
  %i.cjx = sext <8 x i8> %i.cjw to <8 x i16>
  %i.cjy = load <16 x i8>, ptr %.116074934.us.us.us.i.epil.init, align 16, !tbaa !20
  %i.cjz = sext <16 x i8> %i.cjy to <16 x i16>
  %i.cka = shufflevector <8 x i16> %i.cjx, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckb = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cka, <16 x i16> %i.cjz)
  %i.ckc = add <8 x i32> %i.ckb, %.142034933.us.us.us.i.epil.init
  br label %._crit_edge4937.split.us.us.us.i

._crit_edge4937.split.us.us.us.i:                 ; preds = %._crit_edge4937.split.us.us.us.i.unr-lcssa, %.epil.preheader1145
  %.lcssa1078 = phi <8 x i32> [ %i.cjq, %._crit_edge4937.split.us.us.us.i.unr-lcssa ], [ %i.ckc, %.epil.preheader1145 ] ; 2 uses
  %scevgep5692.i = getelementptr i8, ptr %.016064943.us.us.i, i64 16
  %scevgep5693.i = getelementptr i8, ptr %scevgep5692.i, i64 %i.cio ; 2 uses
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 8 ; 2 uses
  %i.ckd = or disjoint i64 %indvars.iv.next300, 7
  %i.cke = icmp samesign ult i64 %i.ckd, %i.cip
  br i1 %i.cke, label %_ZN4ncnn3MatD2Ev.exit1945.us.us.i, label %._crit_edge4945.loopexit.i, !llvm.loop !218

_ZN4ncnn3MatD2Ev.exit1945.us.i:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i, %._crit_edge4937.split.us4957.i
  %.016034944.us.i = phi i32 [ %i.clb, %._crit_edge4937.split.us4957.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i ] ; 2 uses
  %.016064943.us.i = phi ptr [ %scevgep5686.i, %._crit_edge4937.split.us4957.i ], [ %i.bhp, %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i ] ; 2 uses
  %i.ckf = phi <8 x i32> [ %i.ckz, %._crit_edge4937.split.us4957.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1945.lr.ph.split.us.i ]
  %i.ckg = sdiv i32 %.016034944.us.i, %i.chs
  %i.ckh = sext i32 %i.ckg to i64
  %.reass4950.us.i = mul i64 %factor.op.mul4949.i, %i.ckh
  %gep4953.us.i = getelementptr i8, ptr %invariant.gep4952.i, i64 %.reass4950.us.i
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZN4ncnn3MatD2Ev.exit1945.us.i
  %indvars.iv5683.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1945.us.i ], [ %indvars.iv.next5684.i, %bb.u ] ; 2 uses
  %.116074934.us4955.i = phi ptr [ %.016064943.us.i, %_ZN4ncnn3MatD2Ev.exit1945.us.i ], [ %i.cla, %bb.u ] ; 2 uses
  %.142034933.us4956.i = phi <8 x i32> [ %i.ckf, %_ZN4ncnn3MatD2Ev.exit1945.us.i ], [ %i.ckz, %bb.u ]
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.cij, i64 %indvars.iv5683.i
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !92
  %i.ckk = sext i32 %i.ckj to i64
  %i.ckl = getelementptr inbounds i8, ptr %gep4953.us.i, i64 %i.ckk
  %i.ckm = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ckl, <8 x i32> %i.bht, <8 x i32> splat (i32 -1), i8 1)
  %i.ckn = bitcast <8 x i32> %i.ckm to <32 x i8>
  %i.cko = shufflevector <32 x i8> %i.ckn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.ckp = bitcast <32 x i8> %i.cko to <8 x i32>
  %i.ckq = bitcast <32 x i8> %i.cko to <8 x i32>
  %i.ckr = shufflevector <8 x i32> %i.ckp, <8 x i32> %i.ckq, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.cks = bitcast <4 x i32> %i.ckr to <16 x i8>
  %i.ckt = shufflevector <16 x i8> %i.cks, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cku = sext <8 x i8> %i.ckt to <8 x i16>
  %i.ckv = load <16 x i8>, ptr %.116074934.us4955.i, align 16, !tbaa !20
  %i.ckw = sext <16 x i8> %i.ckv to <16 x i16>
  %i.ckx = shufflevector <8 x i16> %i.cku, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cky = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ckx, <16 x i16> %i.ckw)
  %i.ckz = add <8 x i32> %i.cky, %.142034933.us4956.i ; 3 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %.116074934.us4955.i, i64 16
  %indvars.iv.next5684.i = add nuw nsw i64 %indvars.iv5683.i, 1 ; 2 uses
  %exitcond5689.not.i = icmp eq i64 %indvars.iv.next5684.i, %wide.trip.count5695.i
  br i1 %exitcond5689.not.i, label %._crit_edge4937.split.us4957.i, label %bb.u, !llvm.loop !217

._crit_edge4937.split.us4957.i:                   ; preds = %bb.u
  %scevgep5685.i = getelementptr i8, ptr %.016064943.us.i, i64 16
  %scevgep5686.i = getelementptr i8, ptr %scevgep5685.i, i64 %i.cio ; 2 uses
  %i.clb = add nuw nsw i32 %.016034944.us.i, 8    ; 2 uses
  %i.clc = or disjoint i32 %i.clb, 7
  %i.cld = icmp slt i32 %i.clc, %i.chq
  br i1 %i.cld, label %_ZN4ncnn3MatD2Ev.exit1945.us.i, label %._crit_edge4945.loopexit5330.i, !llvm.loop !218

._crit_edge4945.loopexit.i:                       ; preds = %._crit_edge4937.split.us.us.us.i
  %i.cle = and i32 %i.chq, 2147483640
  br label %._crit_edge4945.i

._crit_edge4945.loopexit5330.i:                   ; preds = %._crit_edge4937.split.us4957.i
  %i.clf = and i32 %i.chq, 2147483640
  br label %._crit_edge4945.i

._crit_edge4945.i:                                ; preds = %._crit_edge4945.loopexit5330.i, %._crit_edge4945.loopexit.i, %_ZN4ncnn3MatD2Ev.exit1945.preheader.i, %_ZN4ncnn3MatD2Ev.exit1946.i
  %i.clg = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1946.i ], [ %.lcssa1078, %._crit_edge4945.loopexit.i ], [ %i.ckz, %._crit_edge4945.loopexit5330.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1945.preheader.i ] ; 2 uses
  %.01606.lcssa.i = phi ptr [ %i.bhp, %_ZN4ncnn3MatD2Ev.exit1946.i ], [ %scevgep5693.i, %._crit_edge4945.loopexit.i ], [ %scevgep5686.i, %._crit_edge4945.loopexit5330.i ], [ %i.bhp, %_ZN4ncnn3MatD2Ev.exit1945.preheader.i ] ; 3 uses
  %.01603.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1946.i ], [ %i.cle, %._crit_edge4945.loopexit.i ], [ %i.clf, %._crit_edge4945.loopexit5330.i ], [ %i.cik, %_ZN4ncnn3MatD2Ev.exit1945.preheader.i ] ; 6 uses
  %i.clh = shufflevector <8 x i32> %i.clg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cli = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.clh) ; 3 uses
  %i.clj = shufflevector <8 x i32> %i.clg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.clk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.clj) ; 3 uses
  %i.cll = or disjoint i32 %.01603.lcssa.i, 1
  %i.clm = icmp slt i32 %i.cll, %i.chq
  br i1 %i.clm, label %_ZN4ncnn3MatD2Ev.exit1944.lr.ph.i, label %.preheader4302.i

_ZN4ncnn3MatD2Ev.exit1944.lr.ph.i:                ; preds = %._crit_edge4945.i
  %i.cln = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !219
  %i.clo = load ptr, ptr %0, align 8, !tbaa !9, !noalias !219
  %i.clp = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !219
  %i.clq = load i64, ptr %i.cx, align 8, !tbaa !19, !noalias !219 ; 2 uses
  %factor.op.mul4984.i = mul i64 %i.clq, %i.clp
  %i.clr = sext i32 %i.cln to i64
  %i.cls = load i32, ptr %i.b, align 4, !tbaa !92
  %i.clt = mul nsw i32 %i.cls, %i.cho
  %i.clu = sext i32 %i.clt to i64
  %i.clv = mul i64 %i.clq, %i.clr
  %i.clw = mul i64 %i.clv, %i.clu
  %invariant.gep4986.i = getelementptr i8, ptr %i.clo, i64 %i.clw
  %i.clx = load i32, ptr %i.a, align 4, !tbaa !92
  %i.cly = mul nsw i32 %i.clx, %i.chp
  %i.clz = sext i32 %i.cly to i64
  %invariant.gep4987.i = getelementptr i8, ptr %invariant.gep4986.i, i64 %i.clz
  %i.cma = load i32, ptr %i.f, align 4, !tbaa !92 ; 5 uses
  %i.cmb = icmp sgt i32 %i.cma, 0
  %i.cmc = load ptr, ptr %i.g, align 8            ; 21 uses
  br i1 %i.cmb, label %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit1944.preheader.i

_ZN4ncnn3MatD2Ev.exit1944.preheader.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit1944.lr.ph.i
  %i.cmd = or disjoint i32 %.01603.lcssa.i, 2
  %13 = or disjoint i32 %.01603.lcssa.i, 3
  %14 = call i32 @llvm.umax.i32(i32 %i.chq, i32 %13)
  %reass.sub160 = sub nsw i32 %14, %.01603.lcssa.i
  %i.cme = and i32 %reass.sub160, -2
  %15 = add i32 %i.cme, -2
  %i.cmf = add i32 %i.cmd, %15
  br label %.preheader4302.i

_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i:         ; preds = %_ZN4ncnn3MatD2Ev.exit1944.lr.ph.i
  %i.cmg = add nsw i32 %i.cma, -1
  %i.cmh = zext nneg i32 %i.cmg to i64
  %i.cmi = shl nuw nsw i64 %i.cmh, 2
  %i.cmj = zext nneg i32 %.01603.lcssa.i to i64
  %wide.trip.count5703.i = zext nneg i32 %i.cma to i64 ; 6 uses
  %min.iters.check663.a = icmp ult i32 %i.cma, 4
  %min.iters.check665 = icmp ult i32 %i.cma, 16
  %i.cmk = and i64 %wide.trip.count5703.i, 12
  %n.vec667 = and i64 %wide.trip.count5703.i, 2147483632 ; 5 uses
  %i.cml = shl nuw nsw i64 %n.vec667, 2
  %cmp.n690 = icmp eq i64 %n.vec667, %wide.trip.count5703.i
  %min.epilog.iters.check697 = icmp eq i64 %i.cmk, 0
  %n.vec699 = and i64 %wide.trip.count5703.i, 2147483644 ; 4 uses
  %i.cmm = shl nuw nsw i64 %n.vec699, 2
  %cmp.n712 = icmp eq i64 %n.vec699, %wide.trip.count5703.i
  br label %iter.check694

iter.check694:                                    ; preds = %._crit_edge4972.us.i, %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i
  %indvars.iv5705.i = phi i64 [ %i.cmj, %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i ], [ %indvars.iv.next5706.i, %._crit_edge4972.us.i ] ; 2 uses
  %.216084978.us.i = phi ptr [ %.01606.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i ], [ %scevgep5701.i, %._crit_edge4972.us.i ] ; 7 uses
  %.016124977.us.i = phi i32 [ %i.clk, %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i ], [ %.lcssa555, %._crit_edge4972.us.i ] ; 3 uses
  %.016164976.us.i = phi i32 [ %i.cli, %_ZN4ncnn3MatD2Ev.exit1944.us.preheader.i ], [ %.lcssa556.a, %._crit_edge4972.us.i ] ; 3 uses
  %.reass4985.us.i = mul i64 %factor.op.mul4984.i, %indvars.iv5705.i
  %gep4988.us.i = getelementptr i8, ptr %invariant.gep4987.i, i64 %.reass4985.us.i ; 21 uses
  br i1 %min.iters.check663.a, label %vec.epilog.scalar.ph695.preheader, label %vector.main.loop.iter.check664

vector.main.loop.iter.check664:                   ; preds = %iter.check694
  br i1 %min.iters.check665, label %vec.epilog.ph698, label %vector.ph666

vector.ph666:                                     ; preds = %vector.main.loop.iter.check664
  %i.cmn = getelementptr i8, ptr %.216084978.us.i, i64 %i.cml
  %i.cmo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.016124977.us.i, i64 0
  %i.cmp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.016164976.us.i, i64 0
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next686, %vector.body668 ] ; 18 uses
  %vec.phi670.a = phi <8 x i32> [ %i.cmo, %vector.ph666 ], [ %i.ctv, %vector.body668 ]
  %vec.phi671.a = phi <8 x i32> [ zeroinitializer, %vector.ph666 ], [ %i.ctw, %vector.body668 ]
  %vec.phi672 = phi <8 x i32> [ %i.cmp, %vector.ph666 ], [ %i.ctp, %vector.body668 ]
  %vec.phi673 = phi <8 x i32> [ zeroinitializer, %vector.ph666 ], [ %i.ctq, %vector.body668 ]
  %i.cmq = shl i64 %index669, 2                   ; 2 uses
  %next.gep674 = getelementptr i8, ptr %.216084978.us.i, i64 %i.cmq
  %i.cmr = getelementptr i8, ptr %.216084978.us.i, i64 %i.cmq
  %next.gep675 = getelementptr i8, ptr %i.cmr, i64 32
  %i.cms = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmt, i64 4
  %i.cmv = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 8
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 12
  %i.cmz = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 16
  %i.cnb = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 20
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 24
  %i.cnf = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 28
  %i.cnh = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 32
  %i.cnj = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 36
  %i.cnl = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnl, i64 40
  %i.cnn = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cno = getelementptr inbounds nuw i8, ptr %i.cnn, i64 44
  %i.cnp = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 48
  %i.cnr = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 52
  %i.cnt = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnt, i64 56
  %i.cnv = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %index669
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnv, i64 60
  %i.cnx = load i32, ptr %i.cms, align 4, !tbaa !92
  %i.cny = load i32, ptr %i.cmu, align 4, !tbaa !92
  %i.cnz = load i32, ptr %i.cmw, align 4, !tbaa !92
  %i.coa = load i32, ptr %i.cmy, align 4, !tbaa !92
  %i.cob = load i32, ptr %i.cna, align 4, !tbaa !92
  %i.coc = load i32, ptr %i.cnc, align 4, !tbaa !92
  %i.cod = load i32, ptr %i.cne, align 4, !tbaa !92
  %i.coe = load i32, ptr %i.cng, align 4, !tbaa !92
  %i.cof = load i32, ptr %i.cni, align 4, !tbaa !92
  %i.cog = load i32, ptr %i.cnk, align 4, !tbaa !92
  %i.coh = load i32, ptr %i.cnm, align 4, !tbaa !92
  %i.coi = load i32, ptr %i.cno, align 4, !tbaa !92
  %i.coj = load i32, ptr %i.cnq, align 4, !tbaa !92
  %i.cok = load i32, ptr %i.cns, align 4, !tbaa !92
  %i.col = load i32, ptr %i.cnu, align 4, !tbaa !92
  %i.com = load i32, ptr %i.cnw, align 4, !tbaa !92
  %i.con = sext i32 %i.cnx to i64
  %i.coo = sext i32 %i.cny to i64
  %i.cop = sext i32 %i.cnz to i64
  %i.coq = sext i32 %i.coa to i64
  %i.cor = sext i32 %i.cob to i64
  %i.cos = sext i32 %i.coc to i64
  %i.cot = sext i32 %i.cod to i64
  %i.cou = sext i32 %i.coe to i64
  %i.cov = sext i32 %i.cof to i64
  %i.cow = sext i32 %i.cog to i64
  %i.cox = sext i32 %i.coh to i64
  %i.coy = sext i32 %i.coi to i64
  %i.coz = sext i32 %i.coj to i64
  %i.cpa = sext i32 %i.cok to i64
  %i.cpb = sext i32 %i.col to i64
  %i.cpc = sext i32 %i.com to i64
  %i.cpd = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.con ; 2 uses
  %i.cpe = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.coo ; 2 uses
  %i.cpf = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cop ; 2 uses
  %i.cpg = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.coq ; 2 uses
  %i.cph = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cor ; 2 uses
  %i.cpi = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cos ; 2 uses
  %i.cpj = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cot ; 2 uses
  %i.cpk = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cou ; 2 uses
  %i.cpl = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cov ; 2 uses
  %i.cpm = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cow ; 2 uses
  %i.cpn = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cox ; 2 uses
  %i.cpo = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.coy ; 2 uses
  %i.cpp = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.coz ; 2 uses
  %i.cpq = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cpa ; 2 uses
  %i.cpr = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cpb ; 2 uses
  %i.cps = getelementptr inbounds i8, ptr %gep4988.us.i, i64 %i.cpc ; 2 uses
  %i.cpt = load i8, ptr %i.cpd, align 1, !tbaa !20
  %i.cpu = load i8, ptr %i.cpe, align 1, !tbaa !20
  %i.cpv = load i8, ptr %i.cpf, align 1, !tbaa !20
  %i.cpw = load i8, ptr %i.cpg, align 1, !tbaa !20
  %i.cpx = load i8, ptr %i.cph, align 1, !tbaa !20
  %i.cpy = load i8, ptr %i.cpi, align 1, !tbaa !20
  %i.cpz = load i8, ptr %i.cpj, align 1, !tbaa !20
  %i.cqa = load i8, ptr %i.cpk, align 1, !tbaa !20
  %i.cqb = insertelement <8 x i8> poison, i8 %i.cpt, i64 0
  %i.cqc = insertelement <8 x i8> %i.cqb, i8 %i.cpu, i64 1
  %i.cqd = insertelement <8 x i8> %i.cqc, i8 %i.cpv, i64 2
  %i.cqe = insertelement <8 x i8> %i.cqd, i8 %i.cpw, i64 3
  %i.cqf = insertelement <8 x i8> %i.cqe, i8 %i.cpx, i64 4
  %i.cqg = insertelement <8 x i8> %i.cqf, i8 %i.cpy, i64 5
  %i.cqh = insertelement <8 x i8> %i.cqg, i8 %i.cpz, i64 6
  %i.cqi = insertelement <8 x i8> %i.cqh, i8 %i.cqa, i64 7
  %i.cqj = load i8, ptr %i.cpl, align 1, !tbaa !20
  %i.cqk = load i8, ptr %i.cpm, align 1, !tbaa !20
  %i.cql = load i8, ptr %i.cpn, align 1, !tbaa !20
  %i.cqm = load i8, ptr %i.cpo, align 1, !tbaa !20
  %i.cqn = load i8, ptr %i.cpp, align 1, !tbaa !20
  %i.cqo = load i8, ptr %i.cpq, align 1, !tbaa !20
  %i.cqp = load i8, ptr %i.cpr, align 1, !tbaa !20
  %i.cqq = load i8, ptr %i.cps, align 1, !tbaa !20
  %i.cqr = insertelement <8 x i8> poison, i8 %i.cqj, i64 0
  %i.cqs = insertelement <8 x i8> %i.cqr, i8 %i.cqk, i64 1
  %i.cqt = insertelement <8 x i8> %i.cqs, i8 %i.cql, i64 2
  %i.cqu = insertelement <8 x i8> %i.cqt, i8 %i.cqm, i64 3
  %i.cqv = insertelement <8 x i8> %i.cqu, i8 %i.cqn, i64 4
  %i.cqw = insertelement <8 x i8> %i.cqv, i8 %i.cqo, i64 5
  %i.cqx = insertelement <8 x i8> %i.cqw, i8 %i.cqp, i64 6
  %i.cqy = insertelement <8 x i8> %i.cqx, i8 %i.cqq, i64 7
  %i.cqz = sext <8 x i8> %i.cqi to <8 x i32>      ; 2 uses
  %i.cra = sext <8 x i8> %i.cqy to <8 x i32>      ; 2 uses
  %wide.vec676 = load <32 x i8>, ptr %next.gep674, align 1, !tbaa !20 ; 4 uses
  %strided.vec677.a = shufflevector <32 x i8> %wide.vec676, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec678.a = shufflevector <32 x i8> %wide.vec676, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec679 = shufflevector <32 x i8> %wide.vec676, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec680.a = shufflevector <32 x i8> %wide.vec676, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec681 = load <32 x i8>, ptr %next.gep675, align 1, !tbaa !20 ; 4 uses
  %strided.vec682.a = shufflevector <32 x i8> %wide.vec681, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec683.a = shufflevector <32 x i8> %wide.vec681, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec684 = shufflevector <32 x i8> %wide.vec681, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec685 = shufflevector <32 x i8> %wide.vec681, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.crb = sext <8 x i8> %strided.vec677.a to <8 x i32>
  %i.crc = sext <8 x i8> %strided.vec682.a to <8 x i32>
  %i.crd = mul nsw <8 x i32> %i.crb, %i.cqz
  %i.cre = mul nsw <8 x i32> %i.crc, %i.cra
  %i.crf = add <8 x i32> %i.crd, %vec.phi672
  %i.crg = add <8 x i32> %i.cre, %vec.phi673
  %i.crh = sext <8 x i8> %strided.vec678.a to <8 x i32>
  %i.cri = sext <8 x i8> %strided.vec683.a to <8 x i32>
  %i.crj = mul nsw <8 x i32> %i.crh, %i.cqz
  %i.crk = mul nsw <8 x i32> %i.cri, %i.cra
  %i.crl = add <8 x i32> %i.crj, %vec.phi670.a
  %i.crm = add <8 x i32> %i.crk, %vec.phi671.a
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cpd, i64 %i.asi
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cpe, i64 %i.asi
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cpf, i64 %i.asi
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cpg, i64 %i.asi
  %i.crr = getelementptr inbounds nuw i8, ptr %i.cph, i64 %i.asi
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cpi, i64 %i.asi
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cpj, i64 %i.asi
  %i.cru = getelementptr inbounds nuw i8, ptr %i.cpk, i64 %i.asi
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cpl, i64 %i.asi
  %i.crw = getelementptr inbounds nuw i8, ptr %i.cpm, i64 %i.asi
  %i.crx = getelementptr inbounds nuw i8, ptr %i.cpn, i64 %i.asi
  %i.cry = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %i.asi
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cpp, i64 %i.asi
  %i.csa = getelementptr inbounds nuw i8, ptr %i.cpq, i64 %i.asi
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cpr, i64 %i.asi
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.asi
  %i.csd = load i8, ptr %i.crn, align 1, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
_ZN4ncnn3MatD2Ev.exit1920.lr.ph.split.us.i:       ; preds = %_ZN4ncnn3MatD2Ev.exit1920.lr.ph.i
  %i.fek = icmp eq i32 %i.fdr, 8
  %i.fel = add nsw i32 %i.feg, -1
  %i.fem = zext nneg i32 %i.fel to i64
  %i.fen = shl nuw nsw i64 %i.fem, 3              ; 2 uses
  %wide.trip.count5799.i = zext nneg i32 %i.feg to i64 ; 4 uses
  br i1 %i.fek, label %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader

_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader:         ; preds = %_ZN4ncnn3MatD2Ev.exit1920.lr.ph.split.us.i
  %xtraiter1160 = and i64 %wide.trip.count5799.i, 1
  %i.feo = icmp eq i32 %i.feg, 1
  %unroll_iter1164 = and i64 %wide.trip.count5799.i, 2147483646
  %lcmp.mod1161.not = icmp eq i64 %xtraiter1160, 0
  %lcmp.mod1163 = trunc i32 %i.feg to i1
  br label %_ZN4ncnn3MatD2Ev.exit1920.us.i

_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader:      ; preds = %_ZN4ncnn3MatD2Ev.exit1920.lr.ph.split.us.i
  %i.fep = zext nneg i32 %i.fdp to i64
  %xtraiter1167 = and i64 %wide.trip.count5799.i, 1
  %i.feq = icmp eq i32 %i.feg, 1
  %unroll_iter1171 = and i64 %wide.trip.count5799.i, 2147483646
  %lcmp.mod1168.not = icmp eq i64 %xtraiter1167, 0
  %lcmp.mod1170 = trunc i32 %i.feg to i1
  br label %_ZN4ncnn3MatD2Ev.exit1920.us.us.i

_ZN4ncnn3MatD2Ev.exit1920.us.us.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader, %._crit_edge5242.split.us.us.us.i
  %indvars.iv302 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader ], [ %indvars.iv.next303, %._crit_edge5242.split.us.us.us.i ] ; 2 uses
  %.013895248.us.us.i = phi ptr [ %i.dub, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader ], [ %scevgep5797.i, %._crit_edge5242.split.us.us.us.i ] ; 3 uses
  %i.fer = phi <4 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.preheader ], [ %.lcssa1016, %._crit_edge5242.split.us.us.us.i ] ; 2 uses
  %i.fes = lshr exact i64 %indvars.iv302, 3
  %.reass5255.us.us.i = mul i64 %factor.op.mul5254.i, %i.fes
  %gep5258.us.us.i = getelementptr i8, ptr %invariant.gep5257.i, i64 %.reass5255.us.us.i ; 3 uses
  br i1 %i.feq, label %.epil.preheader1166, label %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new

_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new:            ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new
  %indvars.iv5794.i = phi i64 [ %indvars.iv.next5795.i.1, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ] ; 3 uses
  %.113905239.us.us.us.i = phi ptr [ %i.ffp, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new ], [ %.013895248.us.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ] ; 3 uses
  %.141545238.us.us.us.i = phi <4 x i32> [ %i.ffo, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new ], [ %i.fer, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ]
  %niter1172 = phi i64 [ %niter1172.next.1, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ]
  %i.fet = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5794.i
  %i.feu = load i32, ptr %i.fet, align 4, !tbaa !92
  %i.fev = sext i32 %i.feu to i64
  %i.few = getelementptr inbounds i8, ptr %gep5258.us.us.i, i64 %i.fev
  %i.fex = load <8 x i8>, ptr %i.few, align 1, !tbaa !20
  %i.fey = sext <8 x i8> %i.fex to <8 x i16>
  %i.fez = load <8 x i8>, ptr %.113905239.us.us.us.i, align 1, !tbaa !20
  %i.ffa = sext <8 x i8> %i.fez to <8 x i16>
  %i.ffb = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fey, <8 x i16> %i.ffa)
  %i.ffc = add <4 x i32> %i.ffb, %.141545238.us.us.us.i
  %i.ffd = getelementptr inbounds nuw i8, ptr %.113905239.us.us.us.i, i64 8
  %i.ffe = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5794.i
  %i.fff = getelementptr inbounds nuw i8, ptr %i.ffe, i64 4
  %i.ffg = load i32, ptr %i.fff, align 4, !tbaa !92
  %i.ffh = sext i32 %i.ffg to i64
  %i.ffi = getelementptr inbounds i8, ptr %gep5258.us.us.i, i64 %i.ffh
  %i.ffj = load <8 x i8>, ptr %i.ffi, align 1, !tbaa !20
  %i.ffk = sext <8 x i8> %i.ffj to <8 x i16>
  %i.ffl = load <8 x i8>, ptr %i.ffd, align 1, !tbaa !20
  %i.ffm = sext <8 x i8> %i.ffl to <8 x i16>
  %i.ffn = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ffk, <8 x i16> %i.ffm)
  %i.ffo = add <4 x i32> %i.ffn, %i.ffc           ; 3 uses
  %i.ffp = getelementptr inbounds nuw i8, ptr %.113905239.us.us.us.i, i64 16 ; 2 uses
  %indvars.iv.next5795.i.1 = add nuw nsw i64 %indvars.iv5794.i, 2 ; 2 uses
  %niter1172.next.1 = add i64 %niter1172, 2       ; 2 uses
  %niter1172.ncmp.1 = icmp eq i64 %niter1172.next.1, %unroll_iter1171
  br i1 %niter1172.ncmp.1, label %._crit_edge5242.split.us.us.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new, !llvm.loop !287

._crit_edge5242.split.us.us.us.i.unr-lcssa:       ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.us.i.new
  br i1 %lcmp.mod1168.not, label %._crit_edge5242.split.us.us.us.i, label %.epil.preheader1166

.epil.preheader1166:                              ; preds = %._crit_edge5242.split.us.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i
  %indvars.iv5794.i.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ], [ %indvars.iv.next5795.i.1, %._crit_edge5242.split.us.us.us.i.unr-lcssa ]
  %.113905239.us.us.us.i.epil.init = phi ptr [ %.013895248.us.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ], [ %i.ffp, %._crit_edge5242.split.us.us.us.i.unr-lcssa ]
  %.141545238.us.us.us.i.epil.init = phi <4 x i32> [ %i.fer, %_ZN4ncnn3MatD2Ev.exit1920.us.us.i ], [ %i.ffo, %._crit_edge5242.split.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1170)
  %i.ffq = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5794.i.epil.init
  %i.ffr = load i32, ptr %i.ffq, align 4, !tbaa !92
  %i.ffs = sext i32 %i.ffr to i64
  %i.fft = getelementptr inbounds i8, ptr %gep5258.us.us.i, i64 %i.ffs
  %i.ffu = load <8 x i8>, ptr %i.fft, align 1, !tbaa !20
  %i.ffv = sext <8 x i8> %i.ffu to <8 x i16>
  %i.ffw = load <8 x i8>, ptr %.113905239.us.us.us.i.epil.init, align 1, !tbaa !20
  %i.ffx = sext <8 x i8> %i.ffw to <8 x i16>
  %i.ffy = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ffv, <8 x i16> %i.ffx)
  %i.ffz = add <4 x i32> %i.ffy, %.141545238.us.us.us.i.epil.init
  br label %._crit_edge5242.split.us.us.us.i

._crit_edge5242.split.us.us.us.i:                 ; preds = %._crit_edge5242.split.us.us.us.i.unr-lcssa, %.epil.preheader1166
  %.lcssa1016 = phi <4 x i32> [ %i.ffo, %._crit_edge5242.split.us.us.us.i.unr-lcssa ], [ %i.ffz, %.epil.preheader1166 ] ; 2 uses
  %scevgep5796.i.a = getelementptr i8, ptr %.013895248.us.us.i, i64 8
  %scevgep5797.i = getelementptr i8, ptr %scevgep5796.i.a, i64 %i.fen ; 2 uses
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 8 ; 2 uses
  %i.fga = or disjoint i64 %indvars.iv.next303, 7
  %i.fgb = icmp samesign ult i64 %i.fga, %i.fep
  br i1 %i.fgb, label %_ZN4ncnn3MatD2Ev.exit1920.us.us.i, label %._crit_edge5250.loopexit.i, !llvm.loop !288

_ZN4ncnn3MatD2Ev.exit1920.us.i:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader, %._crit_edge5242.split.us5262.i
  %.013885249.us.i = phi i32 [ %i.fih, %._crit_edge5242.split.us5262.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader ] ; 2 uses
  %.013895248.us.i = phi ptr [ %scevgep5790.i, %._crit_edge5242.split.us5262.i ], [ %i.dub, %_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader ] ; 3 uses
  %i.fgc = phi <4 x i32> [ %.lcssa1015, %._crit_edge5242.split.us5262.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1920.us.i.preheader ] ; 2 uses
  %i.fgd = sdiv i32 %.013885249.us.i, %i.fdr
  %i.fge = sext i32 %i.fgd to i64
  %.reass5255.us.i = mul i64 %factor.op.mul5254.i, %i.fge
  %gep5258.us.i = getelementptr i8, ptr %invariant.gep5257.i, i64 %.reass5255.us.i ; 3 uses
  br i1 %i.feo, label %.epil.preheader1159, label %_ZN4ncnn3MatD2Ev.exit1920.us.i.new

_ZN4ncnn3MatD2Ev.exit1920.us.i.new:               ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.i.new
  %indvars.iv5787.i = phi i64 [ %indvars.iv.next5788.i.1, %_ZN4ncnn3MatD2Ev.exit1920.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.i ] ; 3 uses
  %.113905239.us5260.i = phi ptr [ %i.fhp, %_ZN4ncnn3MatD2Ev.exit1920.us.i.new ], [ %.013895248.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.i ] ; 3 uses
  %.141545238.us5261.i = phi <4 x i32> [ %i.fho, %_ZN4ncnn3MatD2Ev.exit1920.us.i.new ], [ %i.fgc, %_ZN4ncnn3MatD2Ev.exit1920.us.i ]
  %niter1165 = phi i64 [ %niter1165.next.1, %_ZN4ncnn3MatD2Ev.exit1920.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.i ]
  %i.fgf = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5787.i
  %i.fgg = load i32, ptr %i.fgf, align 4, !tbaa !92
  %i.fgh = sext i32 %i.fgg to i64
  %i.fgi = getelementptr inbounds i8, ptr %gep5258.us.i, i64 %i.fgh
  %i.fgj = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.fgi, <8 x i32> %i.arv, <8 x i32> splat (i32 -1), i8 1)
  %i.fgk = bitcast <8 x i32> %i.fgj to <32 x i8>
  %i.fgl = shufflevector <32 x i8> %i.fgk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.fgm = bitcast <32 x i8> %i.fgl to <8 x i32>
  %i.fgn = bitcast <32 x i8> %i.fgl to <8 x i32>
  %i.fgo = shufflevector <8 x i32> %i.fgm, <8 x i32> %i.fgn, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.fgp = bitcast <4 x i32> %i.fgo to <16 x i8>
  %i.fgq = shufflevector <16 x i8> %i.fgp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fgr = sext <8 x i8> %i.fgq to <8 x i16>
  %i.fgs = load <8 x i8>, ptr %.113905239.us5260.i, align 1, !tbaa !20
  %i.fgt = sext <8 x i8> %i.fgs to <8 x i16>
  %i.fgu = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fgr, <8 x i16> %i.fgt)
  %i.fgv = add <4 x i32> %i.fgu, %.141545238.us5261.i
  %i.fgw = getelementptr inbounds nuw i8, ptr %.113905239.us5260.i, i64 8
  %i.fgx = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5787.i
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgx, i64 4
  %i.fgz = load i32, ptr %i.fgy, align 4, !tbaa !92
  %i.fha = sext i32 %i.fgz to i64
  %i.fhb = getelementptr inbounds i8, ptr %gep5258.us.i, i64 %i.fha
  %i.fhc = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.fhb, <8 x i32> %i.arv, <8 x i32> splat (i32 -1), i8 1)
  %i.fhd = bitcast <8 x i32> %i.fhc to <32 x i8>
  %i.fhe = shufflevector <32 x i8> %i.fhd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.fhf = bitcast <32 x i8> %i.fhe to <8 x i32>
  %i.fhg = bitcast <32 x i8> %i.fhe to <8 x i32>
  %i.fhh = shufflevector <8 x i32> %i.fhf, <8 x i32> %i.fhg, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.fhi = bitcast <4 x i32> %i.fhh to <16 x i8>
  %i.fhj = shufflevector <16 x i8> %i.fhi, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fhk = sext <8 x i8> %i.fhj to <8 x i16>
  %i.fhl = load <8 x i8>, ptr %i.fgw, align 1, !tbaa !20
  %i.fhm = sext <8 x i8> %i.fhl to <8 x i16>
  %i.fhn = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fhk, <8 x i16> %i.fhm)
  %i.fho = add <4 x i32> %i.fhn, %i.fgv           ; 3 uses
  %i.fhp = getelementptr inbounds nuw i8, ptr %.113905239.us5260.i, i64 16 ; 2 uses
  %indvars.iv.next5788.i.1 = add nuw nsw i64 %indvars.iv5787.i, 2 ; 2 uses
  %niter1165.next.1 = add i64 %niter1165, 2       ; 2 uses
  %niter1165.ncmp.1 = icmp eq i64 %niter1165.next.1, %unroll_iter1164
  br i1 %niter1165.ncmp.1, label %._crit_edge5242.split.us5262.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1920.us.i.new, !llvm.loop !287

._crit_edge5242.split.us5262.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit1920.us.i.new
  br i1 %lcmp.mod1161.not, label %._crit_edge5242.split.us5262.i, label %.epil.preheader1159

.epil.preheader1159:                              ; preds = %._crit_edge5242.split.us5262.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1920.us.i
  %indvars.iv5787.i.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1920.us.i ], [ %indvars.iv.next5788.i.1, %._crit_edge5242.split.us5262.i.unr-lcssa ]
  %.113905239.us5260.i.epil.init = phi ptr [ %.013895248.us.i, %_ZN4ncnn3MatD2Ev.exit1920.us.i ], [ %i.fhp, %._crit_edge5242.split.us5262.i.unr-lcssa ]
  %.141545238.us5261.i.epil.init = phi <4 x i32> [ %i.fgc, %_ZN4ncnn3MatD2Ev.exit1920.us.i ], [ %i.fho, %._crit_edge5242.split.us5262.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1163)
  %i.fhq = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %indvars.iv5787.i.epil.init
  %i.fhr = load i32, ptr %i.fhq, align 4, !tbaa !92
  %i.fhs = sext i32 %i.fhr to i64
  %i.fht = getelementptr inbounds i8, ptr %gep5258.us.i, i64 %i.fhs
  %i.fhu = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.fht, <8 x i32> %i.arv, <8 x i32> splat (i32 -1), i8 1)
  %i.fhv = bitcast <8 x i32> %i.fhu to <32 x i8>
  %i.fhw = shufflevector <32 x i8> %i.fhv, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.fhx = bitcast <32 x i8> %i.fhw to <8 x i32>
  %i.fhy = bitcast <32 x i8> %i.fhw to <8 x i32>
  %i.fhz = shufflevector <8 x i32> %i.fhx, <8 x i32> %i.fhy, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.fia = bitcast <4 x i32> %i.fhz to <16 x i8>
  %i.fib = shufflevector <16 x i8> %i.fia, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fic = sext <8 x i8> %i.fib to <8 x i16>
  %i.fid = load <8 x i8>, ptr %.113905239.us5260.i.epil.init, align 1, !tbaa !20
  %i.fie = sext <8 x i8> %i.fid to <8 x i16>
  %i.fif = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fic, <8 x i16> %i.fie)
  %i.fig = add <4 x i32> %i.fif, %.141545238.us5261.i.epil.init
  br label %._crit_edge5242.split.us5262.i

._crit_edge5242.split.us5262.i:                   ; preds = %._crit_edge5242.split.us5262.i.unr-lcssa, %.epil.preheader1159
  %.lcssa1015 = phi <4 x i32> [ %i.fho, %._crit_edge5242.split.us5262.i.unr-lcssa ], [ %i.fig, %.epil.preheader1159 ] ; 2 uses
  %scevgep5789.i.a = getelementptr i8, ptr %.013895248.us.i, i64 8
  %scevgep5790.i = getelementptr i8, ptr %scevgep5789.i.a, i64 %i.fen ; 2 uses
  %i.fih = add nuw nsw i32 %.013885249.us.i, 8    ; 2 uses
  %i.fii = or disjoint i32 %i.fih, 7
  %i.fij = icmp slt i32 %i.fii, %i.fdp
  br i1 %i.fij, label %_ZN4ncnn3MatD2Ev.exit1920.us.i, label %._crit_edge5250.loopexit5320.i, !llvm.loop !288

._crit_edge5250.loopexit.i:                       ; preds = %._crit_edge5242.split.us.us.us.i
  %i.fik = and i32 %i.fdp, 2147483640
  br label %._crit_edge5250.i

._crit_edge5250.loopexit5320.i:                   ; preds = %._crit_edge5242.split.us5262.i
  %i.fil = and i32 %i.fdp, 2147483640
  br label %._crit_edge5250.i

._crit_edge5250.i:                                ; preds = %._crit_edge5250.loopexit5320.i, %._crit_edge5250.loopexit.i, %_ZN4ncnn3MatD2Ev.exit1920.preheader.i, %_ZN4ncnn3MatD2Ev.exit1921.i
  %i.fim = phi <4 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1921.i ], [ %.lcssa1016, %._crit_edge5250.loopexit.i ], [ %.lcssa1015, %._crit_edge5250.loopexit5320.i ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1920.preheader.i ]
  %.01389.lcssa.i = phi ptr [ %i.dub, %_ZN4ncnn3MatD2Ev.exit1921.i ], [ %scevgep5797.i, %._crit_edge5250.loopexit.i ], [ %scevgep5790.i, %._crit_edge5250.loopexit5320.i ], [ %i.dub, %_ZN4ncnn3MatD2Ev.exit1920.preheader.i ] ; 3 uses
  %.01388.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1921.i ], [ %i.fik, %._crit_edge5250.loopexit.i ], [ %i.fil, %._crit_edge5250.loopexit5320.i ], [ %i.fej, %_ZN4ncnn3MatD2Ev.exit1920.preheader.i ] ; 6 uses
  %i.fin = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fim) ; 3 uses
  %i.fio = or disjoint i32 %.01388.lcssa.i, 1
  %i.fip = icmp slt i32 %i.fio, %i.fdp
  br i1 %i.fip, label %_ZN4ncnn3MatD2Ev.exit1919.lr.ph.i, label %.preheader.i

_ZN4ncnn3MatD2Ev.exit1919.lr.ph.i:                ; preds = %._crit_edge5250.i
  %i.fiq = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !289
  %i.fir = load ptr, ptr %0, align 8, !tbaa !9, !noalias !289
  %i.fis = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !289
  %i.fit = load i64, ptr %i.arr, align 8, !tbaa !19, !noalias !289 ; 2 uses
  %factor.op.mul5285.i = mul i64 %i.fit, %i.fis
  %i.fiu = sext i32 %i.fiq to i64
  %i.fiv = load i32, ptr %i.b, align 4, !tbaa !92
  %i.fiw = mul nsw i32 %i.fiv, %i.fdn
  %i.fix = sext i32 %i.fiw to i64
  %i.fiy = mul i64 %i.fit, %i.fiu
  %i.fiz = mul i64 %i.fiy, %i.fix
  %invariant.gep5287.i = getelementptr i8, ptr %i.fir, i64 %i.fiz
  %i.fja = load i32, ptr %i.a, align 4, !tbaa !92
  %i.fjb = mul nsw i32 %i.fja, %i.fdo
  %i.fjc = sext i32 %i.fjb to i64
  %invariant.gep5288.i = getelementptr i8, ptr %invariant.gep5287.i, i64 %i.fjc
  %i.fjd = load i32, ptr %i.f, align 4, !tbaa !92 ; 5 uses
  %i.fje = icmp sgt i32 %i.fjd, 0
  %i.fjf = load ptr, ptr %i.g, align 8            ; 25 uses
  br i1 %i.fje, label %_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit1919.preheader.i

_ZN4ncnn3MatD2Ev.exit1919.preheader.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit1919.lr.ph.i
  %i.fjg = or disjoint i32 %.01388.lcssa.i, 2
  %16 = or disjoint i32 %.01388.lcssa.i, 3
  %17 = call i32 @llvm.umax.i32(i32 %i.fdp, i32 %16)
  %reass.sub161 = sub nsw i32 %17, %.01388.lcssa.i
  %i.fjh = and i32 %reass.sub161, -2
  %18 = add i32 %i.fjh, -2
  %i.fji = add i32 %i.fjg, %18
  br label %.preheader.i

_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i:         ; preds = %_ZN4ncnn3MatD2Ev.exit1919.lr.ph.i
  %i.fjj = add nsw i32 %i.fjd, -1
  %i.fjk = zext nneg i32 %i.fjj to i64
  %i.fjl = shl nuw nsw i64 %i.fjk, 1
  %i.fjm = zext nneg i32 %.01388.lcssa.i to i64
  %wide.trip.count5807.i = zext nneg i32 %i.fjd to i64 ; 6 uses
  %min.iters.check843.a = icmp ult i32 %i.fjd, 8
  %min.iters.check845 = icmp ult i32 %i.fjd, 16
  %i.fjn = and i64 %wide.trip.count5807.i, 8
  %n.vec847 = and i64 %wide.trip.count5807.i, 2147483632 ; 5 uses
  %i.fjo = shl nuw nsw i64 %n.vec847, 1
  %cmp.n863 = icmp eq i64 %n.vec847, %wide.trip.count5807.i
  %min.epilog.iters.check870.not.not = icmp eq i64 %i.fjn, 0
  %n.vec872 = and i64 %wide.trip.count5807.i, 2147483640 ; 4 uses
  %i.fjp = shl nuw nsw i64 %n.vec872, 1
  %cmp.n882 = icmp eq i64 %n.vec872, %wide.trip.count5807.i
  br label %iter.check867

iter.check867:                                    ; preds = %._crit_edge5276.us.i, %_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i
  %indvars.iv5809.i = phi i64 [ %i.fjm, %_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i ], [ %indvars.iv.next5810.i, %._crit_edge5276.us.i ] ; 2 uses
  %.213915280.us.i = phi ptr [ %.01389.lcssa.i, %_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i ], [ %scevgep5805.i, %._crit_edge5276.us.i ] ; 7 uses
  %.013925279.us.i = phi i32 [ %i.fin, %_ZN4ncnn3MatD2Ev.exit1919.us.preheader.i ], [ %.lcssa518.a, %._crit_edge5276.us.i ] ; 3 uses
  %.reass5286.us.i = mul i64 %factor.op.mul5285.i, %indvars.iv5809.i
  %gep5289.us.i = getelementptr i8, ptr %invariant.gep5288.i, i64 %.reass5286.us.i ; 25 uses
  br i1 %min.iters.check843.a, label %vec.epilog.scalar.ph868.preheader, label %vector.main.loop.iter.check844

vector.main.loop.iter.check844:                   ; preds = %iter.check867
  br i1 %min.iters.check845, label %vec.epilog.ph871, label %vector.ph846

vector.ph846:                                     ; preds = %vector.main.loop.iter.check844
  %i.fjq = getelementptr i8, ptr %.213915280.us.i, i64 %i.fjo
  %i.fjr = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.013925279.us.i, i64 0
  br label %vector.body848

vector.body848:                                   ; preds = %vector.body848, %vector.ph846
  %index849 = phi i64 [ 0, %vector.ph846 ], [ %index.next860, %vector.body848 ] ; 18 uses
  %vec.phi850 = phi <8 x i32> [ %i.fjr, %vector.ph846 ], [ %i.fql, %vector.body848 ]
  %vec.phi851 = phi <8 x i32> [ zeroinitializer, %vector.ph846 ], [ %i.fqm, %vector.body848 ]
  %i.fjs = shl i64 %index849, 1                   ; 2 uses
  %next.gep852 = getelementptr i8, ptr %.213915280.us.i, i64 %i.fjs
  %i.fjt = getelementptr i8, ptr %.213915280.us.i, i64 %i.fjs
  %next.gep853 = getelementptr i8, ptr %i.fjt, i64 16
  %i.fju = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fjv = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fjw = getelementptr inbounds nuw i8, ptr %i.fjv, i64 4
  %i.fjx = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fjy = getelementptr inbounds nuw i8, ptr %i.fjx, i64 8
  %i.fjz = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fka = getelementptr inbounds nuw i8, ptr %i.fjz, i64 12
  %i.fkb = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkc = getelementptr inbounds nuw i8, ptr %i.fkb, i64 16
  %i.fkd = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fke = getelementptr inbounds nuw i8, ptr %i.fkd, i64 20
  %i.fkf = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkg = getelementptr inbounds nuw i8, ptr %i.fkf, i64 24
  %i.fkh = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fki = getelementptr inbounds nuw i8, ptr %i.fkh, i64 28
  %i.fkj = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fkj, i64 32
  %i.fkl = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.fkl, i64 36
  %i.fkn = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fko = getelementptr inbounds nuw i8, ptr %i.fkn, i64 40
  %i.fkp = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkq = getelementptr inbounds nuw i8, ptr %i.fkp, i64 44
  %i.fkr = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fks = getelementptr inbounds nuw i8, ptr %i.fkr, i64 48
  %i.fkt = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fku = getelementptr inbounds nuw i8, ptr %i.fkt, i64 52
  %i.fkv = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.fkv, i64 56
  %i.fkx = getelementptr inbounds nuw [4 x i8], ptr %i.fjf, i64 %index849
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fkx, i64 60
  %i.fkz = load i32, ptr %i.fju, align 4, !tbaa !92
  %i.fla = load i32, ptr %i.fjw, align 4, !tbaa !92
  %i.flb = load i32, ptr %i.fjy, align 4, !tbaa !92
  %i.flc = load i32, ptr %i.fka, align 4, !tbaa !92
  %i.fld = load i32, ptr %i.fkc, align 4, !tbaa !92
  %i.fle = load i32, ptr %i.fke, align 4, !tbaa !92
  %i.flf = load i32, ptr %i.fkg, align 4, !tbaa !92
  %i.flg = load i32, ptr %i.fki, align 4, !tbaa !92
  %i.flh = load i32, ptr %i.fkk, align 4, !tbaa !92
  %i.fli = load i32, ptr %i.fkm, align 4, !tbaa !92
  %i.flj = load i32, ptr %i.fko, align 4, !tbaa !92
  %i.flk = load i32, ptr %i.fkq, align 4, !tbaa !92
  %i.fll = load i32, ptr %i.fks, align 4, !tbaa !92
  %i.flm = load i32, ptr %i.fku, align 4, !tbaa !92
  %i.fln = load i32, ptr %i.fkw, align 4, !tbaa !92
  %i.flo = load i32, ptr %i.fky, align 4, !tbaa !92
  %i.flp = sext i32 %i.fkz to i64
  %i.flq = sext i32 %i.fla to i64
  %i.flr = sext i32 %i.flb to i64
  %i.fls = sext i32 %i.flc to i64
  %i.flt = sext i32 %i.fld to i64
  %i.flu = sext i32 %i.fle to i64
  %i.flv = sext i32 %i.flf to i64
  %i.flw = sext i32 %i.flg to i64
  %i.flx = sext i32 %i.flh to i64
  %i.fly = sext i32 %i.fli to i64
  %i.flz = sext i32 %i.flj to i64
  %i.fma = sext i32 %i.flk to i64
  %i.fmb = sext i32 %i.fll to i64
  %i.fmc = sext i32 %i.flm to i64
  %i.fmd = sext i32 %i.fln to i64
  %i.fme = sext i32 %i.flo to i64
  %i.fmf = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flp ; 2 uses
  %i.fmg = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flq ; 2 uses
  %i.fmh = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flr ; 2 uses
  %i.fmi = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fls ; 2 uses
  %i.fmj = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flt ; 2 uses
  %i.fmk = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flu ; 2 uses
  %i.fml = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flv ; 2 uses
  %i.fmm = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flw ; 2 uses
  %i.fmn = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flx ; 2 uses
  %i.fmo = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fly ; 2 uses
  %i.fmp = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.flz ; 2 uses
  %i.fmq = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fma ; 2 uses
  %i.fmr = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fmb ; 2 uses
  %i.fms = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fmc ; 2 uses
  %i.fmt = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fmd ; 2 uses
  %i.fmu = getelementptr inbounds i8, ptr %gep5289.us.i, i64 %i.fme ; 2 uses
  %i.fmv = load i8, ptr %i.fmf, align 1, !tbaa !20
  %i.fmw = load i8, ptr %i.fmg, align 1, !tbaa !20
  %i.fmx = load i8, ptr %i.fmh, align 1, !tbaa !20
  %i.fmy = load i8, ptr %i.fmi, align 1, !tbaa !20
  %i.fmz = load i8, ptr %i.fmj, align 1, !tbaa !20
  %i.fna = load i8, ptr %i.fmk, align 1, !tbaa !20
  %i.fnb = load i8, ptr %i.fml, align 1, !tbaa !20
  %i.fnc = load i8, ptr %i.fmm, align 1, !tbaa !20
  %i.fnd = insertelement <8 x i8> poison, i8 %i.fmv, i64 0
  %i.fne = insertelement <8 x i8> %i.fnd, i8 %i.fmw, i64 1
  %i.fnf = insertelement <8 x i8> %i.fne, i8 %i.fmx, i64 2
  %i.fng = insertelement <8 x i8> %i.fnf, i8 %i.fmy, i64 3
  %i.fnh = insertelement <8 x i8> %i.fng, i8 %i.fmz, i64 4
  %i.fni = insertelement <8 x i8> %i.fnh, i8 %i.fna, i64 5
  %i.fnj = insertelement <8 x i8> %i.fni, i8 %i.fnb, i64 6
  %i.fnk = insertelement <8 x i8> %i.fnj, i8 %i.fnc, i64 7
  %i.fnl = load i8, ptr %i.fmn, align 1, !tbaa !20
  %i.fnm = load i8, ptr %i.fmo, align 1, !tbaa !20
  %i.fnn = load i8, ptr %i.fmp, align 1, !tbaa !20
  %i.fno = load i8, ptr %i.fmq, align 1, !tbaa !20
  %i.fnp = load i8, ptr %i.fmr, align 1, !tbaa !20
  %i.fnq = load i8, ptr %i.fms, align 1, !tbaa !20
  %i.fnr = load i8, ptr %i.fmt, align 1, !tbaa !20
  %i.fns = load i8, ptr %i.fmu, align 1, !tbaa !20
  %i.fnt = insertelement <8 x i8> poison, i8 %i.fnl, i64 0
  %i.fnu = insertelement <8 x i8> %i.fnt, i8 %i.fnm, i64 1
  %i.fnv = insertelement <8 x i8> %i.fnu, i8 %i.fnn, i64 2
  %i.fnw = insertelement <8 x i8> %i.fnv, i8 %i.fno, i64 3
  %i.fnx = insertelement <8 x i8> %i.fnw, i8 %i.fnp, i64 4
  %i.fny = insertelement <8 x i8> %i.fnx, i8 %i.fnq, i64 5
  %i.fnz = insertelement <8 x i8> %i.fny, i8 %i.fnr, i64 6
  %i.foa = insertelement <8 x i8> %i.fnz, i8 %i.fns, i64 7
  %i.fob = sext <8 x i8> %i.fnk to <8 x i32>
  %i.foc = sext <8 x i8> %i.foa to <8 x i32>
  %wide.vec854 = load <16 x i8>, ptr %next.gep852, align 1, !tbaa !20 ; 2 uses
  %strided.vec855 = shufflevector <16 x i8> %wide.vec854, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec856.a = shufflevector <16 x i8> %wide.vec854, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec857 = load <16 x i8>, ptr %next.gep853, align 1, !tbaa !20 ; 2 uses
  %strided.vec858 = shufflevector <16 x i8> %wide.vec857, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec859 = shufflevector <16 x i8> %wide.vec857, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fod = sext <8 x i8> %strided.vec855 to <8 x i32>
  %i.foe = sext <8 x i8> %strided.vec858 to <8 x i32>
  %i.fof = mul nsw <8 x i32> %i.fod, %i.fob
  %i.fog = mul nsw <8 x i32> %i.foe, %i.foc
  %i.foh = add <8 x i32> %i.fof, %vec.phi850
  %i.foi = add <8 x i32> %i.fog, %vec.phi851
  %i.foj = getelementptr inbounds nuw i8, ptr %i.fmf, i64 %i.v
  %i.fok = getelementptr inbounds nuw i8, ptr %i.fmg, i64 %i.v
  %i.fol = getelementptr inbounds nuw i8, ptr %i.fmh, i64 %i.v
  %i.fom = getelementptr inbounds nuw i8, ptr %i.fmi, i64 %i.v
  %i.fon = getelementptr inbounds nuw i8, ptr %i.fmj, i64 %i.v
  %i.foo = getelementptr inbounds nuw i8, ptr %i.fmk, i64 %i.v
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fml, i64 %i.v
  %i.foq = getelementptr inbounds nuw i8, ptr %i.fmm, i64 %i.v
  %i.for = getelementptr inbounds nuw i8, ptr %i.fmn, i64 %i.v
  %i.fos = getelementptr inbounds nuw i8, ptr %i.fmo, i64 %i.v
  %i.fot = getelementptr inbounds nuw i8, ptr %i.fmp, i64 %i.v
  %i.fou = getelementptr inbounds nuw i8, ptr %i.fmq, i64 %i.v
  %i.fov = getelementptr inbounds nuw i8, ptr %i.fmr, i64 %i.v
  %i.fow = getelementptr inbounds nuw i8, ptr %i.fms, i64 %i.v
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fmt, i64 %i.v
  %i.foy = getelementptr inbounds nuw i8, ptr %i.fmu, i64 %i.v
  %i.foz = load i8, ptr %i.foj, align 1, !tbaa !20
  %i.fpa = load i8, ptr %i.fok, align 1, !tbaa !20
  %i.fpb = load i8, ptr %i.fol, align 1, !tbaa !20
  %i.fpc = load i8, ptr %i.fom, align 1, !tbaa !20
  %i.fpd = load i8, ptr %i.fon, align 1, !tbaa !20
  %i.fpe = load i8, ptr %i.foo, align 1, !tbaa !20
  %i.fpf = load i8, ptr %i.fop, align 1, !tbaa !20
  %i.fpg = load i8, ptr %i.foq, align 1, !tbaa !20
  %i.fph = insertelement <8 x i8> poison, i8 %i.foz, i64 0
  %i.fpi = insertelement <8 x i8> %i.fph, i8 %i.fpa, i64 1
  %i.fpj = insertelement <8 x i8> %i.fpi, i8 %i.fpb, i64 2
  %i.fpk = insertelement <8 x i8> %i.fpj, i8 %i.fpc, i64 3
  %i.fpl = insertelement <8 x i8> %i.fpk, i8 %i.fpd, i64 4
  %i.fpm = insertelement <8 x i8> %i.fpl, i8 %i.fpe, i64 5
  %i.fpn = insertelement <8 x i8> %i.fpm, i8 %i.fpf, i64 6
end_hunk_3
begin_hunk_4_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.gcv = load i8, ptr %i.gbh, align 1, !tbaa !20
  %i.gcw = insertelement <8 x i8> poison, i8 %i.gco, i64 0
  %i.gcx = insertelement <8 x i8> %i.gcw, i8 %i.gcp, i64 1
  %i.gcy = insertelement <8 x i8> %i.gcx, i8 %i.gcq, i64 2
  %i.gcz = insertelement <8 x i8> %i.gcy, i8 %i.gcr, i64 3
  %i.gda = insertelement <8 x i8> %i.gcz, i8 %i.gcs, i64 4
  %i.gdb = insertelement <8 x i8> %i.gda, i8 %i.gct, i64 5
  %i.gdc = insertelement <8 x i8> %i.gdb, i8 %i.gcu, i64 6
  %i.gdd = insertelement <8 x i8> %i.gdc, i8 %i.gcv, i64 7
  %i.gde = load i8, ptr %i.gbi, align 1, !tbaa !20
  %i.gdf = load i8, ptr %i.gbj, align 1, !tbaa !20
  %i.gdg = load i8, ptr %i.gbk, align 1, !tbaa !20
  %i.gdh = load i8, ptr %i.gbl, align 1, !tbaa !20
  %i.gdi = load i8, ptr %i.gbm, align 1, !tbaa !20
  %i.gdj = load i8, ptr %i.gbn, align 1, !tbaa !20
  %i.gdk = load i8, ptr %i.gbo, align 1, !tbaa !20
  %i.gdl = load i8, ptr %i.gbp, align 1, !tbaa !20
  %i.gdm = insertelement <8 x i8> poison, i8 %i.gde, i64 0
  %i.gdn = insertelement <8 x i8> %i.gdm, i8 %i.gdf, i64 1
  %i.gdo = insertelement <8 x i8> %i.gdn, i8 %i.gdg, i64 2
  %i.gdp = insertelement <8 x i8> %i.gdo, i8 %i.gdh, i64 3
  %i.gdq = insertelement <8 x i8> %i.gdp, i8 %i.gdi, i64 4
  %i.gdr = insertelement <8 x i8> %i.gdq, i8 %i.gdj, i64 5
  %i.gds = insertelement <8 x i8> %i.gdr, i8 %i.gdk, i64 6
  %i.gdt = insertelement <8 x i8> %i.gds, i8 %i.gdl, i64 7
  %i.gdu = load i8, ptr %i.gbq, align 1, !tbaa !20
  %i.gdv = load i8, ptr %i.gbr, align 1, !tbaa !20
  %i.gdw = load i8, ptr %i.gbs, align 1, !tbaa !20
  %i.gdx = load i8, ptr %i.gbt, align 1, !tbaa !20
  %i.gdy = load i8, ptr %i.gbu, align 1, !tbaa !20
  %i.gdz = load i8, ptr %i.gbv, align 1, !tbaa !20
  %i.gea = load i8, ptr %i.gbw, align 1, !tbaa !20
  %i.geb = load i8, ptr %i.gbx, align 1, !tbaa !20
  %i.gec = insertelement <8 x i8> poison, i8 %i.gdu, i64 0
  %i.ged = insertelement <8 x i8> %i.gec, i8 %i.gdv, i64 1
  %i.gee = insertelement <8 x i8> %i.ged, i8 %i.gdw, i64 2
  %i.gef = insertelement <8 x i8> %i.gee, i8 %i.gdx, i64 3
  %i.geg = insertelement <8 x i8> %i.gef, i8 %i.gdy, i64 4
  %i.geh = insertelement <8 x i8> %i.geg, i8 %i.gdz, i64 5
  %i.gei = insertelement <8 x i8> %i.geh, i8 %i.gea, i64 6
  %i.gej = insertelement <8 x i8> %i.gei, i8 %i.geb, i64 7
  %i.gek = sext <8 x i8> %i.gcn to <8 x i32>
  %i.gel = sext <8 x i8> %i.gdd to <8 x i32>
  %i.gem = sext <8 x i8> %i.gdt to <8 x i32>
  %i.gen = sext <8 x i8> %i.gej to <8 x i32>
  %i.geo = getelementptr i8, ptr %next.gep812, i64 8
  %i.gep = getelementptr i8, ptr %next.gep812, i64 16
  %i.geq = getelementptr i8, ptr %next.gep812, i64 24
  %wide.load = load <8 x i8>, ptr %next.gep812, align 1, !tbaa !20
  %wide.load813.a = load <8 x i8>, ptr %i.geo, align 1, !tbaa !20
  %wide.load814 = load <8 x i8>, ptr %i.gep, align 1, !tbaa !20
  %wide.load815 = load <8 x i8>, ptr %i.geq, align 1, !tbaa !20
  %i.ger = sext <8 x i8> %wide.load to <8 x i32>
  %i.ges = sext <8 x i8> %wide.load813.a to <8 x i32>
  %i.get = sext <8 x i8> %wide.load814 to <8 x i32>
  %i.geu = sext <8 x i8> %wide.load815 to <8 x i32>
  %i.gev = mul nsw <8 x i32> %i.ger, %i.gek
  %i.gew = mul nsw <8 x i32> %i.ges, %i.gel
  %i.gex = mul nsw <8 x i32> %i.get, %i.gem
  %i.gey = mul nsw <8 x i32> %i.geu, %i.gen
  %i.gez = add <8 x i32> %i.gev, %vec.phi808.a    ; 2 uses
  %i.gfa = add <8 x i32> %i.gew, %vec.phi809.a    ; 2 uses
  %i.gfb = add <8 x i32> %i.gex, %vec.phi810      ; 2 uses
  %i.gfc = add <8 x i32> %i.gey, %vec.phi811      ; 2 uses
  %index.next816 = add nuw i64 %index807, 32      ; 2 uses
  %i.gfd = icmp eq i64 %index.next816, %n.vec805
  br i1 %i.gfd, label %middle.block817, label %vector.body806, !llvm.loop !299

middle.block817:                                  ; preds = %vector.body806
  %bin.rdx818.a = add <8 x i32> %i.gfa, %i.gez
  %bin.rdx819 = add <8 x i32> %i.gfb, %bin.rdx818.a
  %bin.rdx820 = add <8 x i32> %i.gfc, %bin.rdx819
  %i.gfe = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx820) ; 3 uses
  br i1 %cmp.n821, label %._crit_edge5297.us.i, label %vec.epilog.iter.check827

vec.epilog.iter.check827:                         ; preds = %middle.block817
  br i1 %min.epilog.iters.check828, label %vec.epilog.scalar.ph826.preheader, label %vec.epilog.ph829, !prof !60

vec.epilog.ph829:                                 ; preds = %vector.main.loop.iter.check802, %vec.epilog.iter.check827
  %vec.epilog.resume.val822 = phi i64 [ %n.vec805, %vec.epilog.iter.check827 ], [ 0, %vector.main.loop.iter.check802 ]
  %bc.merge.rdx824 = phi i32 [ %i.gfe, %vec.epilog.iter.check827 ], [ %.213945300.us.i, %vector.main.loop.iter.check802 ]
  %i.gff = getelementptr i8, ptr %.45301.us.i, i64 %n.vec830
  %i.gfg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx824, i64 0
  br label %vec.epilog.vector.body831

vec.epilog.vector.body831:                        ; preds = %vec.epilog.vector.body831, %vec.epilog.ph829
  %index832 = phi i64 [ %vec.epilog.resume.val822, %vec.epilog.ph829 ], [ %index.next836, %vec.epilog.vector.body831 ] ; 10 uses
  %vec.phi833 = phi <8 x i32> [ %i.gfg, %vec.epilog.ph829 ], [ %i.ghn, %vec.epilog.vector.body831 ]
  %next.gep834 = getelementptr i8, ptr %.45301.us.i, i64 %index832
  %i.gfh = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfi = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gfi, i64 4
  %i.gfk = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfl = getelementptr inbounds nuw i8, ptr %i.gfk, i64 8
  %i.gfm = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.gfm, i64 12
  %i.gfo = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.gfo, i64 16
  %i.gfq = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.gfq, i64 20
  %i.gfs = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gft = getelementptr inbounds nuw i8, ptr %i.gfs, i64 24
  %i.gfu = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %index832
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.gfu, i64 28
  %i.gfw = load i32, ptr %i.gfh, align 4, !tbaa !92
  %i.gfx = load i32, ptr %i.gfj, align 4, !tbaa !92
  %i.gfy = load i32, ptr %i.gfl, align 4, !tbaa !92
  %i.gfz = load i32, ptr %i.gfn, align 4, !tbaa !92
  %i.gga = load i32, ptr %i.gfp, align 4, !tbaa !92
  %i.ggb = load i32, ptr %i.gfr, align 4, !tbaa !92
  %i.ggc = load i32, ptr %i.gft, align 4, !tbaa !92
  %i.ggd = load i32, ptr %i.gfv, align 4, !tbaa !92
  %i.gge = sext i32 %i.gfw to i64
  %i.ggf = sext i32 %i.gfx to i64
  %i.ggg = sext i32 %i.gfy to i64
  %i.ggh = sext i32 %i.gfz to i64
  %i.ggi = sext i32 %i.gga to i64
  %i.ggj = sext i32 %i.ggb to i64
  %i.ggk = sext i32 %i.ggc to i64
  %i.ggl = sext i32 %i.ggd to i64
  %i.ggm = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.gge
  %i.ggn = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggf
  %i.ggo = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggg
  %i.ggp = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggh
  %i.ggq = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggi
  %i.ggr = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggj
  %i.ggs = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggk
  %i.ggt = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ggl
  %i.ggu = load i8, ptr %i.ggm, align 1, !tbaa !20
  %i.ggv = load i8, ptr %i.ggn, align 1, !tbaa !20
  %i.ggw = load i8, ptr %i.ggo, align 1, !tbaa !20
  %i.ggx = load i8, ptr %i.ggp, align 1, !tbaa !20
  %i.ggy = load i8, ptr %i.ggq, align 1, !tbaa !20
  %i.ggz = load i8, ptr %i.ggr, align 1, !tbaa !20
  %i.gha = load i8, ptr %i.ggs, align 1, !tbaa !20
  %i.ghb = load i8, ptr %i.ggt, align 1, !tbaa !20
  %i.ghc = insertelement <8 x i8> poison, i8 %i.ggu, i64 0
  %i.ghd = insertelement <8 x i8> %i.ghc, i8 %i.ggv, i64 1
  %i.ghe = insertelement <8 x i8> %i.ghd, i8 %i.ggw, i64 2
  %i.ghf = insertelement <8 x i8> %i.ghe, i8 %i.ggx, i64 3
  %i.ghg = insertelement <8 x i8> %i.ghf, i8 %i.ggy, i64 4
  %i.ghh = insertelement <8 x i8> %i.ghg, i8 %i.ggz, i64 5
  %i.ghi = insertelement <8 x i8> %i.ghh, i8 %i.gha, i64 6
  %i.ghj = insertelement <8 x i8> %i.ghi, i8 %i.ghb, i64 7
  %i.ghk = sext <8 x i8> %i.ghj to <8 x i32>
  %wide.load835 = load <8 x i8>, ptr %next.gep834, align 1, !tbaa !20
  %i.ghl = sext <8 x i8> %wide.load835 to <8 x i32>
  %i.ghm = mul nsw <8 x i32> %i.ghl, %i.ghk
  %i.ghn = add <8 x i32> %i.ghm, %vec.phi833      ; 2 uses
  %index.next836 = add nuw i64 %index832, 8       ; 2 uses
  %i.gho = icmp eq i64 %index.next836, %n.vec830
  br i1 %i.gho, label %vec.epilog.middle.block837, label %vec.epilog.vector.body831, !llvm.loop !300

vec.epilog.middle.block837:                       ; preds = %vec.epilog.vector.body831
  %i.ghp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ghn) ; 2 uses
  br i1 %cmp.n838, label %._crit_edge5297.us.i, label %vec.epilog.scalar.ph826.preheader

vec.epilog.scalar.ph826.preheader:                ; preds = %iter.check825, %vec.epilog.iter.check827, %vec.epilog.middle.block837
  %indvars.iv5812.i.ph = phi i64 [ 0, %iter.check825 ], [ %n.vec805, %vec.epilog.iter.check827 ], [ %n.vec830, %vec.epilog.middle.block837 ]
  %.55294.us.i.ph = phi ptr [ %.45301.us.i, %iter.check825 ], [ %i.fvt, %vec.epilog.iter.check827 ], [ %i.gff, %vec.epilog.middle.block837 ]
  %.313955293.us.i.ph = phi i32 [ %.213945300.us.i, %iter.check825 ], [ %i.gfe, %vec.epilog.iter.check827 ], [ %i.ghp, %vec.epilog.middle.block837 ]
  br label %vec.epilog.scalar.ph826

vec.epilog.scalar.ph826:                          ; preds = %vec.epilog.scalar.ph826.preheader, %vec.epilog.scalar.ph826
  %indvars.iv5812.i = phi i64 [ %indvars.iv.next5813.i, %vec.epilog.scalar.ph826 ], [ %indvars.iv5812.i.ph, %vec.epilog.scalar.ph826.preheader ] ; 2 uses
  %.55294.us.i = phi ptr [ %i.gia, %vec.epilog.scalar.ph826 ], [ %.55294.us.i.ph, %vec.epilog.scalar.ph826.preheader ] ; 2 uses
  %.313955293.us.i = phi i32 [ %i.ghz, %vec.epilog.scalar.ph826 ], [ %.313955293.us.i.ph, %vec.epilog.scalar.ph826.preheader ]
  %i.ghq = getelementptr inbounds nuw [4 x i8], ptr %i.fvp, i64 %indvars.iv5812.i
  %i.ghr = load i32, ptr %i.ghq, align 4, !tbaa !92
  %i.ghs = sext i32 %i.ghr to i64
  %i.ght = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.ghs
  %i.ghu = load i8, ptr %i.ght, align 1, !tbaa !20
  %i.ghv = sext i8 %i.ghu to i32
  %i.ghw = load i8, ptr %.55294.us.i, align 1, !tbaa !20
  %i.ghx = sext i8 %i.ghw to i32
  %i.ghy = mul nsw i32 %i.ghx, %i.ghv
  %i.ghz = add nsw i32 %i.ghy, %.313955293.us.i   ; 2 uses
  %i.gia = getelementptr inbounds nuw i8, ptr %.55294.us.i, i64 1
  %indvars.iv.next5813.i = add nuw nsw i64 %indvars.iv5812.i, 1 ; 2 uses
  %exitcond5818.not.i = icmp eq i64 %indvars.iv.next5813.i, %i.fvr
  br i1 %exitcond5818.not.i, label %._crit_edge5297.us.i, label %vec.epilog.scalar.ph826, !llvm.loop !301

._crit_edge5297.us.i:                             ; preds = %vec.epilog.scalar.ph826, %vec.epilog.middle.block837, %middle.block817
  %.lcssa520 = phi i32 [ %i.ghp, %vec.epilog.middle.block837 ], [ %i.gfe, %middle.block817 ], [ %i.ghz, %vec.epilog.scalar.ph826 ] ; 2 uses
  %i.gib = getelementptr i8, ptr %.45301.us.i, i64 %i.fvr
  %indvars.iv.next5820.i = add nuw nsw i64 %indvars.iv5819.i, 1 ; 2 uses
  %i.gic = trunc nuw i64 %indvars.iv.next5820.i to i32
  %i.gid = icmp sgt i32 %i.fdp, %i.gic
  br i1 %i.gid, label %iter.check825, label %._crit_edge5303.i, !llvm.loop !302

._crit_edge5303.i:                                ; preds = %._crit_edge5297.us.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, %.preheader.i
  %.21394.lcssa.i = phi i32 [ %.01392.lcssa.i, %.preheader.i ], [ %.01392.lcssa.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %.lcssa520, %._crit_edge5297.us.i ]
  store i32 %.21394.lcssa.i, ptr %.215975311.i, align 4, !tbaa !92
  %i.gie = getelementptr inbounds nuw i8, ptr %.215975311.i, i64 4
  %i.gif = add nuw nsw i32 %.215945312.i, 1       ; 2 uses
  %exitcond5822.not.i = icmp eq i32 %i.gif, %i.arn
  br i1 %exitcond5822.not.i, label %._crit_edge5313.i, label %_ZN4ncnn3MatD2Ev.exit1921.i, !llvm.loop !303

._crit_edge5313.i:                                ; preds = %._crit_edge5303.i, %.preheader4300.i
  %indvars.iv.next5824.i = add nsw i64 %indvars.iv5823.i, 1 ; 2 uses
  %19 = icmp slt i64 %indvars.iv.next5824.i, %i.arz
  br i1 %19, label %.noexc.i, label %._crit_edge5315.i, !llvm.loop !304

_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit: ; preds = %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #2

declare void @_ZN4ncnn31convolution_packed_int8_avxvnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not1900 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1900, label %._crit_edge1902, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge1899
  %.01901 = phi i32 [ %i.k, %.noexc.lr.ph ], [ %i.aqj, %._crit_edge1899 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !92
  %i.v = shl nsw i32 %.01901, 3
  %i.w = add nsw i32 %i.u, %i.v                   ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !93   ; 15 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !96
  %i.z = load i64, ptr %i.n, align 8, !tbaa !18
  %i.aa = load i32, ptr %6, align 4, !tbaa !92
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab                     ; 10 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %i.ae = load i32, ptr %7, align 4, !tbaa !92    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af                    ; 24 uses
  %i.ah = sdiv i32 %i.w, %i.ae
  %i.ai = load ptr, ptr %4, align 8, !tbaa !9, !noalias !305
  %i.aj = sext i32 %i.ah to i64
  %i.ak = mul i64 %i.ad, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !305
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = mul nsw i32 %i.y, %i.x                  ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit666.lr.ph, label %.preheader1555

_ZN4ncnn3MatD2Ev.exit666.lr.ph:                   ; preds = %.noexc
  %i.aq = sdiv i32 %i.w, 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = trunc i64 %i.ac to i32
  %i.at = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = mul <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx1544 = shl i64 %i.ag, 3
  %.idx1545 = mul i64 %i.ag, 12
  %.idx1546 = shl i64 %i.ag, 4
  %.idx1547 = mul i64 %i.ag, 20
  %.idx1548 = mul i64 %i.ag, 24
  %.idx1549 = mul i64 %i.ag, 28
  br label %_ZN4ncnn3MatD2Ev.exit666

.preheader1555:                                   ; preds = %bb.n, %.noexc
  %.0610.lcssa = phi i32 [ 0, %.noexc ], [ %i.sq, %bb.n ] ; 3 uses
  %.0604.lcssa = phi ptr [ %i.an, %.noexc ], [ %.3607, %bb.n ] ; 2 uses
  %i.aw = or disjoint i32 %.0610.lcssa, 1         ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %i.ao
  br i1 %i.ax, label %_ZN4ncnn3MatD2Ev.exit653.lr.ph, label %.preheader1554

_ZN4ncnn3MatD2Ev.exit653.lr.ph:                   ; preds = %.preheader1555
  %i.ay = sdiv i32 %i.w, 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = trunc i64 %i.ac to i32
  %i.bb = insertelement <8 x i32> poison, i32 %i.ba, i64 0
  %i.bc = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bd = mul <8 x i32> %i.bc, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx1538 = shl i64 %i.ag, 3
  %.idx1539 = mul i64 %i.ag, 12
  %.idx1540 = shl i64 %i.ag, 4
  %.idx1541 = mul i64 %i.ag, 20
  %.idx1542 = mul i64 %i.ag, 24
  %.idx1543 = mul i64 %i.ag, 28
  br label %_ZN4ncnn3MatD2Ev.exit653

_ZN4ncnn3MatD2Ev.exit666:                         ; preds = %_ZN4ncnn3MatD2Ev.exit666.lr.ph, %bb.n
  %.06041718 = phi ptr [ %i.an, %_ZN4ncnn3MatD2Ev.exit666.lr.ph ], [ %.3607, %bb.n ] ; 6 uses
  %.06101717 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit666.lr.ph ], [ %i.sq, %bb.n ] ; 6 uses
  %i.be = or disjoint i32 %.06101717, 3           ; 2 uses
  %i.bf = sdiv i32 %.06101717, %i.x               ; 3 uses
  %i.bg = or disjoint i32 %.06101717, 1           ; 2 uses
  %i.bh = sdiv i32 %i.bg, %i.x                    ; 3 uses
  %i.bi = or disjoint i32 %.06101717, 2           ; 2 uses
  %i.bj = sdiv i32 %i.bi, %i.x                    ; 3 uses
  %i.bk = sdiv i32 %i.be, %i.x                    ; 3 uses
  %i.bl = srem i32 %.06101717, %i.x               ; 3 uses
  %i.bm = srem i32 %i.bg, %i.x                    ; 3 uses
  %i.bn = srem i32 %i.bi, %i.x                    ; 3 uses
  %i.bo = srem i32 %i.be, %i.x                    ; 3 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !9, !noalias !308
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !308
  %i.br = mul i64 %i.bq, %i.ar
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !308
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %9, align 4, !tbaa !92    ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 7
  br i1 %i.bw, label %_ZN4ncnn3MatD2Ev.exit665.lr.ph, label %.preheader1553

_ZN4ncnn3MatD2Ev.exit665.lr.ph:                   ; preds = %_ZN4ncnn3MatD2Ev.exit666
  %i.bx = load i32, ptr %6, align 4, !tbaa !92    ; 5 uses
  %i.by = load i32, ptr %i.s, align 4, !tbaa !93, !noalias !311
  %i.bz = load ptr, ptr %5, align 8, !tbaa !9, !noalias !311 ; 4 uses
  %i.ca = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !311
  %i.cb = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !311 ; 2 uses
  %factor.op.mul = mul i64 %i.ca, %i.cb
  %i.cc = sext i32 %i.by to i64
  %i.cd = load i32, ptr %10, align 4, !tbaa !92   ; 4 uses
  %i.ce = mul nsw i32 %i.cd, %i.bf
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cb, %i.cc                    ; 4 uses
  %i.ch = mul i64 %i.cg, %i.cf
  %invariant.gep = getelementptr i8, ptr %i.bz, i64 %i.ch
  %i.ci = load i32, ptr %11, align 4, !tbaa !92   ; 4 uses
  %i.cj = mul i32 %i.bx, %i.bl
  %i.ck = mul i32 %i.cj, %i.ci
  %i.cl = sext i32 %i.ck to i64
  %invariant.gep1602 = getelementptr i8, ptr %invariant.gep, i64 %i.cl
  %i.cm = mul nsw i32 %i.cd, %i.bh
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cg, %i.cn
  %invariant.gep1606 = getelementptr i8, ptr %i.bz, i64 %i.co
  %i.cp = mul i32 %i.bx, %i.bm
  %i.cq = mul i32 %i.cp, %i.ci
  %i.cr = sext i32 %i.cq to i64
  %invariant.gep1607 = getelementptr i8, ptr %invariant.gep1606, i64 %i.cr
  %i.cs = mul nsw i32 %i.cd, %i.bj
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.cg, %i.ct
  %invariant.gep1611 = getelementptr i8, ptr %i.bz, i64 %i.cu
  %i.cv = mul i32 %i.bx, %i.bn
  %i.cw = mul i32 %i.cv, %i.ci
  %i.cx = sext i32 %i.cw to i64
  %invariant.gep1612 = getelementptr i8, ptr %invariant.gep1611, i64 %i.cx
  %i.cy = mul nsw i32 %i.cd, %i.bk
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul i64 %i.cg, %i.cz
  %invariant.gep1616 = getelementptr i8, ptr %i.bz, i64 %i.da
  %i.db = mul i32 %i.bx, %i.bo
  %i.dc = mul i32 %i.db, %i.ci
  %i.dd = sext i32 %i.dc to i64
  %invariant.gep1617 = getelementptr i8, ptr %invariant.gep1616, i64 %i.dd
  %i.de = load i32, ptr %12, align 4, !tbaa !92   ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0
  %i.dg = add i32 %i.de, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 6
  %wide.trip.count = zext nneg i32 %i.de to i64
  br label %_ZN4ncnn3MatD2Ev.exit665

.preheader1553.loopexit:                          ; preds = %._crit_edge
  %i.dj = and i32 %i.bv, 2147483640
  %.pre = load i32, ptr %9, align 4, !tbaa !92
  br label %.preheader1553

.preheader1553:                                   ; preds = %.preheader1553.loopexit, %_ZN4ncnn3MatD2Ev.exit666
  %i.dk = phi i32 [ %i.bv, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.pre, %.preheader1553.loopexit ] ; 5 uses
  %.01508.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11509.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %.01502.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11503.lcssa, %.preheader1553.loopexit ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.afv = srem i32 %.26121897, %i.x              ; 3 uses
  %i.afw = load ptr, ptr %8, align 8, !tbaa !9, !noalias !346
  %i.afx = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !346
  %i.afy = mul i64 %i.afx, %i.sv
  %i.afz = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !346
  %i.aga = mul i64 %i.afy, %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.aga ; 4 uses
  %i.agc = load i32, ptr %9, align 4, !tbaa !92   ; 11 uses
  %i.agd = icmp sgt i32 %i.agc, 7
  br i1 %i.agd, label %_ZN4ncnn3MatD2Ev.exit645.lr.ph, label %._crit_edge1825

_ZN4ncnn3MatD2Ev.exit645.lr.ph:                   ; preds = %_ZN4ncnn3MatD2Ev.exit646
  %i.age = load i32, ptr %6, align 4, !tbaa !92   ; 3 uses
  %i.agf = load i32, ptr %i.s, align 4, !tbaa !93, !noalias !349
  %i.agg = load ptr, ptr %5, align 8, !tbaa !9, !noalias !349
  %i.agh = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !349
  %i.agi = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !349 ; 2 uses
  %factor.op.mul1832 = mul i64 %i.agh, %i.agi     ; 2 uses
  %i.agj = sext i32 %i.agf to i64
  %i.agk = load i32, ptr %10, align 4, !tbaa !92
  %i.agl = mul nsw i32 %i.agk, %i.afu
  %i.agm = sext i32 %i.agl to i64
  %i.agn = mul i64 %i.agi, %i.agj
  %i.ago = mul i64 %i.agn, %i.agm
  %invariant.gep1834 = getelementptr i8, ptr %i.agg, i64 %i.ago
  %i.agp = load i32, ptr %11, align 4, !tbaa !92
  %i.agq = mul i32 %i.age, %i.afv
  %i.agr = mul i32 %i.agq, %i.agp
  %i.ags = sext i32 %i.agr to i64
  %invariant.gep1835 = getelementptr i8, ptr %invariant.gep1834, i64 %i.ags ; 2 uses
  %i.agt = load i32, ptr %12, align 4, !tbaa !92  ; 3 uses
  %i.agu = icmp sgt i32 %i.agt, 0
  br i1 %i.agu, label %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us, label %_ZN4ncnn3MatD2Ev.exit645.preheader

_ZN4ncnn3MatD2Ev.exit645.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit645.lr.ph
  %i.agv = and i32 %i.agc, 2147483640
  br label %._crit_edge1825

_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us:          ; preds = %_ZN4ncnn3MatD2Ev.exit645.lr.ph
  %i.agw = load ptr, ptr %13, align 8, !tbaa !97  ; 2 uses
  %i.agx = icmp eq i32 %i.age, 8
  %i.agy = add nsw i32 %i.agt, -1
  %i.agz = zext nneg i32 %i.agy to i64
  %i.aha = shl nuw nsw i64 %i.agz, 6              ; 2 uses
  %wide.trip.count2047 = zext nneg i32 %i.agt to i64 ; 2 uses
  br i1 %i.agx, label %_ZN4ncnn3MatD2Ev.exit645.us.us, label %_ZN4ncnn3MatD2Ev.exit645.us

_ZN4ncnn3MatD2Ev.exit645.us.us:                   ; preds = %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us, %._crit_edge1812.split.us.us.us
  %.06001824.us.us = phi i32 [ %i.ait, %._crit_edge1812.split.us.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ] ; 2 uses
  %.06011823.us.us = phi ptr [ %scevgep2045, %._crit_edge1812.split.us.us.us ], [ %i.agb, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ] ; 2 uses
  %i.ahb = phi <8 x i32> [ %i.air, %._crit_edge1812.split.us.us.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.ahc = phi <8 x i32> [ %i.aio, %._crit_edge1812.split.us.us.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.ahd = phi <8 x i32> [ %i.ail, %._crit_edge1812.split.us.us.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.ahe = phi <8 x i32> [ %i.aii, %._crit_edge1812.split.us.us.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.ahf = lshr exact i32 %.06001824.us.us, 3
  %i.ahg = zext nneg i32 %i.ahf to i64
  %.reass1833.us.us = mul i64 %factor.op.mul1832, %i.ahg
  %gep1836.us.us = getelementptr i8, ptr %invariant.gep1835, i64 %.reass1833.us.us
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZN4ncnn3MatD2Ev.exit645.us.us
  %indvars.iv2042 = phi i64 [ %indvars.iv.next2043, %bb.w ], [ 0, %_ZN4ncnn3MatD2Ev.exit645.us.us ] ; 2 uses
  %.16021809.us.us.us = phi ptr [ %i.ais, %bb.w ], [ %.06011823.us.us, %_ZN4ncnn3MatD2Ev.exit645.us.us ] ; 3 uses
  %i.ahh = phi <8 x i32> [ %i.air, %bb.w ], [ %i.ahb, %_ZN4ncnn3MatD2Ev.exit645.us.us ]
  %i.ahi = phi <8 x i32> [ %i.aio, %bb.w ], [ %i.ahc, %_ZN4ncnn3MatD2Ev.exit645.us.us ]
  %i.ahj = phi <8 x i32> [ %i.ail, %bb.w ], [ %i.ahd, %_ZN4ncnn3MatD2Ev.exit645.us.us ]
  %i.ahk = phi <8 x i32> [ %i.aii, %bb.w ], [ %i.ahe, %_ZN4ncnn3MatD2Ev.exit645.us.us ]
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv2042
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !92
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds i8, ptr %gep1836.us.us, i64 %i.ahn
  %i.ahp = load <8 x i8>, ptr %i.aho, align 1, !tbaa !20
  %i.ahq = sext <8 x i8> %i.ahp to <8 x i16>      ; 4 uses
  %i.ahr = load <4 x i64>, ptr %.16021809.us.us.us, align 32, !tbaa !20 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.16021809.us.us.us, i64 32
  %i.aht = load <4 x i64>, ptr %i.ahs, align 32, !tbaa !20 ; 2 uses
  %i.ahu = bitcast <4 x i64> %i.ahr to <32 x i8>
  %i.ahv = shufflevector <32 x i8> %i.ahu, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahw = sext <16 x i8> %i.ahv to <16 x i16>
  %i.ahx = bitcast <4 x i64> %i.ahr to <32 x i8>
  %i.ahy = shufflevector <32 x i8> %i.ahx, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahz = sext <16 x i8> %i.ahy to <16 x i16>
  %i.aia = bitcast <4 x i64> %i.aht to <32 x i8>
  %i.aib = shufflevector <32 x i8> %i.aia, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aic = sext <16 x i8> %i.aib to <16 x i16>
  %i.aid = bitcast <4 x i64> %i.aht to <32 x i8>
  %i.aie = shufflevector <32 x i8> %i.aid, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aif = sext <16 x i8> %i.aie to <16 x i16>
  %i.aig = shufflevector <8 x i16> %i.ahq, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aih = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aig, <16 x i16> %i.ahw)
  %i.aii = add <8 x i32> %i.aih, %i.ahk           ; 3 uses
  %i.aij = shufflevector <8 x i16> %i.ahq, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aik = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aij, <16 x i16> %i.ahz)
  %i.ail = add <8 x i32> %i.aik, %i.ahj           ; 3 uses
  %i.aim = shufflevector <8 x i16> %i.ahq, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.ain = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aim, <16 x i16> %i.aic)
  %i.aio = add <8 x i32> %i.ain, %i.ahi           ; 3 uses
  %i.aip = shufflevector <8 x i16> %i.ahq, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aiq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aip, <16 x i16> %i.aif)
  %i.air = add <8 x i32> %i.aiq, %i.ahh           ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.16021809.us.us.us, i64 64
  %indvars.iv.next2043 = add nuw nsw i64 %indvars.iv2042, 1 ; 2 uses
  %exitcond2048.not = icmp eq i64 %indvars.iv.next2043, %wide.trip.count2047
  br i1 %exitcond2048.not, label %._crit_edge1812.split.us.us.us, label %bb.w, !llvm.loop !352

._crit_edge1812.split.us.us.us:                   ; preds = %bb.w
  %scevgep2044 = getelementptr i8, ptr %.06011823.us.us, i64 64
  %scevgep2045 = getelementptr i8, ptr %scevgep2044, i64 %i.aha ; 2 uses
  %i.ait = add nuw nsw i32 %.06001824.us.us, 8    ; 2 uses
  %i.aiu = or disjoint i32 %i.ait, 7
  %i.aiv = icmp slt i32 %i.aiu, %i.agc
  br i1 %i.aiv, label %_ZN4ncnn3MatD2Ev.exit645.us.us, label %._crit_edge1825.loopexit, !llvm.loop !353

_ZN4ncnn3MatD2Ev.exit645.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us, %._crit_edge1812.split.us1839
  %.06001824.us = phi i32 [ %i.akv, %._crit_edge1812.split.us1839 ], [ 0, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ] ; 2 uses
  %.06011823.us = phi ptr [ %scevgep2038, %._crit_edge1812.split.us1839 ], [ %i.agb, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ] ; 2 uses
  %i.aiw = phi <8 x i32> [ %i.akt, %._crit_edge1812.split.us1839 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.aix = phi <8 x i32> [ %i.akq, %._crit_edge1812.split.us1839 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.aiy = phi <8 x i32> [ %i.akn, %._crit_edge1812.split.us1839 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.aiz = phi <8 x i32> [ %i.akk, %._crit_edge1812.split.us1839 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.lr.ph.split.us ]
  %i.aja = sdiv i32 %.06001824.us, %i.age
  %i.ajb = sext i32 %i.aja to i64
  %.reass1833.us = mul i64 %factor.op.mul1832, %i.ajb
  %gep1836.us = getelementptr i8, ptr %invariant.gep1835, i64 %.reass1833.us
  br label %bb.x

bb.x:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit645.us, %bb.x
  %indvars.iv2035 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %indvars.iv.next2036, %bb.x ] ; 2 uses
  %.16021809.us1838 = phi ptr [ %.06011823.us, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %i.aku, %bb.x ] ; 3 uses
  %i.ajc = phi <8 x i32> [ %i.aiw, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %i.akt, %bb.x ]
  %i.ajd = phi <8 x i32> [ %i.aix, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %i.akq, %bb.x ]
  %i.aje = phi <8 x i32> [ %i.aiy, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %i.akn, %bb.x ]
  %i.ajf = phi <8 x i32> [ %i.aiz, %_ZN4ncnn3MatD2Ev.exit645.us ], [ %i.akk, %bb.x ]
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv2035
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !92
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds i8, ptr %gep1836.us, i64 %i.aji
  %i.ajk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ajj, <8 x i32> %i.sz, <8 x i32> splat (i32 -1), i8 1)
  %i.ajl = bitcast <8 x i32> %i.ajk to <32 x i8>
  %i.ajm = shufflevector <32 x i8> %i.ajl, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.ajn = bitcast <32 x i8> %i.ajm to <8 x i32>
  %i.ajo = bitcast <32 x i8> %i.ajm to <8 x i32>
  %i.ajp = shufflevector <8 x i32> %i.ajn, <8 x i32> %i.ajo, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ajq = bitcast <4 x i32> %i.ajp to <16 x i8>
  %i.ajr = shufflevector <16 x i8> %i.ajq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajs = sext <8 x i8> %i.ajr to <8 x i16>      ; 4 uses
  %i.ajt = load <4 x i64>, ptr %.16021809.us1838, align 32, !tbaa !20 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.16021809.us1838, i64 32
  %i.ajv = load <4 x i64>, ptr %i.aju, align 32, !tbaa !20 ; 2 uses
  %i.ajw = bitcast <4 x i64> %i.ajt to <32 x i8>
  %i.ajx = shufflevector <32 x i8> %i.ajw, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajy = sext <16 x i8> %i.ajx to <16 x i16>
  %i.ajz = bitcast <4 x i64> %i.ajt to <32 x i8>
  %i.aka = shufflevector <32 x i8> %i.ajz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.akb = sext <16 x i8> %i.aka to <16 x i16>
  %i.akc = bitcast <4 x i64> %i.ajv to <32 x i8>
  %i.akd = shufflevector <32 x i8> %i.akc, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ake = sext <16 x i8> %i.akd to <16 x i16>
  %i.akf = bitcast <4 x i64> %i.ajv to <32 x i8>
  %i.akg = shufflevector <32 x i8> %i.akf, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.akh = sext <16 x i8> %i.akg to <16 x i16>
  %i.aki = shufflevector <8 x i16> %i.ajs, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.akj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aki, <16 x i16> %i.ajy)
  %i.akk = add <8 x i32> %i.akj, %i.ajf           ; 3 uses
  %i.akl = shufflevector <8 x i16> %i.ajs, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.akm = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.akl, <16 x i16> %i.akb)
  %i.akn = add <8 x i32> %i.akm, %i.aje           ; 3 uses
  %i.ako = shufflevector <8 x i16> %i.ajs, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.akp = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ako, <16 x i16> %i.ake)
  %i.akq = add <8 x i32> %i.akp, %i.ajd           ; 3 uses
  %i.akr = shufflevector <8 x i16> %i.ajs, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aks = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.akr, <16 x i16> %i.akh)
  %i.akt = add <8 x i32> %i.aks, %i.ajc           ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.16021809.us1838, i64 64
  %indvars.iv.next2036 = add nuw nsw i64 %indvars.iv2035, 1 ; 2 uses
  %exitcond2041.not = icmp eq i64 %indvars.iv.next2036, %wide.trip.count2047
  br i1 %exitcond2041.not, label %._crit_edge1812.split.us1839, label %bb.x, !llvm.loop !352

._crit_edge1812.split.us1839:                     ; preds = %bb.x
  %scevgep2037 = getelementptr i8, ptr %.06011823.us, i64 64
  %scevgep2038 = getelementptr i8, ptr %scevgep2037, i64 %i.aha ; 2 uses
  %i.akv = add nuw nsw i32 %.06001824.us, 8       ; 2 uses
  %i.akw = or disjoint i32 %i.akv, 7
  %i.akx = icmp slt i32 %i.akw, %i.agc
  br i1 %i.akx, label %_ZN4ncnn3MatD2Ev.exit645.us, label %._crit_edge1825.loopexit1906, !llvm.loop !353

._crit_edge1825.loopexit:                         ; preds = %._crit_edge1812.split.us.us.us
  %i.aky = and i32 %i.agc, 2147483640
  br label %._crit_edge1825

._crit_edge1825.loopexit1906:                     ; preds = %._crit_edge1812.split.us1839
  %i.akz = and i32 %i.agc, 2147483640
  br label %._crit_edge1825

._crit_edge1825:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit645.preheader, %._crit_edge1825.loopexit1906, %._crit_edge1825.loopexit, %_ZN4ncnn3MatD2Ev.exit646
  %.lcssa1579 = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit646 ], [ %i.aii, %._crit_edge1825.loopexit ], [ %i.akk, %._crit_edge1825.loopexit1906 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.preheader ]
  %.lcssa1578 = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit646 ], [ %i.ail, %._crit_edge1825.loopexit ], [ %i.akn, %._crit_edge1825.loopexit1906 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.preheader ]
  %.lcssa1577 = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit646 ], [ %i.aio, %._crit_edge1825.loopexit ], [ %i.akq, %._crit_edge1825.loopexit1906 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.preheader ]
  %.lcssa1576 = phi <8 x i32> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit646 ], [ %i.air, %._crit_edge1825.loopexit ], [ %i.akt, %._crit_edge1825.loopexit1906 ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit645.preheader ]
  %.0601.lcssa = phi ptr [ %i.agb, %_ZN4ncnn3MatD2Ev.exit646 ], [ %scevgep2045, %._crit_edge1825.loopexit ], [ %scevgep2038, %._crit_edge1825.loopexit1906 ], [ %i.agb, %_ZN4ncnn3MatD2Ev.exit645.preheader ] ; 3 uses
  %.0600.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit646 ], [ %i.aky, %._crit_edge1825.loopexit ], [ %i.akz, %._crit_edge1825.loopexit1906 ], [ %i.agv, %_ZN4ncnn3MatD2Ev.exit645.preheader ] ; 6 uses
  %i.ala = add <8 x i32> %.lcssa1578, %.lcssa1579
  %i.alb = add <8 x i32> %i.ala, %.lcssa1577
  %i.alc = add <8 x i32> %i.alb, %.lcssa1576      ; 3 uses
  %i.ald = or disjoint i32 %.0600.lcssa, 1
  %i.ale = icmp slt i32 %i.ald, %i.agc
  br i1 %i.ale, label %_ZN4ncnn3MatD2Ev.exit644.lr.ph, label %.preheader

_ZN4ncnn3MatD2Ev.exit644.lr.ph:                   ; preds = %._crit_edge1825
  %i.alf = load i32, ptr %i.s, align 4, !tbaa !93, !noalias !354
  %i.alg = load ptr, ptr %5, align 8, !tbaa !9, !noalias !354
  %i.alh = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !354
  %i.ali = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !354 ; 2 uses
  %factor.op.mul1871 = mul i64 %i.alh, %i.ali
  %i.alj = sext i32 %i.alf to i64
  %i.alk = load i32, ptr %10, align 4, !tbaa !92
  %i.all = mul nsw i32 %i.alk, %i.afu
  %i.alm = sext i32 %i.all to i64
  %i.aln = mul i64 %i.ali, %i.alj
  %i.alo = mul i64 %i.aln, %i.alm
  %invariant.gep1873 = getelementptr i8, ptr %i.alg, i64 %i.alo
  %i.alp = load i32, ptr %11, align 4, !tbaa !92
  %i.alq = mul nsw i32 %i.alp, %i.afv
  %i.alr = sext i32 %i.alq to i64
  %invariant.gep1874 = getelementptr i8, ptr %invariant.gep1873, i64 %i.alr
  %i.als = load i32, ptr %12, align 4, !tbaa !92  ; 3 uses
  %i.alt = icmp sgt i32 %i.als, 0
  br i1 %i.alt, label %_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us, label %_ZN4ncnn3MatD2Ev.exit644.preheader

_ZN4ncnn3MatD2Ev.exit644.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit644.lr.ph
  %i.alu = or disjoint i32 %.0600.lcssa, 2
  %14 = or disjoint i32 %.0600.lcssa, 3
  %15 = call i32 @llvm.umax.i32(i32 %i.agc, i32 %14)
  %i.alv = add nsw i32 %15, -2
  %i.alw = sub nsw i32 %i.alv, %.0600.lcssa
  %i.alx = and i32 %i.alw, -2
  %i.aly = add i32 %i.alu, %i.alx
  br label %.preheader

_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us:          ; preds = %_ZN4ncnn3MatD2Ev.exit644.lr.ph
  %i.alz = load ptr, ptr %13, align 8, !tbaa !97
  %i.ama = add nsw i32 %i.als, -1
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = shl nuw nsw i64 %i.amb, 4
  %i.amd = zext nneg i32 %.0600.lcssa to i64
  %wide.trip.count2054 = zext nneg i32 %i.als to i64
  br label %_ZN4ncnn3MatD2Ev.exit644.us

_ZN4ncnn3MatD2Ev.exit644.us:                      ; preds = %._crit_edge1862.us, %_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us
  %indvars.iv2056 = phi i64 [ %indvars.iv.next2057, %._crit_edge1862.us ], [ %i.amd, %_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us ] ; 2 uses
  %.26031866.us = phi ptr [ %scevgep2052, %._crit_edge1862.us ], [ %.0601.lcssa, %_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us ] ; 2 uses
  %i.ame = phi <8 x i32> [ %i.amu, %._crit_edge1862.us ], [ %i.alc, %_ZN4ncnn3MatD2Ev.exit644.lr.ph.split.us ]
  %.reass1872.us = mul i64 %factor.op.mul1871, %indvars.iv2056
  %gep1875.us = getelementptr i8, ptr %invariant.gep1874, i64 %.reass1872.us
  br label %bb.y

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit644.us, %bb.y
  %indvars.iv2049 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit644.us ], [ %indvars.iv.next2050, %bb.y ] ; 2 uses
  %.31859.us = phi ptr [ %.26031866.us, %_ZN4ncnn3MatD2Ev.exit644.us ], [ %i.amv, %bb.y ] ; 2 uses
  %.314871858.us = phi <8 x i32> [ %i.ame, %_ZN4ncnn3MatD2Ev.exit644.us ], [ %i.amu, %bb.y ]
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv2049
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !92
  %i.amh = sext i32 %i.amg to i64
  %i.ami = getelementptr inbounds i8, ptr %gep1875.us, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !20
  %i.amk = sext i8 %i.amj to i16
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.ac
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !20
  %i.amn = sext i8 %i.amm to i16
  %i.amo = insertelement <8 x i16> poison, i16 %i.amk, i64 0
  %i.amp = insertelement <8 x i16> %i.amo, i16 %i.amn, i64 1
  %i.amq = load <16 x i8>, ptr %.31859.us, align 16, !tbaa !20
  %i.amr = sext <16 x i8> %i.amq to <16 x i16>
  %i.ams = shufflevector <8 x i16> %i.amp, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amt = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ams, <16 x i16> %i.amr)
  %i.amu = add <8 x i32> %i.amt, %.314871858.us   ; 3 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.31859.us, i64 16
  %indvars.iv.next2050 = add nuw nsw i64 %indvars.iv2049, 1 ; 2 uses
  %exitcond2055.not = icmp eq i64 %indvars.iv.next2050, %wide.trip.count2054
  br i1 %exitcond2055.not, label %._crit_edge1862.us, label %bb.y, !llvm.loop !357

._crit_edge1862.us:                               ; preds = %bb.y
  %scevgep2051 = getelementptr i8, ptr %.26031866.us, i64 16
  %scevgep2052 = getelementptr i8, ptr %scevgep2051, i64 %i.amc ; 2 uses
  %indvars.iv.next2057 = add nuw nsw i64 %indvars.iv2056, 2 ; 3 uses
  %i.amw = trunc i64 %indvars.iv.next2057 to i32
  %i.amx = or i32 %i.amw, 1
  %i.amy = icmp slt i32 %i.amx, %i.agc
  br i1 %i.amy, label %_ZN4ncnn3MatD2Ev.exit644.us, label %.preheader.loopexit, !llvm.loop !358

.preheader.loopexit:                              ; preds = %._crit_edge1862.us
  %i.amz = trunc nuw i64 %indvars.iv.next2057 to i32
  br label %.preheader

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit644.preheader, %.preheader.loopexit, %._crit_edge1825
  %.21486.lcssa.in = phi <8 x i32> [ %i.alc, %._crit_edge1825 ], [ %i.amu, %.preheader.loopexit ], [ %i.alc, %_ZN4ncnn3MatD2Ev.exit644.preheader ] ; 3 uses
  %.2603.lcssa = phi ptr [ %.0601.lcssa, %._crit_edge1825 ], [ %scevgep2052, %.preheader.loopexit ], [ %.0601.lcssa, %_ZN4ncnn3MatD2Ev.exit644.preheader ]
  %.1.lcssa = phi i32 [ %.0600.lcssa, %._crit_edge1825 ], [ %i.amz, %.preheader.loopexit ], [ %i.aly, %_ZN4ncnn3MatD2Ev.exit644.preheader ] ; 2 uses
  %i.ana = icmp slt i32 %.1.lcssa, %i.agc
  br i1 %i.ana, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge1889

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.preheader
  %i.anb = load i32, ptr %i.s, align 4, !tbaa !93, !noalias !359
  %i.anc = load ptr, ptr %5, align 8, !tbaa !9, !noalias !359
  %i.and = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !359
  %i.ane = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !359 ; 2 uses
  %factor.op.mul1891 = mul i64 %i.and, %i.ane
  %i.anf = sext i32 %i.anb to i64
  %i.ang = load i32, ptr %10, align 4, !tbaa !92
  %i.anh = mul nsw i32 %i.ang, %i.afu
  %i.ani = sext i32 %i.anh to i64
  %i.anj = mul i64 %i.ane, %i.anf
  %i.ank = mul i64 %i.anj, %i.ani
  %invariant.gep1893 = getelementptr i8, ptr %i.anc, i64 %i.ank
  %i.anl = load i32, ptr %11, align 4, !tbaa !92
  %i.anm = mul nsw i32 %i.anl, %i.afv
  %i.ann = sext i32 %i.anm to i64
  %invariant.gep1894 = getelementptr i8, ptr %invariant.gep1893, i64 %i.ann
  %i.ano = load i32, ptr %12, align 4, !tbaa !92  ; 5 uses
  %i.anp = icmp sgt i32 %i.ano, 0
  br i1 %i.anp, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us, label %._crit_edge1889

_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us:             ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph
  %i.anq = load ptr, ptr %13, align 8, !tbaa !97  ; 3 uses
  %i.anr = add nsw i32 %i.ano, -1
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = shl nuw nsw i64 %i.ans, 3
  %i.anu = zext i32 %.1.lcssa to i64
  %wide.trip.count2064 = zext nneg i32 %i.ano to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count2064, 1
  %i.anv = icmp eq i32 %i.ano, 1
  %unroll_iter = and i64 %wide.trip.count2064, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2208 = trunc i32 %i.ano to i1
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %._crit_edge1883.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us
  %indvars.iv2066 = phi i64 [ %indvars.iv.next2067, %._crit_edge1883.us ], [ %i.anu, %_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us ] ; 2 uses
  %.41887.us = phi ptr [ %scevgep2062, %._crit_edge1883.us ], [ %.2603.lcssa, %_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us ] ; 3 uses
  %i.anw = phi <8 x i32> [ %.lcssa2206, %._crit_edge1883.us ], [ %.21486.lcssa.in, %_ZN4ncnn3MatD2Ev.exit.lr.ph.split.us ] ; 2 uses
  %.reass1892.us = mul i64 %factor.op.mul1891, %indvars.iv2066
  %gep1895.us = getelementptr i8, ptr %invariant.gep1894, i64 %.reass1892.us ; 3 uses
  br i1 %i.anv, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.us.new

_ZN4ncnn3MatD2Ev.exit.us.new:                     ; preds = %_ZN4ncnn3MatD2Ev.exit.us, %_ZN4ncnn3MatD2Ev.exit.us.new
  %indvars.iv2059 = phi i64 [ %indvars.iv.next2060.1, %_ZN4ncnn3MatD2Ev.exit.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.51880.us = phi ptr [ %i.aoz, %_ZN4ncnn3MatD2Ev.exit.us.new ], [ %.41887.us, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.514891879.us = phi <8 x i32> [ %i.aoy, %_ZN4ncnn3MatD2Ev.exit.us.new ], [ %i.anw, %_ZN4ncnn3MatD2Ev.exit.us ]
  %niter = phi i64 [ %niter.next.1, %_ZN4ncnn3MatD2Ev.exit.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv2059
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !92
  %i.anz = sext i32 %i.any to i64
  %i.aoa = getelementptr inbounds i8, ptr %gep1895.us, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !20
  %i.aoc = sext i8 %i.aob to i16
  %i.aod = insertelement <8 x i16> poison, i16 %i.aoc, i64 0
  %i.aoe = shufflevector <8 x i16> %i.aod, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aof = load <8 x i8>, ptr %.51880.us, align 1, !tbaa !20
  %i.aog = sext <8 x i8> %i.aof to <8 x i16>
  %i.aoh = mul <8 x i16> %i.aoe, %i.aog
  %i.aoi = sext <8 x i16> %i.aoh to <8 x i32>
  %i.aoj = add <8 x i32> %.514891879.us, %i.aoi
  %i.aok = getelementptr inbounds nuw i8, ptr %.51880.us, i64 8
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv2059
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !92
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds i8, ptr %gep1895.us, i64 %i.aoo
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !20
  %i.aor = sext i8 %i.aoq to i16
  %i.aos = insertelement <8 x i16> poison, i16 %i.aor, i64 0
  %i.aot = shufflevector <8 x i16> %i.aos, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aou = load <8 x i8>, ptr %i.aok, align 1, !tbaa !20
  %i.aov = sext <8 x i8> %i.aou to <8 x i16>
  %i.aow = mul <8 x i16> %i.aot, %i.aov
  %i.aox = sext <8 x i16> %i.aow to <8 x i32>
  %i.aoy = add <8 x i32> %i.aoj, %i.aox           ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.51880.us, i64 16 ; 2 uses
  %indvars.iv.next2060.1 = add nuw nsw i64 %indvars.iv2059, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1883.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.us.new, !llvm.loop !362

._crit_edge1883.us.unr-lcssa:                     ; preds = %_ZN4ncnn3MatD2Ev.exit.us.new
  br i1 %lcmp.mod.not, label %._crit_edge1883.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1883.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv2059.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.us ], [ %indvars.iv.next2060.1, %._crit_edge1883.us.unr-lcssa ]
  %.51880.us.epil.init = phi ptr [ %.41887.us, %_ZN4ncnn3MatD2Ev.exit.us ], [ %i.aoz, %._crit_edge1883.us.unr-lcssa ]
  %.514891879.us.epil.init = phi <8 x i32> [ %i.anw, %_ZN4ncnn3MatD2Ev.exit.us ], [ %i.aoy, %._crit_edge1883.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2208)
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv2059.epil.init
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !92
  %i.apc = sext i32 %i.apb to i64
  %i.apd = getelementptr inbounds i8, ptr %gep1895.us, i64 %i.apc
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !20
  %i.apf = sext i8 %i.ape to i16
  %i.apg = insertelement <8 x i16> poison, i16 %i.apf, i64 0
  %i.aph = shufflevector <8 x i16> %i.apg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.api = load <8 x i8>, ptr %.51880.us.epil.init, align 1, !tbaa !20
  %i.apj = sext <8 x i8> %i.api to <8 x i16>
  %i.apk = mul <8 x i16> %i.aph, %i.apj
  %i.apl = sext <8 x i16> %i.apk to <8 x i32>
  %i.apm = add <8 x i32> %.514891879.us.epil.init, %i.apl
  br label %._crit_edge1883.us

._crit_edge1883.us:                               ; preds = %._crit_edge1883.us.unr-lcssa, %.epil.preheader
  %.lcssa2206 = phi <8 x i32> [ %i.aoy, %._crit_edge1883.us.unr-lcssa ], [ %i.apm, %.epil.preheader ] ; 2 uses
  %scevgep2061 = getelementptr i8, ptr %.41887.us, i64 8
  %scevgep2062 = getelementptr i8, ptr %scevgep2061, i64 %i.ant
  %indvars.iv.next2067 = add nuw nsw i64 %indvars.iv2066, 1 ; 2 uses
  %i.apn = trunc nuw i64 %indvars.iv.next2067 to i32
  %i.apo = icmp sgt i32 %i.agc, %i.apn
  br i1 %i.apo, label %_ZN4ncnn3MatD2Ev.exit.us, label %._crit_edge1889, !llvm.loop !363

._crit_edge1889:                                  ; preds = %._crit_edge1883.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.preheader
  %.41488.lcssa.in = phi <8 x i32> [ %.21486.lcssa.in, %.preheader ], [ %.21486.lcssa.in, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %.lcssa2206, %._crit_edge1883.us ] ; 10 uses
  %.41488.lcssa = bitcast <8 x i32> %.41488.lcssa.in to <4 x i64> ; 2 uses
  %i.app = load i32, ptr %7, align 4, !tbaa !92   ; 2 uses
  %i.apq = icmp eq i32 %i.app, 8
  br i1 %i.apq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge1889
  store <8 x i32> %.41488.lcssa.in, ptr %.81898, align 32, !tbaa !20
  %i.apr = getelementptr inbounds nuw i8, ptr %.81898, i64 32
  %.pr1537 = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge1889
  %i.aps = phi i32 [ %.pr1537, %bb.z ], [ %i.app, %._crit_edge1889 ] ; 2 uses
  %.9 = phi ptr [ %i.apr, %bb.z ], [ %.81898, %._crit_edge1889 ] ; 4 uses
  %i.apt = icmp eq i32 %i.aps, 4
  br i1 %i.apt, label %bb.ab, label %bb.ac

end_hunk_5
begin_hunk_6_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !482 ; 2 uses
  %.not.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !483 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !484
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !486

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.df) #8
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !482 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !483 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !484
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !486

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #8
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not152 = icmp sgt i32 %i.k, %i.j
  br i1 %.not152, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph155, %_ZN4ncnn3MatD2Ev.exit
  %.045153 = phi i32 [ %i.k, %.lr.ph155 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !92
  %i.at = mul nsw i32 %i.as, %.045153             ; 5 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.au

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !9, !noalias !545
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !545
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !545
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 5 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !92
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !92
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 10 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated119, 7
  %i.bi = and i32 %.sroa.speculated119, 2147483640
  %i.bj = zext nneg i32 %.sroa.speculated119 to i64
  %i.bk = sext i32 %.sroa.speculated119 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.bk, -3
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op736.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045153, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.045153, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge156

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.zk, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.zm, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044151 = phi i32 [ 0, %.lr.ph ], [ %i.zl, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.bq = sub nsw i32 %i.bp, %.044151
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 24 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre158 = load i32, ptr %9, align 4, !tbaa !92
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !93 ; 9 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !96 ; 9 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !94 ; 11 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 16 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 8 uses
  %factor.op.mul576.i = shl i32 %.sroa.speculated115, 4 ; 6 uses
  br i1 %i.bh, label %.lr.ph579.i, label %.preheader567.i

.lr.ph579.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated115, 0
  %i.cc = shl nsw i32 %.sroa.speculated115, 3
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sext i32 %factor.op.mul576.i to i64
  %i.cf = mul nsw i32 %.sroa.speculated115, 24
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i32 %.sroa.speculated115, 5
  %i.ci = sext i32 %i.ch to i64                   ; 12 uses
  %.idx458.i = shl i64 %i.by, 3                   ; 2 uses
  %.idx459.i = mul i64 %i.by, 12                  ; 2 uses
  %.idx460.i = shl i64 %i.by, 4                   ; 2 uses
  %.idx461.i = mul i64 %i.by, 20                  ; 2 uses
  %.idx462.i = mul i64 %i.by, 24                  ; 2 uses
  %.idx463.i = mul i64 %i.by, 28                  ; 2 uses
  %i.cj = mul nsw i32 %i.bv, %i.bt
  %i.ck = sext i32 %i.cj to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader567.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph579.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv649.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next650.i, %._crit_edge.us.i ] ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv649.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul576.i, %i.cl
  %i.cm = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cn = add i32 %i.at, %i.cl
  %i.co = sdiv i32 %i.cn, %i.bv
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cm
  br label %_ZN4ncnn3MatD2Ev.exit469.us.i

_ZN4ncnn3MatD2Ev.exit469.us.i:                    ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.idx733.i.a = shl nuw nsw i64 %indvars.iv.i, 5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx733.i.a ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cd ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ce ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cg ; 2 uses
  %i.cv = load <8 x i32>, ptr %i.cs, align 32, !tbaa !20 ; 2 uses
  %i.cw = load <8 x i32>, ptr %i.ct, align 32, !tbaa !20 ; 2 uses
  %i.cx = load <8 x i32>, ptr %i.cu, align 32, !tbaa !20
  %i.cy = sub <8 x i32> %i.cv, %i.cw
  %i.cz = add <8 x i32> %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ci ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ci ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ci ; 2 uses
  %i.dd = load <8 x i32>, ptr %i.da, align 32, !tbaa !20 ; 2 uses
  %i.de = load <8 x i32>, ptr %i.db, align 32, !tbaa !20 ; 2 uses
  %i.df = load <8 x i32>, ptr %i.dc, align 32, !tbaa !20
  %i.dg = sub <8 x i32> %i.dd, %i.de
  %i.dh = add <8 x i32> %i.dg, %i.df              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ci ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ci ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ci ; 2 uses
  %i.dl = load <8 x i32>, ptr %i.di, align 32, !tbaa !20 ; 2 uses
  %i.dm = load <8 x i32>, ptr %i.dj, align 32, !tbaa !20 ; 2 uses
  %i.dn = load <8 x i32>, ptr %i.dk, align 32, !tbaa !20
  %i.do = sub <8 x i32> %i.dl, %i.dm
  %i.dp = add <8 x i32> %i.do, %i.dn              ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ci
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ci
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ci
  %i.dt = load <8 x i32>, ptr %i.dq, align 32, !tbaa !20 ; 2 uses
  %i.du = load <8 x i32>, ptr %i.dr, align 32, !tbaa !20 ; 2 uses
  %i.dv = load <8 x i32>, ptr %i.ds, align 32, !tbaa !20
  %i.dw = trunc i64 %indvars.iv.i to i32
  %i.dx = add i32 %.044151, %i.dw                 ; 2 uses
  %i.dy = sdiv i32 %i.dx, %i.ca
  %i.dz = srem i32 %i.dx, %i.ca
  %i.ea = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !548
  %i.eb = load ptr, ptr %12, align 8, !tbaa !9, !noalias !548
  %i.ec = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !548
  %i.ed = mul i64 %i.ec, %i.cp
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !548 ; 2 uses
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ef
  %i.eh = sext i32 %i.ea to i64
  %i.ei = shl nsw i32 %i.dy, 1                    ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.eh, %i.ej
  %i.el = mul i64 %i.ek, %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el
  %i.en = shl nsw i32 %i.dz, 1                    ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.bv
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep ; 16 uses
  %i.er = or disjoint i32 %i.en, 1
  %i.es = icmp slt i32 %i.er, %i.bt               ; 6 uses
  %.not457.us.i = icmp slt i32 %i.ei, %i.bu
  br i1 %.not457.us.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit469.us.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ci ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ci ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ci
  %i.ew = load <8 x i32>, ptr %i.ev, align 32, !tbaa !20
  %i.ex = load <8 x i32>, ptr %i.eu, align 32, !tbaa !20
  %i.ey = add <8 x i32> %i.dm, %i.dl
  %i.ez = add <8 x i32> %i.ey, %i.ex              ; 2 uses
  %i.fa = load <8 x i32>, ptr %i.et, align 32, !tbaa !20
  %i.fb = add <8 x i32> %i.de, %i.dd
  %i.fc = add <8 x i32> %i.fb, %i.fa              ; 2 uses
  %i.fd = load <8 x i32>, ptr %i.cr, align 32, !tbaa !20
  %i.fe = add <8 x i32> %i.cw, %i.cv
  %i.ff = add <8 x i32> %i.fe, %i.fd
  %i.fg = add <8 x i32> %i.ff, %i.ez
  %i.fh = add <8 x i32> %i.fg, %i.fc
  %i.fi = add <8 x i32> %i.du, %i.dt
  %i.fj = add <8 x i32> %i.fi, %i.ew
  %i.fk = sub <8 x i32> %i.fj, %i.ez
  %i.fl = add <8 x i32> %i.fk, %i.fc
  %i.fm = ashr <8 x i32> %i.fh, splat (i32 2)     ; 10 uses
  %i.fn = ashr <8 x i32> %i.fl, splat (i32 2)     ; 10 uses
  %i.fo = bitcast <8 x i32> %i.fn to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.l [
    i32 8, label %bb.j
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.by ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx458.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx459.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx460.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx461.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx462.i ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.i, ptr %i.eq, align 4, !tbaa !92
  %.sroa.0536.4.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !92
  %.sroa.0536.8.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !92
  %.sroa.0536.12.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !92
  %.sroa.0536.16.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !92
  %.sroa.0536.20.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !92
  %.sroa.0536.24.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !92
  %.sroa.0536.28.vec.extract.us.i = extractelement <8 x i32> %i.fm, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !92
  br i1 %i.es, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.fw, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.fx, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.fy, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.fz, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.ga, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.gb, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 6
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.gc, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.fn, i64 7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.gd, align 4, !tbaa !92
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ge = bitcast <8 x i32> %i.fm to <4 x i64>    ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.by ; 2 uses
  %i.gg = shufflevector <4 x i64> %i.ge, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gg, ptr %i.eq, align 16, !tbaa !20
  %i.gh = shufflevector <4 x i64> %i.ge, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gh, ptr %i.gf, align 16, !tbaa !20
  br i1 %i.es, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.gj = shufflevector <4 x i64> %i.fo, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gj, ptr %i.gi, align 16, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gl = shufflevector <4 x i64> %i.fo, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gl, ptr %i.gk, align 16, !tbaa !20
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  store <8 x i32> %i.fm, ptr %i.eq, align 32, !tbaa !20
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store <8 x i32> %i.fn, ptr %i.gm, align 32, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ck
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit469.us.i
  %.1443.us.i = phi ptr [ %i.eq, %_ZN4ncnn3MatD2Ev.exit469.us.i ], [ %i.gn, %bb.l ] ; 14 uses
  %i.go = or disjoint i32 %i.ei, 1
  %.not457.us.1.i = icmp slt i32 %i.go, %i.bu
  br i1 %.not457.us.1.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.gp = add <8 x i32> %i.cz, %i.dh
  %i.gq = add <8 x i32> %i.gp, %i.dp
  %i.gr = add <8 x i32> %i.dh, %i.dt
  %i.gs = add <8 x i32> %i.dp, %i.du
  %i.gt = sub <8 x i32> %i.gr, %i.gs
  %i.gu = add <8 x i32> %i.gt, %i.dv
  %i.gv = ashr <8 x i32> %i.gq, splat (i32 2)     ; 10 uses
  %i.gw = ashr <8 x i32> %i.gu, splat (i32 2)     ; 10 uses
  %i.gx = bitcast <8 x i32> %i.gw to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.u [
    i32 8, label %bb.s
    i32 4, label %bb.q
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx458.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx459.i ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx460.i ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx461.i ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx462.i ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.1.i, ptr %.1443.us.i, align 4, !tbaa !92
  %.sroa.0536.4.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.1.i, ptr %i.gy, align 4, !tbaa !92
  %.sroa.0536.8.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.1.i, ptr %i.gz, align 4, !tbaa !92
  %.sroa.0536.12.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.1.i, ptr %i.ha, align 4, !tbaa !92
  %.sroa.0536.16.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.1.i, ptr %i.hb, align 4, !tbaa !92
  %.sroa.0536.20.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.1.i, ptr %i.hc, align 4, !tbaa !92
  %.sroa.0536.24.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.1.i, ptr %i.hd, align 4, !tbaa !92
  %.sroa.0536.28.vec.extract.us.1.i = extractelement <8 x i32> %i.gv, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.1.i, ptr %i.he, align 4, !tbaa !92
  br i1 %i.es, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.sroa.11.32.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.1.i, ptr %i.hf, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store i32 %.sroa.11.36.vec.extract.us.1.i, ptr %i.hg, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 %.sroa.11.40.vec.extract.us.1.i, ptr %i.hh, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sroa.11.44.vec.extract.us.1.i, ptr %i.hi, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 %.sroa.11.48.vec.extract.us.1.i, ptr %i.hj, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 5
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %.sroa.11.52.vec.extract.us.1.i, ptr %i.hk, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 6
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %.sroa.11.56.vec.extract.us.1.i, ptr %i.hl, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.1.i = extractelement <8 x i32> %i.gw, i64 7
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 %.sroa.11.60.vec.extract.us.1.i, ptr %i.hm, align 4, !tbaa !92
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.hn = bitcast <8 x i32> %i.gv to <4 x i64>    ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.hp = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.hp, ptr %.1443.us.i, align 16, !tbaa !20
  %i.hq = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hq, ptr %i.ho, align 16, !tbaa !20
  br i1 %i.es, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hr = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 16
  %i.hs = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.hs, ptr %i.hr, align 16, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hu = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hu, ptr %i.ht, align 16, !tbaa !20
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  store <8 x i32> %i.gv, ptr %.1443.us.i, align 32, !tbaa !20
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hv = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 32
  store <8 x i32> %i.gw, ptr %i.hv, align 32, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit469.us.i, !llvm.loop !551

._crit_edge.us.i:                                 ; preds = %bb.u
  %indvars.iv.next650.i = add nuw nsw i64 %indvars.iv649.i, 8 ; 3 uses
  %i.hw = or disjoint i64 %indvars.iv.next650.i, 7
  %i.hx = icmp samesign ult i64 %i.hw, %i.bj
  br i1 %i.hx, label %.lr.ph.us.i, label %.preheader567.loopexit.i, !llvm.loop !552

.preheader567.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.hy = trunc nuw nsw i64 %indvars.iv.next650.i to i32
  br label %.preheader567.i

.preheader567.i:                                  ; preds = %.lr.ph579.i, %.preheader567.loopexit.i, %._crit_edge
  %.0433.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.hy, %.preheader567.loopexit.i ], [ %i.bi, %.lr.ph579.i ] ; 6 uses
  %i.hz = or disjoint i32 %.0433.lcssa.i, 3
  %i.ia = icmp slt i32 %i.hz, %.sroa.speculated119
  br i1 %i.ia, label %.lr.ph590.i, label %.preheader566.i

.lr.ph590.i:                                      ; preds = %.preheader567.i
  %i.ib = icmp sgt i32 %.sroa.speculated115, 0
  %i.ic = shl nsw i32 %.sroa.speculated115, 2
  %i.id = sext i32 %i.ic to i64
  %i.ie = shl nsw i32 %.sroa.speculated115, 3
  %i.if = sext i32 %i.ie to i64
  %i.ig = mul nsw i32 %.sroa.speculated115, 12
  %i.ih = sext i32 %i.ig to i64
  %i.ii = sext i32 %factor.op.mul576.i to i64     ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx456.i = mul i64 %i.by, 12                  ; 2 uses
  %i.ij = mul nsw i32 %i.bv, %i.bt
  %i.ik = sext i32 %i.ij to i64
  br i1 %i.ib, label %.lr.ph.us593.preheader.i, label %.lr.ph590.split.preheader.i

.lr.ph590.split.preheader.i:                      ; preds = %.lr.ph590.i
  %15 = add i32 %.0433.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %15)
  %reass.sub = sub i32 %smax.i, %.0433.lcssa.i
  %16 = and i32 %reass.sub, -4
  %i.il = add i32 %.0433.lcssa.i, %16
  br label %.preheader566.i

.lr.ph.us593.preheader.i:                         ; preds = %.lr.ph590.i
  %i.im = sext i32 %.0433.lcssa.i to i64
  %wide.trip.count662.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us593.i

.lr.ph.us593.i:                                   ; preds = %._crit_edge.us594.i, %.lr.ph.us593.preheader.i
  %indvars.iv664.i = phi i64 [ %i.im, %.lr.ph.us593.preheader.i ], [ %indvars.iv.next665.i, %._crit_edge.us594.i ] ; 2 uses
  %i.in = trunc nsw i64 %indvars.iv664.i to i32   ; 2 uses
  %factor.op.mul.reass.us592.i = mul i32 %factor.op.mul576.i, %i.in
  %i.io = sext i32 %factor.op.mul.reass.us592.i to i64
  %i.ip = add i32 %i.at, %i.in
  %i.iq = sdiv i32 %i.ip, %i.bv
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.io
  br label %_ZN4ncnn3MatD2Ev.exit468.us.i

_ZN4ncnn3MatD2Ev.exit468.us.i:                    ; preds = %bb.ah, %.lr.ph.us593.i
  %indvars.iv659.i = phi i64 [ 0, %.lr.ph.us593.i ], [ %indvars.iv.next660.i, %bb.ah ] ; 3 uses
  %.idx734.i.a = shl nuw nsw i64 %indvars.iv659.i, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx734.i.a ; 5 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.id ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.if ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ih ; 2 uses
  %i.ix = load <4 x i32>, ptr %i.iu, align 16, !tbaa !20 ; 2 uses
  %i.iy = load <4 x i32>, ptr %i.iv, align 16, !tbaa !20 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.iw, align 16, !tbaa !20
  %i.ja = sub <4 x i32> %i.ix, %i.iy
  %i.jb = add <4 x i32> %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ii ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ii ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ii ; 2 uses
  %i.jf = load <4 x i32>, ptr %i.jc, align 16, !tbaa !20 ; 2 uses
  %i.jg = load <4 x i32>, ptr %i.jd, align 16, !tbaa !20 ; 2 uses
  %i.jh = load <4 x i32>, ptr %i.je, align 16, !tbaa !20
  %i.ji = sub <4 x i32> %i.jf, %i.jg
  %i.jj = add <4 x i32> %i.ji, %i.jh              ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.ii ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ii ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.ii ; 2 uses
  %i.jn = load <4 x i32>, ptr %i.jk, align 16, !tbaa !20 ; 2 uses
  %i.jo = load <4 x i32>, ptr %i.jl, align 16, !tbaa !20 ; 2 uses
  %i.jp = load <4 x i32>, ptr %i.jm, align 16, !tbaa !20
  %i.jq = sub <4 x i32> %i.jn, %i.jo
  %i.jr = add <4 x i32> %i.jq, %i.jp              ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ii
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ii
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ii
  %i.jv = load <4 x i32>, ptr %i.js, align 16, !tbaa !20 ; 2 uses
  %i.jw = load <4 x i32>, ptr %i.jt, align 16, !tbaa !20 ; 2 uses
  %i.jx = load <4 x i32>, ptr %i.ju, align 16, !tbaa !20
  %i.jy = trunc i64 %indvars.iv659.i to i32
  %i.jz = add i32 %.044151, %i.jy                 ; 2 uses
  %i.ka = sdiv i32 %i.jz, %i.ca
  %i.kb = srem i32 %i.jz, %i.ca
  %i.kc = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !553
  %i.kd = load ptr, ptr %12, align 8, !tbaa !9, !noalias !553
  %i.ke = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !553
  %i.kf = mul i64 %i.ke, %i.ir
  %i.kg = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !553 ; 2 uses
  %i.kh = mul i64 %i.kf, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kh
  %i.kj = sext i32 %i.kc to i64
  %i.kk = shl nsw i32 %i.ka, 1                    ; 3 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %i.kj, %i.kl
  %i.kn = mul i64 %i.km, %i.kg
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kn
  %i.kp = shl nsw i32 %i.kb, 1                    ; 2 uses
  %i.kq = mul nsw i32 %i.kp, %i.bv
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kr ; 9 uses
  %i.kt = or disjoint i32 %i.kp, 1
  %i.ku = icmp slt i32 %i.kt, %i.bt               ; 4 uses
  %.not455.us.i = icmp slt i32 %i.kk, %i.bu
  br i1 %.not455.us.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit468.us.i
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ii ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ii ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ii
  %i.ky = load <4 x i32>, ptr %i.kx, align 16, !tbaa !20
  %i.kz = load <4 x i32>, ptr %i.kw, align 16, !tbaa !20
  %i.la = add <4 x i32> %i.jo, %i.jn
  %i.lb = add <4 x i32> %i.la, %i.kz              ; 2 uses
  %i.lc = load <4 x i32>, ptr %i.kv, align 16, !tbaa !20
  %i.ld = add <4 x i32> %i.jg, %i.jf
  %i.le = add <4 x i32> %i.ld, %i.lc              ; 2 uses
  %i.lf = load <4 x i32>, ptr %i.it, align 16, !tbaa !20
  %i.lg = add <4 x i32> %i.iy, %i.ix
  %i.lh = add <4 x i32> %i.lg, %i.lf
  %i.li = add <4 x i32> %i.lh, %i.lb
  %i.lj = add <4 x i32> %i.li, %i.le
  %i.lk = add <4 x i32> %i.jw, %i.jv
  %i.ll = add <4 x i32> %i.lk, %i.ky
  %i.lm = sub <4 x i32> %i.ll, %i.lb
  %i.ln = add <4 x i32> %i.lm, %i.le
  %i.lo = ashr <4 x i32> %i.lj, splat (i32 2)     ; 5 uses
  %i.lp = ashr <4 x i32> %i.ln, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.aa [
    i32 4, label %bb.y
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.by ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.i = extractelement <4 x i32> %i.lo, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.i, ptr %i.ks, align 4, !tbaa !92
  %.sroa.0514.4.vec.extract.us.i = extractelement <4 x i32> %i.lo, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.i, ptr %i.lq, align 4, !tbaa !92
  %.sroa.0514.8.vec.extract.us.i = extractelement <4 x i32> %i.lo, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.i, ptr %i.lr, align 4, !tbaa !92
  %.sroa.0514.12.vec.extract.us.i = extractelement <4 x i32> %i.lo, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.i, ptr %i.ls, align 4, !tbaa !92
  br i1 %i.ku, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.7516.16.vec.extract.us.i = extractelement <4 x i32> %i.lp, i64 0
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.i, ptr %i.lt, align 4, !tbaa !92
  %.sroa.7516.20.vec.extract.us.i = extractelement <4 x i32> %i.lp, i64 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.i, ptr %i.lu, align 4, !tbaa !92
  %.sroa.7516.24.vec.extract.us.i = extractelement <4 x i32> %i.lp, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.i, ptr %i.lv, align 4, !tbaa !92
  %.sroa.7516.28.vec.extract.us.i = extractelement <4 x i32> %i.lp, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.i, ptr %i.lw, align 4, !tbaa !92
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  store <4 x i32> %i.lo, ptr %i.ks, align 16, !tbaa !20
  br i1 %i.ku, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <4 x i32> %i.lp, ptr %i.lx, align 16, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.ik
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit468.us.i
  %.1432.us.i = phi ptr [ %i.ks, %_ZN4ncnn3MatD2Ev.exit468.us.i ], [ %i.ly, %bb.aa ] ; 7 uses
  %i.lz = or disjoint i32 %i.kk, 1
  %.not455.us.1.i = icmp slt i32 %i.lz, %i.bu
  br i1 %.not455.us.1.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ma = add <4 x i32> %i.jb, %i.jj
  %i.mb = add <4 x i32> %i.ma, %i.jr
  %i.mc = add <4 x i32> %i.jj, %i.jv
  %i.md = add <4 x i32> %i.jr, %i.jw
  %i.me = sub <4 x i32> %i.mc, %i.md
  %i.mf = add <4 x i32> %i.me, %i.jx
  %i.mg = ashr <4 x i32> %i.mb, splat (i32 2)     ; 5 uses
  %i.mh = ashr <4 x i32> %i.mf, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.ah [
    i32 4, label %bb.af
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1432.us.i, i64 %i.by ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx.i ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.1.i = extractelement <4 x i32> %i.mg, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.1.i, ptr %.1432.us.i, align 4, !tbaa !92
  %.sroa.0514.4.vec.extract.us.1.i = extractelement <4 x i32> %i.mg, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.1.i, ptr %i.mi, align 4, !tbaa !92
  %.sroa.0514.8.vec.extract.us.1.i = extractelement <4 x i32> %i.mg, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.1.i, ptr %i.mj, align 4, !tbaa !92
  %.sroa.0514.12.vec.extract.us.1.i = extractelement <4 x i32> %i.mg, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.1.i, ptr %i.mk, align 4, !tbaa !92
  br i1 %i.ku, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7516.16.vec.extract.us.1.i = extractelement <4 x i32> %i.mh, i64 0
  %i.ml = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.1.i, ptr %i.ml, align 4, !tbaa !92
  %.sroa.7516.20.vec.extract.us.1.i = extractelement <4 x i32> %i.mh, i64 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.1.i, ptr %i.mm, align 4, !tbaa !92
  %.sroa.7516.24.vec.extract.us.1.i = extractelement <4 x i32> %i.mh, i64 2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.1.i, ptr %i.mn, align 4, !tbaa !92
  %.sroa.7516.28.vec.extract.us.1.i = extractelement <4 x i32> %i.mh, i64 3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.1.i, ptr %i.mo, align 4, !tbaa !92
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  store <4 x i32> %i.mg, ptr %.1432.us.i, align 16, !tbaa !20
  br i1 %i.ku, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mp = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 16
  store <4 x i32> %i.mh, ptr %i.mp, align 16, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next660.i = add nuw nsw i64 %indvars.iv659.i, 1 ; 2 uses
  %exitcond663.not.i = icmp eq i64 %indvars.iv.next660.i, %wide.trip.count662.i
  br i1 %exitcond663.not.i, label %._crit_edge.us594.i, label %_ZN4ncnn3MatD2Ev.exit468.us.i, !llvm.loop !556

._crit_edge.us594.i:                              ; preds = %bb.ah
  %indvars.iv.next665.i = add nuw nsw i64 %indvars.iv664.i, 4 ; 3 uses
  %i.mq = icmp slt i64 %indvars.iv.next665.i, %invariant.op.i
  br i1 %i.mq, label %.lr.ph.us593.i, label %.preheader566.loopexit.i, !llvm.loop !557

.preheader566.loopexit.i:                         ; preds = %._crit_edge.us594.i
  %i.mr = trunc nsw i64 %indvars.iv.next665.i to i32
  br label %.preheader566.i

.preheader566.i:                                  ; preds = %.preheader566.loopexit.i, %.lr.ph590.split.preheader.i, %.preheader567.i
  %.1434.lcssa.i = phi i32 [ %.0433.lcssa.i, %.preheader567.i ], [ %i.mr, %.preheader566.loopexit.i ], [ %i.il, %.lr.ph590.split.preheader.i ] ; 6 uses
  %i.ms = or disjoint i32 %.1434.lcssa.i, 1
  %i.mt = icmp slt i32 %i.ms, %.sroa.speculated119
  br i1 %i.mt, label %.lr.ph606.i, label %.preheader.i

.lr.ph606.i:                                      ; preds = %.preheader566.i
  %i.mu = icmp sgt i32 %.sroa.speculated115, 0
  %i.mv = shl nsw i32 %.sroa.speculated115, 1
  %i.mw = sext i32 %i.mv to i64
  %i.mx = shl nsw i32 %.sroa.speculated115, 2
  %i.my = sext i32 %i.mx to i64
  %i.mz = mul nsw i32 %.sroa.speculated115, 6
  %i.na = sext i32 %i.mz to i64
  %i.nb = shl nsw i32 %.sroa.speculated115, 3
  %i.nc = sext i32 %i.nb to i64                   ; 12 uses
  %i.nd = sext i32 %i.bt to i64
  br i1 %i.mu, label %.lr.ph606.split.us.i, label %.lr.ph606.split.preheader.i

.lr.ph606.split.preheader.i:                      ; preds = %.lr.ph606.i
  %17 = add i32 %.1434.lcssa.i, 3
  %smax667.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %17)
  %reass.sub157 = sub i32 %smax667.i, %.1434.lcssa.i
  %18 = and i32 %reass.sub157, -2
  %i.ne = add i32 %.1434.lcssa.i, %18
  br label %.preheader.i

.lr.ph606.split.us.i:                             ; preds = %.lr.ph606.i
  %i.nf = load ptr, ptr %12, align 8, !tbaa !9, !noalias !558
  %i.ng = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !558
  %i.nh = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !558 ; 2 uses
  %factor.op.mul.i = mul i64 %i.nh, %i.ng
  %i.ni = sext i32 %.1434.lcssa.i to i64
  %wide.trip.count678.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us609.i

.lr.ph.us609.i:                                   ; preds = %._crit_edge.us610.i, %.lr.ph606.split.us.i
  %indvars.iv680.i = phi i64 [ %indvars.iv.next681.i, %._crit_edge.us610.i ], [ %i.ni, %.lr.ph606.split.us.i ] ; 3 uses
  %i.nj = trunc nsw i64 %indvars.iv680.i to i32
  %factor.op.mul.reass.us608.i = mul i32 %factor.op.mul576.i, %i.nj
  %i.nk = sext i32 %factor.op.mul.reass.us608.i to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nk
  %i.nm = add nsw i64 %indvars.iv680.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.nm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit467.us.i

_ZN4ncnn3MatD2Ev.exit467.us.i:                    ; preds = %bb.ao, %.lr.ph.us609.i
  %indvars.iv675.i = phi i64 [ 0, %.lr.ph.us609.i ], [ %indvars.iv.next676.i, %bb.ao ] ; 3 uses
  %.idx735.i = shl nuw nsw i64 %indvars.iv675.i, 3
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.idx735.i ; 6 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.mw ; 3 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.my ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.na ; 3 uses
  %i.ns = load i32, ptr %i.np, align 4, !tbaa !92 ; 2 uses
  %i.nt = load i32, ptr %i.nq, align 4, !tbaa !92 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !92 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !92 ; 2 uses
  %i.ny = sub i32 %i.ns, %i.nt
  %i.nz = load i32, ptr %i.nr, align 4, !tbaa !92
  %i.oa = add nsw i32 %i.ny, %i.nz
  %i.ob = sub i32 %i.nv, %i.nx
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !92
  %i.oe = add nsw i32 %i.ob, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nc ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nc ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.nc ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.nc ; 3 uses
  %i.oj = load i32, ptr %i.of, align 4, !tbaa !92
  %i.ok = load i32, ptr %i.og, align 4, !tbaa !92 ; 2 uses
  %i.ol = add nsw i32 %i.ok, %i.oj
  %i.om = load i32, ptr %i.oh, align 4, !tbaa !92 ; 2 uses
  %i.on = add nsw i32 %i.ol, %i.om                ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !92
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !92 ; 2 uses
  %i.os = add nsw i32 %i.or, %i.op
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !92 ; 2 uses
  %i.ov = add nsw i32 %i.os, %i.ou                ; 2 uses
  %i.ow = sub i32 %i.ok, %i.om
  %i.ox = load i32, ptr %i.oi, align 4, !tbaa !92
  %i.oy = add nsw i32 %i.ox, %i.ow                ; 2 uses
  %i.oz = sub i32 %i.or, %i.ou
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !92
  %i.pc = add nsw i32 %i.pb, %i.oz                ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.nc ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.nc ; 3 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.nc ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.nc ; 3 uses
  %i.ph = load i32, ptr %i.pd, align 4, !tbaa !92
  %i.pi = load i32, ptr %i.pe, align 4, !tbaa !92 ; 2 uses
  %i.pj = add nsw i32 %i.pi, %i.ph
  %i.pk = load i32, ptr %i.pf, align 4, !tbaa !92 ; 2 uses
  %i.pl = add nsw i32 %i.pj, %i.pk                ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !92
  %i.po = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !92 ; 2 uses
  %i.pq = add nsw i32 %i.pp, %i.pn
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !92 ; 2 uses
  %i.pt = add nsw i32 %i.pq, %i.ps                ; 2 uses
  %i.pu = sub i32 %i.pi, %i.pk
  %i.pv = load i32, ptr %i.pg, align 4, !tbaa !92
  %i.pw = add nsw i32 %i.pv, %i.pu                ; 2 uses
  %i.px = sub i32 %i.pp, %i.ps
  %i.py = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !92
  %i.qa = add nsw i32 %i.pz, %i.px                ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.nc ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.nc ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.nc ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.nc ; 2 uses
  %i.qf = load i32, ptr %i.qb, align 4, !tbaa !92
  %i.qg = load i32, ptr %i.qc, align 4, !tbaa !92 ; 2 uses
  %i.qh = load i32, ptr %i.qd, align 4, !tbaa !92 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !92
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !92 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !92 ; 2 uses
  %i.qo = load i32, ptr %i.qe, align 4, !tbaa !92
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !92
  %i.qr = trunc i64 %indvars.iv675.i to i32
  %i.qs = add i32 %.044151, %i.qr                 ; 2 uses
  %i.qt = sdiv i32 %i.qs, %i.ca
  %i.qu = srem i32 %i.qs, %i.ca
  %i.qv = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !558
  %i.qw = sext i32 %i.qv to i64
  %i.qx = shl nsw i32 %i.qt, 1                    ; 3 uses
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul i64 %i.nh, %i.qy
  %i.ra = mul i64 %i.qz, %i.qw
  %i.rb = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.ra
  %i.rc = shl nsw i32 %i.qu, 1                    ; 2 uses
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rd ; 5 uses
  %i.rf = or disjoint i32 %i.rc, 1
  %i.rg = icmp slt i32 %i.rf, %i.bt               ; 2 uses
  %.not454.us.i = icmp slt i32 %i.qx, %i.bu
  br i1 %.not454.us.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit467.us.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !92
  %i.rj = load i32, ptr %i.no, align 4, !tbaa !92
  %i.rk = add i32 %i.nt, %i.ns
  %i.rl = add i32 %i.rk, %i.on
  %i.rm = add i32 %i.rl, %i.pl
  %i.rn = add i32 %i.rm, %i.rj
  %i.ro = add i32 %i.nx, %i.nv
  %i.rp = add i32 %i.ro, %i.ov
  %i.rq = add i32 %i.rp, %i.pt
  %i.rr = add i32 %i.rq, %i.ri
  %i.rs = ashr i32 %i.rn, 2
  %i.rt = ashr i32 %i.rr, 2
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.by ; 2 uses
  store i32 %i.rs, ptr %i.re, align 4, !tbaa !92
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !92
  br i1 %i.rg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rv = sub i32 %i.ov, %i.pt
  %i.rw = add i32 %i.rv, %i.qj
  %i.rx = add i32 %i.rw, %i.ql
  %i.ry = add i32 %i.rx, %i.qn
  %i.rz = ashr i32 %i.ry, 2
  %i.sa = sub i32 %i.on, %i.pl
  %i.sb = add i32 %i.sa, %i.qf
  %i.sc = add i32 %i.sb, %i.qg
  %i.sd = add i32 %i.sc, %i.qh
  %i.se = ashr i32 %i.sd, 2
  %i.sf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !92
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i32 %i.rz, ptr %i.sg, align 4, !tbaa !92
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.nd
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4ncnn3MatD2Ev.exit467.us.i
  %.1423.us.i = phi ptr [ %i.re, %_ZN4ncnn3MatD2Ev.exit467.us.i ], [ %i.sh, %bb.ak ] ; 3 uses
  %i.si = or disjoint i32 %i.qx, 1
  %.not454.us.1.i = icmp slt i32 %i.si, %i.bu
  br i1 %.not454.us.1.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.sj = add nsw i32 %i.oa, %i.oy
  %i.sk = add nsw i32 %i.sj, %i.pw
  %i.sl = add nsw i32 %i.oe, %i.pc
  %i.sm = add nsw i32 %i.sl, %i.qa
  %i.sn = ashr i32 %i.sk, 2
  %i.so = ashr i32 %i.sm, 2
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.1423.us.i, i64 %i.by ; 2 uses
  store i32 %i.sn, ptr %.1423.us.i, align 4, !tbaa !92
  store i32 %i.so, ptr %i.sp, align 4, !tbaa !92
  br i1 %i.rg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.sq = add i32 %i.pc, %i.ql
  %i.sr = add i32 %i.qa, %i.qn
  %i.ss = sub i32 %i.sq, %i.sr
  %i.st = add i32 %i.ss, %i.qq
  %i.su = ashr i32 %i.st, 2
  %i.sv = add i32 %i.oy, %i.qg
  %i.sw = add i32 %i.pw, %i.qh
  %i.sx = sub i32 %i.sv, %i.sw
  %i.sy = add i32 %i.sx, %i.qo
  %i.sz = ashr i32 %i.sy, 2
  %i.ta = getelementptr inbounds nuw i8, ptr %.1423.us.i, i64 4
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !92
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i32 %i.su, ptr %i.tb, align 4, !tbaa !92
  br label %bb.ao

end_hunk_6
begin_hunk_7_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [8 x i32]]], align 32   ; 27 uses
  %i.b = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.c = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 %i.j, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.k = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !92
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !92
  %i.n = load i32, ptr %i.d, align 4, !tbaa !92   ; 2 uses
  %.not131 = icmp sgt i32 %i.n, %i.m
  br i1 %.not131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph134, %_ZN4ncnn3MatD2Ev.exit
  %.045132 = phi i32 [ %i.n, %.lr.ph134 ], [ %i.fd, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ej = load i32, ptr %3, align 4, !tbaa !92
  %i.ek = mul nsw i32 %i.ej, %.045132             ; 5 uses
  %i.el = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ci

.noexc46:                                         ; preds = %bb.c
  %i.em = load ptr, ptr %4, align 8, !tbaa !9, !noalias !719
  %i.en = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !719
  %i.eo = sext i32 %i.el to i64
  %i.ep = mul i64 %i.en, %i.eo
  %i.eq = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !719
  %i.er = mul i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.er ; 5 uses
  %i.et = load i32, ptr %5, align 4, !tbaa !92
  %i.eu = sub nsw i32 %i.et, %i.ek
  %i.ev = load i32, ptr %3, align 4, !tbaa !92
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.eu) ; 10 uses
  %i.ew = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ey = icmp sgt i32 %.sroa.speculated120, 7
  %i.ez = and i32 %.sroa.speculated120, 2147483640
  %i.fa = zext nneg i32 %.sroa.speculated120 to i64
  %i.fb = sext i32 %.sroa.speculated120 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.fb, -3
  %i.fc = sext i32 %i.ek to i64                   ; 2 uses
  %invariant.op425.i = add nsw i64 %i.fb, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.fd = add nsw i32 %.045132, 1
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.045132, %i.fe
  br i1 %.not.not, label %bb.c, label %._crit_edge135

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ff = phi i32 [ %.pre, %.lr.ph ], [ %i.bfb, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.fg = phi i32 [ %i.ew, %.lr.ph ], [ %i.bfd, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044130 = phi i32 [ 0, %.lr.ph ], [ %i.bfc, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.fh = sub nsw i32 %i.fg, %.044130
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fh) ; 34 uses
  %i.fi = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !92
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.fk = load i32, ptr %i.aq, align 4, !tbaa !93 ; 17 uses
  %i.fl = load i32, ptr %i.ar, align 8, !tbaa !96 ; 7 uses
  %i.fm = load i32, ptr %i.as, align 8, !tbaa !94 ; 9 uses
  %i.fn = load i64, ptr %i.at, align 8, !tbaa !18
  %i.fo = sext i32 %i.fm to i64
  %i.fp = mul i64 %i.fn, %i.fo                    ; 12 uses
  %i.fq = add nsw i32 %i.fk, 3
  %i.fr = sdiv i32 %i.fq, 4                       ; 8 uses
  %factor.op.mul100.i = mul i32 %.sroa.speculated116, 36 ; 4 uses
  br i1 %i.ey, label %.lr.ph103.i, label %.preheader79.i

.lr.ph103.i:                                      ; preds = %._crit_edge
  %i.fs = icmp sgt i32 %.sroa.speculated116, 0
  %i.ft = shl nsw i32 %.sroa.speculated116, 3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = shl nsw i32 %.sroa.speculated116, 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul nsw i32 %.sroa.speculated116, 24
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i32 %.sroa.speculated116, 5
  %i.ga = sext i32 %i.fz to i64
  %i.gb = mul nsw i32 %.sroa.speculated116, 40
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i32 %.sroa.speculated116, 48
  %i.ge = sext i32 %i.gd to i64                   ; 30 uses
  %.idx1028.i = shl i64 %i.fp, 3
  %.idx1029.i = mul i64 %i.fp, 12
  %.idx1030.i = shl i64 %i.fp, 4
  %.idx1031.i = mul i64 %i.fp, 20
  %.idx1032.i = mul i64 %i.fp, 24
  %.idx1033.i = mul i64 %i.fp, 28
  %i.gf = mul nsw i32 %i.fm, %i.fk
  %i.gg = sext i32 %i.gf to i64
  br i1 %i.fs, label %.lr.ph.us.preheader.i, label %.preheader79.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph103.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv364.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next365.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.gh = trunc nuw nsw i64 %indvars.iv364.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul100.i, %i.gh
  %i.gi = sext i32 %factor.op.mul.reass.us.i to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.gi
  %i.gk = add i32 %i.ek, %i.gh
  %i.gl = sdiv i32 %i.gk, %i.fm
  %i.gm = sext i32 %i.gl to i64
  br label %.preheader80.us.i

.preheader80.us.i:                                ; preds = %bb.aa, %.lr.ph.us.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next361.i, %bb.aa ] ; 3 uses
  %.idx422.i.a = shl nuw nsw i64 %indvars.iv360.i, 5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx422.i.a ; 7 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fu ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fw ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fy ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.ga ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gc ; 2 uses
  %i.gt = load <8 x i32>, ptr %i.gn, align 32, !tbaa !20
  %i.gu = load <8 x i32>, ptr %i.go, align 32, !tbaa !20 ; 2 uses
  %i.gv = load <8 x i32>, ptr %i.gp, align 32, !tbaa !20 ; 2 uses
  %i.gw = load <8 x i32>, ptr %i.gq, align 32, !tbaa !20 ; 2 uses
  %i.gx = load <8 x i32>, ptr %i.gr, align 32, !tbaa !20 ; 2 uses
  %i.gy = load <8 x i32>, ptr %i.gs, align 32, !tbaa !20
  %i.gz = add <8 x i32> %i.gv, %i.gu              ; 2 uses
  %i.ha = add <8 x i32> %i.gx, %i.gw              ; 2 uses
  %i.hb = sub <8 x i32> %i.gu, %i.gv              ; 2 uses
  %i.hc = sub <8 x i32> %i.gw, %i.gx              ; 2 uses
  %i.hd = add <8 x i32> %i.gz, %i.gt
  %i.he = add <8 x i32> %i.hd, %i.ha
  %i.hf = shl <8 x i32> %i.hc, splat (i32 1)
  %i.hg = add <8 x i32> %i.hf, %i.hb
  %i.hh = shl <8 x i32> %i.ha, splat (i32 2)
  %i.hi = add <8 x i32> %i.hh, %i.gz
  %i.hj = shl <8 x i32> %i.hc, splat (i32 3)
  %i.hk = add <8 x i32> %i.hj, %i.hb
  %i.hl = shl <8 x i32> %i.gy, splat (i32 2)
  %i.hm = add <8 x i32> %i.hk, %i.hl
  store <8 x i32> %i.he, ptr %i.a, align 32, !tbaa !20
  store <8 x i32> %i.hg, ptr %i.au, align 32, !tbaa !20
  store <8 x i32> %i.hi, ptr %i.av, align 32, !tbaa !20
  store <8 x i32> %i.hm, ptr %i.aw, align 32, !tbaa !20
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.ge ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.ge ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ge ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ge ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ge ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ge ; 2 uses
  %i.ht = load <8 x i32>, ptr %i.hn, align 32, !tbaa !20
  %i.hu = load <8 x i32>, ptr %i.ho, align 32, !tbaa !20 ; 2 uses
  %i.hv = load <8 x i32>, ptr %i.hp, align 32, !tbaa !20 ; 2 uses
  %i.hw = load <8 x i32>, ptr %i.hq, align 32, !tbaa !20 ; 2 uses
  %i.hx = load <8 x i32>, ptr %i.hr, align 32, !tbaa !20 ; 2 uses
  %i.hy = load <8 x i32>, ptr %i.hs, align 32, !tbaa !20
  %i.hz = add <8 x i32> %i.hv, %i.hu              ; 2 uses
  %i.ia = add <8 x i32> %i.hx, %i.hw              ; 2 uses
  %i.ib = sub <8 x i32> %i.hu, %i.hv              ; 2 uses
  %i.ic = sub <8 x i32> %i.hw, %i.hx              ; 2 uses
  %i.id = add <8 x i32> %i.hz, %i.ht
  %i.ie = add <8 x i32> %i.id, %i.ia
  %i.if = shl <8 x i32> %i.ic, splat (i32 1)
  %i.ig = add <8 x i32> %i.if, %i.ib
  %i.ih = shl <8 x i32> %i.ia, splat (i32 2)
  %i.ii = add <8 x i32> %i.ih, %i.hz
  %i.ij = shl <8 x i32> %i.ic, splat (i32 3)
  %i.ik = add <8 x i32> %i.ij, %i.ib
  %i.il = shl <8 x i32> %i.hy, splat (i32 2)
  %i.im = add <8 x i32> %i.ik, %i.il
  store <8 x i32> %i.ie, ptr %i.bc, align 32, !tbaa !20
  store <8 x i32> %i.ig, ptr %i.bd, align 32, !tbaa !20
  store <8 x i32> %i.ii, ptr %i.be, align 32, !tbaa !20
  store <8 x i32> %i.im, ptr %i.bf, align 32, !tbaa !20
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ge ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ge ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ge ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ge ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ge ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.ge ; 2 uses
  %i.it = load <8 x i32>, ptr %i.in, align 32, !tbaa !20
  %i.iu = load <8 x i32>, ptr %i.io, align 32, !tbaa !20 ; 2 uses
  %i.iv = load <8 x i32>, ptr %i.ip, align 32, !tbaa !20 ; 2 uses
  %i.iw = load <8 x i32>, ptr %i.iq, align 32, !tbaa !20 ; 2 uses
  %i.ix = load <8 x i32>, ptr %i.ir, align 32, !tbaa !20 ; 2 uses
  %i.iy = load <8 x i32>, ptr %i.is, align 32, !tbaa !20
  %i.iz = add <8 x i32> %i.iv, %i.iu              ; 2 uses
  %i.ja = add <8 x i32> %i.ix, %i.iw              ; 2 uses
  %i.jb = sub <8 x i32> %i.iu, %i.iv              ; 2 uses
  %i.jc = sub <8 x i32> %i.iw, %i.ix              ; 2 uses
  %i.jd = add <8 x i32> %i.iz, %i.it
  %i.je = add <8 x i32> %i.jd, %i.ja
  %i.jf = shl <8 x i32> %i.jc, splat (i32 1)
  %i.jg = add <8 x i32> %i.jf, %i.jb
  %i.jh = shl <8 x i32> %i.ja, splat (i32 2)
  %i.ji = add <8 x i32> %i.jh, %i.iz
  %i.jj = shl <8 x i32> %i.jc, splat (i32 3)
  %i.jk = add <8 x i32> %i.jj, %i.jb
  %i.jl = shl <8 x i32> %i.iy, splat (i32 2)
  %i.jm = add <8 x i32> %i.jk, %i.jl
  store <8 x i32> %i.je, ptr %i.bg, align 32, !tbaa !20
  store <8 x i32> %i.jg, ptr %i.bh, align 32, !tbaa !20
  store <8 x i32> %i.ji, ptr %i.bi, align 32, !tbaa !20
  store <8 x i32> %i.jm, ptr %i.bj, align 32, !tbaa !20
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ge ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ge ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ge ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ge ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ge ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ge ; 2 uses
  %i.jt = load <8 x i32>, ptr %i.jn, align 32, !tbaa !20
  %i.ju = load <8 x i32>, ptr %i.jo, align 32, !tbaa !20 ; 2 uses
  %i.jv = load <8 x i32>, ptr %i.jp, align 32, !tbaa !20 ; 2 uses
  %i.jw = load <8 x i32>, ptr %i.jq, align 32, !tbaa !20 ; 2 uses
  %i.jx = load <8 x i32>, ptr %i.jr, align 32, !tbaa !20 ; 2 uses
  %i.jy = load <8 x i32>, ptr %i.js, align 32, !tbaa !20
  %i.jz = add <8 x i32> %i.jv, %i.ju              ; 2 uses
  %i.ka = add <8 x i32> %i.jx, %i.jw              ; 2 uses
  %i.kb = sub <8 x i32> %i.ju, %i.jv              ; 2 uses
  %i.kc = sub <8 x i32> %i.jw, %i.jx              ; 2 uses
  %i.kd = add <8 x i32> %i.jz, %i.jt
  %i.ke = add <8 x i32> %i.kd, %i.ka
  %i.kf = shl <8 x i32> %i.kc, splat (i32 1)
  %i.kg = add <8 x i32> %i.kf, %i.kb
  %i.kh = shl <8 x i32> %i.ka, splat (i32 2)
  %i.ki = add <8 x i32> %i.kh, %i.jz
  %i.kj = shl <8 x i32> %i.kc, splat (i32 3)
  %i.kk = add <8 x i32> %i.kj, %i.kb
  %i.kl = shl <8 x i32> %i.jy, splat (i32 2)
  %i.km = add <8 x i32> %i.kk, %i.kl
  store <8 x i32> %i.ke, ptr %i.bk, align 32, !tbaa !20
  store <8 x i32> %i.kg, ptr %i.bl, align 32, !tbaa !20
  store <8 x i32> %i.ki, ptr %i.bm, align 32, !tbaa !20
  store <8 x i32> %i.km, ptr %i.bn, align 32, !tbaa !20
end_hunk_7
begin_hunk_8_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.pn = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 %.idx1033.i ; 4 uses
  %.sroa.051.0.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 0
  store i32 %.sroa.051.0.vec.extract.us.i, ptr %.098498.us.i, align 4, !tbaa !92
  %.sroa.051.4.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 1
  store i32 %.sroa.051.4.vec.extract.us.i, ptr %i.ph, align 4, !tbaa !92
  %.sroa.051.8.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 2
  store i32 %.sroa.051.8.vec.extract.us.i, ptr %i.pi, align 4, !tbaa !92
  %.sroa.051.12.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 3
  store i32 %.sroa.051.12.vec.extract.us.i, ptr %i.pj, align 4, !tbaa !92
  %.sroa.051.16.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 4
  store i32 %.sroa.051.16.vec.extract.us.i, ptr %i.pk, align 4, !tbaa !92
  %.sroa.051.20.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 5
  store i32 %.sroa.051.20.vec.extract.us.i, ptr %i.pl, align 4, !tbaa !92
  %.sroa.051.24.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 6
  store i32 %.sroa.051.24.vec.extract.us.i, ptr %i.pm, align 4, !tbaa !92
  %.sroa.051.28.vec.extract.us.i = extractelement <8 x i32> %i.ou, i64 7
  store i32 %.sroa.051.28.vec.extract.us.i, ptr %i.pn, align 4, !tbaa !92
  br i1 %i.nm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 0
  %i.po = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.po, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 1
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.pp, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 2
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.pq, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 3
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.pr, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.ps, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 5
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.pt, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 6
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.pu, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.ox, i64 7
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.pv, align 4, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.no, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.20.64.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 0
  %i.pw = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 8
  store i32 %.sroa.20.64.vec.extract.us.i, ptr %i.pw, align 4, !tbaa !92
  %.sroa.20.68.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 1
  %i.px = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 %.sroa.20.68.vec.extract.us.i, ptr %i.px, align 4, !tbaa !92
  %.sroa.20.72.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 2
  %i.py = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i32 %.sroa.20.72.vec.extract.us.i, ptr %i.py, align 4, !tbaa !92
  %.sroa.20.76.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i32 %.sroa.20.76.vec.extract.us.i, ptr %i.pz, align 4, !tbaa !92
  %.sroa.20.80.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i32 %.sroa.20.80.vec.extract.us.i, ptr %i.qa, align 4, !tbaa !92
  %.sroa.20.84.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 5
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store i32 %.sroa.20.84.vec.extract.us.i, ptr %i.qb, align 4, !tbaa !92
  %.sroa.20.88.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 6
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store i32 %.sroa.20.88.vec.extract.us.i, ptr %i.qc, align 4, !tbaa !92
  %.sroa.20.92.vec.extract.us.i = extractelement <8 x i32> %i.pb, i64 7
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i32 %.sroa.20.92.vec.extract.us.i, ptr %i.qd, align 4, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.nq, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %.sroa.2955.96.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 0
  %i.qe = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 12
  store i32 %.sroa.2955.96.vec.extract.us.i, ptr %i.qe, align 4, !tbaa !92
  %.sroa.2955.100.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 1
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 %.sroa.2955.100.vec.extract.us.i, ptr %i.qf, align 4, !tbaa !92
  %.sroa.2955.104.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 2
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 %.sroa.2955.104.vec.extract.us.i, ptr %i.qg, align 4, !tbaa !92
  %.sroa.2955.108.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 3
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  store i32 %.sroa.2955.108.vec.extract.us.i, ptr %i.qh, align 4, !tbaa !92
  %.sroa.2955.112.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  store i32 %.sroa.2955.112.vec.extract.us.i, ptr %i.qi, align 4, !tbaa !92
  %.sroa.2955.116.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 5
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  store i32 %.sroa.2955.116.vec.extract.us.i, ptr %i.qj, align 4, !tbaa !92
  %.sroa.2955.120.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 6
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  store i32 %.sroa.2955.120.vec.extract.us.i, ptr %i.qk, align 4, !tbaa !92
  %.sroa.2955.124.vec.extract.us.i = extractelement <8 x i32> %i.pf, i64 7
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store i32 %.sroa.2955.124.vec.extract.us.i, ptr %i.ql, align 4, !tbaa !92
  br label %bb.y

bb.m:                                             ; preds = %bb.f
  %i.qm = bitcast <8 x i32> %i.ou to <4 x i64>    ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.098498.us.i, i64 %i.fp ; 4 uses
  %i.qo = shufflevector <4 x i64> %i.qm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qo, ptr %.098498.us.i, align 16, !tbaa !20
  %i.qp = shufflevector <4 x i64> %i.qm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qp, ptr %i.qn, align 16, !tbaa !20
  br i1 %i.nm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.qq = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 16
  %i.qr = shufflevector <4 x i64> %i.oy, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qr, ptr %i.qq, align 16, !tbaa !20
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qt = shufflevector <4 x i64> %i.oy, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qt, ptr %i.qs, align 16, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.no, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qu = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  %i.qv = shufflevector <4 x i64> %i.pc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qv, ptr %i.qu, align 16, !tbaa !20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.qx = shufflevector <4 x i64> %i.pc, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qx, ptr %i.qw, align 16, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.nq, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.qy = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 48
  %i.qz = shufflevector <4 x i64> %i.pg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qz, ptr %i.qy, align 16, !tbaa !20
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  %i.rb = shufflevector <4 x i64> %i.pg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.rb, ptr %i.ra, align 16, !tbaa !20
  br label %bb.y

bb.s:                                             ; preds = %bb.f
  store <8 x i32> %i.ou, ptr %.098498.us.i, align 32, !tbaa !20
  br i1 %i.nm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.rc = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  store <8 x i32> %i.ox, ptr %i.rc, align 32, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.no, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.rd = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 64
  store <8 x i32> %i.pb, ptr %i.rd, align 32, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.nq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.re = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 96
  store <8 x i32> %i.pf, ptr %i.re, align 32, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.rf = getelementptr inbounds [4 x i8], ptr %.098498.us.i, i64 %i.gg
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.e
  %.1985.us.i = phi ptr [ %.098498.us.i, %bb.e ], [ %i.rf, %bb.y ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aa, label %bb.e, !llvm.loop !725

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count.i
  br i1 %exitcond363.not.i, label %._crit_edge.us.i, label %.preheader80.us.i, !llvm.loop !726

._crit_edge.us.i:                                 ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 8 ; 3 uses
  %i.rg = or disjoint i64 %indvars.iv.next365.i, 7
  %i.rh = icmp samesign ult i64 %i.rg, %i.fa
  br i1 %i.rh, label %.lr.ph.us.i, label %.preheader79.loopexit.i, !llvm.loop !727

.preheader79.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.ri = trunc nuw nsw i64 %indvars.iv.next365.i to i32
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.lr.ph103.i, %.preheader79.loopexit.i, %._crit_edge
  %.0949.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ri, %.preheader79.loopexit.i ], [ %i.ez, %.lr.ph103.i ] ; 6 uses
  %i.rj = or disjoint i32 %.0949.lcssa.i, 3
  %i.rk = icmp slt i32 %i.rj, %.sroa.speculated120
  br i1 %i.rk, label %.lr.ph150.i, label %.preheader77.i

.lr.ph150.i:                                      ; preds = %.preheader79.i
  %i.rl = icmp sgt i32 %.sroa.speculated116, 0
  %i.rm = shl nsw i32 %.sroa.speculated116, 2
  %i.rn = sext i32 %i.rm to i64
  %i.ro = shl nsw i32 %.sroa.speculated116, 3
  %i.rp = sext i32 %i.ro to i64
  %i.rq = mul nsw i32 %.sroa.speculated116, 12
  %i.rr = sext i32 %i.rq to i64
  %i.rs = shl nsw i32 %.sroa.speculated116, 4
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i32 %.sroa.speculated116, 20
  %i.rv = sext i32 %i.ru to i64
  %i.rw = mul nsw i32 %.sroa.speculated116, 24
  %i.rx = sext i32 %i.rw to i64                   ; 30 uses
  %.idx.i = shl i64 %i.fp, 3
  %.idx1026.i = mul i64 %i.fp, 12
  %i.ry = mul nsw i32 %i.fm, %i.fk
  %i.rz = sext i32 %i.ry to i64
  br i1 %i.rl, label %.lr.ph.us153.preheader.i, label %.lr.ph150.split.preheader.i

.lr.ph150.split.preheader.i:                      ; preds = %.lr.ph150.i
  %15 = add i32 %.0949.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %15)
  %reass.sub = sub i32 %smax.i, %.0949.lcssa.i
  %16 = and i32 %reass.sub, -4
  %i.sa = add i32 %.0949.lcssa.i, %16
  br label %.preheader77.i

.lr.ph.us153.preheader.i:                         ; preds = %.lr.ph150.i
  %i.sb = sext i32 %.0949.lcssa.i to i64
  %wide.trip.count378.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us153.i

.lr.ph.us153.i:                                   ; preds = %._crit_edge.us154.i, %.lr.ph.us153.preheader.i
  %indvars.iv380.i = phi i64 [ %i.sb, %.lr.ph.us153.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge.us154.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.sc = trunc nsw i64 %indvars.iv380.i to i32   ; 2 uses
  %factor.op.mul.reass.us152.i = mul i32 %factor.op.mul100.i, %i.sc
  %i.sd = sext i32 %factor.op.mul.reass.us152.i to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.sd
  %i.sf = add i32 %i.ek, %i.sc
  %i.sg = sdiv i32 %i.sf, %i.fm
  %i.sh = sext i32 %i.sg to i64
  br label %.preheader78.us.i

.preheader78.us.i:                                ; preds = %bb.ar, %.lr.ph.us153.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph.us153.i ], [ %indvars.iv.next376.i, %bb.ar ] ; 3 uses
  %.idx423.i.a = shl nuw nsw i64 %indvars.iv375.i, 4
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 %.idx423.i.a ; 7 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rn ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rp ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rr ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rt ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rv ; 2 uses
  %i.so = load <4 x i32>, ptr %i.si, align 16, !tbaa !20
  %i.sp = load <4 x i32>, ptr %i.sj, align 16, !tbaa !20 ; 2 uses
  %i.sq = load <4 x i32>, ptr %i.sk, align 16, !tbaa !20 ; 2 uses
  %i.sr = load <4 x i32>, ptr %i.sl, align 16, !tbaa !20 ; 2 uses
  %i.ss = load <4 x i32>, ptr %i.sm, align 16, !tbaa !20 ; 2 uses
  %i.st = load <4 x i32>, ptr %i.sn, align 16, !tbaa !20
  %i.su = add <4 x i32> %i.sq, %i.sp              ; 2 uses
  %i.sv = add <4 x i32> %i.ss, %i.sr              ; 2 uses
  %i.sw = sub <4 x i32> %i.sp, %i.sq              ; 2 uses
  %i.sx = sub <4 x i32> %i.sr, %i.ss              ; 2 uses
  %i.sy = add <4 x i32> %i.su, %i.so
  %i.sz = add <4 x i32> %i.sy, %i.sv
  %i.ta = shl <4 x i32> %i.sx, splat (i32 1)
  %i.tb = add <4 x i32> %i.ta, %i.sw
  %i.tc = shl <4 x i32> %i.sv, splat (i32 2)
  %i.td = add <4 x i32> %i.tc, %i.su
  %i.te = shl <4 x i32> %i.sx, splat (i32 3)
  %i.tf = add <4 x i32> %i.te, %i.sw
  %i.tg = shl <4 x i32> %i.st, splat (i32 2)
  %i.th = add <4 x i32> %i.tf, %i.tg
  store <4 x i32> %i.sz, ptr %i.b, align 16, !tbaa !20
  store <4 x i32> %i.tb, ptr %i.bs, align 16, !tbaa !20
  store <4 x i32> %i.td, ptr %i.bt, align 16, !tbaa !20
  store <4 x i32> %i.th, ptr %i.bu, align 16, !tbaa !20
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.rx ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.rx ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.rx ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.rx ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.rx ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rx ; 2 uses
  %i.to = load <4 x i32>, ptr %i.ti, align 16, !tbaa !20
  %i.tp = load <4 x i32>, ptr %i.tj, align 16, !tbaa !20 ; 2 uses
  %i.tq = load <4 x i32>, ptr %i.tk, align 16, !tbaa !20 ; 2 uses
  %i.tr = load <4 x i32>, ptr %i.tl, align 16, !tbaa !20 ; 2 uses
  %i.ts = load <4 x i32>, ptr %i.tm, align 16, !tbaa !20 ; 2 uses
  %i.tt = load <4 x i32>, ptr %i.tn, align 16, !tbaa !20
  %i.tu = add <4 x i32> %i.tq, %i.tp              ; 2 uses
  %i.tv = add <4 x i32> %i.ts, %i.tr              ; 2 uses
  %i.tw = sub <4 x i32> %i.tp, %i.tq              ; 2 uses
  %i.tx = sub <4 x i32> %i.tr, %i.ts              ; 2 uses
  %i.ty = add <4 x i32> %i.tu, %i.to
  %i.tz = add <4 x i32> %i.ty, %i.tv
  %i.ua = shl <4 x i32> %i.tx, splat (i32 1)
  %i.ub = add <4 x i32> %i.ua, %i.tw
  %i.uc = shl <4 x i32> %i.tv, splat (i32 2)
  %i.ud = add <4 x i32> %i.uc, %i.tu
  %i.ue = shl <4 x i32> %i.tx, splat (i32 3)
  %i.uf = add <4 x i32> %i.ue, %i.tw
  %i.ug = shl <4 x i32> %i.tt, splat (i32 2)
  %i.uh = add <4 x i32> %i.uf, %i.ug
  store <4 x i32> %i.tz, ptr %i.bz, align 16, !tbaa !20
  store <4 x i32> %i.ub, ptr %i.ca, align 16, !tbaa !20
  store <4 x i32> %i.ud, ptr %i.cb, align 16, !tbaa !20
  store <4 x i32> %i.uh, ptr %i.cc, align 16, !tbaa !20
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.rx ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.rx ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.rx ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.rx ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.rx ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.rx ; 2 uses
  %i.uo = load <4 x i32>, ptr %i.ui, align 16, !tbaa !20
  %i.up = load <4 x i32>, ptr %i.uj, align 16, !tbaa !20 ; 2 uses
  %i.uq = load <4 x i32>, ptr %i.uk, align 16, !tbaa !20 ; 2 uses
  %i.ur = load <4 x i32>, ptr %i.ul, align 16, !tbaa !20 ; 2 uses
  %i.us = load <4 x i32>, ptr %i.um, align 16, !tbaa !20 ; 2 uses
  %i.ut = load <4 x i32>, ptr %i.un, align 16, !tbaa !20
  %i.uu = add <4 x i32> %i.uq, %i.up              ; 2 uses
  %i.uv = add <4 x i32> %i.us, %i.ur              ; 2 uses
  %i.uw = sub <4 x i32> %i.up, %i.uq              ; 2 uses
  %i.ux = sub <4 x i32> %i.ur, %i.us              ; 2 uses
  %i.uy = add <4 x i32> %i.uu, %i.uo
  %i.uz = add <4 x i32> %i.uy, %i.uv
  %i.va = shl <4 x i32> %i.ux, splat (i32 1)
  %i.vb = add <4 x i32> %i.va, %i.uw
  %i.vc = shl <4 x i32> %i.uv, splat (i32 2)
  %i.vd = add <4 x i32> %i.vc, %i.uu
  %i.ve = shl <4 x i32> %i.ux, splat (i32 3)
  %i.vf = add <4 x i32> %i.ve, %i.uw
  %i.vg = shl <4 x i32> %i.ut, splat (i32 2)
  %i.vh = add <4 x i32> %i.vf, %i.vg
  store <4 x i32> %i.uz, ptr %i.cd, align 16, !tbaa !20
  store <4 x i32> %i.vb, ptr %i.ce, align 16, !tbaa !20
  store <4 x i32> %i.vd, ptr %i.cf, align 16, !tbaa !20
  store <4 x i32> %i.vh, ptr %i.cg, align 16, !tbaa !20
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %i.rx ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.rx ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.rx ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.rx ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.rx ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.rx ; 2 uses
  %i.vo = load <4 x i32>, ptr %i.vi, align 16, !tbaa !20
  %i.vp = load <4 x i32>, ptr %i.vj, align 16, !tbaa !20 ; 2 uses
  %i.vq = load <4 x i32>, ptr %i.vk, align 16, !tbaa !20 ; 2 uses
  %i.vr = load <4 x i32>, ptr %i.vl, align 16, !tbaa !20 ; 2 uses
  %i.vs = load <4 x i32>, ptr %i.vm, align 16, !tbaa !20 ; 2 uses
  %i.vt = load <4 x i32>, ptr %i.vn, align 16, !tbaa !20
  %i.vu = add <4 x i32> %i.vq, %i.vp              ; 2 uses
  %i.vv = add <4 x i32> %i.vs, %i.vr              ; 2 uses
  %i.vw = sub <4 x i32> %i.vp, %i.vq              ; 2 uses
  %i.vx = sub <4 x i32> %i.vr, %i.vs              ; 2 uses
  %i.vy = add <4 x i32> %i.vu, %i.vo
  %i.vz = add <4 x i32> %i.vy, %i.vv
  %i.wa = shl <4 x i32> %i.vx, splat (i32 1)
  %i.wb = add <4 x i32> %i.wa, %i.vw
  %i.wc = shl <4 x i32> %i.vv, splat (i32 2)
  %i.wd = add <4 x i32> %i.wc, %i.vu
  %i.we = shl <4 x i32> %i.vx, splat (i32 3)
  %i.wf = add <4 x i32> %i.we, %i.vw
  %i.wg = shl <4 x i32> %i.vt, splat (i32 2)
  %i.wh = add <4 x i32> %i.wf, %i.wg
  store <4 x i32> %i.vz, ptr %i.ch, align 16, !tbaa !20
  store <4 x i32> %i.wb, ptr %i.ci, align 16, !tbaa !20
  store <4 x i32> %i.wd, ptr %i.cj, align 16, !tbaa !20
  store <4 x i32> %i.wh, ptr %i.ck, align 16, !tbaa !20
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.rx ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.rx ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.rx ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.rx ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.rx ; 2 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.rx ; 2 uses
  %i.wo = load <4 x i32>, ptr %i.wi, align 16, !tbaa !20
  %i.wp = load <4 x i32>, ptr %i.wj, align 16, !tbaa !20 ; 2 uses
  %i.wq = load <4 x i32>, ptr %i.wk, align 16, !tbaa !20 ; 2 uses
  %i.wr = load <4 x i32>, ptr %i.wl, align 16, !tbaa !20 ; 2 uses
  %i.ws = load <4 x i32>, ptr %i.wm, align 16, !tbaa !20 ; 2 uses
  %i.wt = load <4 x i32>, ptr %i.wn, align 16, !tbaa !20
  %i.wu = add <4 x i32> %i.wq, %i.wp              ; 2 uses
  %i.wv = add <4 x i32> %i.ws, %i.wr              ; 2 uses
  %i.ww = sub <4 x i32> %i.wp, %i.wq              ; 2 uses
  %i.wx = sub <4 x i32> %i.wr, %i.ws              ; 2 uses
  %i.wy = add <4 x i32> %i.wu, %i.wo
  %i.wz = add <4 x i32> %i.wy, %i.wv
  %i.xa = shl <4 x i32> %i.wx, splat (i32 1)
  %i.xb = add <4 x i32> %i.xa, %i.ww
  %i.xc = shl <4 x i32> %i.wv, splat (i32 2)
  %i.xd = add <4 x i32> %i.xc, %i.wu
  %i.xe = shl <4 x i32> %i.wx, splat (i32 3)
  %i.xf = add <4 x i32> %i.xe, %i.ww
  %i.xg = shl <4 x i32> %i.wt, splat (i32 2)
  %i.xh = add <4 x i32> %i.xf, %i.xg
  store <4 x i32> %i.wz, ptr %i.cl, align 16, !tbaa !20
  store <4 x i32> %i.xb, ptr %i.cm, align 16, !tbaa !20
  store <4 x i32> %i.xd, ptr %i.cn, align 16, !tbaa !20
  store <4 x i32> %i.xh, ptr %i.co, align 16, !tbaa !20
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.rx
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.rx
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.rx
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.rx
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.rx
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.rx
  %i.xo = trunc i64 %indvars.iv375.i to i32
  %i.xp = add i32 %.044130, %i.xo                 ; 2 uses
  %i.xq = sdiv i32 %i.xp, %i.fr
  %i.xr = srem i32 %i.xp, %i.fr
  %i.xs = load <4 x i32>, ptr %i.xi, align 16, !tbaa !20
  %i.xt = load <4 x i32>, ptr %i.xj, align 16, !tbaa !20 ; 2 uses
  %i.xu = load <4 x i32>, ptr %i.xk, align 16, !tbaa !20 ; 2 uses
  %i.xv = load <4 x i32>, ptr %i.xl, align 16, !tbaa !20 ; 2 uses
  %i.xw = load <4 x i32>, ptr %i.xm, align 16, !tbaa !20 ; 2 uses
  %i.xx = load <4 x i32>, ptr %i.xn, align 16, !tbaa !20
  %i.xy = add <4 x i32> %i.xu, %i.xt              ; 2 uses
  %i.xz = add <4 x i32> %i.xw, %i.xv              ; 2 uses
  %i.ya = sub <4 x i32> %i.xt, %i.xu
  %i.yb = sub <4 x i32> %i.xv, %i.xw              ; 2 uses
  %i.yc = add <4 x i32> %i.xy, %i.xs
  %i.yd = add <4 x i32> %i.yc, %i.xz
  %i.ye = shl <4 x i32> %i.yd, splat (i32 2)
  %i.yf = shl <4 x i32> %i.yb, splat (i32 3)
  %i.yg = shl <4 x i32> %i.ya, splat (i32 2)      ; 2 uses
  %i.yh = add <4 x i32> %i.yf, %i.yg
  %i.yi = shl <4 x i32> %i.xz, splat (i32 4)
  %i.yj = shl <4 x i32> %i.xy, splat (i32 2)
end_hunk_8
begin_hunk_9_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.yl = shl <4 x i32> %i.xx, splat (i32 4)
  %i.ym = shl <4 x i32> %i.yb, splat (i32 5)
  %i.yn = add <4 x i32> %i.ym, %i.yg
  %i.yo = add <4 x i32> %i.yn, %i.yl
  store <4 x i32> %i.ye, ptr %i.bv, align 16, !tbaa !20
  store <4 x i32> %i.yh, ptr %i.bw, align 16, !tbaa !20
  store <4 x i32> %i.yk, ptr %i.bx, align 16, !tbaa !20
  store <4 x i32> %i.yo, ptr %i.by, align 16, !tbaa !20
  %i.yp = load i32, ptr %i.aq, align 4, !tbaa !93, !noalias !728
  %i.yq = load ptr, ptr %12, align 8, !tbaa !9, !noalias !728
  %i.yr = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !728
  %i.ys = mul i64 %i.yr, %i.sh
  %i.yt = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !728 ; 2 uses
  %i.yu = mul i64 %i.ys, %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yu
  %i.yw = sext i32 %i.yp to i64
  %i.yx = shl nsw i32 %i.xq, 2                    ; 2 uses
  %i.yy = sext i32 %i.yx to i64
  %i.yz = mul nsw i64 %i.yw, %i.yy
  %i.za = mul i64 %i.yz, %i.yt
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.za
  %i.zc = shl nsw i32 %i.xr, 2                    ; 4 uses
  %i.zd = mul nsw i32 %i.zc, %i.fm
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.ze
  %i.zg = or disjoint i32 %i.zc, 1
  %i.zh = icmp slt i32 %i.zg, %i.fk               ; 2 uses
  %i.zi = or disjoint i32 %i.zc, 2
  %i.zj = icmp slt i32 %i.zi, %i.fk               ; 2 uses
  %i.zk = or disjoint i32 %i.zc, 3
  %i.zl = icmp slt i32 %i.zk, %i.fk               ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aq, %.preheader78.us.i
  %indvars.iv371.i = phi i64 [ %indvars.iv.next372.i, %bb.aq ], [ 0, %.preheader78.us.i ] ; 3 uses
  %.01004145.us.i = phi ptr [ %.11005.us.i, %bb.aq ], [ %i.zf, %.preheader78.us.i ] ; 13 uses
  %i.zm = trunc i64 %indvars.iv371.i to i32
  %i.zn = or i32 %i.yx, %i.zm
  %.not1025.us.i = icmp slt i32 %i.zn, %i.fl
  br i1 %.not1025.us.i, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.zo = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv371.i ; 6 uses
  %i.zp = load <4 x i32>, ptr %i.zo, align 16, !tbaa !20
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zr = load <4 x i32>, ptr %i.zq, align 16, !tbaa !20 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 32
  %i.zt = load <4 x i32>, ptr %i.zs, align 16, !tbaa !20 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 48
  %i.zv = load <4 x i32>, ptr %i.zu, align 16, !tbaa !20 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zo, i64 64
  %i.zx = load <4 x i32>, ptr %i.zw, align 16, !tbaa !20 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zo, i64 80
  %i.zz = load <4 x i32>, ptr %i.zy, align 16, !tbaa !20
  %i.aaa = add <4 x i32> %i.zt, %i.zr             ; 2 uses
  %i.aab = add <4 x i32> %i.zx, %i.zv             ; 2 uses
  %i.aac = sub <4 x i32> %i.zr, %i.zt             ; 2 uses
  %i.aad = sub <4 x i32> %i.zv, %i.zx             ; 2 uses
  %i.aae = add <4 x i32> %i.aaa, %i.zp
  %i.aaf = add <4 x i32> %i.aae, %i.aab
  %i.aag = shl <4 x i32> %i.aad, splat (i32 1)
  %i.aah = add <4 x i32> %i.aag, %i.aac
  %i.aai = shl <4 x i32> %i.aab, splat (i32 2)
  %i.aaj = add <4 x i32> %i.aai, %i.aaa
  %i.aak = shl <4 x i32> %i.aad, splat (i32 3)
  %i.aal = add <4 x i32> %i.zz, %i.aac
  %i.aam = add <4 x i32> %i.aal, %i.aak
  %i.aan = sitofp fast <4 x i32> %i.aaf to <4 x float>
  %i.aao = fmul fast <4 x float> %i.aan, splat (float f0x3AE38E39)
  %i.aap = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aao) ; 5 uses
  %i.aaq = sitofp fast <4 x i32> %i.aah to <4 x float>
  %i.aar = fmul fast <4 x float> %i.aaq, splat (float f0x3AE38E39)
  %i.aas = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aar) ; 5 uses
  %i.aat = sitofp fast <4 x i32> %i.aaj to <4 x float>
  %i.aau = fmul fast <4 x float> %i.aat, splat (float f0x3AE38E39)
  %i.aav = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aau) ; 5 uses
  %i.aaw = sitofp fast <4 x i32> %i.aam to <4 x float>
  %i.aax = fmul fast <4 x float> %i.aaw, splat (float f0x3AE38E39)
  %i.aay = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aax) ; 5 uses
  switch i32 %i.fm, label %bb.ap [
    i32 4, label %bb.aj
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.01004145.us.i, i64 %i.fp ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx.i ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx1026.i ; 4 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.aap, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %.01004145.us.i, align 4, !tbaa !92
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.aap, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.aaz, align 4, !tbaa !92
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.aap, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.aba, align 4, !tbaa !92
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.aap, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.abb, align 4, !tbaa !92
  br i1 %i.zh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.aas, i64 0
  %i.abc = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.abc, align 4, !tbaa !92
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.aas, i64 1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.abd, align 4, !tbaa !92
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.aas, i64 2
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.abe, align 4, !tbaa !92
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.aas, i64 3
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.abf, align 4, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.zj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.aav, i64 0
  %i.abg = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.abg, align 4, !tbaa !92
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.aav, i64 1
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.abh, align 4, !tbaa !92
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.aav, i64 2
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.abi, align 4, !tbaa !92
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.aav, i64 3
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.abj, align 4, !tbaa !92
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.zl, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.sroa.1731.48.vec.extract.us.i = extractelement <4 x i32> %i.aay, i64 0
  %i.abk = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 12
  store i32 %.sroa.1731.48.vec.extract.us.i, ptr %i.abk, align 4, !tbaa !92
  %.sroa.1731.52.vec.extract.us.i = extractelement <4 x i32> %i.aay, i64 1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaz, i64 12
  store i32 %.sroa.1731.52.vec.extract.us.i, ptr %i.abl, align 4, !tbaa !92
  %.sroa.1731.56.vec.extract.us.i = extractelement <4 x i32> %i.aay, i64 2
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aba, i64 12
  store i32 %.sroa.1731.56.vec.extract.us.i, ptr %i.abm, align 4, !tbaa !92
  %.sroa.1731.60.vec.extract.us.i = extractelement <4 x i32> %i.aay, i64 3
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abb, i64 12
  store i32 %.sroa.1731.60.vec.extract.us.i, ptr %i.abn, align 4, !tbaa !92
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ac
  store <4 x i32> %i.aap, ptr %.01004145.us.i, align 16, !tbaa !20
  br i1 %i.zh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.abo = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 16
  store <4 x i32> %i.aas, ptr %i.abo, align 16, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.zj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.abp = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 32
  store <4 x i32> %i.aav, ptr %i.abp, align 16, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.zl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.abq = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 48
  store <4 x i32> %i.aay, ptr %i.abq, align 16, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ac
  %i.abr = getelementptr inbounds [4 x i8], ptr %.01004145.us.i, i64 %i.rz
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ab
  %.11005.us.i = phi ptr [ %.01004145.us.i, %bb.ab ], [ %i.abr, %bb.ap ]
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next372.i, 4
  br i1 %exitcond374.not.i, label %bb.ar, label %bb.ab, !llvm.loop !731

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count378.i
  br i1 %exitcond379.not.i, label %._crit_edge.us154.i, label %.preheader78.us.i, !llvm.loop !732

._crit_edge.us154.i:                              ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 4 ; 3 uses
  %i.abs = icmp slt i64 %indvars.iv.next381.i, %invariant.op.i
  br i1 %i.abs, label %.lr.ph.us153.i, label %.preheader77.loopexit.i, !llvm.loop !733

.preheader77.loopexit.i:                          ; preds = %._crit_edge.us154.i
  %i.abt = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %.preheader77.loopexit.i, %.lr.ph150.split.preheader.i, %.preheader79.i
  %.1950.lcssa.i = phi i32 [ %.0949.lcssa.i, %.preheader79.i ], [ %i.abt, %.preheader77.loopexit.i ], [ %i.sa, %.lr.ph150.split.preheader.i ] ; 6 uses
  %i.abu = or disjoint i32 %.1950.lcssa.i, 1
  %i.abv = icmp slt i32 %i.abu, %.sroa.speculated120
  br i1 %i.abv, label %.lr.ph206.i, label %.preheader75.i

.lr.ph206.i:                                      ; preds = %.preheader77.i
  %i.abw = icmp sgt i32 %.sroa.speculated116, 0
  %i.abx = shl nsw i32 %.sroa.speculated116, 1
  %i.aby = sext i32 %i.abx to i64
  %i.abz = shl nsw i32 %.sroa.speculated116, 2
  %i.aca = sext i32 %i.abz to i64
  %i.acb = mul nsw i32 %.sroa.speculated116, 6
  %i.acc = sext i32 %i.acb to i64
  %i.acd = shl nsw i32 %.sroa.speculated116, 3
  %i.ace = sext i32 %i.acd to i64
  %i.acf = mul nsw i32 %.sroa.speculated116, 10
  %i.acg = sext i32 %i.acf to i64
  %i.ach = mul nsw i32 %.sroa.speculated116, 12
  %i.aci = sext i32 %i.ach to i64                 ; 30 uses
  %i.acj = sext i32 %i.fk to i64
  br i1 %i.abw, label %.lr.ph206.split.us.i, label %.lr.ph206.split.preheader.i

.lr.ph206.split.preheader.i:                      ; preds = %.lr.ph206.i
  %17 = add i32 %.1950.lcssa.i, 3
  %smax383.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %17)
  %reass.sub136 = sub i32 %smax383.i, %.1950.lcssa.i
  %18 = and i32 %reass.sub136, -2
  %i.ack = add i32 %.1950.lcssa.i, %18
  br label %.preheader75.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph206.i
  %i.acl = load ptr, ptr %12, align 8, !tbaa !9, !noalias !734
  %i.acm = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !734
  %i.acn = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !734 ; 2 uses
  %factor.op.mul.i = mul i64 %i.acn, %i.acm
  %i.aco = sext i32 %.1950.lcssa.i to i64
  %wide.trip.count395.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us209.i

.lr.ph.us209.i:                                   ; preds = %._crit_edge.us210.i, %.lr.ph206.split.us.i
  %indvars.iv397.i = phi i64 [ %indvars.iv.next398.i, %._crit_edge.us210.i ], [ %i.aco, %.lr.ph206.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.acp = trunc nsw i64 %indvars.iv397.i to i32
  %factor.op.mul.reass.us208.i = mul i32 %factor.op.mul100.i, %i.acp
  %i.acq = sext i32 %factor.op.mul.reass.us208.i to i64
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.acq
  %i.acs = add nsw i64 %indvars.iv397.i, %i.fc
  %.reass.i = mul i64 %factor.op.mul.i, %i.acs
  %i.act = getelementptr inbounds nuw i8, ptr %i.acl, i64 %.reass.i
  br label %.preheader76.us.i

.preheader76.us.i:                                ; preds = %bb.bb, %.lr.ph.us209.i
  %indvars.iv392.i = phi i64 [ 0, %.lr.ph.us209.i ], [ %indvars.iv.next393.i, %bb.bb ] ; 3 uses
  %.idx424.i = shl nuw nsw i64 %indvars.iv392.i, 3
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.idx424.i ; 8 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.aby ; 3 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.aca ; 3 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.acc ; 3 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.ace ; 3 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.acg ; 3 uses
  %i.ada = load i32, ptr %i.acv, align 4, !tbaa !92 ; 2 uses
  %i.adb = load i32, ptr %i.acw, align 4, !tbaa !92 ; 2 uses
  %i.adc = add nsw i32 %i.adb, %i.ada             ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !92 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !92 ; 2 uses
  %i.adh = add nsw i32 %i.adg, %i.ade             ; 2 uses
  %i.adi = load i32, ptr %i.acx, align 4, !tbaa !92 ; 2 uses
  %i.adj = load i32, ptr %i.acy, align 4, !tbaa !92 ; 2 uses
  %i.adk = add nsw i32 %i.adj, %i.adi             ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !92 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !92 ; 2 uses
  %i.adp = add nsw i32 %i.ado, %i.adm             ; 2 uses
  %i.adq = sub nsw i32 %i.ada, %i.adb             ; 2 uses
  %i.adr = sub nsw i32 %i.ade, %i.adg             ; 2 uses
  %i.ads = sub nsw i32 %i.adi, %i.adj             ; 2 uses
  %i.adt = sub nsw i32 %i.adm, %i.ado             ; 2 uses
  %i.adu = add nsw i32 %i.adk, %i.adc
  %i.adv = load i32, ptr %i.acu, align 4, !tbaa !92
  %i.adw = add nsw i32 %i.adu, %i.adv
  %i.adx = add nsw i32 %i.adp, %i.adh
  %i.ady = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !92
  %i.aea = add nsw i32 %i.adx, %i.adz
  %i.aeb = shl nsw i32 %i.ads, 1
  %i.aec = add nsw i32 %i.aeb, %i.adq
  %i.aed = shl nsw i32 %i.adt, 1
  %i.aee = add nsw i32 %i.aed, %i.adr
  %i.aef = shl nsw i32 %i.adk, 2
  %i.aeg = add nsw i32 %i.aef, %i.adc
  %i.aeh = shl nsw i32 %i.adp, 2
  %i.aei = add nsw i32 %i.aeh, %i.adh
  %i.aej = shl nsw i32 %i.ads, 3
  %i.aek = add nsw i32 %i.aej, %i.adq
  %i.ael = load i32, ptr %i.acz, align 4, !tbaa !92
  %i.aem = shl nsw i32 %i.ael, 2
  %i.aen = add nsw i32 %i.aek, %i.aem
  %i.aeo = shl nsw i32 %i.adt, 3
  %i.aep = add nsw i32 %i.aeo, %i.adr
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !92
  %i.aes = shl nsw i32 %i.aer, 2
  %i.aet = add nsw i32 %i.aep, %i.aes
  store i32 %i.adw, ptr %i.c, align 16, !tbaa !92
  store i32 %i.aea, ptr %i.cz, align 4, !tbaa !92
  store i32 %i.aec, ptr %i.cp, align 16, !tbaa !92
  store i32 %i.aee, ptr %i.da, align 4, !tbaa !92
  store i32 %i.aeg, ptr %i.cq, align 16, !tbaa !92
  store i32 %i.aei, ptr %i.db, align 4, !tbaa !92
  store i32 %i.aen, ptr %i.cr, align 16, !tbaa !92
  store i32 %i.aet, ptr %i.dc, align 4, !tbaa !92
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.aci ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.aci ; 3 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aci ; 3 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.aci ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %i.aci ; 3 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.aci ; 3 uses
  %i.afa = load i32, ptr %i.aev, align 4, !tbaa !92 ; 2 uses
  %i.afb = load i32, ptr %i.aew, align 4, !tbaa !92 ; 2 uses
  %i.afc = add nsw i32 %i.afb, %i.afa             ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !92 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !92 ; 2 uses
  %i.afh = add nsw i32 %i.afg, %i.afe             ; 2 uses
  %i.afi = load i32, ptr %i.aex, align 4, !tbaa !92 ; 2 uses
  %i.afj = load i32, ptr %i.aey, align 4, !tbaa !92 ; 2 uses
  %i.afk = add nsw i32 %i.afj, %i.afi             ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aex, i64 4
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !92 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !92 ; 2 uses
  %i.afp = add nsw i32 %i.afo, %i.afm             ; 2 uses
  %i.afq = sub nsw i32 %i.afa, %i.afb             ; 2 uses
  %i.afr = sub nsw i32 %i.afe, %i.afg             ; 2 uses
  %i.afs = sub nsw i32 %i.afi, %i.afj             ; 2 uses
  %i.aft = sub nsw i32 %i.afm, %i.afo             ; 2 uses
  %i.afu = add nsw i32 %i.afk, %i.afc
  %i.afv = load i32, ptr %i.aeu, align 4, !tbaa !92
  %i.afw = add nsw i32 %i.afu, %i.afv
  %i.afx = add nsw i32 %i.afp, %i.afh
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !92
  %i.aga = add nsw i32 %i.afx, %i.afz
  %i.agb = shl nsw i32 %i.afs, 1
  %i.agc = add nsw i32 %i.agb, %i.afq
  %i.agd = shl nsw i32 %i.aft, 1
  %i.age = add nsw i32 %i.agd, %i.afr
  %i.agf = shl nsw i32 %i.afk, 2
  %i.agg = add nsw i32 %i.agf, %i.afc
  %i.agh = shl nsw i32 %i.afp, 2
  %i.agi = add nsw i32 %i.agh, %i.afh
  %i.agj = shl nsw i32 %i.afs, 3
  %i.agk = add nsw i32 %i.agj, %i.afq
  %i.agl = load i32, ptr %i.aez, align 4, !tbaa !92
  %i.agm = shl nsw i32 %i.agl, 2
  %i.agn = add nsw i32 %i.agk, %i.agm
  %i.ago = shl nsw i32 %i.aft, 3
  %i.agp = add nsw i32 %i.ago, %i.afr
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !92
  %i.ags = shl nsw i32 %i.agr, 2
  %i.agt = add nsw i32 %i.agp, %i.ags
  store i32 %i.afw, ptr %i.dd, align 8, !tbaa !92
  store i32 %i.aga, ptr %i.de, align 4, !tbaa !92
  store i32 %i.agc, ptr %i.df, align 8, !tbaa !92
  store i32 %i.age, ptr %i.dg, align 4, !tbaa !92
  store i32 %i.agg, ptr %i.dh, align 8, !tbaa !92
  store i32 %i.agi, ptr %i.di, align 4, !tbaa !92
  store i32 %i.agn, ptr %i.dj, align 8, !tbaa !92
  store i32 %i.agt, ptr %i.dk, align 4, !tbaa !92
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.aci ; 3 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.aci ; 3 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %i.aci ; 3 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.aci ; 3 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.aci ; 3 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aci ; 3 uses
  %i.aha = load i32, ptr %i.agv, align 4, !tbaa !92 ; 2 uses
  %i.ahb = load i32, ptr %i.agw, align 4, !tbaa !92 ; 2 uses
  %i.ahc = add nsw i32 %i.ahb, %i.aha             ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agv, i64 4
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !92 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !92 ; 2 uses
  %i.ahh = add nsw i32 %i.ahg, %i.ahe             ; 2 uses
  %i.ahi = load i32, ptr %i.agx, align 4, !tbaa !92 ; 2 uses
  %i.ahj = load i32, ptr %i.agy, align 4, !tbaa !92 ; 2 uses
  %i.ahk = add nsw i32 %i.ahj, %i.ahi             ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agx, i64 4
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !92 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agy, i64 4
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !92 ; 2 uses
  %i.ahp = add nsw i32 %i.aho, %i.ahm             ; 2 uses
  %i.ahq = sub nsw i32 %i.aha, %i.ahb             ; 2 uses
  %i.ahr = sub nsw i32 %i.ahe, %i.ahg             ; 2 uses
  %i.ahs = sub nsw i32 %i.ahi, %i.ahj             ; 2 uses
  %i.aht = sub nsw i32 %i.ahm, %i.aho             ; 2 uses
  %i.ahu = add nsw i32 %i.ahk, %i.ahc
  %i.ahv = load i32, ptr %i.agu, align 4, !tbaa !92
  %i.ahw = add nsw i32 %i.ahu, %i.ahv
  %i.ahx = add nsw i32 %i.ahp, %i.ahh
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !92
  %i.aia = add nsw i32 %i.ahx, %i.ahz
  %i.aib = shl nsw i32 %i.ahs, 1
  %i.aic = add nsw i32 %i.aib, %i.ahq
  %i.aid = shl nsw i32 %i.aht, 1
  %i.aie = add nsw i32 %i.aid, %i.ahr
  %i.aif = shl nsw i32 %i.ahk, 2
  %i.aig = add nsw i32 %i.aif, %i.ahc
  %i.aih = shl nsw i32 %i.ahp, 2
  %i.aii = add nsw i32 %i.aih, %i.ahh
  %i.aij = shl nsw i32 %i.ahs, 3
  %i.aik = add nsw i32 %i.aij, %i.ahq
  %i.ail = load i32, ptr %i.agz, align 4, !tbaa !92
  %i.aim = shl nsw i32 %i.ail, 2
  %i.ain = add nsw i32 %i.aik, %i.aim
  %i.aio = shl nsw i32 %i.aht, 3
  %i.aip = add nsw i32 %i.aio, %i.ahr
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !92
  %i.ais = shl nsw i32 %i.air, 2
  %i.ait = add nsw i32 %i.aip, %i.ais
  store i32 %i.ahw, ptr %i.dl, align 16, !tbaa !92
  store i32 %i.aia, ptr %i.dm, align 4, !tbaa !92
end_hunk_9
begin_hunk_10_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.ais = getelementptr inbounds [2 x i8], ptr %i.ahl, i64 %i.aip ; 2 uses
  %i.ait = getelementptr inbounds [2 x i8], ptr %i.aho, i64 %i.aip ; 2 uses
  %i.aiu = getelementptr inbounds [2 x i8], ptr %i.ahr, i64 %i.aip ; 2 uses
  %i.aiv = getelementptr inbounds [2 x i8], ptr %i.ahu, i64 %i.aip ; 2 uses
  %i.aiw = shl <8 x i16> %i.lp, splat (i16 2)     ; 2 uses
  %i.aix = sub <8 x i16> %i.wf, %i.aiw            ; 2 uses
  %i.aiy = shl <8 x i16> %i.qx, splat (i16 2)
  %i.aiz = sub <8 x i16> %i.abn, %i.aiy           ; 2 uses
  %i.aja = sub <8 x i16> %i.wf, %i.lp
  %i.ajb = shl <8 x i16> %i.aja, splat (i16 1)    ; 2 uses
  %i.ajc = sub <8 x i16> %i.abn, %i.qx            ; 2 uses
  %i.ajd = shl <8 x i16> %i.gh, splat (i16 2)
  %.neg.1 = mul <8 x i16> %i.qx, splat (i16 -5)
  %i.aje = add <8 x i16> %.neg.1, %i.ajd
  %i.ajf = add <8 x i16> %i.aje, %i.abn
  %i.ajg = add <8 x i16> %i.aiz, %i.aix
  %i.ajh = sub <8 x i16> %i.aiz, %i.aix
  %i.aji = add <8 x i16> %i.ajc, %i.ajb
  %i.ajj = sub <8 x i16> %i.ajc, %i.ajb
  %.neg246.1 = mul <8 x i16> %i.wf, splat (i16 -5)
  %i.ajk = add <8 x i16> %.neg246.1, %i.aiw
  %i.ajl = add <8 x i16> %i.ajk, %i.agv
  store <8 x i16> %i.ajf, ptr %i.aiq, align 16, !tbaa !20
  store <8 x i16> %i.ajg, ptr %i.air, align 16, !tbaa !20
  store <8 x i16> %i.ajh, ptr %i.ais, align 16, !tbaa !20
  store <8 x i16> %i.aji, ptr %i.ait, align 16, !tbaa !20
  store <8 x i16> %i.ajj, ptr %i.aiu, align 16, !tbaa !20
  store <8 x i16> %i.ajl, ptr %i.aiv, align 16, !tbaa !20
  %i.ajm = load i32, ptr %4, align 4, !tbaa !92
  %i.ajn = mul nsw i32 %i.ajm, 48
  %i.ajo = sext i32 %i.ajn to i64                 ; 6 uses
  %i.ajp = getelementptr inbounds [2 x i8], ptr %i.aiq, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr inbounds [2 x i8], ptr %i.air, i64 %i.ajo ; 2 uses
  %i.ajr = getelementptr inbounds [2 x i8], ptr %i.ais, i64 %i.ajo ; 2 uses
  %i.ajs = getelementptr inbounds [2 x i8], ptr %i.ait, i64 %i.ajo ; 2 uses
  %i.ajt = getelementptr inbounds [2 x i8], ptr %i.aiu, i64 %i.ajo ; 2 uses
  %i.aju = getelementptr inbounds [2 x i8], ptr %i.aiv, i64 %i.ajo ; 2 uses
  %i.ajv = shl <8 x i16> %i.lq, splat (i16 2)     ; 2 uses
  %i.ajw = sub <8 x i16> %i.wg, %i.ajv            ; 2 uses
  %i.ajx = shl <8 x i16> %i.qy, splat (i16 2)
  %i.ajy = sub <8 x i16> %i.abo, %i.ajx           ; 2 uses
  %i.ajz = sub <8 x i16> %i.wg, %i.lq
  %i.aka = shl <8 x i16> %i.ajz, splat (i16 1)    ; 2 uses
  %i.akb = sub <8 x i16> %i.abo, %i.qy            ; 2 uses
  %i.akc = shl <8 x i16> %i.gi, splat (i16 2)
  %.neg.2 = mul <8 x i16> %i.qy, splat (i16 -5)
  %i.akd = add <8 x i16> %.neg.2, %i.akc
  %i.ake = add <8 x i16> %i.akd, %i.abo
  %i.akf = add <8 x i16> %i.ajy, %i.ajw
  %i.akg = sub <8 x i16> %i.ajy, %i.ajw
  %i.akh = add <8 x i16> %i.akb, %i.aka
  %i.aki = sub <8 x i16> %i.akb, %i.aka
  %.neg246.2 = mul <8 x i16> %i.wg, splat (i16 -5)
  %i.akj = add <8 x i16> %.neg246.2, %i.ajv
  %i.akk = add <8 x i16> %i.akj, %i.agw
  store <8 x i16> %i.ake, ptr %i.ajp, align 16, !tbaa !20
  store <8 x i16> %i.akf, ptr %i.ajq, align 16, !tbaa !20
  store <8 x i16> %i.akg, ptr %i.ajr, align 16, !tbaa !20
  store <8 x i16> %i.akh, ptr %i.ajs, align 16, !tbaa !20
  store <8 x i16> %i.aki, ptr %i.ajt, align 16, !tbaa !20
  store <8 x i16> %i.akk, ptr %i.aju, align 16, !tbaa !20
  %i.akl = load i32, ptr %4, align 4, !tbaa !92
  %i.akm = mul nsw i32 %i.akl, 48
  %i.akn = sext i32 %i.akm to i64                 ; 6 uses
  %i.ako = getelementptr inbounds [2 x i8], ptr %i.ajp, i64 %i.akn ; 2 uses
  %i.akp = getelementptr inbounds [2 x i8], ptr %i.ajq, i64 %i.akn ; 2 uses
  %i.akq = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.akn ; 2 uses
  %i.akr = getelementptr inbounds [2 x i8], ptr %i.ajs, i64 %i.akn ; 2 uses
  %i.aks = getelementptr inbounds [2 x i8], ptr %i.ajt, i64 %i.akn ; 2 uses
  %i.akt = getelementptr inbounds [2 x i8], ptr %i.aju, i64 %i.akn ; 2 uses
  %i.aku = shl <8 x i16> %i.lr, splat (i16 2)     ; 2 uses
  %i.akv = sub <8 x i16> %i.wh, %i.aku            ; 2 uses
  %i.akw = shl <8 x i16> %i.qz, splat (i16 2)
  %i.akx = sub <8 x i16> %i.abp, %i.akw           ; 2 uses
  %i.aky = sub <8 x i16> %i.wh, %i.lr
  %i.akz = shl <8 x i16> %i.aky, splat (i16 1)    ; 2 uses
  %i.ala = sub <8 x i16> %i.abp, %i.qz            ; 2 uses
  %i.alb = shl <8 x i16> %i.gj, splat (i16 2)
  %.neg.3 = mul <8 x i16> %i.qz, splat (i16 -5)
  %i.alc = add <8 x i16> %.neg.3, %i.alb
  %i.ald = add <8 x i16> %i.alc, %i.abp
  %i.ale = add <8 x i16> %i.akx, %i.akv
  %i.alf = sub <8 x i16> %i.akx, %i.akv
  %i.alg = add <8 x i16> %i.ala, %i.akz
  %i.alh = sub <8 x i16> %i.ala, %i.akz
  %.neg246.3 = mul <8 x i16> %i.wh, splat (i16 -5)
  %i.ali = add <8 x i16> %.neg246.3, %i.aku
  %i.alj = add <8 x i16> %i.ali, %i.agx
  store <8 x i16> %i.ald, ptr %i.ako, align 16, !tbaa !20
  store <8 x i16> %i.ale, ptr %i.akp, align 16, !tbaa !20
  store <8 x i16> %i.alf, ptr %i.akq, align 16, !tbaa !20
  store <8 x i16> %i.alg, ptr %i.akr, align 16, !tbaa !20
  store <8 x i16> %i.alh, ptr %i.aks, align 16, !tbaa !20
  store <8 x i16> %i.alj, ptr %i.akt, align 16, !tbaa !20
  %i.alk = load i32, ptr %4, align 4, !tbaa !92
  %i.all = mul nsw i32 %i.alk, 48
  %i.alm = sext i32 %i.all to i64                 ; 6 uses
  %i.aln = getelementptr inbounds [2 x i8], ptr %i.ako, i64 %i.alm ; 2 uses
  %i.alo = getelementptr inbounds [2 x i8], ptr %i.akp, i64 %i.alm ; 2 uses
  %i.alp = getelementptr inbounds [2 x i8], ptr %i.akq, i64 %i.alm ; 2 uses
  %i.alq = getelementptr inbounds [2 x i8], ptr %i.akr, i64 %i.alm ; 2 uses
  %i.alr = getelementptr inbounds [2 x i8], ptr %i.aks, i64 %i.alm ; 2 uses
  %i.als = getelementptr inbounds [2 x i8], ptr %i.akt, i64 %i.alm ; 2 uses
  %i.alt = shl <8 x i16> %i.ls, splat (i16 2)     ; 2 uses
  %i.alu = sub <8 x i16> %i.wi, %i.alt            ; 2 uses
  %i.alv = shl <8 x i16> %i.ra, splat (i16 2)
  %i.alw = sub <8 x i16> %i.abq, %i.alv           ; 2 uses
  %i.alx = sub <8 x i16> %i.wi, %i.ls
  %i.aly = shl <8 x i16> %i.alx, splat (i16 1)    ; 2 uses
  %i.alz = sub <8 x i16> %i.abq, %i.ra            ; 2 uses
  %i.ama = shl <8 x i16> %i.gk, splat (i16 2)
  %.neg.4 = mul <8 x i16> %i.ra, splat (i16 -5)
  %i.amb = add <8 x i16> %.neg.4, %i.ama
  %i.amc = add <8 x i16> %i.amb, %i.abq
  %i.amd = add <8 x i16> %i.alw, %i.alu
  %i.ame = sub <8 x i16> %i.alw, %i.alu
  %i.amf = add <8 x i16> %i.alz, %i.aly
  %i.amg = sub <8 x i16> %i.alz, %i.aly
  %.neg246.4 = mul <8 x i16> %i.wi, splat (i16 -5)
  %i.amh = add <8 x i16> %.neg246.4, %i.alt
  %i.ami = add <8 x i16> %i.amh, %i.agy
  store <8 x i16> %i.amc, ptr %i.aln, align 16, !tbaa !20
  store <8 x i16> %i.amd, ptr %i.alo, align 16, !tbaa !20
  store <8 x i16> %i.ame, ptr %i.alp, align 16, !tbaa !20
  store <8 x i16> %i.amf, ptr %i.alq, align 16, !tbaa !20
  store <8 x i16> %i.amg, ptr %i.alr, align 16, !tbaa !20
  store <8 x i16> %i.ami, ptr %i.als, align 16, !tbaa !20
  %i.amj = load i32, ptr %4, align 4, !tbaa !92
  %i.amk = mul nsw i32 %i.amj, 48
  %i.aml = sext i32 %i.amk to i64                 ; 6 uses
  %i.amm = getelementptr inbounds [2 x i8], ptr %i.aln, i64 %i.aml
  %i.amn = getelementptr inbounds [2 x i8], ptr %i.alo, i64 %i.aml
  %i.amo = getelementptr inbounds [2 x i8], ptr %i.alp, i64 %i.aml
  %i.amp = getelementptr inbounds [2 x i8], ptr %i.alq, i64 %i.aml
  %i.amq = getelementptr inbounds [2 x i8], ptr %i.alr, i64 %i.aml
  %i.amr = getelementptr inbounds [2 x i8], ptr %i.als, i64 %i.aml
  %i.ams = shl <8 x i16> %i.lu, splat (i16 2)     ; 2 uses
  %i.amt = sub <8 x i16> %i.wk, %i.ams            ; 2 uses
  %i.amu = shl <8 x i16> %i.rc, splat (i16 2)
  %i.amv = sub <8 x i16> %i.abs, %i.amu           ; 2 uses
  %i.amw = sub <8 x i16> %i.wk, %i.lu
  %i.amx = shl <8 x i16> %i.amw, splat (i16 1)    ; 2 uses
  %i.amy = sub <8 x i16> %i.abs, %i.rc            ; 2 uses
  %i.amz = shl <8 x i16> %i.gm, splat (i16 2)
  %.neg.5 = mul <8 x i16> %i.rc, splat (i16 -5)
  %i.ana = add <8 x i16> %.neg.5, %i.amz
  %i.anb = add <8 x i16> %i.ana, %i.abs
  %i.anc = add <8 x i16> %i.amv, %i.amt
  %i.and = sub <8 x i16> %i.amv, %i.amt
  %i.ane = add <8 x i16> %i.amy, %i.amx
  %i.anf = sub <8 x i16> %i.amy, %i.amx
  %.neg246.5 = mul <8 x i16> %i.wk, splat (i16 -5)
  %i.ang = add <8 x i16> %.neg246.5, %i.ams
  %i.anh = add <8 x i16> %i.ang, %i.aha
  store <8 x i16> %i.anb, ptr %i.amm, align 16, !tbaa !20
  store <8 x i16> %i.anc, ptr %i.amn, align 16, !tbaa !20
  store <8 x i16> %i.and, ptr %i.amo, align 16, !tbaa !20
  store <8 x i16> %i.ane, ptr %i.amp, align 16, !tbaa !20
  store <8 x i16> %i.anf, ptr %i.amq, align 16, !tbaa !20
  store <8 x i16> %i.anh, ptr %i.amr, align 16, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ani = load i32, ptr %4, align 4, !tbaa !92   ; 3 uses
  %i.anj = sext i32 %i.ani to i64
  %i.ank = icmp slt i64 %indvars.iv.next, %i.anj
  br i1 %i.ank, label %_ZN4ncnn3MatD2Ev.exit, label %._crit_edge, !llvm.loop !762

._crit_edge:                                      ; preds = %.thread.5, %.lr.ph.split
  %i.anl = phi i32 [ %i.q, %.lr.ph.split ], [ %i.ani, %.thread.5 ]
  %i.anm = add i32 %.0260, 1
  %exitcond.not = icmp eq i32 %.0260, %i.j
  br i1 %exitcond.not, label %._crit_edge262, label %.lr.ph.split, !llvm.loop !763

._crit_edge262:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dy

bb.dy:                                            ; preds = %._crit_edge262, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!17 = distinct !{!17, !"_ZN4ncnn3Mat7channelEi"}
!18 = !{!10, !13, i64 64}
!19 = !{!10, !13, i64 16}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!31 = distinct !{!31, !"_ZN4ncnn3Mat7channelEi"}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!43 = distinct !{!43, !"_ZN4ncnn3Mat7channelEi"}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !22}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = !{!55}
!55 = distinct !{!55, !51}
!56 = !{!53, !50}
!57 = distinct !{!57, !22, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"branch_weights", i32 8, i32 24}
!61 = distinct !{!61, !22, !58, !59}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22, !58}
!65 = distinct !{!65, !22}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !"_ZN4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = !{!77}
!77 = distinct !{!77, !73}
!78 = !{!75, !72}
!79 = distinct !{!79, !22, !58, !59}
!80 = !{!"branch_weights", i32 8, i32 56}
!81 = distinct !{!81, !22, !58, !59}
!82 = distinct !{!82, !37}
!83 = distinct !{!83, !22, !58}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22, !58, !59}
!86 = !{!"branch_weights", i32 8, i32 120}
!87 = distinct !{!87, !22, !58, !59}
!88 = distinct !{!88, !37}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22, !58}
!91 = distinct !{!91, !22}
!92 = !{!6, !6, i64 0}
!93 = !{!10, !6, i64 44}
!94 = !{!10, !6, i64 24}
!95 = !{!10, !6, i64 56}
!96 = !{!10, !6, i64 48}
!97 = !{!12, !12, i64 0}
!98 = distinct !{!98, !22, !58, !59}
!99 = distinct !{!99, !22, !58, !59}
!100 = !{!101, !6, i64 4}
!101 = !{!"_ZTSN4ncnn6OptionE", !102, i64 0, !102, i64 1, !102, i64 2, !102, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !102, i64 28, !102, i64 29, !102, i64 30, !102, i64 31, !102, i64 32, !102, i64 33, !102, i64 34, !102, i64 35, !102, i64 36, !102, i64 37, !102, i64 38, !102, i64 39, !6, i64 40, !102, i64 44, !102, i64 45, !102, i64 46, !102, i64 47, !7, i64 48, !102, i64 49, !102, i64 50, !102, i64 51, !102, i64 52, !102, i64 53, !102, i64 54, !102, i64 55, !102, i64 56, !102, i64 57, !102, i64 58, !102, i64 59, !102, i64 60, !102, i64 61, !102, i64 62, !102, i64 63}
!102 = !{!"bool", !7, i64 0}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22, !59, !58}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!107 = distinct !{!107, !"_ZN4ncnn3Mat7channelEi"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!110 = distinct !{!110, !"_ZNK4ncnn3Mat7channelEi"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !"_ZNK4ncnn3Mat7channelEi"}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!118 = distinct !{!118, !"_ZNK4ncnn3Mat7channelEi"}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!123 = distinct !{!123, !"_ZNK4ncnn3Mat7channelEi"}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, !22}
!126 = distinct !{!126, !22}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, !"_ZNK4ncnn3Mat7channelEi"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!132 = distinct !{!132, !"_ZNK4ncnn3Mat7channelEi"}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!137 = distinct !{!137, !"_ZNK4ncnn3Mat7channelEi"}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!142 = distinct !{!142, !"_ZNK4ncnn3Mat7channelEi"}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!148 = distinct !{!148, !"_ZNK4ncnn3Mat7channelEi"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!151 = distinct !{!151, !"_ZNK4ncnn3Mat7channelEi"}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!156 = distinct !{!156, !"_ZNK4ncnn3Mat7channelEi"}
end_hunk_10
