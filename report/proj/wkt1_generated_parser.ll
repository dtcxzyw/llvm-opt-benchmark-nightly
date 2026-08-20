inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0_@pj_wkt1_parse:bb.a
  %i.ar = add nsw i32 %.0159, %i.ah               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ar, 255
  br i1 %or.cond3, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !11
  %i.av = sext i16 %i.au to i32
  %.not219 = icmp eq i32 %.0159, %i.av
  br i1 %.not219, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.as
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !11 ; 2 uses
  %i.ay = sext i16 %i.ax to i32                   ; 2 uses
  %i.az = icmp slt i16 %i.ax, 1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = sub nsw i32 0, %i.ay
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.3168, i64 4 ; 2 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !8
  br label %bb.b

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.i
  %.4 = phi i32 [ %.1155, %bb.i ], [ %.3, %bb.o ], [ %.3, %bb.p ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr @yydefact, i64 %i.ae
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13  ; 2 uses
  %i.bf = sext i8 %i.be to i32
  %i.bg = icmp eq i8 %i.be, 0
  br i1 %i.bg, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0161 = phi i32 [ %i.bf, %bb.t ], [ %i.ba, %bb.r ]
  %.5 = phi i32 [ %.4, %bb.t ], [ %.3, %bb.r ]
  %i.bh = sext i32 %.0161 to i64                  ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr @yyr2, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = sext i8 %i.bj to i64                    ; 2 uses
  %i.bl = sub nsw i64 1, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %.3168, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bo = sub nsw i64 0, %i.bk                    ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.3168, i64 %i.bo
  %i.bq = getelementptr inbounds [2 x i8], ptr %.3181, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !8
  %i.bs = getelementptr inbounds i8, ptr @yyr1, i64 %i.bh
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = sext i8 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, -37                  ; 2 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !11
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.bq, align 2, !tbaa !11 ; 2 uses
  %i.ca = sext i16 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, %i.by                ; 2 uses
  %or.cond5 = icmp ult i32 %i.cb, 256
  br i1 %or.cond5, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !11
  %i.cf = icmp eq i16 %i.ce, %i.bz
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.cc
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ch = getelementptr inbounds [2 x i8], ptr @yydefgoto, i64 %i.bv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in.in = phi ptr [ %i.cg, %bb.w ], [ %i.ch, %bb.x ]
  %.in = load i16, ptr %.in.in, align 2, !tbaa !11
  %i.ci = sext i16 %.in to i32
  br label %bb.b

bb.z:                                             ; preds = %bb.t
  %i.cj = icmp eq i32 %.4, -2
  br i1 %i.cj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %or.cond7 = icmp ult i32 %.4, 287
  br i1 %or.cond7, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = zext nneg i32 %.4 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = sext i8 %i.cm to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.co = phi i32 [ -2, %bb.z ], [ %i.cn, %bb.ab ], [ 2, %bb.aa ] ; 2 uses
  %i.cp = call fastcc i32 @yysyntax_error(ptr noundef %i.e, ptr nonnull %i.d, ptr noundef %.3181, i32 noundef %i.co)
  switch i32 %i.cp, label %.thread258 [
    i32 0, label %.thread286.sink.split
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !9
  %i.cr = call ptr @malloc(i64 noundef %i.cq) #9  ; 5 uses
  %.not223 = icmp eq ptr %i.cr, null
  br i1 %.not223, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 128, ptr %i.e, align 8, !tbaa !9
  br label %.thread258

.thread258:                                       ; preds = %bb.ae, %bb.ac
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %.thread286.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.cs = call fastcc i32 @yysyntax_error(ptr noundef %i.e, ptr nonnull %i.cr, ptr noundef %.3181, i32 noundef %i.co)
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull %i.cr) #8
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %.thread286.sink.split, label %.thread286

.thread286.sink.split:                            ; preds = %bb.d, %bb.e, %bb.af, %.thread258, %bb.ac
  %.sink = phi ptr [ %i.d, %bb.ac ], [ @.str.3, %.thread258 ], [ @.str.3, %bb.af ], [ @.str.3, %bb.e ], [ @.str.3, %bb.d ]
  %.0160284.ph = phi i32 [ 1, %bb.ac ], [ 2, %.thread258 ], [ 2, %bb.af ], [ 2, %bb.e ], [ 2, %bb.d ]
  %.6193278.ph = phi ptr [ %.3190, %bb.ac ], [ %.3190, %.thread258 ], [ %.3190, %bb.af ], [ %.0187, %bb.e ], [ %.0187, %bb.d ]
  %.4236276.ph = phi ptr [ %i.d, %bb.ac ], [ %i.d, %.thread258 ], [ %i.cr, %bb.af ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull %.sink) #8
  br label %.thread286

.thread286:                                       ; preds = %.thread250, %.thread286.sink.split, %bb.af
  %.0160284 = phi i32 [ 1, %bb.af ], [ %.0160284.ph, %.thread286.sink.split ], [ 0, %.thread250 ] ; 2 uses
  %.6193278 = phi ptr [ %.3190, %bb.af ], [ %.6193278.ph, %.thread286.sink.split ], [ %.3190, %.thread250 ] ; 2 uses
  %.4236276 = phi ptr [ %i.cr, %bb.af ], [ %.4236276.ph, %.thread286.sink.split ], [ %i.d, %.thread250 ] ; 2 uses
  %.not226 = icmp eq ptr %.6193278, %i.b
  br i1 %.not226, label %bb.ag, label %.thread286.thread

.thread286.thread:                                ; preds = %bb.h, %.thread286
  %.4236276333 = phi ptr [ %.4236276, %.thread286 ], [ %i.d, %bb.h ]
  %.6193278332 = phi ptr [ %.6193278, %.thread286 ], [ %i.s, %bb.h ]
  %.0160284330 = phi i32 [ %.0160284, %.thread286 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.6193278332)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread286.thread, %.thread286
  %.4236276334 = phi ptr [ %.4236276333, %.thread286.thread ], [ %.4236276, %.thread286 ] ; 2 uses
  %.0160284331 = phi i32 [ %.0160284330, %.thread286.thread ], [ %.0160284, %.thread286 ]
  %.not227 = icmp eq ptr %.4236276334, %i.d
  br i1 %.not227, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %.4236276334)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0160284331
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @pj_wkt1_lex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %2, -2
  br i1 %.not, label %.thread10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 2, !tbaa !11
  %i.c = sext i16 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11   ; 4 uses
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 34
  br i1 %i.k, label %.preheader31.split.us.i, label %.thread.i

.preheader31.split.us.i:                          ; preds = %bb.b, %bb.d
  %.020.us.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.019.us.i = phi ptr [ %.1.us.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  switch i8 %i.m, label %bb.d [
    i8 39, label %.thread.i
    i8 44, label %.thread.i
    i8 92, label %bb.c
    i8 34, label %yytnamerr.exit
  ]

bb.c:                                             ; preds = %.preheader31.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not25.us.i = icmp eq i8 %i.o, 92
  br i1 %.not25.us.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c, %.preheader31.split.us.i
  %.1.us.i = phi ptr [ %i.l, %.preheader31.split.us.i ], [ %i.n, %bb.c ]
  %i.p = add nuw nsw i64 %.020.us.i, 1
  br label %.preheader31.split.us.i

.thread.i:                                        ; preds = %bb.c, %.preheader31.split.us.i, %.preheader31.split.us.i, %bb.b
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i)
  br label %yytnamerr.exit

yytnamerr.exit:                                   ; preds = %.preheader31.split.us.i, %.thread.i
  %.122.i = phi i64 [ %strlen.i.i, %.thread.i ], [ %.020.us.i, %.preheader31.split.us.i ] ; 4 uses
  store ptr %i.i, ptr %i.a, align 16, !tbaa !14
  %i.q = icmp eq i16 %i.e, -131
  br i1 %i.q, label %.thread10, label %bb.e

bb.e:                                             ; preds = %yytnamerr.exit
  %i.r = icmp slt i16 %i.e, 0
  %i.s = sub nsw i32 0, %i.f
  %i.t = select i1 %i.r, i32 %i.s, i32 0          ; 2 uses
  %i.u = sub nsw i32 256, %i.f
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 37) ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %.thread10

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = sext i32 %i.t to i64
  %i.y = sext i16 %i.e to i64
  %i.z = sext i32 %i.v to i64
  %invariant.gep = getelementptr [2 x i8], ptr @yycheck, i64 %i.y
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %.07623 = phi i64 [ %.122.i, %.lr.ph.preheader ], [ %.278, %bb.j ] ; 3 uses
  %.08022 = phi i32 [ 1, %.lr.ph.preheader ], [ %.181, %bb.j ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aa = load i16, ptr %gep, align 2, !tbaa !11
  %i.ab = sext i16 %i.aa to i64
  %i.ac = icmp eq i64 %indvars.iv, %i.ab
  %i.ad = icmp ne i64 %indvars.iv, 1
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i32 %.08022, 5
  br i1 %i.ae, label %.thread10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14 ; 4 uses
  %i.ah = add nsw i32 %.08022, 1                  ; 2 uses
  %i.ai = sext i32 %.08022 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !14
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.al = icmp eq i8 %i.ak, 34
  br i1 %i.al, label %.preheader31.split.us.i114, label %yytnamerr.exit120

.preheader31.split.us.i114:                       ; preds = %bb.g, %bb.i
  %.020.us.i115 = phi i64 [ %i.ar, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.019.us.i116 = phi ptr [ %.1.us.i119, %bb.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.019.us.i116, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  switch i8 %i.an, label %bb.i [
    i8 39, label %yytnamerr.exit120
    i8 44, label %yytnamerr.exit120
    i8 92, label %bb.h
    i8 34, label %yytnamerr.exit120.thread
  ]

yytnamerr.exit120.thread:                         ; preds = %.preheader31.split.us.i114
  %i.ao = add nsw i64 %.020.us.i115, %.07623
  br label %bb.j

bb.h:                                             ; preds = %.preheader31.split.us.i114
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.us.i116, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %.not25.us.i118 = icmp eq i8 %i.aq, 92
  br i1 %.not25.us.i118, label %bb.i, label %yytnamerr.exit120

bb.i:                                             ; preds = %bb.h, %.preheader31.split.us.i114
  %.1.us.i119 = phi ptr [ %i.am, %.preheader31.split.us.i114 ], [ %i.ap, %bb.h ]
  %i.ar = add nuw nsw i64 %.020.us.i115, 1
  br label %.preheader31.split.us.i114

yytnamerr.exit120:                                ; preds = %.preheader31.split.us.i114, %.preheader31.split.us.i114, %bb.h, %bb.g
  %strlen.i.i111 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) ; 2 uses
  %.not104 = icmp sgt i64 %strlen.i.i111, -1
  %i.as = add nsw i64 %strlen.i.i111, %.07623
  br i1 %.not104, label %bb.j, label %.critedge

bb.j:                                             ; preds = %yytnamerr.exit120.thread, %.lr.ph, %yytnamerr.exit120
  %.181 = phi i32 [ %i.ah, %yytnamerr.exit120 ], [ %.08022, %.lr.ph ], [ %i.ah, %yytnamerr.exit120.thread ] ; 8 uses
  %.278 = phi i64 [ %i.as, %yytnamerr.exit120 ], [ %.07623, %.lr.ph ], [ %i.ao, %yytnamerr.exit120.thread ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %3, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  switch i32 %.181, label %.thread10 [
    i32 5, label %bb.o
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %._crit_edge
  br label %.thread10

bb.l:                                             ; preds = %._crit_edge
  br label %.thread10

bb.m:                                             ; preds = %._crit_edge
  br label %.thread10

bb.n:                                             ; preds = %._crit_edge
  br label %.thread10

bb.o:                                             ; preds = %._crit_edge
  br label %.thread10

.thread10:                                        ; preds = %bb.f, %bb.e, %yytnamerr.exit, %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.79 = phi i64 [ %.278, %bb.n ], [ %.278, %bb.o ], [ %.278, %bb.k ], [ %.278, %bb.l ], [ %.278, %bb.m ], [ %.278, %._crit_edge ], [ 0, %bb.a ], [ %.122.i, %yytnamerr.exit ], [ %.122.i, %bb.e ], [ %.122.i, %bb.f ] ; 2 uses
  %.6867 = phi i32 [ %.181, %bb.n ], [ %.181, %bb.o ], [ %.181, %bb.k ], [ %.181, %bb.l ], [ %.181, %bb.m ], [ %.181, %._crit_edge ], [ 0, %bb.a ], [ 1, %yytnamerr.exit ], [ 1, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.087 = phi ptr [ @.str.9, %bb.n ], [ @.str.10, %bb.o ], [ @.str.6, %bb.k ], [ @.str.7, %bb.l ], [ @.str.8, %bb.m ], [ @.str, %._crit_edge ], [ @.str, %bb.a ], [ @.str.6, %yytnamerr.exit ], [ @.str.6, %bb.e ], [ @.str.6, %bb.f ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.087)
  %i.at = shl nsw i32 %.6867, 1
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 %strlen.i, %i.au
  %i.aw = add nsw i64 %i.av, %.79                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, 1                    ; 2 uses
  %.not105.not = icmp sgt i64 %.79, %i.ax
  br i1 %.not105.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.thread10
  %i.ay = load i64, ptr %0, align 8, !tbaa !9
  %.not13 = icmp sgt i64 %i.ay, %i.aw
  br i1 %.not13, label %.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = shl nsw i64 %i.ax, 1                    ; 2 uses
  %.not107.not = icmp slt i64 %i.aw, %i.az
  %spec.store.select = select i1 %.not107.not, i64 %i.az, i64 9223372036854775807
  store i64 %spec.store.select, ptr %0, align 8
  br label %.critedge

.preheader:                                       ; preds = %bb.p, %yytnamerr.exit131
  %.188 = phi ptr [ %i.bz, %yytnamerr.exit131 ], [ %.087, %bb.p ] ; 3 uses
  %.071 = phi ptr [ %i.by, %yytnamerr.exit131 ], [ %.0.val, %bb.p ] ; 6 uses
  %.0 = phi i32 [ %.1, %yytnamerr.exit131 ], [ 0, %bb.p ] ; 5 uses
  %i.ba = load i8, ptr %.188, align 1, !tbaa !13  ; 2 uses
  store i8 %i.ba, ptr %.071, align 1, !tbaa !13
  switch i8 %i.ba, label %yytnamerr.exit131 [
    i8 0, label %.critedge
    i8 37, label %bb.r
  ]

bb.r:                                             ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = icmp eq i8 %i.bc, 115
  %i.be = icmp slt i32 %.0, %.6867
  %or.cond108 = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond108, label %bb.s, label %yytnamerr.exit131

bb.s:                                             ; preds = %bb.r
  %i.bf = add nsw i32 %.0, 1                      ; 2 uses
  %i.bg = sext i32 %.0 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !14 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = icmp eq i8 %i.bj, 34
  br i1 %i.bk, label %.preheader31.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.t, %.preheader31.split.i, %.preheader31.split.i, %bb.s
  br label %.preheader.i

.preheader31.split.i:                             ; preds = %bb.s, %bb.u
  %.020.i = phi i64 [ %i.bq, %bb.u ], [ 0, %bb.s ] ; 4 uses
  %.019.i = phi ptr [ %.1.i, %bb.u ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13  ; 2 uses
  switch i8 %i.bm, label %bb.u [
    i8 39, label %.preheader.i.preheader
    i8 44, label %.preheader.i.preheader
    i8 92, label %bb.t
    i8 34, label %.split.us.thread.i
  ]

bb.t:                                             ; preds = %.preheader31.split.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %.not25.i = icmp eq i8 %i.bo, 92
  br i1 %.not25.i, label %bb.u, label %.preheader.i.preheader

bb.u:                                             ; preds = %bb.t, %.preheader31.split.i
  %.1.i = phi ptr [ %i.bl, %.preheader31.split.i ], [ %i.bn, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.071, i64 %.020.i
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !13
  %i.bq = add nuw nsw i64 %.020.i, 1
  br label %.preheader31.split.i

.split.us.thread.i:                               ; preds = %.preheader31.split.i
  %i.br = getelementptr inbounds nuw i8, ptr %.071, i64 %.020.i
  store i8 0, ptr %i.br, align 1, !tbaa !13
  br label %yytnamerr.exit131

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.05.i.i = phi ptr [ %i.bu, %.preheader.i ], [ %.071, %.preheader.i.preheader ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bs, %.preheader.i ], [ %i.bi, %.preheader.i.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.bt = load i8, ptr %.0.i.i, align 1, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 1
  store i8 %i.bt, ptr %.05.i.i, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i, label %yystpcpy.exit.i, label %.preheader.i

yystpcpy.exit.i:                                  ; preds = %.preheader.i
  %i.bv = ptrtoint ptr %.05.i.i to i64
  %i.bw = ptrtoint ptr %.071 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  br label %yytnamerr.exit131

yytnamerr.exit131:                                ; preds = %bb.r, %.preheader, %yystpcpy.exit.i, %.split.us.thread.i
  %.sink45 = phi i64 [ %.020.i, %.split.us.thread.i ], [ %i.bx, %yystpcpy.exit.i ], [ 1, %.preheader ], [ 1, %bb.r ]
  %.sink = phi i64 [ 2, %.split.us.thread.i ], [ 2, %yystpcpy.exit.i ], [ 1, %.preheader ], [ 1, %bb.r ]
  %.1 = phi i32 [ %i.bf, %.split.us.thread.i ], [ %i.bf, %yystpcpy.exit.i ], [ %.0, %.preheader ], [ %.0, %bb.r ]
  %i.by = getelementptr inbounds i8, ptr %.071, i64 %.sink45
  %i.bz = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink
  br label %.preheader

.critedge:                                        ; preds = %yytnamerr.exit120, %.preheader, %bb.q, %.thread10
  %.898 = phi i32 [ 1, %bb.q ], [ 0, %.preheader ], [ 2, %.thread10 ], [ 2, %yytnamerr.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.898
}

declare void @pj_wkt1_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
