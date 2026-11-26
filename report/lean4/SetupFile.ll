Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SetupFile?download=true
inline.NumInlined: 354
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Server_FileWorker_runLakeSetupFile___closed__5 = internal global ptr null, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l___private_Lean_Server_FileWorker_SetupFile_0__Lean_Server_FileWorker_runLakeSetupFile_processStderr___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [1 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 1, i64 1, i64 0, [1 x i8] zeroinitializer }>, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"-\00" }>, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"setup-file\00" }>, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"--no-build\00" }>, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"--no-cache\00" }>, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 0, i8 0 }, [1 x ptr] zeroinitializer }, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_FileWorker_runLakeSetupFile___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 0, i8 0 }, [1 x ptr] [ptr inttoptr (i64 2 to ptr)] }, align 8
@l_Lean_Server_FileWorker_setupFile___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c" \00" }>, align 8
@l_Lean_Server_FileWorker_setupFile___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"`\00" }>, align 8
@l_Lean_Server_FileWorker_setupFile___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"` failed:\0A\00" }>, align 8
@l_Lean_Server_FileWorker_setupFile___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"\0Astderr:\0A\00" }>, align 8
@l_Lean_Server_FileWorker_setupFile___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [22 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 22, i64 22, i64 21, [22 x i8] c"Invalid output from `\00" }>, align 8
@l_Lean_Server_FileWorker_setupFile___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"`:\0A\00" }>, align 8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_task_get_own(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_task_get(ptr noundef %0) #5 ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i4 = icmp eq i64 %i.h, 0
  br i1 %.not.i4, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_inc.exit
  %i.i = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i5 = icmp eq i32 %i.i, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_SetupFile_0__Lean_Server_FileWorker_runLakeSetupFile_processStderr___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %lean_dec.exit84

lean_dec.exit84:                                  ; preds = %lean_dec.exit84.backedge, %bb.a
  %.060 = phi ptr [ %2, %bb.a ], [ %i.az, %lean_dec.exit84.backedge ] ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call ptr @lean_io_prim_handle_get_line(ptr noundef %i.b) #5 ; 11 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i107 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %.not.i107, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec.exit84
  %i.f = lshr i64 %i.d, 1
  %i.g = trunc i64 %i.f to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec.exit84
  %i.h = getelementptr i8, ptr %i.c, i64 4
  %.val.i = load i32, ptr %i.h, align 4
  %i.i = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.0.i, 0
  br i1 %i.j, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 22 uses
  %.val106 = load i32, ptr %i.c, align 8, !tbaa !10
  %i.m = icmp eq i32 %.val106, 1                  ; 2 uses
  br i1 %i.m, label %lean_dec.exit86, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 1
  %.not.i76 = icmp eq i64 %i.o, 0
  br i1 %.not.i76, label %bb.f, label %lean_inc.exit77

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !10
  br label %lean_inc.exit77

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit77, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit77

lean_inc.exit77:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i107, label %bb.j, label %lean_dec.exit86

bb.j:                                             ; preds = %lean_inc.exit77
  %i.s = load i32, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.c, align 8, !tbaa !10
  br label %lean_dec.exit86

bb.l:                                             ; preds = %bb.j
  %.not.i87 = icmp eq i32 %i.s, 0
  br i1 %.not.i87, label %lean_dec.exit86, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #5
  br label %lean_dec.exit86

lean_dec.exit86:                                  ; preds = %lean_inc.exit77, %bb.k, %bb.l, %bb.m, %bb.d
  %.073 = phi ptr [ %i.c, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit77 ] ; 4 uses
  %i.v = icmp eq ptr %i.l, @l___private_Lean_Server_FileWorker_SetupFile_0__Lean_Server_FileWorker_runLakeSetupFile_processStderr___redArg___closed__0_value
  br i1 %i.v, label %lean_string_dec_eq.exit.thread126, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit86
  %i.w = getelementptr i8, ptr %i.l, i64 8
  %.val.i.i108 = load i64, ptr %i.w, align 8, !tbaa !15
  %i.x = icmp eq i64 %.val.i.i108, 1
  br i1 %i.x, label %lean_string_dec_eq.exit, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit:                          ; preds = %bb.n
  %i.y = tail call zeroext i1 @lean_string_eq_cold(ptr noundef %i.l, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SetupFile_0__Lean_Server_FileWorker_runLakeSetupFile_processStderr___redArg___closed__0_value) #5
  br i1 %i.y, label %lean_string_dec_eq.exit.thread126, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit.thread:                   ; preds = %bb.n, %lean_string_dec_eq.exit
  %i.z = ptrtoint ptr %.073 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i109 = icmp eq i64 %i.aa, 0
  br i1 %.not.i109, label %bb.o, label %lean_del_object.exit

bb.o:                                             ; preds = %lean_string_dec_eq.exit.thread
  tail call void @lean_free_object(ptr noundef nonnull %.073) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_string_dec_eq.exit.thread, %bb.o
  %.val.i.i110 = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i110, 0
  br i1 %i.ab, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %lean_del_object.exit
  %i.ac = add nuw i32 %.val.i.i110, 1
  store i32 %i.ac, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref.exit112

bb.q:                                             ; preds = %lean_del_object.exit
  %.not.i.i111 = icmp eq i32 %.val.i.i110, 0
  br i1 %.not.i.i111, label %lean_inc_ref.exit112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit112

lean_inc_ref.exit112:                             ; preds = %bb.r, %bb.q, %bb.p
  %.val.i.i113 = load i32, ptr %i.l, align 8, !tbaa !10 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i113, 0
  br i1 %i.ae, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %lean_inc_ref.exit112
  %i.af = add nuw i32 %.val.i.i113, 1
  store i32 %i.af, ptr %i.l, align 8, !tbaa !10
  br label %lean_inc.exit75

bb.t:                                             ; preds = %lean_inc_ref.exit112
  %.not.i.i114 = icmp eq i32 %.val.i.i113, 0
  br i1 %.not.i.i114, label %lean_inc.exit75, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit75

lean_inc.exit75:                                  ; preds = %bb.u, %bb.t, %bb.s
  %i.ah = tail call ptr @lean_apply_2(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5 ; 13 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %.not.i116 = icmp eq i64 %i.aj, 0               ; 2 uses
  br i1 %.not.i116, label %bb.w, label %bb.v

bb.v:                                             ; preds = %lean_inc.exit75
  %i.ak = lshr i64 %i.ai, 1
  %i.al = trunc i64 %i.ak to i32
  br label %lean_obj_tag.exit119

bb.w:                                             ; preds = %lean_inc.exit75
  %i.am = getelementptr i8, ptr %i.ah, i64 4
  %.val.i118 = load i32, ptr %i.am, align 4
  %i.an = lshr i32 %.val.i118, 24
  br label %lean_obj_tag.exit119

lean_obj_tag.exit119:                             ; preds = %bb.v, %bb.w
  %.0.i117 = phi i32 [ %i.al, %bb.v ], [ %i.an, %bb.w ]
  %i.ao = icmp eq i32 %.0.i117, 0
  br i1 %i.ao, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %lean_obj_tag.exit119
  %.val.i120 = load i32, ptr %i.ah, align 4, !tbaa !10 ; 4 uses
  %i.ap = icmp eq i32 %.val.i120, 1
  br i1 %i.ap, label %.preheader.i, label %bb.ac

.preheader.i:                                     ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i121 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i121, label %bb.y, label %lean_dec.exit.i

bb.y:                                             ; preds = %.preheader.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !10 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.aa:                                            ; preds = %bb.y
  %.not.i7.i = icmp eq i32 %i.au, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ah) #5
  br label %lean_dec_ref_known.exit

bb.ac:                                            ; preds = %bb.x
  %i.ax = icmp sgt i32 %.val.i120, 1
  br i1 %i.ax, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.ay = add nsw i32 %.val.i120, -1
  store i32 %i.ay, ptr %i.ah, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i8.i = icmp eq i32 %.val.i120, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ad, %bb.ae, %bb.af
  %i.az = tail call ptr @lean_string_append(ptr noundef %.060, ptr noundef nonnull %i.l) #5
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !10  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.ag, label %bb.ah, !prof !11

bb.ag:                                            ; preds = %lean_dec_ref_known.exit
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.l, align 8, !tbaa !10
  br label %lean_dec.exit84.backedge

lean_dec.exit84.backedge:                         ; preds = %bb.ag, %bb.ah, %bb.ai
  br label %lean_dec.exit84

bb.ah:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i88 = icmp eq i32 %i.ba, 0
  br i1 %.not.i88, label %lean_dec.exit84.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #5
  br label %lean_dec.exit84.backedge

bb.aj:                                            ; preds = %lean_obj_tag.exit119
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !10  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.ak, label %bb.al, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.l, align 4, !tbaa !10
  br label %lean_dec.exit82

bb.al:                                            ; preds = %bb.aj
  %.not.i90 = icmp eq i32 %i.bd, 0
  br i1 %.not.i90, label %lean_dec.exit82, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #5
  br label %lean_dec.exit82

lean_dec.exit82:                                  ; preds = %bb.am, %bb.al, %bb.ak
  %i.bg = load i32, ptr %.060, align 4, !tbaa !10 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %lean_dec.exit82
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %.060, align 4, !tbaa !10
  br label %lean_dec_ref.exit105

bb.ao:                                            ; preds = %lean_dec.exit82
  %.not.i104 = icmp eq i32 %i.bg, 0
  br i1 %.not.i104, label %lean_dec_ref.exit105, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.060) #5
  br label %lean_dec_ref.exit105

lean_dec_ref.exit105:                             ; preds = %bb.an, %bb.ao, %bb.ap
  %i.bj = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %lean_dec_ref.exit105
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit103

bb.ar:                                            ; preds = %lean_dec_ref.exit105
  %.not.i102 = icmp eq i32 %i.bj, 0
  br i1 %.not.i102, label %lean_dec_ref.exit103, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit103

lean_dec_ref.exit103:                             ; preds = %bb.aq, %bb.ar, %bb.as
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.ah, align 8, !tbaa !10
  %i.bo = icmp eq i32 %.val, 1
  br i1 %i.bo, label %bb.bv, label %bb.at

bb.at:                                            ; preds = %lean_dec_ref.exit103
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %bb.au, label %lean_inc.exit

bb.au:                                            ; preds = %bb.at
  %.val.i.i122 = load i32, ptr %i.bn, align 4, !tbaa !10 ; 3 uses
  %i.br = icmp sgt i32 %.val.i.i122, 0
  br i1 %i.br, label %bb.av, label %bb.aw, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.bs = add nuw i32 %.val.i.i122, 1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !10
  br label %lean_inc.exit

bb.aw:                                            ; preds = %bb.au
  %.not.i.i123 = icmp eq i32 %.val.i.i122, 0
  br i1 %.not.i.i123, label %lean_inc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bt = atomicrmw add ptr %i.bn, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  br i1 %.not.i116, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %lean_inc.exit
  %i.bu = load i32, ptr %i.ah, align 8, !tbaa !10 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.az, label %bb.ba, !prof !11

bb.az:                                            ; preds = %bb.ay
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.ah, align 8, !tbaa !10
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %.not.i92 = icmp eq i32 %i.bu, 0
  br i1 %.not.i92, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #5
  br label %bb.bc

bb.bc:                                            ; preds = %lean_inc.exit, %bb.az, %bb.ba, %bb.bb
  tail call void @lean_inc_heartbeat() #5
  %i.bx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.bd, label %lean_alloc_ctor.exit

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bc
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !10
  store i32 16842768, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bn, ptr %i.ca, align 8, !tbaa !13
  br label %bb.bv

lean_string_dec_eq.exit.thread126:                ; preds = %lean_dec.exit86, %lean_string_dec_eq.exit
  %i.cb = ptrtoint ptr %i.l to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i78 = icmp eq i64 %i.cc, 0
  br i1 %.not.i78, label %bb.be, label %lean_dec.exit

bb.be:                                            ; preds = %lean_string_dec_eq.exit.thread126
  %i.cd = load i32, ptr %i.l, align 4, !tbaa !10  ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.bf, label %bb.bg, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.l, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bg:                                            ; preds = %bb.be
  %.not.i94 = icmp eq i32 %i.cd, 0
  br i1 %.not.i94, label %lean_dec.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bh, %bb.bg, %bb.bf, %lean_string_dec_eq.exit.thread126
  %i.cg = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %lean_dec.exit
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit101

bb.bj:                                            ; preds = %lean_dec.exit
  %.not.i100 = icmp eq i32 %i.cg, 0
  br i1 %.not.i100, label %lean_dec_ref.exit101, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit101

lean_dec_ref.exit101:                             ; preds = %bb.bi, %bb.bj, %bb.bk
  br i1 %i.m, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %lean_dec_ref.exit101
  %i.cj = getelementptr inbounds nuw i8, ptr %.073, i64 8
  store ptr %.060, ptr %i.cj, align 8, !tbaa !13
  br label %bb.bv

bb.bm:                                            ; preds = %lean_dec_ref.exit101
  tail call void @lean_inc_heartbeat() #5
  %i.ck = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.bn, label %lean_alloc_ctor.exit125

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit125:                          ; preds = %bb.bm
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !10
  store i32 65552, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %.060, ptr %i.cn, align 8, !tbaa !13
  br label %bb.bv

bb.bo:                                            ; preds = %lean_obj_tag.exit
  %i.co = load i32, ptr %.060, align 4, !tbaa !10 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bp, label %bb.bq, !prof !11

bb.bp:                                            ; preds = %bb.bo
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %.060, align 4, !tbaa !10
  br label %lean_dec_ref.exit99

bb.bq:                                            ; preds = %bb.bo
  %.not.i98 = icmp eq i32 %i.co, 0
  br i1 %.not.i98, label %lean_dec_ref.exit99, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.060) #5
  br label %lean_dec_ref.exit99

lean_dec_ref.exit99:                              ; preds = %bb.bp, %bb.bq, %bb.br
  %i.cr = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bs, label %bb.bt, !prof !11

bb.bs:                                            ; preds = %lean_dec_ref.exit99
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %0, align 4, !tbaa !10
  br label %bb.bv

bb.bt:                                            ; preds = %lean_dec_ref.exit99
  %.not.i96 = icmp eq i32 %i.cr, 0
  br i1 %.not.i96, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %bb.bv

bb.bv:                                            ; preds = %lean_dec_ref.exit103, %lean_alloc_ctor.exit125, %lean_alloc_ctor.exit, %bb.bl, %bb.bs, %bb.bt, %bb.bu
  %.5.ph = phi ptr [ %i.c, %bb.bu ], [ %i.c, %bb.bt ], [ %i.c, %bb.bs ], [ %.073, %bb.bl ], [ %i.bx, %lean_alloc_ctor.exit ], [ %i.ck, %lean_alloc_ctor.exit125 ], [ %i.ah, %lean_dec_ref.exit103 ]
  ret ptr %.5.ph
}

declare ptr @lean_io_prim_handle_get_line(ptr noundef) local_unnamed_addr #2

declare ptr @lean_apply_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 1, 6) %1) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !10    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %lean_dec.exit
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %.preheader, %lean_dec.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lean_dec.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_dec.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !10   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !10
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !17

bb.h:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit9

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

declare ptr @lean_string_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 4) %0, i32 noundef range(i32 1, 6) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %i.b = or disjoint i32 %narrow, %2              ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = and i64 %i.c, 120
  %i.e = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not.i.i, i64 0, i64 8
  %i.g = add nuw nsw i64 %i.f, %i.d               ; 3 uses
  tail call void @lean_inc_heartbeat() #5
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef %i.g) #5 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.j = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -65536
  %i.n = or disjoint i32 %i.m, %i.j               ; 2 uses
  store i32 %i.n, ptr %i.k, align 4
  %i.o = icmp samesign ult i32 %i.b, %i.j
  br i1 %i.o, label %bb.b, label %lean_alloc_ctor_memory.exit

bb.b:                                             ; preds = %lean_alloc_small_object.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i64 0, ptr %i.q, align 8, !tbaa !15
  %.pre = load i32, ptr %i.k, align 4
  br label %lean_alloc_ctor_memory.exit

end_hunk_0
