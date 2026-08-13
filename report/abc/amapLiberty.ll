inline.NumInlined: 150
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Amap_LibertyStart:bb.a
  %i.p = ashr exact i64 %i.l, 32                  ; 5 uses
  %i.q = tail call i64 @fread(ptr noundef %i.n, i64 noundef %i.p, i64 noundef 1, ptr noundef %i.k) ; 0 uses
  %i.r = tail call i32 @fclose(ptr noundef %i.k)  ; 0 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.p ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !18
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #27
  %i.u = add i64 %i.t, 1
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #28 ; 2 uses
  %i.w = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %0) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.f, %bb.g
  %i.x = phi ptr [ %i.v, %bb.g ], [ null, %bb.f ]
  store ptr %i.x, ptr %calloc, align 8, !tbaa !38
  %i.y = icmp sgt i64 %i.p, 0
  br i1 %i.y, label %.lr.ph.i.preheader, label %Amap_LibertyCountItems.exit

.lr.ph.i.preheader:                               ; preds = %Abc_UtilStrsav.exit
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.z = and i64 %i.f, 7                          ; 2 uses
  %n.vec = sub nuw nsw i64 %i.p, %i.z             ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !18 ; 2 uses
  %wide.load35 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !18 ; 2 uses
  %i.ac = icmp eq <4 x i8> %wide.load, splat (i8 40)
  %i.ad = icmp eq <4 x i8> %wide.load35, splat (i8 40)
  %i.ae = icmp eq <4 x i8> %wide.load, splat (i8 58)
  %i.af = icmp eq <4 x i8> %wide.load35, splat (i8 58)
  %i.ag = or <4 x i1> %i.ac, %i.ae
  %i.ah = or <4 x i1> %i.ad, %i.af
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = add <4 x i32> %vec.phi, %i.ai           ; 2 uses
  %i.al = add <4 x i32> %vec.phi34, %i.aj         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.z, 0
  br i1 %cmp.n, label %Amap_LibertyCountItems.exit.loopexit, label %.lr.ph.i.preheader36

.lr.ph.i.preheader36:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  %.068.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader36, %.lr.ph.i
  %.09.i = phi i32 [ %i.as, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader36 ]
  %.068.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader36 ] ; 2 uses
  %i.ao = load i8, ptr %.068.i, align 1, !tbaa !18 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 40
  %i.aq = icmp eq i8 %i.ao, 58
  %narrow.i = or i1 %i.ap, %i.aq
  %i.ar = zext i1 %narrow.i to i32
  %i.as = add nuw nsw i32 %.09.i, %i.ar           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.at, %i.s
  br i1 %exitcond.not.i, label %Amap_LibertyCountItems.exit.loopexit, label %.lr.ph.i, !llvm.loop !78

Amap_LibertyCountItems.exit.loopexit:             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.an, %middle.block ], [ %i.as, %.lr.ph.i ]
  %i.au = add nuw nsw i32 %.lcssa, 10
  br label %Amap_LibertyCountItems.exit

Amap_LibertyCountItems.exit:                      ; preds = %Amap_LibertyCountItems.exit.loopexit, %Abc_UtilStrsav.exit
  %.0.lcssa.i = phi i32 [ 10, %Abc_UtilStrsav.exit ], [ %i.au, %Amap_LibertyCountItems.exit.loopexit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  store i32 %.0.lcssa.i, ptr %i.av, align 4, !tbaa !79
  %i.aw = sext i32 %.0.lcssa.i to i64
  %i.ax = tail call noalias ptr @calloc(i64 noundef %i.aw, i64 noundef 40) #30
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %calloc, i64 20
  store i32 1, ptr %i.ba, align 4, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %Amap_LibertyCountItems.exit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %calloc, %Amap_LibertyCountItems.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Amap_LibertyStop(ptr noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #26
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #26
  store ptr null, ptr %i.b, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not18 = icmp eq ptr %i.e, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.e) #26
  store ptr null, ptr %i.d, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.g) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Amap_LibertyParse(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #26
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !80
  %.neg38 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83
  %.neg = sdiv i64 %i.f, -1000
  %.neg39 = add i64 %.neg, %.neg38
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg39, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.g = call ptr @Amap_LibertyStart(ptr noundef %0) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.w, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp sgt i32 %i.l, 0
  br i1 %i.p, label %.lr.ph26.i, label %Amap_LibertyWipeOutComments.exit

.lr.ph26.i:                                       ; preds = %bb.c, %.loopexit.i
  %.01725.i = phi ptr [ %i.dp, %.loopexit.i ], [ %i.j, %bb.c ] ; 52 uses
  %.0172529.i = ptrtoaddr ptr %.01725.i to i64
  %i.q = load i8, ptr %.01725.i, align 1, !tbaa !18
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %.lr.ph26.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01725.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = icmp eq i8 %i.t, 42
  %i.v = icmp ult ptr %.01725.i, %i.n
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %.01725.i, i64 %i.o
  %i.w = sub i64 0, %.0172529.i
  %scevgep30.i = getelementptr i8, ptr %scevgep.i, i64 %i.w ; 2 uses
  %scevgep31.i = getelementptr i8, ptr %.01725.i, i64 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep32.i, %bb.h ], [ %scevgep31.i, %.lr.ph.preheader.i ] ; 2 uses
  %.122.i = phi ptr [ %i.do, %bb.h ], [ %.01725.i, %.lr.ph.preheader.i ] ; 6 uses
  %i.x = load i8, ptr %.122.i, align 1, !tbaa !18
  %i.y = icmp eq i8 %i.x, 42
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %iter.check, label %bb.h

iter.check:                                       ; preds = %bb.e
  %i.ac = add i64 %indvar, 2                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.ae = getelementptr i8, ptr %.01725.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue159, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue159 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %.01725.i, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.af, i64 1
  %i.ag = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.ag, i64 2
  %i.ah = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ah, i64 3
  %i.ai = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.aj, i64 5
  %i.ak = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.ak, i64 6
  %i.al = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.al, i64 7
  %i.am = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.am, i64 8
  %i.an = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.an, i64 9
  %i.ao = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.ao, i64 10
  %i.ap = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.ap, i64 11
  %i.aq = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.aq, i64 12
  %i.ar = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.ar, i64 13
  %i.as = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.as, i64 14
  %i.at = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.at, i64 15
  %i.au = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.au, i64 16
  %i.av = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.av, i64 17
  %i.aw = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.aw, i64 18
  %i.ax = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.ax, i64 19
  %i.ay = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.ay, i64 20
  %i.az = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.az, i64 21
  %i.ba = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.ba, i64 22
  %i.bb = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.bb, i64 23
  %i.bc = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.bc, i64 24
  %i.bd = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.bd, i64 25
  %i.be = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.be, i64 26
  %i.bf = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.bf, i64 27
  %i.bg = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.bg, i64 28
  %i.bh = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.bh, i64 29
  %i.bi = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep95 = getelementptr i8, ptr %i.bi, i64 30
  %i.bj = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep96 = getelementptr i8, ptr %i.bj, i64 31
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load97 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !18
  %i.bl = icmp ne <16 x i8> %wide.load, splat (i8 10) ; 16 uses
  %i.bm = icmp ne <16 x i8> %wide.load97, splat (i8 10) ; 16 uses
  %i.bn = extractelement <16 x i1> %i.bl, i64 0
  br i1 %i.bn, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %next.gep, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bo = extractelement <16 x i1> %i.bl, i64 1
  br i1 %i.bo, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue
  store i8 32, ptr %next.gep66, align 1, !tbaa !18
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue
  %i.bp = extractelement <16 x i1> %i.bl, i64 2
  br i1 %i.bp, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 32, ptr %next.gep67, align 1, !tbaa !18
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.bq = extractelement <16 x i1> %i.bl, i64 3
  br i1 %i.bq, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 32, ptr %next.gep68, align 1, !tbaa !18
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.br = extractelement <16 x i1> %i.bl, i64 4
  br i1 %i.br, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 32, ptr %next.gep69, align 1, !tbaa !18
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.bs = extractelement <16 x i1> %i.bl, i64 5
  br i1 %i.bs, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 32, ptr %next.gep70, align 1, !tbaa !18
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.bt = extractelement <16 x i1> %i.bl, i64 6
  br i1 %i.bt, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 32, ptr %next.gep71, align 1, !tbaa !18
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.bu = extractelement <16 x i1> %i.bl, i64 7
  br i1 %i.bu, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 32, ptr %next.gep72, align 1, !tbaa !18
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.bv = extractelement <16 x i1> %i.bl, i64 8
  br i1 %i.bv, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 32, ptr %next.gep73, align 1, !tbaa !18
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.bw = extractelement <16 x i1> %i.bl, i64 9
  br i1 %i.bw, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 32, ptr %next.gep74, align 1, !tbaa !18
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.bx = extractelement <16 x i1> %i.bl, i64 10
  br i1 %i.bx, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 32, ptr %next.gep75, align 1, !tbaa !18
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.by = extractelement <16 x i1> %i.bl, i64 11
  br i1 %i.by, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 32, ptr %next.gep76, align 1, !tbaa !18
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.bz = extractelement <16 x i1> %i.bl, i64 12
  br i1 %i.bz, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 32, ptr %next.gep77, align 1, !tbaa !18
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.ca = extractelement <16 x i1> %i.bl, i64 13
  br i1 %i.ca, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 32, ptr %next.gep78, align 1, !tbaa !18
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.cb = extractelement <16 x i1> %i.bl, i64 14
  br i1 %i.cb, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
end_hunk_0
begin_hunk_1_@Amap_LibertyParse:bb.a
pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.cl = extractelement <16 x i1> %i.bm, i64 8
  br i1 %i.cl, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  store i8 32, ptr %next.gep89, align 1, !tbaa !18
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %i.cm = extractelement <16 x i1> %i.bm, i64 9
  br i1 %i.cm, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  store i8 32, ptr %next.gep90, align 1, !tbaa !18
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %i.cn = extractelement <16 x i1> %i.bm, i64 10
  br i1 %i.cn, label %pred.store.if148, label %pred.store.continue149

pred.store.if148:                                 ; preds = %pred.store.continue147
  store i8 32, ptr %next.gep91, align 1, !tbaa !18
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.if148, %pred.store.continue147
  %i.co = extractelement <16 x i1> %i.bm, i64 11
  br i1 %i.co, label %pred.store.if150, label %pred.store.continue151

pred.store.if150:                                 ; preds = %pred.store.continue149
  store i8 32, ptr %next.gep92, align 1, !tbaa !18
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.if150, %pred.store.continue149
  %i.cp = extractelement <16 x i1> %i.bm, i64 12
  br i1 %i.cp, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue151
  store i8 32, ptr %next.gep93, align 1, !tbaa !18
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue151
  %i.cq = extractelement <16 x i1> %i.bm, i64 13
  br i1 %i.cq, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  store i8 32, ptr %next.gep94, align 1, !tbaa !18
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %i.cr = extractelement <16 x i1> %i.bm, i64 14
  br i1 %i.cr, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  store i8 32, ptr %next.gep95, align 1, !tbaa !18
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %i.cs = extractelement <16 x i1> %i.bm, i64 15
  br i1 %i.cs, label %pred.store.if158, label %pred.store.continue159

pred.store.if158:                                 ; preds = %pred.store.continue157
  store i8 32, ptr %next.gep96, align 1, !tbaa !18
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.if158, %pred.store.continue157
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %pred.store.continue159
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph24.i.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec160 = and i64 %i.ac, -8                   ; 3 uses
  %i.cu = getelementptr i8, ptr %.01725.i, i64 %n.vec160
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue186, %vec.epilog.ph
  %index161 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %pred.store.continue186 ] ; 9 uses
  %next.gep162 = getelementptr i8, ptr %.01725.i, i64 %index161 ; 2 uses
  %i.cv = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep163 = getelementptr i8, ptr %i.cv, i64 1
  %i.cw = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep164 = getelementptr i8, ptr %i.cw, i64 2
  %i.cx = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep165 = getelementptr i8, ptr %i.cx, i64 3
  %i.cy = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep166 = getelementptr i8, ptr %i.cy, i64 4
  %i.cz = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep167 = getelementptr i8, ptr %i.cz, i64 5
  %i.da = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep168 = getelementptr i8, ptr %i.da, i64 6
  %i.db = getelementptr i8, ptr %.01725.i, i64 %index161
  %next.gep169 = getelementptr i8, ptr %i.db, i64 7
  %wide.load170 = load <8 x i8>, ptr %next.gep162, align 1, !tbaa !18
  %i.dc = icmp ne <8 x i8> %wide.load170, splat (i8 10) ; 8 uses
  %i.dd = extractelement <8 x i1> %i.dc, i64 0
  br i1 %i.dd, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %vec.epilog.vector.body
  store i8 32, ptr %next.gep162, align 1, !tbaa !18
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %vec.epilog.vector.body
  %i.de = extractelement <8 x i1> %i.dc, i64 1
  br i1 %i.de, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  store i8 32, ptr %next.gep163, align 1, !tbaa !18
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.df = extractelement <8 x i1> %i.dc, i64 2
  br i1 %i.df, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  store i8 32, ptr %next.gep164, align 1, !tbaa !18
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.dg = extractelement <8 x i1> %i.dc, i64 3
  br i1 %i.dg, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  store i8 32, ptr %next.gep165, align 1, !tbaa !18
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %pred.store.if177, %pred.store.continue176
  %i.dh = extractelement <8 x i1> %i.dc, i64 4
  br i1 %i.dh, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue178
  store i8 32, ptr %next.gep166, align 1, !tbaa !18
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue178
  %i.di = extractelement <8 x i1> %i.dc, i64 5
  br i1 %i.di, label %pred.store.if181, label %pred.store.continue182

pred.store.if181:                                 ; preds = %pred.store.continue180
  store i8 32, ptr %next.gep167, align 1, !tbaa !18
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.if181, %pred.store.continue180
  %i.dj = extractelement <8 x i1> %i.dc, i64 6
  br i1 %i.dj, label %pred.store.if183, label %pred.store.continue184

pred.store.if183:                                 ; preds = %pred.store.continue182
  store i8 32, ptr %next.gep168, align 1, !tbaa !18
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.if183, %pred.store.continue182
  %i.dk = extractelement <8 x i1> %i.dc, i64 7
  br i1 %i.dk, label %pred.store.if185, label %pred.store.continue186

pred.store.if185:                                 ; preds = %pred.store.continue184
  store i8 32, ptr %next.gep169, align 1, !tbaa !18
  br label %pred.store.continue186

pred.store.continue186:                           ; preds = %pred.store.if185, %pred.store.continue184
  %index.next187 = add nuw i64 %index161, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next187, %n.vec160
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %pred.store.continue186
  %cmp.n188 = icmp eq i64 %i.ac, %n.vec160
  br i1 %cmp.n188, label %.loopexit.i, label %.lr.ph24.i.preheader

.lr.ph24.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi ptr [ %.01725.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %bb.g
  %.023.i = phi ptr [ %i.dn, %bb.g ], [ %.023.i.ph, %.lr.ph24.i.preheader ] ; 3 uses
  %i.dm = load i8, ptr %.023.i, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.dm, 10
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph24.i
  store i8 32, ptr %.023.i, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph24.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  %exitcond34.not.i = icmp eq ptr %i.dn, %indvars.iv.i
  br i1 %exitcond34.not.i, label %.loopexit.i, label %.lr.ph24.i, !llvm.loop !86

bb.h:                                             ; preds = %bb.e, %.lr.ph.i
  %i.do = getelementptr inbounds nuw i8, ptr %.122.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.do, %scevgep30.i
  %scevgep32.i = getelementptr i8, ptr %indvars.iv.i, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !62

.loopexit.i:                                      ; preds = %bb.h, %bb.g, %middle.block, %vec.epilog.middle.block, %bb.d, %.lr.ph26.i
  %.2.i = phi ptr [ %.01725.i, %.lr.ph26.i ], [ %.122.i, %middle.block ], [ %.01725.i, %bb.d ], [ %.122.i, %bb.g ], [ %.122.i, %vec.epilog.middle.block ], [ %scevgep30.i, %bb.h ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.n
  br i1 %i.dq, label %.lr.ph26.i, label %Amap_LibertyWipeOutComments.exit.loopexit, !llvm.loop !63

Amap_LibertyWipeOutComments.exit.loopexit:        ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  %.pre46 = load i32, ptr %i.k, align 8, !tbaa !76
  %.pre47 = sext i32 %.pre46 to i64
  br label %Amap_LibertyWipeOutComments.exit

Amap_LibertyWipeOutComments.exit:                 ; preds = %Amap_LibertyWipeOutComments.exit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre47, %Amap_LibertyWipeOutComments.exit.loopexit ], [ %i.m, %bb.c ]
  %i.dr = phi ptr [ %.pre, %Amap_LibertyWipeOutComments.exit.loopexit ], [ %i.j, %bb.c ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.pre-phi
  %i.dt = call i32 @Amap_LibertyBuildItem(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef %i.ds)
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Amap_LibertyWipeOutComments.exit
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %.split, label %.split24

.split:                                           ; preds = %bb.i
  %i.dv = call ptr @Extra_FileNameGenericAppend(ptr noundef %0, ptr noundef nonnull @.str.50) #26
  %i.dw = call i32 @Amap_LibertyPrintGenlib(ptr noundef nonnull %i.g, ptr noundef %i.dv, i32 noundef 0) ; 0 uses
  br label %.thread

.split24:                                         ; preds = %bb.i
  %puts30 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.dx = call ptr @Extra_FileNameGenericAppend(ptr noundef %0, ptr noundef nonnull @.str.50) #26
  %i.dy = call i32 @Amap_LibertyPrintGenlib(ptr noundef nonnull %i.g, ptr noundef %i.dx, i32 noundef %1) ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %Amap_LibertyWipeOutComments.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %i.ea, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull %i.ea) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not28 = icmp eq i32 %1, 0
  br i1 %.not28, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.split24, %bb.m
  %.0 = phi i32 [ 1, %.split24 ], [ 0, %bb.m ]
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !76
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !79
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.eg, 40
  %i.ei = add nsw i64 %i.eh, %i.ed
  %i.ej = uitofp i64 %i.ei to double
  %i.ek = fmul nnan double %i.ej, f0x3EB0000000000000
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, double noundef %i.ek) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.em = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %Abc_Clock.exit33, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load i64, ptr %2, align 8, !tbaa !80
  %i.ep = mul nsw i64 %i.eo, 1000000
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !83
  %i.es = sdiv i64 %i.er, 1000
  %i.et = add nsw i64 %i.es, %i.ep
  br label %Abc_Clock.exit33

Abc_Clock.exit33:                                 ; preds = %bb.n, %bb.o
  %.0.i32 = phi i64 [ %i.et, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.eu = add i64 %.0.i32, %.0.i.neg
  %i.ev = sitofp i64 %i.eu to double
  %i.ew = fdiv double %i.ev, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.56, double noundef %i.ew)
  br label %.thread

.thread:                                          ; preds = %.split, %bb.l, %Abc_Clock.exit33
  %.037 = phi i32 [ %.0, %Abc_Clock.exit33 ], [ 0, %bb.l ], [ 1, %.split ]
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %.not.i34 = icmp eq ptr %i.ex, null
  br i1 %.not.i34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @free(ptr noundef nonnull %i.ex) #26
  store ptr null, ptr %i.g, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !13  ; 2 uses
  %.not17.i = icmp eq ptr %i.ey, null
  br i1 %.not17.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ey) #26
  store ptr null, ptr %i.i, align 8, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !21 ; 2 uses
  %.not18.i = icmp eq ptr %i.fa, null
  br i1 %.not18.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.fa) #26
  store ptr null, ptr %i.ez, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !72 ; 2 uses
  %.not19.i = icmp eq ptr %i.fc, null
  br i1 %.not19.i, label %Amap_LibertyStop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.fc) #26
  br label %Amap_LibertyStop.exit

Amap_LibertyStop.exit:                            ; preds = %bb.u, %bb.v
  call void @free(ptr noundef nonnull %i.g) #26
  br label %bb.w

bb.w:                                             ; preds = %Abc_Clock.exit, %Amap_LibertyStop.exit
  %.022 = phi i32 [ %.037, %Amap_LibertyStop.exit ], [ 0, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.022
}

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #19 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !71
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
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !23, !noalias !87
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !90 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Amap_LibertyParseStr(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #26
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !80
  %.neg37 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83
  %.neg = sdiv i64 %i.f, -1000
  %.neg38 = add i64 %.neg, %.neg37
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg38, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.g = call ptr @Amap_LibertyStart(ptr noundef %0) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.w, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp sgt i32 %i.l, 0
  br i1 %i.p, label %.lr.ph26.i, label %Amap_LibertyWipeOutComments.exit

.lr.ph26.i:                                       ; preds = %bb.c, %.loopexit.i
  %.01725.i = phi ptr [ %i.dp, %.loopexit.i ], [ %i.j, %bb.c ] ; 52 uses
  %.0172529.i = ptrtoaddr ptr %.01725.i to i64
  %i.q = load i8, ptr %.01725.i, align 1, !tbaa !18
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %.lr.ph26.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01725.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = icmp eq i8 %i.t, 42
  %i.v = icmp ult ptr %.01725.i, %i.n
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %.01725.i, i64 %i.o
  %i.w = sub i64 0, %.0172529.i
  %scevgep30.i = getelementptr i8, ptr %scevgep.i, i64 %i.w ; 2 uses
  %scevgep31.i = getelementptr i8, ptr %.01725.i, i64 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep32.i, %bb.h ], [ %scevgep31.i, %.lr.ph.preheader.i ] ; 2 uses
  %.122.i = phi ptr [ %i.do, %bb.h ], [ %.01725.i, %.lr.ph.preheader.i ] ; 6 uses
  %i.x = load i8, ptr %.122.i, align 1, !tbaa !18
  %i.y = icmp eq i8 %i.x, 42
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %iter.check, label %bb.h

iter.check:                                       ; preds = %bb.e
  %i.ac = add i64 %indvar, 2                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.ae = getelementptr i8, ptr %.01725.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue158, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue158 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %.01725.i, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.af, i64 1
  %i.ag = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.ag, i64 2
  %i.ah = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.ah, i64 3
  %i.ai = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.aj, i64 5
  %i.ak = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.ak, i64 6
  %i.al = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.al, i64 7
  %i.am = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.am, i64 8
  %i.an = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.an, i64 9
  %i.ao = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.ao, i64 10
  %i.ap = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.ap, i64 11
  %i.aq = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.aq, i64 12
  %i.ar = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.ar, i64 13
  %i.as = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.as, i64 14
  %i.at = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.at, i64 15
  %i.au = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.au, i64 16
  %i.av = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.av, i64 17
  %i.aw = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.aw, i64 18
  %i.ax = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.ax, i64 19
  %i.ay = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.ay, i64 20
  %i.az = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.az, i64 21
  %i.ba = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.ba, i64 22
  %i.bb = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.bb, i64 23
  %i.bc = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.bc, i64 24
  %i.bd = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.bd, i64 25
  %i.be = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.be, i64 26
  %i.bf = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.bf, i64 27
  %i.bg = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.bg, i64 28
  %i.bh = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.bh, i64 29
  %i.bi = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.bi, i64 30
  %i.bj = getelementptr i8, ptr %.01725.i, i64 %index
  %next.gep95 = getelementptr i8, ptr %i.bj, i64 31
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load96 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !18
  %i.bl = icmp ne <16 x i8> %wide.load, splat (i8 10) ; 16 uses
  %i.bm = icmp ne <16 x i8> %wide.load96, splat (i8 10) ; 16 uses
  %i.bn = extractelement <16 x i1> %i.bl, i64 0
  br i1 %i.bn, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %next.gep, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bo = extractelement <16 x i1> %i.bl, i64 1
  br i1 %i.bo, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue
  store i8 32, ptr %next.gep65, align 1, !tbaa !18
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue
  %i.bp = extractelement <16 x i1> %i.bl, i64 2
  br i1 %i.bp, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 32, ptr %next.gep66, align 1, !tbaa !18
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.bq = extractelement <16 x i1> %i.bl, i64 3
  br i1 %i.bq, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 32, ptr %next.gep67, align 1, !tbaa !18
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.br = extractelement <16 x i1> %i.bl, i64 4
  br i1 %i.br, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 32, ptr %next.gep68, align 1, !tbaa !18
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.bs = extractelement <16 x i1> %i.bl, i64 5
  br i1 %i.bs, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 32, ptr %next.gep69, align 1, !tbaa !18
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.bt = extractelement <16 x i1> %i.bl, i64 6
  br i1 %i.bt, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 32, ptr %next.gep70, align 1, !tbaa !18
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.bu = extractelement <16 x i1> %i.bl, i64 7
  br i1 %i.bu, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 32, ptr %next.gep71, align 1, !tbaa !18
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %i.bv = extractelement <16 x i1> %i.bl, i64 8
  br i1 %i.bv, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  store i8 32, ptr %next.gep72, align 1, !tbaa !18
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %i.bw = extractelement <16 x i1> %i.bl, i64 9
  br i1 %i.bw, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  store i8 32, ptr %next.gep73, align 1, !tbaa !18
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %i.bx = extractelement <16 x i1> %i.bl, i64 10
  br i1 %i.bx, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  store i8 32, ptr %next.gep74, align 1, !tbaa !18
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.by = extractelement <16 x i1> %i.bl, i64 11
  br i1 %i.by, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  store i8 32, ptr %next.gep75, align 1, !tbaa !18
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.bz = extractelement <16 x i1> %i.bl, i64 12
  br i1 %i.bz, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  store i8 32, ptr %next.gep76, align 1, !tbaa !18
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.ca = extractelement <16 x i1> %i.bl, i64 13
  br i1 %i.ca, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  store i8 32, ptr %next.gep77, align 1, !tbaa !18
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.cb = extractelement <16 x i1> %i.bl, i64 14
  br i1 %i.cb, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
end_hunk_1
begin_hunk_2_@Amap_LibertyParseStr:bb.a
pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.cl = extractelement <16 x i1> %i.bm, i64 8
  br i1 %i.cl, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  store i8 32, ptr %next.gep88, align 1, !tbaa !18
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.cm = extractelement <16 x i1> %i.bm, i64 9
  br i1 %i.cm, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  store i8 32, ptr %next.gep89, align 1, !tbaa !18
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cn = extractelement <16 x i1> %i.bm, i64 10
  br i1 %i.cn, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  store i8 32, ptr %next.gep90, align 1, !tbaa !18
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.co = extractelement <16 x i1> %i.bm, i64 11
  br i1 %i.co, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  store i8 32, ptr %next.gep91, align 1, !tbaa !18
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.cp = extractelement <16 x i1> %i.bm, i64 12
  br i1 %i.cp, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  store i8 32, ptr %next.gep92, align 1, !tbaa !18
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cq = extractelement <16 x i1> %i.bm, i64 13
  br i1 %i.cq, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i8 32, ptr %next.gep93, align 1, !tbaa !18
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.cr = extractelement <16 x i1> %i.bm, i64 14
  br i1 %i.cr, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i8 32, ptr %next.gep94, align 1, !tbaa !18
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.cs = extractelement <16 x i1> %i.bm, i64 15
  br i1 %i.cs, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  store i8 32, ptr %next.gep95, align 1, !tbaa !18
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %pred.store.continue158
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph24.i.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec159 = and i64 %i.ac, -8                   ; 3 uses
  %i.cu = getelementptr i8, ptr %.01725.i, i64 %n.vec159
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue185, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %pred.store.continue185 ] ; 9 uses
  %next.gep161 = getelementptr i8, ptr %.01725.i, i64 %index160 ; 2 uses
  %i.cv = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep162 = getelementptr i8, ptr %i.cv, i64 1
  %i.cw = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep163 = getelementptr i8, ptr %i.cw, i64 2
  %i.cx = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep164 = getelementptr i8, ptr %i.cx, i64 3
  %i.cy = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep165 = getelementptr i8, ptr %i.cy, i64 4
  %i.cz = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep166 = getelementptr i8, ptr %i.cz, i64 5
  %i.da = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep167 = getelementptr i8, ptr %i.da, i64 6
  %i.db = getelementptr i8, ptr %.01725.i, i64 %index160
  %next.gep168 = getelementptr i8, ptr %i.db, i64 7
  %wide.load169 = load <8 x i8>, ptr %next.gep161, align 1, !tbaa !18
  %i.dc = icmp ne <8 x i8> %wide.load169, splat (i8 10) ; 8 uses
  %i.dd = extractelement <8 x i1> %i.dc, i64 0
  br i1 %i.dd, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %vec.epilog.vector.body
  store i8 32, ptr %next.gep161, align 1, !tbaa !18
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %vec.epilog.vector.body
  %i.de = extractelement <8 x i1> %i.dc, i64 1
  br i1 %i.de, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  store i8 32, ptr %next.gep162, align 1, !tbaa !18
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.df = extractelement <8 x i1> %i.dc, i64 2
  br i1 %i.df, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  store i8 32, ptr %next.gep163, align 1, !tbaa !18
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.dg = extractelement <8 x i1> %i.dc, i64 3
  br i1 %i.dg, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  store i8 32, ptr %next.gep164, align 1, !tbaa !18
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.dh = extractelement <8 x i1> %i.dc, i64 4
  br i1 %i.dh, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  store i8 32, ptr %next.gep165, align 1, !tbaa !18
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.di = extractelement <8 x i1> %i.dc, i64 5
  br i1 %i.di, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  store i8 32, ptr %next.gep166, align 1, !tbaa !18
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.dj = extractelement <8 x i1> %i.dc, i64 6
  br i1 %i.dj, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  store i8 32, ptr %next.gep167, align 1, !tbaa !18
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %i.dk = extractelement <8 x i1> %i.dc, i64 7
  br i1 %i.dk, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %pred.store.continue183
  store i8 32, ptr %next.gep168, align 1, !tbaa !18
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %pred.store.continue183
  %index.next186 = add nuw i64 %index160, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next186, %n.vec159
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %pred.store.continue185
  %cmp.n187 = icmp eq i64 %i.ac, %n.vec159
  br i1 %cmp.n187, label %.loopexit.i, label %.lr.ph24.i.preheader

.lr.ph24.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi ptr [ %.01725.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %bb.g
  %.023.i = phi ptr [ %i.dn, %bb.g ], [ %.023.i.ph, %.lr.ph24.i.preheader ] ; 3 uses
  %i.dm = load i8, ptr %.023.i, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.dm, 10
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph24.i
  store i8 32, ptr %.023.i, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph24.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  %exitcond34.not.i = icmp eq ptr %i.dn, %indvars.iv.i
  br i1 %exitcond34.not.i, label %.loopexit.i, label %.lr.ph24.i, !llvm.loop !93

bb.h:                                             ; preds = %bb.e, %.lr.ph.i
  %i.do = getelementptr inbounds nuw i8, ptr %.122.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.do, %scevgep30.i
  %scevgep32.i = getelementptr i8, ptr %indvars.iv.i, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !62

.loopexit.i:                                      ; preds = %bb.h, %bb.g, %middle.block, %vec.epilog.middle.block, %bb.d, %.lr.ph26.i
  %.2.i = phi ptr [ %.01725.i, %.lr.ph26.i ], [ %.122.i, %middle.block ], [ %.01725.i, %bb.d ], [ %.122.i, %bb.g ], [ %.122.i, %vec.epilog.middle.block ], [ %scevgep30.i, %bb.h ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.n
  br i1 %i.dq, label %.lr.ph26.i, label %Amap_LibertyWipeOutComments.exit.loopexit, !llvm.loop !63

Amap_LibertyWipeOutComments.exit.loopexit:        ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  %.pre45 = load i32, ptr %i.k, align 8, !tbaa !76
  %.pre46 = sext i32 %.pre45 to i64
  br label %Amap_LibertyWipeOutComments.exit

Amap_LibertyWipeOutComments.exit:                 ; preds = %Amap_LibertyWipeOutComments.exit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre46, %Amap_LibertyWipeOutComments.exit.loopexit ], [ %i.m, %bb.c ]
  %i.dr = phi ptr [ %.pre, %Amap_LibertyWipeOutComments.exit.loopexit ], [ %i.j, %bb.c ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.pre-phi
  %i.dt = call i32 @Amap_LibertyBuildItem(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef %i.ds)
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Amap_LibertyWipeOutComments.exit
  %.not28 = icmp eq i32 %1, 0
  br i1 %.not28, label %.split, label %.split23

.split:                                           ; preds = %bb.i
  %i.dv = call ptr @Amap_LibertyPrintGenlibStr(ptr noundef nonnull %i.g, i32 noundef 0)
  br label %.thread

.split23:                                         ; preds = %bb.i
  %puts29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.dw = call ptr @Amap_LibertyPrintGenlibStr(ptr noundef nonnull %i.g, i32 noundef %1)
  br label %bb.n

bb.j:                                             ; preds = %Amap_LibertyWipeOutComments.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %i.dy, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull %i.dy) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.split23, %bb.m
  %.021 = phi ptr [ %i.dw, %.split23 ], [ null, %bb.m ]
  %i.ea = load i32, ptr %i.k, align 8, !tbaa !76
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !79
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul nsw i64 %i.ee, 40
  %i.eg = add nsw i64 %i.ef, %i.eb
  %i.eh = uitofp i64 %i.eg to double
  %i.ei = fmul nnan double %i.eh, f0x3EB0000000000000
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, double noundef %i.ei) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ek = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %Abc_Clock.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = load i64, ptr %2, align 8, !tbaa !80
  %i.en = mul nsw i64 %i.em, 1000000
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !83
  %i.eq = sdiv i64 %i.ep, 1000
  %i.er = add nsw i64 %i.eq, %i.en
  br label %Abc_Clock.exit32

Abc_Clock.exit32:                                 ; preds = %bb.n, %bb.o
  %.0.i31 = phi i64 [ %i.er, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.es = add i64 %.0.i31, %.0.i.neg
  %i.et = sitofp i64 %i.es to double
  %i.eu = fdiv double %i.et, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.56, double noundef %i.eu)
  br label %.thread

.thread:                                          ; preds = %.split, %bb.l, %Abc_Clock.exit32
  %.02136 = phi ptr [ %.021, %Abc_Clock.exit32 ], [ null, %bb.l ], [ %i.dv, %.split ]
  %i.ev = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %.not.i33 = icmp eq ptr %i.ev, null
  br i1 %.not.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @free(ptr noundef nonnull %i.ev) #26
  store ptr null, ptr %i.g, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !13  ; 2 uses
  %.not17.i = icmp eq ptr %i.ew, null
  br i1 %.not17.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ew) #26
  store ptr null, ptr %i.i, align 8, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !21 ; 2 uses
  %.not18.i = icmp eq ptr %i.ey, null
  br i1 %.not18.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ey) #26
  store ptr null, ptr %i.ex, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !72 ; 2 uses
  %.not19.i = icmp eq ptr %i.fa, null
  br i1 %.not19.i, label %Amap_LibertyStop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.fa) #26
  br label %Amap_LibertyStop.exit

Amap_LibertyStop.exit:                            ; preds = %bb.u, %bb.v
  call void @free(ptr noundef nonnull %i.g) #26
  br label %bb.w

bb.w:                                             ; preds = %Abc_Clock.exit, %Amap_LibertyStop.exit
  %.0 = phi ptr [ %.02136, %Amap_LibertyStop.exit ], [ null, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #18

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #22

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #22

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
