Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaWriteVer?download=true
inline.NumInlined: 517
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cba_ManWriteFonRange:bb.a
  %i.bt = add nuw nsw i64 %i.bs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.bt, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.at, ptr %i.g, align 4, !tbaa !26
  br label %Cba_FonRange.exit.i

Cba_FonRange.exit.i:                              ; preds = %._crit_edge.i.i.i.i.i, %Cba_FonSigned.exit.thread.thread32
  %i.bu = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bv = zext nneg i32 %1 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28
  %i.by = ashr i32 %i.bx, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %Cba_FonLeft.exit, label %bb.ab

bb.ab:                                            ; preds = %Cba_FonRange.exit.i
  %i.bz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ce = shl nsw i32 %i.by, 2
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val.i.i.i2.i = load ptr, ptr %i.cf, align 8, !tbaa !27
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val.i.i.i2.i, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  br label %Cba_FonLeft.exit

Cba_FonLeft.exit:                                 ; preds = %bb.d, %Cba_FonSigned.exit.thread, %Cba_FonRange.exit.i, %bb.ab
  %i.cj = phi i32 [ %i.ci, %bb.ab ], [ 0, %Cba_FonRange.exit.i ], [ 0, %Cba_FonSigned.exit.thread ], [ 0, %bb.d ]
  %i.ck = tail call fastcc i32 @Cba_FonRight(ptr noundef nonnull %0, i32 noundef %1)
  %i.cl = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.67, i32 noundef %i.cj, i32 noundef %i.ck) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.c, %Cba_FonLeft.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Cba_FonRangeSize(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !46
  %i.a = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.b = xor i32 %1, -1
  %i.c = tail call ptr @Abc_NamStr(ptr noundef %.val.val, i32 noundef range(i32 -2147483648, 2147483647) %i.b) #17
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #17, !inline_history !68
  %i.e = trunc i64 %i.d to i32
  br label %Cba_NtkRangeSize.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !26 ; 4 uses
  %i.g = icmp slt i32 %.val.i.i, 1
  br i1 %i.g, label %Cba_NtkRangeSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.i = add nuw nsw i32 %1, 1                    ; 3 uses
  %.not.i.not.i.i.i = icmp samesign ult i32 %1, %.val.i.i
  br i1 %.not.i.not.i.i.i, label %Cba_FonRange.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  %i.k = shl nsw i32 %i.j, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.k
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = zext nneg i32 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.j, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = icmp slt i32 %i.j, 1073741823
  %spec.select.i.i.i.i = select i1 %i.s, i32 %i.k, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.j, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = phi ptr [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.o ], [ %i.i, %bb.i ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.h, align 8, !tbaa !42
  %.pre.i.i.i = load i32, ptr %i.f, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.k, %bb.j
  %i.aa = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val.i.i, %bb.k ], [ %.val.i.i, %bb.j ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.aa, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = sext i32 %i.aa to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.af = sub i32 %1, %i.aa
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ai, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.i, ptr %i.f, align 4, !tbaa !26
  br label %Cba_FonRange.exit

Cba_FonRange.exit:                                ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.aj = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.ak = zext nneg i32 %1 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %i.an = ashr i32 %i.am, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %Cba_NtkRangeSize.exit, label %bb.p

bb.p:                                             ; preds = %Cba_FonRange.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = shl nsw i32 %i.an, 2
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !36
  %i.ba = sub nsw i32 %i.ax, %i.az
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = add nuw nsw i32 %i.bb, 1
  br label %Cba_NtkRangeSize.exit

Cba_NtkRangeSize.exit:                            ; preds = %bb.c, %bb.p, %Cba_FonRange.exit, %bb.b
  %i.bd = phi i32 [ %i.e, %bb.b ], [ %i.bc, %bb.p ], [ 1, %Cba_FonRange.exit ], [ 1, %bb.c ]
  ret i32 %i.bd
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_FonRight(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i = load i32, ptr %i.a, align 4, !tbaa !26 ; 4 uses
  %i.b = icmp slt i32 %.val.i.i, 1
  br i1 %i.b, label %Cba_NtkRangeRight.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = add nuw nsw i32 %1, 1                    ; 3 uses
  %.not.i.not.i.i.i = icmp slt i32 %1, %.val.i.i
  br i1 %.not.i.not.i.i.i, label %Cba_FonRange.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.e, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i.i = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.i, %bb.h
  %i.v = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val.i.i, %bb.i ], [ %.val.i.i, %bb.h ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.v, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = sext i32 %i.v to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub i32 %1, %i.v
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ad, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  br label %Cba_FonRange.exit

Cba_FonRange.exit:                                ; preds = %bb.b, %._crit_edge.i.i.i.i
  %i.ae = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.af = sext i32 %1 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = ashr i32 %i.ah, 1                       ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %Cba_NtkRangeRight.exit, label %bb.n

bb.n:                                             ; preds = %Cba_FonRange.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = shl nsw i32 %i.ai, 2
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %.val.i.i.i2 = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val.i.i.i2, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  br label %Cba_NtkRangeRight.exit

Cba_NtkRangeRight.exit:                           ; preds = %bb.a, %Cba_FonRange.exit, %bb.n
  %i.au = phi i32 [ %i.at, %bb.n ], [ 0, %Cba_FonRange.exit ], [ 0, %bb.a ]
  ret i32 %i.au
}

; Function Attrs: nounwind uwtable
define void @Cba_ManWriteFonName(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1584 ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp sgt i32 %1, -1                   ; 2 uses
  br i1 %.not32, label %bb.c, label %.thread54

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = add nuw nsw i32 %1, 1                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  %.not.i.not.i.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.not.i.i, label %Cba_FonName.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.h = shl nsw i32 %i.g, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.h
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = zext nneg i32 %i.d to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.l) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  store ptr %i.o, ptr %i.i, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.g, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp slt i32 %i.g, 1073741823
  %spec.select.i.i.i = select i1 %i.p, i32 %i.h, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.g, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.r, null
  %i.s = zext nneg i32 %spec.select.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = phi ptr [ %i.u, %bb.l ], [ %i.v, %bb.m ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.d, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %i.c, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@Vec_StrPush:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !24
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_StrGrow.exit11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 16) #18
  br label %Vec_StrGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit

Vec_StrGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i9, label %bb.g, label %Vec_StrGrow.exit11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not9.i10 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64        ; 2 uses
  br i1 %.not9.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.o) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = phi ptr [ %i.p, %bb.h ], [ %i.q, %bb.i ]
  store ptr %i.r, ptr %i.m, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split

Vec_StrGrow.exit11.sink.split:                    ; preds = %Vec_StrGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_StrGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !24
  br label %Vec_StrGrow.exit11

Vec_StrGrow.exit11:                               ; preds = %Vec_StrGrow.exit11.sink.split, %bb.f, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.a, align 4, !tbaa !23
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  store i8 %1, ptr %i.x, align 1, !tbaa !20
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_StrPrintStr(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_StrPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_StrPush.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = load i32, ptr %i.d, align 4, !tbaa !23   ; 7 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %.Vec_StrPush.exit_crit_edge

.Vec_StrPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !25
  br label %Vec_StrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.h, 16
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.h, 1073741823
  %i.p = shl nuw nsw i32 %i.h, 1
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.h, %spec.select.i
  %.pre8 = load ptr, ptr %i.e, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre8, null
  %i.q = zext nneg i32 %spec.select.i to i64      ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %.pre8, i64 noundef %i.q) #18
  br label %Vec_StrGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #19
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.t = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ %i.r, %bb.i ], [ %i.s, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.t, ptr %i.e, align 8, !tbaa !25
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !24
  %.pre9 = load i32, ptr %i.d, align 4, !tbaa !23
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.Vec_StrPush.exit_crit_edge, %bb.g, %Vec_StrGrow.exit11.sink.split.i
  %i.u = phi i32 [ %i.h, %.Vec_StrPush.exit_crit_edge ], [ %i.h, %bb.g ], [ %.pre9, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = phi ptr [ %.pre, %.Vec_StrPush.exit_crit_edge ], [ %.pre8, %bb.g ], [ %i.t, %Vec_StrGrow.exit11.sink.split.i ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.d, align 4, !tbaa !23
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  store i8 %i.g, ptr %i.y, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %Vec_StrPush.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cba_ManWriteLineFile(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3)
  %.val = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.f = tail call ptr @Abc_NamStr(ptr noundef %.val.val, i32 noundef %i.c) #17
  %i.g = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.69, ptr noundef %i.f, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjAttrValue(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 220        ; 9 uses
  %.val.i.i = load i32, ptr %i.a, align 4, !tbaa !26 ; 5 uses
  %i.b = icmp slt i32 %.val.i.i, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %i.d = add nuw nsw i32 %1, 1                    ; 12 uses
  %.not.i.not.i.i.i = icmp slt i32 %1, %.val.i.i
  br i1 %.not.i.not.i.i.i, label %Cba_ObjAttr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.e, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i.i = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.i, %bb.h
  %i.v = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val.i.i, %bb.i ], [ %.val.i.i, %bb.h ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.v, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = sext i32 %i.v to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub i32 %1, %i.v
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ad, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  br label %Cba_ObjAttr.exit.i

Cba_ObjAttr.exit.i:                               ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.val.i4.i = phi i32 [ %.val.i.i, %bb.b ], [ %i.d, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.ae = getelementptr i8, ptr %0, i64 224       ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 7 uses
  %i.af = sext i32 %1 to i64                      ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %Cba_ObjAttrSize.exit, label %3

3:                                                ; preds = %Cba_ObjAttr.exit.i
  %4 = icmp slt i32 %.val.i4.i, 1
  br i1 %4, label %Cba_ObjAttr.exit22.i, label %bb.n

bb.n:                                             ; preds = %3
  %.not.i.not.i.i5.i = icmp slt i32 %1, %.val.i4.i
  br i1 %.not.i.not.i.i5.i, label %Vec_IntGetEntry.exit.i17.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  %i.aj = shl nsw i32 %i.ai, 1                    ; 2 uses
  %.not.i.i6.i = icmp slt i32 %1, %i.aj
  br i1 %.not.i.i6.i, label %bb.p, label %Vec_IntGrow.exit.sink.split.i.i.i9.i

bb.p:                                             ; preds = %bb.o
  %.not.i.i.not.i.i7.i = icmp sgt i32 %i.ai, %1
  br i1 %.not.i.i.not.i.i7.i, label %Vec_IntGrow.exit.i.i.i12.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp slt i32 %i.ai, 1073741823
  %spec.select.i.i.i19.i = select i1 %i.ak, i32 %i.aj, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i20.i = icmp slt i32 %i.ai, %spec.select.i.i.i19.i
  br i1 %.not.i22.i.i.i20.i, label %Vec_IntGrow.exit.sink.split.i.i.i9.i, label %Vec_IntGrow.exit.i.i.i12.i

Vec_IntGrow.exit.sink.split.i.i.i9.i:             ; preds = %bb.q, %bb.o
  %spec.select.i.i.i19.sink.i = phi i32 [ %i.d, %bb.o ], [ %spec.select.i.i.i19.i, %bb.q ] ; 2 uses
  %i.al = zext nneg i32 %spec.select.i.i.i19.sink.i to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = tail call ptr @realloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.am) #18 ; 2 uses
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.i.i.i19.sink.i, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i11.i = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i12.i

Vec_IntGrow.exit.i.i.i12.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i9.i, %bb.q, %bb.p
  %i.ao = phi ptr [ %i.an, %Vec_IntGrow.exit.sink.split.i.i.i9.i ], [ %.val.i.i.i, %bb.q ], [ %.val.i.i.i, %bb.p ] ; 3 uses
  %i.ap = phi i32 [ %.pre.i.i11.i, %Vec_IntGrow.exit.sink.split.i.i.i9.i ], [ %.val.i4.i, %bb.q ], [ %.val.i4.i, %bb.p ] ; 3 uses
  %.not3.i.i13.i = icmp sgt i32 %i.ap, %1
  br i1 %.not3.i.i13.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i12.i
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %scevgep.i.i.i15.i = getelementptr i8, ptr %i.ao, i64 %i.ar
  %i.as = sub i32 %1, %i.ap
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i15.i, i8 0, i64 %i.av, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i16.i

._crit_edge.i.i.i16.i:                            ; preds = %.lr.ph.i.i.i14.i, %Vec_IntGrow.exit.i.i.i12.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.af
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  br label %Vec_IntGetEntry.exit.i17.i

Vec_IntGetEntry.exit.i17.i:                       ; preds = %._crit_edge.i.i.i16.i, %bb.n
  %5 = phi ptr [ %i.ao, %._crit_edge.i.i.i16.i ], [ %.val.i.i.i, %bb.n ]
  %.val.i.i13.pr58 = phi i32 [ %i.d, %._crit_edge.i.i.i16.i ], [ %.val.i4.i, %bb.n ]
  %6 = phi i32 [ %.pre.i, %._crit_edge.i.i.i16.i ], [ %i.ah, %bb.n ]
  %7 = sext i32 %6 to i64
  br label %Cba_ObjAttr.exit22.i

Cba_ObjAttr.exit22.i:                             ; preds = %Vec_IntGetEntry.exit.i17.i, %3
  %i.aw = phi ptr [ %5, %Vec_IntGetEntry.exit.i17.i ], [ %.val.i.i.i, %3 ]
  %i.ax = phi i32 [ %.val.i.i13.pr58, %Vec_IntGetEntry.exit.i17.i ], [ -2147483648, %3 ]
  %8 = phi i64 [ %7, %Vec_IntGetEntry.exit.i17.i ], [ 0, %3 ]
  %i.ay = getelementptr i8, ptr %0, i64 240
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28
  br label %Cba_ObjAttrSize.exit

Cba_ObjAttrSize.exit:                             ; preds = %Cba_ObjAttr.exit.i, %Cba_ObjAttr.exit22.i
  %i.bb = phi ptr [ %.val.i.i.i, %Cba_ObjAttr.exit.i ], [ %i.aw, %Cba_ObjAttr.exit22.i ] ; 4 uses
  %.val.i.i13.pr = phi i32 [ %.val.i4.i, %Cba_ObjAttr.exit.i ], [ %i.ax, %Cba_ObjAttr.exit22.i ] ; 5 uses
  %.ph = phi i32 [ 0, %Cba_ObjAttr.exit.i ], [ %i.ba, %Cba_ObjAttr.exit22.i ] ; 2 uses
  %.not.i.not.i.i.i14.a = icmp slt i32 %.val.i.i13.pr, 1
  br i1 %.not.i.not.i.i.i14.a, label %Cba_ObjAttrArray.exit, label %9

9:                                                ; preds = %Cba_ObjAttrSize.exit
  %.not.i.not.i.i.i14 = icmp slt i32 %1, %.val.i.i13.pr
  br i1 %.not.i.not.i.i.i14, label %Cba_ObjAttr.exit.i25, label %bb.r

bb.r:                                             ; preds = %9
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  %i.bd = shl nsw i32 %i.bc, 1                    ; 2 uses
  %.not.i.i.i15 = icmp slt i32 %1, %i.bd
  br i1 %.not.i.i.i15, label %bb.s, label %Vec_IntGrow.exit.sink.split.i.i.i.i17

bb.s:                                             ; preds = %bb.r
  %.not.i.i.not.i.i.i46 = icmp sgt i32 %i.bc, %1
  br i1 %.not.i.i.not.i.i.i46, label %Vec_IntGrow.exit.i.i.i.i20, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i32 %i.bc, 1073741823
  %spec.select.i.i.i.i47 = select i1 %i.be, i32 %i.bd, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i.i48 = icmp slt i32 %i.bc, %spec.select.i.i.i.i47
  br i1 %.not.i22.i.i.i.i48, label %Vec_IntGrow.exit.sink.split.i.i.i.i17, label %Vec_IntGrow.exit.i.i.i.i20

Vec_IntGrow.exit.sink.split.i.i.i.i17:            ; preds = %bb.t, %bb.r
  %spec.select.i.i.i.i47.sink = phi i32 [ %i.d, %bb.r ], [ %spec.select.i.i.i.i47, %bb.t ] ; 2 uses
  %i.bf = zext nneg i32 %spec.select.i.i.i.i47.sink to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #18 ; 2 uses
  store ptr %i.bh, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.i.i.i.i47.sink, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i.i19 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i.i20

Vec_IntGrow.exit.i.i.i.i20:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i17, %bb.t, %bb.s
  %i.bi = phi ptr [ %i.bh, %Vec_IntGrow.exit.sink.split.i.i.i.i17 ], [ %i.bb, %bb.t ], [ %i.bb, %bb.s ] ; 2 uses
  %i.bj = phi i32 [ %.pre.i.i.i19, %Vec_IntGrow.exit.sink.split.i.i.i.i17 ], [ %.val.i.i13.pr, %bb.t ], [ %.val.i.i13.pr, %bb.s ] ; 3 uses
  %.not3.i.i.i21 = icmp sgt i32 %i.bj, %1
  br i1 %.not3.i.i.i21, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i20
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %scevgep.i.i.i.i23 = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bm = sub i32 %1, %i.bj
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i23, i8 0, i64 %i.bp, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %.lr.ph.i.i.i.i22, %Vec_IntGrow.exit.i.i.i.i20
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  br label %Cba_ObjAttr.exit.i25

Cba_ObjAttr.exit.i25:                             ; preds = %._crit_edge.i.i.i.i24, %9
  %.val.i.i.i27 = phi ptr [ %i.bb, %9 ], [ %i.bi, %._crit_edge.i.i.i.i24 ] ; 4 uses
  %.val.i4.i26 = phi i32 [ %.val.i.i13.pr, %9 ], [ %i.d, %._crit_edge.i.i.i.i24 ] ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.val.i.i.i27, i64 %i.af
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !28 ; 2 uses
  %.not.i28 = icmp eq i32 %i.br, 0
  br i1 %.not.i28, label %Cba_ObjAttrArray.exit, label %10

10:                                               ; preds = %Cba_ObjAttr.exit.i25
  %11 = icmp slt i32 %.val.i4.i26, 1
  br i1 %11, label %Cba_ObjAttr.exit22.i41, label %bb.u

bb.u:                                             ; preds = %10
  %.not.i.not.i.i5.i29 = icmp slt i32 %1, %.val.i4.i26
  br i1 %.not.i.not.i.i5.i29, label %Vec_IntGetEntry.exit.i17.i41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  %i.bt = shl nsw i32 %i.bs, 1                    ; 2 uses
  %.not.i.i6.i30 = icmp slt i32 %1, %i.bt
  br i1 %.not.i.i6.i30, label %bb.w, label %Vec_IntGrow.exit.sink.split.i.i.i9.i31

bb.w:                                             ; preds = %bb.v
  %.not.i.i.not.i.i7.i43 = icmp sgt i32 %i.bs, %1
  br i1 %.not.i.i.not.i.i7.i43, label %Vec_IntGrow.exit.i.i.i12.i34, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = icmp slt i32 %i.bs, 1073741823
  %spec.select.i.i.i19.i44 = select i1 %i.bu, i32 %i.bt, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i20.i45 = icmp slt i32 %i.bs, %spec.select.i.i.i19.i44
  br i1 %.not.i22.i.i.i20.i45, label %Vec_IntGrow.exit.sink.split.i.i.i9.i31, label %Vec_IntGrow.exit.i.i.i12.i34

Vec_IntGrow.exit.sink.split.i.i.i9.i31:           ; preds = %bb.x, %bb.v
  %spec.select.i.i.i19.sink.i32 = phi i32 [ %i.d, %bb.v ], [ %spec.select.i.i.i19.i44, %bb.x ] ; 2 uses
  %i.bv = zext nneg i32 %spec.select.i.i.i19.sink.i32 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %.val.i.i.i27, i64 noundef %i.bw) #18 ; 2 uses
  store ptr %i.bx, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.i.i.i19.sink.i32, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i11.i33 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i12.i34

Vec_IntGrow.exit.i.i.i12.i34:                     ; preds = %Vec_IntGrow.exit.sink.split.i.i.i9.i31, %bb.x, %bb.w
  %i.by = phi ptr [ %i.bx, %Vec_IntGrow.exit.sink.split.i.i.i9.i31 ], [ %.val.i.i.i27, %bb.x ], [ %.val.i.i.i27, %bb.w ] ; 2 uses
  %i.bz = phi i32 [ %.pre.i.i11.i33, %Vec_IntGrow.exit.sink.split.i.i.i9.i31 ], [ %.val.i4.i26, %bb.x ], [ %.val.i4.i26, %bb.w ] ; 3 uses
  %.not3.i.i13.i35 = icmp sgt i32 %i.bz, %1
  br i1 %.not3.i.i13.i35, label %._crit_edge.i.i.i16.i38, label %.lr.ph.i.i.i14.i36

.lr.ph.i.i.i14.i36:                               ; preds = %Vec_IntGrow.exit.i.i.i12.i34
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %scevgep.i.i.i15.i37 = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.cc = sub i32 %1, %i.bz
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i15.i37, i8 0, i64 %i.cf, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i16.i38

._crit_edge.i.i.i16.i38:                          ; preds = %.lr.ph.i.i.i14.i36, %Vec_IntGrow.exit.i.i.i12.i34
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  %.phi.trans.insert.i39 = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.af
  %.pre.i40 = load i32, ptr %.phi.trans.insert.i39, align 4, !tbaa !28
  br label %Vec_IntGetEntry.exit.i17.i41

Vec_IntGetEntry.exit.i17.i41:                     ; preds = %._crit_edge.i.i.i16.i38, %bb.u
  %12 = phi i32 [ %.pre.i40, %._crit_edge.i.i.i16.i38 ], [ %i.br, %bb.u ]
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  br label %Cba_ObjAttr.exit22.i41

Cba_ObjAttr.exit22.i41:                           ; preds = %Vec_IntGetEntry.exit.i17.i41, %10
  %15 = phi i64 [ %14, %Vec_IntGetEntry.exit.i17.i41 ], [ 1, %10 ]
  %i.cg = getelementptr i8, ptr %0, i64 240
  %.val.i42 = load ptr, ptr %i.cg, align 8, !tbaa !27
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val.i42, i64 %15
  br label %Cba_ObjAttrArray.exit

Cba_ObjAttrArray.exit:                            ; preds = %Cba_ObjAttrSize.exit, %Cba_ObjAttr.exit.i25, %Cba_ObjAttr.exit22.i41
  %16 = phi ptr [ %i.ch, %Cba_ObjAttr.exit22.i41 ], [ null, %Cba_ObjAttr.exit.i25 ], [ null, %Cba_ObjAttrSize.exit ] ; 2 uses
  %i.ci = icmp sgt i32 %.ph, 0
  br i1 %i.ci, label %.lr.ph, label %.loopexit

bb.y:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv.next to i32
  %i.ck = icmp sgt i32 %.ph, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !70

.lr.ph:                                           ; preds = %Cba_ObjAttrArray.exit, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %Cba_ObjAttrArray.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.cn = icmp eq i32 %i.cm, %2
  br i1 %i.cn, label %bb.z, label %bb.y

bb.z:                                             ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.a, %Cba_ObjAttrArray.exit, %bb.z
  %.012 = phi i32 [ %i.cq, %bb.z ], [ 0, %Cba_ObjAttrArray.exit ], [ 0, %bb.a ], [ 0, %bb.y ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define void @Cba_ManWriteVerilogNtk(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1584 ; 480 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val866.val = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.d = tail call i32 @Abc_NamStrFind(ptr noundef %.val866.val, ptr noundef nonnull @.str.70) #17 ; 4 uses
  %.val865 = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %.val865, i64 16
  %.val865.val = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.f = tail call i32 @Abc_NamStrFind(ptr noundef %.val865.val, ptr noundef nonnull @.str.71) #17 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 28
  %.val869 = load i32, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr i8, ptr %0, i64 44         ; 4 uses
  %.val870 = load i32, ptr %i.h, align 4, !tbaa !26 ; 2 uses
  %i.i = add nsw i32 %.val870, %.val869
  %i.j = icmp sgt i32 %i.i, 5                     ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 156
  %.val871 = load i32, ptr %i.k, align 4, !tbaa !26 ; 2 uses
  %i.l = ashr i32 %.val871, 5
  %i.m = and i32 %.val871, 31
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o                   ; 3 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.r = shl nsw i32 %i.p, 5                      ; 2 uses
  store i32 %i.r, ptr %i.q, align 8, !tbaa !91
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %i.p to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #19
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !92
  store i32 %i.r, ptr %i.w, align 4, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.y = icmp sgt i32 %.val870, 0
  br i1 %i.y, label %.critedge.lr.ph, label %.lr.ph.i

.critedge.lr.ph:                                  ; preds = %Vec_BitStart.exit
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = getelementptr i8, ptr %0, i64 112
  %i.ab = getelementptr i8, ptr %0, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 272       ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 208       ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.val874 = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val874, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28 ; 7 uses
  %.val941 = load ptr, ptr %i.aa, align 8, !tbaa !27
  %.val942 = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val941, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val942, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28 ; 10 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.ar = add nuw nsw i32 %i.ap, 1                ; 4 uses
  %i.as = load i32, ptr %i.ad, align 4, !tbaa !26 ; 3 uses
  %.not.i.not.i.i = icmp slt i32 %i.ap, %i.as
  br i1 %.not.i.not.i.i, label %Cba_FonName.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.ac, align 8, !tbaa !42 ; 4 uses
  %i.au = shl nsw i32 %i.at, 1                    ; 2 uses
  %.not.i.i999 = icmp slt i32 %i.ap, %i.au
  br i1 %.not.i.i999, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.av, null
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.ax) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.at, %i.ap
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp slt i32 %i.at, 1073741823
  %spec.select.i.i.i = select i1 %i.ba, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.at, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.bb, null
  %i.bc = zext nneg i32 %spec.select.i.i.i to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.k, %bb.l, %bb.f, %bb.g
  %storemerge3919 = phi ptr [ %i.az, %bb.g ], [ %i.ay, %bb.f ], [ %i.be, %bb.k ], [ %i.bf, %bb.l ]
  %spec.select.sink.i.i.i = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %bb.f ], [ %spec.select.i.i.i, %bb.k ], [ %spec.select.i.i.i, %bb.l ]
  store ptr %storemerge3919, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i, ptr %i.ac, align 8, !tbaa !42
  %.pre.i.i = load i32, ptr %i.ad, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h
  %i.bg = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.as, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.bg, %i.ap
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.bi = sext i32 %i.bg to i64
  %i.bj = shl nsw i64 %i.bi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bh, i64 %i.bj
  %i.bk = sub i32 %i.ap, %i.bg
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.ar, ptr %i.ad, align 4, !tbaa !26
  br label %Cba_FonName.exit

Cba_FonName.exit:                                 ; preds = %bb.c, %._crit_edge.i.i.i
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.bo = zext nneg i32 %i.ap to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !28
  %i.br = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.bs = load i32, ptr %i.ag, align 4, !tbaa !26 ; 4 uses
  %.not.i.not.i.i1000 = icmp slt i32 %i.aj, %i.bs
  br i1 %.not.i.not.i.i1000, label %Cba_ObjName.exit, label %bb.m

bb.m:                                             ; preds = %Cba_FonName.exit
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !42 ; 4 uses
  %i.bu = shl nsw i32 %i.bt, 1                    ; 2 uses
  %.not.i.i1001 = icmp slt i32 %i.aj, %i.bu
  %.not.i.i.not.i.i1002 = icmp sgt i32 %i.bt, %i.aj ; 2 uses
  br i1 %.not.i.i1001, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i.i.not.i.i1002, label %Vec_IntGrow.exit.i.i.i1007, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i1003 = icmp eq ptr %i.bv, null
  %i.bw = sext i32 %i.br to i64
  %i.bx = shl nsw i64 %i.bw, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i1003, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %i.bx) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004

bb.q:                                             ; preds = %bb.o
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004
end_hunk_1
