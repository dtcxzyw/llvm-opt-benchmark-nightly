Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/cpu?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13get_elf_hwcapj:bb.a
  %.not13.i = icmp eq i32 %i.f, 0
  br i1 %.not13.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = call i64 @fread(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.h = and i64 %i.g, 4294967295
  %.not14.i = icmp eq i64 %i.h, 1
  br i1 %.not14.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 4, !tbaa !33     ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = load i32, ptr %i.e, align 4
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.i = select i1 %i.j, i1 %i.l, i1 false
  %i.m = icmp eq i32 %i.i, %0
  %or.cond = or i1 %or.cond.i, %i.m
  br i1 %or.cond, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
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
  %i.j = load i32, ptr %i.b, align 4, !tbaa !15
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %.lr.ph, label %.loopexit23

.lr.ph:                                           ; preds = %bb.c, %.loopexit
  %.01726 = phi i32 [ %.3, %.loopexit ], [ %i.k, %bb.c ]
  %i.n = load i8, ptr %i.c, align 1, !tbaa !25    ; 2 uses
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
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !35

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %.0.in25.unr = phi i32 [ %i.t, %.preheader.preheader ], [ %.0.prol, %.preheader.prol ]
  %.224.unr = phi i32 [ %.1, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %i.y = sub i32 %i.t, %i.p
  %i.z = icmp ugt i32 %i.y, -8
  br i1 %i.z, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0.in25 = phi i32 [ %.0.7, %.preheader ], [ %.0.in25.unr, %.preheader.prol.loopexit ] ; 8 uses
  %.224 = phi i32 [ %i.ap, %.preheader ], [ %.224.unr, %.preheader.prol.loopexit ]
  %.0 = add nsw i32 %.0.in25, 1
  %i.aa = shl nuw i32 1, %.0
  %i.ab = or i32 %i.aa, %.224
  %.0.1 = add nsw i32 %.0.in25, 2
  %i.ac = shl nuw i32 1, %.0.1
  %i.ad = or i32 %i.ac, %i.ab
  %.0.2 = add nsw i32 %.0.in25, 3
  %i.ae = shl nuw i32 1, %.0.2
  %i.af = or i32 %i.ae, %i.ad
  %.0.3 = add nsw i32 %.0.in25, 4
  %i.ag = shl nuw i32 1, %.0.3
  %i.ah = or i32 %i.ag, %i.af
  %.0.4 = add nsw i32 %.0.in25, 5
  %i.ai = shl nuw i32 1, %.0.4
  %i.aj = or i32 %i.ai, %i.ah
  %.0.5 = add nsw i32 %.0.in25, 6
  %i.ak = shl nuw i32 1, %.0.5
  %i.al = or i32 %i.ak, %i.aj
  %.0.6 = add nsw i32 %.0.in25, 7
  %i.am = shl nuw i32 1, %.0.6
  %i.an = or i32 %i.am, %i.al
  %.0.7 = add nsw i32 %.0.in25, 8                 ; 3 uses
  %i.ao = shl nuw i32 1, %.0.7
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %exitcond.not.7 = icmp eq i32 %.0.7, %i.p
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !37

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph
  %.3 = phi i32 [ %.1, %.lr.ph ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ap, %.preheader ] ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !15
  %i.aq = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %.lr.ph, label %.loopexit23, !llvm.loop !38

.loopexit23:                                      ; preds = %.loopexit, %bb.c, %bb.b
  %.4 = phi i32 [ -1, %bb.b ], [ %i.k, %bb.c ], [ %.3, %.loopexit ]
  %i.as = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
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
  %.not168 = icmp eq ptr %i.g, null
  br i1 %.not168, label %.thread142, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %i.z, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %.076169 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %i.b, align 4, !tbaa !15
  %i.i = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b)
  %i.j = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %.not91 = icmp eq i32 %i.i, 1
  %i.k = load i32, ptr %i.b, align 4
  %.not92 = icmp eq i32 %i.k, %1
  %or.cond108 = select i1 %.not91, i1 %.not92, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %or.cond108, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %0, i32 noundef %.076169) #17 ; 0 uses
  %i.m = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not93 = icmp eq ptr %i.m, null
  br i1 %.not93, label %.thread142, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c)
  %i.o = call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  %.not94 = icmp eq i32 %i.n, 1
  br i1 %.not94, label %bb.d, label %.thread139

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
  br i1 %or.cond109, label %bb.f, label %.thread139

.thread139:                                       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.e

bb.e:                                             ; preds = %.thread139, %.lr.ph
  %i.x = add nuw nsw i32 %.076169, 1              ; 2 uses
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %0, i32 noundef %i.x) #17 ; 0 uses
  %i.z = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread142, label %.lr.ph, !llvm.loop !39

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %0, i32 noundef %.076169) #17 ; 0 uses
  %i.ab = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not98 = icmp eq ptr %i.ab, null
  br i1 %.not98, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.d) ; 2 uses
  %i.ad = call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  %.not99 = icmp eq i32 %i.ac, 1
  br i1 %.not99, label %.critedge111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.32, i32 noundef %i.ac) #26 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, ptr %i.ag)     ; 0 uses
  br label %.critedge

.critedge111:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %0, i32 noundef %.076169) #17 ; 0 uses
  %i.ai = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not100 = icmp eq ptr %i.ai, null
  br i1 %.not100, label %.critedge113, label %bb.i

bb.i:                                             ; preds = %.critedge111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.aj = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  %.not101 = icmp eq i32 %i.aj, 1
  br i1 %.not101, label %bb.j, label %.thread144

.thread144:                                       ; preds = %bb.i
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.35, i32 noundef %i.aj) #26 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc106 = call i32 @fputc(i32 10, ptr %i.an)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.critedge113

bb.j:                                             ; preds = %bb.i
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #29
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = load i8, ptr %i.e, align 16, !tbaa !25
  %i.ar = icmp eq i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 120
  %or.cond = select i1 %i.ar, i1 %i.au, i1 false
  %i.av = add nsw i32 %i.ap, -2
  %spec.select = select i1 %or.cond, i32 %i.av, i32 %i.ap ; 2 uses
  %i.aw = icmp sgt i32 %spec.select, 0
  br i1 %i.aw, label %.lr.ph175.preheader, label %._crit_edge

.lr.ph175.preheader:                              ; preds = %bb.j
  %i.ax = zext nneg i32 %spec.select to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %_ZN4ncnn6CpuSet6enableEi.exit119
  %indvars.iv198 = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next199, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 10 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph175.preheader ], [ %indvars.iv.next, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25  ; 4 uses
  %.not102 = trunc i8 %i.az to i1
  %i.ba = icmp samesign ult i64 %indvars.iv198, 1024 ; 4 uses
  %or.cond145 = select i1 %.not102, i1 %i.ba, i1 false
  br i1 %or.cond145, label %bb.k, label %_ZN4ncnn6CpuSet6enableEi.exit

bb.k:                                             ; preds = %.lr.ph175
  %i.bb = and i64 %indvars.iv198, 60
  %i.bc = shl nuw nsw i64 1, %i.bb
  %i.bd = lshr i64 %indvars.iv198, 6
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.be = load i64, ptr %3, align 8, !tbaa !9
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %3, align 8, !tbaa !9
  br label %_ZN4ncnn6CpuSet6enableEi.exit

_ZN4ncnn6CpuSet6enableEi.exit:                    ; preds = %bb.k, %.lr.ph175
  %i.bg = and i8 %i.az, 2
  %.not103 = icmp ne i8 %i.bg, 0
  %or.cond147 = select i1 %.not103, i1 %i.ba, i1 false
  br i1 %or.cond147, label %bb.l, label %_ZN4ncnn6CpuSet6enableEi.exit117

bb.l:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit
  %i.bh = and i64 %indvars.iv198, 60
  %i.bi = shl nuw nsw i64 2, %i.bh
  %i.bj = lshr i64 %indvars.iv198, 6
  %4 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !9
  %i.bl = or i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %4, align 8, !tbaa !9
  br label %_ZN4ncnn6CpuSet6enableEi.exit117

_ZN4ncnn6CpuSet6enableEi.exit117:                 ; preds = %bb.l, %_ZN4ncnn6CpuSet6enableEi.exit
  %i.bm = and i8 %i.az, 4
  %.not104 = icmp ne i8 %i.bm, 0
  %or.cond148 = select i1 %.not104, i1 %i.ba, i1 false
  br i1 %or.cond148, label %bb.m, label %_ZN4ncnn6CpuSet6enableEi.exit118

bb.m:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit117
  %i.bn = and i64 %indvars.iv198, 60
  %i.bo = shl nuw nsw i64 4, %i.bn
  %i.bp = lshr i64 %indvars.iv198, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bp ; 2 uses
  %i.bq = load i64, ptr %5, align 8, !tbaa !9
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %5, align 8, !tbaa !9
  br label %_ZN4ncnn6CpuSet6enableEi.exit118

_ZN4ncnn6CpuSet6enableEi.exit118:                 ; preds = %bb.m, %_ZN4ncnn6CpuSet6enableEi.exit117
  %i.bs = and i8 %i.az, 8
  %.not105 = icmp ne i8 %i.bs, 0
  %or.cond149 = select i1 %.not105, i1 %i.ba, i1 false
  br i1 %or.cond149, label %bb.n, label %_ZN4ncnn6CpuSet6enableEi.exit119

bb.n:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit118
  %i.bt = and i64 %indvars.iv198, 60
  %i.bu = shl nuw i64 8, %i.bt
  %i.bv = lshr i64 %indvars.iv198, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bv ; 2 uses
  %i.bw = load i64, ptr %6, align 8, !tbaa !9
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %6, align 8, !tbaa !9
  br label %_ZN4ncnn6CpuSet6enableEi.exit119

_ZN4ncnn6CpuSet6enableEi.exit119:                 ; preds = %bb.n, %_ZN4ncnn6CpuSet6enableEi.exit118
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 4
  %i.by = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.by, label %.lr.ph175, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %_ZN4ncnn6CpuSet6enableEi.exit119, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge
  %index = phi i64 [ 0, %._crit_edge ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %._crit_edge ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %._crit_edge ], [ %i.cl, %vector.body ]
  %vec.phi248 = phi <2 x i32> [ zeroinitializer, %._crit_edge ], [ %i.cm, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bz = lshr i64 %index, 6
  %i.ca = lshr i64 %index, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bz
  %8 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ca
  %i.cb = load i64, ptr %7, align 8, !tbaa !9
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = load i64, ptr %8, align 8, !tbaa !9
  %broadcast.splatinsert249 = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat250 = shufflevector <2 x i64> %broadcast.splatinsert249, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cd = and <2 x i64> %vec.ind, splat (i64 63)
  %i.ce = and <2 x i64> %step.add, splat (i64 63)
  %i.cf = lshr <2 x i64> %broadcast.splat, %i.cd
  %i.cg = lshr <2 x i64> %broadcast.splat250, %i.ce
  %i.ch = trunc <2 x i64> %i.cf to <2 x i32>
  %i.ci = and <2 x i32> %i.ch, splat (i32 1)
  %i.cj = trunc <2 x i64> %i.cg to <2 x i32>
  %i.ck = and <2 x i32> %i.cj, splat (i32 1)
  %i.cl = add <2 x i32> %i.ci, %vec.phi           ; 2 uses
  %i.cm = add <2 x i32> %i.ck, %vec.phi248        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cn = icmp eq i64 %index.next, 1024
  br i1 %i.cn, label %_ZNK4ncnn6CpuSet11num_enabledEv.exit, label %vector.body, !llvm.loop !41

_ZNK4ncnn6CpuSet11num_enabledEv.exit:             ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cm, %i.cl
  %i.co = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.o, label %.lr.ph184

bb.o:                                             ; preds = %_ZNK4ncnn6CpuSet11num_enabledEv.exit
  %i.cq = load i32, ptr %i.d, align 4, !tbaa !15
  %i.cr = shl nsw i32 %i.cq, 10
  br label %.critedge113

._crit_edge185:                                   ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge185
  %i.cs = ptrtoint ptr %.sroa.14.2 to i64
  %i.ct = ptrtoint ptr %.sroa.0.2 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.cu) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge185, %bb.p
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !15
  %i.cw = sdiv i32 %i.cv, %.3
  %i.cx = add nsw i32 %i.cw, 3
  %i.cy = sdiv i32 %i.cx, 4
  %i.cz = shl nsw i32 %i.cy, 12
  br label %.critedge113

.lr.ph184:                                        ; preds = %_ZNK4ncnn6CpuSet11num_enabledEv.exit, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ 0, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 5 uses
  %.068182 = phi i32 [ %.3, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ 0, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 5 uses
  %.sroa.14.0181 = phi ptr [ %.sroa.14.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 8 uses
  %.sroa.10.0180 = phi ptr [ %.sroa.10.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 10 uses
  %.sroa.0.0179 = phi ptr [ %.sroa.0.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 14 uses
  %i.da = icmp samesign ult i64 %indvars.iv203, 1024
  br i1 %i.da, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

_ZNK4ncnn6CpuSet10is_enabledEi.exit:              ; preds = %.lr.ph184
  %i.db = lshr i64 %indvars.iv203, 6
  %9 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.db
  %i.dc = load i64, ptr %9, align 8, !tbaa !9
  %i.dd = and i64 %indvars.iv203, 63
  %i.de = lshr i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i1
  br i1 %i.df, label %bb.q, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

bb.q:                                             ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit
  %i.dg = trunc nuw nsw i64 %indvars.iv203 to i32
  %i.dh = invoke fastcc noundef i32 @_ZL19get_thread_siblingsi(i32 noundef %i.dg)
          to label %bb.r unwind label %bb.s       ; 4 uses

bb.r:                                             ; preds = %bb.q
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.dj = ptrtoint ptr %.sroa.10.0180 to i64
  %i.dk = ptrtoint ptr %.sroa.0.0179 to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 6 uses
  %i.dm = ashr exact i64 %i.dl, 2                 ; 4 uses
  %.not188 = icmp eq ptr %.sroa.10.0180, %.sroa.0.0179
  br i1 %.not188, label %.critedge115.thread, label %.lr.ph177

bb.s:                                             ; preds = %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %.lr.ph177
  %i.do = add nuw i64 %.0176, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %i.dm
  br i1 %exitcond.not, label %.critedge115, label %.lr.ph177, !llvm.loop !42

.lr.ph177:                                        ; preds = %.preheader, %bb.t
  %.0176 = phi i64 [ %i.do, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0179, i64 %.0176
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !15
  %i.dr = icmp eq i32 %i.dq, %i.dh
  br i1 %i.dr, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread, label %bb.t

.critedge115:                                     ; preds = %bb.t
  %.not.i = icmp eq ptr %.sroa.10.0180, %.sroa.14.0181
  br i1 %.not.i, label %bb.v, label %bb.u

.critedge115.thread:                              ; preds = %.preheader
  %.not.i220 = icmp eq ptr %.sroa.10.0180, %.sroa.14.0181
  br i1 %.not.i220, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.critedge115.thread, %.critedge115
  store i32 %i.dh, ptr %.sroa.10.0180, align 4, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %.critedge115
  %i.ds = icmp eq i64 %i.dl, 9223372036854775804
  br i1 %i.ds, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc unwind label %.thread221

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %.critedge115.thread, %bb.v
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dm
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951)
  %i.dw = select i1 %i.du, i64 2305843009213693951, i64 %i.dv ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #25
          to label %.noexc121 unwind label %.loopexit ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dl ; 2 uses
  store i32 %i.dh, ptr %i.dz, align 4, !tbaa !15
  %i.ea = icmp sgt i64 %i.dl, 0
  br i1 %i.ea, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %.sroa.0.0179, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc121
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0179, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0179, i64 noundef %i.dl) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.u
  %.sroa.0.3 = phi ptr [ %i.dy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0179, %bb.u ]
  %.pn146 = phi ptr [ %i.dz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.0180, %bb.u ]
  %.sroa.14.3 = phi ptr [ %i.eb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.14.0181, %bb.u ]
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn146, i64 4
  %i.ec = add nsw i32 %.068182, 1
  br label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.thread221:                                       ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread:       ; preds = %.lr.ph177, %.lr.ph184, %bb.r, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNK4ncnn6CpuSet10is_enabledEi.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.0179, %.lr.ph184 ], [ %.sroa.0.0179, %_ZNK4ncnn6CpuSet10is_enabledEi.exit ], [ %.sroa.0.0179, %bb.r ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0.0179, %.lr.ph177 ] ; 4 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0180, %.lr.ph184 ], [ %.sroa.10.0180, %_ZNK4ncnn6CpuSet10is_enabledEi.exit ], [ %.sroa.10.0180, %bb.r ], [ %.sroa.10.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.10.0180, %.lr.ph177 ]
  %.sroa.14.2 = phi ptr [ %.sroa.14.0181, %.lr.ph184 ], [ %.sroa.14.0181, %_ZNK4ncnn6CpuSet10is_enabledEi.exit ], [ %.sroa.14.0181, %bb.r ], [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.14.0181, %.lr.ph177 ] ; 2 uses
  %.3 = phi i32 [ %.068182, %.lr.ph184 ], [ %.068182, %_ZNK4ncnn6CpuSet10is_enabledEi.exit ], [ %.068182, %bb.r ], [ %i.ec, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.068182, %.lr.ph177 ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.ed = load i32, ptr @_ZL10g_cpucount, align 4, !tbaa !15
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next204, %i.ee
  br i1 %i.ef, label %.lr.ph184, label %._crit_edge185, !llvm.loop !43

bb.z:                                             ; preds = %.loopexit, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.s ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0.0179, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.aa

bb.aa:                                            ; preds = %.thread221, %bb.z
  %.pn224 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread221 ], [ %.pn, %bb.z ]
  %i.eg = ptrtoint ptr %.sroa.14.0181 to i64
  %i.eh = ptrtoint ptr %.sroa.0.0179 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0179, i64 noundef %i.ei) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %bb.z, %bb.aa
  %.pn225 = phi { ptr, i32 } [ %.pn, %bb.z ], [ %.pn224, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn225

.critedge113:                                     ; preds = %.thread144, %.critedge111, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  %.482 = phi i32 [ %i.cr, %bb.o ], [ %i.cz, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %.thread144 ], [ 0, %.critedge111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %.critedge113
  %.583 = phi i32 [ %.482, %.critedge113 ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.thread142

.thread142:                                       ; preds = %bb.e, %bb.b, %bb.a, %.critedge
  %.684 = phi i32 [ %.583, %.critedge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.684
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20cpu_support_arm_neonEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn21cpu_support_arm_vfpv4Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn23cpu_support_arm_asimdhpEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn21cpu_support_arm_cpuidEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn23cpu_support_arm_asimddpEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn24cpu_support_arm_asimdfhmEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20cpu_support_arm_bf16Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20cpu_support_arm_i8mmEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn19cpu_support_arm_sveEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20cpu_support_arm_sve2Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn23cpu_support_arm_svebf16Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn23cpu_support_arm_svei8mmEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn24cpu_support_arm_svef32mmEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4ncnn19cpu_support_x86_avxEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL21g_cpu_support_x86_avx, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4097) i32 @_ZN4ncnn19cpu_support_x86_fmaEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL21g_cpu_support_x86_fma, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2049) i32 @_ZN4ncnn19cpu_support_x86_xopEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL21g_cpu_support_x86_xop, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 536870913) i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL22g_cpu_support_x86_f16c, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 33) i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL22g_cpu_support_x86_avx2, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 17) i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL26g_cpu_support_x86_avx_vnni, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 17) i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL31g_cpu_support_x86_avx_vnni_int8, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 1025) i32 @_ZN4ncnn30cpu_support_x86_avx_vnni_int16Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL32g_cpu_support_x86_avx_vnni_int16, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 33) i32 @_ZN4ncnn30cpu_support_x86_avx_ne_convertEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL32g_cpu_support_x86_avx_ne_convert, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4ncnn22cpu_support_x86_avx512Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL24g_cpu_support_x86_avx512, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2049) i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL29g_cpu_support_x86_avx512_vnni, align 4, !tbaa !15
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 33) i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL30try_initialize_global_cpu_infov()
  %i.a = load i32, ptr @_ZL29g_cpu_support_x86_avx512_bf16, align 4, !tbaa !15
end_hunk_0
