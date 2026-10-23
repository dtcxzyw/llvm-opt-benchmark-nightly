Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecCore?download=true
inline.NumInlined: 277
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Acec_ManCecSetDefaultParams:bb.a
  store i32 1000, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i32> zeroinitializer, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Acec_VerifyClasses(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val102 = load i32, ptr %i.a, align 4, !tbaa !16 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.c = add i32 %.val102, -1
  %or.cond.i = icmp ult i32 %i.c, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val102 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !69
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !70
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #21
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !71
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !19
  store i32 100, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr i8, ptr %0, i64 24
  %.val103 = load i32, ptr %i.n, align 8, !tbaa !39 ; 4 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.p = add i32 %.val103, -1
  %or.cond.i.i = icmp ult i32 %i.p, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val103 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.o, align 8, !tbaa !42
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_PtrAlloc.exit
  %i.q = sext i32 %spec.store.select.i.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #21
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_PtrAlloc.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %Vec_PtrAlloc.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !43
  store i32 %.val103, ptr %i.u, align 4, !tbaa !44
  %i.w = sext i32 %.val103 to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.x, i1 false)
  %i.y = icmp sgt i32 %.val102, 0
  br i1 %i.y, label %.lr.ph160, label %.critedge.thread

.lr.ph160:                                        ; preds = %Vec_WrdStart.exit
  %i.z = getelementptr i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph160, %Vec_PtrPush.exit
  %i.aa = phi ptr [ %i.h, %.lr.ph160 ], [ %i.mc, %Vec_PtrPush.exit ] ; 6 uses
  %i.ab = phi i32 [ %spec.store.select.i, %.lr.ph160 ], [ %i.md, %Vec_PtrPush.exit ] ; 7 uses
  %i.ac = phi i32 [ 0, %.lr.ph160 ], [ %i.me, %Vec_PtrPush.exit ] ; 3 uses
  %indvars.iv179 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next180, %Vec_PtrPush.exit ] ; 2 uses
  %.092159 = phi i32 [ 0, %.lr.ph160 ], [ %.193.lcssa, %Vec_PtrPush.exit ] ; 2 uses
  %.val105 = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val105, i64 %indvars.iv179 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4      ; 2 uses
  %.val111 = load i32, ptr %i.ae, align 4, !tbaa !19 ; 3 uses
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 10 uses
  %i.ag = add i32 %.val111, -1
  %or.cond.i118 = icmp ult i32 %i.ag, 15
  %spec.store.select.i119 = select i1 %or.cond.i118, i32 16, i32 %.val111 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 8 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !44
  store i32 %spec.store.select.i119, ptr %i.af, align 8, !tbaa !42
  %.not.i120 = icmp eq i32 %spec.store.select.i119, 0
  br i1 %.not.i120, label %Vec_WrdAlloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sext i32 %spec.store.select.i119 to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #21
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.d, %bb.e
  %i.al = phi ptr [ %i.ak, %bb.e ], [ null, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 13 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !43
  %i.an = icmp sgt i32 %.val111, 0
  br i1 %i.an, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_WrdAlloc.exit
  %i.ao = getelementptr i8, ptr %i.ad, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 2 uses
  %.193156 = phi i32 [ %.092159, %.lr.ph ], [ %.294, %Vec_WrdPush.exit ] ; 5 uses
  %.val114 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !46
  %i.ar = tail call i64 @Gia_ObjComputeTruth6Cis(ptr noundef %0, i32 noundef %i.aq, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o) #22 ; 22 uses
  %.val109 = load i32, ptr %i.k, align 4, !tbaa !19 ; 13 uses
  %i.as = icmp sgt i32 %.val109, 6
  br i1 %i.as, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %.193156, 1                 ; 3 uses
  %i.au = load i32, ptr %i.ah, align 4, !tbaa !44 ; 7 uses
  %i.av = load i32, ptr %i.af, align 8, !tbaa !42
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %.Vec_WrdPush.exit_crit_edge

.Vec_WrdPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre198 = load ptr, ptr %i.am, align 8, !tbaa !43
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp slt i32 %i.au, 16
  br i1 %i.ax, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 128) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i32 %i.au, 1073741823
  %i.bc = shl nuw nsw i32 %i.au, 1
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.au, %spec.select.i
  %.pre199 = load ptr, ptr %i.am, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_WrdPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre199, null
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %.pre199, i64 noundef %i.be) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #21
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge152 = phi ptr [ %i.ba, %bb.k ], [ %i.az, %bb.j ], [ %i.bf, %bb.n ], [ %i.bg, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %storemerge152, ptr %i.am, align 8, !tbaa !43
  store i32 %spec.select.sink.i, ptr %i.af, align 8, !tbaa !42
  %.pre200 = load i32, ptr %i.ah, align 4, !tbaa !44
  br label %Vec_WrdPush.exit

bb.p:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !21  ; 11 uses
  %i.bi = icmp sgt i32 %.val109, 0
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.p
  store i32 0, ptr %i.k, align 4, !tbaa !19
  br label %bb.bl

.lr.ph.i:                                         ; preds = %bb.p
  %.not29.i = icmp eq ptr %i.bh, null
  br i1 %.not29.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bj = lshr i64 %i.ar, 1
  %i.bk = xor i64 %i.bj, %i.ar
  %i.bl = and i64 %i.bk, 6148914691236517205
  %.not30.us.i = icmp eq i64 %i.bl, 0             ; 2 uses
  %.1.us.i = select i1 %.not30.us.i, i32 0, i32 1 ; 5 uses
  %exitcond44.not.i = icmp eq i32 %.val109, 1
  br i1 %exitcond44.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %i.bm = lshr i64 %i.ar, 2
  %i.bn = xor i64 %i.bm, %i.ar
  %i.bo = and i64 %i.bn, 3689348814741910323
  %.not30.us.i.1 = icmp eq i64 %i.bo, 0
  br i1 %.not30.us.i.1, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.i.1
  br i1 %.not30.us.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = zext nneg i32 %.1.us.i to i64
  %i.bq = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.neg.i.us.i.1 = shl nsw i32 -1, %.1.us.i
  %i.bs = add nsw i32 %.neg.i.us.i.1, 2
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !47
  %i.bu = and i64 %i.bt, %i.ar
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !47
  %i.bx = and i64 %i.bw, %i.ar
  %i.by = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bz = shl i64 %i.bx, %i.by
  %i.ca = or i64 %i.bz, %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.cd = and i64 %i.cc, %i.ar
  %i.ce = lshr i64 %i.cd, %i.by
  %i.cf = or i64 %i.ca, %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.125.us.i.1 = phi i64 [ %i.cf, %bb.r ], [ %i.ar, %bb.q ]
  %i.cg = add nuw nsw i32 %.1.us.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.us.i.1
  %.2.us.i.1 = phi i64 [ %.125.us.i.1, %bb.s ], [ %i.ar, %.lr.ph.split.us.i.1 ] ; 8 uses
  %.1.us.i.1 = phi i32 [ %i.cg, %bb.s ], [ %.1.us.i, %.lr.ph.split.us.i.1 ] ; 6 uses
  %exitcond44.not.i.1 = icmp eq i32 %.val109, 2
  br i1 %exitcond44.not.i.1, label %._crit_edge.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.t
  %i.ch = lshr i64 %.2.us.i.1, 4
  %i.ci = xor i64 %i.ch, %.2.us.i.1
  %i.cj = and i64 %i.ci, 1085102592571150095
  %.not30.us.i.2 = icmp eq i64 %i.cj, 0
  br i1 %.not30.us.i.2, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.i.2
  %i.ck = icmp slt i32 %.1.us.i.1, 2
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = sext i32 %.1.us.i.1 to i64
  %i.cm = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %.neg.i.us.i.2 = shl nsw i32 -1, %.1.us.i.1
  %i.co = add nsw i32 %.neg.i.us.i.2, 4
  %i.cp = load i64, ptr %i.cn, align 16, !tbaa !47
  %i.cq = and i64 %i.cp, %.2.us.i.1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %.2.us.i.1
  %i.cu = zext i32 %i.co to i64                   ; 2 uses
  %i.cv = shl i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %i.cq
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.cy = load i64, ptr %i.cx, align 16, !tbaa !47
  %i.cz = and i64 %i.cy, %.2.us.i.1
  %i.da = lshr i64 %i.cz, %i.cu
  %i.db = or i64 %i.cw, %i.da
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.125.us.i.2 = phi i64 [ %i.db, %bb.v ], [ %.2.us.i.1, %bb.u ]
  %i.dc = add nsw i32 %.1.us.i.1, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.split.us.i.2
  %.2.us.i.2 = phi i64 [ %.125.us.i.2, %bb.w ], [ %.2.us.i.1, %.lr.ph.split.us.i.2 ] ; 8 uses
  %.1.us.i.2 = phi i32 [ %i.dc, %bb.w ], [ %.1.us.i.1, %.lr.ph.split.us.i.2 ] ; 6 uses
  %exitcond44.not.i.2 = icmp eq i32 %.val109, 3
  br i1 %exitcond44.not.i.2, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.x
  %i.dd = lshr i64 %.2.us.i.2, 8
  %i.de = xor i64 %i.dd, %.2.us.i.2
  %i.df = and i64 %i.de, 71777214294589695
  %.not30.us.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not30.us.i.3, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.i.3
  %i.dg = icmp slt i32 %.1.us.i.2, 3
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dh = sext i32 %.1.us.i.2 to i64
  %i.di = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %.neg.i.us.i.3 = shl nsw i32 -1, %.1.us.i.2
  %i.dk = add nsw i32 %.neg.i.us.i.3, 8
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !47
  %i.dm = and i64 %i.dl, %.2.us.i.2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !47
  %i.dp = and i64 %i.do, %.2.us.i.2
  %i.dq = zext i32 %i.dk to i64                   ; 2 uses
  %i.dr = shl i64 %i.dp, %i.dq
  %i.ds = or i64 %i.dr, %i.dm
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !47
  %i.dv = and i64 %i.du, %.2.us.i.2
  %i.dw = lshr i64 %i.dv, %i.dq
  %i.dx = or i64 %i.ds, %i.dw
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.125.us.i.3 = phi i64 [ %i.dx, %bb.z ], [ %.2.us.i.2, %bb.y ]
  %i.dy = add nsw i32 %.1.us.i.2, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.us.i.3
  %.2.us.i.3 = phi i64 [ %.125.us.i.3, %bb.aa ], [ %.2.us.i.2, %.lr.ph.split.us.i.3 ] ; 8 uses
  %.1.us.i.3 = phi i32 [ %i.dy, %bb.aa ], [ %.1.us.i.2, %.lr.ph.split.us.i.3 ] ; 6 uses
  %exitcond44.not.i.3 = icmp eq i32 %.val109, 4
  br i1 %exitcond44.not.i.3, label %._crit_edge.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %bb.ab
  %i.dz = lshr i64 %.2.us.i.3, 16
  %i.ea = xor i64 %i.dz, %.2.us.i.3
  %i.eb = and i64 %i.ea, 281470681808895
  %.not30.us.i.4 = icmp eq i64 %i.eb, 0
  br i1 %.not30.us.i.4, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.i.4
  %i.ec = icmp slt i32 %.1.us.i.3, 4
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = sext i32 %.1.us.i.3 to i64
  %i.ee = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ed ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %.neg.i.us.i.4 = shl nsw i32 -1, %.1.us.i.3
  %i.eg = add nsw i32 %.neg.i.us.i.4, 16
  %i.eh = load i64, ptr %i.ef, align 16, !tbaa !47
  %i.ei = and i64 %i.eh, %.2.us.i.3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !47
  %i.el = and i64 %i.ek, %.2.us.i.3
  %i.em = zext i32 %i.eg to i64                   ; 2 uses
  %i.en = shl i64 %i.el, %i.em
  %i.eo = or i64 %i.en, %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.eq = load i64, ptr %i.ep, align 16, !tbaa !47
  %i.er = and i64 %i.eq, %.2.us.i.3
  %i.es = lshr i64 %i.er, %i.em
  %i.et = or i64 %i.eo, %i.es
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.125.us.i.4 = phi i64 [ %i.et, %bb.ad ], [ %.2.us.i.3, %bb.ac ]
  %i.eu = add nsw i32 %.1.us.i.3, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.split.us.i.4
  %.2.us.i.4 = phi i64 [ %.125.us.i.4, %bb.ae ], [ %.2.us.i.3, %.lr.ph.split.us.i.4 ] ; 8 uses
  %.1.us.i.4 = phi i32 [ %i.eu, %bb.ae ], [ %.1.us.i.3, %.lr.ph.split.us.i.4 ] ; 6 uses
  %exitcond44.not.i.4 = icmp eq i32 %.val109, 5
  br i1 %exitcond44.not.i.4, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %bb.af
  %i.ev = lshr i64 %.2.us.i.4, 32
  %.2.us.i.4.masked = and i64 %.2.us.i.4, 4294967295
  %.not30.us.i.5 = icmp eq i64 %i.ev, %.2.us.i.4.masked
  br i1 %.not30.us.i.5, label %._crit_edge.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us.i.5
  %i.ew = icmp slt i32 %.1.us.i.4, 5
  br i1 %i.ew, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ex = sext i32 %.1.us.i.4 to i64
  %i.ey = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %.neg.i.us.i.5 = shl nsw i32 -1, %.1.us.i.4
  %i.fa = add nsw i32 %.neg.i.us.i.5, 32
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !47
  %i.fc = and i64 %i.fb, %.2.us.i.4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.fe = load i64, ptr %i.fd, align 16, !tbaa !47
  %i.ff = and i64 %i.fe, %.2.us.i.4
  %i.fg = zext i32 %i.fa to i64                   ; 2 uses
  %i.fh = shl i64 %i.ff, %i.fg
  %i.fi = or i64 %i.fh, %i.fc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !47
  %i.fl = and i64 %i.fk, %.2.us.i.4
  %i.fm = lshr i64 %i.fl, %i.fg
  %i.fn = or i64 %i.fi, %i.fm
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.125.us.i.5 = phi i64 [ %i.fn, %bb.ah ], [ %.2.us.i.4, %bb.ag ]
  %i.fo = add nsw i32 %.1.us.i.4, 1
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.fp = lshr i64 %i.ar, 1
  %i.fq = xor i64 %i.fp, %i.ar
  %i.fr = and i64 %i.fq, 6148914691236517205
  %.not30.i = icmp eq i64 %i.fr, 0                ; 2 uses
  %.1.i = select i1 %.not30.i, i32 0, i32 1       ; 5 uses
  %exitcond.not.i = icmp eq i32 %.val109, 1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.fs = lshr i64 %i.ar, 2
  %i.ft = xor i64 %i.fs, %i.ar
  %i.fu = and i64 %i.ft, 3689348814741910323
  %.not30.i.1 = icmp eq i64 %i.fu, 0
  br i1 %.not30.i.1, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.i.1
  br i1 %.not30.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fv = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !46
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.fv
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !46
  %i.fz = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.fv ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %.neg.i.i.1 = shl nsw i32 -1, %.1.i
  %i.gb = add nsw i32 %.neg.i.i.1, 2
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !47
  %i.gd = and i64 %i.gc, %i.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gf = load i64, ptr %i.ge, align 16, !tbaa !47
  %i.gg = and i64 %i.gf, %i.ar
  %i.gh = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gi = shl i64 %i.gg, %i.gh
  %i.gj = or i64 %i.gi, %i.gd
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !47
  %i.gm = and i64 %i.gl, %i.ar
  %i.gn = lshr i64 %i.gm, %i.gh
  %i.go = or i64 %i.gj, %i.gn
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.125.i.1 = phi i64 [ %i.go, %bb.ak ], [ %i.ar, %bb.aj ]
  %i.gp = add nuw nsw i32 %.1.i, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.split.i.1
  %.2.i.1 = phi i64 [ %.125.i.1, %bb.al ], [ %i.ar, %.lr.ph.split.i.1 ] ; 8 uses
  %.1.i.1 = phi i32 [ %i.gp, %bb.al ], [ %.1.i, %.lr.ph.split.i.1 ] ; 6 uses
  %exitcond.not.i.1 = icmp eq i32 %.val109, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.am
  %i.gq = lshr i64 %.2.i.1, 4
  %i.gr = xor i64 %i.gq, %.2.i.1
  %i.gs = and i64 %i.gr, 1085102592571150095
  %.not30.i.2 = icmp eq i64 %i.gs, 0
  br i1 %.not30.i.2, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.i.2
  %i.gt = icmp slt i32 %.1.i.1, 2
  br i1 %i.gt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gu = sext i32 %.1.i.1 to i64                 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !46
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.gu
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !46
  %i.gy = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.gu ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %.neg.i.i.2 = shl nsw i32 -1, %.1.i.1
  %i.ha = add nsw i32 %.neg.i.i.2, 4
  %i.hb = load i64, ptr %i.gz, align 16, !tbaa !47
  %i.hc = and i64 %i.hb, %.2.i.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !47
  %i.hf = and i64 %i.he, %.2.i.1
  %i.hg = zext i32 %i.ha to i64                   ; 2 uses
  %i.hh = shl i64 %i.hf, %i.hg
  %i.hi = or i64 %i.hh, %i.hc
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hk = load i64, ptr %i.hj, align 16, !tbaa !47
  %i.hl = and i64 %i.hk, %.2.i.1
  %i.hm = lshr i64 %i.hl, %i.hg
  %i.hn = or i64 %i.hi, %i.hm
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.125.i.2 = phi i64 [ %i.hn, %bb.ao ], [ %.2.i.1, %bb.an ]
  %i.ho = add nsw i32 %.1.i.1, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.split.i.2
  %.2.i.2 = phi i64 [ %.125.i.2, %bb.ap ], [ %.2.i.1, %.lr.ph.split.i.2 ] ; 8 uses
  %.1.i.2 = phi i32 [ %i.ho, %bb.ap ], [ %.1.i.1, %.lr.ph.split.i.2 ] ; 6 uses
  %exitcond.not.i.2 = icmp eq i32 %.val109, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %bb.aq
  %i.hp = lshr i64 %.2.i.2, 8
  %i.hq = xor i64 %i.hp, %.2.i.2
  %i.hr = and i64 %i.hq, 71777214294589695
  %.not30.i.3 = icmp eq i64 %i.hr, 0
  br i1 %.not30.i.3, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.i.3
  %i.hs = icmp slt i32 %.1.i.2, 3
  br i1 %i.hs, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ht = sext i32 %.1.i.2 to i64                 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !46
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ht
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !46
  %i.hx = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ht ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %.neg.i.i.3 = shl nsw i32 -1, %.1.i.2
  %i.hz = add nsw i32 %.neg.i.i.3, 8
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !47
  %i.ib = and i64 %i.ia, %.2.i.2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.id = load i64, ptr %i.ic, align 16, !tbaa !47
  %i.ie = and i64 %i.id, %.2.i.2
  %i.if = zext i32 %i.hz to i64                   ; 2 uses
  %i.ig = shl i64 %i.ie, %i.if
  %i.ih = or i64 %i.ig, %i.ib
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !47
  %i.ik = and i64 %i.ij, %.2.i.2
  %i.il = lshr i64 %i.ik, %i.if
  %i.im = or i64 %i.ih, %i.il
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.125.i.3 = phi i64 [ %i.im, %bb.as ], [ %.2.i.2, %bb.ar ]
  %i.in = add nsw i32 %.1.i.2, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.split.i.3
  %.2.i.3 = phi i64 [ %.125.i.3, %bb.at ], [ %.2.i.2, %.lr.ph.split.i.3 ] ; 8 uses
  %.1.i.3 = phi i32 [ %i.in, %bb.at ], [ %.1.i.2, %.lr.ph.split.i.3 ] ; 6 uses
  %exitcond.not.i.3 = icmp eq i32 %.val109, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %bb.au
  %i.io = lshr i64 %.2.i.3, 16
  %i.ip = xor i64 %i.io, %.2.i.3
  %i.iq = and i64 %i.ip, 281470681808895
  %.not30.i.4 = icmp eq i64 %i.iq, 0
  br i1 %.not30.i.4, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.i.4
  %i.ir = icmp slt i32 %.1.i.3, 4
  br i1 %i.ir, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.is = sext i32 %.1.i.3 to i64                 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !46
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.is
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !46
  %i.iw = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.is ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %.neg.i.i.4 = shl nsw i32 -1, %.1.i.3
  %i.iy = add nsw i32 %.neg.i.i.4, 16
  %i.iz = load i64, ptr %i.ix, align 16, !tbaa !47
  %i.ja = and i64 %i.iz, %.2.i.3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 104
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !47
  %i.jd = and i64 %i.jc, %.2.i.3
  %i.je = zext i32 %i.iy to i64                   ; 2 uses
  %i.jf = shl i64 %i.jd, %i.je
  %i.jg = or i64 %i.jf, %i.ja
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 112
  %i.ji = load i64, ptr %i.jh, align 16, !tbaa !47
  %i.jj = and i64 %i.ji, %.2.i.3
  %i.jk = lshr i64 %i.jj, %i.je
  %i.jl = or i64 %i.jg, %i.jk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.125.i.4 = phi i64 [ %i.jl, %bb.aw ], [ %.2.i.3, %bb.av ]
  %i.jm = add nsw i32 %.1.i.3, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.split.i.4
  %.2.i.4 = phi i64 [ %.125.i.4, %bb.ax ], [ %.2.i.3, %.lr.ph.split.i.4 ] ; 8 uses
  %.1.i.4 = phi i32 [ %i.jm, %bb.ax ], [ %.1.i.3, %.lr.ph.split.i.4 ] ; 6 uses
  %exitcond.not.i.4 = icmp eq i32 %.val109, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %bb.ay
  %i.jn = lshr i64 %.2.i.4, 32
  %.2.i.4.masked = and i64 %.2.i.4, 4294967295
  %.not30.i.5 = icmp eq i64 %i.jn, %.2.i.4.masked
  br i1 %.not30.i.5, label %._crit_edge.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i.5
  %i.jo = icmp slt i32 %.1.i.4, 5
  br i1 %i.jo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jp = sext i32 %.1.i.4 to i64                 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !46
  %i.js = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.jp
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !46
  %i.jt = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.jp ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 120
  %.neg.i.i.5 = shl nsw i32 -1, %.1.i.4
  %i.jv = add nsw i32 %.neg.i.i.5, 32
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !47
  %i.jx = and i64 %i.jw, %.2.i.4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.jz = load i64, ptr %i.jy, align 16, !tbaa !47
  %i.ka = and i64 %i.jz, %.2.i.4
  %i.kb = zext i32 %i.jv to i64                   ; 2 uses
  %i.kc = shl i64 %i.ka, %i.kb
  %i.kd = or i64 %i.kc, %i.jx
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 136
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !47
  %i.kg = and i64 %i.kf, %.2.i.4
  %i.kh = lshr i64 %i.kg, %i.kb
  %i.ki = or i64 %i.kd, %i.kh
end_hunk_0
begin_hunk_1_@Acec_MatchBoxesSort:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = and i32 %i.f, 1
  %i.l = xor i32 %i.j, %i.k
  %i.m = ashr i32 %i.d, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = and i32 %i.d, 1
  %i.r = xor i32 %i.p, %i.q
  %i.s = icmp sgt i32 %i.l, %i.r                  ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv31 to i32
  %spec.select = select i1 %i.s, i32 %i.t, i32 %.02326 ; 2 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  %i.u = select i1 %i.s, i32 %i.f, i32 %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv34
  %i.w = sext i32 %spec.select to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !46
  store i32 %i.y, ptr %i.v, align 4, !tbaa !46
  store i32 %.pre, ptr %i.x, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge30, label %.lr.ph.preheader, !llvm.loop !1

._crit_edge30:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Acec_MatchPrintEquivLits(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val5985 = load i32, ptr %i.b, align 4, !tbaa !16 ; 3 uses
  %i.c = icmp sgt i32 %.val5985, 0
  br i1 %i.c, label %.lr.ph87, label %.critedge

.lr.ph87:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val62.pre105 = load ptr, ptr %i.d, align 8, !tbaa !45
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph87, %bb.e
  %.val59108 = phi i32 [ %.val5985, %.lr.ph87 ], [ %.val59, %bb.e ]
  %.val62 = phi ptr [ %.val62.pre105, %.lr.ph87 ], [ %.val62106, %bb.e ] ; 2 uses
  %indvars.iv96 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next97, %bb.e ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %indvars.iv96 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %.val75 = load i32, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.g = icmp eq i32 %.val75, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.h, i32 noundef %.val75) ; 0 uses
  %.val7383 = load i32, ptr %i.f, align 4, !tbaa !19
  %i.j = icmp sgt i32 %.val7383, 0
  br i1 %i.j, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.val77 = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !46   ; 2 uses
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not58 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not58, ptr @.str.9, ptr @.str.8
  %i.p = ashr i32 %i.m, 1                         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = xor i32 %i.s, %i.n
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.o, i32 noundef %i.p, i32 noundef %i.t) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val73 = load i32, ptr %i.f, align 4, !tbaa !19
  %i.v = sext i32 %.val73 to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.d, label %.critedge2, !llvm.loop !86

.critedge2:                                       ; preds = %bb.d, %bb.c
  %putchar57 = tail call i32 @putchar(i32 10)     ; 0 uses
  %.val62.pre = load ptr, ptr %i.d, align 8, !tbaa !45
  %.val59.pre = load i32, ptr %i.b, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %.critedge2
  %.val59 = phi i32 [ %.val59108, %bb.b ], [ %.val59.pre, %.critedge2 ] ; 3 uses
  %.val62106 = phi ptr [ %.val62, %bb.b ], [ %.val62.pre, %.critedge2 ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.x = sext i32 %.val59 to i64
  %i.y = icmp slt i64 %indvars.iv.next97, %i.x
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !87

.critedge:                                        ; preds = %bb.e, %bb.a
  %.val91 = phi i32 [ %.val5985, %bb.a ], [ %.val59, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.bk, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 9 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !19
  store i32 100, ptr %i.z, align 8, !tbaa !20
  %i.ab = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !21
  %i.ad = getelementptr i8, ptr %0, i64 24
  %.val60 = load i32, ptr %i.ad, align 8, !tbaa !39 ; 4 uses
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.af = add i32 %.val60, -1
  %or.cond.i.i = icmp ult i32 %i.af, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val60 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.ae, align 8, !tbaa !42
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %spec.store.select.i.i to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #21
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.f, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !43
  store i32 %.val60, ptr %i.ak, align 4, !tbaa !44
  %i.am = sext i32 %.val60 to i64
  %i.an = shl nsw i64 %i.am, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.an, i1 false)
  %i.ao = icmp sgt i32 %.val91, 0
  br i1 %i.ao, label %.lr.ph93, label %.critedge4

.lr.ph93:                                         ; preds = %Vec_WrdStart.exit
  %i.ap = getelementptr i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph93, %bb.bh
  %.val112 = phi i32 [ %.val91, %.lr.ph93 ], [ %.val, %bb.bh ]
  %indvars.iv102 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next103, %bb.bh ] ; 3 uses
  %.val61 = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val61, i64 %indvars.iv102 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4      ; 2 uses
  %.val72 = load i32, ptr %i.ar, align 4, !tbaa !19 ; 2 uses
  %i.as = icmp eq i32 %.val72, 0
  br i1 %i.as, label %bb.bh, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.at = icmp sgt i32 %.val72, 0
  br i1 %i.at, label %.lr.ph90, label %.critedge6

.lr.ph90:                                         ; preds = %.preheader
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %i.av = trunc nuw nsw i64 %indvars.iv102 to i32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph90, %bb.bg
  %indvars.iv99 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next100, %bb.bg ] ; 2 uses
  %.val76 = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv99
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ay = call i64 @Gia_ObjComputeTruth6Cis(ptr noundef %0, i32 noundef %i.ax, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ae) #22
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !47
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.av) ; 0 uses
  %i.ba = ashr i32 %i.ax, 1
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ba) ; 0 uses
  %.val70 = load i32, ptr %i.aa, align 4, !tbaa !19 ; 14 uses
  %i.bc = icmp sgt i32 %.val70, 6
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.val70) ; 0 uses
  br label %bb.bg

bb.k:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 11 uses
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !47  ; 21 uses
  %i.bg = icmp sgt i32 %.val70, 0
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %.not29.i = icmp eq ptr %i.be, null
  br i1 %.not29.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bh = lshr i64 %i.bf, 1
  %i.bi = xor i64 %i.bh, %i.bf
  %i.bj = and i64 %i.bi, 6148914691236517205
  %.not30.us.i = icmp eq i64 %i.bj, 0             ; 2 uses
  %.1.us.i = select i1 %.not30.us.i, i32 0, i32 1 ; 5 uses
  %exitcond44.not.i = icmp eq i32 %.val70, 1
  br i1 %exitcond44.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %i.bk = lshr i64 %i.bf, 2
  %i.bl = xor i64 %i.bk, %i.bf
  %i.bm = and i64 %i.bl, 3689348814741910323
  %.not30.us.i.1 = icmp eq i64 %i.bm, 0
  br i1 %.not30.us.i.1, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i.1
  br i1 %.not30.us.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = zext nneg i32 %.1.us.i to i64
  %i.bo = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.neg.i.us.i.1 = shl nsw i32 -1, %.1.us.i
  %i.bq = add nsw i32 %.neg.i.us.i.1, 2
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.bs = and i64 %i.br, %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i64, ptr %i.bt, align 16, !tbaa !47
  %i.bv = and i64 %i.bu, %i.bf
  %i.bw = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bx = shl i64 %i.bv, %i.bw
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cb = and i64 %i.ca, %i.bf
  %i.cc = lshr i64 %i.cb, %i.bw
  %i.cd = or i64 %i.by, %i.cc
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.125.us.i.1 = phi i64 [ %i.cd, %bb.m ], [ %i.bf, %bb.l ]
  %i.ce = add nuw nsw i32 %.1.us.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us.i.1
  %.2.us.i.1 = phi i64 [ %.125.us.i.1, %bb.n ], [ %i.bf, %.lr.ph.split.us.i.1 ] ; 8 uses
  %.1.us.i.1 = phi i32 [ %i.ce, %bb.n ], [ %.1.us.i, %.lr.ph.split.us.i.1 ] ; 6 uses
  %exitcond44.not.i.1 = icmp eq i32 %.val70, 2
  br i1 %exitcond44.not.i.1, label %._crit_edge.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.o
  %i.cf = lshr i64 %.2.us.i.1, 4
  %i.cg = xor i64 %i.cf, %.2.us.i.1
  %i.ch = and i64 %i.cg, 1085102592571150095
  %.not30.us.i.2 = icmp eq i64 %i.ch, 0
  br i1 %.not30.us.i.2, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.i.2
  %i.ci = icmp slt i32 %.1.us.i.1, 2
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = sext i32 %.1.us.i.1 to i64
  %i.ck = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %.neg.i.us.i.2 = shl nsw i32 -1, %.1.us.i.1
  %i.cm = add nsw i32 %.neg.i.us.i.2, 4
  %i.cn = load i64, ptr %i.cl, align 16, !tbaa !47
  %i.co = and i64 %i.cn, %.2.us.i.1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !47
  %i.cr = and i64 %i.cq, %.2.us.i.1
  %i.cs = zext i32 %i.cm to i64                   ; 2 uses
  %i.ct = shl i64 %i.cr, %i.cs
  %i.cu = or i64 %i.ct, %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !47
  %i.cx = and i64 %i.cw, %.2.us.i.1
  %i.cy = lshr i64 %i.cx, %i.cs
  %i.cz = or i64 %i.cu, %i.cy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.125.us.i.2 = phi i64 [ %i.cz, %bb.q ], [ %.2.us.i.1, %bb.p ]
  %i.da = add nsw i32 %.1.us.i.1, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.us.i.2
  %.2.us.i.2 = phi i64 [ %.125.us.i.2, %bb.r ], [ %.2.us.i.1, %.lr.ph.split.us.i.2 ] ; 8 uses
  %.1.us.i.2 = phi i32 [ %i.da, %bb.r ], [ %.1.us.i.1, %.lr.ph.split.us.i.2 ] ; 6 uses
  %exitcond44.not.i.2 = icmp eq i32 %.val70, 3
  br i1 %exitcond44.not.i.2, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.s
  %i.db = lshr i64 %.2.us.i.2, 8
  %i.dc = xor i64 %i.db, %.2.us.i.2
  %i.dd = and i64 %i.dc, 71777214294589695
  %.not30.us.i.3 = icmp eq i64 %i.dd, 0
  br i1 %.not30.us.i.3, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i.3
  %i.de = icmp slt i32 %.1.us.i.2, 3
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.df = sext i32 %.1.us.i.2 to i64
  %i.dg = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %.neg.i.us.i.3 = shl nsw i32 -1, %.1.us.i.2
  %i.di = add nsw i32 %.neg.i.us.i.3, 8
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !47
  %i.dk = and i64 %i.dj, %.2.us.i.2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.dm = load i64, ptr %i.dl, align 16, !tbaa !47
  %i.dn = and i64 %i.dm, %.2.us.i.2
  %i.do = zext i32 %i.di to i64                   ; 2 uses
  %i.dp = shl i64 %i.dn, %i.do
  %i.dq = or i64 %i.dp, %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !47
  %i.dt = and i64 %i.ds, %.2.us.i.2
  %i.du = lshr i64 %i.dt, %i.do
  %i.dv = or i64 %i.dq, %i.du
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.125.us.i.3 = phi i64 [ %i.dv, %bb.u ], [ %.2.us.i.2, %bb.t ]
  %i.dw = add nsw i32 %.1.us.i.2, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.split.us.i.3
  %.2.us.i.3 = phi i64 [ %.125.us.i.3, %bb.v ], [ %.2.us.i.2, %.lr.ph.split.us.i.3 ] ; 8 uses
  %.1.us.i.3 = phi i32 [ %i.dw, %bb.v ], [ %.1.us.i.2, %.lr.ph.split.us.i.3 ] ; 6 uses
  %exitcond44.not.i.3 = icmp eq i32 %.val70, 4
  br i1 %exitcond44.not.i.3, label %._crit_edge.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %bb.w
  %i.dx = lshr i64 %.2.us.i.3, 16
  %i.dy = xor i64 %i.dx, %.2.us.i.3
  %i.dz = and i64 %i.dy, 281470681808895
  %.not30.us.i.4 = icmp eq i64 %i.dz, 0
  br i1 %.not30.us.i.4, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.us.i.4
  %i.ea = icmp slt i32 %.1.us.i.3, 4
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eb = sext i32 %.1.us.i.3 to i64
  %i.ec = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  %.neg.i.us.i.4 = shl nsw i32 -1, %.1.us.i.3
  %i.ee = add nsw i32 %.neg.i.us.i.4, 16
  %i.ef = load i64, ptr %i.ed, align 16, !tbaa !47
  %i.eg = and i64 %i.ef, %.2.us.i.3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !47
  %i.ej = and i64 %i.ei, %.2.us.i.3
  %i.ek = zext i32 %i.ee to i64                   ; 2 uses
  %i.el = shl i64 %i.ej, %i.ek
  %i.em = or i64 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  %i.eo = load i64, ptr %i.en, align 16, !tbaa !47
  %i.ep = and i64 %i.eo, %.2.us.i.3
  %i.eq = lshr i64 %i.ep, %i.ek
  %i.er = or i64 %i.em, %i.eq
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.125.us.i.4 = phi i64 [ %i.er, %bb.y ], [ %.2.us.i.3, %bb.x ]
  %i.es = add nsw i32 %.1.us.i.3, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.split.us.i.4
  %.2.us.i.4 = phi i64 [ %.125.us.i.4, %bb.z ], [ %.2.us.i.3, %.lr.ph.split.us.i.4 ] ; 8 uses
  %.1.us.i.4 = phi i32 [ %i.es, %bb.z ], [ %.1.us.i.3, %.lr.ph.split.us.i.4 ] ; 6 uses
  %exitcond44.not.i.4 = icmp eq i32 %.val70, 5
  br i1 %exitcond44.not.i.4, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %bb.aa
  %i.et = lshr i64 %.2.us.i.4, 32
  %.2.us.i.4.masked = and i64 %.2.us.i.4, 4294967295
  %.not30.us.i.5 = icmp eq i64 %i.et, %.2.us.i.4.masked
  br i1 %.not30.us.i.5, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us.i.5
  %i.eu = icmp slt i32 %.1.us.i.4, 5
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = sext i32 %.1.us.i.4 to i64
  %i.ew = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
  %.neg.i.us.i.5 = shl nsw i32 -1, %.1.us.i.4
  %i.ey = add nsw i32 %.neg.i.us.i.5, 32
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !47
  %i.fa = and i64 %i.ez, %.2.us.i.4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.fc = load i64, ptr %i.fb, align 16, !tbaa !47
  %i.fd = and i64 %i.fc, %.2.us.i.4
  %i.fe = zext i32 %i.ey to i64                   ; 2 uses
  %i.ff = shl i64 %i.fd, %i.fe
  %i.fg = or i64 %i.ff, %i.fa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 136
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !47
  %i.fj = and i64 %i.fi, %.2.us.i.4
  %i.fk = lshr i64 %i.fj, %i.fe
  %i.fl = or i64 %i.fg, %i.fk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.125.us.i.5 = phi i64 [ %i.fl, %bb.ac ], [ %.2.us.i.4, %bb.ab ]
  %i.fm = add nsw i32 %.1.us.i.4, 1
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.fn = lshr i64 %i.bf, 1
  %i.fo = xor i64 %i.fn, %i.bf
  %i.fp = and i64 %i.fo, 6148914691236517205
  %.not30.i = icmp eq i64 %i.fp, 0                ; 2 uses
  %.1.i = select i1 %.not30.i, i32 0, i32 1       ; 5 uses
  %exitcond.not.i = icmp eq i32 %.val70, 1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.fq = lshr i64 %i.bf, 2
  %i.fr = xor i64 %i.fq, %i.bf
  %i.fs = and i64 %i.fr, 3689348814741910323
  %.not30.i.1 = icmp eq i64 %i.fs, 0
  br i1 %.not30.i.1, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.split.i.1
  br i1 %.not30.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ft = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !46
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ft
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !46
  %i.fx = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.ft ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %.neg.i.i.1 = shl nsw i32 -1, %.1.i
  %i.fz = add nsw i32 %.neg.i.i.1, 2
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !47
  %i.gb = and i64 %i.ga, %i.bf
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.gd = load i64, ptr %i.gc, align 16, !tbaa !47
  %i.ge = and i64 %i.gd, %i.bf
  %i.gf = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gg = shl i64 %i.ge, %i.gf
  %i.gh = or i64 %i.gg, %i.gb
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !47
  %i.gk = and i64 %i.gj, %i.bf
  %i.gl = lshr i64 %i.gk, %i.gf
  %i.gm = or i64 %i.gh, %i.gl
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.125.i.1 = phi i64 [ %i.gm, %bb.af ], [ %i.bf, %bb.ae ]
  %i.gn = add nuw nsw i32 %.1.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.split.i.1
  %.2.i.1 = phi i64 [ %.125.i.1, %bb.ag ], [ %i.bf, %.lr.ph.split.i.1 ] ; 8 uses
  %.1.i.1 = phi i32 [ %i.gn, %bb.ag ], [ %.1.i, %.lr.ph.split.i.1 ] ; 6 uses
  %exitcond.not.i.1 = icmp eq i32 %.val70, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.ah
  %i.go = lshr i64 %.2.i.1, 4
  %i.gp = xor i64 %i.go, %.2.i.1
  %i.gq = and i64 %i.gp, 1085102592571150095
  %.not30.i.2 = icmp eq i64 %i.gq, 0
  br i1 %.not30.i.2, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.i.2
  %i.gr = icmp slt i32 %.1.i.1, 2
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gs = sext i32 %.1.i.1 to i64                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !46
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.gs
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !46
  %i.gw = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.gs ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %.neg.i.i.2 = shl nsw i32 -1, %.1.i.1
  %i.gy = add nsw i32 %.neg.i.i.2, 4
  %i.gz = load i64, ptr %i.gx, align 16, !tbaa !47
  %i.ha = and i64 %i.gz, %.2.i.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !47
  %i.hd = and i64 %i.hc, %.2.i.1
  %i.he = zext i32 %i.gy to i64                   ; 2 uses
  %i.hf = shl i64 %i.hd, %i.he
  %i.hg = or i64 %i.hf, %i.ha
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.hi = load i64, ptr %i.hh, align 16, !tbaa !47
  %i.hj = and i64 %i.hi, %.2.i.1
  %i.hk = lshr i64 %i.hj, %i.he
  %i.hl = or i64 %i.hg, %i.hk
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.125.i.2 = phi i64 [ %i.hl, %bb.aj ], [ %.2.i.1, %bb.ai ]
  %i.hm = add nsw i32 %.1.i.1, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.split.i.2
  %.2.i.2 = phi i64 [ %.125.i.2, %bb.ak ], [ %.2.i.1, %.lr.ph.split.i.2 ] ; 8 uses
  %.1.i.2 = phi i32 [ %i.hm, %bb.ak ], [ %.1.i.1, %.lr.ph.split.i.2 ] ; 6 uses
  %exitcond.not.i.2 = icmp eq i32 %.val70, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %bb.al
  %i.hn = lshr i64 %.2.i.2, 8
  %i.ho = xor i64 %i.hn, %.2.i.2
  %i.hp = and i64 %i.ho, 71777214294589695
  %.not30.i.3 = icmp eq i64 %i.hp, 0
  br i1 %.not30.i.3, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.i.3
  %i.hq = icmp slt i32 %.1.i.2, 3
  br i1 %i.hq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hr = sext i32 %.1.i.2 to i64                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !46
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.hr
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !46
  %i.hv = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.hr ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %.neg.i.i.3 = shl nsw i32 -1, %.1.i.2
  %i.hx = add nsw i32 %.neg.i.i.3, 8
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !47
  %i.hz = and i64 %i.hy, %.2.i.2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.ib = load i64, ptr %i.ia, align 16, !tbaa !47
  %i.ic = and i64 %i.ib, %.2.i.2
  %i.id = zext i32 %i.hx to i64                   ; 2 uses
  %i.ie = shl i64 %i.ic, %i.id
  %i.if = or i64 %i.ie, %i.hz
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 88
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !47
  %i.ii = and i64 %i.ih, %.2.i.2
  %i.ij = lshr i64 %i.ii, %i.id
  %i.ik = or i64 %i.if, %i.ij
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.125.i.3 = phi i64 [ %i.ik, %bb.an ], [ %.2.i.2, %bb.am ]
  %i.il = add nsw i32 %.1.i.2, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.split.i.3
  %.2.i.3 = phi i64 [ %.125.i.3, %bb.ao ], [ %.2.i.2, %.lr.ph.split.i.3 ] ; 8 uses
  %.1.i.3 = phi i32 [ %i.il, %bb.ao ], [ %.1.i.2, %.lr.ph.split.i.3 ] ; 6 uses
  %exitcond.not.i.3 = icmp eq i32 %.val70, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %bb.ap
  %i.im = lshr i64 %.2.i.3, 16
  %i.in = xor i64 %i.im, %.2.i.3
  %i.io = and i64 %i.in, 281470681808895
  %.not30.i.4 = icmp eq i64 %i.io, 0
  br i1 %.not30.i.4, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.i.4
  %i.ip = icmp slt i32 %.1.i.3, 4
  br i1 %i.ip, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iq = sext i32 %.1.i.3 to i64                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !46
  %i.it = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.iq
  store i32 %i.is, ptr %i.it, align 4, !tbaa !46
  %i.iu = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.iq ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  %.neg.i.i.4 = shl nsw i32 -1, %.1.i.3
  %i.iw = add nsw i32 %.neg.i.i.4, 16
  %i.ix = load i64, ptr %i.iv, align 16, !tbaa !47
  %i.iy = and i64 %i.ix, %.2.i.3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 104
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !47
  %i.jb = and i64 %i.ja, %.2.i.3
  %i.jc = zext i32 %i.iw to i64                   ; 2 uses
  %i.jd = shl i64 %i.jb, %i.jc
  %i.je = or i64 %i.jd, %i.iy
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  %i.jg = load i64, ptr %i.jf, align 16, !tbaa !47
  %i.jh = and i64 %i.jg, %.2.i.3
  %i.ji = lshr i64 %i.jh, %i.jc
  %i.jj = or i64 %i.je, %i.ji
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.125.i.4 = phi i64 [ %i.jj, %bb.ar ], [ %.2.i.3, %bb.aq ]
  %i.jk = add nsw i32 %.1.i.3, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split.i.4
  %.2.i.4 = phi i64 [ %.125.i.4, %bb.as ], [ %.2.i.3, %.lr.ph.split.i.4 ] ; 8 uses
  %.1.i.4 = phi i32 [ %i.jk, %bb.as ], [ %.1.i.3, %.lr.ph.split.i.4 ] ; 6 uses
  %exitcond.not.i.4 = icmp eq i32 %.val70, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %bb.at
  %i.jl = lshr i64 %.2.i.4, 32
  %.2.i.4.masked = and i64 %.2.i.4, 4294967295
  %.not30.i.5 = icmp eq i64 %i.jl, %.2.i.4.masked
  br i1 %.not30.i.5, label %._crit_edge.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.split.i.5
  %i.jm = icmp slt i32 %.1.i.4, 5
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jn = sext i32 %.1.i.4 to i64                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !46
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.jn
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !46
  %i.jr = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.jn ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 120
  %.neg.i.i.5 = shl nsw i32 -1, %.1.i.4
  %i.jt = add nsw i32 %.neg.i.i.5, 32
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !47
  %i.jv = and i64 %i.ju, %.2.i.4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 128
  %i.jx = load i64, ptr %i.jw, align 16, !tbaa !47
  %i.jy = and i64 %i.jx, %.2.i.4
  %i.jz = zext i32 %i.jt to i64                   ; 2 uses
  %i.ka = shl i64 %i.jy, %i.jz
  %i.kb = or i64 %i.ka, %i.jv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 136
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !47
  %i.ke = and i64 %i.kd, %.2.i.4
  %i.kf = lshr i64 %i.ke, %i.jz
  %i.kg = or i64 %i.kb, %i.kf
end_hunk_1
