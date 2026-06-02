inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0_@BuildMask:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__ctype_tolower_loc() #20
  %.pn74 = load ptr, ptr %i.k, align 8, !tbaa !25
  %.041.in = getelementptr inbounds [4 x i8], ptr %.pn74, i64 %i.g
  %.041 = load i32, ptr %.041.in, align 4, !tbaa !4
  %i.l = sext i32 %.041 to i64
  %i.m = getelementptr [16 x i8], ptr @alPhrase, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -1552    ; 2 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !27
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 16, !tbaa !27
  %i.q = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.q, ptr @cchPhraseLength, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.q, %bb.c ], [ %i.e, %bb.b ]
  %i.s = load i8, ptr %i.f, align 1, !tbaa !21    ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %.preheader.preheader, label %bb.b, !llvm.loop !29

.preheader.preheader:                             ; preds = %bb.d, %bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader.preheader ] ; 3 uses
  %.04465 = phi i32 [ %.2, %bb.m ], [ 0, %.preheader.preheader ] ; 4 uses
  %.04664 = phi i32 [ %.248, %bb.m ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @alPhrase, i64 %indvars.iv ; 5 uses
  %i.u = load i32, ptr %i.t, align 16, !tbaa !27  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @auGlobalFrequency, i64 %indvars.iv ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  store i32 -1, ptr %i.w, align 4, !tbaa !4
  br label %bb.m

bb.f:                                             ; preds = %.preheader
  store i32 0, ptr %i.w, align 4, !tbaa !4
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.04263 = phi i64 [ 1, %bb.f ], [ %i.z, %bb.g ]
  %.04362 = phi i32 [ 1, %bb.f ], [ %i.y, %bb.g ]
  %i.y = add i32 %.04362, 1                       ; 3 uses
  %i.z = shl nuw nsw i64 %.04263, 1               ; 6 uses
  %.not50 = icmp samesign ugt i64 %i.z, %i.x
  br i1 %.not50, label %bb.h, label %bb.g, !llvm.loop !30

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.y, %.04465
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not75 = icmp eq i32 %.04664, 0
  br i1 %.not75, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @Fatal(ptr noundef nonnull @.str.7, i32 noundef 0)
  unreachable

.thread:                                          ; preds = %bb.i
  %i.ac = trunc i64 %i.z to i32
  %i.ad = add i32 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.af = trunc i64 %i.z to i32
  %i.ag = add i32 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !31
  %i.ai = zext i32 %.04465 to i64                 ; 2 uses
  %i.aj = shl i64 %i.z, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ak = phi i64 [ %i.ai, %bb.k ], [ 0, %.thread ]
  %.14559 = phi i32 [ %.04465, %bb.k ], [ 0, %.thread ] ; 2 uses
  %.14757 = phi i32 [ %.04664, %bb.k ], [ 1, %.thread ] ; 3 uses
  %i.al = phi i64 [ %i.aj, %bb.k ], [ %i.z, %.thread ]
  %i.am = zext nneg i32 %.14757 to i64            ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @aqMainSign, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = or i64 %i.ao, %i.al
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !32
  %i.aq = shl i64 %i.x, %i.ak
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @aqMainMask, i64 %i.am ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.at = or i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.14559, ptr %i.au, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %.14757, ptr %i.av, align 4, !tbaa !34
  %i.aw = add i32 %.14559, %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l
  %.248 = phi i32 [ %.04664, %bb.e ], [ %.14757, %bb.l ]
  %.2 = phi i32 [ %.04465, %bb.e ], [ %i.aw, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.n, label %.preheader, !llvm.loop !35

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local noalias nonnull ptr @NewWord() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @cpwCand, align 4, !tbaa !4
  tail call void @Fatal(ptr noundef nonnull @.str.8, i32 noundef %i.c)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @wprint(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @NextWord() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @cpwCand, align 4, !tbaa !4 ; 3 uses
  %i.b = icmp ugt i32 %i.a, 4999
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @Fatal(ptr noundef nonnull @.str.10, i32 noundef 0)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 1
  store i32 %i.c, ptr @cpwCand, align 4, !tbaa !4
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load i32, ptr @cpwCand, align 4, !tbaa !4 ; 2 uses
  br i1 %i.h, label %bb.e, label %NewWord.exit

bb.e:                                             ; preds = %bb.d
  tail call void @Fatal(ptr noundef nonnull @.str.8, i32 noundef %i.i)
  unreachable

NewWord.exit:                                     ; preds = %bb.d
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %i.k
  store ptr %i.g, ptr %i.l, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %NewWord.exit
  %.0 = phi ptr [ %i.g, %NewWord.exit ], [ %i.f, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BuildWord(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  %i.b = load i8, ptr %0, align 1, !tbaa !21      ; 2 uses
  %.not37 = icmp eq i8 %i.b, 0
  br i1 %.not37, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #20
  %1 = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.b

.preheader.loopexit:                              ; preds = %.backedge
  %i.d = load <4 x i8>, ptr %i.a, align 16, !tbaa !21
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <4 x i8>, ptr %.phi.trans.insert49, align 4, !tbaa !21
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <4 x i8>, ptr %.phi.trans.insert57, align 8, !tbaa !21
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = load <4 x i8>, ptr %.phi.trans.insert65, align 4, !tbaa !21
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre74 = load i8, ptr %.phi.trans.insert73, align 16, !tbaa !21
  %i.h = zext <4 x i8> %i.d to <4 x i32>
  %i.i = zext <4 x i8> %i.e to <4 x i32>
  %i.j = zext <4 x i8> %i.f to <4 x i32>
  %i.k = zext <4 x i8> %i.g to <4 x i32>
  %i.l = zext i8 %.pre74 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.m = phi i32 [ 0, %bb.a ], [ %i.l, %.preheader.loopexit ]
  %.032.lcssa = phi i32 [ 0, %bb.a ], [ %.032.be, %.preheader.loopexit ]
  %i.n = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.h, %.preheader.loopexit ]
  %i.o = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.i, %.preheader.loopexit ]
  %i.p = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.j, %.preheader.loopexit ]
  %i.q = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.k, %.preheader.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = load <4 x i32>, ptr @auGlobalFrequency, align 16, !tbaa !4
  %i.v = add <4 x i32> %i.u, %i.n
  store <4 x i32> %i.v, ptr @auGlobalFrequency, align 16, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aa = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 16), align 16, !tbaa !4
  %i.ab = add <4 x i32> %i.aa, %i.o
  store <4 x i32> %i.ab, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 16), align 16, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ag = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 32), align 16, !tbaa !4
  %i.ah = add <4 x i32> %i.ag, %i.p
  store <4 x i32> %i.ah, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 32), align 16, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.am = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 48), align 16, !tbaa !4
  %i.an = add <4 x i32> %i.am, %i.q
  store <4 x i32> %i.an, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 48), align 16, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.au = load <4 x i8>, ptr %i.as, align 2
  %i.av = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 64), align 16, !tbaa !4
  %i.aw = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.ar, i64 1
  %i.ay = zext <4 x i8> %i.au to <4 x i32>
  %i.az = shufflevector <4 x i32> %i.ax, <4 x i32> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ba = add <4 x i32> %i.av, %i.az
  store <4 x i32> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 64), align 16, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.bf = load <4 x i8>, ptr %i.bb, align 4, !tbaa !21
  %i.bg = zext <4 x i8> %i.bf to <4 x i32>
  %i.bh = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 80), align 16, !tbaa !4
  %i.bi = add <4 x i32> %i.bh, %i.bg
  store <4 x i32> %i.bi, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 80), align 16, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bl = load <2 x i8>, ptr %i.bj, align 8, !tbaa !21
  %i.bm = zext <2 x i8> %i.bl to <2 x i32>
  %i.bn = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 96), align 16, !tbaa !4
  %i.bo = add <2 x i32> %i.bn, %i.bm
  store <2 x i32> %i.bo, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 96), align 16, !tbaa !4
  %i.bp = load i32, ptr @cpwCand, align 4, !tbaa !4 ; 3 uses
  %i.bq = icmp ugt i32 %i.bp, 4999
  br i1 %i.bq, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.br = phi i8 [ %i.b, %.lr.ph ], [ %i.ci, %.backedge ]
  %.pn = phi ptr [ %0, %.lr.ph ], [ %i.bs, %.backedge ]
  %.03238 = phi i32 [ 0, %.lr.ph ], [ %.032.be, %.backedge ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.bt = sext i8 %i.br to i64                    ; 2 uses
  %i.bu = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !19
  %i.bw = and i16 %i.bv, 1024
  %.not34 = icmp eq i16 %i.bw, 0
  br i1 %.not34, label %.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bx = tail call ptr @__ctype_tolower_loc() #20
  %.pn79 = load ptr, ptr %i.bx, align 8, !tbaa !25
  %.031.in = getelementptr inbounds [4 x i8], ptr %.pn79, i64 %i.bt
  %.031 = load i32, ptr %.031.in, align 4, !tbaa !4
  %i.by = add nsw i32 %.031, -97
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.a, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = add i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !21
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds [16 x i8], ptr @alPhrase, i64 %i.bz
  %i.cf = load i32, ptr %i.ce, align 16, !tbaa !27
  %i.cg = icmp ult i32 %i.cf, %i.cd
  br i1 %i.cg, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ch = add nsw i32 %.03238, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.b
  %.032.be = phi i32 [ %i.ch, %bb.d ], [ %.03238, %bb.b ] ; 2 uses
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !21  ; 2 uses
  %.not = icmp eq i8 %i.ci, 0
  br i1 %.not, label %.preheader.loopexit, label %bb.b, !llvm.loop !37

bb.e:                                             ; preds = %.preheader
  tail call void @Fatal(ptr noundef nonnull @.str.10, i32 noundef 0)
  unreachable

bb.f:                                             ; preds = %.preheader
  %i.cj = add nuw nsw i32 %i.bp, 1
  store i32 %i.cj, ptr @cpwCand, align 4, !tbaa !4
  %i.ck = zext nneg i32 %i.bp to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.g, label %NextWord.exit

bb.g:                                             ; preds = %bb.f
  %i.cn = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  %i.cp = load i32, ptr @cpwCand, align 4, !tbaa !4 ; 2 uses
  br i1 %i.co, label %bb.h, label %NewWord.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @Fatal(ptr noundef nonnull @.str.8, i32 noundef %i.cp)
  unreachable

NewWord.exit.i:                                   ; preds = %bb.g
  %i.cq = add i32 %i.cp, -1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %i.cr
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !36
  br label %NextWord.exit

NextWord.exit:                                    ; preds = %bb.f, %NewWord.exit.i
  %.0.i = phi ptr [ %i.cn, %NewWord.exit.i ], [ %i.cm, %bb.f ] ; 29 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %0, ptr %i.ct, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %.032.lcssa, ptr %i.cu, align 8, !tbaa !40
  %i.cv = load i8, ptr %i.a, align 16, !tbaa !21
  %i.cw = zext i8 %i.cv to i64
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 4), align 4, !tbaa !33
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl i64 %i.cw, %i.cy
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 12), align 4, !tbaa !34
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32
  %i.de = or i64 %i.dd, %i.cz
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !32
  %i.df = load i8, ptr %i.r, align 1, !tbaa !21
  %i.dg = zext i8 %i.df to i64
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 20), align 4, !tbaa !33
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl i64 %i.dg, %i.di
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 28), align 4, !tbaa !34
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !32
  %i.do = or i64 %i.dn, %i.dj
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !32
  %i.dp = load i8, ptr %i.s, align 2, !tbaa !21
  %i.dq = zext i8 %i.dp to i64
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 36), align 4, !tbaa !33
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %i.dq, %i.ds
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 44), align 4, !tbaa !34
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !32
  %i.dy = or i64 %i.dx, %i.dt
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !32
  %i.dz = load i8, ptr %i.t, align 1, !tbaa !21
  %i.ea = zext i8 %i.dz to i64
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 52), align 4, !tbaa !33
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl i64 %i.ea, %i.ec
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 60), align 4, !tbaa !34
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.ei = or i64 %i.eh, %i.ed
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !32
  %i.ej = load i8, ptr %i.w, align 4, !tbaa !21
  %i.ek = zext i8 %i.ej to i64
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 68), align 4, !tbaa !33
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %i.ek, %i.em
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 76), align 4, !tbaa !34
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ep ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.es = or i64 %i.er, %i.en
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !32
  %i.et = load i8, ptr %i.x, align 1, !tbaa !21
  %i.eu = zext i8 %i.et to i64
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 84), align 4, !tbaa !33
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 %i.eu, %i.ew
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 92), align 4, !tbaa !34
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !32
  %i.fc = or i64 %i.fb, %i.ex
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !32
  %i.fd = load i8, ptr %i.y, align 2, !tbaa !21
  %i.fe = zext i8 %i.fd to i64
  %i.ff = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 100), align 4, !tbaa !33
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl i64 %i.fe, %i.fg
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 108), align 4, !tbaa !34
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fm = or i64 %i.fl, %i.fh
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !32
  %i.fn = load i8, ptr %i.z, align 1, !tbaa !21
  %i.fo = zext i8 %i.fn to i64
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 116), align 4, !tbaa !33
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 %i.fo, %i.fq
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 124), align 4, !tbaa !34
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ft ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fw = or i64 %i.fv, %i.fr
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !32
  %i.fx = load i8, ptr %i.ac, align 8, !tbaa !21
  %i.fy = zext i8 %i.fx to i64
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 132), align 4, !tbaa !33
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl i64 %i.fy, %i.ga
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 140), align 4, !tbaa !34
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gd ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = or i64 %i.gf, %i.gb
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !32
  %i.gh = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.gi = zext i8 %i.gh to i64
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 148), align 4, !tbaa !33
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl i64 %i.gi, %i.gk
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 156), align 4, !tbaa !34
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !32
  %i.gq = or i64 %i.gp, %i.gl
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !32
  %i.gr = load i8, ptr %i.ae, align 2, !tbaa !21
  %i.gs = zext i8 %i.gr to i64
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 164), align 4, !tbaa !33
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl i64 %i.gs, %i.gu
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 172), align 4, !tbaa !34
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gx ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !32
  %i.ha = or i64 %i.gz, %i.gv
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !32
  %i.hb = load i8, ptr %i.af, align 1, !tbaa !21
  %i.hc = zext i8 %i.hb to i64
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 180), align 4, !tbaa !33
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl i64 %i.hc, %i.he
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 188), align 4, !tbaa !34
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.hh ; 2 uses
end_hunk_0
