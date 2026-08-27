Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDfs?download=true
inline.NumInlined: 561
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NtkDfsReverse:bb.a

.critedge2:                                       ; preds = %bb.e, %Abc_ObjFanout0Ntk.exit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %.val42 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.ax = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.ay = sext i32 %.val42.val to i64
  %i.az = icmp slt i64 %indvars.iv.next59, %i.ay
  br i1 %i.az, label %.lr.ph53, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %.critedge2, %Abc_NtkIncrementTravId.exit
  %.val35 = load i32, ptr %0, align 8, !tbaa !16
  %.not = icmp eq i32 %.val35, 3
  br i1 %.not, label %.critedge4, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val3654 = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.bd = icmp sgt i32 %.val3654, 0
  br i1 %i.bd, label %.lr.ph56, label %.critedge4

.lr.ph56:                                         ; preds = %.preheader, %bb.q
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.be = phi ptr [ %i.cd, %bb.q ], [ %i.bb, %.preheader ]
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val37.val = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val37.val, i64 %indvars.iv61
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.q, label %bb.f

bb.f:                                             ; preds = %.lr.ph56
  %i.bj = getelementptr i8, ptr %i.bh, i64 20
  %.val38 = load i32, ptr %i.bj, align 4
  %i.bk = and i32 %.val38, 15
  %.not46 = icmp eq i32 %i.bk, 7
  br i1 %.not46, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.bl = tail call i32 @Abc_NodeIsConst(ptr noundef nonnull %i.bh) #26
  %.not33 = icmp eq i32 %i.bl, 0
  br i1 %.not33, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.t, align 4, !tbaa !40  ; 7 uses
  %i.bn = load i32, ptr %i.s, align 8, !tbaa !41
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.i, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp slt i32 %i.bm, 16
  br i1 %i.bp, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !33  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bs = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.bt = icmp samesign ult i32 %i.bm, 1073741823
  %i.bu = shl nuw nsw i32 %i.bm, 1
  %spec.select.i = select i1 %i.bt, i32 %i.bu, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.bm, %spec.select.i
  %.pre64 = load ptr, ptr %i.v, align 8, !tbaa !33 ; 3 uses
  br i1 %.not.i10.i, label %bb.n, label %Vec_PtrPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i11.i = icmp eq ptr %.pre64, null
  %i.bv = zext nneg i32 %spec.select.i to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %.pre64, i64 noundef %i.bw) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bw) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge = phi ptr [ %i.bs, %bb.l ], [ %i.br, %bb.k ], [ %i.bx, %bb.o ], [ %i.by, %bb.p ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ]
  store ptr %storemerge, ptr %i.v, align 8, !tbaa !33
  store i32 %spec.select.sink.i, ptr %i.s, align 8, !tbaa !41
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.m, %Vec_PtrGrow.exit12.sink.split.i
  %i.bz = phi ptr [ %.pre, %.Vec_PtrPush.exit_crit_edge ], [ %.pre64, %bb.m ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.ca = add nsw i32 %i.bm, 1
  store i32 %i.ca, ptr %i.t, align 4, !tbaa !40
  %i.cb = sext i32 %i.bm to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store ptr %i.bh, ptr %i.cc, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %.lr.ph56, %Vec_PtrPush.exit, %bb.g
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val36 = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cf = sext i32 %.val36 to i64
  %i.cg = icmp slt i64 %indvars.iv.next62, %i.cf
  br i1 %i.cg, label %.lr.ph56, label %.critedge4, !llvm.loop !68

.critedge4:                                       ; preds = %bb.q, %.preheader, %.critedge
  ret ptr %i.s
}

declare i32 @Abc_NodeIsConst(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_NtkDfsReverseNodes_rec(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val19 = load i32, ptr %i.b, align 8, !tbaa !15
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val19)
  %i.c = getelementptr i8, ptr %0, i64 20
  %.val21 = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val21, 15
  %i.e = add nsw i32 %i.d, -5
  %narrow.i = icmp ult i32 %i.e, -2
  br i1 %narrow.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !16
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.d, label %Abc_ObjFanout0Ntk.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr i8, ptr %i.f, i64 32
  %.val3.val.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %.val4.val.i = load i32, ptr %.val4.i, align 4, !tbaa !36
  %i.i = getelementptr i8, ptr %.val3.val.i, i64 8
  %.val3.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.j = sext i32 %.val4.val.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  br label %Abc_ObjFanout0Ntk.exit

Abc_ObjFanout0Ntk.exit:                           ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %0, %bb.c ]   ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 44       ; 2 uses
  %.val2229 = load i32, ptr %i.n, align 4, !tbaa !63
  %i.o = icmp sgt i32 %.val2229, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_ObjFanout0Ntk.exit
  %i.p = getelementptr i8, ptr %i.m, i64 48
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.val23 = load ptr, ptr %i.m, align 8, !tbaa !8
  %.val24 = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr i8, ptr %.val23, i64 32
  %.val23.val = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr i8, ptr %.val23.val, i64 8
  %.val23.val.val = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val24, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val23.val.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  tail call void @Abc_NtkDfsReverseNodes_rec(ptr noundef %i.w, ptr noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val22 = load i32, ptr %i.n, align 4, !tbaa !63
  %i.x = sext i32 %.val22 to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.e, label %.critedge, !llvm.loop !69

.critedge:                                        ; preds = %bb.e, %Abc_ObjFanout0Ntk.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = lshr i32 %i.aa, 12                      ; 6 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40 ; 2 uses
  %.not.i26.not = icmp slt i32 %i.ab, %i.ae
  br i1 %.not.i26.not, label %Vec_PtrFillExtra.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.af = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ag = shl nsw i32 %i.af, 1                    ; 3 uses
  %.not27 = icmp slt i32 %i.ab, %i.ag
  br i1 %.not27, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ai, null
  %i.aj = shl nuw nsw i32 %i.ac, 3
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !33
  br label %Vec_PtrGrow.exit.sink.split.i

bb.k:                                             ; preds = %bb.f
  %.not.i.i.not = icmp sgt i32 %i.af, %i.ab
  br i1 %.not.i.i.not, label %Vec_PtrGrow.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.ap, null
  %i.aq = zext nneg i32 %i.ag to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  br i1 %.not9.i23.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.ap, i64 noundef %i.ar) #24
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ar) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi ptr [ %i.as, %bb.m ], [ %i.at, %bb.n ]
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !33
  br label %Vec_PtrGrow.exit.sink.split.i

Vec_PtrGrow.exit.sink.split.i:                    ; preds = %bb.o, %bb.j
  %.sink.i = phi i32 [ %i.ag, %bb.o ], [ %i.ac, %bb.j ]
  store i32 %.sink.i, ptr %1, align 8, !tbaa !41
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !40
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %Vec_PtrGrow.exit.sink.split.i, %bb.k
  %2 = phi i32 [ %.pre, %Vec_PtrGrow.exit.sink.split.i ], [ %i.ae, %bb.k ] ; 2 uses
  %.not28 = icmp sgt i32 %2, %i.ab
  br i1 %.not28, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_PtrGrow.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aw = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.ac to i64
  %i.ax = lshr i32 %i.aa, 12
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 1
  %i.ba = sub nsw i64 %i.az, %i.aw
  %i.bb = sub nsw i64 %i.ay, %i.aw
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv.i.prol
  store ptr null, ptr %i.bd, align 8, !tbaa !37
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !70

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.aw, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.be = icmp ult i64 %i.bb, 3
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  store ptr null, ptr %i.bg, align 8, !tbaa !37
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store ptr null, ptr %i.bj, align 8, !tbaa !37
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !37
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  store ptr null, ptr %i.bp, align 8, !tbaa !37
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !72

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %Vec_PtrGrow.exit.i
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !40
  %.pre32 = load i32, ptr %i.z, align 4
  %.pre33 = lshr i32 %.pre32, 12
  br label %Vec_PtrFillExtra.exit

Vec_PtrFillExtra.exit:                            ; preds = %.critedge, %._crit_edge.i
  %.pre-phi = phi i32 [ %i.ab, %.critedge ], [ %.pre33, %._crit_edge.i ]
  %i.bq = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val20 = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.br = zext nneg i32 %.pre-phi to i64          ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !49
  %.val25 = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.br
  store ptr %i.m, ptr %i.bv, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.a, %Vec_PtrFillExtra.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkDfsReverseNodes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %Abc_NtkIncrementTravId.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.e, align 4, !tbaa !40 ; 2 uses
  %i.f = add nsw i32 %.val.val.i, 500             ; 5 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !43
  %.not.i.i.i = icmp slt i32 %i.g, %i.f
  br i1 %.not.i.i.i, label %bb.c, label %Vec_IntGrow.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #25 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !44
  store i32 %i.f, ptr %i.c, align 8, !tbaa !43
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  %i.l = icmp sgt i32 %.val.val.i, -500
  br i1 %i.l, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.m = zext nneg i32 %i.f to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.n, i1 false), !tbaa !36
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.f, ptr %i.o, align 4, !tbaa !42
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %bb.a, %Vec_IntFill.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !45
  %i.s = tail call i32 @Abc_AigLevel(ptr noundef nonnull %0) #26 ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %or.cond.i.i = icmp ult i32 %i.s, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.t ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.u, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.d

bb.d:                                             ; preds = %Abc_NtkIncrementTravId.exit
  %i.v = sext i32 %spec.store.select.i.i to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #25
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %Abc_NtkIncrementTravId.exit, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ null, %Abc_NtkIncrementTravId.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !33
  store i32 %i.t, ptr %i.z, align 4, !tbaa !40
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph26.preheader, label %._crit_edge

.lr.ph26.preheader:                               ; preds = %Vec_PtrStart.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph26.preheader, %.critedge
  %indvars.iv28 = phi i64 [ 0, %.lr.ph26.preheader ], [ %indvars.iv.next29, %.critedge ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv28
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 5 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val17 = load i32, ptr %i.ag, align 8, !tbaa !15
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val17)
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %.val.i21 = load i32, ptr %i.ah, align 8, !tbaa !16
  %.not.i22 = icmp eq i32 %.val.i21, 1
  br i1 %.not.i22, label %bb.e, label %Abc_ObjFanout0Ntk.exit

bb.e:                                             ; preds = %.lr.ph26
  %i.ai = getelementptr i8, ptr %i.af, i64 48
  %.val4.i = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %.val3.val.i = load ptr, ptr %i.aj, align 8, !tbaa !32
  %.val4.val.i = load i32, ptr %.val4.i, align 4, !tbaa !36
  %i.ak = getelementptr i8, ptr %.val3.val.i, i64 8
  %.val3.val.val.i = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.al = sext i32 %.val4.val.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  br label %Abc_ObjFanout0Ntk.exit

Abc_ObjFanout0Ntk.exit:                           ; preds = %.lr.ph26, %bb.e
  %i.ao = phi ptr [ %i.an, %bb.e ], [ %i.af, %.lr.ph26 ] ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 44     ; 2 uses
  %.val1823 = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.aq = icmp sgt i32 %.val1823, 0
  br i1 %i.aq, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_ObjFanout0Ntk.exit
  %i.ar = getelementptr i8, ptr %i.ao, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.val19 = load ptr, ptr %i.ao, align 8, !tbaa !8
  %.val20 = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.as = getelementptr i8, ptr %.val19, i64 32
  %.val19.val = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr i8, ptr %.val19.val, i64 8
  %.val19.val.val = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val20, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val19.val.val, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37
end_hunk_0
