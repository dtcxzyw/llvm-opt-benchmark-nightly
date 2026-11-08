Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cutNode?download=true
inline.NumInlined: 84
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Cut_CutProcessTwo:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %.not53 = icmp eq ptr %i.al, null
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call fastcc i32 @Cut_CutFilterOld(ptr noundef nonnull %0, ptr noundef %i.al, ptr noundef %.0)
  %.not54 = icmp eq i32 %i.am, 0
  br i1 %.not54, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.g
  %i.an = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !90
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %Cut_CutFilterGlobal.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %.0, align 8              ; 2 uses
  %.mask.i = and i32 %i.aq, -268435456
  %i.ar = icmp eq i32 %.mask.i, 268435456
  br i1 %i.ar, label %Cut_CutFilterGlobal.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.as = lshr i32 %i.aq, 28                      ; 2 uses
  %.not12.i = icmp eq i32 %i.as, 0
  br i1 %.not12.i, label %Cut_CutFilterGlobal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %.val.i = load ptr, ptr %i.aw, align 8, !tbaa !33
  %wide.trip.count.i = zext nneg i32 %i.as to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cut_CutFilterGlobal.exit, label %bb.q, !llvm.loop !89

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !34
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.p, label %Cut_CutFilterGlobal.exit.thread

Cut_CutFilterGlobal.exit:                         ; preds = %bb.p, %.preheader.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !53
  tail call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.0) #11
  br label %bb.t

Cut_CutFilterGlobal.exit.thread:                  ; preds = %bb.q, %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !92
  %.not57 = icmp eq i32 %i.bg, 0
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Cut_CutFilterGlobal.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !48
  tail call void @Cut_TruthCompute(ptr noundef nonnull %0, ptr noundef nonnull %.0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.bi, i32 noundef %i.bk) #11
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %Cut_CutFilterGlobal.exit.thread
  %i.bl = phi ptr [ %.pre60, %bb.r ], [ %i.an, %Cut_CutFilterGlobal.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bn = load i32, ptr %.0, align 8
  %i.bo = lshr i32 %i.bn, 28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29
  store ptr %.0, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bt = load i32, ptr %.0, align 8
  %i.bu = lshr i32 %i.bt, 28
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bv
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !19
  %i.bz = add nsw i32 %i.by, 1                    ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !38
  %i.cc = icmp eq i32 %i.bz, %i.cb
  %i.cd = zext i1 %i.cc to i32
  br label %bb.t

bb.t:                                             ; preds = %Cut_CutFilterGlobal.exit, %bb.m, %bb.k, %bb.h, %bb.d, %bb.s
  %.044 = phi i32 [ %i.cd, %bb.s ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %Cut_CutFilterGlobal.exit ]
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define noundef ptr @Cut_NodeUnionCuts(ptr noundef initializes((92, 96)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.Cut_ListStruct_t_, align 8  ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #11
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !24
  %.neg194 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %.neg = sdiv i64 %i.h, -1000
  %.neg195 = add i64 %.neg, %.neg194
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg195, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %scevgep.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %scevgep.i, i8 0, i64 96, i1 false), !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val183 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ag = load i32, ptr %.val183, align 4, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !40
  %i.al = getelementptr i8, ptr %1, i64 4         ; 5 uses
  %.val185213 = load i32, ptr %i.al, align 4, !tbaa !32
  %i.am = icmp sgt i32 %.val185213, 0
  br i1 %i.am, label %.lr.ph217, label %.critedge4

.lr.ph217:                                        ; preds = %Abc_Clock.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  br label %bb.c

.critedge.preheader:                              ; preds = %.loopexit201
  %.pre286 = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre286, i64 4
  %.val190222.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %i.ao = icmp sgt i32 %.val190222.pre, 0
  br i1 %i.ao, label %.lr.ph224, label %.critedge4

.lr.ph224:                                        ; preds = %.critedge.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  br label %bb.v

bb.c:                                             ; preds = %.lr.ph217, %.loopexit201
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %.loopexit201 ] ; 4 uses
  %.0144214 = phi ptr [ null, %.lr.ph217 ], [ %.1145, %.loopexit201 ]
  %.val182 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val182, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34 ; 2 uses
  %i.as = call ptr @Cut_NodeReadCutsNew(ptr noundef nonnull %0, i32 noundef %i.ar) #11 ; 6 uses
  call void @Cut_NodeWriteCutsNew(ptr noundef nonnull %0, i32 noundef %i.ar, ptr noundef null) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !36
  %i.av = icmp eq i64 %indvars.iv, 0
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %i.as, align 8
  %i.ax = lshr i32 %i.aw, 28
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !26
  %i.bb = load i32, ptr %i.as, align 8
  %i.bc = lshr i32 %i.bb, 28
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bd
  store ptr %i.at, ptr %i.be, align 8, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %i.as) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1145 = phi ptr [ %i.as, %bb.d ], [ %.0144214, %bb.e ] ; 3 uses
  %.not171 = icmp eq ptr %i.au, null
  br i1 %.not171, label %.loopexit201, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.u
  %.sink341 = phi ptr [ %i.bg, %bb.u ], [ %i.au, %bb.f ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink341, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  %i.bh = load i32, ptr %.sink341, align 8        ; 2 uses
  %i.bi = lshr i32 %i.bh, 28                      ; 2 uses
  %i.bj = icmp eq i32 %i.bi, %i.c
  br i1 %i.bj, label %bb.g, label %bb.q

bb.g:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40 ; 7 uses
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !41
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp slt i32 %i.bm, 16
  br i1 %i.bp, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.br, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.br, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bt = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.bu = phi ptr [ %i.bs, %bb.j ], [ %i.bt, %bb.k ]
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !42
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bv = icmp samesign ult i32 %i.bm, 1073741823
  %i.bw = shl nuw nsw i32 %i.bm, 1
  %spec.select.i = select i1 %i.bv, i32 %i.bw, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.bm, %spec.select.i
  br i1 %.not.i10.i, label %bb.m, label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.by, null
  %i.bz = zext nneg i32 %spec.select.i to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = call ptr @realloc(ptr noundef nonnull %i.by, i64 noundef %i.ca) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cc = call noalias ptr @malloc(i64 noundef %i.ca) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = phi ptr [ %i.cb, %bb.n ], [ %i.cc, %bb.o ]
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !42
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.p, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.bk, align 8, !tbaa !41
  %.pre285 = load i32, ptr %i.bl, align 4, !tbaa !40
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_PtrGrow.exit12.sink.split.i
  %i.ce = phi i32 [ %i.bm, %bb.g ], [ %i.bm, %bb.l ], [ %.pre285, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ch = add nsw i32 %i.ce, 1
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !40
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ci
  store ptr %.sink341, ptr %i.cj, align 8, !tbaa !43
  br label %.loopexit201

bb.q:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %0, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !50
  %.not173 = icmp eq i32 %i.cm, 0
  br i1 %.not173, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call fastcc i32 @Cut_CutFilterOne(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %.sink341)
  %.not174 = icmp eq i32 %i.cn, 0
  br i1 %.not174, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i32, ptr %.sink341, align 8        ; 2 uses
  %.pre290 = lshr i32 %.pre, 28
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q
  %.pre-phi = phi i32 [ %.pre290, %._crit_edge ], [ %i.bi, %bb.q ]
  %i.co = phi i32 [ %.pre, %._crit_edge ], [ %i.bh, %bb.q ] ; 2 uses
  %i.cp = load i32, ptr %.1145, align 8
  %i.cq = xor i32 %i.co, %i.cp
  %i.cr = shl i32 %i.cq, 1
  %i.cs = and i32 %i.cr, 8388608
  %i.ct = and i32 %i.co, -8388609
  %i.cu = or disjoint i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %.sink341, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink341, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.cv, align 8, !tbaa !36
  %i.cx = zext nneg i32 %.pre-phi to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29
  store ptr %.sink341, ptr %i.cz, align 8, !tbaa !26
  %i.da = load i32, ptr %.sink341, align 8
  %i.db = lshr i32 %i.da, 28
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  store ptr %i.cv, ptr %i.dd, align 8, !tbaa !29
  %i.de = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  store i32 %i.df, ptr %i.ah, align 4, !tbaa !19
  %i.dg = load ptr, ptr %0, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.dj = icmp eq i32 %i.df, %i.di
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  %.not175 = icmp eq ptr %i.cw, null
  br i1 %.not175, label %.preheader, label %.lr.ph243

.preheader:                                       ; preds = %.lr.ph243, %bb.t
  %.0244 = add nuw nsw i32 %i.dk, 1               ; 2 uses
  %.val184245 = load i32, ptr %i.al, align 4, !tbaa !32
  %i.dl = icmp slt i32 %.0244, %.val184245
  br i1 %i.dl, label %.lr.ph247.preheader, label %.critedge2.preheader

.lr.ph247.preheader:                              ; preds = %.preheader
  %5 = zext i32 %.0244 to i64
  br label %.lr.ph247

.lr.ph243:                                        ; preds = %bb.t, %.lr.ph243
  %.sink342 = phi ptr [ %i.dn, %.lr.ph243 ], [ %i.cw, %bb.t ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink342, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink342) #11
  %.not180 = icmp eq ptr %i.dn, null
  br i1 %.not180, label %.preheader, label %.lr.ph243, !llvm.loop !93

.critedge2.preheader:                             ; preds = %.lr.ph247, %.preheader
  %i.do = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %.val191254 = load i32, ptr %i.dp, align 4, !tbaa !40
  %i.dq = icmp sgt i32 %.val191254, 0
  br i1 %i.dq, label %.lr.ph256, label %.critedge4

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %indvars.iv269.a = phi i64 [ %5, %.lr.ph247.preheader ], [ %indvars.iv.next270.a, %.lr.ph247 ] ; 2 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv269.a
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !34
  call void @Cut_NodeFreeCuts(ptr noundef nonnull %0, i32 noundef %i.ds) #11
  %indvars.iv.next270.a = add nuw nsw i64 %indvars.iv269.a, 1 ; 2 uses
  %.val184 = load i32, ptr %i.al, align 4, !tbaa !32
  %i.dt = trunc nuw i64 %indvars.iv.next270.a to i32
  %i.du = icmp sgt i32 %.val184, %i.dt
  br i1 %i.du, label %.lr.ph247, label %.critedge2.preheader, !llvm.loop !94

.lr.ph256:                                        ; preds = %.critedge2.preheader, %.critedge2
  %i.dv = phi ptr [ %i.eb, %.critedge2 ], [ %i.do, %.critedge2.preheader ] ; 2 uses
  %indvars.iv272.a = phi i64 [ %indvars.iv.next273.a, %.critedge2 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %.val188 = load ptr, ptr %i.dw, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val188, i64 %indvars.iv272.a
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !43 ; 2 uses
  %.not177 = icmp eq ptr %i.dy, null
  br i1 %.not177, label %.critedge2, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph256, %.lr.ph252
  %.sink343 = phi ptr [ %i.ea, %.lr.ph252 ], [ %i.dy, %.lr.ph256 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink343, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink343) #11
  %.not179 = icmp eq ptr %i.ea, null
  br i1 %.not179, label %.critedge2.loopexit, label %.lr.ph252, !llvm.loop !95

.critedge2.loopexit:                              ; preds = %.lr.ph252
  %.pre284 = load ptr, ptr %i.ai, align 8, !tbaa !54
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph256, %.critedge2.loopexit
  %i.eb = phi ptr [ %.pre284, %.critedge2.loopexit ], [ %i.dv, %.lr.ph256 ] ; 2 uses
  %indvars.iv.next273.a = add nuw nsw i64 %indvars.iv272.a, 1 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val191 = load i32, ptr %i.ec, align 4, !tbaa !40
  %i.ed = sext i32 %.val191 to i64
  %i.ee = icmp slt i64 %indvars.iv.next273.a, %i.ed
  br i1 %i.ee, label %.lr.ph256, label %.critedge4, !llvm.loop !96

bb.u:                                             ; preds = %bb.s, %bb.r
  %.not181 = icmp eq ptr %i.bg, null
  br i1 %.not181, label %.loopexit201, label %.lr.ph, !llvm.loop !97

.loopexit201:                                     ; preds = %bb.u, %bb.f, %Vec_PtrPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val185 = load i32, ptr %i.al, align 4, !tbaa !32
  %i.ef = sext i32 %.val185 to i64
  %i.eg = icmp slt i64 %indvars.iv.next, %i.ef
  br i1 %i.eg, label %bb.c, label %.critedge.preheader, !llvm.loop !98

bb.v:                                             ; preds = %.lr.ph224, %.critedge
  %i.eh = phi ptr [ %.pre286, %.lr.ph224 ], [ %i.ge, %.critedge ] ; 2 uses
  %indvars.iv275.a = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next276, %.critedge ] ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val187 = load ptr, ptr %i.ei, align 8, !tbaa !42
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val187, i64 %indvars.iv275.a
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ek, null
  br i1 %.not, label %.critedge, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.v, %bb.z
  %.sink344 = phi ptr [ %i.em, %bb.z ], [ %i.ek, %bb.v ] ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sink344, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !36 ; 2 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !50
  %.not162 = icmp eq i32 %i.ep, 0
  br i1 %.not162, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph221
  %i.eq = call fastcc i32 @Cut_CutFilterOne(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %.sink344)
  %.not163 = icmp eq i32 %i.eq, 0
  br i1 %.not163, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %.lr.ph221
  %i.er = load i32, ptr %.1145, align 8
  %i.es = load i32, ptr %.sink344, align 8        ; 3 uses
  %i.et = xor i32 %i.es, %i.er
  %i.eu = shl i32 %i.et, 1
  %i.ev = and i32 %i.eu, 8388608
  %i.ew = and i32 %i.es, -8388609
  %i.ex = or disjoint i32 %i.ev, %i.ew
  store i32 %i.ex, ptr %.sink344, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink344, i64 16 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.ey, align 8, !tbaa !36
  %i.fa = lshr i32 %i.es, 28
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !29
  store ptr %.sink344, ptr %i.fd, align 8, !tbaa !26
  %i.fe = load i32, ptr %.sink344, align 8
  %i.ff = lshr i32 %i.fe, 28
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fg
  store ptr %i.ey, ptr %i.fh, align 8, !tbaa !29
  %i.fi = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.fj = add nsw i32 %i.fi, 1                    ; 2 uses
  store i32 %i.fj, ptr %i.ah, align 4, !tbaa !19
  %i.fk = load ptr, ptr %0, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !38
  %i.fn = icmp eq i32 %i.fj, %i.fm
  br i1 %i.fn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fo = trunc nuw nsw i64 %indvars.iv275.a to i32
  %.not164 = icmp eq ptr %i.ez, null
  br i1 %.not164, label %.preheader198, label %.lr.ph229

.preheader198:                                    ; preds = %.lr.ph229, %bb.y
  %.2235 = add nuw nsw i32 %i.fo, 1               ; 2 uses
  %i.fp = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 4
  %.val189236 = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fr = icmp slt i32 %.2235, %.val189236
  br i1 %i.fr, label %.lr.ph238.preheader, label %.critedge4

.lr.ph238.preheader:                              ; preds = %.preheader198
  %6 = zext i32 %.2235 to i64
  br label %.lr.ph238

.lr.ph229:                                        ; preds = %bb.y, %.lr.ph229
  %.sink345 = phi ptr [ %i.ft, %.lr.ph229 ], [ %i.ez, %bb.y ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sink345, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink345) #11
  %.not169 = icmp eq ptr %i.ft, null
  br i1 %.not169, label %.preheader198, label %.lr.ph229, !llvm.loop !99

.loopexit.loopexit:                               ; preds = %.lr.ph234
  %.pre288 = load ptr, ptr %i.ai, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph238, %.loopexit.loopexit
  %i.fu = phi ptr [ %.pre288, %.loopexit.loopexit ], [ %i.fy, %.lr.ph238 ] ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  %.val189 = load i32, ptr %i.fv, align 4, !tbaa !40
  %i.fw = trunc nuw i64 %indvars.iv.next282 to i32
  %i.fx = icmp sgt i32 %.val189, %i.fw
  br i1 %i.fx, label %.lr.ph238, label %.critedge4, !llvm.loop !100

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.loopexit
  %i.fy = phi ptr [ %i.fp, %.lr.ph238.preheader ], [ %i.fu, %.loopexit ] ; 2 uses
  %indvars.iv281 = phi i64 [ %6, %.lr.ph238.preheader ], [ %indvars.iv.next282, %.loopexit ] ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  %.val186 = load ptr, ptr %i.fz, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.val186, i64 %indvars.iv281
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43 ; 2 uses
  %.not166 = icmp eq ptr %i.gb, null
  br i1 %.not166, label %.loopexit, label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph238, %.lr.ph234
  %.sink346 = phi ptr [ %i.gd, %.lr.ph234 ], [ %i.gb, %.lr.ph238 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink346, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink346) #11
  %.not168 = icmp eq ptr %i.gd, null
  br i1 %.not168, label %.loopexit.loopexit, label %.lr.ph234, !llvm.loop !101

bb.z:                                             ; preds = %bb.x, %bb.w
  %.not170 = icmp eq ptr %i.em, null
  br i1 %.not170, label %.critedge.loopexit, label %.lr.ph221, !llvm.loop !102

.critedge.loopexit:                               ; preds = %bb.z
  %.pre289 = load ptr, ptr %i.ai, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %.critedge.loopexit
  %i.ge = phi ptr [ %.pre289, %.critedge.loopexit ], [ %i.eh, %bb.v ] ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275.a, 1 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %.val190 = load i32, ptr %i.gf, align 4, !tbaa !40
  %i.gg = sext i32 %.val190 to i64
  %i.gh = icmp slt i64 %indvars.iv.next276, %i.gg
  br i1 %i.gh, label %bb.v, label %.critedge4, !llvm.loop !103

.critedge4:                                       ; preds = %.critedge2, %.critedge, %.loopexit, %Abc_Clock.exit, %.critedge.preheader, %.preheader198, %.critedge2.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.gi = load ptr, ptr %scevgep.i, align 8, !tbaa !26 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge4
  store ptr %i.gi, ptr %i.a, align 8, !tbaa !26
  %i.gk = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge4
  %.1.i = phi ptr [ %i.a, %.critedge4 ], [ %i.gk, %bb.aa ] ; 2 uses
  %i.gl = load ptr, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.gl, ptr %.1.i, align 8, !tbaa !26
  %i.gn = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1.1.i = phi ptr [ %.1.i, %bb.ab ], [ %i.gn, %bb.ac ] ; 2 uses
  %i.go = load ptr, ptr %i.l, align 8, !tbaa !26  ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.go, ptr %.1.1.i, align 8, !tbaa !26
  %i.gq = load ptr, ptr %i.m, align 8, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1.2.i = phi ptr [ %.1.1.i, %bb.ad ], [ %i.gq, %bb.ae ] ; 2 uses
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gr, ptr %.1.2.i, align 8, !tbaa !26
  %i.gt = load ptr, ptr %i.o, align 8, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.3.i = phi ptr [ %.1.2.i, %bb.af ], [ %i.gt, %bb.ag ] ; 2 uses
  %i.gu = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.gu, ptr %.1.3.i, align 8, !tbaa !26
  %i.gw = load ptr, ptr %i.q, align 8, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.4.i = phi ptr [ %.1.3.i, %bb.ah ], [ %i.gw, %bb.ai ] ; 2 uses
  %i.gx = load ptr, ptr %i.r, align 8, !tbaa !26  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.gx, ptr %.1.4.i, align 8, !tbaa !26
  %i.gz = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.5.i = phi ptr [ %.1.4.i, %bb.aj ], [ %i.gz, %bb.ak ] ; 2 uses
  %i.ha = load ptr, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.ha, ptr %.1.5.i, align 8, !tbaa !26
  %i.hc = load ptr, ptr %i.u, align 8, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1.6.i = phi ptr [ %.1.5.i, %bb.al ], [ %i.hc, %bb.am ] ; 2 uses
  %i.hd = load ptr, ptr %i.v, align 8, !tbaa !26  ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %i.hd, ptr %.1.6.i, align 8, !tbaa !26
  %i.hf = load ptr, ptr %i.w, align 8, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1.7.i = phi ptr [ %.1.6.i, %bb.an ], [ %i.hf, %bb.ao ] ; 2 uses
  %i.hg = load ptr, ptr %i.x, align 8, !tbaa !26  ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.hg, ptr %.1.7.i, align 8, !tbaa !26
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.8.i = phi ptr [ %.1.7.i, %bb.ap ], [ %i.hi, %bb.aq ] ; 2 uses
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.hj, ptr %.1.8.i, align 8, !tbaa !26
  %i.hl = load ptr, ptr %i.aa, align 8, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1.9.i = phi ptr [ %.1.8.i, %bb.ar ], [ %i.hl, %bb.as ] ; 2 uses
  %i.hm = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.hm, ptr %.1.9.i, align 8, !tbaa !26
  %i.ho = load ptr, ptr %i.ac, align 8, !tbaa !29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.10.i = phi ptr [ %.1.9.i, %bb.at ], [ %i.ho, %bb.au ] ; 2 uses
  %i.hp = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %Cut_ListFinish.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.hp, ptr %.1.10.i, align 8, !tbaa !26
  %i.hr = load ptr, ptr %i.ae, align 8, !tbaa !29
  br label %Cut_ListFinish.exit

Cut_ListFinish.exit:                              ; preds = %bb.av, %bb.aw
  %.1.11.i = phi ptr [ %.1.10.i, %bb.av ], [ %i.hr, %bb.aw ]
  store ptr null, ptr %.1.11.i, align 8, !tbaa !26
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @Cut_NodeWriteCutsNew(ptr noundef nonnull %0, i32 noundef %i.ag, ptr noundef %.0..0..0..0..0..0..i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.hs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #11
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %Abc_Clock.exit193, label %bb.ax

bb.ax:                                            ; preds = %Cut_ListFinish.exit
  %i.hu = load i64, ptr %2, align 8, !tbaa !24
  %i.hv = mul nsw i64 %i.hu, 1000000
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !25
  %i.hy = sdiv i64 %i.hx, 1000
  %i.hz = add nsw i64 %i.hy, %i.hv
  br label %Abc_Clock.exit193

Abc_Clock.exit193:                                ; preds = %Cut_ListFinish.exit, %bb.ax
  %.0.i192 = phi i64 [ %i.hz, %bb.ax ], [ -1, %Cut_ListFinish.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ia = add i64 %.0.i192, %.0.i.neg
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !55
  %i.id = add nsw i64 %i.ia, %i.ic
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !55
  %i.ie = load i32, ptr %i.al, align 4, !tbaa !32
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !18
  %reass.sub = sub i32 %i.ig, %i.ie
  %i.ih = add i32 %reass.sub, 1
  store i32 %i.ih, ptr %i.if, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret ptr %.0..0..0..0..0..0..i
}

declare void @Cut_CutRecycle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Cut_CutFilterOne(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 8                ; 5 uses
  %i.b = lshr i32 %i.a, 28                        ; 3 uses
  %.not103 = icmp ult i32 %i.a, 536870912
  br i1 %.not103, label %.preheader, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  %i.e = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.f = lshr i32 %i.a, 24
  %i.g = and i32 %i.f, 15
  %.not62.not114 = icmp samesign ult i32 %i.b, %i.g
  br i1 %.not62.not114, label %.lr.ph116, label %.loopexit93

.lr.ph116:                                        ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@Cut_CutFilterOne:bb.a
  %.not25.i73 = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %.158108, i64 24
  br i1 %.not25.i73, label %.loopexit, label %.preheader.us.preheader.i74

.preheader.us.preheader.i74:                      ; preds = %.preheader.lr.ph.i72
  %wide.trip.count30.i75 = zext nneg i32 %i.at to i64
  %wide.trip.count.i76 = zext nneg i32 %i.av to i64
  br label %.preheader.us.i77

.preheader.us.i77:                                ; preds = %._crit_edge.us.i83, %.preheader.us.preheader.i74
  %indvars.iv27.i78 = phi i64 [ 0, %.preheader.us.preheader.i74 ], [ %indvars.iv.next28.i84, %._crit_edge.us.i83 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv27.i78
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.us.i77
  %indvars.iv.i79 = phi i64 [ 0, %.preheader.us.i77 ], [ %indvars.iv.next.i80, %bb.l ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i79
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %._crit_edge.us.i83, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i76
  br i1 %exitcond.not.i81, label %.loopexit, label %bb.k, !llvm.loop !0

._crit_edge.us.i83:                               ; preds = %bb.k
  %indvars.iv.next28.i84 = add nuw nsw i64 %indvars.iv27.i78, 1 ; 2 uses
  %exitcond31.not.i85 = icmp eq i64 %indvars.iv.next28.i84, %wide.trip.count30.i75
  br i1 %exitcond31.not.i85, label %Cut_CutCheckDominance.exit86, label %.preheader.us.i77, !llvm.loop !1

Cut_CutCheckDominance.exit86:                     ; preds = %._crit_edge.us.i83, %bb.j
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !53
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.j, align 8, !tbaa !53
  %i.be = load i32, ptr %i.k, align 4, !tbaa !19
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.k, align 4, !tbaa !19
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.bh = icmp eq ptr %i.bg, %.158108
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Cut_CutCheckDominance.exit86
  %i.bi = getelementptr inbounds nuw i8, ptr %.158108, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  store ptr %i.bj, ptr %i.ak, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %Cut_CutCheckDominance.exit86
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.158108, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.054110, ptr %i.am, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !36
  store ptr %i.bn, ptr %.054110, align 8, !tbaa !26
  tail call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.158108) #11
  br label %bb.q

.loopexit:                                        ; preds = %bb.l, %.preheader.lr.ph.i72
  %i.bo = getelementptr inbounds nuw i8, ptr %.158108, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.i
  %.155 = phi ptr [ %i.ar, %bb.i ], [ %.054110, %bb.p ], [ %i.bo, %.loopexit ]
  %.not67 = icmp eq ptr %.056109, null
  br i1 %.not67, label %.loopexit92.loopexit, label %bb.h, !llvm.loop !107

.loopexit93:                                      ; preds = %.loopexit92, %.preheader, %Cut_CutCheckDominance.exit
  %.059 = phi i32 [ 1, %Cut_CutCheckDominance.exit ], [ 0, %.preheader ], [ 0, %.loopexit92 ]
  ret i32 %.059
}

declare void @Cut_NodeFreeCuts(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Cut_NodeUnionCutsSeq(ptr noundef initializes((92, 96)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.Cut_ListStruct_t_, align 8  ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #11
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %5, align 8, !tbaa !24
  %.neg256 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %.neg = sdiv i64 %i.h, -1000
  %.neg257 = add i64 %.neg, %.neg256
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg257, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %scevgep.i, i8 0, i64 96, i1 false), !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val241 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ag = load i32, ptr %.val241, align 4, !tbaa !34 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !19
  %i.ai = call ptr @Cut_NodeReadCutsOld(ptr noundef nonnull %0, i32 noundef %i.ag) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !51
  %i.ak = icmp sgt i32 %2, -1                     ; 3 uses
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.al = call ptr @Cut_NodeReadCutsNew(ptr noundef nonnull %0, i32 noundef %i.ag) #11
  br label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit, %bb.c
  %i.am = phi ptr [ %i.al, %bb.c ], [ null, %Abc_Clock.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !52
  %i.ao = call ptr @Cut_NodeReadCutsOld(ptr noundef nonnull %0, i32 noundef %i.ag) #11 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = call ptr @Cut_NodeReadCutsNew(ptr noundef nonnull %0, i32 noundef %i.ag) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0184 = phi ptr [ %i.aq, %bb.e ], [ %i.ao, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !40
  %i.au = getelementptr i8, ptr %1, i64 4         ; 4 uses
  %.val243272 = load i32, ptr %i.au, align 4, !tbaa !32
  %i.av = icmp sgt i32 %.val243272, 0
  br i1 %i.av, label %.lr.ph275, label %.critedge5

.lr.ph275:                                        ; preds = %bb.f
  %.not223 = icmp eq i32 %3, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  br label %bb.g

.critedge.preheader:                              ; preds = %.loopexit261
  %.pre342 = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre342, i64 4
  %.val248280.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %i.ax = icmp sgt i32 %.val248280.pre, 0
  br i1 %i.ax, label %.lr.ph282, label %.critedge5

.lr.ph282:                                        ; preds = %.critedge.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph275, %.loopexit261
  %indvars.iv = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next, %.loopexit261 ] ; 4 uses
  %i.az = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %or.cond = and i1 %i.ak, %i.az
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = call ptr @Cut_NodeReadCutsTemp(ptr noundef nonnull %0, i32 noundef %2) #11
  call void @Cut_NodeWriteCutsTemp(ptr noundef nonnull %0, i32 noundef %2, ptr noundef null) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.val240 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val240, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34 ; 2 uses
  %i.bd = call ptr @Cut_NodeReadCutsNew(ptr noundef nonnull %0, i32 noundef %i.bc) #11
  call void @Cut_NodeWriteCutsNew(ptr noundef nonnull %0, i32 noundef %i.bc, ptr noundef null) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0195 = phi ptr [ %i.ba, %bb.h ], [ %i.bd, %bb.i ] ; 7 uses
  %i.be = icmp eq ptr %.0195, null
  br i1 %i.be, label %.loopexit261, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not223, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.0195, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !36
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %.0195, align 8
  %i.bi = lshr i32 %i.bh, 28
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  store ptr %.0195, ptr %i.bl, align 8, !tbaa !26
  %i.bm = load i32, ptr %.0195, align 8
  %i.bn = lshr i32 %i.bm, 28
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bo
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.0195) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.not224 = icmp eq ptr %i.bg, null
  br i1 %.not224, label %.loopexit261, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.o
  %.sink402.ph = phi ptr [ %.0195, %bb.k ], [ %i.bg, %bb.o ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.sink402 = phi ptr [ %i.br, %bb.ai ], [ %.sink402.ph, %.lr.ph.preheader ] ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink402, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36 ; 2 uses
  %i.bs = load i32, ptr %.sink402, align 8
  %i.bt = lshr i32 %i.bs, 28
  %i.bu = icmp eq i32 %i.bt, %i.c
  br i1 %i.bu, label %bb.p, label %bb.z

bb.p:                                             ; preds = %.lr.ph
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40 ; 7 uses
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !41
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.q, label %Vec_PtrPush.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp slt i32 %i.bx, 16
  br i1 %i.ca, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ce = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.t, %bb.s
  %i.cf = phi ptr [ %i.cd, %bb.s ], [ %i.ce, %bb.t ]
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !42
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.u:                                             ; preds = %bb.q
  %i.cg = icmp samesign ult i32 %i.bx, 1073741823
  %i.ch = shl nuw nsw i32 %i.bx, 1
  %spec.select.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.bx, %spec.select.i
  br i1 %.not.i10.i, label %bb.v, label %Vec_PtrPush.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !42 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.cj, null
  %i.ck = zext nneg i32 %spec.select.i to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = call ptr @realloc(ptr noundef nonnull %i.cj, i64 noundef %i.cl) #12
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cn = call noalias ptr @malloc(i64 noundef %i.cl) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.co = phi ptr [ %i.cm, %bb.w ], [ %i.cn, %bb.x ]
  store ptr %i.co, ptr %i.ci, align 8, !tbaa !42
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.y, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.y ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.bv, align 8, !tbaa !41
  %.pre341 = load i32, ptr %i.bw, align 4, !tbaa !40
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.p, %bb.u, %Vec_PtrGrow.exit12.sink.split.i
  %i.cp = phi i32 [ %i.bx, %bb.p ], [ %i.bx, %bb.u ], [ %.pre341, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cs = add nsw i32 %i.cp, 1
  store i32 %i.cs, ptr %i.bw, align 4, !tbaa !40
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %.sink402, ptr %i.cu, align 8, !tbaa !43
  br label %.loopexit261

bb.z:                                             ; preds = %.lr.ph
  %i.cv = load ptr, ptr %0, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !50
  %.not226 = icmp eq i32 %i.cx, 0
  br i1 %.not226, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = call fastcc i32 @Cut_CutFilterOne(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %.sink402)
  %.not227 = icmp eq i32 %i.cy, 0
  br i1 %.not227, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %0, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  %.not228 = icmp eq i32 %i.db, 0
  br i1 %.not228, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %.not229 = icmp eq ptr %i.dc, null
  br i1 %.not229, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = call fastcc i32 @Cut_CutFilterOld(ptr noundef nonnull %0, ptr noundef %i.dc, ptr noundef %.sink402)
  %.not230 = icmp eq i32 %i.dd, 0
  br i1 %.not230, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.de = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %.not231 = icmp eq ptr %i.de, null
  br i1 %.not231, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = call fastcc i32 @Cut_CutFilterOld(ptr noundef nonnull %0, ptr noundef %i.de, ptr noundef %.sink402)
  %.not232 = icmp eq i32 %i.df, 0
  br i1 %.not232, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ae, %bb.z
  %i.dg = load i32, ptr %.0184, align 8
  %i.dh = load i32, ptr %.sink402, align 8        ; 3 uses
  %i.di = xor i32 %i.dh, %i.dg
  %i.dj = shl i32 %i.di, 1
  %i.dk = and i32 %i.dj, 8388608
  %i.dl = and i32 %i.dh, -8388609
  %i.dm = or disjoint i32 %i.dk, %i.dl
  store i32 %i.dm, ptr %.sink402, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink402, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !36
  %i.dp = lshr i32 %i.dh, 28
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  store ptr %.sink402, ptr %i.ds, align 8, !tbaa !26
  %i.dt = load i32, ptr %.sink402, align 8
  %i.du = lshr i32 %i.dt, 28
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dv
  store ptr %i.dn, ptr %i.dw, align 8, !tbaa !29
  %i.dx = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.dy = add nsw i32 %i.dx, 1                    ; 2 uses
  store i32 %i.dy, ptr %i.ah, align 4, !tbaa !19
  %i.dz = load ptr, ptr %0, align 8, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38
  %i.ec = icmp eq i32 %i.dy, %i.eb
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  %.not233 = icmp eq ptr %i.do, null
  br i1 %.not233, label %.preheader, label %.lr.ph301

.preheader:                                       ; preds = %.lr.ph301, %bb.ah
  %.0302 = add nuw nsw i32 %i.ed, 1               ; 2 uses
  %.val242303 = load i32, ptr %i.au, align 4, !tbaa !32
  %i.ee = icmp slt i32 %.0302, %.val242303
  br i1 %i.ee, label %.lr.ph305.preheader, label %.critedge3.preheader

.lr.ph305.preheader:                              ; preds = %.preheader
  %7 = zext i32 %.0302 to i64
  br label %.lr.ph305

.lr.ph301:                                        ; preds = %bb.ah, %.lr.ph301
  %.sink403 = phi ptr [ %i.eg, %.lr.ph301 ], [ %i.do, %bb.ah ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink403, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink403) #11
  %.not238 = icmp eq ptr %i.eg, null
  br i1 %.not238, label %.preheader, label %.lr.ph301, !llvm.loop !108

.critedge3.preheader:                             ; preds = %.lr.ph305, %.preheader
  %i.eh = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val249312 = load i32, ptr %i.ei, align 4, !tbaa !40
  %i.ej = icmp sgt i32 %.val249312, 0
  br i1 %i.ej, label %.lr.ph314, label %.critedge5

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %.lr.ph305
  %indvars.iv326.a = phi i64 [ %7, %.lr.ph305.preheader ], [ %indvars.iv.next327.a, %.lr.ph305 ] ; 2 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv326.a
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !34
  call void @Cut_NodeFreeCuts(ptr noundef nonnull %0, i32 noundef %i.el) #11
  %indvars.iv.next327.a = add nuw nsw i64 %indvars.iv326.a, 1 ; 2 uses
  %.val242 = load i32, ptr %i.au, align 4, !tbaa !32
  %i.em = trunc nuw i64 %indvars.iv.next327.a to i32
  %i.en = icmp sgt i32 %.val242, %i.em
  br i1 %i.en, label %.lr.ph305, label %.critedge3.preheader, !llvm.loop !109

.lr.ph314:                                        ; preds = %.critedge3.preheader, %.critedge3
  %i.eo = phi ptr [ %i.eu, %.critedge3 ], [ %i.eh, %.critedge3.preheader ] ; 2 uses
  %indvars.iv329.a = phi i64 [ %indvars.iv.next330.a, %.critedge3 ], [ 0, %.critedge3.preheader ] ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %.val246 = load ptr, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.val246, i64 %indvars.iv329.a
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43 ; 2 uses
  %.not235 = icmp eq ptr %i.er, null
  br i1 %.not235, label %.critedge3, label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph314, %.lr.ph310
  %.sink404 = phi ptr [ %i.et, %.lr.ph310 ], [ %i.er, %.lr.ph314 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sink404, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink404) #11
  %.not237 = icmp eq ptr %i.et, null
  br i1 %.not237, label %.critedge3.loopexit, label %.lr.ph310, !llvm.loop !110

.critedge3.loopexit:                              ; preds = %.lr.ph310
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !54
  br label %.critedge3

.critedge3:                                       ; preds = %.lr.ph314, %.critedge3.loopexit
  %i.eu = phi ptr [ %.pre, %.critedge3.loopexit ], [ %i.eo, %.lr.ph314 ] ; 2 uses
  %indvars.iv.next330.a = add nuw nsw i64 %indvars.iv329.a, 1 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %.val249 = load i32, ptr %i.ev, align 4, !tbaa !40
  %i.ew = sext i32 %.val249 to i64
  %i.ex = icmp slt i64 %indvars.iv.next330.a, %i.ew
  br i1 %i.ex, label %.lr.ph314, label %.critedge5, !llvm.loop !111

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.aa
  %.not239 = icmp eq ptr %i.br, null
  br i1 %.not239, label %.loopexit261, label %.lr.ph, !llvm.loop !112

.loopexit261:                                     ; preds = %bb.ai, %bb.o, %Vec_PtrPush.exit, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val243 = load i32, ptr %i.au, align 4, !tbaa !32
  %i.ey = sext i32 %.val243 to i64
  %i.ez = icmp slt i64 %indvars.iv.next, %i.ey
  br i1 %i.ez, label %bb.g, label %.critedge.preheader, !llvm.loop !113

bb.aj:                                            ; preds = %.lr.ph282, %.critedge
  %i.fa = phi ptr [ %.pre342, %.lr.ph282 ], [ %i.he, %.critedge ] ; 2 uses
  %indvars.iv332.a = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next333, %.critedge ] ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %.val245 = load ptr, ptr %i.fb, align 8, !tbaa !42
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val245, i64 %indvars.iv332.a
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.fd, null
  br i1 %.not, label %.critedge, label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.aj, %bb.as
  %.sink405 = phi ptr [ %i.ff, %bb.as ], [ %i.fd, %bb.aj ] ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink405, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !36 ; 2 uses
  %i.fg = load ptr, ptr %0, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !50
  %.not209 = icmp eq i32 %i.fi, 0
  br i1 %.not209, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph279
  %i.fj = call fastcc i32 @Cut_CutFilterOne(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %.sink405)
  %.not210 = icmp eq i32 %i.fj, 0
  br i1 %.not210, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr %0, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !44
  %.not211 = icmp eq i32 %i.fm, 0
  br i1 %.not211, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %.not212 = icmp eq ptr %i.fn, null
  br i1 %.not212, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = call fastcc i32 @Cut_CutFilterOld(ptr noundef nonnull %0, ptr noundef %i.fn, ptr noundef %.sink405)
  %.not213 = icmp eq i32 %i.fo, 0
  br i1 %.not213, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fp = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %.not214 = icmp eq ptr %i.fp, null
  br i1 %.not214, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = call fastcc i32 @Cut_CutFilterOld(ptr noundef nonnull %0, ptr noundef %i.fp, ptr noundef %.sink405)
  %.not215 = icmp eq i32 %i.fq, 0
  br i1 %.not215, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.al, %bb.ap, %bb.ao, %.lr.ph279
  %i.fr = load i32, ptr %.0184, align 8
  %i.fs = load i32, ptr %.sink405, align 8        ; 3 uses
  %i.ft = xor i32 %i.fs, %i.fr
  %i.fu = shl i32 %i.ft, 1
  %i.fv = and i32 %i.fu, 8388608
  %i.fw = and i32 %i.fs, -8388609
  %i.fx = or disjoint i32 %i.fv, %i.fw
  store i32 %i.fx, ptr %.sink405, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sink405, i64 16 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !36 ; 2 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !36
  %i.ga = lshr i32 %i.fs, 28
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !29
  store ptr %.sink405, ptr %i.gd, align 8, !tbaa !26
  %i.ge = load i32, ptr %.sink405, align 8
  %i.gf = lshr i32 %i.ge, 28
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.gg
  store ptr %i.fy, ptr %i.gh, align 8, !tbaa !29
  %i.gi = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.gj = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gj, ptr %i.ah, align 4, !tbaa !19
  %i.gk = load ptr, ptr %0, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !38
  %i.gn = icmp eq i32 %i.gj, %i.gm
  br i1 %i.gn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.go = trunc nuw nsw i64 %indvars.iv332.a to i32
  %.not216 = icmp eq ptr %i.fz, null
  br i1 %.not216, label %.preheader258, label %.lr.ph287

.preheader258:                                    ; preds = %.lr.ph287, %bb.ar
  %.2293 = add nuw nsw i32 %i.go, 1               ; 2 uses
  %i.gp = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %.val247294 = load i32, ptr %i.gq, align 4, !tbaa !40
  %i.gr = icmp slt i32 %.2293, %.val247294
  br i1 %i.gr, label %.lr.ph296.preheader, label %.critedge5

.lr.ph296.preheader:                              ; preds = %.preheader258
  %8 = zext i32 %.2293 to i64
  br label %.lr.ph296

.lr.ph287:                                        ; preds = %bb.ar, %.lr.ph287
  %.sink406 = phi ptr [ %i.gt, %.lr.ph287 ], [ %i.fz, %bb.ar ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sink406, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink406) #11
  %.not221 = icmp eq ptr %i.gt, null
  br i1 %.not221, label %.preheader258, label %.lr.ph287, !llvm.loop !114

.loopexit.loopexit:                               ; preds = %.lr.ph292
  %.pre344 = load ptr, ptr %i.ar, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph296, %.loopexit.loopexit
  %i.gu = phi ptr [ %.pre344, %.loopexit.loopexit ], [ %i.gy, %.lr.ph296 ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %.val247 = load i32, ptr %i.gv, align 4, !tbaa !40
  %i.gw = trunc nuw i64 %indvars.iv.next339 to i32
  %i.gx = icmp sgt i32 %.val247, %i.gw
  br i1 %i.gx, label %.lr.ph296, label %.critedge5, !llvm.loop !115

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %.loopexit
  %i.gy = phi ptr [ %i.gp, %.lr.ph296.preheader ], [ %i.gu, %.loopexit ] ; 2 uses
  %indvars.iv338 = phi i64 [ %8, %.lr.ph296.preheader ], [ %indvars.iv.next339, %.loopexit ] ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %.val244 = load ptr, ptr %i.gz, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.val244, i64 %indvars.iv338
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !43 ; 2 uses
  %.not218 = icmp eq ptr %i.hb, null
  br i1 %.not218, label %.loopexit, label %.lr.ph292

.lr.ph292:                                        ; preds = %.lr.ph296, %.lr.ph292
  %.sink407 = phi ptr [ %i.hd, %.lr.ph292 ], [ %i.hb, %.lr.ph296 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink407, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36 ; 2 uses
  call void @Cut_CutRecycle(ptr noundef nonnull %0, ptr noundef nonnull %.sink407) #11
  %.not220 = icmp eq ptr %i.hd, null
  br i1 %.not220, label %.loopexit.loopexit, label %.lr.ph292, !llvm.loop !116

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %bb.ak
  %.not222 = icmp eq ptr %i.ff, null
  br i1 %.not222, label %.critedge.loopexit, label %.lr.ph279, !llvm.loop !117

.critedge.loopexit:                               ; preds = %bb.as
  %.pre345 = load ptr, ptr %i.ar, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %.critedge.loopexit
  %i.he = phi ptr [ %.pre345, %.critedge.loopexit ], [ %i.fa, %bb.aj ] ; 2 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332.a, 1 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 4
  %.val248 = load i32, ptr %i.hf, align 4, !tbaa !40
  %i.hg = sext i32 %.val248 to i64
  %i.hh = icmp slt i64 %indvars.iv.next333, %i.hg
  br i1 %i.hh, label %bb.aj, label %.critedge5, !llvm.loop !118

.critedge5:                                       ; preds = %.critedge3, %.critedge, %.loopexit, %bb.f, %.critedge.preheader, %.preheader258, %.critedge3.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.hi = load ptr, ptr %scevgep.i, align 8, !tbaa !26 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.critedge5
  store ptr %i.hi, ptr %i.a, align 8, !tbaa !26
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.critedge5
  %.1.i = phi ptr [ %i.a, %.critedge5 ], [ %i.hk, %bb.at ] ; 2 uses
  %i.hl = load ptr, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.hl, ptr %.1.i, align 8, !tbaa !26
  %i.hn = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1.1.i = phi ptr [ %.1.i, %bb.au ], [ %i.hn, %bb.av ] ; 2 uses
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !26  ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.ho, ptr %.1.1.i, align 8, !tbaa !26
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !29
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.1.2.i = phi ptr [ %.1.1.i, %bb.aw ], [ %i.hq, %bb.ax ] ; 2 uses
  %i.hr = load ptr, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.hr, ptr %.1.2.i, align 8, !tbaa !26
  %i.ht = load ptr, ptr %i.o, align 8, !tbaa !29
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1.3.i = phi ptr [ %.1.2.i, %bb.ay ], [ %i.ht, %bb.az ] ; 2 uses
  %i.hu = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.hu, ptr %.1.3.i, align 8, !tbaa !26
  %i.hw = load ptr, ptr %i.q, align 8, !tbaa !29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1.4.i = phi ptr [ %.1.3.i, %bb.ba ], [ %i.hw, %bb.bb ] ; 2 uses
  %i.hx = load ptr, ptr %i.r, align 8, !tbaa !26  ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.hx, ptr %.1.4.i, align 8, !tbaa !26
  %i.hz = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1.5.i = phi ptr [ %.1.4.i, %bb.bc ], [ %i.hz, %bb.bd ] ; 2 uses
  %i.ia = load ptr, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ia, ptr %.1.5.i, align 8, !tbaa !26
  %i.ic = load ptr, ptr %i.u, align 8, !tbaa !29
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1.6.i = phi ptr [ %.1.5.i, %bb.be ], [ %i.ic, %bb.bf ] ; 2 uses
  %i.id = load ptr, ptr %i.v, align 8, !tbaa !26  ; 2 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.id, ptr %.1.6.i, align 8, !tbaa !26
  %i.if = load ptr, ptr %i.w, align 8, !tbaa !29
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.1.7.i = phi ptr [ %.1.6.i, %bb.bg ], [ %i.if, %bb.bh ] ; 2 uses
  %i.ig = load ptr, ptr %i.x, align 8, !tbaa !26  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.ig, ptr %.1.7.i, align 8, !tbaa !26
  %i.ii = load ptr, ptr %i.y, align 8, !tbaa !29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1.8.i = phi ptr [ %.1.7.i, %bb.bi ], [ %i.ii, %bb.bj ] ; 2 uses
  %i.ij = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.ij, ptr %.1.8.i, align 8, !tbaa !26
  %i.il = load ptr, ptr %i.aa, align 8, !tbaa !29
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1.9.i = phi ptr [ %.1.8.i, %bb.bk ], [ %i.il, %bb.bl ] ; 2 uses
  %i.im = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.im, ptr %.1.9.i, align 8, !tbaa !26
  %i.io = load ptr, ptr %i.ac, align 8, !tbaa !29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.1.10.i = phi ptr [ %.1.9.i, %bb.bm ], [ %i.io, %bb.bn ] ; 2 uses
  %i.ip = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %Cut_ListFinish.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.ip, ptr %.1.10.i, align 8, !tbaa !26
  %i.ir = load ptr, ptr %i.ae, align 8, !tbaa !29
  br label %Cut_ListFinish.exit

Cut_ListFinish.exit:                              ; preds = %bb.bo, %bb.bp
  %.1.11.i = phi ptr [ %.1.10.i, %bb.bo ], [ %i.ir, %bb.bp ]
  store ptr null, ptr %.1.11.i, align 8, !tbaa !26
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ak, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %Cut_ListFinish.exit
  call void @Cut_NodeWriteCutsTemp(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %.0..0..0..0..0..0..i) #11
  br label %bb.bs

bb.br:                                            ; preds = %Cut_ListFinish.exit
  call void @Cut_NodeWriteCutsNew(ptr noundef nonnull %0, i32 noundef %i.ag, ptr noundef %.0..0..0..0..0..0..i) #11
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.is = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #11
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %Abc_Clock.exit251, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iu = load i64, ptr %4, align 8, !tbaa !24
  %i.iv = mul nsw i64 %i.iu, 1000000
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !25
  %i.iy = sdiv i64 %i.ix, 1000
  %i.iz = add nsw i64 %i.iy, %i.iv
  br label %Abc_Clock.exit251

Abc_Clock.exit251:                                ; preds = %bb.bs, %bb.bt
  %.0.i250 = phi i64 [ %i.iz, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ja = add i64 %.0.i250, %.0.i.neg
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !55
  %i.jd = add nsw i64 %i.ja, %i.jc
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %.0..0..0..0..0..0..i
}

declare ptr @Cut_NodeReadCutsOld(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Cut_NodeReadCutsTemp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Cut_NodeWriteCutsTemp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Cut_CutFilterOld(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = lshr i32 %i.a, 28                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  %i.e = load i32, ptr %1, align 8
  %i.f = lshr i32 %i.e, 28                        ; 2 uses
  %i.g = icmp samesign ugt i32 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !49
  br label %.lr.ph117

end_hunk_1
