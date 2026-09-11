Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBridge?download=true
inline.NumInlined: 145
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Gia_ManFromBridgeUnknown:bb.a
  %i.k = lshr i32 %.08.i, 7                       ; 2 uses
  %.not.i11 = icmp ult i32 %.08.i, 16384
  br i1 %.not.i11, label %Gia_AigerWriteUnsignedFile.exit, label %.lr.ph.i10, !llvm.loop !1

Gia_AigerWriteUnsignedFile.exit.critedge:         ; preds = %bb.a
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 3) #21 ; 0 uses
  %fputc9.c = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.m = tail call i32 @fputc(i32 noundef 0, ptr noundef %0) ; 0 uses
  %i.n = tail call i32 @fputc(i32 noundef 1, ptr noundef %0) ; 0 uses
  br label %Gia_AigerWriteUnsignedFile.exit

Gia_AigerWriteUnsignedFile.exit:                  ; preds = %.lr.ph.i10, %Gia_AigerWriteUnsignedFile.exit.critedge
  %.0.lcssa.i12 = phi i32 [ %1, %Gia_AigerWriteUnsignedFile.exit.critedge ], [ %i.k, %.lr.ph.i10 ]
  %i.o = tail call i32 @fputc(i32 noundef %.0.lcssa.i12, ptr noundef %0) ; 0 uses
  %i.p = tail call i32 @fflush(ptr noundef %0)    ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManFromBridgeCex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
Vec_StrPush.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 11 uses
  store i32 1000, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 17 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !41
  store i8 2, ptr %i.c, align 1, !tbaa !43
  store i32 2, ptr %i.b, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 1, ptr %i.e, align 1, !tbaa !43
  %i.f = load i32, ptr %1, align 4, !tbaa !65
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.a, i32 noundef %i.f)
  %i.g = load i32, ptr %i.b, align 4, !tbaa !39   ; 7 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !40
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.a, label %Vec_StrPush.exit.Vec_StrPush.exit54_crit_edge

Vec_StrPush.exit.Vec_StrPush.exit54_crit_edge:    ; preds = %Vec_StrPush.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %Vec_StrPush.exit54

bb.a:                                             ; preds = %Vec_StrPush.exit
  %i.j = icmp slt i32 %i.g, 16
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not9.i.i52 = icmp eq ptr %i.k, null
  br i1 %.not9.i.i52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.k, i64 noundef 16) #20
  br label %Vec_StrGrow.exit11.sink.split.i50

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i50

bb.e:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.g, 1073741823
  %i.o = shl nuw nsw i32 %i.g, 1
  %spec.select.i47 = select i1 %i.n, i32 %i.o, i32 2147483647 ; 4 uses
  %.not.i9.i48 = icmp samesign ult i32 %i.g, %spec.select.i47
  %.pre113 = load ptr, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i48, label %bb.f, label %Vec_StrPush.exit54

bb.f:                                             ; preds = %bb.e
  %.not9.i10.i49 = icmp eq ptr %.pre113, null
  %i.p = zext nneg i32 %spec.select.i47 to i64    ; 2 uses
  br i1 %.not9.i10.i49, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @realloc(ptr noundef nonnull %.pre113, i64 noundef %i.p) #20
  br label %Vec_StrGrow.exit11.sink.split.i50

bb.h:                                             ; preds = %bb.f
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #19
  br label %Vec_StrGrow.exit11.sink.split.i50

Vec_StrGrow.exit11.sink.split.i50:                ; preds = %bb.g, %bb.h, %bb.c, %bb.d
  %storemerge = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ %i.q, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %spec.select.sink.i51 = phi i32 [ 16, %bb.d ], [ 16, %bb.c ], [ %spec.select.i47, %bb.g ], [ %spec.select.i47, %bb.h ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !41
  store i32 %spec.select.sink.i51, ptr %i.a, align 8, !tbaa !40
  br label %Vec_StrPush.exit54

Vec_StrPush.exit54:                               ; preds = %Vec_StrPush.exit.Vec_StrPush.exit54_crit_edge, %bb.e, %Vec_StrGrow.exit11.sink.split.i50
  %i.s = phi ptr [ %.pre, %Vec_StrPush.exit.Vec_StrPush.exit54_crit_edge ], [ %.pre113, %bb.e ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i50 ]
  %i.t = add nsw i32 %i.g, 1
  store i32 %i.t, ptr %i.b, align 4, !tbaa !39
  %i.u = sext i32 %i.g to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  store i8 1, ptr %i.v, align 1, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.a, i32 noundef %i.x)
  %i.y = load i32, ptr %i.b, align 4, !tbaa !39   ; 7 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !40
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %Vec_StrPush.exit54.Gia_AigerWriteUnsigned.exit_crit_edge

Vec_StrPush.exit54.Gia_AigerWriteUnsigned.exit_crit_edge: ; preds = %Vec_StrPush.exit54
  %.pre114 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %Gia_AigerWriteUnsigned.exit

bb.i:                                             ; preds = %Vec_StrPush.exit54
  %i.ab = icmp slt i32 %i.y, 16
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not9.i.i12.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 16) #20
  br label %Vec_StrGrow.exit11.sink.split.i10.i

bb.l:                                             ; preds = %bb.j
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i10.i

bb.m:                                             ; preds = %bb.i
  %i.af = icmp samesign ult i32 %i.y, 1073741823
  %i.ag = shl nuw nsw i32 %i.y, 1
  %spec.select.i7.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 4 uses
  %.not.i9.i8.i = icmp samesign ult i32 %i.y, %spec.select.i7.i
  %.pre115 = load ptr, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i8.i, label %bb.n, label %Gia_AigerWriteUnsigned.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i9.i = icmp eq ptr %.pre115, null
  %i.ah = zext nneg i32 %spec.select.i7.i to i64  ; 2 uses
  br i1 %.not9.i10.i9.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %.pre115, i64 noundef %i.ah) #20
  br label %Vec_StrGrow.exit11.sink.split.i10.i

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #19
  br label %Vec_StrGrow.exit11.sink.split.i10.i

Vec_StrGrow.exit11.sink.split.i10.i:              ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge79 = phi ptr [ %i.ae, %bb.l ], [ %i.ad, %bb.k ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ] ; 2 uses
  %spec.select.sink.i11.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i7.i, %bb.o ], [ %spec.select.i7.i, %bb.p ]
  store ptr %storemerge79, ptr %i.d, align 8, !tbaa !41
  store i32 %spec.select.sink.i11.i, ptr %i.a, align 8, !tbaa !40
  br label %Gia_AigerWriteUnsigned.exit

Gia_AigerWriteUnsigned.exit:                      ; preds = %Vec_StrPush.exit54.Gia_AigerWriteUnsigned.exit_crit_edge, %bb.m, %Vec_StrGrow.exit11.sink.split.i10.i
  %i.ak = phi ptr [ %.pre114, %Vec_StrPush.exit54.Gia_AigerWriteUnsigned.exit_crit_edge ], [ %.pre115, %bb.m ], [ %storemerge79, %Vec_StrGrow.exit11.sink.split.i10.i ]
  %i.al = add nsw i32 %i.y, 1
  store i32 %i.al, ptr %i.b, align 4, !tbaa !39
  %i.am = sext i32 %i.y to i64
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  store i8 1, ptr %i.an, align 1, !tbaa !43
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !66
  %i.ap = add nsw i32 %i.ao, 1
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.a, i32 noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ar = load i32, ptr %i.w, align 4, !tbaa !66
  %.not91 = icmp slt i32 %i.ar, 0
  br i1 %.not91, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %Gia_AigerWriteUnsigned.exit
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre116 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph94, %bb.aa
  %i.av = phi i32 [ %.pre116, %.lr.ph94 ], [ %i.bv, %bb.aa ]
  %.093 = phi i32 [ %i.as, %.lr.ph94 ], [ %.1.lcssa, %bb.aa ] ; 2 uses
  %.03492 = phi i32 [ 0, %.lr.ph94 ], [ %i.bw, %bb.aa ] ; 2 uses
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.a, i32 noundef %i.av)
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !68 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %bb.aa

.lr.ph:                                           ; preds = %bb.q
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !39
  %.promoted85 = load i32, ptr %i.a, align 8, !tbaa !40
  %.promoted88 = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.ay = sext i32 %.promoted to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %Vec_StrPush.exit62
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %Vec_StrPush.exit62 ] ; 7 uses
  %storemerge8089 = phi ptr [ %.promoted88, %.lr.ph ], [ %storemerge8090, %Vec_StrPush.exit62 ] ; 6 uses
  %spec.select.sink.i5987 = phi i32 [ %.promoted85, %.lr.ph ], [ %spec.select.sink.i5986, %Vec_StrPush.exit62 ] ; 3 uses
  %.184 = phi i32 [ %.093, %.lr.ph ], [ %i.br, %Vec_StrPush.exit62 ] ; 3 uses
  %.03583 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %Vec_StrPush.exit62 ]
  %i.az = ashr i32 %.184, 5
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = and i32 %.184, 31
  %2 = shl nuw i32 1, %i.bd
  %3 = and i32 %i.bc, %2
  %.not37 = icmp eq i32 %3, 0
  %4 = select i1 %.not37, i8 2, i8 3
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = icmp eq i32 %spec.select.sink.i5987, %i.be
  br i1 %i.bf, label %bb.s, label %Vec_StrPush.exit62

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp slt i64 %indvars.iv, 16
  br i1 %i.bg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not9.i.i60 = icmp eq ptr %storemerge8089, null
  br i1 %.not9.i.i60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge8089, i64 noundef 16) #20
  br label %Vec_StrPush.exit62

bb.v:                                             ; preds = %bb.t
  %i.bi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrPush.exit62

bb.w:                                             ; preds = %bb.s
  %i.bj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bk = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i55 = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %i.bl = sext i32 %spec.select.i55 to i64
  %.not.i9.i56 = icmp samesign ult i64 %indvars.iv, %i.bl
  br i1 %.not.i9.i56, label %bb.x, label %Vec_StrPush.exit62

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i57 = icmp eq ptr %storemerge8089, null
  %i.bm = zext nneg i32 %spec.select.i55 to i64   ; 2 uses
  br i1 %.not9.i10.i57, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %storemerge8089, i64 noundef %i.bm) #20
  br label %Vec_StrPush.exit62

bb.z:                                             ; preds = %bb.x
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #19
  br label %Vec_StrPush.exit62

Vec_StrPush.exit62:                               ; preds = %bb.v, %bb.u, %bb.z, %bb.y, %bb.r, %bb.w
  %storemerge8090 = phi ptr [ %storemerge8089, %bb.r ], [ %storemerge8089, %bb.w ], [ %i.bi, %bb.v ], [ %i.bh, %bb.u ], [ %i.bn, %bb.y ], [ %i.bo, %bb.z ] ; 3 uses
  %spec.select.sink.i5986 = phi i32 [ %spec.select.sink.i5987, %bb.r ], [ %spec.select.sink.i5987, %bb.w ], [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i55, %bb.y ], [ %spec.select.i55, %bb.z ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %storemerge8090, i64 %indvars.iv
  store i8 %4, ptr %i.bp, align 1, !tbaa !43
  %i.bq = add nuw nsw i32 %.03583, 1              ; 2 uses
  %i.br = add nsw i32 %.184, 1                    ; 2 uses
  %i.bs = load i32, ptr %i.at, align 4, !tbaa !68 ; 2 uses
  %i.bt = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.r, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %Vec_StrPush.exit62
  %i.bu = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !39
  store i32 %spec.select.sink.i5986, ptr %i.a, align 8
  store ptr %storemerge8090, ptr %i.d, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.q
  %i.bv = phi i32 [ %i.bs, %._crit_edge ], [ %i.aw, %bb.q ]
  %.1.lcssa = phi i32 [ %i.br, %._crit_edge ], [ %.093, %bb.q ]
  %i.bw = add nuw nsw i32 %.03492, 1
  %i.bx = load i32, ptr %i.w, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.03492, %i.bx
  br i1 %.not.not, label %bb.q, label %._crit_edge95, !llvm.loop !62

._crit_edge95:                                    ; preds = %bb.aa, %Gia_AigerWriteUnsigned.exit
  %i.by = load i32, ptr %i.b, align 4, !tbaa !39  ; 7 uses
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !40
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.ab, label %._crit_edge95.Vec_StrPush.exit70_crit_edge

._crit_edge95.Vec_StrPush.exit70_crit_edge:       ; preds = %._crit_edge95
  %.pre117 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %Vec_StrPush.exit70

bb.ab:                                            ; preds = %._crit_edge95
  %i.cb = icmp slt i32 %i.by, 16
  br i1 %i.cb, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not9.i.i68 = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 16) #20
  br label %Vec_StrGrow.exit11.sink.split.i66

bb.ae:                                            ; preds = %bb.ac
  %i.ce = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i66

bb.af:                                            ; preds = %bb.ab
  %i.cf = icmp samesign ult i32 %i.by, 1073741823
  %i.cg = shl nuw nsw i32 %i.by, 1
  %spec.select.i63 = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 4 uses
  %.not.i9.i64 = icmp samesign ult i32 %i.by, %spec.select.i63
  %.pre118 = load ptr, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i64, label %bb.ag, label %Vec_StrPush.exit70

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i65 = icmp eq ptr %.pre118, null
  %i.ch = zext nneg i32 %spec.select.i63 to i64   ; 2 uses
  br i1 %.not9.i10.i65, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %.pre118, i64 noundef %i.ch) #20
  br label %Vec_StrGrow.exit11.sink.split.i66

bb.ai:                                            ; preds = %bb.ag
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #19
  br label %Vec_StrGrow.exit11.sink.split.i66

Vec_StrGrow.exit11.sink.split.i66:                ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %storemerge81 = phi ptr [ %i.ce, %bb.ae ], [ %i.cd, %bb.ad ], [ %i.ci, %bb.ah ], [ %i.cj, %bb.ai ] ; 2 uses
  %spec.select.sink.i67 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i63, %bb.ah ], [ %spec.select.i63, %bb.ai ]
  store ptr %storemerge81, ptr %i.d, align 8, !tbaa !41
  store i32 %spec.select.sink.i67, ptr %i.a, align 8, !tbaa !40
  br label %Vec_StrPush.exit70

Vec_StrPush.exit70:                               ; preds = %._crit_edge95.Vec_StrPush.exit70_crit_edge, %bb.af, %Vec_StrGrow.exit11.sink.split.i66
  %i.ck = phi ptr [ %.pre117, %._crit_edge95.Vec_StrPush.exit70_crit_edge ], [ %.pre118, %bb.af ], [ %storemerge81, %Vec_StrGrow.exit11.sink.split.i66 ]
  %i.cl = add nsw i32 %i.by, 1
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !39
  %i.cm = sext i32 %i.by to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 %i.cm
  store i8 1, ptr %i.cn, align 1, !tbaa !43
  %i.co = load i32, ptr %i.aq, align 4, !tbaa !67
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.a, i32 noundef %i.co)
  %i.cp = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.cq = icmp sgt i32 %i.cp, 0
  %.val.pre = load i32, ptr %i.b, align 4, !tbaa !39 ; 2 uses
  %.val38.pre = load ptr, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  br i1 %i.cq, label %.lr.ph97, label %bb.as

.lr.ph97:                                         ; preds = %Vec_StrPush.exit70
  %.promoted101 = load i32, ptr %i.a, align 8, !tbaa !40
  %i.cr = sext i32 %.val.pre to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph97, %Vec_StrPush.exit78
  %indvars.iv110 = phi i64 [ %i.cr, %.lr.ph97 ], [ %indvars.iv.next111, %Vec_StrPush.exit78 ] ; 7 uses
  %storemerge82105 = phi ptr [ %.val38.pre, %.lr.ph97 ], [ %storemerge82106, %Vec_StrPush.exit78 ] ; 6 uses
  %spec.select.sink.i75103 = phi i32 [ %.promoted101, %.lr.ph97 ], [ %spec.select.sink.i75102, %Vec_StrPush.exit78 ] ; 3 uses
  %.13696 = phi i32 [ 0, %.lr.ph97 ], [ %i.de, %Vec_StrPush.exit78 ]
  %i.cs = trunc nsw i64 %indvars.iv110 to i32
  %i.ct = icmp eq i32 %spec.select.sink.i75103, %i.cs
  br i1 %i.ct, label %bb.ak, label %Vec_StrPush.exit78

bb.ak:                                            ; preds = %bb.aj
  %i.cu = icmp slt i64 %indvars.iv110, 16
  br i1 %i.cu, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i76 = icmp eq ptr %storemerge82105, null
  br i1 %.not9.i.i76, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge82105, i64 noundef 16) #20
  br label %Vec_StrPush.exit78

bb.an:                                            ; preds = %bb.al
  %i.cw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrPush.exit78

bb.ao:                                            ; preds = %bb.ak
  %i.cx = icmp samesign ult i64 %indvars.iv110, 1073741823
  %indvars.iv110.tr = trunc nsw i64 %indvars.iv110 to i32
  %i.cy = shl nsw i32 %indvars.iv110.tr, 1
  %spec.select.i71 = select i1 %i.cx, i32 %i.cy, i32 2147483647 ; 4 uses
  %i.cz = sext i32 %spec.select.i71 to i64
  %.not.i9.i72 = icmp samesign ult i64 %indvars.iv110, %i.cz
  br i1 %.not.i9.i72, label %bb.ap, label %Vec_StrPush.exit78

bb.ap:                                            ; preds = %bb.ao
  %.not9.i10.i73 = icmp eq ptr %storemerge82105, null
  %i.da = zext nneg i32 %spec.select.i71 to i64   ; 2 uses
  br i1 %.not9.i10.i73, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.db = tail call ptr @realloc(ptr noundef nonnull %storemerge82105, i64 noundef %i.da) #20
  br label %Vec_StrPush.exit78

bb.ar:                                            ; preds = %bb.ap
  %i.dc = tail call noalias ptr @malloc(i64 noundef %i.da) #19
  br label %Vec_StrPush.exit78

Vec_StrPush.exit78:                               ; preds = %bb.an, %bb.am, %bb.ar, %bb.aq, %bb.aj, %bb.ao
  %storemerge82106 = phi ptr [ %storemerge82105, %bb.aj ], [ %storemerge82105, %bb.ao ], [ %i.cw, %bb.an ], [ %i.cv, %bb.am ], [ %i.db, %bb.aq ], [ %i.dc, %bb.ar ] ; 5 uses
  %spec.select.sink.i75102 = phi i32 [ %spec.select.sink.i75103, %bb.aj ], [ %spec.select.sink.i75103, %bb.ao ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i71, %bb.aq ], [ %spec.select.i71, %bb.ar ] ; 2 uses
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %storemerge82106, i64 %indvars.iv110
  store i8 2, ptr %i.dd, align 1, !tbaa !43
  %i.de = add nuw nsw i32 %.13696, 1              ; 2 uses
  %i.df = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.aj, label %.thread, !llvm.loop !63

.thread:                                          ; preds = %Vec_StrPush.exit78
  %i.dh = trunc nsw i64 %indvars.iv.next111 to i32 ; 2 uses
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !39
  store i32 %spec.select.sink.i75102, ptr %i.a, align 8
  store ptr %storemerge82106, ptr %i.d, align 8
  tail call void @Gia_CreateHeader(ptr noundef %0, i32 noundef 101, i32 noundef %i.dh, ptr noundef nonnull %storemerge82106)
  br label %bb.at

bb.as:                                            ; preds = %Vec_StrPush.exit70
  tail call void @Gia_CreateHeader(ptr noundef %0, i32 noundef 101, i32 noundef %.val.pre, ptr noundef %.val38.pre)
  %.not.i = icmp eq ptr %.val38.pre, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.at

bb.at:                                            ; preds = %.thread, %bb.as
  %.val38133 = phi ptr [ %storemerge82106, %.thread ], [ %.val38.pre, %bb.as ]
  tail call void @free(ptr noundef nonnull %.val38133) #21
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %bb.as, %bb.at
  tail call void @free(ptr noundef nonnull %i.a) #21
  %i.di = tail call i32 @fflush(ptr noundef %0)   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Gia_ManToBridgeResult(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManFromBridgeCex(ptr noundef %0, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @Gia_ManFromBridgeHolds(ptr noundef %0, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @Gia_ManFromBridgeUnknown(ptr noundef %0, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.b
end_hunk_0
