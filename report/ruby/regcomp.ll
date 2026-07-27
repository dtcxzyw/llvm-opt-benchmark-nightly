inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MinMaxLen = type { i64, i64 }
%struct.OptAncInfo = type { i32, i32 }
%struct.NodeOptInfo = type { %struct.MinMaxLen, %struct.OptAncInfo, %struct.OptExactInfo, %struct.OptExactInfo, %struct.OptExactInfo, %struct.OptMapInfo }
%struct.OptExactInfo = type { %struct.MinMaxLen, %struct.OptAncInfo, i32, i32, i32, [24 x i8] }
%struct.OptMapInfo = type { %struct.MinMaxLen, %struct.OptAncInfo, i32, [256 x i8] }
%struct.OptEnv = type { %struct.MinMaxLen, ptr, i32, i32, ptr }
%struct.ScanEnv = type { i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [8 x ptr], ptr, i32, i32, ptr, i32 }
%struct.UnsetAddrList = type { i32, i32, ptr }
%struct.StrNode = type { %struct.NodeBase, ptr, ptr, i32, i32, [24 x i8] }
%struct.NodeBase = type { i32 }
%struct.OnigCaseFoldCodeItem = type { i32, i32, [3 x i32] }

@OnigDefaultCaseFoldFlag = dso_local local_unnamed_addr global i32 1073741824, align 4
@onig_inited = internal unnamed_addr global i1 false, align 4
@EndCallTop = internal unnamed_addr global ptr null, align 8
@clear_opt_map_info.clean_info = internal constant { %struct.MinMaxLen, %struct.OptAncInfo, i32, [256 x i8], [4 x i8] } zeroinitializer, align 8
@distance_value.dist_vals = internal unnamed_addr constant [100 x i16] [i16 1000, i16 500, i16 333, i16 250, i16 200, i16 167, i16 143, i16 125, i16 111, i16 100, i16 91, i16 83, i16 77, i16 71, i16 67, i16 63, i16 59, i16 56, i16 53, i16 50, i16 48, i16 45, i16 43, i16 42, i16 40, i16 38, i16 37, i16 36, i16 34, i16 33, i16 32, i16 31, i16 30, i16 29, i16 29, i16 28, i16 27, i16 26, i16 26, i16 25, i16 24, i16 24, i16 23, i16 23, i16 22, i16 22, i16 21, i16 21, i16 20, i16 20, i16 20, i16 19, i16 19, i16 19, i16 18, i16 18, i16 18, i16 17, i16 17, i16 17, i16 16, i16 16, i16 16, i16 16, i16 15, i16 15, i16 15, i16 15, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 11, i16 10, i16 10, i16 10, i16 10, i16 10], align 16
@map_position_value.ByteValTable = internal unnamed_addr constant [128 x i16] [i16 5, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 10, i16 10, i16 1, i16 1, i16 10, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 12, i16 4, i16 7, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 5, i16 6, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 5, i16 5, i16 5, i16 5, i16 1], align 16
@switch.table.compile_length_tree = private unnamed_addr constant [3 x i8] c"\02\08\0C", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @onig_get_default_case_fold_flag() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @OnigDefaultCaseFoldFlag, align 4, !tbaa !7
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onig_set_default_case_fold_flag(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store i32 %0, ptr @OnigDefaultCaseFoldFlag, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local range(i32 -5, 1) i32 @onig_bbuf_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @malloc(i64 noundef %1) #21 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !15
  %i.f = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.08 = phi i32 [ 0, %bb.d ], [ -5, %bb.c ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @onig_free_body(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.c) #22
  %i.d = getelementptr i8, ptr %0, i64 408
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.e) #22
  %i.f = getelementptr i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.g) #22
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.i) #22
  %i.j = getelementptr i8, ptr %0, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %onig_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @onig_free_body(ptr noundef nonnull %i.k), !inline_history !28
  tail call void @free(ptr noundef nonnull %i.k) #22, !inline_history !28
  br label %onig_free.exit

onig_free.exit:                                   ; preds = %bb.b, %bb.c
  %i.l = tail call i32 @onig_names_free(ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %onig_free.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @onig_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @onig_free_body(ptr noundef nonnull %0)
  tail call void @free(ptr noundef nonnull %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @onig_names_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef range(i32 -5, 1) i32 @onig_reg_copy(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(456) ptr @malloc(i64 noundef 456) #21 ; 19 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.a, ptr noundef nonnull align 8 dereferenceable(456) %1, i64 456, i1 false), !tbaa.struct !30
  %i.c = getelementptr i8, ptr %i.a, i64 136      ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.a, i64 144      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #21 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.j, ptr noundef nonnull readonly align 1 %i.d, i64 noundef %i.i, i1 noundef false) #22
  store ptr %i.j, ptr %i.c, align 8, !tbaa !23
  %i.k = getelementptr i8, ptr %i.j, i64 %i.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %i.l = phi ptr [ %i.j, %.thread ], [ null, %bb.c ]
  %i.m = getelementptr i8, ptr %i.a, i64 408      ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %.not53 = icmp eq ptr %i.n, null
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #21 ; 4 uses
  %.not.i61 = icmp eq ptr %i.o, null
  br i1 %.not.i61, label %dup_copy.exit62.thread, label %dup_copy.exit62

dup_copy.exit62.thread:                           ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !24
  br label %bb.v

dup_copy.exit62:                                  ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(1024) %i.n, i64 noundef 1024, i1 noundef false) #22
  store ptr %i.o, ptr %i.m, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %dup_copy.exit62, %bb.e
  %i.p = phi ptr [ %i.o, %dup_copy.exit62 ], [ null, %bb.e ]
  %i.q = getelementptr i8, ptr %i.a, i64 416      ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %.not54 = icmp eq ptr %i.r, null
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #21 ; 4 uses
  %.not.i63 = icmp eq ptr %i.s, null
  br i1 %.not.i63, label %dup_copy.exit64.thread, label %dup_copy.exit64

dup_copy.exit64.thread:                           ; preds = %bb.h
  store ptr null, ptr %i.q, align 8, !tbaa !25
  br label %bb.u

dup_copy.exit64:                                  ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1024) %i.r, i64 noundef 1024, i1 noundef false) #22
  store ptr %i.s, ptr %i.q, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %dup_copy.exit64, %bb.g
  %i.t = phi ptr [ %i.s, %dup_copy.exit64 ], [ null, %bb.g ]
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not55 = icmp eq ptr %i.u, null
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.a, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 4 uses
  %.not.i65 = icmp eq ptr %i.y, null
  br i1 %.not.i65, label %dup_copy.exit66.thread, label %dup_copy.exit66

dup_copy.exit66.thread:                           ; preds = %bb.j
  store ptr null, ptr %i.a, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@compile_tree:bb.a
  %.pre28.i.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ak = phi i32 [ %i.aa, %._crit_edge.i.i ], [ %.pre28.i.i, %bb.g ]
  %i.al = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aj, %bb.g ]
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  store i8 62, ptr %i.an, align 1, !tbaa !35
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ab
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !111
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = phi i32 [ %i.ao, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ar = add i32 %i.aq, 4                        ; 4 uses
  %i.as = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.ar
  br i1 %i.at, label %.preheader.i10.i, label %._crit_edge.i8.i

._crit_edge.i8.i:                                 ; preds = %bb.j
  %.pre.i9.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.m

.preheader.i10.i:                                 ; preds = %bb.j, %.preheader.i10.i
  %i.au = phi i32 [ %i.av, %.preheader.i10.i ], [ %i.as, %bb.j ]
  %i.av = shl i32 %i.au, 1                        ; 4 uses
  %i.aw = icmp ult i32 %i.av, %i.ar
  br i1 %i.aw, label %.preheader.i10.i, label %bb.k, !llvm.loop !184

bb.k:                                             ; preds = %.preheader.i10.i
  store i32 %i.av, ptr %i.d, align 4, !tbaa !38
  %i.ax = load ptr, ptr %1, align 8, !tbaa !17
  %i.ay = zext i32 %i.av to i64
  %i.az = tail call ptr @realloc(ptr noundef %i.ax, i64 noundef %i.ay) #23 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.az, null
  br i1 %.not.i11.i, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.az, ptr %1, align 8, !tbaa !17
  %.pre29.i.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i8.i
  %i.ba = phi i32 [ %i.aq, %._crit_edge.i8.i ], [ %.pre29.i.i, %bb.l ]
  %i.bb = phi ptr [ %.pre.i9.i, %._crit_edge.i8.i ], [ %i.az, %bb.l ]
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc
  store i32 %i.z, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.c, align 8, !tbaa !111
  %i.bf = icmp ult i32 %i.be, %i.ar
  br i1 %i.bf, label %bb.n, label %add_opcode_rel_addr.exit.thread255

bb.n:                                             ; preds = %bb.m
  store i32 %i.ar, ptr %i.c, align 8, !tbaa !111
  br label %add_opcode_rel_addr.exit.thread255

add_opcode_rel_addr.exit.thread255:               ; preds = %bb.n, %bb.m, %bb.d
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.bh = tail call fastcc i32 @compile_tree(ptr noundef %i.bg, ptr noundef nonnull %1) ; 2 uses
  %.not160 = icmp eq i32 %i.bh, 0
  br i1 %.not160, label %bb.o, label %common.ret

bb.o:                                             ; preds = %add_opcode_rel_addr.exit.thread255
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not161 = icmp eq ptr %i.bi, null
  br i1 %.not161, label %common.ret, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !111 ; 3 uses
  %i.bk = sub i32 %i.t, %i.bj
  %i.bl = add i32 %i.bj, 1                        ; 5 uses
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.i.i176, label %._crit_edge.i.i167

._crit_edge.i.i167:                               ; preds = %bb.p
  %.pre.i.i168 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.s

.preheader.i.i176:                                ; preds = %bb.p, %.preheader.i.i176
  %i.bo = phi i32 [ %i.bp, %.preheader.i.i176 ], [ %i.bm, %bb.p ]
  %i.bp = shl i32 %i.bo, 1                        ; 4 uses
  %i.bq = icmp ult i32 %i.bp, %i.bl
  br i1 %i.bq, label %.preheader.i.i176, label %bb.q, !llvm.loop !183

bb.q:                                             ; preds = %.preheader.i.i176
  store i32 %i.bp, ptr %i.d, align 4, !tbaa !38
  %i.br = load ptr, ptr %1, align 8, !tbaa !17
  %i.bs = zext i32 %i.bp to i64
  %i.bt = tail call ptr @realloc(ptr noundef %i.br, i64 noundef %i.bs) #23 ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i177, label %common.ret, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bt, ptr %1, align 8, !tbaa !17
  %.pre28.i.i178 = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i167
  %i.bu = phi i32 [ %i.bj, %._crit_edge.i.i167 ], [ %.pre28.i.i178, %bb.r ]
  %i.bv = phi ptr [ %.pre.i.i168, %._crit_edge.i.i167 ], [ %i.bt, %bb.r ]
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.bw
  store i8 61, ptr %i.bx, align 1, !tbaa !35
  %i.by = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.bz = icmp ult i32 %i.by, %i.bl
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bl, ptr %i.c, align 8, !tbaa !111
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ca = phi i32 [ %i.by, %bb.s ], [ %i.bl, %bb.t ] ; 2 uses
  %i.cb = add i32 %i.ca, 4                        ; 4 uses
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.cb
  br i1 %i.cd, label %.preheader.i10.i173, label %._crit_edge.i8.i169

._crit_edge.i8.i169:                              ; preds = %bb.u
  %.pre.i9.i170 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.x

.preheader.i10.i173:                              ; preds = %bb.u, %.preheader.i10.i173
  %i.ce = phi i32 [ %i.cf, %.preheader.i10.i173 ], [ %i.cc, %bb.u ]
  %i.cf = shl i32 %i.ce, 1                        ; 4 uses
  %i.cg = icmp ult i32 %i.cf, %i.cb
  br i1 %i.cg, label %.preheader.i10.i173, label %bb.v, !llvm.loop !184

bb.v:                                             ; preds = %.preheader.i10.i173
  store i32 %i.cf, ptr %i.d, align 4, !tbaa !38
  %i.ch = load ptr, ptr %1, align 8, !tbaa !17
  %i.ci = zext i32 %i.cf to i64
  %i.cj = tail call ptr @realloc(ptr noundef %i.ch, i64 noundef %i.ci) #23 ; 3 uses
  %.not.i11.i174 = icmp eq ptr %i.cj, null
  br i1 %.not.i11.i174, label %common.ret, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.cj, ptr %1, align 8, !tbaa !17
  %.pre29.i.i175 = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i8.i169
  %i.ck = phi i32 [ %i.ca, %._crit_edge.i8.i169 ], [ %.pre29.i.i175, %bb.w ]
  %i.cl = phi ptr [ %.pre.i9.i170, %._crit_edge.i8.i169 ], [ %i.cj, %bb.w ]
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  store i32 %i.bk, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.c, align 8, !tbaa !111
  %i.cp = icmp ult i32 %i.co, %i.cb
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.cb, ptr %i.c, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !35   ; 2 uses
  %.not163 = icmp eq ptr %.pr, null
  br i1 %.not163, label %common.ret, label %bb.d, !llvm.loop !185

bb.aa:                                            ; preds = %tailrecurse
  %i.cq = getelementptr i8, ptr %.tr, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !35
  %.fr.i = freeze i32 %i.cr                       ; 2 uses
  %i.cs = and i32 %.fr.i, 1
  %.not155 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr i8, ptr %.tr, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !152 ; 10 uses
  br i1 %.not155, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !150 ; 3 uses
  %.not.i = icmp ugt ptr %i.cu, %.val
  br i1 %.not.i, label %bb.ac, label %common.ret

bb.ac:                                            ; preds = %bb.ab
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %.val to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call fastcc void @add_compile_string(ptr noundef %.val, i32 noundef 1, i64 noundef %i.cy, ptr noundef %1, i32 noundef 0)
  br label %common.ret

bb.ad:                                            ; preds = %bb.aa
  %i.cz = getelementptr i8, ptr %1, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !75 ; 5 uses
  %i.db = getelementptr i8, ptr %.tr, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !150 ; 7 uses
  %.not.i180 = icmp ugt ptr %i.cu, %i.dc
  br i1 %.not.i180, label %bb.ae, label %common.ret

bb.ae:                                            ; preds = %bb.ad
  %i.dd = and i32 %.fr.i, 2                       ; 2 uses
  %.not75.i = icmp eq i32 %i.dd, 0
  %.lobit.i = lshr exact i32 %i.dd, 1
  %i.de = getelementptr i8, ptr %i.da, i64 16     ; 4 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !155 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.da, i64 20     ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !156
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = tail call i32 @onigenc_mbclen(ptr noundef %i.dc, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.da) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dk = phi i32 [ %i.dj, %bb.af ], [ %i.df, %bb.ae ] ; 9 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.dc, i64 %i.dl  ; 4 uses
  %i.dn = icmp ult ptr %i.dm, %i.cu
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ag
  br i1 %.not75.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.do = load i32, ptr %i.de, align 8, !tbaa !155 ; 3 uses
  %i.dp = load i32, ptr %i.dg, align 4, !tbaa !156
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  %i.dr = sext i32 %i.do to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.split.us.split.us.i
  %.05464.us.us.i = phi ptr [ %i.dm, %.lr.ph.split.us.split.us.i ], [ %i.dt, %bb.ah ]
  %.05563.us.us.i = phi i32 [ %i.dk, %.lr.ph.split.us.split.us.i ], [ %i.ds, %bb.ah ]
  %i.ds = add i32 %.05563.us.us.i, %i.do          ; 2 uses
  %i.dt = getelementptr i8, ptr %.05464.us.us.i, i64 %i.dr ; 2 uses
  %i.du = icmp ult ptr %i.dt, %i.cu
  br i1 %i.du, label %bb.ah, label %._crit_edge.i, !llvm.loop !186

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %bb.aj
  %.05464.us.i = phi ptr [ %i.ec, %bb.aj ], [ %i.dm, %.lr.ph.split.us.i ] ; 2 uses
  %.05563.us.i = phi i32 [ %i.ea, %bb.aj ], [ %i.dk, %.lr.ph.split.us.i ]
  %i.dv = load i32, ptr %i.de, align 8, !tbaa !155 ; 2 uses
  %i.dw = load i32, ptr %i.dg, align 4, !tbaa !156
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us.split.i
  %i.dy = tail call i32 @onigenc_mbclen(ptr noundef %.05464.us.i, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.da) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.split.us.split.i
  %i.dz = phi i32 [ %i.dy, %bb.ai ], [ %i.dv, %.lr.ph.split.us.split.i ] ; 2 uses
  %i.ea = add i32 %i.dz, %.05563.us.i             ; 2 uses
  %i.eb = sext i32 %i.dz to i64
  %i.ec = getelementptr i8, ptr %.05464.us.i, i64 %i.eb ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.cu
  br i1 %i.ed, label %.lr.ph.split.us.split.i, label %._crit_edge.i, !llvm.loop !187

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ao
  %.05166.i = phi i32 [ %.1.i, %bb.ao ], [ %i.dk, %.lr.ph.i ] ; 4 uses
  %.05265.i = phi ptr [ %.153.i, %bb.ao ], [ %i.dc, %.lr.ph.i ] ; 2 uses
  %.05464.i = phi ptr [ %i.en, %bb.ao ], [ %i.dm, %.lr.ph.i ] ; 3 uses
  %.05563.i = phi i32 [ %.156.i, %bb.ao ], [ %i.dk, %.lr.ph.i ] ; 2 uses
  %i.ee = load i32, ptr %i.de, align 8, !tbaa !155 ; 2 uses
  %i.ef = load i32, ptr %i.dg, align 4, !tbaa !156
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.i
  %i.eh = tail call i32 @onigenc_mbclen(ptr noundef %.05464.i, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.da) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.split.i
  %i.ei = phi i32 [ %i.eh, %bb.ak ], [ %i.ee, %.lr.ph.split.i ] ; 4 uses
  %i.ej = icmp eq i32 %i.ei, %.05166.i
  br i1 %i.ej, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ek = add i32 %.05563.i, %.05166.i
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.el = sext i32 %.05563.i to i64
  tail call fastcc void @add_compile_string(ptr noundef %.05265.i, i32 noundef %.05166.i, i64 noundef %i.el, ptr noundef %1, i32 noundef 0)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.156.i = phi i32 [ %i.ek, %bb.am ], [ %i.ei, %bb.an ] ; 2 uses
  %.153.i = phi ptr [ %.05265.i, %bb.am ], [ %.05464.i, %bb.an ] ; 2 uses
  %.1.i = phi i32 [ %.05166.i, %bb.am ], [ %i.ei, %bb.an ] ; 2 uses
  %i.em = sext i32 %i.ei to i64
  %i.en = getelementptr i8, ptr %.05464.i, i64 %i.em ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.cu
  br i1 %i.eo, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !186

._crit_edge.i:                                    ; preds = %bb.aj, %bb.ah, %bb.ao, %bb.ag
  %.055.lcssa.i = phi i32 [ %i.dk, %bb.ag ], [ %.156.i, %bb.ao ], [ %i.ds, %bb.ah ], [ %i.ea, %bb.aj ]
  %.052.lcssa.i = phi ptr [ %i.dc, %bb.ag ], [ %.153.i, %bb.ao ], [ %i.dc, %bb.ah ], [ %i.dc, %bb.aj ]
  %.051.lcssa.i = phi i32 [ %i.dk, %bb.ag ], [ %.1.i, %bb.ao ], [ %i.dk, %bb.ah ], [ %i.dk, %bb.aj ]
  %i.ep = sext i32 %.055.lcssa.i to i64
  tail call fastcc void @add_compile_string(ptr noundef %.052.lcssa.i, i32 noundef %.051.lcssa.i, i64 noundef %i.ep, ptr noundef %1, i32 noundef %.lobit.i)
  br label %common.ret

bb.ap:                                            ; preds = %tailrecurse
  %i.eq = getelementptr i8, ptr %.tr, i64 40      ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !189
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr i8, ptr %.tr, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !192
  %i.ev = and i32 %i.eu, 1
  %.not28.i = icmp eq i32 %i.ev, 0
  %i.ew = load i32, ptr %i.c, align 8, !tbaa !111 ; 3 uses
  %i.ex = add i32 %i.ew, 1                        ; 7 uses
  %i.ey = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.ez = icmp ult i32 %i.ey, %i.ex               ; 2 uses
  br i1 %.not28.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ez, label %.preheader.i.i183, label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %bb.ar
  %.pre.i.i182 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.au

.preheader.i.i183:                                ; preds = %bb.ar, %.preheader.i.i183
  %i.fa = phi i32 [ %i.fb, %.preheader.i.i183 ], [ %i.ey, %bb.ar ]
  %i.fb = shl i32 %i.fa, 1                        ; 4 uses
  %i.fc = icmp ult i32 %i.fb, %i.ex
  br i1 %i.fc, label %.preheader.i.i183, label %bb.as, !llvm.loop !183

bb.as:                                            ; preds = %.preheader.i.i183
  store i32 %i.fb, ptr %i.d, align 4, !tbaa !38
  %i.fd = load ptr, ptr %1, align 8, !tbaa !17
  %i.fe = zext i32 %i.fb to i64
  %i.ff = tail call ptr @realloc(ptr noundef %i.fd, i64 noundef %i.fe) #23 ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ff, null
  %.pre503 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i.i184, label %add_opcode.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.ff, ptr %1, align 8, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i181
  %i.fg = phi i32 [ %i.ew, %._crit_edge.i.i181 ], [ %.pre503, %bb.at ]
  %i.fh = phi ptr [ %.pre.i.i182, %._crit_edge.i.i181 ], [ %i.ff, %bb.at ]
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr i8, ptr %i.fh, i64 %i.fi
  store i8 19, ptr %i.fj, align 1, !tbaa !35
  %i.fk = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.fl = icmp ult i32 %i.fk, %i.ex
  br i1 %i.fl, label %add_opcode.exit.sink.split.i, label %add_opcode.exit.i

bb.av:                                            ; preds = %bb.aq
  br i1 %i.ez, label %.preheader.i31.i, label %._crit_edge.i29.i

._crit_edge.i29.i:                                ; preds = %bb.av
  %.pre.i30.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.ay

.preheader.i31.i:                                 ; preds = %bb.av, %.preheader.i31.i
  %i.fm = phi i32 [ %i.fn, %.preheader.i31.i ], [ %i.ey, %bb.av ]
  %i.fn = shl i32 %i.fm, 1                        ; 4 uses
  %i.fo = icmp ult i32 %i.fn, %i.ex
  br i1 %i.fo, label %.preheader.i31.i, label %bb.aw, !llvm.loop !183

bb.aw:                                            ; preds = %.preheader.i31.i
  store i32 %i.fn, ptr %i.d, align 4, !tbaa !38
  %i.fp = load ptr, ptr %1, align 8, !tbaa !17
  %i.fq = zext i32 %i.fn to i64
  %i.fr = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.fq) #23 ; 3 uses
  %.not.i32.i = icmp eq ptr %i.fr, null
  %.pre502 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i32.i, label %add_opcode.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.fr, ptr %1, align 8, !tbaa !17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i29.i
  %i.fs = phi i32 [ %i.ew, %._crit_edge.i29.i ], [ %.pre502, %bb.ax ]
  %i.ft = phi ptr [ %.pre.i30.i, %._crit_edge.i29.i ], [ %i.fr, %bb.ax ]
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr i8, ptr %i.ft, i64 %i.fu
  store i8 16, ptr %i.fv, align 1, !tbaa !35
  %i.fw = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.ex
  br i1 %i.fx, label %add_opcode.exit.sink.split.i, label %add_opcode.exit.i

add_opcode.exit.sink.split.i:                     ; preds = %bb.ay, %bb.au
  store i32 %i.ex, ptr %i.c, align 8, !tbaa !111
  br label %add_opcode.exit.i

add_opcode.exit.i:                                ; preds = %add_opcode.exit.sink.split.i, %bb.ay, %bb.aw, %bb.au, %bb.as
  %i.fy = phi i32 [ %i.ex, %add_opcode.exit.sink.split.i ], [ %i.fw, %bb.ay ], [ %.pre502, %bb.aw ], [ %i.fk, %bb.au ], [ %.pre503, %bb.as ] ; 2 uses
  %i.fz = getelementptr i8, ptr %.tr, i64 8
  %i.ga = add i32 %i.fy, 32                       ; 4 uses
  %i.gb = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.gc = icmp ult i32 %i.gb, %i.ga
  br i1 %i.gc, label %.preheader.i37.i, label %._crit_edge.i35.i

._crit_edge.i35.i:                                ; preds = %add_opcode.exit.i
  %.pre.i36.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.bb

.preheader.i37.i:                                 ; preds = %add_opcode.exit.i, %.preheader.i37.i
  %i.gd = phi i32 [ %i.ge, %.preheader.i37.i ], [ %i.gb, %add_opcode.exit.i ]
  %i.ge = shl i32 %i.gd, 1                        ; 4 uses
  %i.gf = icmp ult i32 %i.ge, %i.ga
  br i1 %i.gf, label %.preheader.i37.i, label %bb.az, !llvm.loop !193

bb.az:                                            ; preds = %.preheader.i37.i
  store i32 %i.ge, ptr %i.d, align 4, !tbaa !38
  %i.gg = load ptr, ptr %1, align 8, !tbaa !17
  %i.gh = zext i32 %i.ge to i64
  %i.gi = tail call ptr @realloc(ptr noundef %i.gg, i64 noundef %i.gh) #23 ; 3 uses
  %.not.i38.i = icmp eq ptr %i.gi, null
  br i1 %.not.i38.i, label %common.ret, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.gi, ptr %1, align 8, !tbaa !17
  %.pre28.i39.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i35.i
  %i.gj = phi i32 [ %i.fy, %._crit_edge.i35.i ], [ %.pre28.i39.i, %bb.ba ]
  %i.gk = phi ptr [ %.pre.i36.i, %._crit_edge.i35.i ], [ %i.gi, %bb.ba ]
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gm, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.fz, i64 noundef 32, i1 noundef false) #22
  %i.gn = load i32, ptr %i.c, align 8, !tbaa !111
  %i.go = icmp ult i32 %i.gn, %i.ga
  br i1 %i.go, label %bb.bc, label %common.ret

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.ga, ptr %i.c, align 8, !tbaa !111
  br label %common.ret

bb.bd:                                            ; preds = %bb.ap
  %i.gp = getelementptr i8, ptr %1, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !75
  %i.gr = getelementptr i8, ptr %i.gq, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !156
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !7
  %.not.i40.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i40.i, label %bb.bf, label %bitset_is_empty.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.gw = getelementptr i8, ptr %.tr, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !7
  %.not.1.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.1.i.i, label %bb.bg, label %bitset_is_empty.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.gy = getelementptr i8, ptr %.tr, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !7
  %.not.2.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not.2.i.i, label %bb.bh, label %bitset_is_empty.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ha = getelementptr i8, ptr %.tr, i64 20
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7
  %.not.3.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.3.i.i, label %bb.bi, label %bitset_is_empty.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.hc = getelementptr i8, ptr %.tr, i64 24
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !7
  %.not.4.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not.4.i.i, label %bb.bj, label %bitset_is_empty.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr i8, ptr %.tr, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %.not.5.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.5.i.i, label %bb.bk, label %bitset_is_empty.exit.thread.i
end_hunk_1
begin_hunk_2_@set_bm_skip:bb.a
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge11.us, label %bb.p, !llvm.loop !313

._crit_edge11.us:                                 ; preds = %bb.p
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge15, label %.lr.ph10.us, !llvm.loop !314

.lr.ph14.split:                                   ; preds = %.lr.ph14.split, %.lr.ph14.split.preheader.new
  %indvars.iv25 = phi i64 [ 0, %.lr.ph14.split.preheader.new ], [ %indvars.iv.next26.3, %.lr.ph14.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph14.split.preheader.new ], [ %niter.next.3, %.lr.ph14.split ]
  %i.ce = sub i64 %.neg1, %indvars.iv25
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr i8, ptr %i.aw, i64 %indvars.iv25
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr i8, ptr %3, i64 %i.ci
  store i8 %i.cf, ptr %i.cj, align 1, !tbaa !35
  %indvars.iv.next26 = or disjoint i64 %indvars.iv25, 1 ; 2 uses
  %i.ck = sub i64 %.neg1, %indvars.iv.next26
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr i8, ptr %i.aw, i64 %indvars.iv.next26
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !35
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr i8, ptr %3, i64 %i.co
  store i8 %i.cl, ptr %i.cp, align 1, !tbaa !35
  %indvars.iv.next26.1 = or disjoint i64 %indvars.iv25, 2 ; 2 uses
  %i.cq = sub i64 %.neg1, %indvars.iv.next26.1
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr i8, ptr %i.aw, i64 %indvars.iv.next26.1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !35
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr i8, ptr %3, i64 %i.cu
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !35
  %indvars.iv.next26.2 = or disjoint i64 %indvars.iv25, 3 ; 2 uses
  %i.cw = sub i64 %.neg1, %indvars.iv.next26.2
  %i.cx = trunc i64 %i.cw to i8
  %i.cy = getelementptr i8, ptr %i.aw, i64 %indvars.iv.next26.2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr i8, ptr %3, i64 %i.da
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !35
  %indvars.iv.next26.3 = add nuw nsw i64 %indvars.iv25, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge15.loopexit61.unr-lcssa, label %.lr.ph14.split, !llvm.loop !314

._crit_edge15.loopexit61.unr-lcssa:               ; preds = %.lr.ph14.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge15, label %.lr.ph14.split.epil.preheader

.lr.ph14.split.epil.preheader:                    ; preds = %._crit_edge15.loopexit61.unr-lcssa, %.lr.ph14.split.preheader
  %indvars.iv25.epil.init = phi i64 [ 0, %.lr.ph14.split.preheader ], [ %indvars.iv.next26.3, %._crit_edge15.loopexit61.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph14.split.epil

.lr.ph14.split.epil:                              ; preds = %.lr.ph14.split.epil, %.lr.ph14.split.epil.preheader
  %indvars.iv25.epil = phi i64 [ %indvars.iv.next26.epil, %.lr.ph14.split.epil ], [ %indvars.iv25.epil.init, %.lr.ph14.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph14.split.epil ], [ 0, %.lr.ph14.split.epil.preheader ]
  %i.dc = sub i64 %.neg1, %indvars.iv25.epil
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr i8, ptr %i.aw, i64 %indvars.iv25.epil
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %3, i64 %i.dg
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !35
  %indvars.iv.next26.epil = add nuw nsw i64 %indvars.iv25.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge15, label %.lr.ph14.split.epil, !llvm.loop !315

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit61.unr-lcssa, %.lr.ph14.split.epil, %._crit_edge11.us, %bb.o
  %i.di = sext i32 %.1102 to i64
  %i.dj = add i64 %.216, %i.di                    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.pre-phi40
  br i1 %i.dk, label %bb.j, label %._crit_edge19, !llvm.loop !317

._crit_edge19:                                    ; preds = %._crit_edge15, %.loopexit
  %i.dl = trunc i64 %.pre-phi40 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %._crit_edge19
  %.0 = phi i32 [ %i.dl, %._crit_edge19 ], [ -6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @compile_length_tree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !35
  switch i32 %i.a, label %common.ret181 [
    i32 8, label %.preheader
    i32 9, label %.preheader82
    i32 0, label %bb.e
    i32 1, label %bb.ab
    i32 2, label %compile_length_string_raw_node.exit
    i32 3, label %compile_length_string_raw_node.exit
    i32 4, label %bb.al
    i32 10, label %bb.ar
    i32 5, label %bb.as
    i32 6, label %bb.bm
    i32 7, label %bb.cf
  ]

.preheader:                                       ; preds = %bb.a, %bb.b
  %.049 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.047 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.b = getelementptr i8, ptr %.047, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @compile_length_tree(ptr noundef %i.c, ptr noundef %1) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %common.ret181, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = add i32 %i.d, %.049                      ; 2 uses
  %i.g = getelementptr i8, ptr %.047, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not60 = icmp eq ptr %i.h, null
  br i1 %.not60, label %common.ret181, label %.preheader, !llvm.loop !318

.preheader82:                                     ; preds = %bb.a, %bb.c
  %.150 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ]
  %.148 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.a ]  ; 2 uses
  %.043 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %i.i = getelementptr i8, ptr %.148, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = tail call fastcc i32 @compile_length_tree(ptr noundef %i.j, ptr noundef %1) ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %common.ret181

bb.c:                                             ; preds = %.preheader82
  %i.m = add i32 %i.k, %.150                      ; 2 uses
  %i.n = add i32 %.043, 1
  %i.o = getelementptr i8, ptr %.148, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %.not59 = icmp eq ptr %i.p, null
  br i1 %.not59, label %bb.d, label %.preheader82, !llvm.loop !319

bb.d:                                             ; preds = %bb.c
  %i.q = mul i32 %.043, 10
  %i.r = add i32 %i.m, %i.q
  br label %common.ret181

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35
  %.fr.i = freeze i32 %i.t                        ; 2 uses
  %i.u = and i32 %.fr.i, 1
  %.not58 = icmp eq i32 %i.u, 0
  %i.v = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 5 uses
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.x, align 8, !tbaa !150 ; 2 uses
  %.not.i = icmp ugt ptr %i.w, %.val
  br i1 %.not.i, label %add_compile_string_length.exit.i, label %common.ret181

add_compile_string_length.exit.i:                 ; preds = %bb.f
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %.val to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, -6
  %i.ac = icmp ult i64 %i.ab, -5
  %.1.i.i = select i1 %i.ac, i32 5, i32 1
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = add i32 %.1.i.i, %i.ad
  br label %common.ret181

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %1, i64 72
  %.val62 = load ptr, ptr %i.af, align 8, !tbaa !75 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !150 ; 3 uses
  %.not.i63 = icmp ugt ptr %i.w, %i.ah
  br i1 %.not.i63, label %bb.h, label %common.ret181

bb.h:                                             ; preds = %bb.g
  %i.ai = and i32 %.fr.i, 2
  %.not26.i = icmp eq i32 %i.ai, 0                ; 2 uses
  %i.aj = getelementptr i8, ptr %.val62, i64 16   ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.al = getelementptr i8, ptr %.val62, i64 20   ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !156
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call i32 @onigenc_mbclen(ptr noundef %i.ah, ptr noundef nonnull %i.w, ptr noundef nonnull %.val62) #22
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !152
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = phi ptr [ %.pre.i, %bb.i ], [ %i.w, %bb.h ] ; 6 uses
  %i.aq = phi i32 [ %i.ao, %bb.i ], [ %i.ak, %bb.h ] ; 12 uses
  %i.ar = sext i32 %i.aq to i64                   ; 5 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 5 uses
  %i.at = icmp ult ptr %i.as, %i.ap
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.au = load i32, ptr %i.aj, align 8, !tbaa !155 ; 8 uses
  %i.av = load i32, ptr %i.al, align 4, !tbaa !156
  %i.aw = icmp eq i32 %i.au, %i.av                ; 2 uses
  br i1 %.not26.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.aw, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  %i.ax = sext i32 %i.au to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.split.us.split.us.i
  %.0544.us.us.i = phi ptr [ %i.as, %.lr.ph.split.us.split.us.i ], [ %i.az, %bb.k ]
  %.0572.us.us.i = phi i32 [ %i.aq, %.lr.ph.split.us.split.us.i ], [ %i.ay, %bb.k ]
  %i.ay = add i32 %.0572.us.us.i, %i.au           ; 3 uses
  %i.az = getelementptr i8, ptr %.0544.us.us.i, i64 %i.ax ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.ap
  br i1 %i.ba, label %bb.k, label %._crit_edge.thread.i, !llvm.loop !320

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.bb = sext i32 %i.ay to i64
  %i.bc = add nsw i64 %i.ar, -1
  %i.bd = add nsw i64 %i.bc, %i.bb
  %i.be = udiv i64 %i.bd, %i.ar
  br label %bb.x

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %bb.m
  %i.bf = phi ptr [ %i.bk, %bb.m ], [ %i.ap, %.lr.ph.split.us.i ] ; 2 uses
  %.0544.us.i = phi ptr [ %i.bo, %bb.m ], [ %i.as, %.lr.ph.split.us.i ] ; 2 uses
  %.0572.us.i = phi i32 [ %i.bm, %bb.m ], [ %i.aq, %.lr.ph.split.us.i ]
  %i.bg = load i32, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.bh = load i32, ptr %i.al, align 4, !tbaa !156
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.split.i
  %i.bj = tail call i32 @onigenc_mbclen(ptr noundef %.0544.us.i, ptr noundef nonnull %i.bf, ptr noundef nonnull %.val62) #22
  %.pre31.i = load ptr, ptr %i.v, align 8, !tbaa !152
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.split.i
  %i.bk = phi ptr [ %.pre31.i, %bb.l ], [ %i.bf, %.lr.ph.split.us.split.i ] ; 2 uses
  %i.bl = phi i32 [ %i.bj, %bb.l ], [ %i.bg, %.lr.ph.split.us.split.i ] ; 2 uses
  %i.bm = add i32 %i.bl, %.0572.us.i              ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr i8, ptr %.0544.us.i, i64 %i.bn ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.bk
  br i1 %i.bp, label %.lr.ph.split.us.split.i, label %._crit_edge.i, !llvm.loop !321

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.aw, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bq = sext i32 %i.au to i64                   ; 4 uses
  %i.br = icmp eq i32 %i.au, %i.aq
  br i1 %i.br, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.us.i
  %switch.tableidx = add i32 %i.aq, -1            ; 2 uses
  %i.bs = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bs, label %switch.lookup.i.i.us.i.peel, label %add_compile_string_length.exit.us.i.peel

switch.lookup.i.i.us.i.peel:                      ; preds = %bb.n
  %2 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.compile_length_tree, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %add_compile_string_length.exit.us.i.peel

add_compile_string_length.exit.us.i.peel:         ; preds = %switch.lookup.i.i.us.i.peel, %bb.n
  %.0.i3.i.us.i.peel = phi i32 [ 13, %bb.n ], [ %switch.ext, %switch.lookup.i.i.us.i.peel ] ; 2 uses
  %3 = phi i32 [ 5, %bb.n ], [ 1, %switch.lookup.i.i.us.i.peel ] ; 2 uses
  %i.bt = add nsw i32 %.0.i3.i.us.i.peel, -11
  %i.bu = icmp ult i32 %i.bt, 3
  %i.bv = and i32 %.0.i3.i.us.i.peel, 7
  %i.bw = icmp eq i32 %i.bv, 7
  %or.cond7.i.us.i.peel = or i1 %i.bw, %i.bu
  %i.bx = add nuw nsw i32 %3, 4
  %.1.i.us.i.peel = select i1 %or.cond7.i.us.i.peel, i32 %i.bx, i32 %3
  %i.by = add i32 %i.aq, %.1.i.us.i.peel
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.split.us.i
  %i.bz = shl i32 %i.aq, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %add_compile_string_length.exit.us.i.peel
  %.158.us14.i.peel = phi i32 [ %i.bz, %bb.o ], [ %i.au, %add_compile_string_length.exit.us.i.peel ] ; 2 uses
  %.156.us15.i.peel = phi i32 [ 0, %bb.o ], [ %i.by, %add_compile_string_length.exit.us.i.peel ]
  %i.ca = getelementptr i8, ptr %i.as, i64 %i.bq  ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %i.ap
  br i1 %i.cb, label %.peel.next, label %._crit_edge.i.thread

.peel.next:                                       ; preds = %bb.p, %.peel.next
  %.0544.us9.i = phi ptr [ %i.cd, %.peel.next ], [ %i.ca, %bb.p ]
  %.0572.us11.i = phi i32 [ %i.cc, %.peel.next ], [ %.158.us14.i.peel, %bb.p ]
  %i.cc = add i32 %.0572.us11.i, %i.au            ; 2 uses
  %i.cd = getelementptr i8, ptr %.0544.us9.i, i64 %i.bq ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.ap
  br i1 %i.ce, label %.peel.next, label %._crit_edge.i.thread, !llvm.loop !322

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.w
  %i.cf = phi ptr [ %i.de, %bb.w ], [ %i.ap, %.lr.ph.split.i ]
  %.0544.i = phi ptr [ %i.dd, %bb.w ], [ %i.as, %.lr.ph.split.i ] ; 2 uses
  %.0553.i = phi i32 [ %.156.i, %bb.w ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0572.i = phi i32 [ %.158.i, %bb.w ], [ %i.aq, %.lr.ph.split.i ] ; 3 uses
  %.0591.i = phi i32 [ %.160.i, %bb.w ], [ %i.aq, %.lr.ph.split.i ] ; 5 uses
  %i.cg = load i32, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !156
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.i
  %i.cj = tail call i32 @onigenc_mbclen(ptr noundef %.0544.i, ptr noundef nonnull %i.cf, ptr noundef nonnull %.val62) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.i
  %i.ck = phi i32 [ %i.cj, %bb.q ], [ %i.cg, %.lr.ph.split.split.i ] ; 4 uses
  %i.cl = icmp eq i32 %i.ck, %.0591.i
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = add i32 %.0591.i, %.0572.i
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cn = sext i32 %.0572.i to i64
  %i.co = sext i32 %.0591.i to i64                ; 2 uses
  %i.cp = add nsw i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.co
  %i.cr = udiv i64 %i.cq, %i.co                   ; 2 uses
  switch i32 %.0591.i, label %add_compile_string_length.exit.i65 [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %select_str_opcode.exit.thread.i.i
  ]

bb.u:                                             ; preds = %bb.t
  %switch.tableidx.i.i.i = add i64 %i.cr, -1      ; 2 uses
  %i.cs = icmp ult i64 %switch.tableidx.i.i.i, 5
  br i1 %i.cs, label %switch.lookup.i.i.i, label %add_compile_string_length.exit.i65

bb.v:                                             ; preds = %bb.t
  %switch.tableidx9.i.i.i = add i64 %i.cr, -1     ; 2 uses
  %i.ct = icmp ult i64 %switch.tableidx9.i.i.i, 3
  br i1 %i.ct, label %switch.lookup10.i.i.i, label %add_compile_string_length.exit.i65

switch.lookup.i.i.i:                              ; preds = %bb.u
  %switch.idx.cast.i.i.i = trunc nuw nsw i64 %switch.tableidx.i.i.i to i32
  %switch.offset.i.i.i = add nuw nsw i32 %switch.idx.cast.i.i.i, 2
  br label %add_compile_string_length.exit.i65

switch.lookup10.i.i.i:                            ; preds = %bb.v
  %switch.idx.cast11.i.i.i = trunc nuw nsw i64 %switch.tableidx9.i.i.i to i32
  %switch.offset12.i.i.i = or disjoint i32 %switch.idx.cast11.i.i.i, 8
  br label %add_compile_string_length.exit.i65

select_str_opcode.exit.thread.i.i:                ; preds = %bb.t
  br label %add_compile_string_length.exit.i65

add_compile_string_length.exit.i65:               ; preds = %select_str_opcode.exit.thread.i.i, %switch.lookup10.i.i.i, %switch.lookup.i.i.i, %bb.v, %bb.u, %bb.t
  %.0.i3.i.i = phi i32 [ 13, %bb.t ], [ 11, %bb.v ], [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 7, %bb.u ], [ %switch.offset12.i.i.i, %switch.lookup10.i.i.i ], [ 12, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %i.cu = phi i32 [ 5, %bb.t ], [ 1, %bb.v ], [ 1, %switch.lookup.i.i.i ], [ 1, %bb.u ], [ 1, %switch.lookup10.i.i.i ], [ 1, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %i.cv = add nsw i32 %.0.i3.i.i, -11
  %i.cw = icmp ult i32 %i.cv, 3
  %i.cx = and i32 %.0.i3.i.i, 7
  %i.cy = icmp eq i32 %i.cx, 7
  %or.cond7.i.i = or i1 %i.cy, %i.cw
  %i.cz = add nuw nsw i32 %i.cu, 4
  %.1.i.i66 = select i1 %or.cond7.i.i, i32 %i.cz, i32 %i.cu
  %i.da = add i32 %.0572.i, %.0553.i
  %i.db = add i32 %i.da, %.1.i.i66
  br label %bb.w

bb.w:                                             ; preds = %add_compile_string_length.exit.i65, %bb.s
  %.160.i = phi i32 [ %.0591.i, %bb.s ], [ %i.ck, %add_compile_string_length.exit.i65 ] ; 3 uses
  %.158.i = phi i32 [ %i.cm, %bb.s ], [ %i.ck, %add_compile_string_length.exit.i65 ] ; 2 uses
  %.156.i = phi i32 [ %.0553.i, %bb.s ], [ %i.db, %add_compile_string_length.exit.i65 ] ; 2 uses
  %i.dc = sext i32 %i.ck to i64
  %i.dd = getelementptr i8, ptr %.0544.i, i64 %i.dc ; 2 uses
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %i.df = icmp ult ptr %i.dd, %i.de
  br i1 %i.df, label %.lr.ph.split.split.i, label %._crit_edge.loopexit27.i, !llvm.loop !323

._crit_edge.loopexit27.i:                         ; preds = %bb.w
  %.pre32.i = sext i32 %.160.i to i64
  br label %._crit_edge.i

._crit_edge.i.thread:                             ; preds = %.peel.next, %bb.p
  %.057.lcssa.i.ph = phi i32 [ %.158.us14.i.peel, %bb.p ], [ %i.cc, %.peel.next ] ; 2 uses
  %i.dg = sext i32 %.057.lcssa.i.ph to i64
  %i.dh = add nsw i64 %i.bq, -1
  %i.di = add nsw i64 %i.dh, %i.dg
  %i.dj = udiv i64 %i.di, %i.bq
  br label %bb.y

._crit_edge.i:                                    ; preds = %bb.m, %._crit_edge.loopexit27.i, %bb.j
  %.pre-phi.i = phi i64 [ %.pre32.i, %._crit_edge.loopexit27.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.m ] ; 2 uses
  %.059.lcssa.i = phi i32 [ %.160.i, %._crit_edge.loopexit27.i ], [ %i.aq, %bb.j ], [ %i.aq, %bb.m ]
  %.057.lcssa.i = phi i32 [ %.158.i, %._crit_edge.loopexit27.i ], [ %i.aq, %bb.j ], [ %i.bm, %bb.m ] ; 3 uses
  %.055.lcssa.i = phi i32 [ %.156.i, %._crit_edge.loopexit27.i ], [ 0, %bb.j ], [ 0, %bb.m ] ; 2 uses
  %i.dk = sext i32 %.057.lcssa.i to i64
  %i.dl = add nsw i64 %.pre-phi.i, -1
  %i.dm = add nsw i64 %i.dl, %i.dk
  %i.dn = udiv i64 %i.dm, %.pre-phi.i             ; 2 uses
  br i1 %.not26.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.do = phi i64 [ %i.be, %._crit_edge.thread.i ], [ %i.dn, %._crit_edge.i ]
  %.055.lcssa55.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.055.lcssa.i, %._crit_edge.i ]
  %.057.lcssa53.i = phi i32 [ %i.ay, %._crit_edge.thread.i ], [ %.057.lcssa.i, %._crit_edge.i ]
  %cond.i.i68.i = icmp eq i64 %i.do, 1
  %..i.i69.i = select i1 %cond.i.i68.i, i32 14, i32 15
  br label %add_compile_string_length.exit82.i

bb.y:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.dp = phi i64 [ %i.dj, %._crit_edge.i.thread ], [ %i.dn, %._crit_edge.i ] ; 2 uses
  %.055.lcssa.i149 = phi i32 [ %.156.us15.i.peel, %._crit_edge.i.thread ], [ %.055.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.057.lcssa.i148 = phi i32 [ %.057.lcssa.i.ph, %._crit_edge.i.thread ], [ %.057.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.059.lcssa.i147 = phi i32 [ %i.au, %._crit_edge.i.thread ], [ %.059.lcssa.i, %._crit_edge.i ]
  switch i32 %.059.lcssa.i147, label %add_compile_string_length.exit82.i [
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %select_str_opcode.exit.thread.i73.i
  ]

bb.z:                                             ; preds = %bb.y
  %switch.tableidx.i.i78.i = add i64 %i.dp, -1    ; 2 uses
  %i.dq = icmp ult i64 %switch.tableidx.i.i78.i, 5
  br i1 %i.dq, label %switch.lookup.i.i79.i, label %add_compile_string_length.exit82.i

bb.aa:                                            ; preds = %bb.y
  %switch.tableidx9.i.i74.i = add i64 %i.dp, -1   ; 2 uses
  %i.dr = icmp ult i64 %switch.tableidx9.i.i74.i, 3
  br i1 %i.dr, label %switch.lookup10.i.i75.i, label %add_compile_string_length.exit82.i

switch.lookup.i.i79.i:                            ; preds = %bb.z
  %switch.idx.cast.i.i80.i = trunc nuw nsw i64 %switch.tableidx.i.i78.i to i32
  %switch.offset.i.i81.i = add nuw nsw i32 %switch.idx.cast.i.i80.i, 2
  br label %add_compile_string_length.exit82.i

switch.lookup10.i.i75.i:                          ; preds = %bb.aa
  %switch.idx.cast11.i.i76.i = trunc nuw nsw i64 %switch.tableidx9.i.i74.i to i32
  %switch.offset12.i.i77.i = or disjoint i32 %switch.idx.cast11.i.i76.i, 8
  br label %add_compile_string_length.exit82.i

select_str_opcode.exit.thread.i73.i:              ; preds = %bb.y
  br label %add_compile_string_length.exit82.i

add_compile_string_length.exit82.i:               ; preds = %select_str_opcode.exit.thread.i73.i, %switch.lookup10.i.i75.i, %switch.lookup.i.i79.i, %bb.aa, %bb.z, %bb.y, %bb.x
  %.055.lcssa54.i = phi i32 [ %.055.lcssa.i149, %bb.y ], [ %.055.lcssa.i149, %bb.aa ], [ %.055.lcssa.i149, %switch.lookup.i.i79.i ], [ %.055.lcssa.i149, %bb.z ], [ %.055.lcssa.i149, %switch.lookup10.i.i75.i ], [ %.055.lcssa55.i, %bb.x ], [ %.055.lcssa.i149, %select_str_opcode.exit.thread.i73.i ]
  %.057.lcssa52.i = phi i32 [ %.057.lcssa.i148, %bb.y ], [ %.057.lcssa.i148, %bb.aa ], [ %.057.lcssa.i148, %switch.lookup.i.i79.i ], [ %.057.lcssa.i148, %bb.z ], [ %.057.lcssa.i148, %switch.lookup10.i.i75.i ], [ %.057.lcssa53.i, %bb.x ], [ %.057.lcssa.i148, %select_str_opcode.exit.thread.i73.i ]
  %.0.i3.i70.i = phi i32 [ 13, %bb.y ], [ 11, %bb.aa ], [ %switch.offset.i.i81.i, %switch.lookup.i.i79.i ], [ 7, %bb.z ], [ %switch.offset12.i.i77.i, %switch.lookup10.i.i75.i ], [ %..i.i69.i, %bb.x ], [ 12, %select_str_opcode.exit.thread.i73.i ] ; 2 uses
  %i.ds = phi i32 [ 5, %bb.y ], [ 1, %bb.aa ], [ 1, %switch.lookup.i.i79.i ], [ 1, %bb.z ], [ 1, %switch.lookup10.i.i75.i ], [ 1, %bb.x ], [ 1, %select_str_opcode.exit.thread.i73.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i3.i70.i, -11
  %i.du = icmp ult i32 %i.dt, 3
  %i.dv = and i32 %.0.i3.i70.i, 7
  %i.dw = icmp eq i32 %i.dv, 7
  %or.cond7.i71.i = or i1 %i.dw, %i.du
  %i.dx = add nuw nsw i32 %i.ds, 4
  %.1.i72.i = select i1 %or.cond7.i71.i, i32 %i.dx, i32 %i.ds
  %i.dy = add i32 %.057.lcssa52.i, %.055.lcssa54.i
  %i.dz = add i32 %i.dy, %.1.i72.i
  br label %common.ret181

bb.ab:                                            ; preds = %bb.a
  %i.ea = getelementptr i8, ptr %0, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !189 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %common.ret181, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr i8, ptr %1, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !75
  %i.ef = getelementptr i8, ptr %i.ee, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !156
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.ak, label %bb.ad

end_hunk_2
