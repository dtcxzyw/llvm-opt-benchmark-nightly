Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.71442.us.i = phi ptr [ %i.byp, %scalar.ph600 ], [ %.71442.us.i.ph, %scalar.ph600.preheader ] ; 3 uses
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i ; 2 uses
  %i.byh = load i32, ptr %i.byg, align 4, !tbaa !56
  %i.byi = lshr i32 %i.byh, 16
  %i.byj = trunc nuw i32 %i.byi to i16
  store i16 %i.byj, ptr %.71442.us.i, align 2, !tbaa !117
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.byg, i64 %i.bix
  %i.byl = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 2
  %i.bym = load i32, ptr %i.byk, align 4, !tbaa !56
  %i.byn = lshr i32 %i.bym, 16
  %i.byo = trunc nuw i32 %i.byn to i16
  store i16 %i.byo, ptr %i.byl, align 2, !tbaa !117
  %i.byp = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 4 ; 2 uses
  %indvars.iv.next1797.i = add nuw nsw i64 %indvars.iv1796.i, 1 ; 2 uses
  %exitcond1800.not.i = icmp eq i64 %indvars.iv.next1797.i, %wide.trip.count1786.i
  br i1 %exitcond1800.not.i, label %._crit_edge1444.us.i, label %scalar.ph600, !llvm.loop !641

._crit_edge1444.us.i:                             ; preds = %scalar.ph600, %middle.block615
  %.lcssa414 = phi ptr [ %i.bxs, %middle.block615 ], [ %i.byp, %scalar.ph600 ] ; 2 uses
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %i.bjd ; 2 uses
  %i.byr = add nuw nsw i32 %.21448.us.i, 2        ; 3 uses
  %i.bys = or disjoint i32 %i.byr, 1
  %i.byt = icmp slt i32 %i.bys, %i.p
  br i1 %i.byt, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !642

.preheader1086.i:                                 ; preds = %._crit_edge1444.us.i, %.preheader1087.i
  %.2834.lcssa.i = phi ptr [ %.1833.lcssa.i, %.preheader1087.i ], [ %i.byq, %._crit_edge1444.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3831.lcssa.i, %.preheader1087.i ], [ %.lcssa414, %._crit_edge1444.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1087.i ], [ %i.byr, %._crit_edge1444.us.i ] ; 2 uses
  %i.byu = icmp sge i32 %.2.lcssa.i, %i.p
  %brmerge1475.i = or i1 %i.bje, %i.byu
  br i1 %brmerge1475.i, label %._crit_edge1461.split.i, label %iter.check

iter.check:                                       ; preds = %.preheader1086.i, %._crit_edge1457.i
  %.31460.i = phi i32 [ %i.bzt, %._crit_edge1457.i ], [ %.2.lcssa.i, %.preheader1086.i ]
  %.91459.i = phi ptr [ %.lcssa417, %._crit_edge1457.i ], [ %.6.lcssa.i, %.preheader1086.i ] ; 5 uses
  br i1 %min.iters.check578, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check579, label %vec.epilog.ph, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check
  %i.byv = getelementptr i8, ptr %.91459.i, i64 %i.bjv ; 2 uses
  br label %vector.body582

vector.body582:                                   ; preds = %vector.ph580, %vector.body582
  %index583 = phi i64 [ 0, %vector.ph580 ], [ %index.next589, %vector.body582 ] ; 3 uses
  %i.byw = shl i64 %index583, 1
  %next.gep584 = getelementptr i8, ptr %.91459.i, i64 %i.byw ; 4 uses
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index583 ; 4 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 32
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 64
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byx, i64 96
  %wide.load585 = load <8 x i32>, ptr %i.byx, align 4, !tbaa !56
  %wide.load586 = load <8 x i32>, ptr %i.byy, align 4, !tbaa !56
  %wide.load587 = load <8 x i32>, ptr %i.byz, align 4, !tbaa !56
  %wide.load588 = load <8 x i32>, ptr %i.bza, align 4, !tbaa !56
  %i.bzb = lshr <8 x i32> %wide.load585, splat (i32 16)
  %i.bzc = lshr <8 x i32> %wide.load586, splat (i32 16)
  %i.bzd = lshr <8 x i32> %wide.load587, splat (i32 16)
  %i.bze = lshr <8 x i32> %wide.load588, splat (i32 16)
  %i.bzf = trunc nuw <8 x i32> %i.bzb to <8 x i16>
  %i.bzg = trunc nuw <8 x i32> %i.bzc to <8 x i16>
  %i.bzh = trunc nuw <8 x i32> %i.bzd to <8 x i16>
  %i.bzi = trunc nuw <8 x i32> %i.bze to <8 x i16>
  %i.bzj = getelementptr i8, ptr %next.gep584, i64 16
  %i.bzk = getelementptr i8, ptr %next.gep584, i64 32
  %i.bzl = getelementptr i8, ptr %next.gep584, i64 48
  store <8 x i16> %i.bzf, ptr %next.gep584, align 2, !tbaa !117
  store <8 x i16> %i.bzg, ptr %i.bzj, align 2, !tbaa !117
  store <8 x i16> %i.bzh, ptr %i.bzk, align 2, !tbaa !117
  store <8 x i16> %i.bzi, ptr %i.bzl, align 2, !tbaa !117
  %index.next589 = add nuw i64 %index583, 32      ; 2 uses
  %i.bzm = icmp eq i64 %index.next589, %n.vec581
  br i1 %i.bzm, label %middle.block590, label %vector.body582, !llvm.loop !643

middle.block590:                                  ; preds = %vector.body582
  br i1 %cmp.n591, label %._crit_edge1457.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block590
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec581, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bzn = getelementptr i8, ptr %.91459.i, i64 %i.bjw ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index593 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next596, %vec.epilog.vector.body ] ; 3 uses
  %i.bzo = shl i64 %index593, 1
  %next.gep594 = getelementptr i8, ptr %.91459.i, i64 %i.bzo
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index593
  %wide.load595 = load <4 x i32>, ptr %i.bzp, align 4, !tbaa !56
  %i.bzq = lshr <4 x i32> %wide.load595, splat (i32 16)
  %i.bzr = trunc nuw <4 x i32> %i.bzq to <4 x i16>
  store <4 x i16> %i.bzr, ptr %next.gep594, align 2, !tbaa !117
  %index.next596 = add nuw i64 %index593, 4       ; 2 uses
  %i.bzs = icmp eq i64 %index.next596, %n.vec592
  br i1 %i.bzs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n597, label %._crit_edge1457.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1801.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec581, %vec.epilog.iter.check ], [ %n.vec592, %vec.epilog.middle.block ]
  %.101455.i.ph = phi ptr [ %.91459.i, %iter.check ], [ %i.byv, %vec.epilog.iter.check ], [ %i.bzn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1457.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block590
  %.lcssa417 = phi ptr [ %i.bzn, %vec.epilog.middle.block ], [ %i.byv, %middle.block590 ], [ %i.bzy, %vec.epilog.scalar.ph ]
  %i.bzt = add nuw nsw i32 %.31460.i, 1           ; 2 uses
  %exitcond1806.not.i = icmp eq i32 %i.bzt, %i.p
  br i1 %exitcond1806.not.i, label %._crit_edge1461.split.i, label %iter.check, !llvm.loop !645

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1801.i = phi i64 [ %indvars.iv.next1802.i, %vec.epilog.scalar.ph ], [ %indvars.iv1801.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.101455.i = phi ptr [ %i.bzy, %vec.epilog.scalar.ph ], [ %.101455.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1801.i
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !56
  %i.bzw = lshr i32 %i.bzv, 16
  %i.bzx = trunc nuw i32 %i.bzw to i16
  store i16 %i.bzx, ptr %.101455.i, align 2, !tbaa !117
  %i.bzy = getelementptr inbounds nuw i8, ptr %.101455.i, i64 2 ; 2 uses
  %indvars.iv.next1802.i = add nuw nsw i64 %indvars.iv1801.i, 1 ; 2 uses
  %exitcond1805.not.i = icmp eq i64 %indvars.iv.next1802.i, %wide.trip.count1786.i
  br i1 %exitcond1805.not.i, label %._crit_edge1457.i, label %vec.epilog.scalar.ph, !llvm.loop !646

._crit_edge1461.split.i:                          ; preds = %._crit_edge1457.i, %.preheader1086.i, %.preheader1083.lr.ph.i
  %indvars.iv.next1808.i = add nuw nsw i64 %indvars.iv1807.i, 1 ; 2 uses
  %indvars.iv.next1780.i = add i32 %indvars.iv1779.i, %i.bip
  %exitcond1811.not.i = icmp eq i64 %indvars.iv.next1808.i, %wide.trip.count1810.i
  br i1 %exitcond1811.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i104, !llvm.loop !647

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1461.split.i, %.preheader1089.i
  %i.bzz = load i8, ptr %1, align 8, !tbaa !83, !range !64, !noundef !65
  %i.caa = trunc nuw i8 %i.bzz to i1
  br i1 %i.caa, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.cab = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.cac, null
  br i1 %.not.i, label %.sink.split, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.cad = atomicrmw add ptr %i.cac, i32 -1 acq_rel, align 4
  %i.cae = icmp eq i32 %i.cad, 1
  br i1 %i.cae, label %bb.es, label %.sink.split

bb.es:                                            ; preds = %bb.er
  %i.caf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cag = load ptr, ptr %i.caf, align 8, !tbaa !36 ; 3 uses
  %.not3.i = icmp eq ptr %i.cag, null
  %i.cah = load ptr, ptr %i.nw, align 8, !tbaa !37 ; 3 uses
  br i1 %.not3.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.cai = load ptr, ptr %i.cag, align 8, !tbaa !29
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 24
  %i.cak = load ptr, ptr %i.caj, align 8
  tail call void %i.cak(ptr noundef nonnull align 8 dereferenceable(8) %i.cag, ptr noundef %i.cah), !inline_history !0
  br label %.sink.split

bb.eu:                                            ; preds = %bb.es
  %.not.i101 = icmp eq ptr %i.cah, null
  br i1 %.not.i101, label %.sink.split, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @free(ptr noundef nonnull %i.cah) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.et, %bb.er, %bb.eq, %bb.eu, %bb.ev, %bb.dc, %bb.da, %bb.cz, %bb.dd, %bb.de, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.an
  %.sink407 = phi ptr [ %i.du, %bb.al ], [ %i.fh, %bb.dc ], [ %i.du, %bb.an ], [ %i.du, %bb.am ], [ %i.du, %bb.ai ], [ %i.du, %bb.aj ], [ %i.fh, %bb.de ], [ %i.fh, %bb.dd ], [ %i.fh, %bb.cz ], [ %i.fh, %bb.da ], [ %i.nw, %bb.ev ], [ %i.nw, %bb.eu ], [ %i.nw, %bb.eq ], [ %i.nw, %bb.er ], [ %i.nw, %bb.et ]
  %i.cal = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cam = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.cam, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sink407, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cal, i8 0, i64 20, i1 false)
  br label %bb.ew

bb.ew:                                            ; preds = %.sink.split, %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, %bb.ah
  ret i32 0
}

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !61
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !81      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %16, 6
  %17 = load i32, ptr %10, align 4, !tbaa !81     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 64, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !36  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !61
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !81      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = mul nsw i32 %16, 36
  %17 = load i32, ptr %10, align 4, !tbaa !81     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 36, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !36  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !61
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !81      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %16, 4
  %17 = load i32, ptr %10, align 4, !tbaa !81     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 16, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !36  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd63Eiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 19 uses
  %i.a = icmp sgt i32 %0, 63
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 31
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i32 %1, 63
  br i1 %i.c, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.g = add <4 x i32> %i.f, <i32 -11, i32 -19, i32 -23, i32 -47>
  %i.h = icmp ult <4 x i32> %i.g, <i32 4, i32 2, i32 22, i32 10>
  %i.i = add i32 %.sroa.speculated, -63
  %i.j = icmp ult i32 %i.i, 68
  %i.k = bitcast <4 x i1> %i.h to i4
  %i.l = icmp ne i4 %i.k, 0
  %op.rdx = or i1 %i.l, %i.j
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.m = icmp sgt i32 %1, 15
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = add <4 x i32> %i.o, <i32 -13, i32 -19, i32 -23, i32 -43>
  %i.q = icmp ult <4 x i32> %i.p, <i32 2, i32 2, i32 16, i32 2>
  %i.r = add i32 %.sroa.speculated, -47
  %i.s = icmp ult i32 %i.r, 94
  %i.t = bitcast <4 x i1> %i.q to i4
  %i.u = icmp ne i4 %i.t, 0
  %op.rdx191 = or i1 %i.u, %i.s
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.v = icmp sgt i32 %1, 7
  br i1 %i.v, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.w = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = add <4 x i32> %i.x, <i32 -11, i32 -19, i32 -31, i32 -43>
  %i.z = icmp ult <4 x i32> %i.y, <i32 4, i32 2, i32 8, i32 2>
  %i.aa = add i32 %.sroa.speculated, -55
  %i.ab = icmp ult i32 %i.aa, 108
  %i.ac = bitcast <4 x i1> %i.z to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %op.rdx192 = or i1 %i.ad, %i.ab
  br label %bb.w

bb.j:                                             ; preds = %bb.b
  %i.ae = icmp sgt i32 %0, 15
  br i1 %i.ae, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.af = icmp sgt i32 %1, 63
  br i1 %i.af, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp sgt i32 %1, 31
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = add <4 x i32> %i.ai, <i32 -11, i32 -19, i32 -23, i32 -47>
  %i.ak = icmp ult <4 x i32> %i.aj, <i32 4, i32 2, i32 22, i32 46>
  %i.al = add i32 %.sroa.speculated, -95
  %i.am = icmp ult i32 %i.al, 94
  %i.an = bitcast <4 x i1> %i.ak to i4
  %i.ao = icmp ne i4 %i.an, 0
  %op.rdx193 = or i1 %i.ao, %i.am
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %1, 15
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.as = add <4 x i32> %i.ar, <i32 -11, i32 -27, i32 -43, i32 -47>
  %i.at = icmp ult <4 x i32> %i.as, <i32 4, i32 12, i32 2, i32 28>
  %i.au = add i32 %.sroa.speculated, -81
  %or.cond41 = icmp ult i32 %i.au, 30
  %i.av = add i32 %.sroa.speculated, -117
  %or.cond43 = icmp ult i32 %i.av, 54
  %i.aw = add i32 %.sroa.speculated, -177
  %i.ax = icmp ult i32 %i.aw, 6
  %i.ay = bitcast <4 x i1> %i.at to i4
  %i.az = icmp ne i4 %i.ay, 0
  %op.rdx194 = or i1 %i.az, %or.cond41
  %op.rdx195 = or i1 %or.cond43, %i.ax
  %op.rdx196 = or i1 %op.rdx194, %op.rdx195
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ba = icmp sgt i32 %1, 7
  br i1 %i.ba, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bb = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bd = add <4 x i32> %i.bc, <i32 -19, i32 -33, i32 -43, i32 -47>
  %i.be = icmp ult <4 x i32> %i.bd, <i32 2, i32 6, i32 2, i32 82>
  %i.bf = add i32 %.sroa.speculated, -155
  %i.bg = icmp ult i32 %i.bf, 56
  %i.bh = bitcast <4 x i1> %i.be to i4
  %i.bi = icmp ne i4 %i.bh, 0
  %op.rdx197 = or i1 %i.bi, %i.bg
  br label %bb.w

bb.r:                                             ; preds = %bb.j
  %i.bj = icmp slt i32 %0, 8
  %i.bk = icmp sgt i32 %1, 63
  %or.cond185 = or i1 %i.bj, %i.bk
  br i1 %or.cond185, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp sgt i32 %1, 31
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bo = add <4 x i32> %i.bn, <i32 -7, i32 -17, i32 -23, i32 -31>
  %i.bp = icmp ult <4 x i32> %i.bo, <i32 8, i32 4, i32 4, i32 8>
  %i.bq = add i32 %.sroa.speculated, -43
  %i.br = icmp ult i32 %i.bq, 120
  %i.bs = bitcast <4 x i1> %i.bp to i4
  %i.bt = icmp ne i4 %i.bs, 0
  %op.rdx198 = or i1 %i.bt, %i.br
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = icmp sgt i32 %1, 15
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = add i32 %.sroa.speculated, -31
  %or.cond61 = icmp ult i32 %i.bv, 2
  %i.bw = add i32 %.sroa.speculated, -39
  %or.cond63 = icmp ult i32 %i.bw, 6
  %or.cond184 = or i1 %or.cond61, %or.cond63
  %i.bx = add i32 %.sroa.speculated, -47
  %i.by = icmp ult i32 %i.bx, 166
  %i.bz = or i1 %i.by, %or.cond184
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.u, %bb.p, %bb.k, %bb.h, %bb.c, %bb.a, %bb.v, %bb.t, %bb.q, %bb.o, %bb.m, %bb.i, %bb.g, %bb.e
  %.0 = phi i1 [ false, %bb.u ], [ false, %bb.a ], [ %op.rdx, %bb.e ], [ %op.rdx191, %bb.g ], [ %op.rdx192, %bb.i ], [ false, %bb.c ], [ false, %bb.h ], [ %op.rdx193, %bb.m ], [ %op.rdx196, %bb.o ], [ %op.rdx197, %bb.q ], [ false, %bb.k ], [ false, %bb.p ], [ %op.rdx198, %bb.t ], [ %i.bz, %bb.v ], [ false, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd23Eiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 63 uses
  %i.a = icmp sgt i32 %0, 511
  br i1 %i.a, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 511
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %.sroa.speculated, -3
  %i.d = icmp ult i32 %i.c, 12
  br label %bb.cu

bb.d:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %1, 255
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add i32 %.sroa.speculated, -3
  %i.g = icmp ult i32 %i.f, 12
  br label %bb.cu

bb.f:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %1, 127
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  br i1 %exitcond.not.3.6, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit59.4.6

_ZN4ncnn3MatD2Ev.exit59.4.6:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.3.6
  %gep102.4.6 = getelementptr i8, ptr %gep.6, i64 %.reass.4.6
  %i.gw = load float, ptr %gep102.4.6, align 4, !tbaa !56
  store float %i.gw, ptr %i.gv, align 4, !tbaa !56
  %i.gx = getelementptr inbounds nuw i8, ptr %.lcssa.5, i64 20 ; 2 uses
  br i1 %exitcond.not.4.6, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit59.5.6

_ZN4ncnn3MatD2Ev.exit59.5.6:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.4.6
  %gep102.5.6 = getelementptr i8, ptr %gep.6, i64 %.reass.5.6
  %i.gy = load float, ptr %gep102.5.6, align 4, !tbaa !56
  store float %i.gy, ptr %i.gx, align 4, !tbaa !56
  %i.gz = getelementptr inbounds nuw i8, ptr %.lcssa.5, i64 24 ; 2 uses
  br i1 %exitcond.not.5.6, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit59.6.6

_ZN4ncnn3MatD2Ev.exit59.6.6:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.5.6
  %gep102.6.6 = getelementptr i8, ptr %gep.6, i64 %.reass.6.6
  %i.ha = load float, ptr %gep102.6.6, align 4, !tbaa !56
  store float %i.ha, ptr %i.gz, align 4, !tbaa !56
  %i.hb = getelementptr inbounds nuw i8, ptr %.lcssa.5, i64 28 ; 2 uses
  br i1 %exitcond.not.6.6, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit59.7.6

_ZN4ncnn3MatD2Ev.exit59.7.6:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.6.6
  %gep102.7.6 = getelementptr i8, ptr %gep.6, i64 %.reass.7.6
  %i.hc = load float, ptr %gep102.7.6, align 4, !tbaa !56
  store float %i.hc, ptr %i.hb, align 4, !tbaa !56
  %i.hd = getelementptr inbounds nuw i8, ptr %.lcssa.5, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit59.7.6, %_ZN4ncnn3MatD2Ev.exit59.6.6, %_ZN4ncnn3MatD2Ev.exit59.5.6, %_ZN4ncnn3MatD2Ev.exit59.4.6, %_ZN4ncnn3MatD2Ev.exit59.3.6, %_ZN4ncnn3MatD2Ev.exit59.2.6, %_ZN4ncnn3MatD2Ev.exit59.1.6, %.preheader.6
  %.lcssa.6 = phi ptr [ %i.gp, %.preheader.6 ], [ %i.gr, %_ZN4ncnn3MatD2Ev.exit59.1.6 ], [ %i.gt, %_ZN4ncnn3MatD2Ev.exit59.2.6 ], [ %i.gv, %_ZN4ncnn3MatD2Ev.exit59.3.6 ], [ %i.gx, %_ZN4ncnn3MatD2Ev.exit59.4.6 ], [ %i.gz, %_ZN4ncnn3MatD2Ev.exit59.5.6 ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit59.6.6 ], [ %i.hd, %_ZN4ncnn3MatD2Ev.exit59.7.6 ] ; 10 uses
  br i1 %exitcond128.not.6, label %bb.i, label %.preheader.7

.preheader.7:                                     ; preds = %bb.p
  %gep.7 = getelementptr i8, ptr %invariant.gep107, i64 %.reass106.7 ; 8 uses
  %gep102.7177 = getelementptr i8, ptr %gep.7, i64 %.reass.7176
  %i.he = load float, ptr %gep102.7177, align 4, !tbaa !56
  store float %i.he, ptr %.lcssa.6, align 4, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 4 ; 2 uses
  br i1 %exitcond.not.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.1.7

_ZN4ncnn3MatD2Ev.exit59.1.7:                      ; preds = %.preheader.7
  %gep102.1.7 = getelementptr i8, ptr %gep.7, i64 %.reass.1.7
  %i.hg = load float, ptr %gep102.1.7, align 4, !tbaa !56
  store float %i.hg, ptr %i.hf, align 4, !tbaa !56
  %i.hh = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 8 ; 2 uses
  br i1 %exitcond.not.1.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.2.7

_ZN4ncnn3MatD2Ev.exit59.2.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.1.7
  %gep102.2.7 = getelementptr i8, ptr %gep.7, i64 %.reass.2.7
  %i.hi = load float, ptr %gep102.2.7, align 4, !tbaa !56
  store float %i.hi, ptr %i.hh, align 4, !tbaa !56
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 12 ; 2 uses
  br i1 %exitcond.not.2.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.3.7

_ZN4ncnn3MatD2Ev.exit59.3.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.2.7
  %gep102.3.7 = getelementptr i8, ptr %gep.7, i64 %.reass.3.7
  %i.hk = load float, ptr %gep102.3.7, align 4, !tbaa !56
  store float %i.hk, ptr %i.hj, align 4, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 16 ; 2 uses
  br i1 %exitcond.not.3.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.4.7

_ZN4ncnn3MatD2Ev.exit59.4.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.3.7
  %gep102.4.7 = getelementptr i8, ptr %gep.7, i64 %.reass.4.7
  %i.hm = load float, ptr %gep102.4.7, align 4, !tbaa !56
  store float %i.hm, ptr %i.hl, align 4, !tbaa !56
  %i.hn = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 20 ; 2 uses
  br i1 %exitcond.not.4.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.5.7

_ZN4ncnn3MatD2Ev.exit59.5.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.4.7
  %gep102.5.7 = getelementptr i8, ptr %gep.7, i64 %.reass.5.7
  %i.ho = load float, ptr %gep102.5.7, align 4, !tbaa !56
  store float %i.ho, ptr %i.hn, align 4, !tbaa !56
  %i.hp = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 24 ; 2 uses
  br i1 %exitcond.not.5.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.6.7

_ZN4ncnn3MatD2Ev.exit59.6.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.5.7
  %gep102.6.7 = getelementptr i8, ptr %gep.7, i64 %.reass.6.7
  %i.hq = load float, ptr %gep102.6.7, align 4, !tbaa !56
  store float %i.hq, ptr %i.hp, align 4, !tbaa !56
  %i.hr = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 28 ; 2 uses
  br i1 %exitcond.not.6.7, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.7.7

_ZN4ncnn3MatD2Ev.exit59.7.7:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.6.7
  %gep102.7.7 = getelementptr i8, ptr %gep.7, i64 %.reass.7.7
  %i.hs = load float, ptr %gep102.7.7, align 4, !tbaa !56
  store float %i.hs, ptr %i.hr, align 4, !tbaa !56
  %i.ht = getelementptr inbounds nuw i8, ptr %.lcssa.6, i64 32
  br label %bb.i

_ZN4ncnn3MatD2Ev.exit59.1:                        ; preds = %.preheader98
  %gep102.1 = getelementptr i8, ptr %gep, i64 %.reass.1
  %i.hu = load float, ptr %gep102.1, align 4, !tbaa !56
  store float %i.hu, ptr %i.dj, align 4, !tbaa !56
  %i.hv = getelementptr inbounds nuw i8, ptr %.1110, i64 8 ; 2 uses
  br i1 %exitcond.not.1, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.2

_ZN4ncnn3MatD2Ev.exit59.2:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.1
  %gep102.2 = getelementptr i8, ptr %gep, i64 %.reass.2
  %i.hw = load float, ptr %gep102.2, align 4, !tbaa !56
  store float %i.hw, ptr %i.hv, align 4, !tbaa !56
  %i.hx = getelementptr inbounds nuw i8, ptr %.1110, i64 12 ; 2 uses
  br i1 %exitcond.not.2, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.3

_ZN4ncnn3MatD2Ev.exit59.3:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.2
  %gep102.3 = getelementptr i8, ptr %gep, i64 %.reass.3
  %i.hy = load float, ptr %gep102.3, align 4, !tbaa !56
  store float %i.hy, ptr %i.hx, align 4, !tbaa !56
  %i.hz = getelementptr inbounds nuw i8, ptr %.1110, i64 16 ; 2 uses
  br i1 %exitcond.not.3, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.4

_ZN4ncnn3MatD2Ev.exit59.4:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.3
  %gep102.4 = getelementptr i8, ptr %gep, i64 %.reass.4
  %i.ia = load float, ptr %gep102.4, align 4, !tbaa !56
  store float %i.ia, ptr %i.hz, align 4, !tbaa !56
  %i.ib = getelementptr inbounds nuw i8, ptr %.1110, i64 20 ; 2 uses
  br i1 %exitcond.not.4, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.5

_ZN4ncnn3MatD2Ev.exit59.5:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.4
  %gep102.5 = getelementptr i8, ptr %gep, i64 %.reass.5
  %i.ic = load float, ptr %gep102.5, align 4, !tbaa !56
  store float %i.ic, ptr %i.ib, align 4, !tbaa !56
  %i.id = getelementptr inbounds nuw i8, ptr %.1110, i64 24 ; 2 uses
  br i1 %exitcond.not.5, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.6

_ZN4ncnn3MatD2Ev.exit59.6:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.5
  %gep102.6 = getelementptr i8, ptr %gep, i64 %.reass.6
  %i.ie = load float, ptr %gep102.6, align 4, !tbaa !56
  store float %i.ie, ptr %i.id, align 4, !tbaa !56
  %i.if = getelementptr inbounds nuw i8, ptr %.1110, i64 28 ; 2 uses
  br i1 %exitcond.not.6, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.7

_ZN4ncnn3MatD2Ev.exit59.7:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.6
  %gep102.7 = getelementptr i8, ptr %gep, i64 %.reass.7
  %i.ig = load float, ptr %gep102.7, align 4, !tbaa !56
  store float %i.ig, ptr %i.if, align 4, !tbaa !56
  %i.ih = getelementptr inbounds nuw i8, ptr %.1110, i64 32
  br label %bb.j

bb.q:                                             ; preds = %bb.h
  %i.ii = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !36 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %8, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.v, !inline_history !0

bb.t:                                             ; preds = %bb.r
  %.not.i73 = icmp eq ptr %i.im, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.im) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.q, %bb.h, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.aj
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 2.500000e-01       ; 2 uses
  %i.g = fmul fast float %i.e, f0x3DAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = sdiv i32 %i.i, 8
  %8 = shl nsw i32 %7, 3
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %8, i32 8)
  store i32 %.sroa.speculated88, ptr %3, align 4, !tbaa !81
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated84 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !81
  %i.l = mul nsw i32 %i.k, %.sroa.speculated84    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8
  %i.t = shl nsw i32 %i.s, 3
  %.sroa.speculated80 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated80, %.0
  %.sroa.speculated70 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated70, 7
  %i.x = and i32 %i.w, 2147483640
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated80)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated76, %bb.d ], [ %.sroa.speculated80, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !81
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 8
  %i.ad = shl nsw i32 %i.ac, 3
  %.sroa.speculated64 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 8) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated64
  %i.ag = sdiv i32 %i.af, %.sroa.speculated64     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 7
  %i.ak = sdiv i32 %i.aj, 8
  %i.al = shl nsw i32 %i.ak, 3
  %.sroa.speculated60 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated64) ; 3 uses
  store i32 %.sroa.speculated60, ptr %5, align 4, !tbaa !81
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated60
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = fsub fast float %i.f, %i.ap
  %i.ar = add nsw i32 %i.an, %.sroa.speculated60
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = fdiv fast float %i.aq, %i.as
  %i.au = fptosi float %i.at to i32
  %.fr = freeze i32 %i.au                         ; 2 uses
  %i.av = srem i32 %.fr, 12
  %i.aw = sub nsw i32 %.fr, %i.av
  %.sroa.speculated54 = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 12) ; 3 uses
  %i.ax = add nsw i32 %1, -1                      ; 2 uses
  %i.ay = add nuw i32 %i.ax, %.sroa.speculated54
  %i.az = udiv i32 %i.ay, %.sroa.speculated54     ; 2 uses
  %i.ba = add nuw i32 %i.ax, %i.az
  %i.bb = udiv i32 %i.ba, %i.az
  %.fr43 = freeze i32 %i.bb
  %i.bc = add i32 %.fr43, 11                      ; 2 uses
  %i.bd = srem i32 %i.bc, 12
  %i.be = sub nsw i32 %i.bc, %i.bd
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %.sroa.speculated54)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph127, %_ZN4ncnn3MatD2Ev.exit
  %.033126 = phi i32 [ %i.k, %.lr.ph127 ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !81
  %i.s = mul i32 %i.r, %.033126                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !37, !noalias !676 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !676
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !676
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 5 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !81    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !81
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 10 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !81    ; 8 uses
  %i.ah = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !677
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !677
  %i.al = load ptr, ptr %10, align 8, !tbaa !37, !noalias !677
  %i.am = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !677
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !677 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated82, 7
  %i.ax = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.ay = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.az = add i32 %.sroa.speculated82, -4
  %i.ba = or disjoint i32 %i.ax, 3
  %i.bb = icmp slt i32 %i.ba, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ay, -7
  %invariant.op102.i = add nsw i64 %i.ay, -3
  %invariant.op103.i = add nsw i64 %i.ay, -1
  %i.bc = sext i32 %i.ag to i64                   ; 2 uses
  %i.bd = zext nneg i32 %i.ab to i64
  %i.be = sub i32 0, %i.ag                        ; 2 uses
  %i.bf = shl nsw i64 %i.ay, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bc, 36
  %i.bi = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bk = add i32 %.033126, 1
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033126, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar171 = phi i64 [ 0, %.lr.ph ], [ %indvar.next172, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bm = trunc i64 %indvar171 to i32
  %i.bn = mul i32 %i.ag, %i.bm
  %i.bo = sub i32 %i.ab, %i.bn
  %smin207 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bo)
  %i.bp = add i32 %smin207, -1                    ; 2 uses
  %i.bq = mul i64 %i.bh, %indvar171               ; 2 uses
  %i.br = trunc i64 %indvar171 to i32
  %i.bs = mul i32 %i.br, %i.be
  %i.bt = add i32 %i.bs, %i.ab
  %smin173 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bt)
  %i.bu = zext i32 %smin173 to i64                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL18convolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.wc = bitcast <8 x float> %i.wb to <8 x i32>
  %i.wd = bitcast <8 x float> %i.wb to <8 x i32>
  %i.we = and <8 x i32> %i.wd, splat (i32 -2139095041)
  %i.wf = or disjoint <8 x i32> %i.we, splat (i32 1056964608)
  %i.wg = bitcast <8 x i32> %i.wf to <8 x float>  ; 3 uses
  %i.wh = lshr <8 x i32> %i.wc, splat (i32 23)
  %i.wi = add nsw <8 x i32> %i.wh, splat (i32 -127)
  %i.wj = sitofp fast <8 x i32> %i.wi to <8 x float> ; 2 uses
  %i.wk = fadd fast <8 x float> %i.wj, splat (float 1.000000e+00)
  %i.wl = fcmp fast olt <8 x float> %i.wg, splat (float f0x3F3504F3) ; 2 uses
  %i.wm = select <8 x i1> %i.wl, <8 x float> %i.wg, <8 x float> zeroinitializer
  %i.wn = fadd fast <8 x float> %i.wg, splat (float -1.000000e+00)
  %i.wo = select fast <8 x i1> %i.wl, <8 x float> %i.wj, <8 x float> %i.wk ; 2 uses
  %i.wp = fadd fast <8 x float> %i.wn, %i.wm      ; 12 uses
  %i.wq = fmul fast <8 x float> %i.wp, %i.wp      ; 2 uses
  %i.wr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wp, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ws = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wr, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0x3DEF251A))
  %i.wt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ws, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0xBDFE5D4F))
  %i.wu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wt, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0x3E11E9BF))
  %i.wv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wu, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0xBE2AAE50))
  %i.ww = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wv, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0x3E4CCEAC))
  %i.wx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ww, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0xBE7FFFFC))
  %i.wy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wx, <8 x float> nofpclass(nan inf) %i.wp, <8 x float> splat (float f0x3EAAAAAA))
  %i.wz = fmul fast <8 x float> %i.wq, %i.wp
  %i.xa = fmul fast <8 x float> %i.wz, %i.wy
  %i.xb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.xa)
  %i.xc = fneg fast <8 x float> %i.wq
  %i.xd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xc, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.xb)
  %i.xe = fadd fast <8 x float> %i.xd, %i.wp
  %i.xf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.xe)
  %.neg = fmul fast <8 x float> %i.xf, splat (float -2.000000e+00)
  %i.xg = select fast <8 x i1> %i.wa, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.xh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xg, <8 x float> splat (float f0x42B0C0A5))
  %i.xi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xi, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.xk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xj, i32 1) ; 2 uses
  %i.xl = fcmp fast ogt <8 x float> %i.xk, %i.xj
  %i.xm = select <8 x i1> %i.xl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xn = fsub fast <8 x float> %i.xk, %i.xm      ; 2 uses
  %i.xo = fneg fast <8 x float> %i.xn             ; 2 uses
  %i.xp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.xi)
  %i.xq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.xp) ; 8 uses
  %i.xr = fmul fast <8 x float> %i.xq, %i.xq
  %i.xs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.xt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xs, <8 x float> nofpclass(nan inf) %i.xq, <8 x float> splat (float f0x3C088908))
  %i.xu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xt, <8 x float> nofpclass(nan inf) %i.xq, <8 x float> splat (float f0x3D2AA9C1))
  %i.xv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xu, <8 x float> nofpclass(nan inf) %i.xq, <8 x float> splat (float f0x3E2AAAAA))
  %i.xw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xv, <8 x float> nofpclass(nan inf) %i.xq, <8 x float> splat (float 5.000000e-01))
  %i.xx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xw, <8 x float> nofpclass(nan inf) %i.xr, <8 x float> nofpclass(nan inf) %i.xq)
  %i.xy = fadd fast <8 x float> %i.xx, splat (float 1.000000e+00)
  %i.xz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xn)
  %i.ya = shl <8 x i32> %i.xz, splat (i32 23)
  %i.yb = add <8 x i32> %i.ya, splat (i32 1065353216)
  %i.yc = bitcast <8 x i32> %i.yb to <8 x float>
  %i.yd = fmul fast <8 x float> %i.xy, %i.yc
  %i.ye = fadd fast <8 x float> %i.yd, splat (float 1.000000e+00)
  %i.yf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ye
  %i.yg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yf, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.yh = fmul fast <8 x float> %i.yg, %i.th
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc297:                                        ; preds = %._crit_edge839
  %i.yi = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !56
  %i.yk = insertelement <8 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <8 x float> %i.yk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !56
  %i.yo = insertelement <8 x float> poison, float %i.yn, i64 0
  %i.yp = shufflevector <8 x float> %i.yo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.th, <8 x float> nofpclass(nan inf) %i.yl, <8 x float> nofpclass(nan inf) %i.yp)
  %i.yr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yq, <8 x float> zeroinitializer)
  %i.ys = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yr, <8 x float> splat (float 1.000000e+00))
  %i.yt = fmul fast <8 x float> %i.ys, %i.th
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc297, %.noexc296, %.noexc295, %bb.l, %.noexc294, %bb.k, %._crit_edge839
  %.0.i = phi nsz <8 x float> [ %i.yt, %.noexc297 ], [ %i.tj, %bb.k ], [ %i.tr, %.noexc294 ], [ %i.ub, %bb.l ], [ %i.vb, %.noexc295 ], [ %i.yh, %.noexc296 ], [ %i.th, %._crit_edge839 ] ; 11 uses
  switch i32 %i.af, label %.thread704 [
    i32 8, label %.thread
    i32 4, label %bb.m
    i32 1, label %bb.n
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  store <8 x float> %.0.i, ptr %.1229848, align 32, !tbaa !114
  %i.yu = getelementptr inbounds nuw i8, ptr %.1229848, i64 32
  br label %.thread704

bb.m:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.yv = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.yv, ptr %.1229848, align 16, !tbaa !114
  %i.yw = load i64, ptr %15, align 8, !tbaa !108
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.1229848, i64 %i.yw
  %i.yy = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.yy, ptr %i.yx, align 16, !tbaa !114
  %i.yz = getelementptr inbounds nuw i8, ptr %.1229848, i64 16
  br label %.thread704

bb.n:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <8 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1229848, align 4, !tbaa !56
  %.sroa.0.4.vec.extract = extractelement <8 x float> %.0.i, i64 1
  %i.za = load i64, ptr %15, align 8, !tbaa !108  ; 7 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.1229848, i64 %i.za
  store float %.sroa.0.4.vec.extract, ptr %i.zb, align 4, !tbaa !56
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %.idx = shl i64 %i.za, 3
  %i.zc = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.zc, align 4, !tbaa !56
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %.idx236 = mul i64 %i.za, 12
  %i.zd = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx236
  store float %.sroa.0.12.vec.extract, ptr %i.zd, align 4, !tbaa !56
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %.idx237 = shl i64 %i.za, 4
  %i.ze = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx237
  store float %.sroa.0.16.vec.extract, ptr %i.ze, align 4, !tbaa !56
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %.idx238 = mul i64 %i.za, 20
  %i.zf = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx238
  store float %.sroa.0.20.vec.extract, ptr %i.zf, align 4, !tbaa !56
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %.idx239 = mul i64 %i.za, 24
  %i.zg = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx239
  store float %.sroa.0.24.vec.extract, ptr %i.zg, align 4, !tbaa !56
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %.idx240 = mul i64 %i.za, 28
  %i.zh = getelementptr inbounds nuw i8, ptr %.1229848, i64 %.idx240
  store float %.sroa.0.28.vec.extract, ptr %i.zh, align 4, !tbaa !56
  %i.zi = getelementptr inbounds nuw i8, ptr %.1229848, i64 4
  br label %.thread704

.thread704:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.m, %.thread, %bb.n
  %.4232 = phi ptr [ %i.zi, %bb.n ], [ %.1229848, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.yu, %.thread ], [ %i.yz, %bb.m ] ; 2 uses
  %i.zj = add nuw nsw i32 %.0226849, 1            ; 2 uses
  %exitcond944.not = icmp eq i32 %i.zj, %i.ae
  br i1 %exitcond944.not, label %._crit_edge, label %bb.c, !llvm.loop !1655

._crit_edge857:                                   ; preds = %._crit_edge854.split, %_ZN4ncnn3MatD2Ev.exit261.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge857, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #25

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca i32, align 4                        ; 2 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !81
  %i.h = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %bb.j

_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 %3, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %2, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %8 = load i32, ptr %7, align 4, !tbaa !61
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %9 = load i32, ptr %i.c, align 4, !tbaa !81     ; 6 uses
  %i.i = add i32 %3, -1
  %i.j = add i32 %i.i, %9
  %i.k = sdiv i32 %i.j, %9
  store i32 %i.k, ptr %i.f, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %10 = mul nsw i32 %9, 36
  %11 = load i32, ptr %i.e, align 4, !tbaa !81    ; 4 uses
  %i.l = mul nsw i32 %10, %11
  %i.m = load i32, ptr %7, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.p, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.l, i32 noundef 1, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  %i.q = mul nsw i32 %9, %11
  %12 = add i32 %11, -1
  %13 = add i32 %12, %2
  %14 = sdiv i32 %13, %11
  %i.r = add i32 %9, -1
  %i.s = add i32 %i.r, %3
  %i.t = sdiv i32 %i.s, %9
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.q, i32 noundef 36, i32 noundef %14, i32 noundef %i.t, i64 noundef 4, ptr noundef null)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.u = load i32, ptr %7, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.u)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit12

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !36   ; 3 uses
  %.not3.i = icmp eq ptr %i.y, null
  %i.z = load ptr, ptr %6, align 8, !tbaa !37     ; 3 uses
  br i1 %.not3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.z)
          to label %_ZN4ncnn3MatD2Ev.exit12 unwind label %bb.i, !inline_history !0

bb.g:                                             ; preds = %bb.e
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.z) #12
  br label %_ZN4ncnn3MatD2Ev.exit12

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit12:                          ; preds = %bb.d, %bb.c, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit12, %bb.b
  ret void

bb.k:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !35  ; 2 uses
  %.not.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %.not3.i14 = icmp eq ptr %i.aj, null
  %i.ak = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.ak)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !0

bb.o:                                             ; preds = %bb.m
  %.not.i17 = icmp eq ptr %i.ak, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ak) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %bb.k, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca i32, align 4                        ; 2 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !81
  %i.h = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn47conv3x3s1_winograd23_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %bb.j

_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 %3, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %2, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %8 = load i32, ptr %7, align 4, !tbaa !61
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %9 = load i32, ptr %i.c, align 4, !tbaa !81     ; 6 uses
  %i.i = add i32 %3, -1
  %i.j = add i32 %i.i, %9
  %i.k = sdiv i32 %i.j, %9
  store i32 %i.k, ptr %i.f, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %10 = shl nsw i32 %9, 4
  %11 = load i32, ptr %i.e, align 4, !tbaa !81    ; 4 uses
  %i.l = mul nsw i32 %10, %11
  %i.m = load i32, ptr %7, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.p, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.l, i32 noundef 1, i32 noundef %i.m, i64 noundef 2, ptr noundef null)
  %i.q = mul nsw i32 %9, %11
  %12 = add i32 %11, -1
  %13 = add i32 %12, %2
  %14 = sdiv i32 %13, %11
  %i.r = add i32 %9, -1
  %i.s = add i32 %i.r, %3
  %i.t = sdiv i32 %i.s, %9
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.q, i32 noundef 16, i32 noundef %14, i32 noundef %i.t, i64 noundef 2, ptr noundef null)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.u = load i32, ptr %7, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.u)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit12

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !36   ; 3 uses
  %.not3.i = icmp eq ptr %i.y, null
  %i.z = load ptr, ptr %6, align 8, !tbaa !37     ; 3 uses
  br i1 %.not3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.z)
          to label %_ZN4ncnn3MatD2Ev.exit12 unwind label %bb.i, !inline_history !0

bb.g:                                             ; preds = %bb.e
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.z) #12
  br label %_ZN4ncnn3MatD2Ev.exit12

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit12:                          ; preds = %bb.d, %bb.c, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit12, %bb.b
  ret void

bb.k:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !35  ; 2 uses
  %.not.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %.not3.i14 = icmp eq ptr %i.aj, null
  %i.ak = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.ak)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !0

bb.o:                                             ; preds = %bb.m
  %.not.i17 = icmp eq ptr %i.ak, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ak) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %bb.k, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  resume { ptr, i32 } %i.af
}

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp eq i32 %6, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.f = uitofp fast i64 %i.c to float            ; 2 uses
  %i.g = fmul fast float %i.f, f0x3EAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = sdiv i32 %i.i, 4
  %8 = shl nsw i32 %7, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %8, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !81
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !81
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 3
  %i.s = sdiv i32 %i.r, 4
  %i.t = shl nsw i32 %i.s, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 3
  %i.x = and i32 %i.w, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !81
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 4
  %i.ad = shl nsw i32 %i.ac, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 4) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 3
  %i.ak = sdiv i32 %i.aj, 4
  %i.al = shl nsw i32 %i.ak, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !81
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.c, %i.ap
  %i.ar = shl nsw i32 %i.an, 1
  %i.as = add nsw i32 %i.ar, %.sroa.speculated58
  %i.at = sext i32 %i.as to i64
  %i.au = udiv i64 %i.aq, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = sdiv i32 %i.av, 4
  %i.ax = shl nsw i32 %i.aw, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 4) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %i.ba = udiv i32 %i.az, %.sroa.speculated52     ; 2 uses
  %i.bb = add nuw i32 %i.ay, %i.ba
  %i.bc = udiv i32 %i.bb, %i.ba
  %i.bd = add nuw nsw i32 %i.bc, 3
  %i.be = and i32 %i.bd, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %_ZN4ncnn3MatD2Ev.exit
  %.033139 = phi i32 [ %i.k, %.lr.ph140 ], [ %i.bg, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !81
  %i.s = mul i32 %i.r, %.033139                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1682 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !1682
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !1682
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 4 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !81    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !81
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 6 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !81    ; 8 uses
  %i.ah = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count27.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !1683
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !1683
  %i.al = load ptr, ptr %10, align 8, !tbaa !37, !noalias !1683
  %i.am = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !1683
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !1683 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated83, 3
  %i.ax = sext i32 %.sroa.speculated83 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ax, -3
  %invariant.op87.i = add nsw i64 %i.ax, -1
  %i.ay = sext i32 %i.ag to i64                   ; 2 uses
  %i.az = zext nneg i32 %i.ab to i64
  %i.ba = sub i32 0, %i.ag                        ; 2 uses
  %i.bb = shl nuw nsw i64 %wide.trip.count27.i, 1
  %i.bc = add nsw i64 %i.bb, -2
  %i.bd = mul nsw i64 %i.ay, 9
  %i.be = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bg = add i32 %.033139, 1
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033139, %i.bh
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar215 = phi i64 [ 0, %.lr.ph ], [ %indvar.next216, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bi = trunc i64 %indvar215 to i32
  %i.bj = mul i32 %i.ag, %i.bi
  %i.bk = sub i32 %i.ab, %i.bj
  %smin246 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bk) ; 3 uses
  %i.bl = add i32 %smin246, -2                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 1                       ; 2 uses
  %i.bn = add nuw i32 %i.bm, 1                    ; 2 uses
  %i.bo = mul i64 %i.bd, %indvar215               ; 2 uses
  %i.bp = trunc i64 %indvar215 to i32
  %i.bq = mul i32 %i.bp, %i.ba
  %i.br = add i32 %i.bq, %i.ab
  %smin217 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.br)
  %i.bs = zext i32 %smin217 to i64                ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 9
  %i.bu = mul nuw nsw i64 %i.bs, 72
  %i.bv = mul i32 %indvar, %i.ba
  %i.bw = add i32 %i.ab, %i.bv
  %smin = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bw) ; 5 uses
  %i.bx = mul i32 %smin, 36                       ; 2 uses
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.acj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.acc)
  %i.ack = fadd fast <8 x float> %i.acj, splat (float 1.000000e+00)
  %i.acl = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abz)
  %i.acm = shl <8 x i32> %i.acl, splat (i32 23)
  %i.acn = add <8 x i32> %i.acm, splat (i32 1065353216)
  %i.aco = bitcast <8 x i32> %i.acn to <8 x float>
  %i.acp = fmul fast <8 x float> %i.ack, %i.aco
  %i.acq = fadd fast <8 x float> %i.acp, splat (float 1.000000e+00) ; 2 uses
  %i.acr = fcmp fast ole <8 x float> %i.acq, zeroinitializer
  %i.acs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.act = bitcast <8 x float> %i.acs to <8 x i32>
  %i.acu = bitcast <8 x float> %i.acs to <8 x i32>
  %i.acv = and <8 x i32> %i.acu, splat (i32 -2139095041)
  %i.acw = or disjoint <8 x i32> %i.acv, splat (i32 1056964608)
  %i.acx = bitcast <8 x i32> %i.acw to <8 x float> ; 3 uses
  %i.acy = lshr <8 x i32> %i.act, splat (i32 23)
  %i.acz = add nsw <8 x i32> %i.acy, splat (i32 -127)
  %i.ada = sitofp fast <8 x i32> %i.acz to <8 x float> ; 2 uses
  %i.adb = fadd fast <8 x float> %i.ada, splat (float 1.000000e+00)
  %i.adc = fcmp fast olt <8 x float> %i.acx, splat (float f0x3F3504F3) ; 2 uses
  %i.add = select <8 x i1> %i.adc, <8 x float> %i.acx, <8 x float> zeroinitializer
  %i.ade = fadd fast <8 x float> %i.acx, splat (float -1.000000e+00)
  %i.adf = select fast <8 x i1> %i.adc, <8 x float> %i.ada, <8 x float> %i.adb ; 2 uses
  %i.adg = fadd fast <8 x float> %i.ade, %i.add   ; 12 uses
  %i.adh = fmul fast <8 x float> %i.adg, %i.adg   ; 2 uses
  %i.adi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adg, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.adj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adi, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x3DEF251A))
  %i.adk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adj, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0xBDFE5D4F))
  %i.adl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adk, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x3E11E9BF))
  %i.adm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adl, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0xBE2AAE50))
  %i.adn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adm, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x3E4CCEAC))
  %i.ado = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0xBE7FFFFC))
  %i.adp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ado, <8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x3EAAAAAA))
  %i.adq = fmul fast <8 x float> %i.adh, %i.adg
  %i.adr = fmul fast <8 x float> %i.adq, %i.adp
  %i.ads = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adf, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.adr)
  %i.adt = fneg fast <8 x float> %i.adh
  %i.adu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.adt, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ads)
  %i.adv = fadd fast <8 x float> %i.adu, %i.adg
  %i.adw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adf, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.adv)
  %.neg = fmul fast <8 x float> %i.adw, splat (float -2.000000e+00)
  %i.adx = select fast <8 x i1> %i.acr, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.ady = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adx, <8 x float> splat (float f0x42B0C0A5))
  %i.adz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ady, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adz, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aeb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aea, i32 1) ; 2 uses
  %i.aec = fcmp fast ogt <8 x float> %i.aeb, %i.aea
  %i.aed = select <8 x i1> %i.aec, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aee = fsub fast <8 x float> %i.aeb, %i.aed   ; 2 uses
  %i.aef = fneg fast <8 x float> %i.aee           ; 2 uses
  %i.aeg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aef, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.adz)
  %i.aeh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aef, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aeg) ; 8 uses
  %i.aei = fmul fast <8 x float> %i.aeh, %i.aeh
  %i.aej = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeh, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.aek = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aej, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> splat (float f0x3C088908))
  %i.ael = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aek, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> splat (float f0x3D2AA9C1))
  %i.aem = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ael, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> splat (float f0x3E2AAAAA))
  %i.aen = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aem, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> splat (float 5.000000e-01))
  %i.aeo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aen, <8 x float> nofpclass(nan inf) %i.aei, <8 x float> nofpclass(nan inf) %i.aeh)
  %i.aep = fadd fast <8 x float> %i.aeo, splat (float 1.000000e+00)
  %i.aeq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aee)
  %i.aer = shl <8 x i32> %i.aeq, splat (i32 23)
  %i.aes = add <8 x i32> %i.aer, splat (i32 1065353216)
  %i.aet = bitcast <8 x i32> %i.aes to <8 x float>
  %i.aeu = fmul fast <8 x float> %i.aep, %i.aet
  %i.aev = fadd fast <8 x float> %i.aeu, splat (float 1.000000e+00)
  %i.aew = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aev
  %i.aex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.aey = fmul fast <8 x float> %i.aex, %i.zy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc297:                                        ; preds = %._crit_edge912
  %i.aez = load ptr, ptr %14, align 8, !tbaa !37  ; 2 uses
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !56
  %i.afb = insertelement <8 x float> poison, float %i.afa, i64 0
  %i.afc = shufflevector <8 x float> %i.afb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !56
  %i.aff = insertelement <8 x float> poison, float %i.afe, i64 0
  %i.afg = shufflevector <8 x float> %i.aff, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zy, <8 x float> nofpclass(nan inf) %i.afc, <8 x float> nofpclass(nan inf) %i.afg)
  %i.afi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afh, <8 x float> zeroinitializer)
  %i.afj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afi, <8 x float> splat (float 1.000000e+00))
  %i.afk = fmul fast <8 x float> %i.afj, %i.zy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc297, %.noexc296, %.noexc295, %bb.n, %.noexc294, %bb.m, %._crit_edge912
  %.0.i = phi nsz <8 x float> [ %i.afk, %.noexc297 ], [ %i.aaa, %bb.m ], [ %i.aai, %.noexc294 ], [ %i.aas, %bb.n ], [ %i.abs, %.noexc295 ], [ %i.aey, %.noexc296 ], [ %i.zy, %._crit_edge912 ] ; 4 uses
  switch i32 %i.af, label %.thread777 [
    i32 8, label %.thread
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.afl = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.afm = shufflevector <8 x i32> %i.afl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afn = shufflevector <8 x i32> %i.afl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.afo = lshr <4 x i32> %i.afm, splat (i32 16)
  %i.afp = lshr <4 x i32> %i.afn, splat (i32 16)
  %i.afq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.afo, <4 x i32> %i.afp)
  store <8 x i16> %i.afq, ptr %.1229921, align 1, !tbaa !114
  %i.afr = getelementptr inbounds nuw i8, ptr %.1229921, i64 16
  br label %.thread777

bb.o:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.afs = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aft = shufflevector <8 x i32> %i.afs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afu = lshr <4 x i32> %i.aft, splat (i32 16)
  %i.afv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.afu, <4 x i32> poison)
  %i.afw = bitcast <8 x i16> %i.afv to <2 x i64>
  %i.afx = extractelement <2 x i64> %i.afw, i64 0
  store i64 %i.afx, ptr %.1229921, align 1, !tbaa !114
  %i.afy = load i64, ptr %15, align 8, !tbaa !108
  %i.afz = getelementptr inbounds nuw [2 x i8], ptr %.1229921, i64 %i.afy
  %i.aga = bitcast <8 x float> %.0.i to <8 x i32>
  %i.agb = shufflevector <8 x i32> %i.aga, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.agc = lshr <4 x i32> %i.agb, splat (i32 16)
  %i.agd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.agc, <4 x i32> poison)
  %i.age = bitcast <8 x i16> %i.agd to <2 x i64>
  %i.agf = extractelement <2 x i64> %i.age, i64 0
  store i64 %i.agf, ptr %i.afz, align 1, !tbaa !114
  %i.agg = getelementptr inbounds nuw i8, ptr %.1229921, i64 8
  br label %.thread777

bb.p:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.agh = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.agi = extractelement <16 x i16> %i.agh, i64 1
  store i16 %i.agi, ptr %.1229921, align 2, !tbaa !117
  %i.agj = extractelement <16 x i16> %i.agh, i64 3
  %i.agk = load i64, ptr %15, align 8, !tbaa !108 ; 7 uses
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %.1229921, i64 %i.agk
  store i16 %i.agj, ptr %i.agl, align 2, !tbaa !117
  %i.agm = extractelement <16 x i16> %i.agh, i64 5
  %.idx = shl i64 %i.agk, 2
  %i.agn = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx
  store i16 %i.agm, ptr %i.agn, align 2, !tbaa !117
  %i.ago = extractelement <16 x i16> %i.agh, i64 7
  %.idx236 = mul i64 %i.agk, 6
  %i.agp = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx236
  store i16 %i.ago, ptr %i.agp, align 2, !tbaa !117
  %i.agq = extractelement <16 x i16> %i.agh, i64 9
  %.idx237 = shl i64 %i.agk, 3
  %i.agr = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx237
  store i16 %i.agq, ptr %i.agr, align 2, !tbaa !117
  %i.ags = extractelement <16 x i16> %i.agh, i64 11
  %.idx238 = mul i64 %i.agk, 10
  %i.agt = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx238
  store i16 %i.ags, ptr %i.agt, align 2, !tbaa !117
  %i.agu = extractelement <16 x i16> %i.agh, i64 13
  %.idx239 = mul i64 %i.agk, 12
  %i.agv = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx239
  store i16 %i.agu, ptr %i.agv, align 2, !tbaa !117
  %i.agw = extractelement <16 x i16> %i.agh, i64 15
  %.idx240 = mul i64 %i.agk, 14
  %i.agx = getelementptr inbounds nuw i8, ptr %.1229921, i64 %.idx240
  store i16 %i.agw, ptr %i.agx, align 2, !tbaa !117
  %i.agy = getelementptr inbounds nuw i8, ptr %.1229921, i64 2
  br label %.thread777

.thread777:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.o, %.thread, %bb.p
  %.4232 = phi ptr [ %i.agy, %bb.p ], [ %.1229921, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.afr, %.thread ], [ %i.agg, %bb.o ] ; 2 uses
  %i.agz = add nuw nsw i32 %.0226922, 1           ; 2 uses
  %exitcond1017.not = icmp eq i32 %i.agz, %i.ae
  br i1 %exitcond1017.not, label %._crit_edge, label %bb.c, !llvm.loop !2536

._crit_edge930:                                   ; preds = %._crit_edge927.split, %_ZN4ncnn3MatD2Ev.exit261.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge930, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <15 x float> @llvm.masked.load.v15f32.p0(ptr captures(none), <15 x i1>, <15 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { cold nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !96}
!3 = distinct !{!3, !96}
!4 = distinct !{!4, !96}
!5 = distinct !{!5, !96}
!6 = distinct !{!6, !96}
!7 = distinct !{!7, !96}
!8 = distinct !{!8, !96}
!9 = distinct !{!9, !96}
!10 = distinct !{!10, !96}
!11 = distinct !{!11, !96}
!12 = distinct !{!12, !96}
!13 = distinct !{!13, !96}
!14 = distinct !{!14, !96}
!15 = distinct !{!15, !96}
!16 = distinct !{!16, !96}
!17 = distinct !{!17, !96}
!18 = distinct !{!18, !96}
!19 = !{i32 7, !"openmp", i32 51}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"vtable pointer", !23, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"any pointer", !24, i64 0}
!31 = !{!"p1 int", !30, i64 0}
!32 = !{!"long", !24, i64 0}
!33 = !{!"p1 _ZTSN4ncnn9AllocatorE", !30, i64 0}
!34 = !{!"_ZTSN4ncnn3MatE", !30, i64 0, !31, i64 8, !32, i64 16, !25, i64 24, !33, i64 32, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !25, i64 56, !32, i64 64}
!35 = !{!34, !31, i64 8}
!36 = !{!34, !33, i64 32}
!37 = !{!34, !30, i64 0}
!38 = !{!34, !32, i64 64}
!39 = !{!"bool", !24, i64 0}
!40 = !{!"p1 omnipotent char", !30, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !32, i64 8, !24, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIiSaIiEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4ncnn3MatE", !30, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !50, i64 0}
!52 = !{!"_ZTSN4ncnn5LayerE", !39, i64 8, !39, i64 9, !39, i64 10, !39, i64 11, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15, !39, i64 16, !39, i64 17, !39, i64 18, !39, i64 19, !39, i64 20, !39, i64 21, !39, i64 22, !39, i64 23, !39, i64 24, !39, i64 25, !39, i64 26, !39, i64 27, !25, i64 28, !30, i64 32, !25, i64 40, !42, i64 48, !42, i64 80, !46, i64 112, !46, i64 136, !51, i64 160, !51, i64 184}
!53 = !{!"float", !24, i64 0}
!54 = !{!"_ZTSN4ncnn11ConvolutionE", !52, i64 0, !25, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !25, i64 240, !25, i64 244, !25, i64 248, !53, i64 252, !25, i64 256, !25, i64 260, !25, i64 264, !25, i64 268, !34, i64 272, !25, i64 344, !34, i64 352, !34, i64 424, !34, i64 496, !34, i64 568, !34, i64 640}
!55 = !{!54, !25, i64 268}
!56 = !{!53, !53, i64 0}
!57 = !{!"p1 _ZTSN4ncnn5LayerE", !30, i64 0}
!58 = !{!"_ZTSN4ncnn19Convolution_x86_fmaE", !54, i64 0, !57, i64 712, !25, i64 720, !34, i64 728, !34, i64 800, !34, i64 872, !34, i64 944, !34, i64 1016, !57, i64 1088, !34, i64 1096}
!59 = !{!58, !57, i64 712}
!60 = !{!"_ZTSN4ncnn6OptionE", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !25, i64 4, !33, i64 8, !33, i64 16, !25, i64 24, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !25, i64 40, !39, i64 44, !39, i64 45, !39, i64 46, !39, i64 47, !24, i64 48, !39, i64 49, !39, i64 50, !39, i64 51, !39, i64 52, !39, i64 53, !39, i64 54, !39, i64 55, !39, i64 56, !39, i64 57, !39, i64 58, !39, i64 59, !39, i64 60, !39, i64 61, !39, i64 62, !39, i64 63}
!61 = !{!60, !25, i64 4}
!62 = !{!58, !25, i64 720}
!63 = !{!60, !39, i64 30}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!60, !39, i64 32}
!67 = !{!54, !25, i64 212}
!68 = !{!54, !25, i64 216}
!69 = !{!54, !25, i64 260}
!70 = !{!54, !25, i64 208}
!71 = !{!60, !39, i64 39}
!72 = !{!54, !25, i64 220}
!73 = !{!54, !25, i64 224}
!74 = !{!54, !25, i64 228}
!75 = !{!54, !25, i64 232}
!76 = !{!58, !57, i64 1088}
!77 = !{!54, !25, i64 256}
!78 = !{!30, !30, i64 0}
!79 = !{!34, !32, i64 16}
!80 = !{!34, !25, i64 24}
!81 = !{!25, !25, i64 0}
!82 = !{!34, !25, i64 56}
!83 = !{!60, !39, i64 0}
!84 = !{!60, !39, i64 55}
!85 = !{!60, !39, i64 56}
!86 = !{!60, !39, i64 57}
!87 = !{!60, !39, i64 28}
!88 = !{!47, !47, i64 0}
!89 = !{!34, !25, i64 44}
!90 = !{!34, !25, i64 48}
!91 = !{!54, !25, i64 236}
!92 = !{!54, !25, i64 240}
!93 = !{!54, !25, i64 244}
!94 = !{!54, !25, i64 248}
!95 = !{!60, !39, i64 29}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!"branch_weights", i32 8, i32 24}
!101 = !{!54, !25, i64 264}
!102 = !{!34, !25, i64 40}
!103 = !{!34, !25, i64 52}
!104 = !{!60, !33, i64 16}
!105 = !{!60, !33, i64 8}
!106 = !{!"p1 _ZTS8_IO_FILE", !30, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!32, !32, i64 0}
!109 = !{!31, !31, i64 0}
!110 = !{!"branch_weights", i32 4, i32 28}
!111 = !{!"p1 float", !30, i64 0}
!112 = !{!111, !111, i64 0}
end_hunk_3
