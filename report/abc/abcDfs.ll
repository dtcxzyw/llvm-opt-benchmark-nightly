Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDfs?download=true
inline.NumInlined: 561
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NtkNodeSupportInt:bb.a
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !45
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ag = getelementptr i8, ptr %.val21, i64 8
  %.val21.val = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ah = zext nneg i32 %1 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val21.val, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !42
  store i32 100, ptr %i.ak, align 8, !tbaa !43
  %i.am = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !44
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ao = getelementptr i8, ptr %i.aj, i64 32
  %.val19 = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.ap = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.val19.val = load i32, ptr %.val19, align 4, !tbaa !36
  %i.aq = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.ar = sext i32 %.val19.val to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.val.val.val, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37
  tail call void @Abc_NtkNodeSupportInt_rec(ptr noundef %i.at, ptr noundef nonnull %i.ak)
  %.val24 = load i32, ptr %i.al, align 4, !tbaa !42
  %.val25 = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.au = sext i32 %.val24 to i64
  tail call void @qsort(ptr noundef %.val25, i64 noundef %i.au, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %Abc_NtkIncrementTravId.exit
  %.017 = phi ptr [ %i.ak, %Abc_NtkIncrementTravId.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkFunctionalIsoGia_rec(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %common.ret

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 28
  %.val20 = load i32, ptr %i.b, align 4, !tbaa !30
  %i.c = icmp eq i32 %.val20, 0
  br i1 %i.c, label %common.ret, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %.val19 = load i32, ptr %i.d, align 4
  %i.e = and i32 %.val19, 15
  switch i32 %i.e, label %bb.d [
    i32 5, label %common.ret
    i32 2, label %common.ret
  ]

common.ret:                                       ; preds = %bb.c, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !49
  br label %common.ret29

common.ret29:                                     ; preds = %bb.d, %common.ret
  %common.ret29.op = phi i32 [ %i.g, %common.ret ], [ %i.ac, %bb.d ]
  ret i32 %common.ret29.op

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val18 = load i32, ptr %i.h, align 8, !tbaa !15
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val18)
  %.val21 = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val22 = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr i8, ptr %.val21, i64 32
  %.val21.val = load ptr, ptr %i.j, align 8, !tbaa !32
  %.val22.val = load i32, ptr %.val22, align 4, !tbaa !36
  %i.k = getelementptr i8, ptr %.val21.val, i64 8
  %.val21.val.val = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.l = sext i32 %.val22.val to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val21.val.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = tail call i32 @Abc_NtkFunctionalIsoGia_rec(ptr noundef %0, ptr noundef %i.n)
  %.val23 = load ptr, ptr %1, align 8, !tbaa !8
  %.val24 = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.p = getelementptr i8, ptr %.val23, i64 32
  %.val23.val = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr i8, ptr %.val24, i64 4
  %.val24.val = load i32, ptr %i.q, align 4, !tbaa !36
  %i.r = getelementptr i8, ptr %.val23.val, i64 8
  %.val23.val.val = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.s = sext i32 %.val24.val to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val23.val.val, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.v = tail call i32 @Abc_NtkFunctionalIsoGia_rec(ptr noundef %0, ptr noundef %i.u)
  %.val25 = load i32, ptr %i.d, align 4           ; 2 uses
  %i.w = lshr i32 %.val25, 10
  %i.x = and i32 %i.w, 1
  %i.y = xor i32 %i.x, %i.o
  %i.z = lshr i32 %.val25, 11
  %i.aa = and i32 %i.z, 1
  %i.ab = xor i32 %i.aa, %i.v
  %i.ac = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ab) #26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !49
  br label %common.ret29
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkFunctionalIsoGia(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Abc_NtkNodeSupportInt(ptr noundef %0, i32 noundef %1) ; 7 uses
  %i.b = tail call ptr @Abc_NtkNodeSupportInt(ptr noundef %0, i32 noundef %2) ; 7 uses
  %i.c = getelementptr i8, ptr %i.a, i64 4        ; 5 uses
  %.val73 = load i32, ptr %i.c, align 4, !tbaa !42 ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 4        ; 5 uses
  %.val72 = load i32, ptr %i.d, align 4, !tbaa !42
  %i.e = icmp eq i32 %.val73, %.val72
  br i1 %i.e, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @Gia_ManStart(i32 noundef 1000) #26 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #27
  %i.j = add i64 %i.i, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 2 uses
  %i.l = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull readonly dereferenceable(1) %i.h) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  store ptr %i.m, ptr %i.f, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134  ; 3 uses
  %.not.i82 = icmp eq ptr %i.o, null
  br i1 %.not.i82, label %Abc_UtilStrsav.exit83, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #27
  %i.q = add i64 %i.p, 1
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #25 ; 2 uses
  %i.s = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %i.o) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit83

Abc_UtilStrsav.exit83:                            ; preds = %Abc_UtilStrsav.exit, %bb.d
  %i.t = phi ptr [ %i.r, %bb.d ], [ null, %Abc_UtilStrsav.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !135
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.f) #26
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %Abc_UtilStrsav.exit83
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.w = add i32 %.val73, -1
  %or.cond.i = icmp ult i32 %i.w, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val73 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 6 uses
  store i32 %spec.store.select.i, ptr %i.v, align 8, !tbaa !43
  %.not.i84 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i84, label %Vec_IntAlloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sext i32 %spec.store.select.i to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #25
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.e, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 7 uses
  %i.ah = sext i32 %.val73 to i64
  %.idx.i = shl nsw i64 %i.ah, 2                  ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx.i ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !42
  %i.ak = icmp sgt i32 %.val73, 0
  br i1 %i.ak, label %.lr.ph.i, label %.preheader52.i

.preheader52.i:                                   ; preds = %bb.s, %Vec_IntAlloc.exit
  %i.al = phi ptr [ %i.ab, %Vec_IntAlloc.exit ], [ %.pre70.i154, %bb.s ] ; 4 uses
  %.046.lcssa.i = phi ptr [ %i.ae, %Vec_IntAlloc.exit ], [ %.147.i, %bb.s ] ; 5 uses
  %.043.lcssa.i = phi ptr [ %i.ag, %Vec_IntAlloc.exit ], [ %.144.i, %bb.s ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ae, %Vec_IntAlloc.exit ], [ %.141.i, %bb.s ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %Vec_IntAlloc.exit ], [ %.1.i, %bb.s ] ; 5 uses
  %.0.lcssa.i189 = ptrtoaddr ptr %.0.lcssa.i to i64
  %.043.lcssa.i190 = ptrtoaddr ptr %.043.lcssa.i to i64 ; 2 uses
  %i.am = icmp ult ptr %.046.lcssa.i, %i.ai
  br i1 %i.am, label %.lr.ph62.i.preheader, label %.preheader.i

.lr.ph62.i.preheader:                             ; preds = %.preheader52.i
  %.046.lcssa.i184 = ptrtoaddr ptr %.046.lcssa.i to i64 ; 2 uses
  %.040.lcssa.i183 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.an = ptrtoaddr ptr %i.ae to i64
  %i.ao = add i64 %.idx.i, %i.an
  %i.ap = xor i64 %.046.lcssa.i184, -1
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 44
  %i.at = sub i64 %.046.lcssa.i184, %.040.lcssa.i183
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph62.i.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %.040.lcssa.i, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %.046.lcssa.i, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.040.lcssa.i, i64 %i.ax ; 2 uses
  %next.gep185 = getelementptr i8, ptr %.046.lcssa.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !36
  %wide.load186 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !36
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !36
  store <4 x i32> %wide.load186, ptr %i.az, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph62.i.preheader209

.lr.ph62.i.preheader209:                          ; preds = %.lr.ph62.i.preheader, %middle.block
  %.24261.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph62.i.preheader ], [ %i.av, %middle.block ]
  %.24860.i.ph = phi ptr [ %.046.lcssa.i, %.lr.ph62.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph62.i

.lr.ph.i:                                         ; preds = %Vec_IntAlloc.exit, %bb.s
  %i.bb = phi ptr [ %.pre70.i154, %bb.s ], [ %i.ab, %Vec_IntAlloc.exit ] ; 9 uses
  %.pre.i = phi ptr [ %.pre.i151, %bb.s ], [ %i.ab, %Vec_IntAlloc.exit ] ; 3 uses
  %.056.i = phi ptr [ %.1.i, %bb.s ], [ %i.ag, %Vec_IntAlloc.exit ] ; 4 uses
  %.04055.i = phi ptr [ %.141.i, %bb.s ], [ %i.ae, %Vec_IntAlloc.exit ] ; 4 uses
  %.04354.i = phi ptr [ %.144.i, %bb.s ], [ %i.ag, %Vec_IntAlloc.exit ] ; 4 uses
  %.04653.i = phi ptr [ %.147.i, %bb.s ], [ %i.ae, %Vec_IntAlloc.exit ] ; 4 uses
  %i.bc = load i32, ptr %.04653.i, align 4, !tbaa !36 ; 4 uses
  %i.bd = load i32, ptr %.04354.i, align 4, !tbaa !36 ; 3 uses
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.lr.ph.i
  %i.bf = load i32, ptr %i.x, align 4, !tbaa !42  ; 7 uses
  %i.bg = load i32, ptr %i.v, align 8, !tbaa !43
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.h
  %i.bl = icmp samesign ult i32 %i.bf, 1073741823
  %i.bm = shl nuw nsw i32 %i.bf, 1
  %spec.select.i.i = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bf, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.m, label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i.i = icmp eq ptr %i.bb, null
  %i.bn = zext nneg i32 %spec.select.i.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bo) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.o:                                             ; preds = %bb.m
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  %i.br = phi ptr [ %i.bk, %bb.k ], [ %i.bj, %bb.j ], [ %i.bp, %bb.n ], [ %i.bq, %bb.o ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ]
  store ptr %i.br, ptr %i.ac, align 8, !tbaa !44
  store i32 %spec.select.sink.i.i, ptr %i.v, align 8, !tbaa !43
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.g, %Vec_IntGrow.exit11.sink.split.i.i, %bb.l
  %.pre70.i155 = phi ptr [ %i.br, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bb, %bb.l ], [ %i.bb, %bb.g ]
  %.pre.i152 = phi ptr [ %i.br, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bb, %bb.l ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.bs = add nsw i32 %i.bf, 1
  store i32 %i.bs, ptr %i.x, align 4, !tbaa !42
  %i.bt = sext i32 %i.bf to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre.i152, i64 %i.bt
  store i32 %i.bc, ptr %i.bu, align 4, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph.i
  %i.bx = icmp slt i32 %i.bc, %i.bd
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.04055.i, i64 4
  store i32 %i.bc, ptr %.04055.i, align 4, !tbaa !36
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.056.i, i64 4
  store i32 %i.bd, ptr %.056.i, align 4, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %Vec_IntPush.exit.i
  %.pre70.i154 = phi ptr [ %.pre70.i155, %Vec_IntPush.exit.i ], [ %i.bb, %bb.q ], [ %i.bb, %bb.r ] ; 2 uses
  %.pre.i151 = phi ptr [ %.pre.i152, %Vec_IntPush.exit.i ], [ %.pre.i, %bb.q ], [ %.pre.i, %bb.r ]
  %.147.i = phi ptr [ %i.bv, %Vec_IntPush.exit.i ], [ %i.by, %bb.q ], [ %.04653.i, %bb.r ] ; 3 uses
  %.144.i = phi ptr [ %i.bw, %Vec_IntPush.exit.i ], [ %.04354.i, %bb.q ], [ %i.ca, %bb.r ] ; 3 uses
  %.141.i = phi ptr [ %.04055.i, %Vec_IntPush.exit.i ], [ %i.bz, %bb.q ], [ %.04055.i, %bb.r ] ; 2 uses
  %.1.i = phi ptr [ %.056.i, %Vec_IntPush.exit.i ], [ %.056.i, %bb.q ], [ %i.cb, %bb.r ] ; 2 uses
  %i.cc = icmp ult ptr %.147.i, %i.ai
  %i.cd = icmp ult ptr %.144.i, %i.aj
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.lr.ph.i, label %.preheader52.i, !llvm.loop !139

.preheader.i:                                     ; preds = %.lr.ph62.i, %middle.block, %.preheader52.i
  %.242.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader52.i ], [ %i.av, %middle.block ], [ %i.cw, %.lr.ph62.i ]
  %i.cf = icmp ult ptr %.043.lcssa.i, %i.aj
  br i1 %i.cf, label %.lr.ph66.i.preheader, label %Vec_IntTwoRemoveCommon.exit

.lr.ph66.i.preheader:                             ; preds = %.preheader.i
  %i.cg = ptrtoaddr ptr %i.ag to i64
  %i.ch = add i64 %.idx.i, %i.cg
  %i.ci = xor i64 %.043.lcssa.i190, -1
  %i.cj = add i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check193 = icmp ult i64 %i.cj, 44
  %i.cm = sub i64 %.043.lcssa.i190, %.0.lcssa.i189
  %diff.check191 = icmp ugt i64 %i.cm, -32
  %or.cond207 = select i1 %min.iters.check193, i1 true, i1 %diff.check191
  br i1 %or.cond207, label %.lr.ph66.i.preheader208, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph66.i.preheader
  %n.vec195 = and i64 %i.cl, 9223372036854775800  ; 3 uses
  %i.cn = shl i64 %n.vec195, 2                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.043.lcssa.i, i64 %i.cn
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.cq = shl i64 %index197, 2                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cq ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <4 x i32>, ptr %next.gep199, align 4, !tbaa !36
  %wide.load201 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !36
  %i.cs = getelementptr i8, ptr %next.gep198, i64 16
  store <4 x i32> %wide.load200, ptr %next.gep198, align 4, !tbaa !36
  store <4 x i32> %wide.load201, ptr %i.cs, align 4, !tbaa !36
  %index.next202 = add nuw i64 %index197, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.ct, label %middle.block203, label %vector.body196, !llvm.loop !140

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.cl, %n.vec195
  br i1 %cmp.n204, label %Vec_IntTwoRemoveCommon.exit, label %.lr.ph66.i.preheader208

.lr.ph66.i.preheader208:                          ; preds = %.lr.ph66.i.preheader, %middle.block203
  %.265.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph66.i.preheader ], [ %i.co, %middle.block203 ]
  %.24564.i.ph = phi ptr [ %.043.lcssa.i, %.lr.ph66.i.preheader ], [ %i.cp, %middle.block203 ]
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader209, %.lr.ph62.i
  %.24261.i = phi ptr [ %i.cw, %.lr.ph62.i ], [ %.24261.i.ph, %.lr.ph62.i.preheader209 ] ; 2 uses
  %.24860.i = phi ptr [ %i.cu, %.lr.ph62.i ], [ %.24860.i.ph, %.lr.ph62.i.preheader209 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.24860.i, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.24860.i, align 4, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.24261.i, i64 4 ; 2 uses
  store i32 %i.cv, ptr %.24261.i, align 4, !tbaa !36
  %i.cx = icmp ult ptr %i.cu, %i.ai
  br i1 %i.cx, label %.lr.ph62.i, label %.preheader.i, !llvm.loop !141

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader208, %.lr.ph66.i
  %.265.i = phi ptr [ %i.da, %.lr.ph66.i ], [ %.265.i.ph, %.lr.ph66.i.preheader208 ] ; 2 uses
  %.24564.i = phi ptr [ %i.cy, %.lr.ph66.i ], [ %.24564.i.ph, %.lr.ph66.i.preheader208 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.24564.i, i64 4 ; 2 uses
  %i.cz = load i32, ptr %.24564.i, align 4, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %.265.i, i64 4 ; 2 uses
  store i32 %i.cz, ptr %.265.i, align 4, !tbaa !36
  %i.db = icmp ult ptr %i.cy, %i.aj
  br i1 %i.db, label %.lr.ph66.i, label %Vec_IntTwoRemoveCommon.exit, !llvm.loop !142

Vec_IntTwoRemoveCommon.exit:                      ; preds = %.lr.ph66.i, %middle.block203, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.co, %middle.block203 ], [ %i.da, %.lr.ph66.i ]
  %i.dc = ptrtoint ptr %.242.lcssa.i to i64
  %i.dd = ptrtoint ptr %i.ae to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 2
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !42
  %i.dh = ptrtoint ptr %.2.lcssa.i to i64
  %i.di = ptrtoint ptr %i.ag to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 2
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.d, align 4, !tbaa !42
  %.val67.i = load i32, ptr %i.x, align 4, !tbaa !42
  %i.dm = icmp sgt i32 %.val67.i, 0
  br i1 %i.dm, label %.lr.ph.i85, label %Vec_IntAppend.exit113

.lr.ph.i85:                                       ; preds = %Vec_IntTwoRemoveCommon.exit, %Vec_IntPush.exit.i89
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Vec_IntPush.exit.i89 ], [ 0, %Vec_IntTwoRemoveCommon.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !36
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !42  ; 7 uses
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !43
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.t, label %.Vec_IntPush.exit_crit_edge.i87

.Vec_IntPush.exit_crit_edge.i87:                  ; preds = %.lr.ph.i85
  %.pre.i88 = load ptr, ptr %i.ad, align 8, !tbaa !44
  br label %Vec_IntPush.exit.i89

bb.t:                                             ; preds = %.lr.ph.i85
  %i.ds = icmp slt i32 %i.dp, 16
  br i1 %i.ds, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.dt = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i.i95 = icmp eq ptr %i.dt, null
  br i1 %.not9.i.i.i95, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i93

bb.w:                                             ; preds = %bb.u
  %i.dv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i93

bb.x:                                             ; preds = %bb.t
  %i.dw = icmp samesign ult i32 %i.dp, 1073741823
  %i.dx = shl nuw nsw i32 %i.dp, 1
  %spec.select.i.i90 = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 4 uses
  %.not.i9.i.i91 = icmp samesign ult i32 %i.dp, %spec.select.i.i90
  %.pre10.i = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 3 uses
  br i1 %.not.i9.i.i91, label %bb.y, label %Vec_IntPush.exit.i89

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i.i92 = icmp eq ptr %.pre10.i, null
  %i.dy = zext nneg i32 %spec.select.i.i90 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 2 uses
  br i1 %.not9.i10.i.i92, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.dz) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i93

bb.aa:                                            ; preds = %bb.y
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i93

Vec_IntGrow.exit11.sink.split.i.i93:              ; preds = %bb.aa, %bb.z, %bb.w, %bb.v
  %i.ec = phi ptr [ %i.dv, %bb.w ], [ %i.du, %bb.v ], [ %i.ea, %bb.z ], [ %i.eb, %bb.aa ] ; 2 uses
  %spec.select.sink.i.i94 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i.i90, %bb.z ], [ %spec.select.i.i90, %bb.aa ]
  store ptr %i.ec, ptr %i.ad, align 8, !tbaa !44
  store i32 %spec.select.sink.i.i94, ptr %i.a, align 8, !tbaa !43
  br label %Vec_IntPush.exit.i89

Vec_IntPush.exit.i89:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i93, %bb.x, %.Vec_IntPush.exit_crit_edge.i87
  %i.ed = phi ptr [ %.pre.i88, %.Vec_IntPush.exit_crit_edge.i87 ], [ %.pre10.i, %bb.x ], [ %i.ec, %Vec_IntGrow.exit11.sink.split.i.i93 ]
  %i.ee = add nsw i32 %i.dp, 1
  store i32 %i.ee, ptr %i.c, align 4, !tbaa !42
  %i.ef = sext i32 %i.dp to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ef
  store i32 %i.do, ptr %i.eg, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.x, align 4, !tbaa !42 ; 2 uses
  %i.eh = sext i32 %.val6.i to i64
  %i.ei = icmp slt i64 %indvars.iv.next.i, %i.eh
  br i1 %i.ei, label %.lr.ph.i85, label %Vec_IntAppend.exit, !llvm.loop !143

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i89
  %i.ej = icmp sgt i32 %.val6.i, 0
  br i1 %i.ej, label %.lr.ph.i97, label %Vec_IntAppend.exit113.thread

.lr.ph.i97:                                       ; preds = %Vec_IntAppend.exit, %Vec_IntPush.exit.i102
  %indvars.iv.i98 = phi i64 [ %indvars.iv.next.i103, %Vec_IntPush.exit.i102 ], [ 0, %Vec_IntAppend.exit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i98
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !36
  %i.em = load i32, ptr %i.d, align 4, !tbaa !42  ; 7 uses
  %i.en = load i32, ptr %i.b, align 8, !tbaa !43
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.ab, label %.Vec_IntPush.exit_crit_edge.i100

.Vec_IntPush.exit_crit_edge.i100:                 ; preds = %.lr.ph.i97
  %.pre.i101 = load ptr, ptr %i.af, align 8, !tbaa !44
  br label %Vec_IntPush.exit.i102

bb.ab:                                            ; preds = %.lr.ph.i97
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i.i112 = icmp eq ptr %i.eq, null
  br i1 %.not9.i.i.i112, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i109

bb.ae:                                            ; preds = %bb.ac
  %i.es = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i109

bb.af:                                            ; preds = %bb.ab
  %i.et = icmp samesign ult i32 %i.em, 1073741823
  %i.eu = shl nuw nsw i32 %i.em, 1
  %spec.select.i.i105 = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 4 uses
  %.not.i9.i.i106 = icmp samesign ult i32 %i.em, %spec.select.i.i105
  %.pre10.i107 = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  br i1 %.not.i9.i.i106, label %bb.ag, label %Vec_IntPush.exit.i102

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i.i108 = icmp eq ptr %.pre10.i107, null
  %i.ev = zext nneg i32 %spec.select.i.i105 to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2                ; 2 uses
  br i1 %.not9.i10.i.i108, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = tail call ptr @realloc(ptr noundef nonnull %.pre10.i107, i64 noundef %i.ew) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i109
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #24 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !195
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !193 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !193
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !42
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !43
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #24
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !43
  %.pre = load i32, ptr %i.al, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !42
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !192
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !145
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !176
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !176, !noalias !196
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !199 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"Abc_Obj_t_", !10, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !13, i64 24, !13, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!10 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!13 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !14, i64 8}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!9, !5, i64 16}
!16 = !{!17, !5, i64 0}
!17 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !10, i64 160, !5, i64 168, !21, i64 176, !10, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !22, i64 208, !5, i64 216, !13, i64 224, !23, i64 240, !24, i64 248, !11, i64 256, !25, i64 264, !11, i64 272, !26, i64 280, !5, i64 284, !27, i64 288, !20, i64 296, !14, i64 304, !28, i64 312, !20, i64 320, !10, i64 328, !11, i64 336, !11, i64 344, !10, i64 352, !11, i64 360, !11, i64 368, !27, i64 376, !27, i64 384, !18, i64 392, !29, i64 400, !20, i64 408, !27, i64 416, !27, i64 424, !20, i64 432, !27, i64 440, !27, i64 448, !27, i64 456}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!22 = !{!"double", !6, i64 0}
!23 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!24 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!25 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!29 = !{!"p1 float", !11, i64 0}
!30 = !{!9, !5, i64 28}
!31 = !{!9, !14, i64 32}
!32 = !{!17, !20, i64 32}
!33 = !{!34, !35, i64 8}
!34 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !35, i64 8}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!34, !5, i64 4}
!41 = !{!34, !5, i64 0}
!42 = !{!13, !5, i64 4}
!43 = !{!13, !5, i64 0}
!44 = !{!13, !14, i64 8}
!45 = !{!17, !5, i64 216}
!46 = !{!17, !14, i64 232}
!47 = !{!17, !5, i64 152}
!48 = !{!17, !5, i64 4}
!49 = !{!6, !6, i64 0}
!50 = distinct !{!50, !39}
!51 = !{!17, !20, i64 64}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !39, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = distinct !{!59, !39}
!60 = !{!12, !12, i64 0}
!61 = distinct !{!61, !39}
!62 = !{!9, !14, i64 48}
!63 = !{!9, !5, i64 44}
!64 = distinct !{!64, !39}
!65 = !{!17, !20, i64 56}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = !{!17, !25, i64 264}
!81 = !{!17, !26, i64 280}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = !{!17, !5, i64 148}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = !{!17, !20, i64 48}
!89 = !{!17, !20, i64 40}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = !{!17, !18, i64 8}
!120 = !{!121, !18, i64 0}
!121 = !{!"Gia_Man_t_", !18, i64 0, !18, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !122, i64 32, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !27, i64 64, !27, i64 72, !13, i64 80, !13, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !13, i64 128, !14, i64 144, !14, i64 152, !27, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !14, i64 184, !123, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !5, i64 224, !5, i64 228, !14, i64 232, !5, i64 240, !27, i64 248, !27, i64 256, !27, i64 264, !124, i64 272, !124, i64 280, !27, i64 288, !11, i64 296, !27, i64 304, !27, i64 312, !125, i64 320, !18, i64 328, !27, i64 336, !27, i64 344, !27, i64 352, !27, i64 360, !27, i64 368, !28, i64 376, !28, i64 384, !20, i64 392, !13, i64 400, !13, i64 416, !27, i64 432, !27, i64 440, !27, i64 448, !27, i64 456, !27, i64 464, !27, i64 472, !27, i64 480, !27, i64 488, !27, i64 496, !27, i64 504, !27, i64 512, !18, i64 520, !126, i64 528, !127, i64 536, !128, i64 544, !128, i64 552, !27, i64 560, !27, i64 568, !27, i64 576, !27, i64 584, !27, i64 592, !5, i64 600, !26, i64 604, !26, i64 608, !27, i64 616, !14, i64 624, !5, i64 632, !20, i64 640, !20, i64 648, !20, i64 656, !27, i64 664, !27, i64 672, !27, i64 680, !27, i64 688, !27, i64 696, !27, i64 704, !27, i64 712, !27, i64 720, !27, i64 728, !129, i64 736, !128, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !130, i64 776, !130, i64 784, !11, i64 792, !14, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !131, i64 856, !131, i64 864, !131, i64 872, !131, i64 880, !27, i64 888, !27, i64 896, !27, i64 904, !132, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !27, i64 936, !5, i64 944, !5, i64 948, !27, i64 952, !27, i64 960, !20, i64 968, !131, i64 976, !27, i64 984, !27, i64 992, !5, i64 1000, !5, i64 1004, !131, i64 1008, !13, i64 1016, !13, i64 1032, !13, i64 1048, !133, i64 1064, !125, i64 1072, !125, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !125, i64 1104, !27, i64 1112, !27, i64 1120, !27, i64 1128, !20, i64 1136}
!122 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!123 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!124 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!125 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!126 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!127 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!128 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!129 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!130 = !{!"long", !6, i64 0}
!131 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!132 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!133 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!134 = !{!17, !18, i64 16}
!135 = !{!121, !18, i64 8}
!136 = distinct !{!136, !39, !137, !138}
!137 = !{!"llvm.loop.isvectorized", i32 1}
!138 = !{!"llvm.loop.unroll.runtime.disable"}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39, !137, !138}
!141 = distinct !{!141, !39, !137}
!142 = distinct !{!142, !39, !137}
!143 = distinct !{!143, !39}
!144 = !{!121, !27, i64 64}
!145 = !{!121, !122, i64 32}
!146 = distinct !{!146, !39}
!147 = distinct !{!147, !39}
!148 = !{!121, !27, i64 72}
!149 = !{!121, !14, i64 232}
!150 = distinct !{!150, !39}
!151 = !{!152, !130, i64 0}
!152 = !{!"timespec", !130, i64 0, !130, i64 8}
!153 = !{!152, !130, i64 8}
!154 = distinct !{!154, !39}
!155 = distinct !{!155, !39}
!156 = distinct !{!156, !39}
!157 = distinct !{!157, !39}
!158 = distinct !{!158, !39}
!159 = distinct !{!159, !39}
!160 = distinct !{!160, !39}
!161 = distinct !{!161, !39}
!162 = distinct !{!162, !39}
!163 = !{!164, !5, i64 4}
!164 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !35, i64 8}
!165 = !{!164, !35, i64 8}
end_hunk_1
