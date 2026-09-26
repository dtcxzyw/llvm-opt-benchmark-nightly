Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/schema?download=true
inline.NumInlined: 147
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ArrowSchemaViewValidate:bb.a

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bl = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef 0) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ak:                                            ; preds = %bb.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !23 ; 2 uses
  %.not17.i = icmp eq i64 %i.bn, 2
  br i1 %.not17.i, label %sub_0.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.100, i64 noundef %i.bn) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

sub_0.i:                                          ; preds = %bb.ak
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %.not.i = icmp eq i8 %i.bq, 43
  br i1 %.not.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  %.not25.i = icmp eq i8 %i.bs, 115
  br i1 %.not25.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.am, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.bw = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.bp) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.am:                                            ; preds = %.tail.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = and i64 %i.by, 2
  %.not19.i = icmp eq i64 %i.bz, 0
  br i1 %.not19.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.102) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ao:                                            ; preds = %bb.am
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.cg = and i64 %i.cf, 2
  %.not20.i = icmp eq i64 %i.cg, 0
  br i1 %.not20.i, label %ArrowSchemaViewValidateNChildren.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.103) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.aq:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !34
  %.off.i = add i32 %i.cj, -3
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load ptr, ptr %0, align 8, !tbaa !31
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cm = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.104, ptr noundef %i.cl) #17, !inline_history !57 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cn = load ptr, ptr %0, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %3, ptr noundef %i.cp, ptr noundef %2), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %ArrowSchemaViewValidateNChildren.exit

bb.at:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !33
  %i.ct = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef %i.cs) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

ArrowSchemaViewValidateNChildren.exit:            ; preds = %bb.ae, %bb.y, %bb.s, %bb.k, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %.tail.thread.i, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.c, %bb.b, %bb.at, %bb.e
  %.0 = phi i32 [ 22, %bb.at ], [ 22, %bb.aj ], [ 22, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.cq, %bb.as ], [ 0, %bb.k ], [ 0, %bb.t ], [ 0, %bb.y ], [ 22, %bb.c ], [ 22, %bb.g ], [ 22, %bb.i ], [ 22, %bb.j ], [ 22, %bb.l ], [ 22, %bb.n ], [ 22, %bb.o ], [ 22, %bb.q ], [ 0, %bb.s ], [ 22, %bb.v ], [ 22, %bb.x ], [ 0, %bb.z ], [ 22, %bb.ab ], [ 22, %bb.ad ], [ 22, %bb.al ], [ 22, %.tail.thread.i ], [ 22, %bb.an ], [ 22, %bb.ap ], [ 0, %bb.ao ], [ 22, %bb.ag ], [ 22, %bb.ah ], [ 22, %bb.ar ], [ 0, %bb.ae ]
  ret i32 %.0
}

declare void @ArrowLayoutInit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 23) i32 @ArrowMetadataGetValue(ptr noundef %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ArrowMetadataGetValueInternal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ArrowMetadataGetValueInternal.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1                ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ArrowMetadataReaderInit.exit.i, %.critedge.i
  %.sroa.416.035.i = phi i64 [ %i.l, %.critedge.i ], [ 4, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %.sroa.7.034.i = phi i32 [ %i.m, %.critedge.i ], [ %i.c, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.sroa.416.035.i ; 4 uses
  %.0.copyload2.i.i = load i32, ptr %i.e, align 1
  %i.f = sext i32 %.0.copyload2.i.i to i64        ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.0.copyload.i.i = load i32, ptr %i.h, align 1
  %i.i = add nsw i64 %i.f, 8                      ; 2 uses
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add i64 %i.i, %.sroa.416.035.i
  %i.l = add i64 %i.k, %i.j
  %i.m = add nsw i32 %.sroa.7.034.i, -1
  %i.n = icmp eq i64 %2, %i.f
  br i1 %i.n, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %i.o, i64 noundef %2) #18
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge.thread.i, label %.critedge.i

.critedge.thread.i:                               ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.s, align 8, !tbaa !42
  br label %ArrowMetadataGetValueInternal.exit

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.t = icmp samesign ult i32 %.sroa.7.034.i, 2
  br i1 %i.t, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

ArrowMetadataGetValueInternal.exit:               ; preds = %.critedge.i, %.critedge.thread.i, %ArrowMetadataReaderInit.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ 0, %bb.b ], [ 0, %ArrowMetadataReaderInit.exit.i ], [ 0, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, -9223372036854775808) i64 @ArrowSchemaToString(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ArrowSchemaView, align 8    ; 15 uses
  %5 = alloca %struct.ArrowError, align 1         ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.25) #17
  %i.c = sext i32 %i.b to i64
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.26) #17
  %i.h = sext i32 %i.g to i64
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %5)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #17
  %i.k = sext i32 %i.j to i64
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp ne ptr %i.q, null                   ; 4 uses
  %or.cond = select i1 %i.o, i1 %i.r, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = trunc i64 %i.n to i32
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %switch.tableidx = add i32 %i.v, -1             ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx, 45
  br i1 %i.w, label %switch.lookup, label %ArrowTypeString.exit

switch.lookup:                                    ; preds = %bb.h
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.x
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ArrowTypeString.exit

ArrowTypeString.exit:                             ; preds = %bb.h, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.h ]
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.28, i32 noundef %i.s, ptr noundef %i.t, ptr noundef %.0.i) #17
  br label %ArrowToStringLogChars.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = trunc i64 %i.n to i32
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.z, ptr noundef %i.aa) #17
  br label %ArrowToStringLogChars.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = call fastcc ptr @ArrowTypeString(i32 noundef %i.ad)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.30, ptr noundef %i.ae) #17
  br label %ArrowToStringLogChars.exit

ArrowToStringLogChars.exit:                       ; preds = %bb.j, %bb.l, %ArrowTypeString.exit
  %.042.in = phi i32 [ %i.y, %ArrowTypeString.exit ], [ %i.ab, %bb.j ], [ %i.af, %bb.l ]
  %i.ag = call i32 @llvm.smax.i32(i32 %.042.in, i32 0)
  %spec.store.select.i = zext nneg i32 %i.ag to i64 ; 4 uses
  %i.ah = sub nsw i64 %2, %spec.store.select.i
  %spec.select.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 0) ; 3 uses
  %.not.i = icmp eq ptr %1, null
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %spec.store.select.i
  %spec.select = select i1 %.not.i, ptr null, ptr %i.ai ; 3 uses
  br i1 %i.r, label %bb.az, label %ArrowToStringLogChars.exit56

.critedge:                                        ; preds = %bb.k
  %spec.select.i54 = call i64 @llvm.smax.i64(i64 %2, i64 0)
  br label %ArrowToStringLogChars.exit56

ArrowToStringLogChars.exit56:                     ; preds = %.critedge, %ArrowToStringLogChars.exit
  %.0147 = phi ptr [ %spec.select, %ArrowToStringLogChars.exit ], [ %1, %.critedge ] ; 7 uses
  %.0141 = phi i64 [ %spec.select.i, %ArrowToStringLogChars.exit ], [ %spec.select.i54, %.critedge ] ; 7 uses
  %.0138 = phi i64 [ %spec.store.select.i, %ArrowToStringLogChars.exit ], [ 0, %.critedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  switch i32 %i.ak, label %ArrowTypeString.exit.i [
    i32 1, label %ArrowTypeString.exit.thread.i
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
    i32 15, label %bb.z
    i32 16, label %ArrowTypeString.exit.thread44.i
    i32 17, label %bb.aa
    i32 18, label %bb.ab
    i32 19, label %ArrowTypeString.exit.thread52.i
    i32 20, label %ArrowTypeString.exit.thread39.i
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 42, label %ArrowTypeString.exit.thread34.i
    i32 43, label %bb.af
    i32 24, label %bb.ag
    i32 25, label %bb.ah
    i32 26, label %bb.ai
    i32 27, label %bb.aj
    i32 28, label %ArrowTypeString.exit.thread49.i
    i32 29, label %bb.ak
    i32 30, label %bb.al
    i32 31, label %bb.am
    i32 32, label %bb.an
    i32 33, label %bb.ao
    i32 34, label %bb.ap
    i32 35, label %bb.aq
    i32 36, label %bb.ar
    i32 37, label %bb.as
    i32 38, label %bb.at
    i32 39, label %bb.au
    i32 40, label %bb.av
    i32 41, label %bb.aw
    i32 44, label %bb.ax
    i32 45, label %bb.ay
  ]

bb.m:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.n:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.o:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.p:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.q:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.r:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.s:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.t:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.u:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.v:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.w:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.x:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.y:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.z:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.aa:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.ab:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.ac:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread39.i

bb.ad:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.ae:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.af:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread34.i

bb.ag:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread34.i

bb.ah:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread34.i

bb.ai:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.aj:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.ak:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread49.i

bb.al:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.am:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.an:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.ao:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread44.i

bb.ap:                                            ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread39.i

end_hunk_0
begin_hunk_1_@ArrowSchemaToString:bb.a
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !37
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0147, i64 noundef %.0141, ptr noundef nonnull @.str.153, ptr noundef nonnull %.0.i46.i, i32 noundef %i.bd) #17
  br label %ArrowSchemaTypeToStringInternal.exit

ArrowTypeString.exit.thread49.i:                  ; preds = %bb.ak, %ArrowToStringLogChars.exit56
  %.0.i51.i = phi ptr [ @.str.134, %ArrowToStringLogChars.exit56 ], [ @.str.135, %bb.ak ]
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0147, i64 noundef %.0141, ptr noundef nonnull @.str.154, ptr noundef nonnull %.0.i51.i, ptr noundef %i.bg) #17
  br label %ArrowSchemaTypeToStringInternal.exit

ArrowTypeString.exit.thread.i:                    ; preds = %ArrowTypeString.exit.i, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %ArrowToStringLogChars.exit56
  %.0.i31.i = phi ptr [ null, %ArrowTypeString.exit.i ], [ @.str.105, %ArrowToStringLogChars.exit56 ], [ @.str.148, %bb.ax ], [ @.str.147, %bb.aw ], [ @.str.146, %bb.av ], [ @.str.145, %bb.au ], [ @.str.144, %bb.at ], [ @.str.143, %bb.as ], [ @.str.142, %bb.ar ], [ @.str.141, %bb.aq ], [ @.str.138, %bb.an ], [ @.str.137, %bb.am ], [ @.str.136, %bb.al ], [ @.str.133, %bb.aj ], [ @.str.132, %bb.ai ], [ @.str.127, %bb.ae ], [ @.str.126, %bb.ad ], [ @.str.122, %bb.ab ], [ @.str.121, %bb.aa ], [ @.str.119, %bb.z ], [ @.str.118, %bb.y ], [ @.str.117, %bb.x ], [ @.str.116, %bb.w ], [ @.str.115, %bb.v ], [ @.str.114, %bb.u ], [ @.str.113, %bb.t ], [ @.str.112, %bb.s ], [ @.str.111, %bb.r ], [ @.str.110, %bb.q ], [ @.str.109, %bb.p ], [ @.str.108, %bb.o ], [ @.str.107, %bb.n ], [ @.str.106, %bb.m ], [ @.str.149, %bb.ay ]
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0147, i64 noundef %.0141, ptr noundef nonnull @.str.155, ptr noundef %.0.i31.i) #17
  br label %ArrowSchemaTypeToStringInternal.exit

ArrowSchemaTypeToStringInternal.exit:             ; preds = %ArrowTypeString.exit.thread34.i, %ArrowTimeUnitString.exit.i, %ArrowTimeUnitString.exit29.i, %ArrowTypeString.exit.thread44.i, %ArrowTypeString.exit.thread49.i, %ArrowTypeString.exit.thread.i
  %.0.in.i = phi i32 [ %i.bi, %ArrowTypeString.exit.thread.i ], [ %i.ap, %ArrowTypeString.exit.thread34.i ], [ %i.aw, %ArrowTimeUnitString.exit.i ], [ %i.bb, %ArrowTimeUnitString.exit29.i ], [ %i.be, %ArrowTypeString.exit.thread44.i ], [ %i.bh, %ArrowTypeString.exit.thread49.i ]
  %.0.i57 = sext i32 %.0.in.i to i64
  br label %ArrowToStringLogChars.exit61

bb.az:                                            ; preds = %ArrowToStringLogChars.exit
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.bk = call i64 @ArrowSchemaToString(ptr noundef %i.bj, ptr noundef %spec.select, i64 noundef %spec.select.i, i8 noundef signext %3)
  br label %ArrowToStringLogChars.exit61

ArrowToStringLogChars.exit61:                     ; preds = %bb.az, %ArrowSchemaTypeToStringInternal.exit
  %.1148 = phi ptr [ %spec.select, %bb.az ], [ %.0147, %ArrowSchemaTypeToStringInternal.exit ] ; 2 uses
  %.1142 = phi i64 [ %spec.select.i, %bb.az ], [ %.0141, %ArrowSchemaTypeToStringInternal.exit ]
  %.1139 = phi i64 [ %spec.store.select.i, %bb.az ], [ %.0138, %ArrowSchemaTypeToStringInternal.exit ]
  %.1 = phi i64 [ %i.bk, %bb.az ], [ %.0.i57, %ArrowSchemaTypeToStringInternal.exit ]
  %spec.store.select.i58 = call i64 @llvm.smax.i64(i64 range(i64 -2147483648, -9223372036854775808) %.1, i64 0) ; 3 uses
  %i.bl = add nuw nsw i64 %spec.store.select.i58, %.1139 ; 3 uses
  %i.bm = sub nsw i64 %.1142, %spec.store.select.i58
  %spec.select.i59 = call i64 @llvm.smax.i64(i64 %i.bm, i64 0) ; 4 uses
  %.not.i60 = icmp eq ptr %.1148, null
  %i.bn = getelementptr inbounds nuw i8, ptr %.1148, i64 %spec.store.select.i58
  %spec.select154 = select i1 %.not.i60, ptr null, ptr %i.bn ; 5 uses
  %.not49 = icmp eq i8 %3, 0
  br i1 %.not49, label %ArrowToStringLogChars.exit69, label %bb.ba

bb.ba:                                            ; preds = %ArrowToStringLogChars.exit61
  %i.bo = load ptr, ptr %0, align 8, !tbaa !19
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bq = icmp eq i8 %i.bp, 43
  br i1 %i.bq, label %ArrowToStringLogChars.exit65, label %ArrowToStringLogChars.exit69

ArrowToStringLogChars.exit65:                     ; preds = %bb.ba
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %spec.select154, i64 noundef %spec.select.i59, ptr noundef nonnull @.str.31) #17
  %i.bs = call i32 @llvm.smax.i32(i32 %i.br, i32 0)
  %spec.store.select.i62 = zext nneg i32 %i.bs to i64 ; 3 uses
  %i.bt = add nuw nsw i64 %i.bl, %spec.store.select.i62 ; 5 uses
  %i.bu = sub nsw i64 %spec.select.i59, %spec.store.select.i62
  %spec.select.i63 = call i64 @llvm.smax.i64(i64 %i.bu, i64 0) ; 6 uses
  %.not.i64 = icmp eq ptr %spec.select154, null
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select154, i64 %spec.store.select.i62
  %spec.select155 = select i1 %.not.i64, ptr null, ptr %i.bv ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !23
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %ArrowToStringLogChars.exit73.peel, label %._crit_edge

ArrowToStringLogChars.exit73.peel:                ; preds = %ArrowToStringLogChars.exit65
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !22
  %.pre167 = load ptr, ptr %.pre, align 8, !tbaa !24 ; 5 uses
  %.not51.peel = icmp eq ptr %.pre167, null
  br i1 %.not51.peel, label %ArrowToStringLogChars.exit77.peel, label %bb.bb

bb.bb:                                            ; preds = %ArrowToStringLogChars.exit73.peel
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre167, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %.not52.peel = icmp eq ptr %i.cb, null
  br i1 %.not52.peel, label %ArrowToStringLogChars.exit77.peel, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre167, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 2 uses
  %.not53.peel = icmp eq ptr %i.cd, null
  br i1 %.not53.peel, label %ArrowToStringLogChars.exit77.peel, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ce = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %spec.select155, i64 noundef %spec.select.i63, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.cd) #17
  %i.cf = call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %spec.store.select.i74.peel = zext nneg i32 %i.cf to i64 ; 3 uses
  %i.cg = add nuw nsw i64 %i.bt, %spec.store.select.i74.peel
  %i.ch = sub nsw i64 %spec.select.i63, %spec.store.select.i74.peel
  %spec.select.i75.peel = call i64 @llvm.smax.i64(i64 %i.ch, i64 0)
  %.not.i76.peel = icmp eq ptr %spec.select155, null
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select155, i64 %spec.store.select.i74.peel
  %spec.select158.peel = select i1 %.not.i76.peel, ptr null, ptr %i.ci
  %.pre168 = load ptr, ptr %i.bz, align 8, !tbaa !22
  %.pre169 = load ptr, ptr %.pre168, align 8, !tbaa !24
  br label %ArrowToStringLogChars.exit77.peel

ArrowToStringLogChars.exit77.peel:                ; preds = %bb.bd, %bb.bc, %bb.bb, %ArrowToStringLogChars.exit73.peel
  %i.cj = phi ptr [ null, %ArrowToStringLogChars.exit73.peel ], [ %.pre167, %bb.bb ], [ %.pre167, %bb.bc ], [ %.pre169, %bb.bd ]
  %.4151.peel = phi ptr [ %spec.select155, %ArrowToStringLogChars.exit73.peel ], [ %spec.select155, %bb.bb ], [ %spec.select155, %bb.bc ], [ %spec.select158.peel, %bb.bd ] ; 3 uses
  %.4145.peel = phi i64 [ %spec.select.i63, %ArrowToStringLogChars.exit73.peel ], [ %spec.select.i63, %bb.bb ], [ %spec.select.i63, %bb.bc ], [ %spec.select.i75.peel, %bb.bd ] ; 2 uses
  %.4.peel = phi i64 [ %i.bt, %ArrowToStringLogChars.exit73.peel ], [ %i.bt, %bb.bb ], [ %i.bt, %bb.bc ], [ %i.cg, %bb.bd ]
  %i.ck = call i64 @ArrowSchemaToString(ptr noundef %i.cj, ptr noundef %.4151.peel, i64 noundef %.4145.peel, i8 noundef signext %3)
  %spec.store.select.i78.peel = call i64 @llvm.smax.i64(i64 range(i64 -2147483648, -9223372036854775808) %i.ck, i64 0) ; 3 uses
  %i.cl = add nuw nsw i64 %spec.store.select.i78.peel, %.4.peel ; 2 uses
  %i.cm = sub nsw i64 %.4145.peel, %spec.store.select.i78.peel
  %spec.select.i79.peel = call i64 @llvm.smax.i64(i64 %i.cm, i64 0) ; 2 uses
  %.not.i80.peel = icmp eq ptr %.4151.peel, null
  %i.cn = getelementptr inbounds nuw i8, ptr %.4151.peel, i64 %spec.store.select.i78.peel
  %spec.select159.peel = select i1 %.not.i80.peel, ptr null, ptr %i.cn ; 2 uses
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !23
  %i.cp = icmp sgt i64 %i.co, 1
  br i1 %i.cp, label %ArrowToStringLogChars.exit73, label %._crit_edge

._crit_edge:                                      ; preds = %ArrowToStringLogChars.exit77, %ArrowToStringLogChars.exit77.peel, %ArrowToStringLogChars.exit65
  %.2149.lcssa = phi ptr [ %spec.select155, %ArrowToStringLogChars.exit65 ], [ %spec.select159.peel, %ArrowToStringLogChars.exit77.peel ], [ %spec.select159, %ArrowToStringLogChars.exit77 ] ; 3 uses
  %.2143.lcssa = phi i64 [ %spec.select.i63, %ArrowToStringLogChars.exit65 ], [ %spec.select.i79.peel, %ArrowToStringLogChars.exit77.peel ], [ %spec.select.i79, %ArrowToStringLogChars.exit77 ] ; 2 uses
  %.2140.lcssa = phi i64 [ %i.bt, %ArrowToStringLogChars.exit65 ], [ %i.cl, %ArrowToStringLogChars.exit77.peel ], [ %i.do, %ArrowToStringLogChars.exit77 ]
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.2149.lcssa, i64 noundef %.2143.lcssa, ptr noundef nonnull @.str.34) #17
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %spec.store.select.i66 = zext nneg i32 %i.cr to i64 ; 3 uses
  %i.cs = add nsw i64 %.2140.lcssa, %spec.store.select.i66
  %i.ct = sub nsw i64 %.2143.lcssa, %spec.store.select.i66
  %spec.select.i67 = call i64 @llvm.smax.i64(i64 %i.ct, i64 0)
  %.not.i68 = icmp eq ptr %.2149.lcssa, null
  %i.cu = getelementptr inbounds nuw i8, ptr %.2149.lcssa, i64 %spec.store.select.i66
  %spec.select156 = select i1 %.not.i68, ptr null, ptr %i.cu
  br label %ArrowToStringLogChars.exit69

ArrowToStringLogChars.exit73:                     ; preds = %ArrowToStringLogChars.exit77.peel, %ArrowToStringLogChars.exit77
  %.0163 = phi i64 [ %i.dr, %ArrowToStringLogChars.exit77 ], [ 1, %ArrowToStringLogChars.exit77.peel ] ; 3 uses
  %.2140162 = phi i64 [ %i.do, %ArrowToStringLogChars.exit77 ], [ %i.cl, %ArrowToStringLogChars.exit77.peel ]
  %.2143161 = phi i64 [ %spec.select.i79, %ArrowToStringLogChars.exit77 ], [ %spec.select.i79.peel, %ArrowToStringLogChars.exit77.peel ] ; 2 uses
  %.2149160 = phi ptr [ %spec.select159, %ArrowToStringLogChars.exit77 ], [ %spec.select159.peel, %ArrowToStringLogChars.exit77.peel ] ; 3 uses
  %i.cv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.2149160, i64 noundef %.2143161, ptr noundef nonnull @.str.32) #17
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %spec.store.select.i70 = zext nneg i32 %i.cw to i64 ; 3 uses
  %i.cx = add nsw i64 %.2140162, %spec.store.select.i70 ; 4 uses
  %i.cy = sub nsw i64 %.2143161, %spec.store.select.i70
  %spec.select.i71 = call i64 @llvm.smax.i64(i64 %i.cy, i64 0) ; 5 uses
  %.not.i72 = icmp eq ptr %.2149160, null
  %i.cz = getelementptr inbounds nuw i8, ptr %.2149160, i64 %spec.store.select.i70
  %spec.select157 = select i1 %.not.i72, ptr null, ptr %i.cz ; 6 uses
  %i.da = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.0163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !24 ; 5 uses
  %.not51 = icmp eq ptr %i.dc, null
  br i1 %.not51, label %ArrowToStringLogChars.exit77, label %bb.be

bb.be:                                            ; preds = %ArrowToStringLogChars.exit73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !18
  %.not52 = icmp eq ptr %i.de, null
  br i1 %.not52, label %ArrowToStringLogChars.exit77, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !20 ; 2 uses
  %.not53 = icmp eq ptr %i.dg, null
  br i1 %.not53, label %ArrowToStringLogChars.exit77, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %spec.select157, i64 noundef %spec.select.i71, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.dg) #17
  %i.di = call i32 @llvm.smax.i32(i32 %i.dh, i32 0)
  %spec.store.select.i74 = zext nneg i32 %i.di to i64 ; 3 uses
  %i.dj = add nsw i64 %i.cx, %spec.store.select.i74
  %i.dk = sub nsw i64 %spec.select.i71, %spec.store.select.i74
  %spec.select.i75 = call i64 @llvm.smax.i64(i64 %i.dk, i64 0)
  %.not.i76 = icmp eq ptr %spec.select157, null
  %i.dl = getelementptr inbounds nuw i8, ptr %spec.select157, i64 %spec.store.select.i74
  %spec.select158 = select i1 %.not.i76, ptr null, ptr %i.dl
  %.pre170 = load ptr, ptr %i.bz, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre170, i64 %.0163
  %.pre171 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %ArrowToStringLogChars.exit77

ArrowToStringLogChars.exit77:                     ; preds = %bb.bg, %bb.bf, %bb.be, %ArrowToStringLogChars.exit73
  %i.dm = phi ptr [ null, %ArrowToStringLogChars.exit73 ], [ %i.dc, %bb.be ], [ %i.dc, %bb.bf ], [ %.pre171, %bb.bg ]
  %.4151 = phi ptr [ %spec.select157, %ArrowToStringLogChars.exit73 ], [ %spec.select157, %bb.be ], [ %spec.select157, %bb.bf ], [ %spec.select158, %bb.bg ] ; 3 uses
  %.4145 = phi i64 [ %spec.select.i71, %ArrowToStringLogChars.exit73 ], [ %spec.select.i71, %bb.be ], [ %spec.select.i71, %bb.bf ], [ %spec.select.i75, %bb.bg ] ; 2 uses
  %.4 = phi i64 [ %i.cx, %ArrowToStringLogChars.exit73 ], [ %i.cx, %bb.be ], [ %i.cx, %bb.bf ], [ %i.dj, %bb.bg ]
  %i.dn = call i64 @ArrowSchemaToString(ptr noundef %i.dm, ptr noundef %.4151, i64 noundef %.4145, i8 noundef signext %3)
  %spec.store.select.i78 = call i64 @llvm.smax.i64(i64 range(i64 -2147483648, -9223372036854775808) %i.dn, i64 0) ; 3 uses
  %i.do = add nsw i64 %spec.store.select.i78, %.4 ; 2 uses
  %i.dp = sub nsw i64 %.4145, %spec.store.select.i78
  %spec.select.i79 = call i64 @llvm.smax.i64(i64 %i.dp, i64 0) ; 2 uses
  %.not.i80 = icmp eq ptr %.4151, null
  %i.dq = getelementptr inbounds nuw i8, ptr %.4151, i64 %spec.store.select.i78
  %spec.select159 = select i1 %.not.i80, ptr null, ptr %i.dq ; 2 uses
  %i.dr = add nuw nsw i64 %.0163, 1               ; 2 uses
  %i.ds = load i64, ptr %i.bw, align 8, !tbaa !23
  %i.dt = icmp slt i64 %i.dr, %i.ds
  br i1 %i.dt, label %ArrowToStringLogChars.exit73, label %._crit_edge, !llvm.loop !58

ArrowToStringLogChars.exit69:                     ; preds = %._crit_edge, %bb.ba, %ArrowToStringLogChars.exit61
  %.5152 = phi ptr [ %spec.select154, %ArrowToStringLogChars.exit61 ], [ %spec.select154, %bb.ba ], [ %spec.select156, %._crit_edge ]
  %.5146 = phi i64 [ %spec.select.i59, %ArrowToStringLogChars.exit61 ], [ %spec.select.i59, %bb.ba ], [ %spec.select.i67, %._crit_edge ]
  %.5 = phi i64 [ %i.bl, %ArrowToStringLogChars.exit61 ], [ %i.bl, %bb.ba ], [ %i.cs, %._crit_edge ] ; 2 uses
  %brmerge181 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %brmerge181, label %.sink.split, label %bb.bh

.sink.split:                                      ; preds = %ArrowToStringLogChars.exit69
  %.str.35.mux = select i1 %or.cond, ptr @.str.35, ptr @.str.36
  %.str.35.mux.mux = select i1 %i.o, ptr %.str.35.mux, ptr @.str.34
  %i.du = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.5152, i64 noundef %.5146, ptr noundef nonnull %.str.35.mux.mux) #17
  %i.dv = sext i32 %i.du to i64
  %i.dw = add nsw i64 %.5, %i.dv
  br label %bb.bh

bb.bh:                                            ; preds = %ArrowToStringLogChars.exit69, %.sink.split
  %.6 = phi i64 [ %.5, %ArrowToStringLogChars.exit69 ], [ %i.dw, %.sink.split ]
  %. = call i64 @llvm.smax.i64(i64 %.6, i64 0)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.f
  %.144 = phi i64 [ %i.k, %bb.f ], [ %., %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.d, %bb.b
  %.2 = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %.144, %bb.bi ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef ptr @ArrowTypeString(i32 noundef %0) unnamed_addr #9 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 45
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @ArrowMetadataReaderInit(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink8 = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink8, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.d, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 23) i32 @ArrowMetadataReaderRead(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 4 uses
  %.0.copyload2 = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %1, align 8, !tbaa !41
  %i.i = sext i32 %.0.copyload2 to i64            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr i8, ptr %i.g, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.0.copyload = load i32, ptr %i.l, align 1
  %i.m = add nsw i64 %i.i, 8                      ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  store ptr %i.n, ptr %2, align 8, !tbaa !41
  %i.o = sext i32 %.0.copyload to i64             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !42
  %i.q = add i64 %i.m, %i.f
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %i.e, align 8, !tbaa !45
  %i.s = add nsw i32 %i.b, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define signext range(i8 0, 2) i8 @ArrowMetadataHasKey(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ArrowMetadataGetValue.exit, label %ArrowMetadataReaderInit.exit.i.i

ArrowMetadataReaderInit.exit.i.i:                 ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ArrowMetadataReaderInit.exit.i.i, %.critedge.i.i
  %.sroa.416.035.i.i = phi i64 [ %i.k, %.critedge.i.i ], [ 4, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %.sroa.7.034.i.i = phi i32 [ %i.l, %.critedge.i.i ], [ %i.b, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.sroa.416.035.i.i ; 3 uses
  %.0.copyload2.i.i.i = load i32, ptr %i.d, align 1
  %i.e = sext i32 %.0.copyload2.i.i.i to i64      ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 1
  %i.h = sext i32 %.0.copyload.i.i.i to i64
  %i.i = add i64 %.sroa.416.035.i.i, 8
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.h
  %i.l = add nsw i32 %.sroa.7.034.i.i, -1
  %i.m = icmp eq i64 %2, %i.e
  br i1 %i.m, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = tail call i32 @strncmp(ptr noundef readonly %1, ptr noundef nonnull %i.n, i64 noundef %2) #18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %ArrowMetadataGetValue.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.lr.ph.i.i
  %i.q = icmp samesign ult i32 %.sroa.7.034.i.i, 2
  br i1 %i.q, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

ArrowMetadataGetValue.exit:                       ; preds = %bb.b, %.critedge.i.i, %bb.a, %ArrowMetadataReaderInit.exit.i.i
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 0, %ArrowMetadataReaderInit.exit.i.i ], [ 1, %bb.b ], [ 0, %.critedge.i.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @ArrowMetadataBuilderInit(ptr noundef initializes((0, 48)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.ArrowBufferAllocator, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ArrowMetadataSizeOf.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1                ; 5 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %ArrowMetadataReaderInit.exit.i
  %xtraiter = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.c, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.4.019.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.019.i ; 2 uses
  %.0.copyload2.i.i = load i32, ptr %i.f, align 1
  %i.g = sext i32 %.0.copyload2.i.i to i64        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.0.copyload.i.i = load i32, ptr %i.i, align 1
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add nsw i64 %i.g, 8                      ; 2 uses
  %i.l = add i64 %i.k, %.sroa.4.019.i
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.k, %.020.i
  %i.o = add i64 %i.n, %i.j
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.m ; 2 uses
  %.0.copyload2.i.i.1 = load i32, ptr %i.p, align 1
  %i.q = sext i32 %.0.copyload2.i.i.1 to i64      ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.0.copyload.i.i.1 = load i32, ptr %i.s, align 1
  %i.t = sext i32 %.0.copyload.i.i.1 to i64       ; 2 uses
  %i.u = add nsw i64 %i.q, 8                      ; 2 uses
  %i.v = add i64 %i.u, %i.m
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = add i64 %i.u, %i.o
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
end_hunk_1
