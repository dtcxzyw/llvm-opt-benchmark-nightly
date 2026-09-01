Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ucnv_MBCSFromUChar32_78:bb.a
    i8 1, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.k = ashr i32 %1, 10
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !19
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %1, 4
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19
  %i.v = zext i16 %i.u to i32
  %i.w = and i32 %1, 15
  %i.x = add nuw nsw i32 %i.w, %i.v
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !19  ; 3 uses
  %.not49 = icmp eq i8 %3, 0
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i16 %i.aa, 2047
  br i1 %i.ab, label %bb.g, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp ugt i16 %i.aa, 3071
  br i1 %i.ac, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = and i16 %i.aa, 255
  %i.ae = zext nneg i16 %i.ad to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  %i.af = lshr i32 %1, 4
  %i.ag = and i32 %i.af, 63
  %i.ah = ashr i32 %1, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !19
  %i.al = zext i16 %i.ak to i32
  %i.am = add nuw nsw i32 %i.ag, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.as = shl i32 %i.ap, 4
  %i.at = and i32 %i.as, 1048560
  %i.au = and i32 %1, 15                          ; 2 uses
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !19 ; 4 uses
  %i.az = zext i16 %i.ay to i32
  %i.ba = icmp ult i16 %i.ay, 256
  %. = select i1 %i.ba, i32 1, i32 2
  %i.bb = shl nuw i32 65536, %i.au
  %i.bc = and i32 %i.ap, %i.bb
  %.not47 = icmp eq i32 %i.bc, 0
  br i1 %.not47, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not48 = icmp ne i8 %3, 0
  %i.bd = add nsw i32 %1, -57344
  %i.be = icmp ult i32 %i.bd, 6400
  %or.cond52 = select i1 %.not48, i1 true, i1 %i.be
  br i1 %or.cond52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add nsw i32 %1, -983040
  %i.bg = icmp ult i32 %i.bf, 131072
  %i.bh = icmp ne i16 %i.ay, 0
  %or.cond = and i1 %i.bg, %i.bh
  br i1 %or.cond, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %.old1.not = icmp eq i16 %i.ay, 0
  br i1 %.old1.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  store i32 %i.az, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.k, %bb.j, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %.not50 = icmp eq ptr %i.bj, null
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call i32 @ucnv_extSimpleMatchFromU_78(ptr noundef nonnull %i.bj, i32 noundef %1, ptr noundef %2, i8 noundef signext %3)
  %i.bl = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.l, %bb.g
  %.044 = phi i32 [ 1, %bb.g ], [ %i.bl, %bb.n ], [ -1, %bb.c ], [ %., %bb.l ], [ 0, %bb.m ]
  ret i32 %.044
}

declare i32 @ucnv_extSimpleMatchFromU_78(ptr noundef, i32 noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @ucnv_MBCSIsLeadByte_78(ptr nofree noundef readonly captures(none) %0, i8 noundef signext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = zext i8 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = zext i1 %i.f to i8
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 10) i32 @ucnv_MBCSGetType_78(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !53
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.g = load i8, ptr %i.f, align 4, !tbaa !41
  %i.h = icmp eq i8 %i.g, 12
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 70
  %i.l = load i8, ptr %i.k, align 2, !tbaa !127
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 71
  %i.o = load i8, ptr %i.n, align 1, !tbaa !129
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 2, %bb.e ], [ 0, %bb.a ], [ 9, %bb.b ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %4 = alloca %struct.UDataInfo, align 2          ; 6 uses
  %5 = alloca %struct.UConverterLoadArgs, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.c = load i8, ptr %2, align 4, !tbaa !30
  switch i8 %i.c, label %bb.d [
    i8 4, label %.thread
    i8 5, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 4, !tbaa !130  ; 2 uses
  %i.f = trunc i32 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  store i8 %i.f, ptr %i.g, align 4, !tbaa !17
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !30
  %i.j = icmp ugt i8 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !132  ; 3 uses
  %i.m = and i32 %i.l, 65408
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  store i32 13, ptr %3, align 4, !tbaa !37
  br label %bb.cl

bb.e:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 64
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.q = shl i32 %i.l, 2
  %i.r = and i32 %i.q, 252
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i32, ptr %i.t, align 4, !tbaa !130  ; 3 uses
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  store i8 %i.v, ptr %i.w, align 4, !tbaa !17
  %i.x = and i32 %i.u, 255
  %6 = icmp ne i32 %i.x, 0
  %or.cond209.not = select i1 %i.p, i1 true, i1 %6
  br i1 %or.cond209.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 13, ptr %3, align 4, !tbaa !37
  br label %bb.cl

bb.g:                                             ; preds = %.thread, %bb.e
  %i.y = phi ptr [ %i.g, %.thread ], [ %i.w, %bb.e ] ; 3 uses
  %i.z = phi i8 [ %i.f, %.thread ], [ %i.v, %bb.e ]
  %i.aa = phi i32 [ %i.e, %.thread ], [ %i.u, %bb.e ]
  %.0184217 = phi i1 [ true, %.thread ], [ %i.p, %bb.e ] ; 2 uses
  %.0185216 = phi i64 [ 32, %.thread ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = lshr i32 %i.aa, 8                       ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !133
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  switch i8 %i.z, label %bb.ah [
    i8 14, label %bb.j
    i8 0, label %bb.ai
    i8 1, label %bb.ai
    i8 2, label %bb.ai
    i8 3, label %bb.ai
    i8 8, label %bb.ai
    i8 9, label %bb.ai
    i8 12, label %bb.ai
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 13, ptr %3, align 4, !tbaa !37
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !134
  %.not200 = icmp eq i32 %i.ak, 1
  br i1 %.not200, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 14, ptr %3, align 4, !tbaa !37
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.0185216 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.ao) #17
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 13, ptr %3, align 4, !tbaa !37
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  store i32 40, ptr %5, align 8, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 2, ptr %i.ar, align 4, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.at, ptr %i.au, align 8, !tbaa !137
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !138
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !140
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !140
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.al, ptr %i.be, align 8, !tbaa !141
  %i.bf = call ptr @ucnv_load_78(ptr noundef nonnull %5, ptr noundef %3) ; 8 uses
  %i.bg = load i32, ptr %3, align 4, !tbaa !37
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 69
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !142
  %.not202 = icmp eq i8 %i.bl, 2
  br i1 %.not202, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 280
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143
  %.not203 = icmp eq ptr %i.bo, null
  br i1 %.not203, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @ucnv_unload_78(ptr noundef nonnull %i.bf)
  store i32 13, ptr %3, align 4, !tbaa !37
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %i.as, align 8, !tbaa !137
  %.not204 = icmp eq i8 %i.bp, 0
  br i1 %.not204, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @ucnv_unload_78(ptr noundef nonnull %i.bf)
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.bm, i64 216, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.bf, ptr %i.bq, align 8, !tbaa !144
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !133
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.br, align 8, !tbaa !145
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.bs, align 8, !tbaa !146
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !126 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 69
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !142
  switch i8 %i.bw, label %bb.ag [
    i8 1, label %bb.x
    i8 2, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 70
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !127
  %i.bz = icmp sgt i8 %i.by, 1
  br i1 %i.bz, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 252
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !41
  %i.cc = icmp eq i8 %i.cb, 12
  br i1 %i.cc, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !147
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29 ; 2 uses
  %i.ch = and i32 %i.cg, -2131755008
  %or.cond211 = icmp eq i32 %i.ch, -2139095040
  br i1 %or.cond211, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ci = lshr i32 %i.cg, 24
  %i.cj = and i32 %i.ci, 127                      ; 2 uses
  %.not206 = icmp eq i32 %i.cj, 0
  br i1 %.not206, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !148
  br label %.sink.split

bb.ab:                                            ; preds = %bb.x
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !126 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 69
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !142
  %i.cp = icmp eq i8 %i.co, 2
  br i1 %i.cp, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 70
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !127
  %i.cs = icmp eq i8 %i.cr, 1
  br i1 %i.cs, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 71
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !129
  %i.cv = icmp eq i8 %i.cu, 2
  br i1 %i.cv, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i8, ptr %i.b, align 8, !tbaa !149  ; 3 uses
  %i.cx = zext i8 %i.cw to i32                    ; 3 uses
end_hunk_0
