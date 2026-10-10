Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fw_cfg?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fw_cfg_arch_key_name:bb.a

.loopexit:                                        ; preds = %bb.a, %switch.lookup
  %i.e = phi ptr [ %i.d, %switch.lookup ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fw_cfg_add_e820(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !annotation !7
  %i.b = call i32 @e820_get_table(ptr noundef nonnull %i.a) #7
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = sext i32 %i.b to i64
  %i.e = mul nsw i64 %i.d, 20
  call void @fw_cfg_add_file(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %i.c, i64 noundef %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @e820_get_table(ptr noundef) local_unnamed_addr #3

declare void @fw_cfg_add_file(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fw_cfg_build_smbios(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #7 ; 2 uses
  %i.h = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.i = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.h, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7 ; 2 uses
  %i.j = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.k = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.j, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.o, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 436
  %i.r = load i8, ptr %i.q, align 4, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @smbios_set_defaults(ptr noundef nonnull @.str.5, ptr noundef %i.u, ptr noundef %i.w) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !7
  store ptr null, ptr %i.b, align 8, !annotation !7
  store i64 0, ptr %i.c, align 8, !annotation !7
  store i64 0, ptr %i.d, align 8, !annotation !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 30200
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 30208
  %i.aa = load i64, ptr %i.z, align 16
  %i.ab = trunc i64 %i.aa to i32
  tail call void @smbios_set_cpuid(i32 noundef %i.y, i32 noundef %i.ab) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 437
  %i.ad = load i8, ptr %i.ac, align 1, !range !10, !noundef !11
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = call ptr @smbios_get_table_legacy(ptr noundef nonnull %i.c, ptr noundef nonnull @error_fatal) #7
  %i.ag = load i64, ptr %i.c, align 8
  call void @fw_cfg_add_bytes(ptr noundef %1, i16 noundef zeroext -32767, ptr noundef %i.af, i64 noundef %i.ag) #7
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ah = tail call i32 @e820_get_table(ptr noundef null) #7 ; 3 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ai, i64 noundef 16) #8 ; 3 uses
  %.not43 = icmp eq i32 %i.ah, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.03942 = phi i32 [ %.1, %bb.g ], [ 0, %bb.e ]  ; 3 uses
  %.04041 = phi i32 [ %i.ar, %bb.g ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i64 0, ptr %i.e, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i64 0, ptr %i.f, align 8, !annotation !7
  %i.ak = call zeroext i1 @e820_get_entry(i32 noundef %.04041, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #7
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.al = load i64, ptr %i.e, align 8
  %i.am = zext i32 %.03942 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.am ; 2 uses
  store i64 %i.al, ptr %i.an, align 8
  %i.ao = load i64, ptr %i.f, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = add i32 %.03942, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.1 = phi i32 [ %i.aq, %bb.f ], [ %.03942, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ar = add nuw i32 %.04041, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.039.lcssa = phi i32 [ 0, %bb.e ], [ %.1, %bb.g ]
  call void @smbios_get_tables(ptr noundef %i.g, i32 noundef %2, ptr noundef %i.aj, i32 noundef %.039.lcssa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @error_fatal) #7
  call void @g_free(ptr noundef %i.aj) #7
  %i.as = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = load i64, ptr %i.c, align 8
  call void @fw_cfg_add_file(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %i.at, i64 noundef %i.au) #7
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = load i64, ptr %i.d, align 8
  call void @fw_cfg_add_file(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %i.av, i64 noundef %i.aw) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @smbios_set_defaults(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @smbios_set_cpuid(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @smbios_get_table_legacy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fw_cfg_add_bytes(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @e820_get_entry(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @smbios_get_tables(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @fw_cfg_arch_create(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef %0) #7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.g, align 8              ; 5 uses
  %i.i = tail call ptr @fw_cfg_init_io_dma(i32 noundef 1296, ptr noundef nonnull @address_space_memory) #7 ; 8 uses
  tail call void @fw_cfg_add_i16(ptr noundef %i.i, i16 noundef zeroext 5, i16 noundef zeroext %1) #7
  tail call void @fw_cfg_add_i16(ptr noundef %i.i, i16 noundef zeroext 15, i16 noundef zeroext %2) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i64, ptr %i.j, align 8
  tail call void @fw_cfg_add_i64(ptr noundef %i.i, i16 noundef zeroext 3, i64 noundef %i.k) #7
  %i.l = tail call zeroext i1 @acpi_builtin() #7
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @acpi_tables, align 8
  %i.n = load i64, ptr @acpi_tables_len, align 8
  tail call void @fw_cfg_add_bytes(ptr noundef %i.i, i16 noundef zeroext -32768, ptr noundef %i.m, i64 noundef %i.n) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @fw_cfg_add_i32(ptr noundef %i.i, i16 noundef zeroext -32766, i32 noundef 1) #7
  tail call void @fw_cfg_add_bytes(ptr noundef %i.i, i16 noundef zeroext -32764, ptr noundef nonnull @hpet_fw_cfg, i64 noundef 121) #7
  %i.o = zext i16 %2 to i32                       ; 3 uses
  %i.p = add nuw nsw i32 %i.o, 1                  ; 6 uses
  %i.q = add i32 %i.h, %i.p
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = tail call noalias ptr @g_malloc0_n(i64 noundef %i.r, i64 noundef 8) #8 ; 9 uses
  %i.t = sext i32 %i.h to i64
  store i64 %i.t, ptr %i.s, align 8
  %i.u = load i32, ptr %i.e, align 8              ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = zext nneg i32 %i.u to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.f, %bb.c
  %i.y = icmp sgt i32 %i.h, 0
  br i1 %i.y, label %.lr.ph56, label %._crit_edge

.lr.ph56:                                         ; preds = %.preheader
  %i.z = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.h, 36
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph56
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = add i32 %i.p, %i.ac
  %i.ae = icmp sle i32 %i.ad, %i.o
  %i.af = icmp ugt i64 %i.ab, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %3 = mul nuw nsw i64 %wide.trip.count, 152
  %4 = getelementptr i8, ptr %i.z, i64 %3
  %5 = getelementptr i8, ptr %4, i64 -136
  %6 = zext i16 %2 to i64                         ; 2 uses
  %7 = shl nuw nsw i64 %6, 3
  %8 = getelementptr i8, ptr %i.s, i64 %7
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = add nuw nsw i64 %6, %wide.trip.count
  %11 = shl nuw nsw i64 %10, 3
  %12 = getelementptr i8, ptr %i.s, i64 %11
  %13 = getelementptr i8, ptr %12, i64 8
  %bound0 = icmp ult ptr %i.aa, %13
  %bound1 = icmp ult ptr %9, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %index
  %i.ai = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  %i.am = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 456
  %i.ao = load i64, ptr %i.ah, align 8, !alias.scope !18, !noalias !19
  %i.ap = load i64, ptr %i.aj, align 8, !alias.scope !18, !noalias !19
  %i.aq = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.ap, i64 1
  %i.as = load i64, ptr %i.al, align 8, !alias.scope !18, !noalias !19
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !18, !noalias !19
  %i.au = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.av = insertelement <2 x i64> %i.au, i64 %i.at, i64 1
  %i.aw = trunc i64 %index to i32
  %i.ax = add i32 %i.p, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %i.ar, ptr %i.az, align 8, !alias.scope !19
  store <2 x i64> %i.av, ptr %i.ba, align 8, !alias.scope !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph56, %middle.block
  %indvars.iv58.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph56 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bc = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %indvars.iv58.ph
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc nuw nsw i64 %indvars.iv58.ph to i32
  %i.bf = add nuw i32 %i.p, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bg
  store i64 %i.bd, ptr %i.bh, align 8
  %indvars.iv.next59.prol = or disjoint i64 %indvars.iv58.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv58.unr = phi i64 [ %indvars.iv58.ph, %scalar.ph.preheader ], [ %indvars.iv.next59.prol, %scalar.ph.prol ]
  %i.bi = add nsw i64 %wide.trip.count, -1
  %i.bj = icmp eq i64 %indvars.iv58.ph, %i.bi
  br i1 %i.bj, label %._crit_edge, label %scalar.ph

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [176 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp ult i32 %i.bm, %i.o
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.fw_cfg_arch_create) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bl, 1
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.br
  store i64 %i.bp, ptr %i.bs, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.bt, label %bb.d, label %.preheader, !llvm.loop !16

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv58 = phi i64 [ %indvars.iv.next59.1, %scalar.ph ], [ %indvars.iv58.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %indvars.iv58
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = trunc i64 %indvars.iv58 to i32
  %i.bx = add i32 %i.p, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.by
  store i64 %i.bv, ptr %i.bz, align 8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %indvars.iv.next59
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = trunc i64 %indvars.iv.next59 to i32
  %i.cd = add i32 %i.p, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ce
  store i64 %i.cb, ptr %i.cf, align 8
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next59.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.cg = shl nsw i64 %i.r, 3
  tail call void @fw_cfg_add_bytes(ptr noundef %i.i, i16 noundef zeroext 13, ptr noundef nonnull %i.s, i64 noundef %i.cg) #7
  ret ptr %i.i
}

declare ptr @fw_cfg_init_io_dma(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @fw_cfg_add_i16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare void @fw_cfg_add_i64(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @acpi_builtin() local_unnamed_addr #3

declare void @fw_cfg_add_i32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fw_cfg_build_feature_control(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.h, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16496 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !annotation !7
  call void @cpu_x86_cpuid(ptr noundef nonnull %i.j, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #7
  %i.k = load i32, ptr %i.c, align 4
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 4
  %spec.select = zext nneg i32 %i.m to i64        ; 2 uses
  %i.n = load i32, ptr %i.d, align 4
  %i.o = and i32 %i.n, 16512
  %i.p = icmp eq i32 %i.o, 16512
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 31600
  %i.r = load i64, ptr %i.q, align 16
  %i.s = lshr i64 %i.r, 7
  %i.t = and i64 %i.s, 1048576
  %spec.select31 = or disjoint i64 %i.t, %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select, %bb.a ], [ %spec.select31, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 30176
  %i.v = load i32, ptr %i.u, align 16
  %i.w = icmp ugt i32 %i.v, 6
  br i1 %i.w, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  call void @cpu_x86_cpuid(ptr noundef nonnull %i.j, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #7
  %i.x = load i32, ptr %i.b, align 4
  %i.y = shl i32 %i.x, 16
  %i.z = and i32 %i.y, 262144
  %i.aa = zext nneg i32 %i.z to i64
  %spec.select32 = or i64 %.1, %i.aa              ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = and i32 %i.ab, 1073741824
  %.not29 = icmp eq i32 %i.ac, 0
  %i.ad = or i64 %spec.select32, 131072
  br i1 %.not29, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.d, %bb.c
  %.3 = phi i64 [ %.1, %bb.c ], [ %spec.select32, %bb.d ] ; 2 uses
  %.not30 = icmp eq i64 %.3, 0
  br i1 %.not30, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %.336 = phi i64 [ %.3, %select.unfold ], [ %i.ad, %bb.d ]
  %i.ae = call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #10 ; 2 uses
  %i.af = or i64 %.336, 1
  store i64 %i.af, ptr %i.ae, align 8
  call void @fw_cfg_add_file(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ae, i64 noundef 8) #7
  br label %bb.e

bb.e:                                             ; preds = %select.unfold, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @cpu_x86_cpuid(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fw_cfg_add_acpi_dsdt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr (ptr, ...) @aml_device(ptr noundef nonnull @.str.11) #7 ; 4 uses
  %i.b = tail call ptr @aml_resource_template() #7 ; 2 uses
  %i.c = tail call zeroext i1 @fw_cfg_dma_enabled(ptr noundef %1) #7
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, i32 noundef 227, ptr noundef nonnull @__PRETTY_FUNCTION__.fw_cfg_add_acpi_dsdt) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.14) #7
  %i.e = tail call ptr @aml_name_decl(ptr noundef nonnull @.str.13, ptr noundef %i.d) #7
  tail call void @aml_append(ptr noundef %i.a, ptr noundef %i.e) #7
  %i.f = tail call ptr @aml_int(i64 noundef 11) #7
  %i.g = tail call ptr @aml_name_decl(ptr noundef nonnull @.str.15, ptr noundef %i.f) #7
  tail call void @aml_append(ptr noundef %i.a, ptr noundef %i.g) #7
  %i.h = tail call ptr @aml_io(i32 noundef 1, i16 noundef zeroext 1296, i16 noundef zeroext 1296, i8 noundef zeroext 1, i8 noundef zeroext 12) #7
  tail call void @aml_append(ptr noundef %i.b, ptr noundef %i.h) #7
  %i.i = tail call ptr @aml_name_decl(ptr noundef nonnull @.str.16, ptr noundef %i.b) #7
  tail call void @aml_append(ptr noundef %i.a, ptr noundef %i.i) #7
  tail call void @aml_append(ptr noundef %0, ptr noundef %i.a) #7
  ret void
}

declare ptr @aml_device(ptr noundef, ...) local_unnamed_addr #3

declare ptr @aml_resource_template() local_unnamed_addr #3

declare zeroext i1 @fw_cfg_dma_enabled(ptr noundef) local_unnamed_addr #3

declare void @aml_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @aml_name_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @aml_string(ptr noundef, ...) local_unnamed_addr #3

declare ptr @aml_int(i64 noundef) local_unnamed_addr #3

declare ptr @aml_io(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !8, !20, !21}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8, !20}
!18 = !{!13}
!19 = !{!14}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
