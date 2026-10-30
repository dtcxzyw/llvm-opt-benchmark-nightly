Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/covBuild?download=true
inline.NumInlined: 97
inline.NumDeleted: 27
begin_hunk_0_@Abc_NtkCovDeriveNodeInv_rec:bb.a
  %i.g = getelementptr i8, ptr %.val48, i64 272
  %.val48.val = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr i8, ptr %.val48.val, i64 24
  %.val48.val.val = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr i8, ptr %.val48.val.val, i64 8
  %.val48.val.val.val = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.j = sext i32 %.val49 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val48.val.val.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val5261 = load i32, ptr %i.q, align 4, !tbaa !12
  %i.r = icmp sgt i32 %.val5261, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.n, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.val = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15
  %i.v = load ptr, ptr %2, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %.val47 = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr i8, ptr %.val47, i64 8
  %.val47.val = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val47.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ab = tail call ptr @Abc_NtkCovDeriveNodeInv_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.aa, i32 noundef 0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val52 = load i32, ptr %i.q, align 4, !tbaa !12
  %i.ac = sext i32 %.val52 to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.e, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %bb.e, %bb.d
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %Min_CoverCountCubes.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %.critedge ] ; 2 uses
  %.046.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.p, %.critedge ]
  %i.ae = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.af = load ptr, ptr %.046.i, align 8, !tbaa !51 ; 2 uses
  %.not.i53 = icmp eq ptr %i.af, null
  br i1 %.not.i53, label %Min_CoverCountCubes.exit, label %.lr.ph.i, !llvm.loop !0

Min_CoverCountCubes.exit:                         ; preds = %.lr.ph.i
  %cond = icmp eq i32 %.07.i, 0
  br i1 %cond, label %bb.f, label %bb.g

Min_CoverCountCubes.exit.thread:                  ; preds = %.critedge
  %i.ag = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %1) #7
  br label %bb.j

bb.f:                                             ; preds = %Min_CoverCountCubes.exit
  %i.ah = tail call ptr @Abc_NtkCovDeriveCubeInv(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n)
  br label %bb.j

bb.g:                                             ; preds = %Min_CoverCountCubes.exit
  %i.ai = tail call ptr @Abc_NtkCreateObj(ptr noundef %1, i32 noundef 7) #7 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.04363 = phi ptr [ %i.p, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %i.aj = tail call ptr @Abc_NtkCovDeriveCubeInv(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %.04363, ptr noundef nonnull %i.n)
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ai, ptr noundef %i.aj) #7
  %i.ak = load ptr, ptr %.04363, align 8, !tbaa !51 ; 2 uses
  %.not46 = icmp eq ptr %i.ak, null
  br i1 %.not46, label %bb.i, label %bb.h, !llvm.loop !63

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = tail call ptr @Abc_SopCreateXorSpecial(ptr noundef %i.am, i32 noundef %i.ae) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %Min_CoverCountCubes.exit.thread
  %.042 = phi ptr [ %i.ag, %Min_CoverCountCubes.exit.thread ], [ %i.ah, %bb.f ], [ %i.ai, %bb.i ] ; 4 uses
  store ptr %.042, ptr %i.a, align 8, !tbaa !38
  %.not.i54 = icmp eq i32 %3, 0
  br i1 %.not.i54, label %Abc_NtkCovDeriveInv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.042, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %Abc_NtkCovDeriveInv.exit.sink.split, label %Abc_NtkCovDeriveInv.exit

Abc_NtkCovDeriveInv.exit.sink.split:              ; preds = %bb.k, %bb.c
  %.042.sink = phi ptr [ %i.b, %bb.c ], [ %.042, %bb.k ]
  %i.as = tail call ptr @Abc_NtkCreateNodeInv(ptr noundef %1, ptr noundef nonnull %.042.sink) #7
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr %i.as, ptr %i.au, align 8, !tbaa !38
  %.pre.i58 = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %Abc_NtkCovDeriveInv.exit

Abc_NtkCovDeriveInv.exit:                         ; preds = %Abc_NtkCovDeriveInv.exit.sink.split, %bb.k, %bb.j, %bb.c, %bb.b
  %.pn.i.pn = phi ptr [ %i.b, %bb.c ], [ %2, %bb.b ], [ %.042, %bb.k ], [ %2, %bb.j ], [ %.pre.i58, %Abc_NtkCovDeriveInv.exit.sink.split ]
  %.044.in = getelementptr inbounds nuw i8, ptr %.pn.i.pn, i64 72
  %.044 = load ptr, ptr %.044.in, align 8, !tbaa !38
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkCovDeriveClean(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkStartFrom(ptr noundef %1, i32 noundef 2, i32 noundef 1) #7 ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  %i.c = getelementptr i8, ptr %.val21, i64 4
  %.val.val22 = load i32, ptr %i.c, align 4, !tbaa !53
  %i.d = icmp sgt i32 %.val.val22, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val24 = phi ptr [ %.val, %.lr.ph ], [ %.val21, %bb.a ]
  %i.e = getelementptr i8, ptr %.val24, i64 8
  %.val17.val = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val17.val, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 4 uses
  %.val18 = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val19 = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr i8, ptr %.val18, i64 32
  %.val18.val = load ptr, ptr %i.i, align 8, !tbaa !33
  %.val19.val = load i32, ptr %.val19, align 4, !tbaa !15
  %i.j = getelementptr i8, ptr %.val18.val, i64 8
  %.val18.val.val = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = sext i32 %.val19.val to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val18.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr i8, ptr %i.g, i64 20
  %.val20 = load i32, ptr %i.n, align 4
  %i.o = lshr i32 %.val20, 10
  %i.p = and i32 %i.o, 1
  %i.q = tail call ptr @Abc_NtkCovDeriveNodeInv_rec(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.m, i32 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.s, ptr noundef %i.q) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !52  ; 2 uses
  %i.t = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.t, align 4, !tbaa !53
  %i.u = sext i32 %.val.val to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %i.w = tail call i32 @Abc_NtkLogicMakeSimpleCos(ptr noundef %i.a, i32 noundef 0) #7 ; 0 uses
  %i.x = tail call i32 @Abc_NtkCheck(ptr noundef %i.a) #7
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @Abc_NtkDelete(ptr noundef %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.016 = phi ptr [ null, %bb.b ], [ %i.a, %.critedge ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkCovDerive_rec(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.val105 = load ptr, ptr %2, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val106 = load i32, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr i8, ptr %.val105, i64 272
  %.val105.val = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr i8, ptr %.val105.val, i64 24
  %.val105.val.val = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr i8, ptr %.val105.val.val, i64 8
  %.val105.val.val.val = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.g = sext i32 %.val106 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val105.val.val.val, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !49   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 8 uses
  %.not92 = icmp eq ptr %i.l, null                ; 3 uses
  %.not97 = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not92, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not97, label %bb.d, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i32 [ %i.q, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %.046.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.q = add nuw nsw i32 %.07.i, 1
  %i.r = load ptr, ptr %.046.i, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.lr.ph.i117, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i117:                                      ; preds = %.lr.ph.i, %.lr.ph.i117
  %.07.i118 = phi i32 [ %i.s, %.lr.ph.i117 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.046.i119 = phi ptr [ %i.t, %.lr.ph.i117 ], [ %i.n, %.lr.ph.i ]
  %i.s = add nuw nsw i32 %.07.i118, 1
  %i.t = load ptr, ptr %.046.i119, align 8, !tbaa !51 ; 2 uses
  %.not.i120 = icmp eq ptr %i.t, null
  br i1 %.not.i120, label %Min_CoverCountCubes.exit122, label %.lr.ph.i117, !llvm.loop !0

Min_CoverCountCubes.exit122:                      ; preds = %.lr.ph.i117
  %.not94 = icmp samesign ugt i32 %.07.i, %.07.i118
  br i1 %.not94, label %.lr.ph.i138.preheader, label %bb.d

bb.d:                                             ; preds = %Min_CoverCountCubes.exit122, %bb.c
  %.not95 = icmp eq ptr %i.p, null
  br i1 %.not95, label %bb.j, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.d, %.lr.ph.i124
  %.07.i125 = phi i32 [ %i.u, %.lr.ph.i124 ], [ 0, %bb.d ] ; 2 uses
  %.046.i126 = phi ptr [ %i.v, %.lr.ph.i124 ], [ %i.l, %bb.d ]
  %i.u = add nuw nsw i32 %.07.i125, 1
  %i.v = load ptr, ptr %.046.i126, align 8, !tbaa !51 ; 2 uses
  %.not.i127 = icmp eq ptr %i.v, null
  br i1 %.not.i127, label %.lr.ph.i131, label %.lr.ph.i124, !llvm.loop !0

.lr.ph.i131:                                      ; preds = %.lr.ph.i124, %.lr.ph.i131
  %.07.i132 = phi i32 [ %i.w, %.lr.ph.i131 ], [ 0, %.lr.ph.i124 ] ; 2 uses
  %.046.i133 = phi ptr [ %i.x, %.lr.ph.i131 ], [ %i.p, %.lr.ph.i124 ]
  %i.w = add nuw nsw i32 %.07.i132, 1
  %i.x = load ptr, ptr %.046.i133, align 8, !tbaa !51 ; 2 uses
  %.not.i134 = icmp eq ptr %i.x, null
  br i1 %.not.i134, label %Min_CoverCountCubes.exit136, label %.lr.ph.i131, !llvm.loop !0

Min_CoverCountCubes.exit136:                      ; preds = %.lr.ph.i131
  %.not96 = icmp samesign ugt i32 %.07.i125, %.07.i132
  br i1 %.not96, label %.thread208, label %bb.j

bb.e:                                             ; preds = %bb.b
  br i1 %.not97, label %bb.g, label %bb.f

.thread208:                                       ; preds = %Min_CoverCountCubes.exit136
  %.not97225 = icmp eq ptr %i.n, null
  br i1 %.not97225, label %.thread212.thread, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %.thread208, %Min_CoverCountCubes.exit122
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.preheader, %.lr.ph.i138
  %.07.i139 = phi i32 [ %i.y, %.lr.ph.i138 ], [ 0, %.lr.ph.i138.preheader ] ; 2 uses
  %.046.i140 = phi ptr [ %i.z, %.lr.ph.i138 ], [ %i.n, %.lr.ph.i138.preheader ]
  %i.y = add nuw nsw i32 %.07.i139, 1
  %i.z = load ptr, ptr %.046.i140, align 8, !tbaa !51 ; 2 uses
  %.not.i141 = icmp eq ptr %i.z, null
  br i1 %.not.i141, label %.lr.ph.i145, label %.lr.ph.i138, !llvm.loop !0

.lr.ph.i145:                                      ; preds = %.lr.ph.i138, %.lr.ph.i145
  %.07.i146 = phi i32 [ %i.aa, %.lr.ph.i145 ], [ 0, %.lr.ph.i138 ] ; 2 uses
  %.046.i147 = phi ptr [ %i.ab, %.lr.ph.i145 ], [ %i.l, %.lr.ph.i138 ]
  %i.aa = add nuw nsw i32 %.07.i146, 1
  %i.ab = load ptr, ptr %.046.i147, align 8, !tbaa !51 ; 2 uses
  %.not.i148 = icmp eq ptr %i.ab, null
  br i1 %.not.i148, label %Min_CoverCountCubes.exit150, label %.lr.ph.i145, !llvm.loop !0

Min_CoverCountCubes.exit150:                      ; preds = %.lr.ph.i145
  %.not98 = icmp samesign ugt i32 %.07.i139, %.07.i146
  br i1 %.not98, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %Min_CoverCountCubes.exit150
  %.not99 = icmp eq ptr %i.p, null
  br i1 %.not99, label %bb.j, label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %bb.f, %.lr.ph.i152
  %.07.i153 = phi i32 [ %i.ac, %.lr.ph.i152 ], [ 0, %bb.f ] ; 2 uses
  %.046.i154 = phi ptr [ %i.ad, %.lr.ph.i152 ], [ %i.n, %bb.f ]
  %i.ac = add nuw nsw i32 %.07.i153, 1
  %i.ad = load ptr, ptr %.046.i154, align 8, !tbaa !51 ; 2 uses
  %.not.i155 = icmp eq ptr %i.ad, null
  br i1 %.not.i155, label %.lr.ph.i159, label %.lr.ph.i152, !llvm.loop !0

.lr.ph.i159:                                      ; preds = %.lr.ph.i152, %.lr.ph.i159
  %.07.i160 = phi i32 [ %i.ae, %.lr.ph.i159 ], [ 0, %.lr.ph.i152 ] ; 2 uses
  %.046.i161 = phi ptr [ %i.af, %.lr.ph.i159 ], [ %i.p, %.lr.ph.i152 ]
  %i.ae = add nuw nsw i32 %.07.i160, 1
  %i.af = load ptr, ptr %.046.i161, align 8, !tbaa !51 ; 2 uses
  %.not.i162 = icmp eq ptr %i.af, null
  br i1 %.not.i162, label %Min_CoverCountCubes.exit164, label %.lr.ph.i159, !llvm.loop !0

Min_CoverCountCubes.exit164:                      ; preds = %.lr.ph.i159
  %.not100 = icmp samesign ugt i32 %.07.i153, %.07.i160
  br i1 %.not100, label %.thread212, label %bb.j

bb.g:                                             ; preds = %Min_CoverCountCubes.exit150, %bb.e
  %.not101 = icmp eq ptr %i.p, null
  br i1 %.not101, label %bb.j, label %.thread212

.thread212:                                       ; preds = %Min_CoverCountCubes.exit164, %bb.g
  %.not97203215 = phi i1 [ %.not92, %bb.g ], [ false, %Min_CoverCountCubes.exit164 ] ; 2 uses
  br i1 %.not92, label %bb.h, label %.thread212.thread

.thread212.thread:                                ; preds = %.thread208, %.thread212
  %.not97203215218 = phi i1 [ %.not97203215, %.thread212 ], [ true, %.thread208 ]
  br label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.thread212.thread, %.lr.ph.i166
  %.07.i167 = phi i32 [ %i.ag, %.lr.ph.i166 ], [ 0, %.thread212.thread ] ; 2 uses
  %.046.i168 = phi ptr [ %i.ah, %.lr.ph.i166 ], [ %i.p, %.thread212.thread ]
  %i.ag = add nuw nsw i32 %.07.i167, 1
  %i.ah = load ptr, ptr %.046.i168, align 8, !tbaa !51 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ah, null
  br i1 %.not.i169, label %.lr.ph.i173, label %.lr.ph.i166, !llvm.loop !0

.lr.ph.i173:                                      ; preds = %.lr.ph.i166, %.lr.ph.i173
  %.07.i174 = phi i32 [ %i.ai, %.lr.ph.i173 ], [ 0, %.lr.ph.i166 ] ; 2 uses
  %.046.i175 = phi ptr [ %i.aj, %.lr.ph.i173 ], [ %i.l, %.lr.ph.i166 ]
  %i.ai = add nuw nsw i32 %.07.i174, 1
  %i.aj = load ptr, ptr %.046.i175, align 8, !tbaa !51 ; 2 uses
  %.not.i176 = icmp eq ptr %i.aj, null
  br i1 %.not.i176, label %Min_CoverCountCubes.exit178, label %.lr.ph.i173, !llvm.loop !0

Min_CoverCountCubes.exit178:                      ; preds = %.lr.ph.i173
  %i.ak = icmp samesign ult i32 %.07.i167, %.07.i174
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %Min_CoverCountCubes.exit178, %.thread212
  %.not97203215219 = phi i1 [ %.not97203215218, %Min_CoverCountCubes.exit178 ], [ %.not97203215, %.thread212 ]
  br i1 %.not97203215219, label %bb.i, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %bb.h, %.lr.ph.i180
  %.07.i181 = phi i32 [ %i.al, %.lr.ph.i180 ], [ 0, %bb.h ] ; 2 uses
  %.046.i182 = phi ptr [ %i.am, %.lr.ph.i180 ], [ %i.p, %bb.h ]
  %i.al = add nuw nsw i32 %.07.i181, 1
  %i.am = load ptr, ptr %.046.i182, align 8, !tbaa !51 ; 2 uses
  %.not.i183 = icmp eq ptr %i.am, null
  br i1 %.not.i183, label %.lr.ph.i187, label %.lr.ph.i180, !llvm.loop !0

.lr.ph.i187:                                      ; preds = %.lr.ph.i180, %.lr.ph.i187
  %.07.i188 = phi i32 [ %i.an, %.lr.ph.i187 ], [ 0, %.lr.ph.i180 ] ; 2 uses
  %.046.i189 = phi ptr [ %i.ao, %.lr.ph.i187 ], [ %i.n, %.lr.ph.i180 ]
  %i.an = add nuw nsw i32 %.07.i188, 1
  %i.ao = load ptr, ptr %.046.i189, align 8, !tbaa !51 ; 2 uses
  %.not.i190 = icmp eq ptr %i.ao, null
  br i1 %.not.i190, label %Min_CoverCountCubes.exit192, label %.lr.ph.i187, !llvm.loop !0

Min_CoverCountCubes.exit192:                      ; preds = %.lr.ph.i187
  %i.ap = icmp samesign ult i32 %.07.i181, %.07.i188
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Min_CoverCountCubes.exit192, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %Min_CoverCountCubes.exit192, %Min_CoverCountCubes.exit178, %bb.g, %Min_CoverCountCubes.exit136, %bb.d, %Min_CoverCountCubes.exit164, %bb.f
  %.079 = phi ptr [ undef, %bb.g ], [ %i.l, %bb.d ], [ %i.p, %bb.i ], [ undef, %Min_CoverCountCubes.exit192 ], [ undef, %Min_CoverCountCubes.exit178 ], [ %i.l, %Min_CoverCountCubes.exit136 ], [ %i.n, %Min_CoverCountCubes.exit164 ], [ %i.n, %bb.f ] ; 4 uses
  %i.aq = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %Min_CoverCountCubes.exit192 ], [ 0, %Min_CoverCountCubes.exit178 ], [ 0, %Min_CoverCountCubes.exit136 ], [ 1, %Min_CoverCountCubes.exit164 ], [ 1, %bb.f ]
  %.0 = phi i8 [ 0, %bb.g ], [ 49, %bb.d ], [ 120, %bb.i ], [ 0, %Min_CoverCountCubes.exit192 ], [ 0, %Min_CoverCountCubes.exit178 ], [ 49, %Min_CoverCountCubes.exit136 ], [ 48, %Min_CoverCountCubes.exit164 ], [ 48, %bb.f ]
  %i.ar = getelementptr i8, ptr %i.k, i64 4       ; 4 uses
  %.val110220 = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.as = icmp sgt i32 %.val110220, 0
  br i1 %i.as, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.k, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.val102 = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val102, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15
  %i.aw = load ptr, ptr %2, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %i.aw, i64 32
  %.val104 = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr i8, ptr %.val104, i64 8
  %.val104.val = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.az = sext i32 %i.av to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %.val104.val, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bc = tail call ptr @Abc_NtkCovDerive_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.bb) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val110 = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.bd = sext i32 %.val110 to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.k, label %.critedge2, !llvm.loop !65

.critedge2:                                       ; preds = %bb.k, %bb.j
  %.not5.i193 = icmp eq ptr %.079, null
  br i1 %.not5.i193, label %Min_CoverCountCubes.exit199.thread, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.critedge2, %.lr.ph.i194
  %.07.i195 = phi i32 [ %i.bf, %.lr.ph.i194 ], [ 0, %.critedge2 ] ; 2 uses
  %.046.i196 = phi ptr [ %i.bg, %.lr.ph.i194 ], [ %.079, %.critedge2 ]
  %i.bf = add nuw nsw i32 %.07.i195, 1
  %i.bg = load ptr, ptr %.046.i196, align 8, !tbaa !51 ; 2 uses
  %.not.i197 = icmp eq ptr %i.bg, null
  br i1 %.not.i197, label %Min_CoverCountCubes.exit199, label %.lr.ph.i194, !llvm.loop !0

Min_CoverCountCubes.exit199:                      ; preds = %.lr.ph.i194
  %cond = icmp eq i32 %.07.i195, 0
  br i1 %cond, label %bb.l, label %bb.m

Min_CoverCountCubes.exit199.thread:               ; preds = %.critedge2
  %i.bh = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %1) #7
  br label %bb.p

bb.l:                                             ; preds = %Min_CoverCountCubes.exit199
  %i.bi = tail call ptr @Abc_NtkCovDeriveCube(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %.079, ptr noundef nonnull %i.k, i32 noundef %i.aq)
  br label %bb.p

bb.m:                                             ; preds = %Min_CoverCountCubes.exit199
  %i.bj = tail call ptr @Abc_NtkCreateObj(ptr noundef %1, i32 noundef 7) #7 ; 3 uses
  %.val109222 = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.bk = icmp sgt i32 %.val109222, 0
  br i1 %i.bk, label %.lr.ph224, label %.critedge4

.lr.ph224:                                        ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %i.k, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph224, %bb.n
  %indvars.iv226 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next227, %bb.n ] ; 2 uses
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv226
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !15
  %i.bo = load ptr, ptr %2, align 8, !tbaa !19
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %.val103 = load ptr, ptr %i.bp, align 8, !tbaa !33
  %i.bq = getelementptr i8, ptr %.val103, i64 8
  %.val103.val = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.val103.val, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.bj, ptr noundef %i.bv) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %.val109 = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.bw = sext i32 %.val109 to i64
  %i.bx = icmp slt i64 %indvars.iv.next227, %i.bw
  br i1 %i.bx, label %bb.n, label %.critedge4, !llvm.loop !66

.critedge4:                                       ; preds = %bb.n, %bb.m
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !68
  store i32 100, ptr %i.by, align 8, !tbaa !69
  %i.ca = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #8
end_hunk_0
