Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/anagram?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fopen
; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @BuildMask(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) @alPhrase, i8 0, i64 416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @aqMainMask, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @aqMainSign, i8 0, i64 16, i1 false)
  store i32 0, ptr @cchPhraseLength, align 4, !tbaa !4
  %i.a = load i8, ptr %0, align 1, !tbaa !21      ; 2 uses
  %.not61 = icmp eq i8 %i.a, 0
  br i1 %.not61, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.s, %bb.d ]
  %.pn = phi ptr [ %0, %.lr.ph ], [ %i.f, %bb.d ]
  %i.e = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.d ]  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = sext i8 %i.d to i64                      ; 2 uses
  %i.h = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !19
  %i.j = and i16 %i.i, 1024
  %.not52 = icmp eq i16 %i.j, 0
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__ctype_tolower_loc() #20
  %.pn74 = load ptr, ptr %i.k, align 8, !tbaa !25
  %.040.in = getelementptr inbounds [4 x i8], ptr %.pn74, i64 %i.g
  %.040 = load i32, ptr %.040.in, align 4, !tbaa !4
  %i.l = sext i32 %.040 to i64
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
  %.04366 = phi i32 [ %.2, %bb.m ], [ 0, %.preheader.preheader ] ; 4 uses
  %.04565 = phi i32 [ %.247, %bb.m ], [ 0, %.preheader.preheader ] ; 3 uses
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
  %.04163 = phi i64 [ 1, %bb.f ], [ %i.z, %bb.g ]
  %.04262 = phi i32 [ 1, %bb.f ], [ %i.y, %bb.g ]
  %i.y = add i32 %.04262, 1                       ; 3 uses
  %i.z = shl nuw nsw i64 %.04163, 1               ; 6 uses
  %.not50 = icmp samesign ugt i64 %i.z, %i.x
  br i1 %.not50, label %bb.h, label %bb.g, !llvm.loop !30

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.y, %.04366
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not75 = icmp eq i32 %.04565, 0
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
  %i.ai = zext i32 %.04366 to i64                 ; 2 uses
  %i.aj = shl i64 %i.z, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ak = phi i64 [ %i.ai, %bb.k ], [ 0, %.thread ]
  %.14459 = phi i32 [ %.04366, %bb.k ], [ 0, %.thread ] ; 2 uses
  %.14657 = phi i32 [ %.04565, %bb.k ], [ 1, %.thread ] ; 3 uses
  %i.al = phi i64 [ %i.aj, %bb.k ], [ %i.z, %.thread ]
  %i.am = zext nneg i32 %.14657 to i64            ; 2 uses
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
  store i32 %.14459, ptr %i.au, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %.14657, ptr %i.av, align 4, !tbaa !34
  %i.aw = add i32 %.14459, %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l
  %.247 = phi i32 [ %.04565, %bb.e ], [ %.14657, %bb.l ]
  %.2 = phi i32 [ %.04366, %bb.e ], [ %i.aw, %bb.l ]
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
define dso_local nonnull ptr @NewWord() local_unnamed_addr #3 {
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
  %0 = load i32, ptr @cpwCand, align 4, !tbaa !4  ; 2 uses
  br i1 %i.h, label %bb.e, label %NewWord.exit

bb.e:                                             ; preds = %bb.d
  tail call void @Fatal(ptr noundef nonnull @.str.8, i32 noundef %0)
  unreachable

NewWord.exit:                                     ; preds = %bb.d
  %1 = add i32 %0, -1
  %2 = zext i32 %1 to i64
  %3 = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %2
  store ptr %i.g, ptr %3, align 8, !tbaa !36
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.b

.preheader.loopexit:                              ; preds = %.backedge
  %i.e = load <4 x i8>, ptr %i.a, align 16, !tbaa !21
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load <4 x i8>, ptr %.phi.trans.insert49, align 4, !tbaa !21
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load <4 x i8>, ptr %.phi.trans.insert57, align 8, !tbaa !21
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = load <4 x i8>, ptr %.phi.trans.insert65, align 4, !tbaa !21
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre74 = load i8, ptr %.phi.trans.insert73, align 16, !tbaa !21
  %i.i = zext <4 x i8> %i.e to <4 x i32>
  %i.j = zext <4 x i8> %i.f to <4 x i32>
  %i.k = zext <4 x i8> %i.g to <4 x i32>
  %i.l = zext <4 x i8> %i.h to <4 x i32>
  %i.m = zext i8 %.pre74 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %.preheader.loopexit ]
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %.031.be, %.preheader.loopexit ]
  %i.o = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.i, %.preheader.loopexit ]
  %i.p = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.j, %.preheader.loopexit ]
  %i.q = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.k, %.preheader.loopexit ]
  %i.r = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.l, %.preheader.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = load <4 x i32>, ptr @auGlobalFrequency, align 16, !tbaa !4
  %i.w = add <4 x i32> %i.v, %i.o
  store <4 x i32> %i.w, ptr @auGlobalFrequency, align 16, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ab = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 16), align 16, !tbaa !4
  %i.ac = add <4 x i32> %i.ab, %i.p
  store <4 x i32> %i.ac, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 16), align 16, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ah = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 32), align 16, !tbaa !4
  %i.ai = add <4 x i32> %i.ah, %i.q
  store <4 x i32> %i.ai, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 32), align 16, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.an = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 48), align 16, !tbaa !4
  %i.ao = add <4 x i32> %i.an, %i.r
  store <4 x i32> %i.ao, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 48), align 16, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.av = load <4 x i8>, ptr %i.at, align 2
  %i.aw = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 64), align 16, !tbaa !4
  %i.ax = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.as, i64 1
  %i.az = zext <4 x i8> %i.av to <4 x i32>
  %i.ba = shufflevector <4 x i32> %i.ay, <4 x i32> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = add <4 x i32> %i.aw, %i.ba
  store <4 x i32> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 64), align 16, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.bg = load <4 x i8>, ptr %i.bc, align 4, !tbaa !21
  %i.bh = zext <4 x i8> %i.bg to <4 x i32>
  %i.bi = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 80), align 16, !tbaa !4
  %i.bj = add <4 x i32> %i.bi, %i.bh
  store <4 x i32> %i.bj, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 80), align 16, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bm = load <2 x i8>, ptr %i.bk, align 8, !tbaa !21
  %i.bn = zext <2 x i8> %i.bm to <2 x i32>
  %i.bo = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 96), align 16, !tbaa !4
  %i.bp = add <2 x i32> %i.bo, %i.bn
  store <2 x i32> %i.bp, ptr getelementptr inbounds nuw (i8, ptr @auGlobalFrequency, i64 96), align 16, !tbaa !4
  %i.bq = load i32, ptr @cpwCand, align 4, !tbaa !4 ; 3 uses
  %i.br = icmp ugt i32 %i.bq, 4999
  br i1 %i.br, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.bs = phi i8 [ %i.b, %.lr.ph ], [ %i.cj, %.backedge ]
  %.pn = phi ptr [ %0, %.lr.ph ], [ %i.bt, %.backedge ]
  %.03138 = phi i32 [ 0, %.lr.ph ], [ %.031.be, %.backedge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.bu = sext i8 %i.bs to i64                    ; 2 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !19
  %i.bx = and i16 %i.bw, 1024
  %.not34 = icmp eq i16 %i.bx, 0
  br i1 %.not34, label %.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = tail call ptr @__ctype_tolower_loc() #20
  %.pn79 = load ptr, ptr %i.by, align 8, !tbaa !25
  %.030.in = getelementptr inbounds [4 x i8], ptr %.pn79, i64 %i.bu
  %.030 = load i32, ptr %.030.in, align 4, !tbaa !4
  %i.bz = add nsw i32 %.030, -97
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.a, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = add i8 %i.cc, 1                         ; 2 uses
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !21
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds [16 x i8], ptr @alPhrase, i64 %i.ca
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !27
  %i.ch = icmp ult i32 %i.cg, %i.ce
  br i1 %i.ch, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = add nsw i32 %.03138, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.b
  %.031.be = phi i32 [ %i.ci, %bb.d ], [ %.03138, %bb.b ] ; 2 uses
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !21  ; 2 uses
  %.not = icmp eq i8 %i.cj, 0
  br i1 %.not, label %.preheader.loopexit, label %bb.b, !llvm.loop !37

bb.e:                                             ; preds = %.preheader
  tail call void @Fatal(ptr noundef nonnull @.str.10, i32 noundef 0)
  unreachable

bb.f:                                             ; preds = %.preheader
  %i.ck = add nuw nsw i32 %i.bq, 1
  store i32 %i.ck, ptr @cpwCand, align 4, !tbaa !4
  %i.cl = zext nneg i32 %i.bq to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.g, label %NextWord.exit

bb.g:                                             ; preds = %bb.f
  %i.co = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  %1 = load i32, ptr @cpwCand, align 4, !tbaa !4  ; 2 uses
  br i1 %i.cp, label %bb.h, label %NewWord.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @Fatal(ptr noundef nonnull @.str.8, i32 noundef %1)
  unreachable

NewWord.exit.i:                                   ; preds = %bb.g
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds nuw [8 x i8], ptr @apwCand, i64 %3
  store ptr %i.co, ptr %4, align 8, !tbaa !36
  br label %NextWord.exit

NextWord.exit:                                    ; preds = %bb.f, %NewWord.exit.i
  %.0.i = phi ptr [ %i.co, %NewWord.exit.i ], [ %i.cn, %bb.f ] ; 29 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %0, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %.031.lcssa, ptr %i.cr, align 8, !tbaa !40
  %i.cs = load i8, ptr %i.a, align 16, !tbaa !21
  %i.ct = zext i8 %i.cs to i64
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 4), align 4, !tbaa !33
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %i.ct, %i.cv
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 12), align 4, !tbaa !34
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cy ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !32
  %i.db = or i64 %i.da, %i.cw
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !32
  %i.dc = load i8, ptr %i.s, align 1, !tbaa !21
  %i.dd = zext i8 %i.dc to i64
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 20), align 4, !tbaa !33
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl i64 %i.dd, %i.df
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 28), align 4, !tbaa !34
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !32
  %i.dl = or i64 %i.dk, %i.dg
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !32
  %i.dm = load i8, ptr %i.t, align 2, !tbaa !21
  %i.dn = zext i8 %i.dm to i64
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 36), align 4, !tbaa !33
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl i64 %i.dn, %i.dp
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 44), align 4, !tbaa !34
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !32
  %i.dv = or i64 %i.du, %i.dq
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !32
  %i.dw = load i8, ptr %i.u, align 1, !tbaa !21
  %i.dx = zext i8 %i.dw to i64
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 52), align 4, !tbaa !33
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl i64 %i.dx, %i.dz
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 60), align 4, !tbaa !34
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ec ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !32
  %i.ef = or i64 %i.ee, %i.ea
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !32
  %i.eg = load i8, ptr %i.x, align 4, !tbaa !21
  %i.eh = zext i8 %i.eg to i64
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 68), align 4, !tbaa !33
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl i64 %i.eh, %i.ej
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 76), align 4, !tbaa !34
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !32
  %i.ep = or i64 %i.eo, %i.ek
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !32
  %i.eq = load i8, ptr %i.y, align 1, !tbaa !21
  %i.er = zext i8 %i.eq to i64
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 84), align 4, !tbaa !33
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl i64 %i.er, %i.et
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 92), align 4, !tbaa !34
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !32
  %i.ez = or i64 %i.ey, %i.eu
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !32
  %i.fa = load i8, ptr %i.z, align 2, !tbaa !21
  %i.fb = zext i8 %i.fa to i64
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 100), align 4, !tbaa !33
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl i64 %i.fb, %i.fd
  %i.ff = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 108), align 4, !tbaa !34
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.fg ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !32
  %i.fj = or i64 %i.fi, %i.fe
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !32
  %i.fk = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.fl = zext i8 %i.fk to i64
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 116), align 4, !tbaa !33
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl i64 %i.fl, %i.fn
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 124), align 4, !tbaa !34
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !32
  %i.ft = or i64 %i.fs, %i.fo
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !32
  %i.fu = load i8, ptr %i.ad, align 8, !tbaa !21
  %i.fv = zext i8 %i.fu to i64
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 132), align 4, !tbaa !33
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %i.fv, %i.fx
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 140), align 4, !tbaa !34
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ga ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !32
  %i.gd = or i64 %i.gc, %i.fy
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !32
  %i.ge = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.gf = zext i8 %i.ge to i64
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 148), align 4, !tbaa !33
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl i64 %i.gf, %i.gh
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 156), align 4, !tbaa !34
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gk ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.gn = or i64 %i.gm, %i.gi
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !32
  %i.go = load i8, ptr %i.af, align 2, !tbaa !21
  %i.gp = zext i8 %i.go to i64
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 164), align 4, !tbaa !33
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl i64 %i.gp, %i.gr
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 172), align 4, !tbaa !34
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gu ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !32
  %i.gx = or i64 %i.gw, %i.gs
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !32
  %i.gy = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.gz = zext i8 %i.gy to i64
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 180), align 4, !tbaa !33
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl i64 %i.gz, %i.hb
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 188), align 4, !tbaa !34
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.he ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !32
  %i.hh = or i64 %i.hg, %i.hc
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !32
  %i.hi = load i8, ptr %i.aj, align 4, !tbaa !21
  %i.hj = zext i8 %i.hi to i64
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 196), align 4, !tbaa !33
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl i64 %i.hj, %i.hl
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 204), align 4, !tbaa !34
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !32
  %i.hr = or i64 %i.hq, %i.hm
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !32
  %i.hs = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.ht = zext i8 %i.hs to i64
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 212), align 4, !tbaa !33
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl i64 %i.ht, %i.hv
  %i.hx = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 220), align 4, !tbaa !34
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.hy ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.ib = or i64 %i.ia, %i.hw
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !32
  %i.ic = load i8, ptr %i.al, align 2, !tbaa !21
  %i.id = zext i8 %i.ic to i64
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 228), align 4, !tbaa !33
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl i64 %i.id, %i.if
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 236), align 4, !tbaa !34
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ii ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !32
  %i.il = or i64 %i.ik, %i.ig
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !32
  %i.im = load i8, ptr %i.am, align 1, !tbaa !21
  %i.in = zext i8 %i.im to i64
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 244), align 4, !tbaa !33
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = shl i64 %i.in, %i.ip
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 252), align 4, !tbaa !34
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !32
  %i.iv = or i64 %i.iu, %i.iq
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !32
  %i.iw = load i8, ptr %i.ap, align 16, !tbaa !21
  %i.ix = zext i8 %i.iw to i64
  %i.iy = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 260), align 4, !tbaa !33
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %i.ix, %i.iz
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 268), align 4, !tbaa !34
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !32
  %i.jf = or i64 %i.je, %i.ja
  store i64 %i.jf, ptr %i.jd, align 8, !tbaa !32
  %i.jg = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.jh = zext i8 %i.jg to i64
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @alPhrase, i64 276), align 4, !tbaa !33
  %i.jj = zext nneg i32 %i.ji to i64
end_hunk_0
