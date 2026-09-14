Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Prs_ManReadInstance:bb.a

Prs_ManUtilSkipSpaces.exit120.i:                  ; preds = %.preheader.i102.i, %Prs_ManUtilSkipSpaces.exit120thread-pre-split.i
  %.val45.val.i = phi i8 [ %.val45.val.pr.i, %Prs_ManUtilSkipSpaces.exit120thread-pre-split.i ], [ %i.fk, %.preheader.i102.i ]
  %.val45.i = phi ptr [ %.val45.ph.i, %Prs_ManUtilSkipSpaces.exit120thread-pre-split.i ], [ %i.fj, %.preheader.i102.i ] ; 2 uses
  %.not.i134 = icmp eq i8 %.val45.val.i, 46
  br i1 %.not.i134, label %bb.aj, label %Prs_ManReadSignalList2.exit.thread156, !llvm.loop !168

.loopexit.i133:                                   ; preds = %bb.bq, %Prs_ManUtilSkipComments.exit.i112.i, %.preheader.i102.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.fw, ptr noundef nonnull align 1 dereferenceable(34) @.str.62, i64 34, i1 false)
  br label %Prs_ManReadSignalList2.exit.thread

.loopexit.thread:                                 ; preds = %bb.ab, %.loopexit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !32
  %i.fz = tail call ptr @Abc_NamStr(ptr noundef %i.fy, i32 noundef %1) #28
  %i.ga = tail call fastcc i32 @Prs_ManIsVerilogPrim(ptr noundef %i.fz) ; 2 uses
  %.not52 = icmp eq i32 %i.ga, 0
  br i1 %.not52, label %.thread, label %Prs_ManReadSignalList2.exit

.thread:                                          ; preds = %.loopexit.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.gb, ptr noundef nonnull align 1 dereferenceable(29) @.str.174, i64 29, i1 false)
  br label %bb.cc

Prs_ManReadSignalList2.exit:                      ; preds = %.loopexit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gd = tail call i32 @Prs_ManReadSignalList(ptr noundef nonnull %0, ptr noundef nonnull %i.gc, i8 noundef signext 41, i32 noundef 1)
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %Prs_ManReadSignalList2.exit.thread, label %Prs_ManReadSignalList2.exit.Prs_ManReadSignalList2.exit.thread156_crit_edge

Prs_ManReadSignalList2.exit.Prs_ManReadSignalList2.exit.thread156_crit_edge: ; preds = %Prs_ManReadSignalList2.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !37
  br label %Prs_ManReadSignalList2.exit.thread156

Prs_ManReadSignalList2.exit.thread:               ; preds = %bb.bf, %.loopexit137.thread.i, %.loopexit.i133, %.loopexit145.thread.i, %.loopexit140.i, %bb.bd, %.loopexit144.i, %.loopexit148.i, %Prs_ManReadName.exit.thread.i, %Prs_ManReadSignalList2.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.gf, ptr noundef nonnull align 1 dereferenceable(17) @.str.175, i64 17, i1 false)
  br label %bb.cc

Prs_ManReadSignalList2.exit.thread156:            ; preds = %.loopexit137.i, %Prs_ManUtilSkipSpaces.exit120.i, %bb.br, %Prs_ManReadSignalList2.exit.Prs_ManReadSignalList2.exit.thread156_crit_edge, %bb.ai
  %i.gg = phi ptr [ %.pre, %Prs_ManReadSignalList2.exit.Prs_ManReadSignalList2.exit.thread156_crit_edge ], [ %i.fj, %bb.br ], [ %.val55, %bb.ai ], [ %.val45.i, %Prs_ManUtilSkipSpaces.exit120.i ], [ %.val42.i, %.loopexit137.i ]
  %.140159 = phi i32 [ %i.ga, %Prs_ManReadSignalList2.exit.Prs_ManReadSignalList2.exit.thread156_crit_edge ], [ %1, %bb.br ], [ %1, %bb.ai ], [ %1, %Prs_ManUtilSkipSpaces.exit120.i ], [ %1, %.loopexit137.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %i.a, align 8, !tbaa !37
  %i.gi = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %0)
  %.not53 = icmp eq i32 %i.gi, 0
  br i1 %.not53, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %Prs_ManReadSignalList2.exit.thread156
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.gj, ptr noundef nonnull align 1 dereferenceable(17) @.str.176, i64 17, i1 false)
  br label %bb.cc

bb.bz:                                            ; preds = %Prs_ManReadSignalList2.exit.thread156
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %.val.val = load i8, ptr %.val, align 1, !tbaa !38
  %.not162 = icmp eq i8 %.val.val, 59
  br i1 %.not162, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.gk, ptr noundef nonnull align 1 dereferenceable(37) @.str.177, i64 37, i1 false)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !41
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call fastcc void @Prs_NtkAddBox(ptr noundef %i.gm, i32 noundef %.140159, i32 noundef %.012.i146, ptr noundef %i.gn)
  br label %bb.cc

bb.cc:                                            ; preds = %.thread, %bb.cb, %bb.ca, %bb.by, %Prs_ManReadSignalList2.exit.thread, %.loopexit186, %Prs_ManReadName.exit.thread.thread, %.loopexit191, %.loopexit197, %.loopexit203
  %.142 = phi i32 [ 0, %.loopexit203 ], [ 0, %.loopexit197 ], [ 0, %.loopexit191 ], [ 0, %.loopexit186 ], [ 0, %Prs_ManReadSignalList2.exit.thread ], [ 0, %bb.by ], [ 1, %bb.cb ], [ 0, %bb.ca ], [ 0, %.thread ], [ 0, %Prs_ManReadName.exit.thread.thread ]
  ret i32 %.142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef ptr @Prs_ManFindClosingParenthesis(ptr nofree readonly captures(ret: address, provenance) %.24.val) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %.24.val, align 1, !tbaa !38 ; 2 uses
  %.not1 = icmp eq i8 %i.a, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi i8 [ %i.l, %bb.c ], [ %i.a, %bb.a ]  ; 4 uses
  %.04 = phi i1 [ %i.k, %bb.c ], [ false, %bb.a ] ; 2 uses
  %.0153 = phi i32 [ %.3, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.0172 = phi ptr [ %i.i, %bb.c ], [ %.24.val, %bb.a ] ; 2 uses
  br i1 %.04, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp eq i8 %i.b, 40
  %i.d = zext i1 %i.c to i32
  %spec.select = add nsw i32 %.0153, %i.d
  %i.e = icmp eq i8 %i.b, 41
  %i.f = sext i1 %i.e to i32
  %.2 = add nsw i32 %spec.select, %i.f            ; 2 uses
  %i.g = icmp eq i32 %.2, 0
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.3 = phi i32 [ %.2, %bb.b ], [ %.0153, %.lr.ph ]
  %i.h = icmp eq i8 %i.b, 92
  %i.i = getelementptr inbounds nuw i8, ptr %.0172, i64 1 ; 2 uses
  %i.j = icmp ne i8 %i.b, 32
  %i.k = select i1 %.04, i1 %i.j, i1 %i.h
  %i.l = load i8, ptr %i.i, align 1, !tbaa !38    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.018 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.0172, %bb.b ]
  ret ptr %.018
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntInsert(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !34
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !34
  %.pre = load i32, ptr %i.a, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 6 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !33
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !36
  %i.z = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.011 = add nsw i32 %i.z, -1                    ; 2 uses
  %i.aa = icmp sgt i32 %.011, %1
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_IntPush.exit
  %3 = sext i32 %i.z to i64                       ; 5 uses
  %i.ab = add nsw i64 %3, -1                      ; 3 uses
  %i.ac = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add nsw i64 %i.ad, %3                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ae, -8                      ; 4 uses
  %i.af = sub nsw i64 %3, %n.vec
  %i.ag = sub nsw i64 %i.ab, %n.vec               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = sub i64 %3, %index
  %i.ai = sub i64 %i.ab, %index
  %i.aj = getelementptr [4 x i8], ptr %i.v, i64 %i.ah ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -20
  %i.al = getelementptr i8, ptr %i.aj, i64 -36
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !36
  %wide.load24 = load <4 x i32>, ptr %i.al, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28
  store <4 x i32> %wide.load, ptr %i.an, align 4, !tbaa !36
  store <4 x i32> %wide.load24, ptr %i.ao, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv16.ph = phi i64 [ %3, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %.lr.ph ], [ %indvars.iv16.ph, %.lr.ph.preheader26 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader26 ] ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv16
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !36
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %4 = icmp sgt i64 %indvars.iv.next, %i.ac
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, -1
  br i1 %4, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !170

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ag, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.au = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_IntPush.exit
  %.0.lcssa = phi i32 [ %.011, %Vec_IntPush.exit ], [ %i.au, %._crit_edge.loopexit ]
  %i.av = sext i32 %.0.lcssa to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.av
  store i32 %2, ptr %i.aw, align 4, !tbaa !36
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Prs_NtkAddBox(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 212        ; 16 uses
  %.val13 = load i32, ptr %i.b, align 4, !tbaa !33 ; 9 uses
  %i.c = and i32 %.val13, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 8, !tbaa !34
  %i.e = icmp eq i32 %.val13, %i.d
  br i1 %i.e, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %.val13, 16
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  store ptr %i.k, ptr %i.g, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %.val13, 1073741823
  %i.m = shl nuw nsw i32 %.val13, 1
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val13, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.o, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi ptr [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  store ptr %i.t, ptr %i.n, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !34
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.u = phi i32 [ %.val13, %bb.b ], [ %.val13, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.b, align 4, !tbaa !33
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 -1, ptr %i.z, align 4, !tbaa !36
  %.val12.pre = load i32, ptr %i.b, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.a
  %.val12 = phi i32 [ %.val12.pre, %Vec_IntPush.exit ], [ %.val13, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 7 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !34
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %Vec_IntPush.exit21

bb.m:                                             ; preds = %bb.l
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i19 = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i20

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i20

Vec_IntGrow.exit.i20:                             ; preds = %bb.p, %bb.o
  %i.ak = phi ptr [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i17

bb.q:                                             ; preds = %bb.m
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i14 = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i15 = icmp samesign ult i32 %i.ac, %spec.select.i14
  br i1 %.not.i9.i15, label %bb.r, label %Vec_IntPush.exit21

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i16 = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i14 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not9.i10.i16, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.aq) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = phi ptr [ %i.ar, %bb.s ], [ %i.as, %bb.t ]
  store ptr %i.at, ptr %i.an, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i17

Vec_IntGrow.exit11.sink.split.i17:                ; preds = %bb.u, %Vec_IntGrow.exit.i20
  %spec.select.sink.i18 = phi i32 [ %spec.select.i14, %bb.u ], [ 16, %Vec_IntGrow.exit.i20 ]
  store i32 %spec.select.sink.i18, ptr %i.aa, align 8, !tbaa !34
  %.pre48 = load i32, ptr %i.ab, align 4, !tbaa !33
  br label %Vec_IntPush.exit21

Vec_IntPush.exit21:                               ; preds = %bb.l, %bb.q, %Vec_IntGrow.exit11.sink.split.i17
  %i.au = phi i32 [ %i.ac, %bb.l ], [ %i.ac, %bb.q ], [ %.pre48, %Vec_IntGrow.exit11.sink.split.i17 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = add nsw i32 %i.au, 1
  store i32 %i.ax, ptr %i.ab, align 4, !tbaa !33
  %i.ay = sext i32 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %.val12, ptr %i.az, align 4, !tbaa !36
  %i.ba = getelementptr i8, ptr %3, i64 4         ; 3 uses
  %.val = load i32, ptr %i.ba, align 4, !tbaa !33
  %i.bb = add nsw i32 %.val, 2
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !33  ; 7 uses
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !34
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.v, label %Vec_IntPush.exit29

bb.v:                                             ; preds = %Vec_IntPush.exit21
  %i.bf = icmp slt i32 %i.bc, 16
  br i1 %i.bf, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i27 = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i27, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i28

bb.y:                                             ; preds = %bb.w
  %i.bj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i28

Vec_IntGrow.exit.i28:                             ; preds = %bb.y, %bb.x
  %i.bk = phi ptr [ %i.bi, %bb.x ], [ %i.bj, %bb.y ]
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i25

end_hunk_0
begin_hunk_1_@Vec_StrPrintF:bb.a
  %.val23 = phi i32 [ %.val23.pre, %bb.e ], [ %.val18, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = sext i32 %.val23 to i64
  %i.l = getelementptr inbounds i8, ptr %.val24, i64 %i.k
  %i.m = call i32 @vsnprintf(ptr noundef %i.l, i64 noundef 1000, ptr noundef nonnull @.str.200, ptr noundef nonnull %2) #28 ; 4 uses
  %i.n = icmp sgt i32 %i.m, 1000
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %Vec_StrGrow.exit
  %.val = load i32, ptr %i.a, align 4, !tbaa !61  ; 3 uses
  %i.o = add nuw i32 %i.m, 1000
  %i.p = add i32 %i.o, %.val                      ; 3 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !62
  %.not.i25 = icmp slt i32 %i.q, %i.p
  %.val22.pre = load ptr, ptr %i.j, align 8, !tbaa !60 ; 3 uses
  br i1 %.not.i25, label %bb.g, label %Vec_StrGrow.exit27

bb.g:                                             ; preds = %bb.f
  %.not9.i26 = icmp eq ptr %.val22.pre, null
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %.not9.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @realloc(ptr noundef nonnull %.val22.pre, i64 noundef %i.r) #29
  %.val21.pre.pre = load i32, ptr %i.a, align 4, !tbaa !61
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias ptr @malloc(i64 noundef %i.r) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val21.pre = phi i32 [ %.val21.pre.pre, %bb.h ], [ %.val, %bb.i ]
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !60
  store i32 %i.p, ptr %0, align 8, !tbaa !62
  br label %Vec_StrGrow.exit27

Vec_StrGrow.exit27:                               ; preds = %bb.f, %bb.j
  %.val22 = phi ptr [ %.val22.pre, %bb.f ], [ %i.u, %bb.j ]
  %.val21 = phi i32 [ %.val, %bb.f ], [ %.val21.pre, %bb.j ]
  %i.v = sext i32 %.val21 to i64
  %i.w = getelementptr inbounds i8, ptr %.val22, i64 %i.v
  %i.x = zext nneg i32 %i.m to i64
  %i.y = call i32 @vsnprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.200, ptr noundef nonnull %2) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %Vec_StrGrow.exit27, %Vec_StrGrow.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !61
  %i.aa = add nsw i32 %i.z, %i.m
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !61
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #23 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !36
  %i.b = load i32, ptr %1, align 4, !tbaa !36
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

declare ptr @Extra_FileDesignName(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Cba_NtkIsSeq(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 2
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.val25 = load i32, ptr %i.e, align 4, !tbaa !61 ; 2 uses
  %i.f = icmp sgt i32 %.val25, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.val29 = phi i32 [ %.val25, %.lr.ph ], [ %.val, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.val23 = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %.val23, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 3 uses
  %i.j = add i8 %i.i, -90
  %i.k = icmp ult i8 %i.j, -87
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq i8 %i.i, 3
  br i1 %.not24, label %bb.e, label %Cba_ObjIsSeq.exit

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = tail call fastcc ptr @Cba_ObjNtk(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.n = tail call fastcc i32 @Cba_NtkIsSeq(ptr noundef %i.m)
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge28, label %bb.f

._crit_edge28:                                    ; preds = %bb.e
  %.val.pre = load i32, ptr %i.e, align 4, !tbaa !61
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.a, align 4
  %i.p = or i8 %i.o, 4
  br label %.sink.split

Cba_ObjIsSeq.exit:                                ; preds = %bb.d
  %i.q = add nsw i8 %i.i, -88
  %i.r = icmp ult i8 %i.q, -12
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Cba_ObjIsSeq.exit
  %i.s = load i8, ptr %i.a, align 4
  %i.t = or i8 %i.s, 4
  br label %.sink.split

bb.h:                                             ; preds = %._crit_edge28, %bb.c, %Cba_ObjIsSeq.exit
  %.val = phi i32 [ %.val.pre, %._crit_edge28 ], [ %.val29, %bb.c ], [ %.val29, %Cba_ObjIsSeq.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %.val to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i8, ptr %i.a, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.w = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  %i.x = or i8 %i.w, 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %._crit_edge
  %.sink = phi i8 [ %i.x, %._crit_edge ], [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  %.016.ph = phi i32 [ 0, %._crit_edge ], [ 1, %bb.g ], [ 1, %bb.f ]
  store i8 %.sink, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.016 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ %.016.ph, %.sink.split ]
  ret i32 %.016
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{null}
!4 = distinct !{!4, !40}
!5 = distinct !{!5, !40}
!6 = distinct !{!6, !40}
!7 = distinct !{!7, !40}
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{!10, !40}
!11 = distinct !{!11, !40}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !40}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"p1 _ZTS10Abc_Nam_t_", !22, i64 0}
!25 = !{!"p1 _ZTS14Hash_IntMan_t_", !22, i64 0}
!26 = !{!"p1 _ZTS10Prs_Ntk_t_", !22, i64 0}
!27 = !{!"p1 _ZTS10Vec_Ptr_t_", !22, i64 0}
!28 = !{!"Vec_Str_t_", !19, i64 0, !19, i64 4, !23, i64 8}
!29 = !{!"p1 int", !22, i64 0}
!30 = !{!"Vec_Int_t_", !19, i64 0, !19, i64 4, !29, i64 8}
!31 = !{!"Prs_Man_t_", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !24, i64 32, !24, i64 40, !25, i64 48, !26, i64 56, !27, i64 64, !28, i64 72, !30, i64 88, !30, i64 104, !30, i64 120, !30, i64 136, !30, i64 152, !30, i64 168, !30, i64 184, !19, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !18, i64 216}
!32 = !{!31, !24, i64 32}
!33 = !{!30, !19, i64 4}
!34 = !{!30, !19, i64 0}
!35 = !{!30, !29, i64 8}
!36 = !{!19, !19, i64 0}
!37 = !{!31, !23, i64 24}
!38 = !{!18, !18, i64 0}
!39 = !{!31, !23, i64 16}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!31, !26, i64 56}
!42 = !{!31, !24, i64 40}
!43 = !{!"p1 _ZTS10Vec_Int_t_", !22, i64 0}
!44 = !{!"Hash_IntMan_t_", !43, i64 0, !43, i64 8, !19, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 8}
!47 = !{!44, !19, i64 16}
!48 = !{!31, !25, i64 48}
!49 = !{!"any p2 pointer", !22, i64 0}
!50 = !{!"Vec_Ptr_t_", !19, i64 0, !19, i64 4, !49, i64 8}
!51 = !{!50, !19, i64 4}
!52 = !{!50, !19, i64 0}
!53 = !{!50, !49, i64 8}
!54 = !{!31, !27, i64 64}
!55 = !{!23, !23, i64 0}
!56 = !{!"Prs_Ntk_t_", !19, i64 0, !19, i64 4, !19, i64 4, !19, i64 4, !19, i64 4, !19, i64 4, !19, i64 4, !24, i64 8, !24, i64 16, !25, i64 24, !30, i64 32, !30, i64 48, !30, i64 64, !30, i64 80, !30, i64 96, !30, i64 112, !30, i64 128, !30, i64 144, !30, i64 160, !30, i64 176, !30, i64 192, !30, i64 208, !30, i64 224}
!57 = !{!56, !19, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!28, !23, i64 8}
!61 = !{!28, !19, i64 4}
!62 = !{!28, !19, i64 0}
!63 = !{!22, !22, i64 0}
!64 = !{!56, !24, i64 8}
!65 = !{!56, !24, i64 16}
!66 = !{!56, !25, i64 24}
!67 = !{!"p1 _ZTS10Cba_Man_t_", !22, i64 0}
!68 = !{!"Cba_Ntk_t_", !67, i64 0, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 20, !19, i64 20, !30, i64 24, !30, i64 40, !30, i64 56, !30, i64 72, !28, i64 88, !30, i64 104, !30, i64 120, !30, i64 136, !30, i64 152, !30, i64 168, !30, i64 184, !30, i64 200, !30, i64 216, !30, i64 232, !30, i64 248, !30, i64 264, !30, i64 280, !30, i64 296, !30, i64 312, !30, i64 328, !30, i64 344, !30, i64 360, !30, i64 376, !27, i64 392, !30, i64 400, !30, i64 416}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !19, i64 12}
!71 = !{!"Cba_Man_t_", !23, i64 0, !23, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !25, i64 40, !30, i64 48, !30, i64 64, !30, i64 80, !30, i64 96, !18, i64 112, !18, i64 832, !18, i64 1192, !19, i64 1552, !50, i64 1560, !19, i64 1576, !28, i64 1584, !28, i64 1600, !22, i64 1616}
!72 = !{!71, !24, i64 16}
!73 = !{!71, !25, i64 40}
!74 = !{!71, !24, i64 24}
!75 = !{!"Hash_IntObj_t_", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!76 = !{!75, !19, i64 0}
!77 = !{!75, !19, i64 4}
!78 = !{!71, !24, i64 32}
!79 = !{!68, !19, i64 8}
!80 = !{!43, !43, i64 0}
!81 = !{!31, !19, i64 208}
!82 = !{!31, !19, i64 212}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = distinct !{null}
!90 = !{!31, !19, i64 204}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40, !58, !59}
!98 = distinct !{!98, !40, !59, !58}
!99 = !{!31, !23, i64 0}
!100 = !{!31, !23, i64 8}
!101 = distinct !{!101, !40}
!102 = !{!"long", !18, i64 0}
!103 = !{!"timespec", !102, i64 0, !102, i64 8}
!104 = !{!103, !102, i64 0}
!105 = !{!103, !102, i64 8}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !40, !58, !59}
!113 = distinct !{!113, !40, !58, !59}
!114 = distinct !{!114, !40, !59, !58}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40, !59, !58}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !40}
!128 = distinct !{!128, !40}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !40}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !40}
!137 = distinct !{!137, !40}
!138 = distinct !{!138, !40}
!139 = distinct !{!139, !40}
!140 = distinct !{!140, !40}
!141 = distinct !{!141, !40}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !40}
!145 = !{!"Prs_VerInfo_t_", !19, i64 0, !19, i64 4, !23, i64 8, !18, i64 16}
!146 = !{!145, !23, i64 8}
!147 = !{!145, !19, i64 4}
!148 = !{!145, !19, i64 0}
!149 = !{ptr @Prs_CreateSignalIn}
!150 = distinct !{!150, !40}
!151 = distinct !{!151, !40}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, !40}
!154 = !{!71, !23, i64 0}
!155 = !{!71, !23, i64 8}
!156 = !{!71, !19, i64 1552}
!157 = distinct !{!157, !40}
!158 = distinct !{!158, !40}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
end_hunk_1
