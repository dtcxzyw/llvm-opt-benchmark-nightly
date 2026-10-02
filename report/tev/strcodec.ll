Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/strcodec?download=true
inline.NumInlined: 45
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@GetPosWS_File:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -102, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -101, 1) i64 @CreateWS_Memory(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #27 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @CloseWS_Memory, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @EOSWS_Memory, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ReadWS_Memory, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @WriteWS_Memory, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @SetPosWS_Memory, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @GetPosWS_Memory, ptr %i.h, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ -101, %bb.a ], [ 0, %bb.b ]
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @CloseWS_Memory(ptr nofree noundef captures(none) %0) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %WMPFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #28
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %WMPFree.exit

WMPFree.exit:                                     ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EOSWS_Memory(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp ule i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -103, 1) i64 @ReadWS_Memory(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, %2                         ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %i.b, %i.f
  %i.i = sub nuw i64 %i.b, %i.d
  %spec.select = select i1 %i.h, i64 %i.i, i64 %2 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.k, i64 %spec.select, i1 false)
  %i.l = load i64, ptr %i.c, align 8, !tbaa !54
  %i.m = add i64 %i.l, %spec.select
  store i64 %i.m, ptr %i.c, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.021 = phi i64 [ 0, %bb.a ], [ -103, %bb.b ], [ 0, %bb.c ]
  ret i64 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -103, 1) i64 @WriteWS_Memory(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !54
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.a, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ -103, %bb.a ], [ -103, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @SetPosWS_Memory(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, i64 noundef %1) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !54
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @GetPosWS_Memory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.b, ptr %1, align 8, !tbaa !56
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -101, 1) i64 @CreateWS_List(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4192) ptr @calloc(i64 noundef 1, i64 noundef 4192) #27 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.b, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4096, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @CloseWS_List, ptr %i.d, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ReadWS_List, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @WriteWS_List, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @SetPosWS_List, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @GetPosWS_List, ptr %i.h, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ -101, %bb.a ], [ 0, %bb.b ]
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i64 0, -9223372036854775808) i64 @CloseWS_List(ptr nofree noundef captures(none) %0) #18 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not1823 = icmp eq ptr %i.c, null
  br i1 %.not1823, label %.split14.thread, label %WMPFree.exit20

WMPFree.exit20:                                   ; preds = %bb.a, %WMPFree.exit20
  %.01124 = phi ptr [ %i.d, %WMPFree.exit20 ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.01124, align 8, !tbaa !46 ; 2 uses
  tail call void @free(ptr noundef nonnull %.01124) #28
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %.split14, label %WMPFree.exit20, !llvm.loop !100

.split14:                                         ; preds = %WMPFree.exit20
  %.pre = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %.not.i21 = icmp eq ptr %.pre, null
  br i1 %.not.i21, label %WMPFree.exit, label %.split14.thread

.split14.thread:                                  ; preds = %bb.a, %.split14
  %i.e = phi ptr [ %.pre, %.split14 ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.e) #28
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %WMPFree.exit

WMPFree.exit:                                     ; preds = %.split14.thread, %.split14
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -103, 1) i64 @ReadWS_List(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = xor i64 %i.b, -1
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = shl i64 %i.h, 12
  %i.j = add i64 %i.i, %i.b                       ; 2 uses
  %i.k = add i64 %i.j, %2
  %i.l = icmp ult i64 %i.f, %i.k
  %i.m = sub i64 %i.f, %i.j
  %.033 = select i1 %i.l, i64 %i.m, i64 %2        ; 2 uses
  %.not38 = icmp eq i64 %.033, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.n = phi i64 [ %i.ac, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.140 = phi i64 [ %i.u, %bb.d ], [ %.033, %bb.b ] ; 2 uses
  %.03439 = phi ptr [ %i.t, %bb.d ], [ %1, %bb.b ] ; 2 uses
  %i.o = sub i64 4096, %i.n
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.140) ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03439, ptr align 1 %i.q, i64 %spec.select, i1 false)
  %i.r = load i64, ptr %i.a, align 8, !tbaa !54
  %i.s = add i64 %i.r, %spec.select               ; 3 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %.03439, i64 %spec.select
  %i.u = sub nuw i64 %.140, %spec.select          ; 2 uses
  %i.v = icmp eq i64 %i.s, 4096
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %0, align 8, !tbaa !54
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %0, align 8, !tbaa !54
  store i64 0, ptr %i.a, align 8, !tbaa !54
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !54
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ac = phi i64 [ 0, %bb.c ], [ %i.s, %.lr.ph ]
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  %i.ad = phi i64 [ -103, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i64 %i.ad
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 -103, 1) i64 @WriteWS_List(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %.thread48, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not51 = icmp eq i64 %2, 0
  br i1 %.not51, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.i = phi i64 [ %i.b, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.04053 = phi i64 [ %2, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %.04152 = phi ptr [ %1, %.lr.ph ], [ %i.o, %bb.e ] ; 2 uses
  %i.j = sub i64 4096, %i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.04053) ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.04152, i64 %spec.select, i1 false)
  %i.m = load i64, ptr %i.a, align 8, !tbaa !54
  %i.n = add i64 %i.m, %spec.select               ; 3 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.04152, i64 %spec.select
  %i.p = sub nuw i64 %.04053, %spec.select        ; 2 uses
  %i.q = icmp eq i64 %i.n, 4096
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !54
  %i.s = tail call noalias dereferenceable_or_null(4104) ptr @calloc(i64 noundef 1, i64 noundef 4104) #27 ; 4 uses
  %.not.i.not = icmp eq ptr %i.s, null
  br i1 %.not.i.not, label %.thread48, label %select.unfold

select.unfold:                                    ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %0, align 8, !tbaa !54
  %i.v = load i64, ptr %i.e, align 8, !tbaa !54
  %i.w = add i64 %i.v, 4096
  store i64 %i.w, ptr %i.e, align 8, !tbaa !54
  store i64 0, ptr %i.s, align 1
  store i64 0, ptr %i.a, align 8, !tbaa !54
  %i.x = load i64, ptr %i.h, align 8, !tbaa !54
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.h, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %select.unfold, %bb.c
  %i.z = phi i64 [ 0, %select.unfold ], [ %i.n, %bb.c ]
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread48, label %bb.c

.thread48:                                        ; preds = %bb.e, %bb.d, %.preheader, %bb.a, %bb.b
  %.4 = phi i64 [ -103, %bb.b ], [ -103, %bb.a ], [ 0, %.preheader ], [ 0, %bb.e ], [ -101, %bb.d ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @SetPosWS_List(ptr noundef initializes((16, 32)) %0, i64 noundef %1) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp ugt i64 %1, 4095
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %bb.a ]
  %.01315 = phi i64 [ %i.f, %.lr.ph ], [ %1, %bb.a ]
  %storemerge14 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.e = load ptr, ptr %.016, align 8, !tbaa !46  ; 4 uses
  %i.f = add i64 %.01315, -4096                   ; 3 uses
  %i.g = add nuw nsw i64 %storemerge14, 1         ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !54
  %i.h = icmp ugt i64 %i.f, 4095
  %i.i = icmp ne ptr %i.e, null
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = icmp eq ptr %i.e, null
  br i1 %i.k, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa22 = phi ptr [ %i.e, %._crit_edge ], [ %i.a, %bb.a ]
  %.013.lcssa21 = phi i64 [ %i.f, %._crit_edge ], [ %1, %bb.a ]
  store i64 %.013.lcssa21, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.0.lcssa22, i64 8
  store ptr %i.l, ptr %0, align 8, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  ret i64 0
}

end_hunk_0
begin_hunk_1_@attachISRead:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.o = tail call i64 %i.m(ptr noundef %1, ptr noundef %i.n, i64 noundef 8192) #28 ; 0 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !75
  %i.q = add i64 %i.p, 8192
  store i64 %i.q, ptr %i.c, align 8, !tbaa !75
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !73
  %.0.copyload.i = load i32, ptr %i.r, align 1
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -8194, ptr %i.v, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.w, align 8, !tbaa !74
  ret i64 0
}

; Function Attrs: nounwind uwtable
define noundef i64 @detachISRead(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) initializes((4, 8)) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = add i32 %i.d, 7                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = lshr i32 %i.e, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = sext i32 %i.m to i64
  %i.o = and i64 %i.k, %i.n                       ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !34
  %i.q = and i32 %i.e, 8                          ; 3 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !33
  %.0.copyload.i.i.i = load i32, ptr %i.p, align 1
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i)
  %i.s = shl i32 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = xor i64 %i.o, %i.w
  %i.y = and i64 %i.x, 4096
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.readIS.exit_crit_edge, label %bb.b

.readIS.exit_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre16 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %readIS.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.ad = tail call i64 %i.aa(ptr noundef %i.b, i64 noundef %i.ac) #28, !inline_history !76 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ah = tail call i64 %i.af(ptr noundef %i.b, ptr noundef %i.ag, i64 noundef 4096) #28, !inline_history !76 ; 0 uses
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.aj = add i64 %i.ai, 4096                     ; 2 uses
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !75
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !73  ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  store i32 %i.al, ptr %1, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4096
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !37
  %i.ap = sext i32 %i.ao to i64
  %i.aq = and i64 %i.ap, %i.an
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !73
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !34
  %.pre15 = load i32, ptr %i.c, align 8, !tbaa !33
  br label %readIS.exit

readIS.exit:                                      ; preds = %.readIS.exit_crit_edge, %bb.b
  %i.as = phi i64 [ %.pre16, %.readIS.exit_crit_edge ], [ %i.aj, %bb.b ]
  %i.at = phi i32 [ %i.q, %.readIS.exit_crit_edge ], [ %.pre15, %bb.b ]
  %i.au = phi ptr [ %i.p, %.readIS.exit_crit_edge ], [ %.pre, %bb.b ]
  %i.av = phi ptr [ %i.v, %.readIS.exit_crit_edge ], [ %i.ar, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8192
  %i.ax = lshr i32 %i.at, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %.neg = sub i64 %i.as, %i.ba
  %i.be = add i64 %.neg, %i.bb
  %i.bf = tail call i64 %i.bd(ptr noundef %i.b, i64 noundef %i.be) #28 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !74
  ret i64 0
}

; Function Attrs: nounwind uwtable
define noundef i64 @attachISWrite(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call i64 %i.b(ptr noundef %1, ptr noundef nonnull %i.c) #28 ; 0 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -8193, ptr %i.j, align 4, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.k, align 8, !tbaa !74
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @detachISWrite(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = xor i64 %i.f, %i.c
  %i.h = and i64 %i.g, 4096
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call i64 %i.l(ptr noundef %i.j, ptr noundef %i.b, i64 noundef 4096) #28, !inline_history !78 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %writeIS.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4096
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %i.t = sext i32 %i.s to i64
  %i.u = and i64 %i.q, %i.t                       ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !73
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %i.u, %bb.c ]
  %i.w = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.c ]
  %i.x = phi ptr [ %i.b, %bb.a ], [ %i.v, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.ae = lshr i32 %i.ad, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.af
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %.pre-phi
  %i.aj = tail call i64 %i.ab(ptr noundef %i.z, ptr noundef %i.x, i64 noundef %i.ai) #28 ; 3 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %writeIS.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.y, align 8, !tbaa !74
  br label %writeIS.exit

writeIS.exit:                                     ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i64 [ %i.aj, %bb.e ], [ %i.aj, %bb.d ], [ %i.m, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"tagCWMImageInfo", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !4, i64 45, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !5, i64 80, !8, i64 88, !8, i64 96, !5, i64 104, !4, i64 108, !5, i64 112}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS9WMPStream", !10, i64 0}
!12 = !{!"tagCWMIStrCodecParam", !5, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !4, i64 13, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32, !4, i64 40, !5, i64 44, !4, i64 48, !11, i64 56, !8, i64 64, !5, i64 72, !4, i64 76, !5, i64 16460, !4, i64 16464, !4, i64 32848, !4, i64 32849, !5, i64 32852, !5, i64 32856, !5, i64 32860, !5, i64 32864, !5, i64 32868, !5, i64 32872}
!13 = !{!"tagCWMImageBufferInfo", !10, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !8, i64 32}
!14 = !{!"tagCWMIMBInfo", !4, i64 0, !5, i64 1024, !4, i64 1028, !4, i64 1092, !4, i64 1156, !4, i64 1157}
!15 = !{!"CWMImageStrCodecParameters", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !5, i64 88, !5, i64 92, !4, i64 96, !4, i64 112, !4, i64 128}
!16 = !{!"p1 _ZTS20CWMDecoderParameters", !10, i64 0}
!17 = !{!"p1 _ZTS12tagBitIOInfo", !10, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"p1 long", !10, i64 0}
!20 = !{!"p1 _ZTS8CWMITile", !10, i64 0}
!21 = !{!"any p2 pointer", !10, i64 0}
!22 = !{!"p2 _ZTS12tagBitIOInfo", !21, i64 0}
!23 = !{!"p1 _ZTS14CCodingContext", !10, i64 0}
!24 = !{!"p1 _ZTS15tagCWMIPredInfo", !10, i64 0}
!25 = !{!"p2 _ZTS9WMPStream", !21, i64 0}
!26 = !{!"p2 omnipotent char", !21, i64 0}
!27 = !{!"p1 _ZTS16CWMImageStrCodec", !10, i64 0}
!28 = !{!"CWMImageStrCodec", !8, i64 0, !9, i64 8, !12, i64 128, !13, i64 33008, !14, i64 33048, !15, i64 34208, !16, i64 34352, !4, i64 34360, !5, i64 34364, !5, i64 34368, !17, i64 34376, !5, i64 34384, !18, i64 34392, !18, i64 34400, !19, i64 34408, !8, i64 34416, !8, i64 34424, !5, i64 34432, !5, i64 34436, !5, i64 34440, !5, i64 34444, !20, i64 34448, !22, i64 34456, !8, i64 34464, !8, i64 34472, !23, i64 34480, !8, i64 34488, !8, i64 34496, !4, i64 34504, !8, i64 34512, !8, i64 34520, !8, i64 34528, !8, i64 34536, !8, i64 34544, !8, i64 34552, !8, i64 34560, !8, i64 34568, !8, i64 34576, !5, i64 34584, !5, i64 34588, !5, i64 34592, !5, i64 34596, !4, i64 34600, !4, i64 34616, !10, i64 34632, !10, i64 34640, !10, i64 34648, !10, i64 34656, !10, i64 34664, !10, i64 34672, !10, i64 34680, !10, i64 34688, !10, i64 34696, !10, i64 34704, !10, i64 34712, !10, i64 34720, !10, i64 34728, !4, i64 34736, !4, i64 34864, !4, i64 34992, !4, i64 35120, !4, i64 35248, !18, i64 35376, !18, i64 35384, !4, i64 35392, !4, i64 35520, !24, i64 35648, !25, i64 35656, !26, i64 35664, !27, i64 35672, !5, i64 35680, !4, i64 35688}
!29 = !{!5, !5, i64 0}
!30 = !{!"p1 omnipotent char", !10, i64 0}
!31 = !{!"tagBitIOInfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !30, i64 16, !30, i64 24, !11, i64 32, !8, i64 40}
!32 = !{!31, !5, i64 4}
!33 = !{!31, !5, i64 8}
!34 = !{!31, !30, i64 24}
!35 = !{!"short", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!31, !5, i64 12}
!38 = !{!28, !5, i64 200}
!39 = !{!28, !5, i64 16588}
!40 = !{!28, !27, i64 35672}
!41 = !{!28, !8, i64 34256}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.peeled.count", i32 1}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!10, !10, i64 0}
!47 = !{!"WMPStream", !4, i64 0, !5, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80}
!48 = !{!47, !10, i64 40}
!49 = !{!47, !10, i64 48}
!50 = !{!47, !10, i64 56}
!51 = !{!47, !10, i64 64}
!52 = !{!47, !10, i64 72}
!53 = !{!47, !10, i64 80}
!54 = !{!4, !4, i64 0}
!55 = !{!11, !11, i64 0}
!56 = !{!8, !8, i64 0}
!57 = !{!"tagSimpleBitIO", !11, i64 0, !5, i64 8, !4, i64 12, !5, i64 16}
!58 = !{!57, !11, i64 0}
!59 = !{!57, !5, i64 8}
!60 = !{!57, !4, i64 12}
!61 = !{!57, !5, i64 16}
!62 = !{!28, !5, i64 172}
!63 = !{!28, !4, i64 34360}
!64 = !{!28, !5, i64 156}
!65 = !{!28, !22, i64 34456}
!66 = !{!17, !17, i64 0}
!67 = !{!28, !8, i64 34464}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!28, !20, i64 34448}
!70 = !{!"p1 _ZTS16tagCWMIQuantizer", !10, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{i64 0, i64 1, !54, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29}
!73 = !{!31, !30, i64 16}
!74 = !{!31, !11, i64 32}
!75 = !{!31, !8, i64 40}
!76 = !{ptr @readIS}
!77 = !{!31, !5, i64 0}
!78 = !{ptr @writeIS}
!79 = !{!28, !5, i64 32992}
!80 = !{!28, !5, i64 28}
!81 = !{!28, !8, i64 33016}
!82 = !{!28, !8, i64 32}
!83 = !{!28, !8, i64 33024}
!84 = !{!28, !8, i64 34424}
!85 = !{!28, !8, i64 34416}
!86 = !{!28, !5, i64 34432}
!87 = !{!28, !5, i64 34436}
!88 = !{!28, !5, i64 34440}
!89 = !{!28, !5, i64 34444}
!90 = !{!28, !8, i64 34528}
!91 = distinct !{!91, !42, !43, !44, !45}
!92 = distinct !{!92, !42, !43, !45, !44}
!93 = distinct !{!93, !42}
!94 = !{!28, !5, i64 34224}
!95 = !{!18, !18, i64 0}
!96 = distinct !{!96, !42, !44, !45}
!97 = distinct !{!97, !42, !45, !44}
!98 = distinct !{!98, !42}
!99 = !{!24, !24, i64 0}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !42}
!103 = distinct !{!103, !42, !43}
!104 = distinct !{!104, !42, !44, !45}
!105 = distinct !{!105, !42, !45, !44}
!106 = !{!28, !5, i64 34240}
!107 = !{!28, !19, i64 34408}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !68}
!110 = distinct !{!110, !68}
!111 = !{!28, !23, i64 34480}
!112 = !{!"p1 _ZTS16CAdaptiveHuffman", !10, i64 0}
!113 = !{!"CAdaptiveModel", !4, i64 0, !4, i64 8, !5, i64 16}
!114 = !{!"CCBPModel", !4, i64 0, !4, i64 8, !4, i64 16}
!115 = !{!"CCodingContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !112, i64 32, !112, i64 40, !4, i64 48, !4, i64 216, !4, i64 344, !4, i64 472, !113, i64 600, !113, i64 620, !113, i64 640, !5, i64 660, !5, i64 664, !114, i64 668, !5, i64 692, !5, i64 696}
!116 = !{!115, !17, i64 0}
!117 = !{!115, !17, i64 8}
!118 = !{!115, !17, i64 16}
!119 = !{!115, !17, i64 24}
!120 = !{!28, !17, i64 34376}
!121 = distinct !{!121, !42}
!122 = distinct !{!122, !68}
!123 = distinct !{!123, !42}
!124 = distinct !{!124, !42}
!125 = distinct !{!125, !42}
!126 = !{!28, !5, i64 34300}
!127 = distinct !{!127, !42}
!128 = distinct !{!128, !68}
!129 = distinct !{!129, !42, !43}
!130 = distinct !{!130, !42, !43}
!131 = distinct !{!131, !42}
!132 = distinct !{!132, !42}
!133 = distinct !{!133, !68}
!134 = distinct !{!134, !42}
!135 = distinct !{!135, !68}
!136 = distinct !{!136, !68}
!137 = distinct !{!137, !42}
!138 = distinct !{!138, !42}
!139 = distinct !{!139, !42}
end_hunk_1
