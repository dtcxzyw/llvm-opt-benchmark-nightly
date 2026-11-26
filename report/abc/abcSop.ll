Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSop?download=true
inline.NumInlined: 129
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Abc_SopGenerateCounters:bb.a
._crit_edge79:                                    ; preds = %bb.ac
  %i.ci = icmp eq i32 %.promoted89, %i.cg
  br i1 %i.ci, label %bb.ad, label %Vec_StrPush.exit58

bb.ad:                                            ; preds = %._crit_edge79
  %i.cj = icmp slt i32 %i.cg, 16
  br i1 %i.cj, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not9.i.i56 = icmp eq ptr %.promoted7294, null
  br i1 %.not9.i.i56, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %.promoted7294, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i54

bb.ag:                                            ; preds = %bb.ae
  %i.cl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i54

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp samesign ult i32 %i.cg, 1073741823
  %i.cn = shl nuw nsw i32 %i.cg, 1
  %spec.select.i51 = select i1 %i.cm, i32 %i.cn, i32 2147483647 ; 4 uses
  %.not.i9.i52 = icmp samesign ult i32 %i.cg, %spec.select.i51
  br i1 %.not.i9.i52, label %bb.ai, label %Vec_StrPush.exit58

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i53 = icmp eq ptr %.promoted7294, null
  %i.co = zext nneg i32 %spec.select.i51 to i64   ; 2 uses
  br i1 %.not9.i10.i53, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %.promoted7294, i64 noundef %i.co) #24
  br label %Vec_StrGrow.exit11.sink.split.i54

bb.ak:                                            ; preds = %bb.ai
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.co) #25
  br label %Vec_StrGrow.exit11.sink.split.i54

Vec_StrGrow.exit11.sink.split.i54:                ; preds = %bb.aj, %bb.ak, %bb.af, %bb.ag
  %storemerge = phi ptr [ %i.cl, %bb.ag ], [ %i.ck, %bb.af ], [ %i.cp, %bb.aj ], [ %i.cq, %bb.ak ] ; 2 uses
  %spec.select.sink.i55 = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i51, %bb.aj ], [ %spec.select.i51, %bb.ak ]
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !38
  store i32 %spec.select.sink.i55, ptr %i.o, align 8, !tbaa !37
  br label %Vec_StrPush.exit58

Vec_StrPush.exit58:                               ; preds = %bb.c, %._crit_edge79, %bb.ah, %Vec_StrGrow.exit11.sink.split.i54
  %i.cr = phi i32 [ %.promoted89, %._crit_edge79 ], [ %.promoted89, %bb.ah ], [ %.promoted89, %Vec_StrGrow.exit11.sink.split.i54 ], [ 0, %bb.c ]
  %i.cs = phi ptr [ %.promoted7294, %._crit_edge79 ], [ %.promoted7294, %bb.ah ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i54 ], [ %i.q, %bb.c ] ; 2 uses
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !14
  %i.cv = load i32, ptr %i.g, align 4, !tbaa !30  ; 7 uses
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !33
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.al, label %Vec_StrFree.exit

bb.al:                                            ; preds = %Vec_StrPush.exit58
  %i.cy = icmp slt i32 %i.cv, 16
  br i1 %i.cy, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %.not9.i.i61 = icmp eq ptr %i.cz, null
  br i1 %.not9.i.i61, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ao:                                            ; preds = %bb.am
  %i.db = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ap:                                            ; preds = %bb.al
  %i.dc = icmp samesign ult i32 %i.cv, 1073741823
  %i.dd = shl nuw nsw i32 %i.cv, 1
  %spec.select.i59 = select i1 %i.dc, i32 %i.dd, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.cv, %spec.select.i59
  br i1 %.not.i10.i, label %bb.aq, label %Vec_StrFree.exit

bb.aq:                                            ; preds = %bb.ap
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.de, null
  %i.df = zext nneg i32 %spec.select.i59 to i64
  %i.dg = shl nuw nsw i64 %i.df, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = tail call ptr @realloc(ptr noundef nonnull %i.de, i64 noundef %i.dg) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.as:                                            ; preds = %bb.aq
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dg) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ar, %bb.as, %bb.an, %bb.ao
  %storemerge63 = phi ptr [ %i.db, %bb.ao ], [ %i.da, %bb.an ], [ %i.dh, %bb.ar ], [ %i.di, %bb.as ]
  %spec.select.sink.i60 = phi i32 [ 16, %bb.ao ], [ 16, %bb.an ], [ %spec.select.i59, %bb.ar ], [ %spec.select.i59, %bb.as ]
  store ptr %storemerge63, ptr %i.l, align 8, !tbaa !31
  store i32 %spec.select.sink.i60, ptr %i.e, align 8, !tbaa !33
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %Vec_StrPush.exit58, %Vec_PtrGrow.exit12.sink.split.i, %bb.ap
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.dk = add nsw i32 %i.cv, 1
  store i32 %i.dk, ptr %i.g, align 4, !tbaa !30
  %i.dl = sext i32 %i.cv to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dl
  store ptr %i.cs, ptr %i.dm, align 8, !tbaa !32
  tail call void @free(ptr noundef nonnull %i.o) #23
  %i.dn = add nuw nsw i32 %.080, 1                ; 2 uses
  %exitcond87.not = icmp eq i32 %i.dn, %.09.i
  br i1 %exitcond87.not, label %._crit_edge82, label %bb.c, !llvm.loop !103

._crit_edge82:                                    ; preds = %Vec_StrFree.exit, %Vec_PtrAlloc.exit
  ret ptr %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_SopEncoderPos(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %1) #23 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #22
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 1
  %i.f = tail call ptr @Mem_FlexEntryFetch(ptr noundef %0, i32 noundef %i.e) #23 ; 2 uses
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_SopEncoderLog(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %Vec_StrPush.exit.i.2

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %2, 2147483640                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi123 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.b = lshr <4 x i32> %vec.ind, %broadcast.splat
  %i.c = lshr <4 x i32> %step.add, %broadcast.splat
  %i.d = and <4 x i32> %i.b, splat (i32 1)
  %i.e = and <4 x i32> %i.c, splat (i32 1)
  %i.f = add <4 x i32> %i.d, %vec.phi             ; 2 uses
  %i.g = add <4 x i32> %i.e, %vec.phi123          ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i32 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.loopexit, label %.lr.ph.preheader124

.lr.ph.preheader124:                              ; preds = %.lr.ph.preheader, %middle.block
  %.02692.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02791.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader124, %.lr.ph
  %.02692 = phi i32 [ %i.l, %.lr.ph ], [ %.02692.ph, %.lr.ph.preheader124 ]
  %.02791 = phi i32 [ %i.m, %.lr.ph ], [ %.02791.ph, %.lr.ph.preheader124 ] ; 2 uses
  %i.j = lshr i32 %.02791, %1
  %i.k = and i32 %i.j, 1
  %i.l = add nuw nsw i32 %i.k, %.02692            ; 2 uses
  %i.m = add nuw nsw i32 %.02791, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %2
  br i1 %exitcond.not, label %.lr.ph.i.loopexit, label %.lr.ph, !llvm.loop !105

.lr.ph.i.loopexit:                                ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.l, %.lr.ph ]
  %i.n = icmp samesign ugt i32 %.lcssa, 1
  br label %Vec_StrPush.exit.i.2

Vec_StrPush.exit.i.2:                             ; preds = %.lr.ph.i.loopexit, %bb.a
  %.026.lcssa = phi i1 [ false, %bb.a ], [ %i.n, %.lr.ph.i.loopexit ] ; 2 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 14 uses
  store i32 100, ptr %i.o, align 8, !tbaa !37
  %i.q = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #25 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 25 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !38
  store i8 100, ptr %i.q, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !14
  store i32 3, ptr %i.p, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 10, ptr %i.t, align 1, !tbaa !14
  br i1 %.026.lcssa, label %Vec_StrPush.exit.i36, label %Vec_StrPrintStr.exit47

Vec_StrPush.exit.i36:                             ; preds = %Vec_StrPush.exit.i.2
  store i32 4, ptr %i.p, align 4, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store i8 40, ptr %i.u, align 1, !tbaa !14
  br label %Vec_StrPrintStr.exit47

Vec_StrPrintStr.exit47:                           ; preds = %Vec_StrPush.exit.i36, %Vec_StrPush.exit.i.2
  %.pre99105 = phi i32 [ 4, %Vec_StrPush.exit.i36 ], [ 3, %Vec_StrPush.exit.i.2 ]
  br i1 %i.a, label %.lr.ph95, label %._crit_edge

.lr.ph95:                                         ; preds = %Vec_StrPrintStr.exit47
  %i.v = shl nuw i32 1, %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %bb.n
  %.094 = phi i32 [ 1, %.lr.ph95 ], [ %.2, %bb.n ] ; 2 uses
  %.12893 = phi i32 [ 0, %.lr.ph95 ], [ %i.an, %bb.n ] ; 3 uses
  %i.w = and i32 %.12893, %i.v
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not30 = icmp eq i32 %.094, 0
  br i1 %.not30, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.p, align 4, !tbaa !36   ; 7 uses
  %i.y = load i32, ptr %i.o, align 8, !tbaa !37
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %.Vec_StrPush.exit_crit_edge

.Vec_StrPush.exit_crit_edge:                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !38
  br label %Vec_StrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !38  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.ae = icmp samesign ult i32 %i.x, 1073741823
  %i.af = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.ae, i32 %i.af, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.x, %spec.select.i
  %.pre97 = load ptr, ptr %i.r, align 8, !tbaa !38 ; 3 uses
  br i1 %.not.i9.i, label %bb.j, label %Vec_StrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %.pre97, null
  %i.ag = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %.pre97, i64 noundef %i.ag) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #25
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge90 = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.g ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %storemerge90, ptr %i.r, align 8, !tbaa !38
  store i32 %spec.select.sink.i, ptr %i.o, align 8, !tbaa !37
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.Vec_StrPush.exit_crit_edge, %bb.i, %Vec_StrGrow.exit11.sink.split.i
  %i.aj = phi ptr [ %.pre, %.Vec_StrPush.exit_crit_edge ], [ %.pre97, %bb.i ], [ %storemerge90, %Vec_StrGrow.exit11.sink.split.i ]
  %i.ak = add nsw i32 %i.x, 1
  store i32 %i.ak, ptr %i.p, align 4, !tbaa !36
  %i.al = sext i32 %i.x to i64
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i8 44, ptr %i.am, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_StrPush.exit
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.o, i32 noundef %.12893)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m
  %.2 = phi i32 [ 0, %bb.m ], [ %.094, %bb.b ]
  %i.an = add nuw nsw i32 %.12893, 1              ; 2 uses
  %exitcond96.not = icmp eq i32 %i.an, %2
  br i1 %exitcond96.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre99.pre = load i32, ptr %i.p, align 4, !tbaa !36
  %.pre101.pre = load i32, ptr %i.o, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_StrPrintStr.exit47
  %.pre101 = phi i32 [ %.pre101.pre, %._crit_edge.loopexit ], [ 100, %Vec_StrPrintStr.exit47 ] ; 6 uses
  %.pre99 = phi i32 [ %.pre99.pre, %._crit_edge.loopexit ], [ %.pre99105, %Vec_StrPrintStr.exit47 ] ; 4 uses
  br i1 %.026.lcssa, label %.lr.ph.i48, label %.lr.ph.i65

.lr.ph.i48:                                       ; preds = %._crit_edge
  %i.ao = icmp eq i32 %.pre99, %.pre101
  br i1 %i.ao, label %bb.o, label %.Vec_StrPush.exit_crit_edge.i51

.Vec_StrPush.exit_crit_edge.i51:                  ; preds = %.lr.ph.i48
  %.pre.i52 = load ptr, ptr %i.r, align 8, !tbaa !38
  br label %Vec_StrPush.exit.i53

bb.o:                                             ; preds = %.lr.ph.i48
  %i.ap = icmp slt i32 %.pre101, 16
  br i1 %i.ap, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !38  ; 2 uses
  %.not9.i.i.i63 = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i.i63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i.i60

bb.r:                                             ; preds = %bb.p
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i.i60

bb.s:                                             ; preds = %bb.o
  %i.at = icmp samesign ult i32 %.pre101, 1073741823
  %i.au = shl nuw nsw i32 %.pre101, 1
  %spec.select.i.i56 = select i1 %i.at, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i9.i.i57 = icmp samesign ult i32 %.pre101, %spec.select.i.i56
  %.pre8.i58 = load ptr, ptr %i.r, align 8, !tbaa !38 ; 3 uses
  br i1 %.not.i9.i.i57, label %bb.t, label %Vec_StrPush.exit.i53

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i.i59 = icmp eq ptr %.pre8.i58, null
  %i.av = zext nneg i32 %spec.select.i.i56 to i64 ; 2 uses
  br i1 %.not9.i10.i.i59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %.pre8.i58, i64 noundef %i.av) #24
  br label %Vec_StrGrow.exit11.sink.split.i.i60

bb.v:                                             ; preds = %bb.t
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #25
  br label %Vec_StrGrow.exit11.sink.split.i.i60

Vec_StrGrow.exit11.sink.split.i.i60:              ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %i.ay = phi ptr [ %i.as, %bb.r ], [ %i.ar, %bb.q ], [ %i.aw, %bb.u ], [ %i.ax, %bb.v ] ; 2 uses
  %spec.select.sink.i.i61 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i.i56, %bb.u ], [ %spec.select.i.i56, %bb.v ]
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !38
  store i32 %spec.select.sink.i.i61, ptr %i.o, align 8, !tbaa !37
  br label %Vec_StrPush.exit.i53

Vec_StrPush.exit.i53:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i60, %bb.s, %.Vec_StrPush.exit_crit_edge.i51
  %i.az = phi ptr [ %.pre.i52, %.Vec_StrPush.exit_crit_edge.i51 ], [ %.pre8.i58, %bb.s ], [ %i.ay, %Vec_StrGrow.exit11.sink.split.i.i60 ]
  %i.ba = add nsw i32 %.pre99, 1
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !36
  %i.bb = sext i32 %.pre99 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 41, ptr %i.bc, align 1, !tbaa !14
  %.pre98 = load i32, ptr %i.p, align 4, !tbaa !36
  %.pre100 = load i32, ptr %i.o, align 8, !tbaa !37
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %Vec_StrPush.exit.i53, %._crit_edge
  %i.bd = phi i32 [ %.pre100, %Vec_StrPush.exit.i53 ], [ %.pre101, %._crit_edge ] ; 5 uses
  %i.be = phi i32 [ %.pre98, %Vec_StrPush.exit.i53 ], [ %.pre99, %._crit_edge ] ; 3 uses
  %i.bf = icmp eq i32 %i.be, %i.bd
  br i1 %i.bf, label %bb.w, label %.Vec_StrPush.exit_crit_edge.i68

.Vec_StrPush.exit_crit_edge.i68:                  ; preds = %.lr.ph.i65
  %.pre.i69 = load ptr, ptr %i.r, align 8, !tbaa !38
  br label %Vec_StrPush.exit.i70

bb.w:                                             ; preds = %.lr.ph.i65
  %i.bg = icmp slt i32 %i.bd, 16
end_hunk_0
