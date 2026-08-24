Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mbuffer?download=true
inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@.str.22 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.2 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.3 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1
@switch.table.getDpbSize = private unnamed_addr constant [23 x i32] [i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_dpb() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -70778880, 17) i32 @getDpbSize() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @active_sps, align 8, !tbaa !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  switch i32 %i.i, label %bb.n [
    i32 9, label %bb.o
    i32 10, label %bb.o
    i32 11, label %bb.b
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 20, label %bb.e
    i32 21, label %bb.f
    i32 22, label %bb.g
    i32 30, label %bb.g
    i32 31, label %bb.h
    i32 32, label %bb.i
    i32 40, label %bb.k
    i32 41, label %bb.k
    i32 42, label %bb.j
    i32 50, label %bb.l
    i32 51, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = icmp ult i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.o

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  br label %bb.o

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = add i32 %i.q, -100                       ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31) ; 2 uses
  %i.t = icmp ult i32 %i.s, 23
  br i1 %i.t, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a, %bb.a
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #16
  br label %bb.o

switch.lookup:                                    ; preds = %bb.j
  %i.u = zext nneg i32 %i.s to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.getDpbSize, i64 %i.u
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup, %bb.c, %bb.a, %bb.a, %bb.k, %bb.d, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.n ], [ 70778880, %bb.m ], [ 152064, %bb.a ], [ 152064, %bb.a ], [ 152064, %bb.d ], [ 912384, %bb.e ], [ 345600, %bb.c ], [ 42393600, %bb.l ], [ 1824768, %bb.f ], [ 3110400, %bb.g ], [ 12582912, %bb.k ], [ 6912000, %bb.h ], [ 7864320, %bb.i ], [ %switch.load, %switch.lookup ]
  %i.v = add i32 %i.c, 1
  %i.w = add i32 %i.e, 1
  %i.x = mul i32 %i.w, %i.v
  %.not = icmp eq i32 %i.g, 0
  %i.y = zext i1 %.not to i32
  %i.z = shl i32 %i.x, %i.y
  %i.aa = mul i32 %i.z, 384
  %i.ab = sdiv i32 %.0, %i.aa
  %i.ac = tail call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 16)
  ret i32 %i.ac
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @check_num_ref() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  %i.c = add i32 %i.b, %i.a
  %i.d = load ptr, ptr @img, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.h = icmp sgt i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_dpb() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 48), align 8, !tbaa !43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_dpb()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call i32 @getDpbSize()              ; 3 uses
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.c = load ptr, ptr @input, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = icmp ult i32 %i.b, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 1000) #16
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 56), align 8, !tbaa !49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #17 ; 2 uses
  store ptr %i.i, ptr @dpb, align 8, !tbaa !50
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #16
  %.pre34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44 ; 2 uses
  %.pre39 = zext i32 %.pre34 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %.pre39, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %0 = phi i32 [ %.pre34, %bb.f ], [ %i.g, %bb.e ]
  %i.k = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #17 ; 2 uses
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #16
  %.pre35 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44 ; 2 uses
  %.pre40 = zext i32 %.pre35 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi41 = phi i64 [ %.pre40, %bb.h ], [ %.pre-phi, %bb.g ]
  %1 = phi i32 [ %.pre35, %bb.h ], [ %0, %bb.g ]
  %i.m = tail call noalias ptr @calloc(i64 noundef %.pre-phi41, i64 noundef 8) #17 ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #16
  %.pre36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %2 = phi i32 [ %.pre36, %bb.j ], [ %1, %bb.i ]  ; 2 uses
  %.not23 = icmp eq i32 %2, 0
  br i1 %.not23, label %.preheader18, label %.lr.ph

.preheader18:                                     ; preds = %alloc_frame_store.exit, %bb.k
  %i.o = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.o, ptr @listX, align 16, !tbaa !53
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %bb.k, %alloc_frame_store.exit
  %3 = phi i32 [ %4, %alloc_frame_store.exit ], [ %2, %bb.k ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %alloc_frame_store.exit ], [ 0, %bb.k ] ; 4 uses
  %i.q = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #17 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %alloc_frame_store.exit

bb.l:                                             ; preds = %.lr.ph
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #16
  %.pre37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  br label %alloc_frame_store.exit

alloc_frame_store.exit:                           ; preds = %.lr.ph, %bb.l
  %4 = phi i32 [ %3, %.lr.ph ], [ %.pre37, %bb.l ] ; 2 uses
  %i.s = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.q, ptr %i.t, align 8, !tbaa !55
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store ptr null, ptr %i.x, align 8, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = zext i32 %4 to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.preheader18, !llvm.loop !56

bb.m:                                             ; preds = %.preheader18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.n

bb.n:                                             ; preds = %.preheader18, %bb.m
  %i.aa = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 24), align 8, !tbaa !53
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ag = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 32), align 16, !tbaa !53
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ai = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 3 uses
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 40), align 8, !tbaa !53
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  %.pre34.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 40), align 8, !tbaa !53
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %i.ak = phi ptr [ %.pre34.a, %bb.w ], [ %i.ai, %bb.v ]
  %i.al = load ptr, ptr @listX, align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i8 0, i64 264, i1 false), !tbaa !58
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i8 0, i64 264, i1 false), !tbaa !58
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.an, i8 0, i64 264, i1 false), !tbaa !58
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 24), align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i8 0, i64 264, i1 false), !tbaa !58
  store <4 x i32> zeroinitializer, ptr @listXsize, align 16, !tbaa !4
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 32), align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, i8 0, i64 264, i1 false), !tbaa !58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 16), align 16, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i8 0, i64 264, i1 false), !tbaa !58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 20), align 4, !tbaa !4
  store i32 -2147483648, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 40), align 8, !tbaa !60
  %i.aq = load ptr, ptr @img, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15428
  store i32 0, ptr %i.ar, align 4, !tbaa !61
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 48), align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_dpb() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @dpb, align 8, !tbaa !50   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44 ; 2 uses
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %free_frame_store.exit
  %i.c = phi i32 [ %i.m, %free_frame_store.exit ], [ %i.b, %.preheader ]
  %i.d = phi ptr [ %i.n, %free_frame_store.exit ], [ %i.a, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %free_frame_store.exit ], [ 0, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %free_frame_store.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %.not14.i = icmp eq ptr %i.h, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free_storable_picture(ptr noundef nonnull %i.h)
  store ptr null, ptr %i.g, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free_storable_picture(ptr noundef nonnull %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free_storable_picture(ptr noundef nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #16
  %.pre = load ptr, ptr @dpb, align 8, !tbaa !50
  %.pre22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  br label %free_frame_store.exit

free_frame_store.exit:                            ; preds = %.lr.ph, %bb.h
  %i.m = phi i32 [ %i.c, %.lr.ph ], [ %.pre22, %bb.h ] ; 2 uses
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = zext i32 %i.m to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %free_frame_store.exit, %.preheader
  %i.q = phi ptr [ %i.a, %.preheader ], [ %i.n, %free_frame_store.exit ]
  tail call void @free(ptr noundef %i.q) #16
  store ptr null, ptr @dpb, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51 ; 2 uses
  %.not11 = icmp eq ptr %i.r, null
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.r) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52 ; 2 uses
  %.not12 = icmp eq ptr %i.s, null
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.s) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 -2147483648, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 40), align 8, !tbaa !60
  %i.t = load ptr, ptr @listX, align 16, !tbaa !53 ; 2 uses
  %.not13 = icmp eq ptr %i.t, null
  br i1 %.not13, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.t) #16
  store ptr null, ptr @listX, align 16, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53 ; 2 uses
  %.not13.1 = icmp eq ptr %i.u, null
  br i1 %.not13.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.u) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53 ; 2 uses
  %.not13.2 = icmp eq ptr %i.v, null
  br i1 %.not13.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@init_lists:bb.a
bb.u:                                             ; preds = %.lr.ph704, %bb.y
  %indvars.iv856 = phi i64 [ 0, %.lr.ph704 ], [ %indvars.iv.next857, %bb.y ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv856
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !114 ; 2 uses
  %i.cg = and i32 %i.cf, 1
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6372
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !109
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, %.
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 6368
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = and i32 %i.cf, 2
  %.not258 = icmp eq i32 %i.co, 0
  br i1 %.not258, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !65 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6372
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !109
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = or disjoint i32 %i.ct, %.279
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 6368
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %exitcond860.not = icmp eq i64 %indvars.iv.next857, %wide.trip.count859
  br i1 %exitcond860.not, label %.loopexit651, label %bb.u, !llvm.loop !115

.loopexit651.loopexit.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit651, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit651.loopexit.unr-lcssa, %.lr.ph708
  %indvars.iv866.epil.init = phi i64 [ 0, %.lr.ph708 ], [ %indvars.iv.next867.1, %.loopexit651.loopexit.unr-lcssa ]
  %lcmp.mod1237 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod1237)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv866.epil.init
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !103
  %i.cz = icmp eq i32 %i.cy, 3
  br i1 %i.cz, label %bb.z, label %.loopexit651

bb.z:                                             ; preds = %.epil.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6376
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !102
  %.not276.epil = icmp eq i32 %i.dd, 0
  br i1 %.not276.epil, label %.loopexit651, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6372
  %i.df = load i32, ptr %i.de, align 4, !tbaa !109
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 6368
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !110
  br label %.loopexit651

.loopexit651:                                     ; preds = %bb.y, %.loopexit651.loopexit.unr-lcssa, %bb.aa, %bb.z, %.epil.preheader, %.preheader653, %.preheader650
  %i.dh = phi i32 [ %i.e, %.loopexit651.loopexit.unr-lcssa ], [ %i.e, %.preheader650 ], [ %i.ba, %.preheader653 ], [ %i.e, %.epil.preheader ], [ %i.e, %bb.z ], [ %i.e, %bb.aa ], [ %i.ba, %bb.y ] ; 4 uses
  switch i32 %0, label %bb.bn [
    i32 4, label %bb.ab
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 0, label %bb.ac
  ]

bb.ab:                                            ; preds = %.loopexit651, %.loopexit651
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  br label %.loopexit

bb.ac:                                            ; preds = %.loopexit651, %.loopexit651
  br i1 %i.d, label %.preheader649, label %bb.am

.preheader649:                                    ; preds = %bb.ac
  %.not797 = icmp eq i32 %i.dh, 0
  %.pre959.a = load ptr, ptr @listX, align 16     ; 2 uses
  br i1 %.not797, label %._crit_edge723, label %.lr.ph722

.lr.ph722:                                        ; preds = %.preheader649
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %wide.trip.count886 = zext i32 %i.dh to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph722, %bb.ah
  %indvars.iv883 = phi i64 [ 0, %.lr.ph722 ], [ %indvars.iv.next884, %bb.ah ] ; 2 uses
  %.0223721 = phi i32 [ 0, %.lr.ph722 ], [ %.1224, %bb.ah ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv883
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !103
  %i.dm = icmp eq i32 %i.dl, 3
  br i1 %i.dm, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !62 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6380
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !101
  %.not274 = icmp eq i32 %i.dq, 0
  br i1 %.not274, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 6376
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !102
  %.not275 = icmp eq i32 %i.ds, 0
  br i1 %.not275, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = add nsw i32 %.0223721, 1
  %i.du = sext i32 %.0223721 to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %.pre959.a, i64 %i.du
  store ptr %i.do, ptr %i.dv, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag, %bb.af, %bb.ae
  %.1224 = phi i32 [ %.0223721, %bb.af ], [ %i.dt, %bb.ag ], [ %.0223721, %bb.ae ], [ %.0223721, %bb.ad ] ; 2 uses
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond887.not = icmp eq i64 %indvars.iv.next884, %wide.trip.count886
  br i1 %exitcond887.not, label %._crit_edge723.loopexit, label %bb.ad, !llvm.loop !116

._crit_edge723.loopexit:                          ; preds = %bb.ah
  %.pre.a = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge723

._crit_edge723:                                   ; preds = %._crit_edge723.loopexit, %.preheader649
  %i.dw = phi ptr [ %.pre959.a, %.preheader649 ], [ %.pre.a, %._crit_edge723.loopexit ]
  %.0223.lcssa = phi i32 [ 0, %.preheader649 ], [ %.1224, %._crit_edge723.loopexit ] ; 5 uses
  %i.dx = sext i32 %.0223.lcssa to i64            ; 2 uses
  tail call void @qsort(ptr noundef %i.dw, i64 noundef %i.dx, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #16
  store i32 %.0223.lcssa, ptr @listXsize, align 16, !tbaa !4
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not798 = icmp eq i32 %i.dy, 0
  %.pre961.a = load ptr, ptr @listX, align 16     ; 2 uses
  br i1 %.not798, label %._crit_edge729, label %.lr.ph728

.lr.ph728:                                        ; preds = %._crit_edge723
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %wide.trip.count891 = zext i32 %i.dy to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph728, %bb.al
  %indvars.iv888 = phi i64 [ 0, %.lr.ph728 ], [ %indvars.iv.next889, %bb.al ] ; 2 uses
  %.2726 = phi i32 [ %.0223.lcssa, %.lr.ph728 ], [ %.3, %bb.al ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv888
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !55 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !103
  %i.ed = icmp eq i32 %i.ec, 3
  br i1 %i.ed, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !62 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 6376
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !102
  %.not273 = icmp eq i32 %i.eh, 0
  br i1 %.not273, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = add nsw i32 %.2726, 1
  %i.ej = sext i32 %.2726 to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.pre961.a, i64 %i.ej
  store ptr %i.ef, ptr %i.ek, align 8, !tbaa !58
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %.3 = phi i32 [ %i.ei, %bb.ak ], [ %.2726, %bb.aj ], [ %.2726, %bb.ai ] ; 2 uses
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next889, %wide.trip.count891
  br i1 %exitcond892.not, label %._crit_edge729.loopexit, label %bb.ai, !llvm.loop !117

._crit_edge729.loopexit:                          ; preds = %bb.al
  %.pre960 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge729

._crit_edge729:                                   ; preds = %._crit_edge729.loopexit, %._crit_edge723
  %i.el = phi ptr [ %.pre961.a, %._crit_edge723 ], [ %.pre960, %._crit_edge729.loopexit ]
  %.2.lcssa = phi i32 [ %.0223.lcssa, %._crit_edge723 ], [ %.3, %._crit_edge729.loopexit ] ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.dx
  %i.en = sub nsw i32 %.2.lcssa, %.0223.lcssa
  %i.eo = sext i32 %i.en to i64
  tail call void @qsort(ptr noundef %i.em, i64 noundef %i.eo, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  store i32 %.2.lcssa, ptr @listXsize, align 16, !tbaa !4
  br label %bb.dz

bb.am:                                            ; preds = %bb.ac
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = tail call noalias ptr @calloc(i64 noundef %i.eq, i64 noundef 8) #17 ; 10 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #16
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %.pre976 = zext i32 %.pre to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre-phi977 = phi i64 [ %.pre976, %bb.an ], [ %i.eq, %bb.am ]
  %i.et = tail call noalias ptr @calloc(i64 noundef %.pre-phi977, i64 noundef 8) #17 ; 15 uses
  %i.eu = ptrtoaddr ptr %i.et to i64
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 4 uses
  %.not795 = icmp eq i32 %i.ew, 0
  br i1 %.not795, label %._crit_edge, label %.lr.ph711

.lr.ph711:                                        ; preds = %bb.aq
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51 ; 3 uses
  %wide.trip.count874 = zext i32 %i.ew to i64     ; 2 uses
  %xtraiter1239 = and i64 %wide.trip.count874, 1
  %i.ey = icmp eq i32 %i.ew, 1
  br i1 %i.ey, label %.epil.preheader1238, label %.lr.ph711.new

.lr.ph711.new:                                    ; preds = %.lr.ph711
  %unroll_iter1243 = and i64 %wide.trip.count874, 4294967294
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph711.new
  %indvars.iv871 = phi i64 [ 0, %.lr.ph711.new ], [ %indvars.iv.next872.1, %bb.av ] ; 3 uses
  %.4710 = phi i32 [ 0, %.lr.ph711.new ], [ %.5.1, %bb.av ] ; 3 uses
  %niter1244 = phi i64 [ 0, %.lr.ph711.new ], [ %niter1244.next.1, %bb.av ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !55 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !112
  %.not270 = icmp eq i32 %i.fc, 0
  br i1 %.not270, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = add nsw i32 %.4710, 1
  %i.fe = sext i32 %.4710 to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fe
  store ptr %i.fa, ptr %i.ff, align 8, !tbaa !55
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.5 = phi i32 [ %i.fd, %bb.as ], [ %.4710, %bb.ar ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !55 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !112
  %.not270.1 = icmp eq i32 %i.fk, 0
  br i1 %.not270.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fl = add nsw i32 %.5, 1
  %i.fm = sext i32 %.5 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fm
  store ptr %i.fi, ptr %i.fn, align 8, !tbaa !55
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.5.1 = phi i32 [ %i.fl, %bb.au ], [ %.5, %bb.at ] ; 3 uses
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %niter1244.next.1 = add i64 %niter1244, 2       ; 2 uses
  %niter1244.ncmp.1 = icmp eq i64 %niter1244.next.1, %unroll_iter1243
  br i1 %niter1244.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !118

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod1240.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1240.not, label %._crit_edge, label %.epil.preheader1238

.epil.preheader1238:                              ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph711
  %indvars.iv871.epil.init = phi i64 [ 0, %.lr.ph711 ], [ %indvars.iv.next872.1, %._crit_edge.loopexit.unr-lcssa ]
  %.4710.epil.init = phi i32 [ 0, %.lr.ph711 ], [ %.5.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1242 = trunc i32 %i.ew to i1
  tail call void @llvm.assume(i1 %lcmp.mod1242)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871.epil.init
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !112
  %.not270.epil = icmp eq i32 %i.fr, 0
  br i1 %.not270.epil, label %._crit_edge, label %bb.aw

bb.aw:                                            ; preds = %.epil.preheader1238
  %i.fs = add nsw i32 %.4710.epil.init, 1
  %i.ft = sext i32 %.4710.epil.init to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ft
  store ptr %i.fp, ptr %i.fu, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.aw, %.epil.preheader1238, %bb.aq
  %.4.lcssa = phi i32 [ 0, %bb.aq ], [ %.5.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.fs, %bb.aw ], [ %.4710.epil.init, %.epil.preheader1238 ] ; 20 uses
  %i.fv = sext i32 %.4.lcssa to i64
  tail call void @qsort(ptr noundef %i.er, i64 noundef %i.fv, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #16
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  %i.fw = load ptr, ptr @listX, align 16, !tbaa !53 ; 4 uses
  %i.fx = icmp eq i32 %1, 1                       ; 3 uses
  br i1 %i.fx, label %.preheader88.i, label %.loopexit89.i

.preheader88.i:                                   ; preds = %._crit_edge
  %i.fy = icmp sgt i32 %.4.lcssa, 0
  br i1 %i.fy, label %.preheader86.i, label %gen_pic_list_from_frame_list.exit

.preheader86.i:                                   ; preds = %.preheader88.i, %.loopexit85.i
  %i.fz = phi i32 [ %i.hj, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 4 uses
  %.066104.i = phi i32 [ %.2.i, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 3 uses
  %.067103.i = phi i32 [ %.269.i, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 3 uses
  %i.ga = icmp slt i32 %.067103.i, %.4.lcssa
  br i1 %i.ga, label %.lr.ph.preheader.i, label %.loopexit87.i

.lr.ph.preheader.i:                               ; preds = %.preheader86.i
  %i.gb = sext i32 %.067103.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %is_short_ref.exit548.thread, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.gb, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %is_short_ref.exit548.thread ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.er, i64 %indvars.iv.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !55 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !103
  %i.gf = and i32 %i.ge, 1
  %.not78.i = icmp eq i32 %i.gf, 0
  br i1 %.not78.i, label %is_short_ref.exit548.thread, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !64 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 6380
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !101
  %.not.i546 = icmp eq i32 %i.gj, 0
  br i1 %.not.i546, label %is_short_ref.exit548.thread, label %is_short_ref.exit548

is_short_ref.exit548:                             ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 6376
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !102
  %.not2.i547.not = icmp eq i32 %i.gl, 0
  br i1 %.not2.i547.not, label %bb.ay, label %is_short_ref.exit548.thread

bb.ay:                                            ; preds = %is_short_ref.exit548
  %i.gm = trunc nsw i64 %indvars.iv.i to i32
  %i.gn = sext i32 %i.fz to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gn
  store ptr %i.gh, ptr %i.go, align 8, !tbaa !58
  %i.gp = add nsw i32 %i.fz, 1                    ; 2 uses
  store i32 %i.gp, ptr @listXsize, align 16, !tbaa !4
  %i.gq = add nsw i32 %i.gm, 1
  br label %.loopexit87.i

is_short_ref.exit548.thread:                      ; preds = %bb.ax, %is_short_ref.exit548, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.4.lcssa, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit87.i, label %.lr.ph.i, !llvm.loop !119

.loopexit87.i:                                    ; preds = %is_short_ref.exit548.thread, %bb.ay, %.preheader86.i
  %i.gr = phi i32 [ %i.gp, %bb.ay ], [ %i.fz, %.preheader86.i ], [ %i.fz, %is_short_ref.exit548.thread ] ; 4 uses
  %.269.i = phi i32 [ %i.gq, %bb.ay ], [ %.067103.i, %.preheader86.i ], [ %.4.lcssa, %is_short_ref.exit548.thread ] ; 3 uses
  %i.gs = icmp slt i32 %.066104.i, %.4.lcssa
  br i1 %i.gs, label %.lr.ph101.preheader.i, label %.loopexit85.i

.lr.ph101.preheader.i:                            ; preds = %.loopexit87.i
  %i.gt = sext i32 %.066104.i to i64
  br label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %is_short_ref.exit545.thread, %.lr.ph101.preheader.i
  %indvars.iv132.i = phi i64 [ %i.gt, %.lr.ph101.preheader.i ], [ %indvars.iv.next133.i, %is_short_ref.exit545.thread ] ; 3 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %indvars.iv132.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !55 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !103
  %i.gx = and i32 %i.gw, 2
  %.not80.i = icmp eq i32 %i.gx, 0
  br i1 %.not80.i, label %is_short_ref.exit545.thread, label %bb.az

bb.az:                                            ; preds = %.lr.ph101.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !65 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6380
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !101
  %.not.i543 = icmp eq i32 %i.hb, 0
  br i1 %.not.i543, label %is_short_ref.exit545.thread, label %is_short_ref.exit545

is_short_ref.exit545:                             ; preds = %bb.az
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 6376
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !102
  %.not2.i544.not = icmp eq i32 %i.hd, 0
  br i1 %.not2.i544.not, label %bb.ba, label %is_short_ref.exit545.thread

bb.ba:                                            ; preds = %is_short_ref.exit545
  %i.he = trunc nsw i64 %indvars.iv132.i to i32
  %i.hf = sext i32 %i.gr to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.hf
  store ptr %i.gz, ptr %i.hg, align 8, !tbaa !58
  %i.hh = add nsw i32 %i.gr, 1                    ; 2 uses
  store i32 %i.hh, ptr @listXsize, align 16, !tbaa !4
  %i.hi = add nsw i32 %i.he, 1
  br label %.loopexit85.i

is_short_ref.exit545.thread:                      ; preds = %bb.az, %is_short_ref.exit545, %.lr.ph101.i
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %lftr.wideiv135.i = trunc i64 %indvars.iv.next133.i to i32
  %exitcond136.not.i = icmp eq i32 %.4.lcssa, %lftr.wideiv135.i
  br i1 %exitcond136.not.i, label %.loopexit85.i, label %.lr.ph101.i, !llvm.loop !120
end_hunk_1
begin_hunk_2_@init_lists:bb.a
  %indvars.iv928.unr = phi i64 [ %indvars.iv928.ph, %scalar.ph1137.preheader ], [ %indvars.iv.next929.prol, %scalar.ph1137.prol ]
  %i.qc = sub nsw i64 %indvars.iv928.ph, %wide.trip.count931
  %i.qd = icmp ugt i64 %i.qc, -4
  br i1 %i.qd, label %.preheader646, label %scalar.ph1137

.preheader646:                                    ; preds = %scalar.ph1137.prol.loopexit, %scalar.ph1137, %middle.block1146, %._crit_edge770
  %i.qe = icmp slt i32 %.6.lcssa, %.8.lcssa
  br i1 %i.qe, label %.lr.ph776, label %._crit_edge777

.lr.ph776:                                        ; preds = %.preheader646
  %i.qf = load ptr, ptr @listX, align 16, !tbaa !53 ; 7 uses
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53 ; 7 uses
  %wide.trip.count937 = sext i32 %.8.lcssa to i64 ; 3 uses
  %min.iters.check1152 = icmp ult i32 %i.pi, 10
  br i1 %min.iters.check1152, label %scalar.ph1151.preheader, label %vector.memcheck1149

vector.memcheck1149:                              ; preds = %.lr.ph776
  %i.qh = ptrtoaddr ptr %i.qg to i64
  %i.qi = ptrtoaddr ptr %i.qf to i64
  %i.qj = shl nsw i64 %i.ok, 3
  %i.qk = add i64 %i.qj, %i.qi
  %i.ql = sub i64 %i.qk, %i.qh
  %diff.check1150 = icmp ugt i64 %i.ql, -32
  br i1 %diff.check1150, label %scalar.ph1151.preheader, label %vector.ph1153

vector.ph1153:                                    ; preds = %vector.memcheck1149
  %n.vec1154 = and i64 %i.pj, -4                  ; 3 uses
  %i.qm = add nsw i64 %n.vec1154, %i.ok
  %invariant.gep1308 = getelementptr [8 x i8], ptr %i.qf, i64 %i.ok
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1159, %vector.body1155 ] ; 3 uses
  %gep1309 = getelementptr [8 x i8], ptr %invariant.gep1308, i64 %index1156 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %gep1309, i64 16
  %wide.load1157 = load <2 x ptr>, ptr %gep1309, align 8, !tbaa !58
  %wide.load1158 = load <2 x ptr>, ptr %i.qn, align 8, !tbaa !58
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %index1156 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store <2 x ptr> %wide.load1157, ptr %i.qo, align 8, !tbaa !58
  store <2 x ptr> %wide.load1158, ptr %i.qp, align 8, !tbaa !58
  %index.next1159 = add nuw i64 %index1156, 4     ; 2 uses
  %i.qq = icmp eq i64 %index.next1159, %n.vec1154
  br i1 %i.qq, label %middle.block1160, label %vector.body1155, !llvm.loop !137

middle.block1160:                                 ; preds = %vector.body1155
  %cmp.n1161 = icmp eq i64 %n.vec1154, %i.pj
  br i1 %cmp.n1161, label %._crit_edge777, label %scalar.ph1151.preheader

scalar.ph1151.preheader:                          ; preds = %vector.memcheck1149, %.lr.ph776, %middle.block1160
  %indvars.iv934.ph = phi i64 [ %i.ok, %vector.memcheck1149 ], [ %i.ok, %.lr.ph776 ], [ %i.qm, %middle.block1160 ] ; 4 uses
  %i.qr = sub nsw i64 %wide.trip.count937, %indvars.iv934.ph
  %xtraiter1253 = and i64 %i.qr, 3                ; 2 uses
  %lcmp.mod1254.not = icmp eq i64 %xtraiter1253, 0
  br i1 %lcmp.mod1254.not, label %scalar.ph1151.prol.loopexit, label %scalar.ph1151.prol

scalar.ph1151.prol:                               ; preds = %scalar.ph1151.preheader, %scalar.ph1151.prol
  %indvars.iv934.prol = phi i64 [ %indvars.iv.next935.prol, %scalar.ph1151.prol ], [ %indvars.iv934.ph, %scalar.ph1151.preheader ] ; 3 uses
  %prol.iter1255 = phi i64 [ %prol.iter1255.next, %scalar.ph1151.prol ], [ 0, %scalar.ph1151.preheader ]
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv934.prol
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !58
  %i.qu = sub nsw i64 %indvars.iv934.prol, %i.ok
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.qu
  store ptr %i.qt, ptr %i.qv, align 8, !tbaa !58
  %indvars.iv.next935.prol = add nsw i64 %indvars.iv934.prol, 1 ; 2 uses
  %prol.iter1255.next = add i64 %prol.iter1255, 1 ; 2 uses
  %prol.iter1255.cmp.not = icmp eq i64 %prol.iter1255.next, %xtraiter1253
  br i1 %prol.iter1255.cmp.not, label %scalar.ph1151.prol.loopexit, label %scalar.ph1151.prol, !llvm.loop !138

scalar.ph1151.prol.loopexit:                      ; preds = %scalar.ph1151.prol, %scalar.ph1151.preheader
  %indvars.iv934.unr = phi i64 [ %indvars.iv934.ph, %scalar.ph1151.preheader ], [ %indvars.iv.next935.prol, %scalar.ph1151.prol ]
  %i.qw = sub nsw i64 %indvars.iv934.ph, %wide.trip.count937
  %i.qx = icmp ugt i64 %i.qw, -4
  br i1 %i.qx, label %._crit_edge777, label %scalar.ph1151

scalar.ph1137:                                    ; preds = %scalar.ph1137.prol.loopexit, %scalar.ph1137
  %indvars.iv928 = phi i64 [ %indvars.iv.next929.3, %scalar.ph1137 ], [ %indvars.iv928.unr, %scalar.ph1137.prol.loopexit ] ; 6 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv928
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !58
  %gep1054 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv928
  store ptr %i.qz, ptr %gep1054, align 8, !tbaa !58
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next929
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !58
  %gep1054.1 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929
  store ptr %i.rb, ptr %gep1054.1, align 8, !tbaa !58
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928, 2 ; 2 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next929.1
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !58
  %gep1054.2 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929.1
  store ptr %i.rd, ptr %gep1054.2, align 8, !tbaa !58
  %indvars.iv.next929.2 = add nuw nsw i64 %indvars.iv928, 3 ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next929.2
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !58
  %gep1054.3 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929.2
  store ptr %i.rf, ptr %gep1054.3, align 8, !tbaa !58
  %indvars.iv.next929.3 = add nuw nsw i64 %indvars.iv928, 4 ; 2 uses
  %exitcond932.not.3 = icmp eq i64 %indvars.iv.next929.3, %wide.trip.count931
  br i1 %exitcond932.not.3, label %.preheader646, label %scalar.ph1137, !llvm.loop !139

scalar.ph1151:                                    ; preds = %scalar.ph1151.prol.loopexit, %scalar.ph1151
  %indvars.iv934 = phi i64 [ %indvars.iv.next935.3, %scalar.ph1151 ], [ %indvars.iv934.unr, %scalar.ph1151.prol.loopexit ] ; 6 uses
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv934
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !58
  %i.ri = sub nsw i64 %indvars.iv934, %i.ok
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.ri
  store ptr %i.rh, ptr %i.rj, align 8, !tbaa !58
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, 1 ; 2 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv.next935
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !58
  %i.rm = sub nsw i64 %indvars.iv.next935, %i.ok
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.rm
  store ptr %i.rl, ptr %i.rn, align 8, !tbaa !58
  %indvars.iv.next935.1 = add nsw i64 %indvars.iv934, 2 ; 2 uses
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv.next935.1
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !58
  %i.rq = sub nsw i64 %indvars.iv.next935.1, %i.ok
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.rq
  store ptr %i.rp, ptr %i.rr, align 8, !tbaa !58
  %indvars.iv.next935.2 = add nsw i64 %indvars.iv934, 3 ; 2 uses
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv.next935.2
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !58
  %i.ru = sub nsw i64 %indvars.iv.next935.2, %i.ok
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.ru
  store ptr %i.rt, ptr %i.rv, align 8, !tbaa !58
  %indvars.iv.next935.3 = add nsw i64 %indvars.iv934, 4 ; 2 uses
  %exitcond938.not.3 = icmp eq i64 %indvars.iv.next935.3, %wide.trip.count937
  br i1 %exitcond938.not.3, label %._crit_edge777, label %scalar.ph1151, !llvm.loop !140

._crit_edge777:                                   ; preds = %scalar.ph1151.prol.loopexit, %scalar.ph1151, %middle.block1160, %.preheader646
  store i32 %.8.lcssa, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  store i32 %.8.lcssa, ptr @listXsize, align 16, !tbaa !4
  %i.rw = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not804 = icmp eq i32 %i.rw, 0
  %.pre968 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not804, label %._crit_edge782, label %.lr.ph781

.lr.ph781:                                        ; preds = %._crit_edge777
  %i.rx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %wide.trip.count942 = zext i32 %i.rw to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph781, %bb.cd
  %indvars.iv939 = phi i64 [ 0, %.lr.ph781 ], [ %indvars.iv.next940, %bb.cd ] ; 2 uses
  %.10779 = phi i32 [ %.8.lcssa, %.lr.ph781 ], [ %.11, %bb.cd ] ; 4 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv939
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !55 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !103
  %i.sc = icmp eq i32 %i.sb, 3
  br i1 %i.sc, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 40 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !62 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 6376
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !102
  %.not265 = icmp eq i32 %i.sg, 0
  br i1 %.not265, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sh = sext i32 %.10779 to i64                 ; 2 uses
  %i.si = getelementptr inbounds [8 x i8], ptr %.pre968, i64 %i.sh
  store ptr %i.se, ptr %i.si, align 8, !tbaa !58
  %i.sj = load ptr, ptr %i.sd, align 8, !tbaa !62
  %i.sk = add nsw i32 %.10779, 1
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.sh
  store ptr %i.sj, ptr %i.sl, align 8, !tbaa !58
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ca, %bb.cc, %bb.cb
  %.11 = phi i32 [ %i.sk, %bb.cc ], [ %.10779, %bb.cb ], [ %.10779, %bb.ca ] ; 2 uses
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 1 ; 2 uses
  %exitcond943.not = icmp eq i64 %indvars.iv.next940, %wide.trip.count942
  br i1 %exitcond943.not, label %._crit_edge782.loopexit, label %bb.ca, !llvm.loop !141

._crit_edge782.loopexit:                          ; preds = %bb.cd
  %.pre967 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge782

._crit_edge782:                                   ; preds = %._crit_edge782.loopexit, %._crit_edge777
  %i.sm = phi ptr [ %.pre968, %._crit_edge777 ], [ %.pre967, %._crit_edge782.loopexit ]
  %.10.lcssa = phi i32 [ %.8.lcssa, %._crit_edge777 ], [ %.11, %._crit_edge782.loopexit ] ; 4 uses
  %i.sn = sext i32 %.8.lcssa to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.sn
  %i.sp = sub nsw i32 %.10.lcssa, %.8.lcssa
  %i.sq = sext i32 %i.sp to i64
  tail call void @qsort(ptr noundef %i.so, i64 noundef %i.sq, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  %i.sr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  %i.ss = load i32, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.sr, i64 %i.st
  %i.sv = sub nsw i32 %.10.lcssa, %i.ss
  %i.sw = sext i32 %i.sv to i64
  tail call void @qsort(ptr noundef %i.su, i64 noundef %i.sw, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  store i32 %.10.lcssa, ptr @listXsize, align 16, !tbaa !4
  br label %bb.dz

bb.ce:                                            ; preds = %bb.bn
  %i.sx = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.sy = zext i32 %i.sx to i64                   ; 2 uses
  %i.sz = tail call noalias ptr @calloc(i64 noundef %i.sy, i64 noundef 8) #17 ; 13 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #16
  %.pre963 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %.pre973 = zext i32 %.pre963 to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pre-phi = phi i64 [ %.pre973, %bb.cf ], [ %i.sy, %bb.ce ] ; 2 uses
  %i.tb = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #17 ; 8 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #16
  %.pre964 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %.pre974 = zext i32 %.pre964 to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pre-phi975 = phi i64 [ %.pre974, %bb.ch ], [ %.pre-phi, %bb.cg ]
  %i.td = tail call noalias ptr @calloc(i64 noundef %.pre-phi975, i64 noundef 8) #17 ; 19 uses
  %i.te = ptrtoaddr ptr %i.td to i64
  %i.tf = icmp eq ptr %i.td, null
  br i1 %i.tf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.tg = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not799 = icmp eq i32 %i.tg, 0
  br i1 %.not799, label %._crit_edge735, label %.lr.ph734

.lr.ph734:                                        ; preds = %bb.ck
  %i.th = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.ti = load ptr, ptr @img, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 15328
  %wide.trip.count896 = zext i32 %i.tg to i64
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph734, %bb.co
  %indvars.iv893 = phi i64 [ 0, %.lr.ph734 ], [ %indvars.iv.next894, %bb.co ] ; 2 uses
  %.12732 = phi i32 [ 0, %.lr.ph734 ], [ %.13, %bb.co ] ; 4 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv893
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !55 ; 3 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !103
  %.not263 = icmp eq i32 %i.tm, 0
  br i1 %.not263, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tn = load i32, ptr %i.tj, align 8, !tbaa !142
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 36
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !143
  %.not264 = icmp slt i32 %i.tn, %i.tp
  br i1 %.not264, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tq = add nsw i32 %.12732, 1
  %i.tr = sext i32 %.12732 to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tr
  store ptr %i.tl, ptr %i.ts, align 8, !tbaa !55
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cn, %bb.cm
  %.13 = phi i32 [ %i.tq, %bb.cn ], [ %.12732, %bb.cm ], [ %.12732, %bb.cl ] ; 2 uses
  %indvars.iv.next894 = add nuw nsw i64 %indvars.iv893, 1 ; 2 uses
  %exitcond897.not = icmp eq i64 %indvars.iv.next894, %wide.trip.count896
  br i1 %exitcond897.not, label %._crit_edge735, label %bb.cl, !llvm.loop !144

._crit_edge735:                                   ; preds = %bb.co, %bb.ck
  %.12.lcssa = phi i32 [ 0, %bb.ck ], [ %.13, %bb.co ] ; 9 uses
  %i.tt = sext i32 %.12.lcssa to i64              ; 3 uses
  tail call void @qsort(ptr noundef %i.sz, i64 noundef %i.tt, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #16
  %i.tu = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not800 = icmp eq i32 %i.tu, 0
  br i1 %.not800, label %._crit_edge741, label %.lr.ph740

.lr.ph740:                                        ; preds = %._crit_edge735
  %i.tv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.tw = load ptr, ptr @img, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 15328
  %wide.trip.count901 = zext i32 %i.tu to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph740, %bb.cs
  %indvars.iv898 = phi i64 [ 0, %.lr.ph740 ], [ %indvars.iv.next899, %bb.cs ] ; 2 uses
  %.14738 = phi i32 [ %.12.lcssa, %.lr.ph740 ], [ %.15, %bb.cs ] ; 4 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv898
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !55 ; 3 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !103
  %.not262 = icmp eq i32 %i.ua, 0
  br i1 %.not262, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ub = load i32, ptr %i.tx, align 8, !tbaa !142
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 36
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !143
  %i.ue = icmp slt i32 %i.ub, %i.ud
  br i1 %i.ue, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.uf = add nsw i32 %.14738, 1
  %i.ug = sext i32 %.14738 to i64
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.ug
  store ptr %i.tz, ptr %i.uh, align 8, !tbaa !55
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cr, %bb.cq
  %.15 = phi i32 [ %i.uf, %bb.cr ], [ %.14738, %bb.cq ], [ %.14738, %bb.cp ] ; 2 uses
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count901
  br i1 %exitcond902.not, label %._crit_edge741, label %bb.cp, !llvm.loop !145

._crit_edge741:                                   ; preds = %bb.cs, %._crit_edge735
  %.14.lcssa = phi i32 [ %.12.lcssa, %._crit_edge735 ], [ %.15, %bb.cs ] ; 41 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tt
  %i.uj = sub nsw i32 %.14.lcssa, %.12.lcssa
  %i.uk = sext i32 %i.uj to i64                   ; 2 uses
  tail call void @qsort(ptr noundef %i.ui, i64 noundef %i.uk, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #16
  %i.ul = icmp sgt i32 %.12.lcssa, 0
  br i1 %i.ul, label %.lr.ph745.preheader, label %.preheader648

.lr.ph745.preheader:                              ; preds = %._crit_edge741
  %wide.trip.count906 = zext nneg i32 %.12.lcssa to i64 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.tb, i64 %i.uk ; 2 uses
  %min.iters.check1110 = icmp ult i32 %.12.lcssa, 4
  br i1 %min.iters.check1110, label %.lr.ph745.preheader1218, label %vector.ph1111

vector.ph1111:                                    ; preds = %.lr.ph745.preheader
  %n.vec1112 = and i64 %wide.trip.count906, 2147483644 ; 3 uses
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1111
  %index1114 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1117, %vector.body1113 ] ; 3 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %index1114 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %wide.load1115 = load <2 x ptr>, ptr %i.um, align 8, !tbaa !55
  %wide.load1116 = load <2 x ptr>, ptr %i.un, align 8, !tbaa !55
  %i.uo = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1114 ; 2 uses
  %i.up = getelementptr i8, ptr %i.uo, i64 16
  store <2 x ptr> %wide.load1115, ptr %i.uo, align 8, !tbaa !55
  store <2 x ptr> %wide.load1116, ptr %i.up, align 8, !tbaa !55
  %index.next1117 = add nuw i64 %index1114, 4     ; 2 uses
  %i.uq = icmp eq i64 %index.next1117, %n.vec1112
  br i1 %i.uq, label %middle.block1118, label %vector.body1113, !llvm.loop !146

middle.block1118:                                 ; preds = %vector.body1113
  %cmp.n1119 = icmp eq i64 %n.vec1112, %wide.trip.count906
  br i1 %cmp.n1119, label %.preheader648, label %.lr.ph745.preheader1218

.lr.ph745.preheader1218:                          ; preds = %.lr.ph745.preheader, %middle.block1118
  %indvars.iv903.ph = phi i64 [ 0, %.lr.ph745.preheader ], [ %n.vec1112, %middle.block1118 ]
  br label %.lr.ph745

.preheader648:                                    ; preds = %.lr.ph745, %middle.block1118, %._crit_edge741
  %i.ur = icmp slt i32 %.12.lcssa, %.14.lcssa
  br i1 %i.ur, label %.lr.ph747.preheader, label %._crit_edge748

.lr.ph747.preheader:                              ; preds = %.preheader648
  %i.us = shl nsw i64 %i.tt, 3
  %scevgep = getelementptr i8, ptr %i.sz, i64 %i.us
  %i.ut = xor i32 %.12.lcssa, -1
  %i.uu = add i32 %.14.lcssa, %i.ut
  %i.uv = zext i32 %i.uu to i64
  %i.uw = shl nuw nsw i64 %i.uv, 3
  %i.ux = add nuw nsw i64 %i.uw, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tb, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %i.ux, i1 false), !tbaa !55
  br label %._crit_edge748

.lr.ph745:                                        ; preds = %.lr.ph745.preheader1218, %.lr.ph745
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %.lr.ph745 ], [ %indvars.iv903.ph, %.lr.ph745.preheader1218 ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv903
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !55
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv903
  store ptr %i.uz, ptr %gep, align 8, !tbaa !55
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond907.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count906
  br i1 %exitcond907.not, label %.preheader648, label %.lr.ph745, !llvm.loop !147

._crit_edge748:                                   ; preds = %.lr.ph747.preheader, %.preheader648
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.va = load ptr, ptr @listX, align 16, !tbaa !53 ; 4 uses
  %i.vb = icmp eq i32 %1, 1                       ; 5 uses
  br i1 %i.vb, label %.preheader88.i359, label %.loopexit89.i332

.preheader88.i359:                                ; preds = %._crit_edge748
  %i.vc = icmp sgt i32 %.14.lcssa, 0
  br i1 %i.vc, label %.preheader86.i360, label %gen_pic_list_from_frame_list.exit435

.preheader86.i360:                                ; preds = %.preheader88.i359, %.loopexit85.i365
  %i.vd = phi i32 [ %i.wn, %.loopexit85.i365 ], [ 0, %.preheader88.i359 ] ; 4 uses
  %.066104.i361 = phi i32 [ %.2.i366, %.loopexit85.i365 ], [ 0, %.preheader88.i359 ] ; 3 uses
  %.067103.i362 = phi i32 [ %.269.i364, %.loopexit85.i365 ], [ 0, %.preheader88.i359 ] ; 3 uses
  %i.ve = icmp slt i32 %.067103.i362, %.14.lcssa
  br i1 %i.ve, label %.lr.ph.preheader.i375, label %.loopexit87.i363

.lr.ph.preheader.i375:                            ; preds = %.preheader86.i360
  %i.vf = sext i32 %.067103.i362 to i64
  br label %.lr.ph.i376

.lr.ph.i376:                                      ; preds = %is_short_ref.exit567.thread, %.lr.ph.preheader.i375
  %indvars.iv.i377 = phi i64 [ %i.vf, %.lr.ph.preheader.i375 ], [ %indvars.iv.next.i380, %is_short_ref.exit567.thread ] ; 3 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %indvars.iv.i377
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !55 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !103
  %i.vj = and i32 %i.vi, 1
  %.not78.i378 = icmp eq i32 %i.vj, 0
  br i1 %.not78.i378, label %is_short_ref.exit567.thread, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i376
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !64 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 6380
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !101
  %.not.i565 = icmp eq i32 %i.vn, 0
  br i1 %.not.i565, label %is_short_ref.exit567.thread, label %is_short_ref.exit567

end_hunk_2
