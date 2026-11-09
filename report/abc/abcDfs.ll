Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDfs?download=true
inline.NumInlined: 561
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Vec_VecPush:bb.a

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.m, %Vec_PtrGrow.exit12.sink.split.i
  %i.an = phi i32 [ %i.v, %bb.h ], [ %i.v, %bb.m ], [ %.pre19, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.u, align 4, !tbaa !40
  %i.ar = sext i32 %i.an to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar
  store ptr %2, ptr %i.as, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_DfsLevelized(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %Abc_NtkIncrementTravId.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.f, align 4, !tbaa !40 ; 2 uses
  %i.g = add nsw i32 %.val.val.i, 500             ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !43
  %.not.i.i.i = icmp slt i32 %i.h, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %Vec_IntGrow.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !44
  store i32 %i.g, ptr %i.d, align 8, !tbaa !43
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.m = icmp sgt i32 %.val.val.i, -500
  br i1 %i.m, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.n = zext nneg i32 %i.g to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.o, i1 false), !tbaa !37
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i32 %i.g, ptr %i.p, align 4, !tbaa !42
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %bb.a, %Vec_IntFill.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !45
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !73
  store i32 100, ptr %i.t, align 8, !tbaa !75
  %i.v = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !74
  %i.x = getelementptr i8, ptr %0, i64 20
  %.val13 = load i32, ptr %i.x, align 4
  %i.y = and i32 %.val13, 15
  %.not = icmp eq i32 %i.y, 7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_NtkIncrementTravId.exit
  tail call void @Abc_DfsLevelizedTfo_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br label %.critedge

bb.e:                                             ; preds = %Abc_NtkIncrementTravId.exit
  %i.z = getelementptr i8, ptr %0, i64 16
  %.val12 = load i32, ptr %i.z, align 8, !tbaa !16
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr nonnull %i.a, i32 %.val12)
  %i.aa = getelementptr i8, ptr %0, i64 44        ; 2 uses
  %.val1417 = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ab = icmp sgt i32 %.val1417, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.val15 = load ptr, ptr %0, align 8, !tbaa !15
  %.val16 = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ad = getelementptr i8, ptr %.val15, i64 32
  %.val15.val = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr i8, ptr %.val15.val, i64 8
  %.val15.val.val = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.val15.val.val, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  tail call void @Abc_DfsLevelizedTfo_rec(ptr noundef %i.aj, ptr noundef nonnull %i.t)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val14 = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ak = sext i32 %.val14 to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.f, label %.critedge, !llvm.loop !170

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d
  ret ptr %i.t
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 1048576) i32 @Abc_NtkLevel_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 7 uses
  %.val25 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.b = and i32 %.val25, 15
  switch i32 %i.b, label %bb.b [
    i32 5, label %.critedge.thread
    i32 2, label %.critedge.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef nonnull %0)
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.020.in.pre = load i32, ptr %i.a, align 4
  br label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val24 = load i32, ptr %i.d, align 8, !tbaa !16
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val24)
  %i.e = load i32, ptr %i.a, align 4
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  store i32 %i.f, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val2735 = load i32, ptr %i.g, align 4, !tbaa !31
  %i.h = icmp sgt i32 %.val2735, 0
  br i1 %i.h, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.val28 = load ptr, ptr %0, align 8, !tbaa !15
  %.val29 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr i8, ptr %.val28, i64 32
  %.val28.val = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr i8, ptr %.val28.val, i64 8
  %.val28.val.val = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val28.val.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %.val.i = load i32, ptr %i.q, align 8, !tbaa !30
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.e, label %Abc_ObjFanin0Ntk.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %.val4.i = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %.val3.val.i = load ptr, ptr %i.s, align 8, !tbaa !33
  %.val4.val.i = load i32, ptr %.val4.i, align 4, !tbaa !37
  %i.t = getelementptr i8, ptr %.val3.val.i, i64 8
  %.val3.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.u = sext i32 %.val4.val.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  br label %Abc_ObjFanin0Ntk.exit

Abc_ObjFanin0Ntk.exit:                            ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.p, %bb.d ]
  %i.y = tail call i32 @Abc_NtkLevel_rec(ptr noundef %i.x) ; 2 uses
  %i.z = load i32, ptr %i.a, align 4              ; 3 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = icmp samesign ult i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Abc_ObjFanin0Ntk.exit
  %i.ac = shl nuw i32 %i.y, 12
  %i.ad = and i32 %i.z, 4095
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %Abc_ObjFanin0Ntk.exit, %bb.f
  %.val5.i40 = phi i32 [ %i.z, %Abc_ObjFanin0Ntk.exit ], [ %i.ae, %bb.f ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val27 = load i32, ptr %i.g, align 4, !tbaa !31 ; 3 uses
  %i.af = sext i32 %.val27 to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.d, label %.critedge, !llvm.loop !171

.critedge:                                        ; preds = %bb.g
  %i.ah = icmp sgt i32 %.val27, 0
  br i1 %i.ah, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val.i30 = load i32, ptr %i.aj, align 4, !tbaa !47
  %.not.i31 = icmp eq i32 %.val.i30, 4
  br i1 %.not.i31, label %bb.i, label %Abc_ObjIsBarBuf.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = and i32 %.val5.i40, 15
  %.not7.i = icmp eq i32 %i.ak, 7
  %i.al = icmp eq i32 %.val27, 1
  %or.cond = and i1 %i.al, %.not7.i
  br i1 %or.cond, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge.thread, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.h, %bb.i, %Abc_ObjIsBarBuf.exit
  %1 = and i32 %.val5.i40, -4096
  %i.ao = add i32 %1, 4096
  %2 = and i32 %.val5.i40, 4095
  %3 = or disjoint i32 %i.ao, %2                  ; 2 uses
  store i32 %3, ptr %i.a, align 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %._crit_edge, %bb.a, %bb.a, %.critedge, %Abc_ObjIsBarBuf.exit, %Abc_ObjIsBarBuf.exit.thread
  %.020.in = phi i32 [ %.020.in.pre, %._crit_edge ], [ %.val25, %bb.a ], [ %.val25, %bb.a ], [ %.val5.i40, %.critedge ], [ %.val5.i40, %Abc_ObjIsBarBuf.exit ], [ %3, %Abc_ObjIsBarBuf.exit.thread ], [ %i.f, %bb.c ]
  %.020 = lshr i32 %.020.in, 12
  ret i32 %.020
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 1048576) i32 @Abc_NtkLevelReverse_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 7 uses
  %.val26 = load i32, ptr %i.a, align 4           ; 2 uses
  %i.b = and i32 %.val26, 15
  %i.c = add nsw i32 %i.b, -5
  %narrow.i = icmp ult i32 %i.c, -2
  br i1 %narrow.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef nonnull %0)
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.020.in.pre = load i32, ptr %i.a, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24 = load i32, ptr %i.e, align 8, !tbaa !16
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val24)
  %i.f = load i32, ptr %i.a, align 4
  %i.g = and i32 %i.f, 4095                       ; 2 uses
  store i32 %i.g, ptr %i.a, align 4
  %i.h = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val2733 = load i32, ptr %i.h, align 4, !tbaa !52
  %i.i = icmp sgt i32 %.val2733, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.val28 = load ptr, ptr %0, align 8, !tbaa !15
  %.val29 = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr i8, ptr %.val28, i64 32
  %.val28.val = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr i8, ptr %.val28.val, i64 8
  %.val28.val.val = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val28.val.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %.val.i = load i32, ptr %i.r, align 8, !tbaa !30
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.e, label %Abc_ObjFanout0Ntk.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 48
  %.val4.i = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr i8, ptr %i.r, i64 32
  %.val3.val.i = load ptr, ptr %i.t, align 8, !tbaa !33
  %.val4.val.i = load i32, ptr %.val4.i, align 4, !tbaa !37
  %i.u = getelementptr i8, ptr %.val3.val.i, i64 8
  %.val3.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.v = sext i32 %.val4.val.i to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %Abc_ObjFanout0Ntk.exit

Abc_ObjFanout0Ntk.exit:                           ; preds = %bb.d, %bb.e
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.q, %bb.d ]
  %i.z = tail call i32 @Abc_NtkLevelReverse_rec(ptr noundef %i.y) ; 2 uses
  %i.aa = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ab = lshr i32 %i.aa, 12
  %i.ac = icmp samesign ult i32 %i.ab, %i.z
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Abc_ObjFanout0Ntk.exit
  %i.ad = shl nuw i32 %i.z, 12
  %i.ae = and i32 %i.aa, 4095
  %i.af = or disjoint i32 %i.ae, %i.ad            ; 2 uses
  store i32 %i.af, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %Abc_ObjFanout0Ntk.exit, %bb.f
  %.val5.i37 = phi i32 [ %i.aa, %Abc_ObjFanout0Ntk.exit ], [ %i.af, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val27 = load i32, ptr %i.h, align 4, !tbaa !52
  %i.ag = sext i32 %.val27 to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.d, label %.critedge, !llvm.loop !172

.critedge:                                        ; preds = %bb.g, %bb.c
  %i.ai = phi i32 [ %i.g, %bb.c ], [ %.val5.i37, %bb.g ] ; 5 uses
  %i.aj = getelementptr i8, ptr %0, i64 28
  %.val25 = load i32, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.ak = icmp sgt i32 %.val25, 0
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %i.al = load ptr, ptr %0, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val.i30 = load i32, ptr %i.am, align 4, !tbaa !47
  %.not.i31 = icmp eq i32 %.val.i30, 4
  br i1 %.not.i31, label %bb.i, label %Abc_ObjIsBarBuf.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %i.ai, 15
  %.not7.i = icmp eq i32 %i.an, 7
  %i.ao = icmp eq i32 %.val25, 1
  %or.cond = and i1 %i.ao, %.not7.i
  br i1 %or.cond, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.j, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.h, %bb.i, %Abc_ObjIsBarBuf.exit
  %1 = and i32 %i.ai, -4096
  %i.ar = add i32 %1, 4096
  %2 = and i32 %i.ai, 4095
  %3 = or disjoint i32 %i.ar, %2                  ; 2 uses
  store i32 %3, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a, %.critedge, %Abc_ObjIsBarBuf.exit, %Abc_ObjIsBarBuf.exit.thread
  %.020.in = phi i32 [ %.020.in.pre, %._crit_edge ], [ %.val26, %bb.a ], [ %i.ai, %.critedge ], [ %i.ai, %Abc_ObjIsBarBuf.exit ], [ %3, %Abc_ObjIsBarBuf.exit.thread ]
  %.020 = lshr i32 %.020.in, 12
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkLevelize(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @Abc_NtkLevel(ptr noundef %0)
  %i.b = add nuw nsw i32 %i.a, 1                  ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 range(i32 1, -2147483648) %i.b, i32 8) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !75
  %i.d = shl nuw nsw i32 %spec.store.select.i.i, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !74
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store ptr %calloc.i, ptr %i.h, align 8, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_VecStart.exit, label %bb.b, !llvm.loop !173

Vec_VecStart.exit:                                ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.b, ptr %i.i, align 4, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val15 = load i32, ptr %i.l, align 4, !tbaa !40
  %i.m = icmp sgt i32 %.val15, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_VecStart.exit, %bb.e
  %i.n = phi ptr [ %i.v, %bb.e ], [ %i.k, %Vec_VecStart.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %Vec_VecStart.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val13.val = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val13.val, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr i8, ptr %i.q, i64 20
  %.val14 = load i32, ptr %i.s, align 4           ; 2 uses
  %i.t = and i32 %.val14, 15
  %.not = icmp eq i32 %i.t, 7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i32 %.val14, 12
  tail call fastcc void @Vec_VecPush(ptr noundef nonnull %i.c, i32 noundef %i.u, ptr noundef nonnull %i.q)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.v = phi ptr [ %.pre, %bb.d ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val = load i32, ptr %i.w, align 4, !tbaa !40
  %i.x = sext i32 %.val to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %bb.e, %Vec_VecStart.exit
  ret ptr %i.c
}

declare float @Abc_NodeReadArrivalWorst(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 1048576) i32 @Abc_NtkLevelReverse(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val2628 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr i8, ptr %.val2628, i64 4
  %.val26.val29 = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = icmp sgt i32 %.val26.val29, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val2631 = phi ptr [ %.val26, %.lr.ph ], [ %.val2628, %bb.a ]
  %i.d = getelementptr i8, ptr %.val2631, i64 8
  %.val27.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val27.val, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 4095
  store i32 %i.i, ptr %i.g, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 2 uses
  %i.j = getelementptr i8, ptr %.val26, i64 4
  %.val26.val = load i32, ptr %i.j, align 4, !tbaa !40
  %i.k = sext i32 %.val26.val to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !175

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.b, label %.critedge.Abc_NtkIncrementTravId.exit_crit_edge

.critedge.Abc_NtkIncrementTravId.exit_crit_edge:  ; preds = %.critedge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert40 = getelementptr i8, ptr %.pre, i64 4
  %.val32.pre = load i32, ptr %.phi.trans.insert40, align 4, !tbaa !40
  br label %Abc_NtkIncrementTravId.exit

bb.b:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !33 ; 2 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.q, align 4, !tbaa !40 ; 3 uses
  %i.r = add nsw i32 %.val.val.i, 500             ; 5 uses
  %i.s = load i32, ptr %i.o, align 8, !tbaa !43
  %.not.i.i.i = icmp slt i32 %i.s, %i.r
  br i1 %.not.i.i.i, label %bb.c, label %Vec_IntGrow.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.t = sext i32 %i.r to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #25 ; 2 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !44
  store i32 %i.r, ptr %i.o, align 8, !tbaa !43
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.v, %bb.c ], [ null, %bb.b ]
  %i.x = icmp sgt i32 %.val.val.i, -500
  br i1 %i.x, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.y = zext nneg i32 %i.r to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.z, i1 false), !tbaa !37
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.r, ptr %i.aa, align 4, !tbaa !42
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %.critedge.Abc_NtkIncrementTravId.exit_crit_edge, %Vec_IntFill.exit.i
  %.val32 = phi i32 [ %.val32.pre, %.critedge.Abc_NtkIncrementTravId.exit_crit_edge ], [ %.val.val.i, %Vec_IntFill.exit.i ]
  %i.ab = phi ptr [ %.pre, %.critedge.Abc_NtkIncrementTravId.exit_crit_edge ], [ %.val.i, %Vec_IntFill.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = icmp sgt i32 %.val32, 0
  br i1 %i.ag, label %.lr.ph35, label %.critedge2

.lr.ph35:                                         ; preds = %Abc_NtkIncrementTravId.exit, %bb.f
  %i.ah = phi ptr [ %i.ar, %bb.f ], [ %i.ab, %Abc_NtkIncrementTravId.exit ] ; 3 uses
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.f ], [ 0, %Abc_NtkIncrementTravId.exit ] ; 2 uses
  %.034 = phi i32 [ %.1, %bb.f ], [ 0, %Abc_NtkIncrementTravId.exit ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val24.val = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val24.val, i64 %indvars.iv37
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph35
  %i.am = getelementptr i8, ptr %i.ak, i64 20     ; 2 uses
  %.val25 = load i32, ptr %i.am, align 4
  %i.an = and i32 %.val25, 15
  %.not = icmp eq i32 %i.an, 7
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call i32 @Abc_NtkLevelReverse_rec(ptr noundef nonnull %i.ak) ; 0 uses
  %i.ap = load i32, ptr %i.am, align 4
  %i.aq = lshr i32 %i.ap, 12
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.034, i32 %i.aq)
  %.pre42 = load ptr, ptr %i.af, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph35
  %i.ar = phi ptr [ %i.ah, %.lr.ph35 ], [ %i.ah, %bb.d ], [ %.pre42, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.034, %.lr.ph35 ], [ %.034, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val = load i32, ptr %i.as, align 4, !tbaa !40
  %i.at = sext i32 %.val to i64
  %i.au = icmp slt i64 %indvars.iv.next38, %i.at
  br i1 %i.au, label %.lr.ph35, label %.critedge2, !llvm.loop !176
end_hunk_0
