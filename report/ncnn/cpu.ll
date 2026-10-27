Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/cpu?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL30try_initialize_global_cpu_infov:bb.a
  %i.im = and <2 x i32> %i.il, splat (i32 1)
  %i.in = trunc <2 x i64> %i.ik to <2 x i32>
  %i.io = and <2 x i32> %i.in, splat (i32 1)
  %i.ip = add <2 x i32> %i.im, %vec.phi98         ; 2 uses
  %i.iq = add <2 x i32> %i.io, %vec.phi99         ; 2 uses
  %index.next105 = add nuw i64 %index96, 4        ; 2 uses
  %vec.ind.next106 = add nuw <2 x i64> %vec.ind97, splat (i64 4)
  %i.ir = icmp eq i64 %index.next105, 1024
  br i1 %i.ir, label %_ZNK4ncnn6CpuSet11num_enabledEv.exit.i.i60.i, label %vector.body95, !llvm.loop !32

_ZNK4ncnn6CpuSet11num_enabledEv.exit.i.i60.i:     ; preds = %vector.body95
  %bin.rdx108 = add <2 x i32> %i.iq, %i.ip
  %i.is = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx108)
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i, label %.preheader.i.i61.i

.preheader.i.i61.i:                               ; preds = %_ZNK4ncnn6CpuSet11num_enabledEv.exit.i.i60.i
  %i.iu = load i32, ptr @_ZL10g_cpucount, align 4, !tbaa !14 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph.preheader.i.i65.i, label %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i

.lr.ph.preheader.i.i65.i:                         ; preds = %.preheader.i.i61.i
  %wide.trip.count.i.i66.i = zext nneg i32 %i.iu to i64
  br label %.lr.ph.i.i67.i

.lr.ph.i.i67.i:                                   ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i, %.lr.ph.preheader.i.i65.i
  %indvars.iv.i.i68.i = phi i64 [ 0, %.lr.ph.preheader.i.i65.i ], [ %indvars.iv.next.i.i70.i, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i ] ; 5 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.i.i68.i, 1024
  br i1 %i.iw, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.i.i72.i, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i

_ZNK4ncnn6CpuSet10is_enabledEi.exit.i.i72.i:      ; preds = %.lr.ph.i.i67.i
  %i.ix = lshr i64 %indvars.iv.i.i68.i, 6
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr @_ZL23g_cpu_affinity_mask_big, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !10
  %i.ja = and i64 %indvars.iv.i.i68.i, 63
  %i.jb = lshr i64 %i.iz, %i.ja
  %i.jc = trunc i64 %i.jb to i1
  br i1 %i.jc, label %bb.as, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i

_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i: ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.i.i72.i, %.lr.ph.i.i67.i
  %indvars.iv.next.i.i70.i = add nuw nsw i64 %indvars.iv.i.i68.i, 1 ; 2 uses
  %exitcond.not.i.i71.i = icmp eq i64 %indvars.iv.next.i.i70.i, %wide.trip.count.i.i66.i
  br i1 %exitcond.not.i.i71.i, label %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i, label %.lr.ph.i.i67.i, !llvm.loop !31

bb.as:                                            ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.i.i72.i
  %i.jd = trunc nuw nsw i64 %indvars.iv.i.i68.i to i32
  br label %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i

_ZL27get_big_cpu_data_cache_sizei.exit.i62.i:     ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i, %bb.as, %.preheader.i.i61.i, %_ZNK4ncnn6CpuSet11num_enabledEv.exit.i.i60.i
  %.sink.i.i63.i = phi i32 [ %i.jd, %bb.as ], [ 0, %_ZNK4ncnn6CpuSet11num_enabledEv.exit.i.i60.i ], [ 0, %.preheader.i.i61.i ], [ 0, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread.i.i69.i ]
  %i.je = call fastcc noundef range(i32 -2147483648, 2147482625) i32 @_ZL19get_data_cache_sizeii(i32 noundef %.sink.i.i63.i, i32 noundef 3) ; 2 uses
  %i.jf = icmp slt i32 %i.je, 1
  br i1 %i.jf, label %bb.at, label %_ZL26initialize_global_cpu_infov.exit

bb.at:                                            ; preds = %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i
  %i.jg = call i64 @sysconf(i32 noundef 194) #17
  %i.jh = trunc i64 %i.jg to i32
  br label %_ZL26initialize_global_cpu_infov.exit

_ZL26initialize_global_cpu_infov.exit:            ; preds = %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i, %bb.at
  %.0.i64.i = phi i32 [ %i.jh, %bb.at ], [ %i.je, %_ZL27get_big_cpu_data_cache_sizei.exit.i62.i ]
  store i32 %.0.i64.i, ptr @_ZL22g_cpu_level3_cachesize, align 4, !tbaa !14
  store i1 true, ptr @_ZL22g_cpu_info_initialized, align 4
  br label %bb.au

bb.au:                                            ; preds = %_ZL26initialize_global_cpu_infov.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL13get_elf_hwcapj(i32 noundef range(i32 16, 27) %0) unnamed_addr #9 {
bb.a:
  %1 = alloca %struct.anon, align 4               ; 5 uses
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.24, i64 28, i64 1, ptr %i.b) #28 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  br label %_ZL33get_elf_hwcap_from_proc_self_auxvj.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.e = tail call i32 @feof(ptr noundef nonnull %i.a) #17
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.f = call i64 @fread(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.g = and i64 %i.f, 4294967295
  %.not15.i = icmp eq i64 %i.g, 1
  br i1 %.not15.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %1, align 4, !tbaa !39     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load i32, ptr %i.d, align 4
  %i.k = icmp eq i32 %i.j, 0
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  %i.l = icmp eq i32 %i.h, %0
  %or.cond = or i1 %or.cond.i, %i.l
  br i1 %or.cond, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %_ZL33get_elf_hwcap_from_proc_self_auxvj.exit

_ZL33get_elf_hwcap_from_proc_self_auxvj.exit:     ; preds = %bb.b, %.thread.i
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL19get_thread_siblingsi(i32 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %0) #17 ; 0 uses
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %0) #17 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.h = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b)
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.loopexit23

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 4, !tbaa !14
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %.lr.ph, label %.loopexit23

.lr.ph:                                           ; preds = %bb.c, %.loopexit
  %.01726 = phi i32 [ %.3, %.loopexit ], [ %i.k, %bb.c ]
  %i.n = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  %i.o = icmp eq i8 %i.n, 44
  %i.p = load i32, ptr %i.d, align 4              ; 6 uses
  %i.q = shl nuw i32 1, %i.p
  %i.r = select i1 %i.o, i32 %i.q, i32 0
  %.1 = or i32 %i.r, %.01726                      ; 3 uses
  %i.s = icmp eq i8 %i.n, 45
  %i.t = load i32, ptr %i.b, align 4              ; 5 uses
  %i.u = icmp slt i32 %i.t, %i.p
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.v = sub i32 %i.p, %i.t
  %xtraiter = and i32 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.0.in25.prol = phi i32 [ %.0.prol, %.preheader.prol ], [ %i.t, %.preheader.preheader ]
  %.224.prol = phi i32 [ %i.x, %.preheader.prol ], [ %.1, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %.0.prol = add nsw i32 %.0.in25.prol, 1         ; 3 uses
  %i.w = shl nuw i32 1, %.0.prol
  %i.x = or i32 %i.w, %.224.prol                  ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !40

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %.0.in25.unr = phi i32 [ %i.t, %.preheader.preheader ], [ %.0.prol, %.preheader.prol ]
  %.224.unr = phi i32 [ %.1, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %i.y = sub i32 %i.t, %i.p
  %i.z = icmp ugt i32 %i.y, -8
  br i1 %i.z, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0.in25 = phi i32 [ %.0.7, %.preheader ], [ %.0.in25.unr, %.preheader.prol.loopexit ] ; 8 uses
  %.224 = phi i32 [ %i.ad, %.preheader ], [ %.224.unr, %.preheader.prol.loopexit ]
  %.0 = add nsw i32 %.0.in25, 1
  %1 = shl nuw i32 1, %.0
  %2 = or i32 %1, %.224
  %.0.1 = add nsw i32 %.0.in25, 2
  %3 = shl nuw i32 1, %.0.1
  %4 = or i32 %3, %2
  %.0.2 = add nsw i32 %.0.in25, 3
  %5 = shl nuw i32 1, %.0.2
  %6 = or i32 %5, %4
  %.0.3 = add nsw i32 %.0.in25, 4
  %7 = shl nuw i32 1, %.0.3
  %8 = or i32 %7, %6
  %.0.4 = add nsw i32 %.0.in25, 5
  %9 = shl nuw i32 1, %.0.4
  %10 = or i32 %9, %8
  %.0.5 = add nsw i32 %.0.in25, 6
  %11 = shl nuw i32 1, %.0.5
  %12 = or i32 %11, %10
  %.0.6 = add nsw i32 %.0.in25, 7
  %i.aa = shl nuw i32 1, %.0.6
  %i.ab = or i32 %i.aa, %12
  %.0.7 = add nsw i32 %.0.in25, 8                 ; 3 uses
  %i.ac = shl nuw i32 1, %.0.7
  %i.ad = or i32 %i.ac, %i.ab                     ; 2 uses
  %exitcond.not.7 = icmp eq i32 %.0.7, %i.p
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !41

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph
  %.3 = phi i32 [ %.1, %.lr.ph ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ad, %.preheader ] ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !14
  %i.ae = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %.lr.ph, label %.loopexit23, !llvm.loop !42

.loopexit23:                                      ; preds = %.loopexit, %bb.c, %bb.b
  %.4 = phi i32 [ -1, %bb.b ], [ %i.k, %bb.c ], [ %.3, %.loopexit ]
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit23
  %.018 = phi i32 [ %.4, %.loopexit23 ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.018
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -2147483648, 2147482625) i32 @_ZL19get_data_cache_sizeii(i32 noundef %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.ncnn::CpuSet", align 8      ; 11 uses
  %i.e = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %0, i32 noundef 0) #17 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 2 uses
  %.not165 = icmp eq ptr %i.g, null
  br i1 %.not165, label %.thread143, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %i.z, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %.076166 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %i.b, align 4, !tbaa !14
  %i.i = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b)
  %i.j = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %.not91 = icmp eq i32 %i.i, 1
  %i.k = load i32, ptr %i.b, align 4
  %.not92 = icmp eq i32 %i.k, %1
  %or.cond108 = select i1 %.not91, i1 %.not92, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %or.cond108, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.m = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not93 = icmp eq ptr %i.m, null
  br i1 %.not93, label %.thread143, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c)
  %i.o = call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  %.not94 = icmp eq i32 %i.n, 1
  br i1 %.not94, label %bb.d, label %.thread140

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.c, align 16
  %i.q = xor i32 %i.p, 1635017028
  %i.r = getelementptr i8, ptr %i.c, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %i.q, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not95 = icmp eq i32 %i.w, 0
  %lhsv = load i64, ptr %i.c, align 16
  %.not97 = icmp eq i64 %lhsv, 28259001035222613
  %or.cond109 = select i1 %.not95, i1 true, i1 %.not97
  br i1 %or.cond109, label %bb.f, label %.thread140

.thread140:                                       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.e

bb.e:                                             ; preds = %.thread140, %.lr.ph
  %i.x = add nuw nsw i32 %.076166, 1              ; 2 uses
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %0, i32 noundef %i.x) #17 ; 0 uses
  %i.z = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread143, label %.lr.ph, !llvm.loop !44

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.ab = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not98 = icmp eq ptr %i.ab, null
  br i1 %.not98, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.d) ; 2 uses
  %i.ad = call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  %.not99 = icmp eq i32 %i.ac, 1
  br i1 %.not99, label %.critedge111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.32, i32 noundef %i.ac) #26 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc = call i32 @fputc(i32 10, ptr %i.ag)     ; 0 uses
  br label %.critedge

.critedge111:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.ai = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not100 = icmp eq ptr %i.ai, null
  br i1 %.not100, label %.critedge113, label %bb.i

bb.i:                                             ; preds = %.critedge111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.aj = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  %.not101 = icmp eq i32 %i.aj, 1
  br i1 %.not101, label %bb.j, label %.thread145

.thread145:                                       ; preds = %bb.i
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.35, i32 noundef %i.aj) #26 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc106 = call i32 @fputc(i32 10, ptr %i.an)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.critedge113

bb.j:                                             ; preds = %bb.i
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #29
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = load i8, ptr %i.e, align 16, !tbaa !18
  %i.ar = icmp eq i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 120
  %or.cond = select i1 %i.ar, i1 %i.au, i1 false
  %i.av = add nsw i32 %i.ap, -2
  %spec.select = select i1 %or.cond, i32 %i.av, i32 %i.ap ; 2 uses
  %i.aw = icmp sgt i32 %spec.select, 0
  br i1 %i.aw, label %.lr.ph172.preheader, label %._crit_edge

.lr.ph172.preheader:                              ; preds = %bb.j
  %i.ax = zext nneg i32 %spec.select to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %_ZN4ncnn6CpuSet6enableEi.exit119
  %indvars.iv194 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next195, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 10 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph172.preheader ], [ %indvars.iv.next, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18  ; 4 uses
  %.not102 = trunc i8 %i.az to i1
  %i.ba = icmp samesign ult i64 %indvars.iv194, 1024 ; 4 uses
end_hunk_0
