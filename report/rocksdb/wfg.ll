inline.NumInlined: 96
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE9insert_atERKS3_j = comdat any

$__clang_call_terminate = comdat any

$_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE18find_internal_zeroImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS3_Pj = comdat any

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE23maybe_resize_or_convertEj = comdat any

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE15insert_internalEPNS_12omt_internal17subtree_templatedILb0EEERKS3_jPS8_ = comdat any

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE9rebalanceEPNS_12omt_internal17subtree_templatedILb0EEE = comdat any

$_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE30fill_array_with_subtree_valuesEPS3_RKNS_12omt_internal17subtree_templatedILb0EEE = comdat any

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS3_j = comdat any

$_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE = comdat any

$_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj = comdat any

; Function Attrs: mustprogress uwtable
define void @_ZN4toku3wfg6createEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (4, 24)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.b, align 4, !tbaa !12
  %i.c = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku3wfg7destroyEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !9, !range !14, !noundef !15 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit: ; preds = %bb.b, %bb.d
  %.0.i.in = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.d ]
  %.0.i = load i32, ptr %.0.i.in, align 4, !tbaa !13 ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread
  %.pre = load i8, ptr %0, align 8, !tbaa !9, !range !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge.loopexit, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit
  %1 = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit ], [ 0, %bb.c ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = xor i8 %1, 1
  %4 = zext nneg i8 %3 to i32
  %..i.i = sub nsw i32 0, %4
  store i32 %..i.i, ptr %2, align 8, !tbaa !13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %5, align 4, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %6, align 4, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !13     ; 2 uses
  %.not.i.a = icmp eq ptr %i.o, null
  br i1 %.not.i.a, label %_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE7destroyEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e
  tail call void @_Z9toku_freePv(ptr noundef nonnull %i.o)
  br label %_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE7destroyEv.exit

_ZN4toku3omtIPNS_3wfg4nodeES3_Lb0EE7destroyEv.exit: ; preds = %bb.e, %.sink.split.i
  store ptr null, ptr %7, align 8, !tbaa !13
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.au, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread ] ; 5 uses
  %i.p = load i8, ptr %0, align 8, !tbaa !9, !range !14, !noundef !15
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.i: ; preds = %bb.f
  %i.t = load i32, ptr %i.n, align 4, !tbaa !13
  %.not.i7 = icmp ult i32 %.013, %i.t
  br i1 %.not.i7, label %bb.h, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i: ; preds = %bb.g
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !13   ; 3 uses
  %i.v = zext i32 %i.r to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  %.not12.i = icmp ult i32 %.013, %i.y
  br i1 %.not12.i, label %tailrecurse.outer.i.i, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.i
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !13
  %i.ab = add i32 %i.aa, %.013
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  br label %.loopexit

tailrecurse.outer.i.i:                            ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i, %bb.i
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.i ], [ %i.r, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i ]
  %.tr21.ph.i.i = phi i32 [ %i.as, %bb.i ], [ %.013, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i ] ; 3 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.outer.i.i
  %i.ae = phi i32 [ %i.ai, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ %.pre.i, %tailrecurse.outer.i.i ]
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i: ; preds = %tailrecurse.i.i
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.ao = icmp ult i32 %.tr21.ph.i.i, %i.an
  br i1 %i.ao, label %tailrecurse.i.i, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i: ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.i.i
  %.0.i19.i.i = phi i32 [ %i.an, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.ap = icmp eq i32 %.tr21.ph.i.i, %.0.i19.i.i
  br i1 %i.ap, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = xor i32 %.0.i19.i.i, -1
  %i.as = add i32 %.tr21.ph.i.i, %i.ar
  %.pre.pre.i = load i32, ptr %i.aq, align 4, !tbaa !16
  br label %tailrecurse.outer.i.i

.loopexit:                                        ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %bb.h
  %.sink.in.i = phi ptr [ %i.ad, %bb.h ], [ %i.ag, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i6 = load ptr, ptr %.sink.in.i, align 8, !tbaa !22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i6, i64 8
  tail call void @_ZN4toku9txnid_set7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
  tail call void @_Z9toku_freePv(ptr noundef %.sink.i6)
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE5fetchEjPS3_.exit.thread: ; preds = %bb.g, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.thread10.i, %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE4sizeEv.exit.i, %.loopexit
  %i.au = add nuw i32 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %.0.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toku3wfg4node4freeEPS1_(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4toku9txnid_set7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  tail call void @_Z9toku_freePv(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toku3wfg8add_edgeEmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4toku3wfg16find_create_nodeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  %i.b = tail call noundef ptr @_ZN4toku3wfg16find_create_nodeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  tail call void @_ZN4toku9txnid_set3addEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4toku3wfg16find_create_nodeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i8, ptr %0, align 8, !tbaa !9, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 3 uses
  %.not38.i.i = icmp eq i32 %i.i, 0
  br i1 %.not38.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = add i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.02442.i.i = phi i32 [ %i.g, %.lr.ph.i.i ], [ %.1.i.i, %bb.f ] ; 2 uses
  %.02541.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.126.i.i, %bb.f ] ; 2 uses
  %.02740.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.128.i.i, %bb.f ] ; 2 uses
  %.02939.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %.130.i.i, %bb.f ] ; 2 uses
  %i.m = add i32 %.02939.i.i, %.02442.i.i
  %i.n = lshr i32 %i.m, 1                         ; 5 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw i32 %i.n, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not37.i.i = icmp eq i64 %i.r, %1              ; 2 uses
  %.027..i.i = select i1 %.not37.i.i, i32 %.02740.i.i, i32 %i.n
  %..025.i.i = select i1 %.not37.i.i, i32 %i.n, i32 %.02541.i.i
  %i.u = freeze i32 %.027..i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.130.i.i = phi i32 [ %.02939.i.i, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.128.i.i = phi i32 [ %.02740.i.i, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  %.126.i.i = phi i32 [ %.02541.i.i, %bb.d ], [ %..025.i.i, %bb.e ] ; 4 uses
  %.1.i.i = phi i32 [ %i.t, %bb.d ], [ %.02442.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq i32 %.1.i.i, %.130.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %bb.f
  %.not33.i.i = icmp eq i32 %.126.i.i, -1
  br i1 %.not33.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.v = zext nneg i32 %.126.i.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  store ptr %i.x, ptr %i.b, align 8, !tbaa !22
  %i.y = sub i32 %.126.i.i, %i.g
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE24find_internal_zero_arrayImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not34.i.i = icmp eq i32 %.128.i.i, -1
  %i.z = sub i32 %.128.i.i, %i.g
  br i1 %.not34.i.i, label %.thread.i.i, label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE24find_internal_zero_arrayImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit.i

.thread.i.i:                                      ; preds = %bb.h, %bb.b
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE24find_internal_zero_arrayImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit.i

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE24find_internal_zero_arrayImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit.i: ; preds = %.thread.i.i, %bb.h, %bb.g
  %storemerge35.i.i = phi i32 [ %i.y, %bb.g ], [ %i.i, %.thread.i.i ], [ %i.z, %bb.h ]
  %.0.i.i = phi i32 [ 0, %bb.g ], [ -30989, %.thread.i.i ], [ -30989, %bb.h ]
  store i32 %storemerge35.i.i, ptr %i.c, align 4, !tbaa !32
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE9find_zeroImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit

bb.i:                                             ; preds = %bb.a
  %i.aa = call noundef i32 @_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE18find_internal_zeroImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS3_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE9find_zeroImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit

_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE9find_zeroImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_3wfg4nodeES3_Lb0EE24find_internal_zero_arrayImTnPFiRKS3_RKT_EXadL_ZNS1_13find_by_txnidES7_RKmEEEEiSA_PS3_Pj.exit.i, %bb.i
end_hunk_0
