Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCSat?download=true
inline.NumInlined: 233
inline.NumDeleted: 79
begin_hunk_0_@Cbs_ManSolveRoots:bb.a
Abc_Clock.exit85:                                 ; preds = %.critedge, %bb.ao
  %.0.i84 = phi i64 [ %i.gb, %bb.ao ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.gc = add i64 %.0.i84, %.0.i.neg
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !86
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %Abc_Clock.exit85
  call void @Cbs_ManSatPrintStats(ptr noundef nonnull %0)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %Abc_Clock.exit85
  store ptr %i.i, ptr %2, align 8, !tbaa !101
  ret ptr %i.p
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cbs_ManAnalyze(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 12 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %Cbs_QuePush.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %i.c, 1                      ; 3 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = sext i32 %i.g to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #27
  %.pre12.pre.i = load i32, ptr %i.b, align 4, !tbaa !46
  %.pre.pre = load i32, ptr %i.d, align 8, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %i.g, %bb.d ]
  %.pre12.i = phi i32 [ %.pre12.pre.i, %bb.c ], [ %i.c, %bb.d ]
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !48
  br label %Cbs_QuePush.exit

Cbs_QuePush.exit:                                 ; preds = %._crit_edge.i, %bb.e
  %i.o = phi i32 [ %i.e, %._crit_edge.i ], [ %.pre, %bb.e ] ; 3 uses
  %i.p = phi i32 [ %i.c, %._crit_edge.i ], [ %.pre12.i, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.r = add nsw i32 %i.p, 1                      ; 3 uses
  store i32 %i.r, ptr %i.b, align 4, !tbaa !46
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  store ptr null, ptr %i.t, align 8, !tbaa !44
  %i.u = icmp eq i32 %i.r, %i.o
  br i1 %i.u, label %bb.f, label %Cbs_QuePush.exit17

bb.f:                                             ; preds = %Cbs_QuePush.exit
  %i.v = shl nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.v, ptr %i.d, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = sext i32 %i.v to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.y) #27 ; 2 uses
  %.pre12.pre.i15 = load i32, ptr %i.b, align 4, !tbaa !46
  %.pre32.pre = load i32, ptr %i.d, align 8, !tbaa !47
  store ptr %i.z, ptr %i.w, align 8, !tbaa !48
  br label %Cbs_QuePush.exit17

Cbs_QuePush.exit17:                               ; preds = %Cbs_QuePush.exit, %bb.f
  %i.aa = phi i32 [ %.pre32.pre, %bb.f ], [ %i.o, %Cbs_QuePush.exit ] ; 2 uses
  %i.ab = phi i32 [ %.pre12.pre.i15, %bb.f ], [ %i.r, %Cbs_QuePush.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.f ], [ %i.q, %Cbs_QuePush.exit ] ; 3 uses
  %i.ad = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !46
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %2, ptr %i.af, align 8, !tbaa !44
  %i.ag = icmp eq i32 %i.ad, %i.aa
  br i1 %i.ag, label %bb.g, label %Cbs_QuePush.exit24

bb.g:                                             ; preds = %Cbs_QuePush.exit17
  %i.ah = shl nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = sext i32 %i.ah to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #27 ; 2 uses
  %.pre12.pre.i22 = load i32, ptr %i.b, align 4, !tbaa !46
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !48
  br label %Cbs_QuePush.exit24

Cbs_QuePush.exit24:                               ; preds = %Cbs_QuePush.exit17, %bb.g
  %i.am = phi i32 [ %.pre12.pre.i22, %bb.g ], [ %i.ad, %Cbs_QuePush.exit17 ] ; 2 uses
  %i.an = phi ptr [ %i.al, %bb.g ], [ %i.ac, %Cbs_QuePush.exit17 ] ; 3 uses
  %i.ao = add nsw i32 %i.am, 1                    ; 4 uses
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !46
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  store ptr %3, ptr %i.aq, align 8, !tbaa !44
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %Cbs_QuePush.exit24
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !47
  %i.as = icmp eq i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.i, label %Cbs_QuePush.exit31

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i32 %i.ao, 1                    ; 2 uses
  store i32 %i.at, ptr %i.d, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.an, i64 noundef %i.aw) #27 ; 2 uses
  %.pre12.pre.i29 = load i32, ptr %i.b, align 4, !tbaa !46
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !48
  br label %Cbs_QuePush.exit31

Cbs_QuePush.exit31:                               ; preds = %bb.h, %bb.i
  %i.ay = phi i32 [ %.pre12.pre.i29, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.an, %bb.h ]
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !46
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %4, ptr %i.bc, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %Cbs_QuePush.exit31, %Cbs_QuePush.exit24
  tail call fastcc void @Cbs_ManDeriveReason(ptr noundef nonnull %0, i32 noundef %1)
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !51
  %i.be = load i32, ptr %i.b, align 4, !tbaa !46  ; 4 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !47
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !48
  br label %Cbs_QueFinish.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = shl nsw i32 %i.be, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 3                    ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #27
  %.pre12.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !46
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre12.i.i = phi i32 [ %.pre12.pre.i.i, %bb.l ], [ %i.be, %bb.m ]
  %i.bo = phi ptr [ %i.bm, %bb.l ], [ %i.bn, %bb.m ] ; 2 uses
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !48
  br label %Cbs_QueFinish.exit

Cbs_QueFinish.exit:                               ; preds = %._crit_edge.i.i, %bb.n
  %i.bp = phi i32 [ %i.be, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.n ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bo, %bb.n ]
  %i.br = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.br, ptr %i.b, align 4, !tbaa !46
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store ptr null, ptr %i.bt, align 8, !tbaa !44
  store i32 %i.br, ptr %i.a, align 8, !tbaa !51
  ret i32 %i.bd
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Cbs_ManDeriveReason(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.e = load i32, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  store i32 %i.f, ptr %i.g, align 4, !tbaa !46
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.k = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.m = sext i32 %i.e to i64
  %i.n = add nsw i64 %i.m, 1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.cs, %bb.w ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.062 = phi i32 [ %i.f, %.lr.ph ], [ %.1, %bb.w ] ; 6 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 8 uses
  %i.r = load i64, ptr %i.q, align 4              ; 2 uses
  %i.s = and i64 %i.r, 1073741824
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i64 %i.r, -1073741825
  store i64 %i.t, ptr %i.q, align 4
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !39   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 7 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !37
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 128) #27
  br label %Vec_PtrGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ae = phi ptr [ %i.ac, %bb.f ], [ %i.ad, %bb.g ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !38
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.af = icmp samesign ult i32 %i.w, 1073741823
  %i.ag = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = phi ptr [ %i.al, %bb.j ], [ %i.am, %bb.k ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !38
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.l, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.u, align 8, !tbaa !37
  %.pre71 = load i32, ptr %i.v, align 4, !tbaa !36
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %i.ao = phi i32 [ %i.w, %bb.c ], [ %i.w, %bb.h ], [ %.pre71, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !36
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.q, ptr %i.at, align 8, !tbaa !134
  %.val = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.au = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %.val48 = load i32, ptr %i.au, align 4, !tbaa !73
  %i.av = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !32 ; 4 uses
  %i.aw = mul i32 %.val48, 3                      ; 4 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = icmp slt i32 %i.az, %1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Vec_PtrPush.exit
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.bc = add nsw i32 %.062, 1
  br label %.sink.split

bb.n:                                             ; preds = %Vec_PtrPush.exit
  %i.bd = add i32 %i.aw, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %.idx = mul nsw i64 %i.bh, 12
  %i.bi = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %i.bj = icmp eq i32 %i.bg, 0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !51
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bm = load i32, ptr %i.g, align 4, !tbaa !46  ; 4 uses
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !47
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %Cbs_QuePush.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = shl nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bp, ptr %i.l, align 8, !tbaa !47
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  %i.br = sext i32 %i.bp to i64
  %i.bs = shl nsw i64 %i.br, 3                    ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef %i.bs) #27
  %.pre12.pre.i = load i32, ptr %i.g, align 4, !tbaa !46
  %.val50.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !34
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.val50.pre.pre, i64 8
  %.val50.val.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !32
  %.pre74.pre = load i32, ptr %i.au, align 4, !tbaa !73
  %.pre82 = mul i32 %.pre74.pre, 3
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre81.pre-phi = phi i32 [ %i.aw, %bb.s ], [ %.pre82, %bb.r ]
  %.val50.val.pre = phi ptr [ %.val.val, %bb.s ], [ %.val50.val.pre.pre, %bb.r ]
  %.pre12.i = phi i32 [ %i.bm, %bb.s ], [ %.pre12.pre.i, %bb.r ]
  %i.bv = phi ptr [ %i.bu, %bb.s ], [ %i.bt, %bb.r ] ; 2 uses
  store ptr %i.bv, ptr %i.j, align 8, !tbaa !48
  br label %Cbs_QuePush.exit

Cbs_QuePush.exit:                                 ; preds = %._crit_edge.i, %bb.t
  %.pre-phi = phi i32 [ %i.aw, %._crit_edge.i ], [ %.pre81.pre-phi, %bb.t ]
  %.val50.val = phi ptr [ %.val.val, %._crit_edge.i ], [ %.val50.val.pre, %bb.t ]
  %i.bw = phi i32 [ %i.bm, %._crit_edge.i ], [ %.pre12.i, %bb.t ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bv, %bb.t ] ; 4 uses
  %i.by = add nsw i32 %i.bw, 1                    ; 4 uses
  store i32 %i.by, ptr %i.g, align 4, !tbaa !46
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bz
  store ptr %i.bi, ptr %i.ca, align 8, !tbaa !44
  %i.cb = add i32 %.pre-phi, 2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val50.val, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.idx60 = mul nsw i64 %i.cf, 12
  %i.cg = getelementptr inbounds i8, ptr %i.q, i64 %.idx60
  %.not47 = icmp eq i32 %i.ce, 0
  br i1 %.not47, label %bb.w, label %bb.u

bb.u:                                             ; preds = %Cbs_QuePush.exit
  %i.ch = load i32, ptr %i.l, align 8, !tbaa !47
  %i.ci = icmp eq i32 %i.by, %i.ch
  br i1 %i.ci, label %bb.v, label %Cbs_QuePush.exit59

bb.v:                                             ; preds = %bb.u
  %i.cj = shl nsw i32 %i.by, 1                    ; 2 uses
  store i32 %i.cj, ptr %i.l, align 8, !tbaa !47
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 3
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %i.cl) #27 ; 2 uses
  %.pre12.pre.i57 = load i32, ptr %i.g, align 4, !tbaa !46
  store ptr %i.cm, ptr %i.j, align 8, !tbaa !48
  br label %Cbs_QuePush.exit59

Cbs_QuePush.exit59:                               ; preds = %bb.u, %bb.v
  %i.cn = phi i32 [ %.pre12.pre.i57, %bb.v ], [ %i.by, %bb.u ] ; 2 uses
  %i.co = phi ptr [ %i.cm, %bb.v ], [ %i.bx, %bb.u ]
  %i.cp = add nsw i32 %i.cn, 1
  store i32 %i.cp, ptr %i.g, align 4, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o, %Cbs_QuePush.exit59
  %.sink99 = phi i32 [ %i.cn, %Cbs_QuePush.exit59 ], [ %i.bl, %bb.o ], [ %.062, %bb.m ]
  %.sink97 = phi ptr [ %i.co, %Cbs_QuePush.exit59 ], [ %i.bk, %bb.o ], [ %i.bb, %bb.m ] ; 2 uses
  %.sink = phi ptr [ %i.cg, %Cbs_QuePush.exit59 ], [ %i.q, %bb.o ], [ %i.q, %bb.m ]
  %.1.ph = phi i32 [ %.062, %Cbs_QuePush.exit59 ], [ %.062, %bb.o ], [ %i.bc, %bb.m ]
  %i.cq = sext i32 %.sink99 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.sink97, i64 %i.cq
  store ptr %.sink, ptr %i.cr, align 8, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %Cbs_QuePush.exit, %bb.b
  %i.cs = phi ptr [ %i.o, %bb.b ], [ %i.bx, %Cbs_QuePush.exit ], [ %.sink97, %.sink.split ]
  %.1 = phi i32 [ %.062, %bb.b ], [ %.062, %Cbs_QuePush.exit ], [ %.1.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !46
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %bb.b, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.w
  %.pre75 = load ptr, ptr %i.b, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert76 = getelementptr i8, ptr %.pre75, i64 4
  %.val5163.pre = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !36
  %i.cw = icmp sgt i32 %.val5163.pre, 0
  store i32 %.1, ptr %i.g, align 4, !tbaa !46
  br i1 %i.cw, label %.lr.ph66, label %.critedge

.lr.ph66:                                         ; preds = %._crit_edge, %.lr.ph66
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph66 ], [ 0, %._crit_edge ] ; 2 uses
  %i.cx = phi ptr [ %i.dd, %.lr.ph66 ], [ %.pre75, %._crit_edge ]
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %.val52 = load ptr, ptr %i.cy, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %indvars.iv68
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !134 ; 2 uses
  %i.db = load i64, ptr %i.da, align 4
  %i.dc = or i64 %i.db, 1073741824
  store i64 %i.dc, ptr %i.da, align 4
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %.val51 = load i32, ptr %i.de, align 4, !tbaa !36
  %i.df = sext i32 %.val51 to i64
  %i.dg = icmp slt i64 %indvars.iv.next69, %i.df
  br i1 %i.dg, label %.lr.ph66, label %.critedge, !llvm.loop !133

.critedge:                                        ; preds = %.lr.ph66, %._crit_edge.thread, %._crit_edge
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #17

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"Cbs_Par_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!10 = !{!9, !6, i64 0}
!11 = !{!9, !6, i64 4}
!12 = !{!6, !6, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS10Gia_Man_t_", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"p2 _ZTS10Gia_Obj_t_", !15, i64 0}
!17 = !{!"Cbs_Que_t_", !6, i64 0, !6, i64 4, !6, i64 8, !16, i64 16}
!18 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!19 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"Cbs_Man_t_", !9, i64 0, !14, i64 48, !6, i64 56, !17, i64 64, !17, i64 88, !17, i64 112, !16, i64 136, !18, i64 144, !18, i64 152, !19, i64 160, !18, i64 168, !18, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240}
!22 = !{!21, !6, i64 0}
!23 = !{!21, !16, i64 80}
!24 = !{!21, !16, i64 104}
!25 = !{!21, !16, i64 128}
!26 = !{!21, !6, i64 116}
!27 = !{!21, !6, i64 112}
!28 = !{!"p1 int", !13, i64 0}
!29 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !28, i64 8}
!30 = !{!29, !6, i64 4}
!31 = !{!29, !6, i64 0}
!32 = !{!29, !28, i64 8}
!33 = !{!21, !18, i64 152}
!34 = !{!21, !18, i64 144}
!35 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !15, i64 8}
!36 = !{!35, !6, i64 4}
!37 = !{!35, !6, i64 0}
!38 = !{!35, !15, i64 8}
!39 = !{!21, !19, i64 160}
!40 = !{!21, !14, i64 48}
!41 = !{!21, !6, i64 64}
!42 = !{!21, !6, i64 68}
!43 = !{!"p1 _ZTS10Gia_Obj_t_", !13, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!17, !6, i64 4}
!47 = !{!17, !6, i64 8}
!48 = !{!17, !16, i64 16}
!49 = !{!21, !6, i64 88}
!50 = !{!21, !6, i64 92}
!51 = !{!17, !6, i64 0}
!52 = !{!21, !6, i64 16}
!53 = !{!21, !6, i64 4}
!54 = !{!21, !6, i64 8}
!55 = !{!21, !6, i64 28}
!56 = !{!21, !6, i64 32}
!57 = !{!"p1 omnipotent char", !13, i64 0}
!58 = !{!"p1 _ZTS10Gia_Rpr_t_", !13, i64 0}
!59 = !{!"p1 _ZTS10Vec_Wec_t_", !13, i64 0}
!60 = !{!"p1 _ZTS10Vec_Str_t_", !13, i64 0}
!61 = !{!"p1 _ZTS10Abc_Cex_t_", !13, i64 0}
!62 = !{!"p1 _ZTS10Gia_Plc_t_", !13, i64 0}
!63 = !{!"p1 _ZTS10Vec_Flt_t_", !13, i64 0}
!64 = !{!"float", !5, i64 0}
!65 = !{!"p1 _ZTS10Vec_Vec_t_", !13, i64 0}
!66 = !{!"p1 _ZTS10Vec_Wrd_t_", !13, i64 0}
!67 = !{!"p1 _ZTS10Vec_Bit_t_", !13, i64 0}
!68 = !{!"p1 _ZTS10Gia_Dat_t_", !13, i64 0}
!69 = !{!"Gia_Man_t_", !57, i64 0, !57, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !43, i64 32, !28, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !18, i64 64, !18, i64 72, !29, i64 80, !29, i64 96, !6, i64 112, !6, i64 116, !6, i64 120, !29, i64 128, !28, i64 144, !28, i64 152, !18, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !28, i64 184, !58, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !6, i64 224, !6, i64 228, !28, i64 232, !6, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !59, i64 272, !59, i64 280, !18, i64 288, !13, i64 296, !18, i64 304, !18, i64 312, !60, i64 320, !57, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !61, i64 376, !61, i64 384, !19, i64 392, !29, i64 400, !29, i64 416, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !18, i64 488, !18, i64 496, !18, i64 504, !18, i64 512, !57, i64 520, !62, i64 528, !14, i64 536, !63, i64 544, !63, i64 552, !18, i64 560, !18, i64 568, !18, i64 576, !18, i64 584, !18, i64 592, !6, i64 600, !64, i64 604, !64, i64 608, !18, i64 616, !28, i64 624, !6, i64 632, !19, i64 640, !19, i64 648, !19, i64 656, !18, i64 664, !18, i64 672, !18, i64 680, !18, i64 688, !18, i64 696, !18, i64 704, !18, i64 712, !18, i64 720, !18, i64 728, !65, i64 736, !63, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !20, i64 776, !20, i64 784, !13, i64 792, !28, i64 800, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !66, i64 856, !66, i64 864, !66, i64 872, !66, i64 880, !18, i64 888, !18, i64 896, !18, i64 904, !67, i64 912, !6, i64 920, !6, i64 924, !6, i64 928, !18, i64 936, !6, i64 944, !6, i64 948, !18, i64 952, !18, i64 960, !19, i64 968, !66, i64 976, !18, i64 984, !18, i64 992, !6, i64 1000, !6, i64 1004, !66, i64 1008, !29, i64 1016, !29, i64 1032, !29, i64 1048, !68, i64 1064, !60, i64 1072, !60, i64 1080, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !60, i64 1104, !18, i64 1112, !18, i64 1120, !18, i64 1128, !19, i64 1136}
!70 = !{!69, !43, i64 32}
!71 = !{!69, !28, i64 144}
!72 = !{!"Gia_Obj_t_", !6, i64 0, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 4, !6, i64 7, !6, i64 7, !6, i64 7, !6, i64 8}
!73 = !{!72, !6, i64 8}
!74 = !{!21, !6, i64 12}
!75 = !{!21, !18, i64 168}
!76 = !{!21, !18, i64 176}
!77 = !{!21, !6, i64 184}
!78 = !{!21, !6, i64 20}
!79 = !{!21, !6, i64 24}
!80 = !{!69, !18, i64 72}
!81 = !{!69, !6, i64 24}
!82 = !{!21, !6, i64 188}
!83 = !{!21, !6, i64 200}
!84 = !{!21, !6, i64 204}
!85 = !{!21, !20, i64 216}
!86 = !{!21, !20, i64 240}
!87 = !{!21, !6, i64 192}
!88 = !{!21, !6, i64 208}
!89 = !{!21, !20, i64 224}
!90 = !{!21, !6, i64 196}
!91 = !{!21, !6, i64 212}
!92 = !{!21, !20, i64 232}
!93 = !{!"timespec", !20, i64 0, !20, i64 8}
!94 = !{!93, !20, i64 0}
!95 = !{!93, !20, i64 8}
!96 = !{!"Vec_Str_t_", !6, i64 0, !6, i64 4, !57, i64 8}
!97 = !{!96, !6, i64 4}
!98 = !{!96, !6, i64 0}
!99 = !{!96, !57, i64 8}
!100 = !{!5, !5, i64 0}
!101 = !{!60, !60, i64 0}
!102 = !{!21, !6, i64 120}
!103 = !{!21, !6, i64 96}
!104 = !{!21, !6, i64 72}
!105 = !{!9, !6, i64 28}
!106 = !{!9, !6, i64 40}
!107 = distinct !{!107, !45}
!108 = distinct !{!108, !45}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !45}
!111 = distinct !{!111, !45}
!112 = !{!21, !6, i64 36}
!113 = distinct !{!113, !45}
!114 = distinct !{!114, !45}
!115 = distinct !{!115, !45}
!116 = distinct !{!116, !45}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !45}
!119 = !{!69, !18, i64 64}
!120 = distinct !{!120, i1 true, !"vprintf"}
!121 = distinct !{!121, !120, !"vprintf: argument 0"}
!122 = distinct !{null}
!123 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!121}
!126 = distinct !{!126, !45}
!127 = !{!69, !6, i64 16}
!128 = !{!18, !18, i64 0}
!129 = distinct !{!129, !45}
!130 = !{!21, !6, i64 56}
!131 = distinct !{!131, !45}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !45}
!134 = !{!13, !13, i64 0}
end_hunk_0
