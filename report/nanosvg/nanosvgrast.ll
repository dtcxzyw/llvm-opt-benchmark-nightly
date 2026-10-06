Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__parseXML:bb.a
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17    ; 2 uses
  %.not.i30 = icmp eq i8 %i.x, 0
  br i1 %.not.i30, label %.critedge.loopexit.i, label %.lr.ph.i26, !llvm.loop !158

.critedge.loopexit.i:                             ; preds = %bb.h, %.lr.ph.i26
  %.086.lcssa.ph.i = phi ptr [ %.086148.i, %.lr.ph.i26 ], [ %i.w, %bb.h ]
  %.lcssa.ph.i = phi i8 [ %i.s, %.lr.ph.i26 ], [ 0, %bb.h ]
  %i.y = icmp ne i8 %.lcssa.ph.i, 47
  br label %.critedge.i31

.critedge.i31:                                    ; preds = %.critedge.loopexit.i, %bb.g
  %.086.lcssa.i = phi ptr [ %.02155, %bb.g ], [ %.086.lcssa.ph.i, %.critedge.loopexit.i ] ; 2 uses
  %.lcssa.i = phi i1 [ true, %bb.g ], [ %i.y, %.critedge.loopexit.i ] ; 2 uses
  %not..i = xor i1 %.lcssa.i, true
  %.187.idx.i = zext i1 %not..i to i64
  %.187.i = getelementptr inbounds nuw i8, ptr %.086.lcssa.i, i64 %.187.idx.i ; 3 uses
  %i.z = load i8, ptr %.187.i, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.z, label %.lr.ph155.i [
    i8 0, label %nsvg__parseElement.exit
    i8 63, label %nsvg__parseElement.exit
    i8 33, label %nsvg__parseElement.exit
  ]

.lr.ph155.i:                                      ; preds = %.critedge.i31, %bb.i
  %.288154.i = phi ptr [ %i.ae, %bb.i ], [ %.187.i, %.critedge.i31 ] ; 2 uses
  %i.aa = phi i8 [ %.pr.i, %bb.i ], [ %i.z, %.critedge.i31 ] ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i64
  %memchr.bounds.i118.i = icmp ugt i8 %i.aa, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, 4294983169
  %memchr.bits.i119.i = icmp eq i64 %i.ad, 0
  %memchr1.i120.not.i = select i1 %memchr.bounds.i118.i, i1 true, i1 %memchr.bits.i119.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.288154.i, i64 1 ; 4 uses
  br i1 %memchr1.i120.not.i, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %.lr.ph155.i
  %.pr.i = load i8, ptr %i.ae, align 1, !tbaa !17 ; 2 uses
  %.not100.i = icmp eq i8 %.pr.i, 0
  br i1 %.not100.i, label %.critedge2.thread.i, label %.lr.ph155.i, !llvm.loop !159

.critedge2.i:                                     ; preds = %.lr.ph155.i
  store i8 0, ptr %.288154.i, align 1, !tbaa !17
  br label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %bb.i, %.critedge2.i
  br i1 %.lcssa.i, label %.lr.ph164.i.preheader, label %.critedge4.thread.i

.lr.ph164.i.preheader:                            ; preds = %.critedge2.thread.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %.not57 = icmp eq i8 %i.af, 0
  br i1 %.not57, label %.critedge4.i, label %.preheader134.i.preheader

.critedge4.thread.i:                              ; preds = %.critedge2.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.r

.preheader134.i.preheader:                        ; preds = %.lr.ph164.i.preheader, %.lr.ph164.i
  %i.ag = phi i8 [ %i.az, %.lr.ph164.i ], [ %i.af, %.lr.ph164.i.preheader ]
  %.4162.i49 = phi ptr [ %.10.i, %.lr.ph164.i ], [ %i.ae, %.lr.ph164.i.preheader ]
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i, %.lr.ph164.i ], [ 0, %.lr.ph164.i.preheader ] ; 6 uses
  br label %.preheader134.i

.preheader134.i:                                  ; preds = %.preheader134.i.preheader, %bb.j
  %.5157.i = phi ptr [ %i.al, %bb.j ], [ %.4162.i49, %.preheader134.i.preheader ] ; 3 uses
  %i.ah = phi i8 [ %.pr127.i, %bb.j ], [ %i.ag, %.preheader134.i.preheader ] ; 4 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %memchr.bounds.i121.i = icmp ugt i8 %i.ah, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.aj, 4294983169
  %memchr.bits.i122.i = icmp eq i64 %i.ak, 0
  %memchr1.i123.not.i = select i1 %memchr.bounds.i121.i, i1 true, i1 %memchr.bits.i122.i
  br i1 %memchr1.i123.not.i, label %.critedge6.i, label %bb.j

bb.j:                                             ; preds = %.preheader134.i
  %i.al = getelementptr inbounds nuw i8, ptr %.5157.i, i64 1 ; 2 uses
  %.pr127.i = load i8, ptr %i.al, align 1, !tbaa !17 ; 2 uses
  %.not104.i = icmp eq i8 %.pr127.i, 0
  br i1 %.not104.i, label %.critedge4.i, label %.preheader134.i, !llvm.loop !160

.critedge6.i:                                     ; preds = %.preheader134.i
  %cond.i = icmp eq i8 %i.ah, 47                  ; 3 uses
  br i1 %cond.i, label %.critedge4.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %.critedge6.i, %bb.k
  %i.am = phi i8 [ %i.ar, %bb.k ], [ %i.ah, %.critedge6.i ] ; 3 uses
  %.6159.i = phi ptr [ %i.aq, %bb.k ], [ %.5157.i, %.critedge6.i ] ; 2 uses
  %i.an = zext nneg i8 %i.am to i64
  %memchr.bounds.i124.i = icmp ult i8 %i.am, 64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, 4294983169
  %memchr.bits.i125.i = icmp ne i64 %i.ap, 0
  %memchr1.i126.i = select i1 %memchr.bounds.i124.i, i1 %memchr.bits.i125.i, i1 false
  %.not109.i = icmp eq i8 %i.am, 61
  %or.cond132.i = or i1 %.not109.i, %memchr1.i126.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.6159.i, i64 1 ; 3 uses
  br i1 %or.cond132.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph160.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17  ; 2 uses
  %.not107.i = icmp eq i8 %i.ar, 0
  br i1 %.not107.i, label %.critedge8.i.preheader, label %.lr.ph160.i, !llvm.loop !161

bb.l:                                             ; preds = %.lr.ph160.i
  store i8 0, ptr %.6159.i, align 1, !tbaa !17
  br label %.critedge8.i.preheader

.critedge8.i.preheader:                           ; preds = %bb.k, %bb.l
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.preheader, %bb.m
  %.8.i = phi ptr [ %i.at, %bb.m ], [ %i.aq, %.critedge8.i.preheader ] ; 3 uses
  %i.as = load i8, ptr %.8.i, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.as, label %bb.m [
    i8 0, label %.critedge4.i
    i8 34, label %bb.n
    i8 39, label %bb.n
  ]

bb.m:                                             ; preds = %.critedge8.i
  %i.at = getelementptr inbounds nuw i8, ptr %.8.i, i64 1
  br label %.critedge8.i, !llvm.loop !162

bb.n:                                             ; preds = %.critedge8.i, %.critedge8.i
  %i.au = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.9.i = phi ptr [ %i.au, %bb.n ], [ %i.aw, %bb.o ] ; 4 uses
  %i.av = load i8, ptr %.9.i, align 1, !tbaa !17  ; 2 uses
  %.not115.i = icmp eq i8 %i.av, 0                ; 2 uses
  %.not116.i = icmp eq i8 %i.av, %i.as
  %or.cond.i = or i1 %.not115.i, %.not116.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.critedge12.i, label %bb.o, !llvm.loop !163

.critedge12.i:                                    ; preds = %bb.o
  br i1 %.not115.i, label %.lr.ph164.i, label %bb.p

bb.p:                                             ; preds = %.critedge12.i
  store i8 0, ptr %.9.i, align 1, !tbaa !17
  br label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %bb.p, %.critedge12.i
  %.10.i = phi ptr [ %i.aw, %bb.p ], [ %.9.i, %.critedge12.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i48 ; 2 uses
  store ptr %.5157.i, ptr %i.ax, align 16, !tbaa !21
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i48, 2 ; 2 uses
  %i.az = load i8, ptr %.10.i, align 1, !tbaa !17 ; 2 uses
  %i.ba = icmp ne i8 %i.az, 0
  %i.bb = icmp samesign ult i64 %indvars.iv.i48, 251
  %or.cond19.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond19.i, label %.preheader134.i.preheader, label %.critedge4.i

.critedge4.i:                                     ; preds = %.lr.ph164.i, %.critedge6.i, %bb.j, %.critedge8.i, %.lr.ph164.i.preheader
  %indvars.iv.i46 = phi i64 [ %indvars.iv.i48, %bb.j ], [ %indvars.iv.i48, %.critedge8.i ], [ 0, %.lr.ph164.i.preheader ], [ %indvars.iv.next.i, %.lr.ph164.i ], [ %indvars.iv.i48, %.critedge6.i ]
  %i.bc = phi i1 [ false, %bb.j ], [ false, %.critedge8.i ], [ false, %.lr.ph164.i.preheader ], [ %cond.i, %.critedge6.i ], [ %cond.i, %.lr.ph164.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  br i1 %.not211.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge4.i
  call void %1(ptr noundef %4, ptr noundef nonnull %.086.lcssa.i, ptr noundef nonnull %i.a) #30, !inline_history !164
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge4.i, %.critedge4.thread.i
  %i.be = phi i1 [ true, %.critedge4.thread.i ], [ %i.bc, %bb.q ], [ %i.bc, %.critedge4.i ]
  %or.cond17.i = and i1 %i.c, %i.be
  br i1 %or.cond17.i, label %bb.s, label %nsvg__parseElement.exit

bb.s:                                             ; preds = %bb.r
  call void %2(ptr noundef %4, ptr noundef nonnull %.187.i) #30, !inline_history !164
  br label %nsvg__parseElement.exit

nsvg__parseElement.exit:                          ; preds = %.critedge.i31, %.critedge.i31, %.critedge.i31, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %nsvg__parseContent.exit

nsvg__parseContent.exit:                          ; preds = %bb.d, %bb.f, %bb.e, %.critedge.i, %bb.c, %nsvg__parseElement.exit
  %.124 = phi ptr [ %i.q, %bb.f ], [ %i.q, %nsvg__parseElement.exit ], [ %i.g, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %.critedge.i ], [ %i.g, %bb.d ] ; 2 uses
  %.122 = phi ptr [ %.02155, %bb.f ], [ %i.q, %nsvg__parseElement.exit ], [ %i.g, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %.critedge.i ], [ %i.g, %bb.d ]
  %.1 = phi i32 [ %.056, %bb.f ], [ 2, %nsvg__parseElement.exit ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %.critedge.i ], [ 1, %bb.d ]
  %i.bf = load i8, ptr %.124, align 1, !tbaa !17  ; 2 uses
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !165

._crit_edge:                                      ; preds = %nsvg__parseContent.exit, %bb.a
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @nsvgParse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x float], align 16             ; 12 uses
  %i.b = alloca [6 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [6 x float], align 16             ; 4 uses
  %i.e = alloca [4 x float], align 16             ; 4 uses
  %calloc33.i = tail call dereferenceable_or_null(40040) ptr @calloc(i64 1, i64 40040) ; 35 uses
  %cond.i = icmp eq ptr %calloc33.i, null
  br i1 %cond.i, label %nsvg__createParser.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39968 ; 5 uses
  store ptr %calloc.i, ptr %i.f, align 8, !tbaa !30
  %i.g = icmp eq ptr %calloc.i, null
  br i1 %i.g, label %nsvg__createParser.exit.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 64
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 76
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 96
  store <2 x float> splat (float 1.000000e+00), ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 104
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 300
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 236
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 284
  store float 4.000000e+00, ptr %i.n, align 4, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 308
  store i8 1, ptr %i.o, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 310
  store i8 1, ptr %i.p, align 2, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 311
  store i8 24, ptr %i.q, align 1, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40028 ; 6 uses
  store float %2, ptr %i.r, align 4, !tbaa !40
  %i.s = tail call i32 @nsvg__parseXML(ptr noundef %0, ptr noundef nonnull @nsvg__startElement, ptr noundef nonnull @nsvg__endElement, ptr noundef nonnull @nsvg__content, ptr noundef nonnull %calloc33.i) ; 0 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.027.i = load ptr, ptr %i.u, align 8, !tbaa !41 ; 2 uses
  %.not28.i = icmp eq ptr %.027.i, null
  br i1 %.not28.i, label %nsvg__createGradients.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %.029.i = phi ptr [ %.0.i14, %bb.i ], [ %.027.i, %bb.c ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.029.i, i64 64 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !44
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.029.i, i64 168 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !17
  %.not25.i = icmp eq i8 %i.z, 0
  br i1 %.not25.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.i, i64 296 ; 2 uses
  call fastcc void @nsvg__xformInverse(ptr noundef nonnull %i.b, ptr noundef %i.aa)
  call fastcc void @nsvg__getLocalBounds(ptr noundef %i.c, ptr noundef %.029.i, ptr noundef %i.b)
  %i.ab = call fastcc ptr @nsvg__createGradient(ptr noundef nonnull readonly %calloc33.i, ptr noundef %i.y, ptr noundef %i.c, ptr noundef %i.aa, ptr noundef %i.v)
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.i, i64 72
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.pre.i = load i8, ptr %i.v, align 8, !tbaa !44
  %i.ad = icmp eq i8 %.pre.i, -1
  br i1 %i.ad, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  store i8 0, ptr %i.v, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e, %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.i, i64 80 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.029.i, i64 232 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !17
  %.not26.i = icmp eq i8 %i.ai, 0
  br i1 %.not26.i, label %.thread31.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.i, i64 296 ; 2 uses
  call fastcc void @nsvg__xformInverse(ptr noundef nonnull %i.d, ptr noundef %i.aj)
  call fastcc void @nsvg__getLocalBounds(ptr noundef %i.e, ptr noundef %.029.i, ptr noundef %i.d)
  %i.ak = call fastcc ptr @nsvg__createGradient(ptr noundef nonnull readonly %calloc33.i, ptr noundef %i.ah, ptr noundef %i.e, ptr noundef %i.aj, ptr noundef %i.ae)
  %i.al = getelementptr inbounds nuw i8, ptr %.029.i, i64 88
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %.pre30.i = load i8, ptr %i.ae, align 8, !tbaa !45
  %i.am = icmp eq i8 %.pre30.i, -1
  br i1 %i.am, label %.thread31.i, label %bb.i

.thread31.i:                                      ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.ae, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %.thread31.i, %bb.h, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.029.i, i64 328
  %.0.i14 = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %.0.i14, null
  br i1 %.not.i, label %nsvg__createGradients.exit.loopexit, label %.lr.ph.i, !llvm.loop !166

nsvg__createGradients.exit.loopexit:              ; preds = %bb.i
  %.val.i.pre = load ptr, ptr %i.f, align 8, !tbaa !30
  br label %nsvg__createGradients.exit

nsvg__createGradients.exit:                       ; preds = %nsvg__createGradients.exit.loopexit, %bb.c
  %.val.i = phi ptr [ %.val.i.pre, %nsvg__createGradients.exit.loopexit ], [ %i.t, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %3 = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %3, align 8, !tbaa !47 ; 4 uses
  %i.ao = icmp eq ptr %.val.val.i, null           ; 2 uses
  br i1 %i.ao, label %nsvg__imageBounds.exit.i, label %bb.j

bb.j:                                             ; preds = %nsvg__createGradients.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 152
  %i.aq = load <4 x float>, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.0.in1.i.i = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 328
  %.02.i.i = load ptr, ptr %.0.in1.i.i, align 8, !tbaa !48 ; 2 uses
  %.not3.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not3.i.i, label %nsvg__imageBounds.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.02.i.i, %bb.j ] ; 2 uses
  %i.ar = phi <4 x float> [ %i.ax, %.lr.ph.i.i ], [ %i.aq, %bb.j ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152
  %i.at = load <4 x float>, ptr %i.as, align 8, !tbaa !31 ; 3 uses
  %i.au = fcmp olt <4 x float> %i.ar, %i.at
  %i.av = fcmp ogt <4 x float> %i.ar, %i.at
  %i.aw = shufflevector <4 x i1> %i.au, <4 x i1> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ax = select <4 x i1> %i.aw, <4 x float> %i.ar, <4 x float> %i.at ; 2 uses
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 328
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %nsvg__imageBounds.exit.i, label %.lr.ph.i.i, !llvm.loop !167

nsvg__imageBounds.exit.i:                         ; preds = %.lr.ph.i.i, %bb.j, %nsvg__createGradients.exit
  %4 = phi <4 x float> [ zeroinitializer, %nsvg__createGradients.exit ], [ %i.aq, %bb.j ], [ %i.ax, %.lr.ph.i.i ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40008 ; 2 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.ba = fcmp oeq float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %nsvg__imageBounds.exit.i
  %i.bb = load float, ptr %.val.i, align 8, !tbaa !50 ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  br i1 %i.bc, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40000
  %i.be = extractelement <4 x float> %4, i64 0
  store float %i.be, ptr %i.bd, align 8, !tbaa !51
  %shift = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %4
  %i.bf = extractelement <4 x float> %foldExtExtBinop, i64 0
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k
  %.sink.i = phi float [ %i.bf, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  store float %.sink.i, ptr %i.ay, align 8, !tbaa !49
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %nsvg__imageBounds.exit.i
  %i.bg = phi float [ %i.az, %nsvg__imageBounds.exit.i ], [ %.sink.i, %.sink.split.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40012 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52 ; 2 uses
  %i.bj = fcmp oeq float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !53 ; 2 uses
  %i.bm = fcmp ogt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %.sink.split261.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40004
  %i.bo = extractelement <4 x float> %4, i64 1    ; 2 uses
  store float %i.bo, ptr %i.bn, align 4, !tbaa !54
  %i.bp = extractelement <4 x float> %4, i64 3
  %i.bq = fsub float %i.bp, %i.bo
  br label %.sink.split261.i

.sink.split261.i:                                 ; preds = %bb.o, %bb.n
  %.sink263.i = phi float [ %i.bq, %bb.o ], [ %i.bl, %bb.n ] ; 2 uses
  store float %.sink263.i, ptr %i.bh, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %.sink.split261.i, %bb.m
  %i.br = phi float [ %i.bi, %bb.m ], [ %.sink263.i, %.sink.split261.i ] ; 5 uses
  %i.bs = load float, ptr %.val.i, align 8, !tbaa !50 ; 2 uses
  %i.bt = fcmp oeq float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.bg, ptr %.val.i, align 8, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi float [ %i.bg, %bb.q ], [ %i.bs, %bb.p ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 4 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !53 ; 2 uses
  %i.bx = fcmp oeq float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.br, ptr %i.bv, align 4, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.by = phi float [ %i.br, %bb.s ], [ %i.bw, %bb.r ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40000
  %i.ca = load <2 x float>, ptr %i.bz, align 8, !tbaa !31 ; 5 uses
  %i.cb = fneg <2 x float> %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.br, i64 1 ; 2 uses
  %i.ce = fcmp ogt <2 x float> %i.cd, zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.by, i64 1
  %i.ch = fdiv <2 x float> %i.cg, %i.cd
  %i.ci = select <2 x i1> %i.ce, <2 x float> %i.ch, <2 x float> zeroinitializer ; 5 uses
  %i.cj = load i8, ptr %1, align 1, !tbaa !17
  switch i8 %i.cj, label %nsvg__convertToPixels.exit.i [
    i8 112, label %bb.u
    i8 109, label %bb.v
    i8 99, label %bb.w
    i8 105, label %bb.x
    i8 37, label %nsvg__parseUnits.exit.thread177.i
    i8 101, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  switch i8 %i.cl, label %nsvg__convertToPixels.exit.i [
    i8 99, label %nsvg__parseUnits.exit.thread189.i
    i8 116, label %nsvg__parseUnits.exit.thread183.i
  ]

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = icmp eq i8 %i.cn, 109
  br i1 %i.co, label %nsvg__parseUnits.exit.thread195.i, label %nsvg__convertToPixels.exit.i

bb.w:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = icmp eq i8 %i.cq, 109
  br i1 %i.cr, label %nsvg__parseUnits.exit.thread201.i, label %nsvg__convertToPixels.exit.i

bb.x:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = icmp eq i8 %i.ct, 110
  br i1 %i.cu, label %nsvg__parseUnits.exit.thread207.i, label %nsvg__convertToPixels.exit.i

bb.y:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  switch i8 %i.cw, label %nsvg__convertToPixels.exit.i [
    i8 109, label %nsvg__parseUnits.exit.thread213.i
    i8 120, label %bb.z
  ]

nsvg__parseUnits.exit.thread213.i:                ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39936
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !55
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [312 x i8], ptr %calloc33.i, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 292
  %i.dc = load float, ptr %i.db, align 4, !tbaa !56
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread183.i:                ; preds = %bb.u
  %i.dd = load float, ptr %i.r, align 4, !tbaa !40
  %i.de = fmul float %i.dd, f0x3C638E39
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread189.i:                ; preds = %bb.u
  %i.df = load float, ptr %i.r, align 4, !tbaa !40
  %i.dg = fmul float %i.df, f0x3E2AAAAB
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread195.i:                ; preds = %bb.v
  %i.dh = load float, ptr %i.r, align 4, !tbaa !40
  %i.di = fmul float %i.dh, f0x3D214285
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread201.i:                ; preds = %bb.w
  %i.dj = load float, ptr %i.r, align 4, !tbaa !40
  %i.dk = fmul float %i.dj, f0x3EC99326
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread207.i:                ; preds = %bb.x
  %i.dl = load float, ptr %i.r, align 4, !tbaa !40
  br label %nsvg__convertToPixels.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39936
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !55
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [312 x i8], ptr %calloc33.i, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 292
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !56
  %i.ds = fmul float %i.dr, 5.200000e-01
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread177.i:                ; preds = %bb.t
  br label %nsvg__convertToPixels.exit.i

nsvg__convertToPixels.exit.i:                     ; preds = %nsvg__parseUnits.exit.thread177.i, %bb.z, %nsvg__parseUnits.exit.thread207.i, %nsvg__parseUnits.exit.thread201.i, %nsvg__parseUnits.exit.thread195.i, %nsvg__parseUnits.exit.thread189.i, %nsvg__parseUnits.exit.thread183.i, %nsvg__parseUnits.exit.thread213.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i160.i = phi float [ %i.dc, %nsvg__parseUnits.exit.thread213.i ], [ f0x3C23D70A, %nsvg__parseUnits.exit.thread177.i ], [ %i.ds, %bb.z ], [ %i.de, %nsvg__parseUnits.exit.thread183.i ], [ %i.dg, %nsvg__parseUnits.exit.thread189.i ], [ %i.di, %nsvg__parseUnits.exit.thread195.i ], [ %i.dk, %nsvg__parseUnits.exit.thread201.i ], [ %i.dl, %nsvg__parseUnits.exit.thread207.i ], [ 1.000000e+00, %bb.y ], [ 1.000000e+00, %bb.t ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %bb.w ], [ 1.000000e+00, %bb.x ]
  %i.dt = fdiv float 1.000000e+00, %.0.i160.i
  %i.du = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40024
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !57
  switch i32 %i.dv, label %bb.ak [
    i32 1, label %bb.aa
    i32 2, label %bb.af
  ]

bb.aa:                                            ; preds = %nsvg__convertToPixels.exit.i
  %i.dw = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.dx = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.dy = fcmp olt float %i.dw, %i.dx
  %i.dz = select i1 %i.dy, float %i.dw, float %i.dx ; 5 uses
  %i.ea = fmul float %i.bg, %i.dz                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40016
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !58
  switch i32 %i.ec, label %bb.ac [
    i32 0, label %nsvg__viewAlign.exit.i
    i32 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ed = fsub float %i.bu, %i.ea
  br label %nsvg__viewAlign.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ee = fsub float %i.bu, %i.ea
  %i.ef = fmul float %i.ee, 5.000000e-01
  br label %nsvg__viewAlign.exit.i

nsvg__viewAlign.exit.i:                           ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i161.i = phi float [ %i.ef, %bb.ac ], [ %i.ed, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  %i.eg = fdiv float %.0.i161.i, %i.dz
  %i.eh = extractelement <2 x float> %i.ca, i64 0
  %i.ei = fsub float %i.eg, %i.eh
  %i.ej = fmul float %i.br, %i.dz                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40020
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !59
  switch i32 %i.el, label %bb.ae [
    i32 0, label %nsvg__viewAlign.exit163.i
    i32 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %nsvg__viewAlign.exit.i
  %i.em = fsub float %i.by, %i.ej
  br label %nsvg__viewAlign.exit163.i

bb.ae:                                            ; preds = %nsvg__viewAlign.exit.i
  %i.en = fsub float %i.by, %i.ej
  %i.eo = fmul float %i.en, 5.000000e-01
  br label %nsvg__viewAlign.exit163.i

nsvg__viewAlign.exit163.i:                        ; preds = %bb.ae, %bb.ad, %nsvg__viewAlign.exit.i
  %.0.i162.i = phi float [ %i.eo, %bb.ae ], [ %i.em, %bb.ad ], [ 0.000000e+00, %nsvg__viewAlign.exit.i ]
  %i.ep = fdiv float %.0.i162.i, %i.dz
  %i.eq = extractelement <2 x float> %i.ca, i64 1
  %i.er = fsub float %i.ep, %i.eq
  %i.es = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.er, i64 1
  br label %bb.ak

bb.af:                                            ; preds = %nsvg__convertToPixels.exit.i
  %i.ew = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.ex = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.ey = fcmp ogt float %i.ew, %i.ex
  %i.ez = select i1 %i.ey, float %i.ew, float %i.ex ; 5 uses
  %i.fa = fmul float %i.bg, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40016
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !58
  switch i32 %i.fc, label %bb.ah [
    i32 0, label %nsvg__viewAlign.exit165.i
    i32 2, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fd = fsub float %i.bu, %i.fa
  br label %nsvg__viewAlign.exit165.i

bb.ah:                                            ; preds = %bb.af
  %i.fe = fsub float %i.bu, %i.fa
  %i.ff = fmul float %i.fe, 5.000000e-01
  br label %nsvg__viewAlign.exit165.i

nsvg__viewAlign.exit165.i:                        ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i164.i = phi float [ %i.ff, %bb.ah ], [ %i.fd, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.fg = fdiv float %.0.i164.i, %i.ez
  %i.fh = extractelement <2 x float> %i.ca, i64 0
  %i.fi = fsub float %i.fg, %i.fh
  %i.fj = fmul float %i.br, %i.ez                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40020
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %nsvg__viewAlign.exit167.i
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fm = fsub float %i.by, %i.fj
  br label %nsvg__viewAlign.exit167.i

bb.aj:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fn = fsub float %i.by, %i.fj
  %i.fo = fmul float %i.fn, 5.000000e-01
  br label %nsvg__viewAlign.exit167.i

nsvg__viewAlign.exit167.i:                        ; preds = %bb.aj, %bb.ai, %nsvg__viewAlign.exit165.i
  %.0.i166.i = phi float [ %i.fo, %bb.aj ], [ %i.fm, %bb.ai ], [ 0.000000e+00, %nsvg__viewAlign.exit165.i ]
  %i.fp = fdiv float %.0.i166.i, %i.ez
  %i.fq = extractelement <2 x float> %i.ca, i64 1
  %i.fr = fsub float %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fr, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %nsvg__viewAlign.exit167.i, %nsvg__viewAlign.exit163.i, %nsvg__convertToPixels.exit.i
  %i.fw = phi <2 x float> [ %i.et, %nsvg__viewAlign.exit163.i ], [ %i.ft, %nsvg__viewAlign.exit167.i ], [ %i.ci, %nsvg__convertToPixels.exit.i ]
  %i.fx = phi <2 x float> [ %i.ev, %nsvg__viewAlign.exit163.i ], [ %i.fv, %nsvg__viewAlign.exit167.i ], [ %i.cb, %nsvg__convertToPixels.exit.i ] ; 6 uses
  %i.fy = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.fz, %i.fw           ; 8 uses
  %shift73 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.ga, %shift73
  %i.gb = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.gc = fmul float %i.gb, 5.000000e-01          ; 3 uses
  br i1 %i.ao, label %nsvg__scaleToViewbox.exit, label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.gf = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = extractelement <2 x float> %i.fx, i64 0 ; 2 uses
  %i.gi = extractelement <2 x float> %i.fx, i64 1 ; 2 uses
  %i.gj = insertelement <2 x float> %i.ga, float 0.000000e+00, i64 1 ; 2 uses
  %i.gk = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7> ; 2 uses
  %i.gm = insertelement <2 x float> %i.ga, float 0.000000e+00, i64 0 ; 2 uses
  %i.gn = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, <4 x float> %i.gk, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.go = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %broadcast.splat58 = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat62 = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat64 = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gp = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gq = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gs = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge233.i, %.lr.ph238.i
  %.0236.i = phi ptr [ %.val.val.i, %.lr.ph238.i ], [ %.0.i15, %._crit_edge233.i ] ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0236.i, i64 152 ; 2 uses
  %i.gu = load <4 x float>, ptr %i.gt, align 8, !tbaa !31
  %i.gv = fadd <4 x float> %i.go, %i.gu
  %i.gw = fmul <4 x float> %i.gk, %i.gv
  store <4 x float> %i.gw, ptr %i.gt, align 8, !tbaa !31
  %i.gx = getelementptr inbounds nuw i8, ptr %.0236.i, i64 320
  %.0148224.i = load ptr, ptr %i.gx, align 8, !tbaa !60 ; 2 uses
  %.not156225.i = icmp eq ptr %.0148224.i, null
  br i1 %.not156225.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.0148226.i = phi ptr [ %.0148.i, %._crit_edge.i ], [ %.0148224.i, %bb.al ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 16 ; 2 uses
  %i.gz = load <4 x float>, ptr %i.gy, align 8, !tbaa !31
  %i.ha = fadd <4 x float> %i.go, %i.gz
  %i.hb = fmul <4 x float> %i.gk, %i.ha
  store <4 x float> %i.hb, ptr %i.gy, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !62 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i17, label %._crit_edge.i

.lr.ph.i17:                                       ; preds = %.lr.ph228.i
  %i.hf = load ptr, ptr %.0148226.i, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.hd to i64 ; 3 uses
  %min.iters.check54 = icmp ult i32 %i.hd, 4
  br i1 %min.iters.check54, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph.i17
  %n.vec56 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph55
  %index66 = phi i64 [ 0, %vector.ph55 ], [ %index.next68, %vector.body65 ] ; 2 uses
  %i.hg = shl nuw nsw i64 %index66, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.hh, align 4, !tbaa !31 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec67 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hi = fadd <4 x float> %broadcast.splat58, %strided.vec
  %i.hj = fmul <4 x float> %broadcast.splat60, %i.hi
  %i.hk = fadd <4 x float> %broadcast.splat62, %strided.vec67
  %i.hl = fmul <4 x float> %broadcast.splat64, %i.hk
  %interleaved.vec = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.hh, align 4, !tbaa !31
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.hm = icmp eq i64 %index.next68, %n.vec56
  br i1 %i.hm, label %middle.block69, label %vector.body65, !llvm.loop !168

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %n.vec56, %wide.trip.count.i
  br i1 %cmp.n70, label %._crit_edge.i, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.lr.ph.i17, %middle.block69
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i17 ], [ %n.vec56, %middle.block69 ]
  br label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.preheader, %scalar.ph53
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph53 ], [ %indvars.iv.i.ph, %scalar.ph53.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i ; 2 uses
  %i.ho = load <2 x float>, ptr %i.hn, align 4, !tbaa !31
  %i.hp = fadd <2 x float> %i.fx, %i.ho
  %i.hq = fmul <2 x float> %i.ga, %i.hp
  store <2 x float> %i.hq, ptr %i.hn, align 4, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph53, !llvm.loop !169

._crit_edge.i:                                    ; preds = %scalar.ph53, %middle.block69, %.lr.ph228.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 32
  %.0148.i = load ptr, ptr %i.hr, align 8, !tbaa !60 ; 2 uses
  %.not156.i = icmp eq ptr %.0148.i, null
  br i1 %.not156.i, label %._crit_edge229.i, label %.lr.ph228.i, !llvm.loop !170

._crit_edge229.i:                                 ; preds = %._crit_edge.i, %bb.al
  %i.hs = getelementptr inbounds nuw i8, ptr %.0236.i, i64 64
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !44
  %i.hu = and i8 %i.ht, -2
  %switch.i = icmp eq i8 %i.hu, 2
  br i1 %switch.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge229.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.0236.i, i64 72 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !17 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  %i.hz = load <4 x float>, ptr %i.hw, align 4, !tbaa !31 ; 2 uses
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ib = fmul <2 x float> %i.ia, zeroinitializer
  %i.ic = shufflevector <4 x float> %i.hz, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.id = fadd <2 x float> %i.ic, %i.ib
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> zeroinitializer, <2 x float> %i.ia)
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ih = fmul <4 x float> %i.gp, %i.ig
  %i.ii = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.gq, <4 x float> %i.ih)
  store <4 x float> %i.ii, ptr %i.hw, align 4, !tbaa !31
  %i.ij = load float, ptr %i.hx, align 4, !tbaa !31 ; 2 uses
  %i.ik = load float, ptr %i.hy, align 4, !tbaa !31 ; 2 uses
  %i.il = fmul float %i.ik, 0.000000e+00
  %i.im = fadd float %i.ij, %i.il
  %i.in = fadd float %i.gh, %i.im
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ij, float 0.000000e+00, float %i.ik)
  %i.ip = fadd float %i.gi, %i.io
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.gm, %i.ir
  %i.it = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.gj, <2 x float> %i.is)
  %i.iw = fadd <2 x float> %i.iv, zeroinitializer
  store <2 x float> %i.iw, ptr %i.hx, align 4, !tbaa !31
  %i.ix = load ptr, ptr %i.hv, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.ix, i64 24, i1 false)
  %i.iy = load <2 x float>, ptr %i.gd, align 4, !tbaa !31 ; 2 uses
  %i.iz = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jb = fpext <2 x float> %i.ja to <2 x double> ; 4 uses
  %i.jc = fpext <2 x float> %i.iy to <2 x double> ; 3 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %i.je = fneg double %i.jd
  %i.jf = extractelement <2 x double> %i.jc, i64 1
  %i.jg = fmul double %i.jf, %i.je
  %i.jh = extractelement <2 x double> %i.jb, i64 0
  %i.ji = extractelement <2 x double> %i.jb, i64 1
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.ji, double %i.jg) ; 2 uses
  %i.jk = tail call double @llvm.fabs.f64(double %i.jj)
  %or.cond.i.i = fcmp olt double %i.jk, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.ge, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.jl = fdiv double 1.000000e+00, %i.jj         ; 2 uses
  %i.jm = fneg <2 x float> %i.iy
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jo = fpext <2 x float> %i.jm to <2 x double>
  %i.jp = insertelement <4 x double> poison, double %i.jl, i64 0
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.jr = shufflevector <2 x double> %i.jb, <2 x double> %i.jo, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.js = fmul <4 x double> %i.jq, %i.jr
  %i.jt = fptrunc <4 x double> %i.js to <4 x float>
  store <4 x float> %i.jt, ptr %i.ix, align 4, !tbaa !31
  %i.ju = load <2 x float>, ptr %i.ge, align 16, !tbaa !31
  %i.jv = fpext <2 x float> %i.ju to <2 x double> ; 2 uses
  %i.jw = fneg <2 x double> %i.jv
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = fmul <2 x double> %i.jx, %i.jb
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.jv, <2 x double> %i.jy)
  %i.ka = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %i.kb, %i.jz
  %i.kd = fptrunc <2 x double> %i.kc to <2 x float> ; 2 uses
  %i.ke = extractelement <2 x float> %i.kd, i64 1
  store float %i.ke, ptr %i.jn, align 4, !tbaa !31
  %i.kf = extractelement <2 x float> %i.kd, i64 0
  br label %nsvg__xformInverse.exit.i

nsvg__xformInverse.exit.i:                        ; preds = %bb.ao, %bb.an
  %.sink34.i.i = phi ptr [ %i.ix, %bb.ao ], [ %i.a, %bb.an ]
  %.sink.i.i = phi float [ %i.kf, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sink34.i.i, i64 20
  store float %.sink.i.i, ptr %i.kg, align 4, !tbaa !31
  br label %bb.ap

bb.ap:                                            ; preds = %nsvg__xformInverse.exit.i, %._crit_edge229.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0236.i, i64 80
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !45
  %i.kj = and i8 %i.ki, -2
  %switch158.i = icmp eq i8 %i.kj, 2
  br i1 %switch158.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.kk = getelementptr inbounds nuw i8, ptr %.0236.i, i64 88 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !17 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %i.ko = load <4 x float>, ptr %i.kl, align 4, !tbaa !31 ; 2 uses
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kq = fmul <2 x float> %i.kp, zeroinitializer
  %i.kr = shufflevector <4 x float> %i.ko, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ks = fadd <2 x float> %i.kr, %i.kq
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> zeroinitializer, <2 x float> %i.kp)
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kw = fmul <4 x float> %i.gr, %i.kv
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kt, <4 x float> %i.gs, <4 x float> %i.kw)
  store <4 x float> %i.kx, ptr %i.kl, align 4, !tbaa !31
  %i.ky = load float, ptr %i.km, align 4, !tbaa !31 ; 2 uses
  %i.kz = load float, ptr %i.kn, align 4, !tbaa !31 ; 2 uses
  %i.la = fmul float %i.kz, 0.000000e+00
  %i.lb = fadd float %i.ky, %i.la
  %i.lc = fadd float %i.gh, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.ky, float 0.000000e+00, float %i.kz)
  %i.le = fadd float %i.gi, %i.ld
  %i.lf = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x float> %i.gm, %i.lg
  %i.li = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.gj, <2 x float> %i.lh)
  %i.ll = fadd <2 x float> %i.lk, zeroinitializer
  store <2 x float> %i.ll, ptr %i.km, align 4, !tbaa !31
  %i.lm = load ptr, ptr %i.kk, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.lm, i64 24, i1 false)
  %i.ln = load <2 x float>, ptr %i.gd, align 4, !tbaa !31 ; 2 uses
  %i.lo = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.lq = fpext <2 x float> %i.lp to <2 x double> ; 4 uses
  %i.lr = fpext <2 x float> %i.ln to <2 x double> ; 3 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = fneg double %i.ls
  %i.lu = extractelement <2 x double> %i.lr, i64 1
  %i.lv = fmul double %i.lu, %i.lt
  %i.lw = extractelement <2 x double> %i.lq, i64 0
  %i.lx = extractelement <2 x double> %i.lq, i64 1
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.lx, double %i.lv) ; 2 uses
  %i.lz = tail call double @llvm.fabs.f64(double %i.ly)
  %or.cond.i168.i = fcmp olt double %i.lz, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i168.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.ge, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit171.i

bb.as:                                            ; preds = %bb.aq
  %i.ma = fdiv double 1.000000e+00, %i.ly         ; 2 uses
  %i.mb = fneg <2 x float> %i.ln
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.md = fpext <2 x float> %i.mb to <2 x double>
  %i.me = insertelement <4 x double> poison, double %i.ma, i64 0
  %i.mf = shufflevector <4 x double> %i.me, <4 x double> poison, <4 x i32> zeroinitializer
  %i.mg = shufflevector <2 x double> %i.lq, <2 x double> %i.md, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mh = fmul <4 x double> %i.mf, %i.mg
  %i.mi = fptrunc <4 x double> %i.mh to <4 x float>
  store <4 x float> %i.mi, ptr %i.lm, align 4, !tbaa !31
  %i.mj = load <2 x float>, ptr %i.ge, align 16, !tbaa !31
  %i.mk = fpext <2 x float> %i.mj to <2 x double> ; 2 uses
  %i.ml = fneg <2 x double> %i.mk
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mn = fmul <2 x double> %i.mm, %i.lq
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.mk, <2 x double> %i.mn)
  %i.mp = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = fmul <2 x double> %i.mq, %i.mo
  %i.ms = fptrunc <2 x double> %i.mr to <2 x float> ; 2 uses
  %i.mt = extractelement <2 x float> %i.ms, i64 1
  store float %i.mt, ptr %i.mc, align 4, !tbaa !31
  %i.mu = extractelement <2 x float> %i.ms, i64 0
  br label %nsvg__xformInverse.exit171.i

nsvg__xformInverse.exit171.i:                     ; preds = %bb.as, %bb.ar
  %.sink34.i169.i = phi ptr [ %i.lm, %bb.as ], [ %i.a, %bb.ar ]
  %.sink.i170.i = phi float [ %i.mu, %bb.as ], [ 0.000000e+00, %bb.ar ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.sink34.i169.i, i64 20
  store float %.sink.i170.i, ptr %i.mv, align 4, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %nsvg__xformInverse.exit171.i, %bb.ap
  %i.mw = getelementptr inbounds nuw i8, ptr %.0236.i, i64 100 ; 2 uses
  %i.mx = load <2 x float>, ptr %i.mw, align 4, !tbaa !31
  %i.my = fmul <2 x float> %i.gg, %i.mx
  store <2 x float> %i.my, ptr %i.mw, align 4, !tbaa !31
  %i.mz = getelementptr inbounds nuw i8, ptr %.0236.i, i64 140
  %i.na = load i8, ptr %i.mz, align 4, !tbaa !66  ; 3 uses
  %i.nb = icmp sgt i8 %i.na, 0
  br i1 %i.nb, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.at
  %wide.trip.count247.i = zext nneg i8 %i.na to i64 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0236.i, i64 108 ; 2 uses
  %min.iters.check = icmp ult i8 %i.na, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph232.i
  %n.vec = and i64 %wide.trip.count247.i, 120     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.nd, align 4, !tbaa !31
  %wide.load52 = load <4 x float>, ptr %i.ne, align 4, !tbaa !31
  %i.nf = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ng = fmul <4 x float> %broadcast.splat, %wide.load52
  store <4 x float> %i.nf, ptr %i.nd, align 4, !tbaa !31
  store <4 x float> %i.ng, ptr %i.ne, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nh = icmp eq i64 %index.next, %n.vec
  br i1 %i.nh, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count247.i
  br i1 %cmp.n, label %._crit_edge233.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph232.i, %middle.block
  %indvars.iv244.i.ph = phi i64 [ 0, %.lr.ph232.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %scalar.ph ], [ %indvars.iv244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv244.i ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !31
  %i.nk = fmul float %i.gc, %i.nj
  store float %i.nk, ptr %i.ni, align 4, !tbaa !31
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge233.i, label %scalar.ph, !llvm.loop !172

._crit_edge233.i:                                 ; preds = %scalar.ph, %middle.block, %bb.at
  %i.nl = getelementptr inbounds nuw i8, ptr %.0236.i, i64 328
  %.0.i15 = load ptr, ptr %i.nl, align 8, !tbaa !41 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, null
  br i1 %.not.i16, label %nsvg__scaleToViewbox.exit, label %bb.al, !llvm.loop !173

nsvg__scaleToViewbox.exit:                        ; preds = %._crit_edge233.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.f, align 8, !tbaa !30
  %i.nm = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39976
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !67 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.nn, null
  br i1 %.not6.i.i, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %nsvg__scaleToViewbox.exit, %.lr.ph.i.i18
  %.07.i.i = phi ptr [ %i.np, %.lr.ph.i.i18 ], [ %i.nn, %nsvg__scaleToViewbox.exit ] ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !69 ; 2 uses
  %i.nq = load ptr, ptr %.07.i.i, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.nq) #30
  %i.nr = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.ns) #30
  tail call void @free(ptr noundef nonnull %.07.i.i) #30
  %.not.i.i19 = icmp eq ptr %i.np, null
  br i1 %.not.i.i19, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18, !llvm.loop !174

nsvg__deleteStyles.exit.i:                        ; preds = %.lr.ph.i.i18, %nsvg__scaleToViewbox.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39960
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !72 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.nu, null
  br i1 %.not8.i.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %nsvg__deleteStyles.exit.i, %bb.av
  %.09.i.i = phi ptr [ %i.nw, %bb.av ], [ %i.nu, %nsvg__deleteStyles.exit.i ] ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !73 ; 2 uses
  %i.nx = load ptr, ptr %.09.i.i, align 8, !tbaa !63 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.nx, null
  br i1 %.not7.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %i.nx) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %.09.i.i) #30
  %.not.i8.i = icmp eq ptr %i.nw, null
  br i1 %.not.i8.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i, !llvm.loop !0

nsvg__deletePaths.exit.i:                         ; preds = %bb.av, %nsvg__deleteStyles.exit.i
  %i.ny = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39984
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !74 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.nz, null
  br i1 %.not5.i.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %nsvg__deletePaths.exit.i, %.lr.ph.i9.i
  %.06.i.i = phi ptr [ %i.ob, %.lr.ph.i9.i ], [ %i.nz, %nsvg__deletePaths.exit.i ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 216
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !77 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 208
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.od) #30
  tail call void @free(ptr noundef nonnull %.06.i.i) #30
  %.not.i10.i = icmp eq ptr %i.ob, null
  br i1 %.not.i10.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i, !llvm.loop !175

nsvg__deleteParser.exit:                          ; preds = %.lr.ph.i9.i, %nsvg__deletePaths.exit.i
  %i.oe = load ptr, ptr %i.f, align 8, !tbaa !30
  tail call void @nsvgDelete(ptr noundef %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39944
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.og) #30
  br label %nsvg__createParser.exit.thread.sink.split

nsvg__createParser.exit.thread.sink.split:        ; preds = %bb.b, %nsvg__deleteParser.exit
  %.0.ph = phi ptr [ %.val.i, %nsvg__deleteParser.exit ], [ null, %bb.b ]
  tail call void @free(ptr noundef nonnull %calloc33.i) #30
  br label %nsvg__createParser.exit.thread

nsvg__createParser.exit.thread:                   ; preds = %nsvg__createParser.exit.thread.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %nsvg__createParser.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @nsvg__startElement(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 19 uses
  %i.b = alloca [4 x ptr], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40033 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !80
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.12) #31
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 2)
  br label %nsvg__popAttr.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.13) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 3)
  br label %nsvg__popAttr.exit

bb.f:                                             ; preds = %bb.d
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #31
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @nsvg__parseGradientStop(ptr noundef nonnull %0, ptr noundef %2)
  br label %nsvg__popAttr.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.15) #31
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %nsvg__popAttr.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40034
  store i8 1, ptr %i.n, align 2, !tbaa !81
  br label %nsvg__popAttr.exit

sub_0:                                            ; preds = %bb.a
  %i.o = load i8, ptr %1, align 1
  %.not167 = icmp eq i8 %i.o, 103
  br i1 %.not167, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %.tail.thread

bb.j:                                             ; preds = %.tail
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55   ; 3 uses
  %i.u = icmp slt i32 %i.t, 127
  br i1 %i.u, label %bb.k, label %nsvg__pushAttr.exit

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !55
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [312 x i8], ptr %0, i64 %i.w
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds [312 x i8], ptr %0, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.x, ptr noundef nonnull align 8 dereferenceable(312) %i.z, i64 312, i1 false)
  br label %nsvg__pushAttr.exit

nsvg__pushAttr.exit:                              ; preds = %bb.j, %bb.k
  tail call fastcc void @nsvg__parseAttribs(ptr noundef nonnull %0, ptr noundef %2)
  br label %nsvg__popAttr.exit

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.17) #31
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.bq

bb.l:                                             ; preds = %.tail.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40032
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !82
  %.not69 = icmp eq i8 %i.ad, 0
  br i1 %.not69, label %bb.m, label %nsvg__popAttr.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 127
  br i1 %i.ag, label %bb.n, label %nsvg__pushAttr.exit70

bb.n:                                             ; preds = %bb.m
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !55
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ai
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.aj, ptr noundef nonnull align 8 dereferenceable(312) %i.al, i64 312, i1 false)
  br label %nsvg__pushAttr.exit70

nsvg__pushAttr.exit70:                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.am = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not228.i = icmp eq ptr %i.am, null
  br i1 %.not228.i, label %nsvg__parsePath.exit, label %sub_0.lr.ph.i

sub_0.lr.ph.i:                                    ; preds = %nsvg__pushAttr.exit70
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %sub_0.i

sub_0.i:                                          ; preds = %bb.p, %sub_0.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %sub_0.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.ap = phi ptr [ %i.am, %sub_0.lr.ph.i ], [ %i.ba, %bb.p ] ; 3 uses
  %.096229.i = phi ptr [ null, %sub_0.lr.ph.i ], [ %.197.i, %bb.p ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1
  %.not242.i = icmp eq i8 %i.ar, 100
  br i1 %.not242.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.o, label %.tail.thread.i

bb.o:                                             ; preds = %.tail.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  br label %bb.p

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i
  store ptr %i.ap, ptr %i.b, align 16, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  call fastcc void @nsvg__parseAttribs(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %.tail.thread.i, %bb.o
  %.197.i = phi ptr [ %i.aw, %bb.o ], [ %.096229.i, %.tail.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %._crit_edge.i, label %sub_0.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %bb.p
  %.not104.i = icmp eq ptr %.197.i, null
  br i1 %.not104.i, label %nsvg__parsePath.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 11 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !83
  %i.bc = load i8, ptr %.197.i, align 1, !tbaa !17
  %.not105231.i = icmp eq i8 %i.bc, 0
  br i1 %.not105231.i, label %nsvg__parsePath.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %nsvg__pathArcTo.exit.i, %.lr.ph.i
  %.082240.i = phi i8 [ 0, %.lr.ph.i ], [ %.284.i, %nsvg__pathArcTo.exit.i ] ; 15 uses
  %.085239.i = phi i32 [ 0, %.lr.ph.i ], [ %.287.i, %nsvg__pathArcTo.exit.i ] ; 14 uses
  %.088238.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.092237.i = phi i8 [ 0, %.lr.ph.i ], [ %.395.i, %nsvg__pathArcTo.exit.i ] ; 24 uses
  %.298236.i = phi ptr [ %.197.i, %.lr.ph.i ], [ %.4100206.i, %nsvg__pathArcTo.exit.i ] ; 5 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ri, %nsvg__pathArcTo.exit.i ] ; 27 uses
  %i.bm = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.rh, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.not212.i = icmp eq i8 %.092237.i, 97
  switch i8 %.092237.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i [
    i8 97, label %bb.s
    i8 65, label %bb.s
  ]

end_hunk_0
