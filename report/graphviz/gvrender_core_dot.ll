Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvrender_core_dot?download=true
inline.NumInlined: 138
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@agxbprint:bb.a
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !41 ; 4 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.c, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i51.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i43.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i51.i, %.0.i43.i             ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41
  %i.s = load ptr, ptr %0, align 8, !tbaa !41
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.155.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef readonly %1, ptr noundef nonnull %3) #16 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !41 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.155.i, label %agxbnext.exit49.i, label %bb.l

agxbnext.exit49.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit49.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit49.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !41
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @dot_begin_graph(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  switch i32 %i.h, label %bb.ae [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.af
    i32 3, label %bb.af
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @attach_attrs(ptr noundef %i.f) #16
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @aggetrec(ptr noundef %i.f, ptr noundef nonnull @.str.16, i32 noundef 0) #16
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @undoClusterEdges(ptr noundef %i.f) #16
  br label %bb.af

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.j = call double @attach_attrs_and_arrows(ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #16
  %i.k = load i8, ptr %i.b, align 1, !tbaa !90, !range !91, !noundef !92
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i8, ptr %i.a, align 1, !tbaa !90, !range !91, !noundef !92
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i32, ptr %i.g, align 8, !tbaa !49
  %i.p = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #21 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %gv_alloc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.13, i64 noundef 104) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.e
  store ptr %i.p, ptr @xd, align 8, !tbaa !40
  switch i32 %i.o, label %bb.h [
    i32 6, label %bb.n
    i32 5, label %bb.g
  ]

bb.g:                                             ; preds = %gv_alloc.exit.i
  br label %bb.n

bb.h:                                             ; preds = %gv_alloc.exit.i
  %i.t = call ptr @agget(ptr noundef %i.f, ptr noundef nonnull @.str.21) #16 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %versionStr2Version.exit44.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !41    ; 2 uses
  %.not29.i = icmp eq i8 %i.u, 0
  br i1 %.not29.i, label %versionStr2Version.exit44.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.l
  %i.v = phi i8 [ %i.ae, %bb.l ], [ %i.u, %bb.i ] ; 3 uses
  %.01323.i.i = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.i ]
  %.01422.i.i = phi i16 [ %.2.i.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.w = sext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.z = and i8 %i.v, 14
  %i.aa = xor i8 %i.z, -1
  %.lhs.trunc.i.i = sext i8 %i.aa to i16
  %i.ab = udiv i16 %.lhs.trunc.i.i, 10
  %.not17.i.i = icmp ult i16 %i.ab, %.01422.i.i
  br i1 %.not17.i.i, label %versionStr2Version.exit.thread.i, label %bb.k

versionStr2Version.exit.thread.i:                 ; preds = %bb.j
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.t) #16
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %1 = mul nuw i16 %.01422.i.i, 10
  %2 = sext i8 %i.v to i16
  %3 = add nsw i16 %2, -48
  %4 = add i16 %3, %1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.2.i.i = phi i16 [ %4, %bb.k ], [ %.01422.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ac = add i64 %.01323.i.i, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %versionStr2Version.exit.i, label %.lr.ph.i.i, !llvm.loop !89

versionStr2Version.exit.i:                        ; preds = %bb.l
  %i.af = icmp ugt i16 %.2.i.i, 10
  br i1 %i.af, label %bb.m, label %versionStr2Version.exit44.i

bb.m:                                             ; preds = %versionStr2Version.exit.i, %versionStr2Version.exit.thread.i
  %.01420.i46.i = phi i16 [ %.01422.i.i, %versionStr2Version.exit.thread.i ], [ %.2.i.i, %versionStr2Version.exit.i ]
  %i.ag = load ptr, ptr @xd, align 8, !tbaa !40
  br label %bb.n

versionStr2Version.exit44.i:                      ; preds = %versionStr2Version.exit.i, %bb.i, %bb.h
  %.pre.i = load ptr, ptr @xd, align 8, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %versionStr2Version.exit44.i, %bb.m, %bb.g, %gv_alloc.exit.i
  %.sink67.i = phi ptr [ %i.p, %bb.g ], [ %.pre.i, %versionStr2Version.exit44.i ], [ %i.ag, %bb.m ], [ %i.p, %gv_alloc.exit.i ] ; 4 uses
  %.sink.i = phi i16 [ 12, %bb.g ], [ 17, %versionStr2Version.exit44.i ], [ %.01420.i46.i, %bb.m ], [ 14, %gv_alloc.exit.i ]
  %.str.20.sink.i = phi ptr [ @.str.20, %bb.g ], [ @.str.22, %versionStr2Version.exit44.i ], [ %i.t, %bb.m ], [ @.str.19, %gv_alloc.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink67.i, i64 80
  store i16 %.sink.i, ptr %i.ah, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink67.i, i64 88
  store ptr %.str.20.sink.i, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 236
  %i.am = load i32, ptr %i.al, align 4, !tbaa !93
  %.not30.i = icmp eq i32 %i.am, 0
  br i1 %.not30.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #16
  %i.ao = load ptr, ptr @xd, align 8, !tbaa !40   ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !70
  %.pre55.i = load ptr, ptr %i.aj, align 8, !tbaa !56
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store ptr null, ptr %.sink67.i, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ap = phi ptr [ %.sink67.i, %bb.p ], [ %i.ao, %bb.o ]
  %i.aq = phi ptr [ %i.ak, %bb.p ], [ %.pre55.i, %bb.o ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 129
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !94
  %i.at = and i8 %i.as, 8
  %.not31.i = icmp eq i8 %i.at, 0
  br i1 %.not31.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1) #16
  %i.av = load ptr, ptr @xd, align 8, !tbaa !40
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink70.i = phi ptr [ %i.av, %bb.r ], [ %i.ap, %bb.q ]
  %.sink68.i = phi ptr [ %i.au, %bb.r ], [ null, %bb.q ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink70.i, i64 8
  store ptr %.sink68.i, ptr %i.aw, align 8, !tbaa !71
  %i.ax = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #16
  %i.ay = load ptr, ptr @xd, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !72
  %i.ba = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1) #16
  %i.bb = load ptr, ptr @xd, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !73
  %i.bd = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #16
  %i.be = load ptr, ptr @xd, align 8, !tbaa !40   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !74
  br i1 %i.n, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1) #16
  %i.bh = load ptr, ptr @xd, align 8, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink73.i = phi ptr [ %i.bh, %bb.t ], [ %i.be, %bb.s ] ; 2 uses
  %.sink71.i = phi ptr [ %i.bg, %bb.t ], [ null, %bb.s ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink73.i, i64 40
  store ptr %.sink71.i, ptr %i.bi, align 8, !tbaa !75
  br i1 %i.l, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1) #16
  %i.bk = load ptr, ptr @xd, align 8, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink76.i = phi ptr [ %i.bk, %bb.v ], [ %.sink73.i, %bb.u ] ; 3 uses
  %.sink74.i = phi ptr [ %i.bj, %bb.v ], [ null, %bb.u ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink76.i, i64 48
  store ptr %.sink74.i, ptr %i.bl, align 8, !tbaa !76
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 129
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !94  ; 2 uses
  %i.bp = and i8 %i.bo, 33
  %.not32.i = icmp eq i8 %i.bp, 0
  br i1 %.not32.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1) #16
  %i.br = load ptr, ptr @xd, align 8, !tbaa !40   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !77
  %.pre56.i = load ptr, ptr %i.aj, align 8, !tbaa !56
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre56.i, i64 129
  %.pre57.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !94
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink76.i, i64 56
  store ptr null, ptr %i.bt, align 8, !tbaa !77
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = phi ptr [ %.sink76.i, %bb.y ], [ %i.br, %bb.x ] ; 2 uses
  %i.bv = phi i8 [ %i.bo, %bb.y ], [ %.pre57.i, %bb.x ] ; 2 uses
  %i.bw = and i8 %i.bv, 2
  %.not33.i = icmp eq i8 %i.bw, 0
  br i1 %.not33.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1) #16
  %i.by = load ptr, ptr @xd, align 8, !tbaa !40   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !78
  %.pre58.i = load ptr, ptr %i.aj, align 8, !tbaa !56
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %.pre58.i, i64 129
  %.pre60.i = load i8, ptr %.phi.trans.insert59.i, align 1, !tbaa !94
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr null, ptr %i.ca, align 8, !tbaa !78
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cb = phi ptr [ %i.bu, %bb.ab ], [ %i.by, %bb.aa ]
  %i.cc = phi i8 [ %i.bv, %bb.ab ], [ %.pre60.i, %bb.aa ]
  %i.cd = and i8 %i.cc, 4
  %.not34.i = icmp eq i8 %i.cd, 0
  br i1 %.not34.i, label %xdot_begin_graph.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = call ptr @safe_dcl(ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1) #16
  %i.cf = load ptr, ptr @xd, align 8, !tbaa !40
  br label %xdot_begin_graph.exit

xdot_begin_graph.exit:                            ; preds = %bb.ac, %bb.ad
  %.sink79.i = phi ptr [ %i.cf, %bb.ad ], [ %i.cb, %bb.ac ] ; 2 uses
  %.sink77.i = phi ptr [ %i.ce, %bb.ad ], [ null, %bb.ac ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink79.i, i64 72
  store ptr %.sink77.i, ptr %i.cg, align 8, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink79.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @xbuf, i8 0, i64 256, i1 false)
  store double %i.j, ptr %i.ch, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.af

bb.ae:                                            ; preds = %bb.a
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 423) #19 ; 0 uses
  tail call void @abort() #23
  unreachable

bb.af:                                            ; preds = %bb.a, %bb.a, %bb.c, %bb.d, %xdot_begin_graph.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dot_end_graph(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 10 uses
  %i.e = load ptr, ptr @dot_end_graph.io, align 8, !tbaa !96
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @AgIoDisc, align 8, !tbaa !96
  store ptr %i.g, ptr @dot_end_graph.io, align 8, !tbaa !96
  store ptr @gvputs, ptr getelementptr inbounds nuw (i8, ptr @dot_end_graph.io, i64 8), align 8, !tbaa !97
  store ptr @gvflush, ptr getelementptr inbounds nuw (i8, ptr @dot_end_graph.io, i64 16), align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
end_hunk_0
