Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/t_hash_int?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
begin_hunk_0_@_ZN2cv12ppf_match_3d12hashtableGetEPNS0_8HSHTBL_iEj:bb.a
  %i.i = load i32, ptr %.014, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !29

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.010 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = load i64, ptr %0, align 8, !tbaa !18
  %i.c = urem i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN2cv12ppf_match_3d15hashtableResizeEPNS0_8HSHTBL_iEm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #17 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not36 = icmp eq i64 %i.d, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %._crit_edge
  %i.f = phi i64 [ %i.d, %.lr.ph34 ], [ %i.ao, %._crit_edge ]
  %.01833 = phi i64 [ 0, %.lr.ph34 ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01833
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not2030 = icmp eq ptr %i.i, null
  br i1 %.not2030, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.b, %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit
  %.031 = phi ptr [ %i.k, %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit ], [ %i.i, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = load i32, ptr %.031, align 8, !tbaa !25  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = tail call noundef i64 %i.b(i32 noundef %i.l), !inline_history !32
  %i.p = urem i64 %i.o, %1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.p ; 2 uses
  %.027.i = load ptr, ptr %i.q, align 8, !tbaa !21 ; 3 uses
  %.not28.i = icmp eq ptr %.027.i, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph32, %bb.d
  %.029.i = phi ptr [ %.0.i, %bb.d ], [ %.027.i, %.lr.ph32 ] ; 3 uses
  %i.r = load i32, ptr %.029.i, align 8, !tbaa !25
  %.not25.i = icmp eq i32 %i.r, %i.l
  br i1 %.not25.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  store ptr %i.n, ptr %i.s, align 8, !tbaa !26
  br label %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  %.0.i = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph32
  %i.u = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16 ; 5 uses
  %.not24.i = icmp eq ptr %i.u, null
  br i1 %.not24.i, label %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store i32 %i.l, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.n, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.027.i, ptr %i.w, align 8, !tbaa !23
  store ptr %i.u, ptr %i.q, align 8, !tbaa !21
  br label %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit

_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit: ; preds = %bb.c, %._crit_edge.i, %bb.e
  %i.x = load i32, ptr %.031, align 8, !tbaa !25  ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.z = tail call noundef i64 %i.y(i32 noundef %i.x), !inline_history !33
  %i.aa = load i64, ptr %0, align 8, !tbaa !18
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %.01722.i = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 5 uses
  %.not23.i = icmp eq ptr %.01722.i, null
  br i1 %.not23.i, label %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit
  %i.ae = load i32, ptr %.01722.i, align 8, !tbaa !25
  %i.af = icmp eq i32 %i.ae, %i.x
  br i1 %i.af, label %bb.g, label %.lr.ph

.lr.ph.i21:                                       ; preds = %.lr.ph
  %i.ag = load i32, ptr %.017.i, align 8, !tbaa !25
  %i.ah = icmp eq i32 %i.ag, %i.x
  br i1 %i.ah, label %bb.f, label %.lr.ph, !llvm.loop !3

bb.f:                                             ; preds = %.lr.ph.i21
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %.01725.i28, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i21.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %.01722.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.01725.i.lcssa50 = phi ptr [ %.01722.i, %bb.g ], [ %.017.i, %bb.f ]
  tail call void @free(ptr noundef nonnull %.01725.i.lcssa50) #18
  br label %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit

.lr.ph:                                           ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21
  %.01725.i28 = phi ptr [ %.017.i, %.lr.ph.i21 ], [ %.01722.i, %.lr.ph.i21.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01725.i28, i64 16
  %.017.i = load ptr, ptr %i.an, align 8, !tbaa !21 ; 5 uses
  %.not.i22 = icmp eq ptr %.017.i, null
  br i1 %.not.i22, label %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit, label %.lr.ph.i21, !llvm.loop !3

_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit: ; preds = %.lr.ph, %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit, %bb.h
  %.not20 = icmp eq ptr %i.k, null
  br i1 %.not20, label %._crit_edge.loopexit, label %.lr.ph32, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %_ZN2cv12ppf_match_3d15hashtableRemoveEPNS0_8HSHTBL_iEj.exit
  %.pre = load i64, ptr %0, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ao = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %i.ap = add nuw i64 %.01833, 1                  ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.b, label %._crit_edge35, !llvm.loop !31

._crit_edge35:                                    ; preds = %._crit_edge, %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.as) #18
  store i64 %1, ptr %0, align 8, !tbaa !18
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge35
  %.019 = phi i32 [ 0, %._crit_edge35 ], [ -1, %bb.a ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i32 @_ZN2cv12ppf_match_3d14hashtableWriteEPKNS0_8HSHTBL_iEmP8_IO_FILE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 427462442, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.e = load i64, ptr %0, align 8, !tbaa !18
  store i64 %i.e, ptr %i.c, align 8, !tbaa !27
  %i.f = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.g = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.h = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !18
  %.not33 = icmp eq i64 %i.i, 0
  br i1 %.not33, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge28
  %.01929 = phi i64 [ 0, %.lr.ph31 ], [ %i.x, %._crit_edge28 ] ; 3 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.01929
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.m = phi i64 [ %i.n, %.lr.ph ], [ 0, %bb.b ]
  %.022 = phi ptr [ %i.p, %.lr.ph ], [ %i.l, %bb.b ]
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa = phi i64 [ 0, %bb.b ], [ %i.n, %.lr.ph ]
  store i64 %.lcssa, ptr %i.d, align 8
  %i.q = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.01929
  %.123 = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.not2024 = icmp eq ptr %.123, null
  br i1 %.not2024, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge, %.lr.ph27
  %.125 = phi ptr [ %.1, %.lr.ph27 ], [ %.123, %._crit_edge ] ; 3 uses
  %i.t = tail call i64 @fwrite(ptr noundef nonnull %.125, i64 noundef 4, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.125, i64 8
  %i.v = tail call i64 @fwrite(ptr noundef nonnull %i.u, i64 noundef %1, i64 noundef 1, ptr noundef %2) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.125, i64 16
  %.1 = load ptr, ptr %i.w, align 8, !tbaa !21    ; 2 uses
  %.not20 = icmp eq ptr %.1, null
  br i1 %.not20, label %._crit_edge28, label %.lr.ph27, !llvm.loop !35

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.x = add nuw i64 %.01929, 1                   ; 2 uses
  %i.y = load i64, ptr %0, align 8, !tbaa !18
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge32, !llvm.loop !36

._crit_edge32:                                    ; preds = %._crit_edge28, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12ppf_match_3d14hashtablePrintEPNS0_8HSHTBL_iE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not16 = icmp eq i64 %i.a, 0
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph14, %._crit_edge
  %i.c = phi i64 [ %i.a, %.lr.ph14 ], [ %i.ag, %._crit_edge ]
  %.0912 = phi i64 [ 0, %.lr.ph14 ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0912
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.011 = phi ptr [ %i.h, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6) ; 0 uses
  %i.j = load i32, ptr %.011, align 8, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.k) ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.1, i64 noundef 9) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.o) ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !63
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10), !inline_history !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.z, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef signext %.0.i.i.i)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 0 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !38

._crit_edge.loopexit:                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.pre = load i64, ptr %0, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ag = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.b ] ; 2 uses
  %i.ah = add nuw i64 %.0912, 1                   ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.b, label %._crit_edge15, !llvm.loop !39

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef ptr @_ZN2cv12ppf_match_3d13hashtableReadEP8_IO_FILE(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !27
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef %0)
  %i.g = icmp ne i64 %i.f, 0
  %i.h = load i64, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.h, 427462442
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.j = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef %0) ; 0 uses
  %i.k = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef %0) ; 0 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i64 %i.l to i32
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = or i32 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = or i32 %i.r, %i.q                        ; 2 uses
  %i.t = lshr i32 %i.s, 4
  %i.u = or i32 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i32 %i.u, 8
  %i.w = or i32 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i32 %i.w, 16
  %i.y = or i32 %i.x, %i.w
  %i.z = add i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  br label %_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE.exit

_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE.exit: ; preds = %bb.c, %bb.b
  %i.ab = phi i64 [ %i.aa, %bb.c ], [ 16, %bb.b ] ; 8 uses
  %i.ac = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 8) #17 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @_ZN2cv12ppf_match_3d4hashEj, ptr %i.af, align 8, !tbaa !19
  %.not3142.not = icmp eq i64 %i.ab, 0
  br i1 %.not3142.not, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE.exit
  %i.ag = load i64, ptr %i.c, align 8
  %.fr45 = freeze i64 %i.ag                       ; 4 uses
  %i.ah = icmp ugt i64 %.fr45, 8
  br i1 %i.ah, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %.critedge33.us
  %.02343.us = phi i64 [ %i.bq, %.critedge33.us ], [ 0, %.lr.ph44 ]
  %i.ai = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef %0) ; 0 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not3040.us.not = icmp eq i64 %i.aj, 0
  br i1 %.not3040.us.not, label %.critedge33.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph44.split.us, %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit.us.us
  %.02241.us.us = phi i64 [ %i.bp, %_ZN2cv12ppf_match_3d15hashtableInsertEPNS0_8HSHTBL_iEjPv.exit.us.us ], [ 0, %.lr.ph44.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ak = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef %0) ; 0 uses
  %i.al = tail call noalias ptr @malloc(i64 noundef %.fr45) #16 ; 4 uses
  %.not.us.us = icmp eq ptr %i.al, null
  br i1 %.not.us.us, label %.lr.ph15.i, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.lr.ph.us
  %i.am = tail call i64 @fread(ptr noundef nonnull %i.al, i64 noundef %.fr45, i64 noundef 1, ptr noundef %0) ; 0 uses
  %i.an = load i32, ptr %i.d, align 4, !tbaa !67  ; 4 uses
  %i.ao = add i32 %i.an, 2127912214
  %i.ap = shl i32 %i.an, 12
  %i.aq = add i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 19
  %i.as = xor i32 %i.aq, %i.ar
  %i.at = xor i32 %i.as, -949894596               ; 2 uses
  %i.au = add i32 %i.at, 374761393
  %i.av = shl i32 %i.at, 5
  %i.aw = add i32 %i.au, %i.av                    ; 2 uses
  %i.ax = add i32 %i.aw, -744332180
  %i.ay = shl i32 %i.aw, 9
  %i.az = xor i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = add i32 %i.az, -42973499
  %i.bb = shl i32 %i.az, 3
  %i.bc = add i32 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i32 %i.bc, 16
end_hunk_0
