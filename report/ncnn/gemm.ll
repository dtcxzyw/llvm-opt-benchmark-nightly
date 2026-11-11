Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm?download=true
inline.NumInlined: 65
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev:bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn4Gemm12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 dereferenceable(580) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 27 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 20 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 21 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 26 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %.not184 = icmp eq i32 %i.l, 0                  ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  br i1 %.not184, label %bb.d, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  br i1 %.not184, label %.thread379, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.o = phi ptr [ %i.n, %.thread ], [ %i.m, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.e

.thread379:                                       ; preds = %.thread
  %i.q = load ptr, ptr %1, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  br label %bb.e

bb.e:                                             ; preds = %.thread379, %bb.d, %bb.c
  %i.s = phi ptr [ %i.o, %bb.c ], [ %i.n, %.thread379 ], [ %i.m, %bb.d ] ; 19 uses
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %.thread379 ], [ %i.r, %bb.d ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  store i64 0, ptr %i.ad, align 16, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !41
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %4, %i.s
  br i1 %i.ah, label %_ZN4ncnn3MataSERKS0_.exit346, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %.not.i339 = icmp eq ptr %i.aj, null
  br i1 %.not.i339, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = atomicrmw add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre514 = load ptr, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %.not.i.i340 = icmp eq ptr %.pre514, null
  br i1 %.not.i.i340, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = atomicrmw add ptr %.pre514, i32 -1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %_ZN4ncnn3Mat7releaseEv.exit.i341

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.x, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i342 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %4, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i342, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i341 unwind label %bb.n, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %.not.i18.i343 = icmp eq ptr %i.ao, null
  br i1 %.not.i18.i343, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ao) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i341

_ZN4ncnn3Mat7releaseEv.exit.i341:                 ; preds = %bb.g, %bb.l, %bb.m, %bb.k, %bb.i, %bb.h
  store i64 0, ptr %i.ad, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.as = load <2 x ptr>, ptr %i.s, align 8, !tbaa !54
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !21
  store <2 x ptr> %i.as, ptr %4, align 16, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !55
  store i64 %i.av, ptr %i.v, align 16, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !56
  store i32 %i.ax, ptr %i.w, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  store ptr %i.az, ptr %i.x, align 16, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bb = load <4 x i32>, ptr %i.ba, align 8, !tbaa !57 ; 3 uses
  store <4 x i32> %i.bb, ptr %i.y, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  store i32 %i.bd, ptr %i.ac, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  store i64 %i.bf, ptr %i.ad, align 16, !tbaa !22
  %i.bg = extractelement <4 x i32> %i.bb, i64 1
  %i.bh = extractelement <4 x i32> %i.bb, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit346

bb.n:                                             ; preds = %bb.k, %bb.r, %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.o:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.bn, i32 noundef %i.bp, i64 noundef 1, i32 noundef 1, ptr noundef %i.br)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %4, align 16, !tbaa !21   ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit353

_ZNK4ncnn3Mat5emptyEv.exit353:                    ; preds = %bb.q
  %i.bu = load i64, ptr %i.ad, align 16, !tbaa !22 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bu, %i.bw
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %.preheader393

.preheader393:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit353
  %i.bz = load i32, ptr %i.aa, align 16, !tbaa !66 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %.pre516 = load i32, ptr %i.z, align 4, !tbaa !63 ; 3 uses
  %i.cb = icmp sgt i32 %.pre516, 0
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %.lr.ph410.split.preheader, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph410.split.preheader:                        ; preds = %.preheader393
  %.pre512 = load i64, ptr %i.v, align 16, !tbaa !55
  br label %.lr.ph410.split

.lr.ph410.split:                                  ; preds = %.lr.ph410.split.preheader, %._crit_edge
  %i.cc = phi i32 [ %i.bz, %.lr.ph410.split.preheader ], [ %i.ck, %._crit_edge ]
  %i.cd = phi i32 [ %.pre516, %.lr.ph410.split.preheader ], [ %i.cl, %._crit_edge ] ; 3 uses
  %i.ce = phi i64 [ %.pre512, %.lr.ph410.split.preheader ], [ %i.cm, %._crit_edge ] ; 2 uses
  %i.cf = phi ptr [ %i.bs, %.lr.ph410.split.preheader ], [ %i.cn, %._crit_edge ] ; 2 uses
  %indvars.iv474 = phi i64 [ 0, %.lr.ph410.split.preheader ], [ %indvars.iv.next475, %._crit_edge ] ; 3 uses
  %10 = sext i32 %i.cd to i64
  %i.cg = mul nsw i64 %indvars.iv474, %10
  %i.ch = mul i64 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  %i.cj = icmp sgt i32 %i.cd, 0
  br i1 %i.cj, label %.lr.ph408, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph408
  %.pre = load ptr, ptr %4, align 16, !tbaa !21
  %.pre511 = load i64, ptr %i.v, align 16, !tbaa !55
  %.pre513 = load i32, ptr %i.aa, align 16, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph410.split
  %i.ck = phi i32 [ %.pre513, %._crit_edge.loopexit ], [ %i.cc, %.lr.ph410.split ] ; 3 uses
  %i.cl = phi i32 [ %i.da, %._crit_edge.loopexit ], [ %i.cd, %.lr.ph410.split ] ; 2 uses
  %i.cm = phi i64 [ %.pre511, %._crit_edge.loopexit ], [ %i.ce, %.lr.ph410.split ]
  %i.cn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cf, %.lr.ph410.split ] ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %i.co = sext i32 %i.ck to i64
  %i.cp = icmp slt i64 %indvars.iv.next475, %i.co
  br i1 %i.cp, label %.lr.ph410.split, label %_ZN4ncnn3MataSERKS0_.exit346.loopexit, !llvm.loop !104

.lr.ph408:                                        ; preds = %.lr.ph410.split, %.lr.ph408
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %.lr.ph408 ], [ 0, %.lr.ph410.split ] ; 3 uses
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.cr = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %indvars.iv471, %i.cs
  %i.cu = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.cv = mul i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv474
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv471
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !75
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.da = load i32, ptr %i.z, align 4, !tbaa !63  ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next472, %i.db
  br i1 %i.dc, label %.lr.ph408, label %._crit_edge.loopexit, !llvm.loop !105

bb.r:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !62
  %i.df = icmp eq i32 %i.de, 3
  %.in.v = select i1 %i.df, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.s, i64 %.in.v
  %i.dg = load i32, ptr %.in, align 8, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.dg, i32 noundef %i.di, i64 noundef 4, i32 noundef 1, ptr noundef %i.dk)
          to label %bb.s unwind label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %4, align 16, !tbaa !21   ; 11 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.s
  %i.dn = load i64, ptr %i.ad, align 16, !tbaa !22 ; 5 uses
  %i.do = load i32, ptr %i.ac, align 8, !tbaa !58 ; 5 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul i64 %i.dn, %i.dp
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %.preheader394

.preheader394:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  %i.ds = load i32, ptr %i.aa, align 16, !tbaa !66 ; 7 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %.pre515 = load i32, ptr %i.z, align 4, !tbaa !63 ; 10 uses
  br i1 %i.dt, label %.lr.ph402, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph402:                                        ; preds = %.preheader394
  %i.du = sext i32 %.pre515 to i64                ; 5 uses
  %i.dv = load i64, ptr %i.v, align 16, !tbaa !55 ; 5 uses
  %factor.op.mul403 = mul i64 %i.dv, %i.du        ; 2 uses
  %i.dw = icmp sgt i32 %.pre515, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  br i1 %i.dw, label %.lr.ph402.split, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph402.split:                                  ; preds = %.lr.ph402
  %i.dy = load i32, ptr %i.dd, align 8, !tbaa !62
  %i.dz = icmp eq i32 %i.dy, 3
  %i.ea = load ptr, ptr %i.s, align 8, !tbaa !21  ; 4 uses
  br i1 %i.dz, label %.lr.ph402.split.split.us, label %.lr.ph402.split.split

.lr.ph402.split.split.us:                         ; preds = %.lr.ph402.split
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !22, !noalias !133 ; 2 uses
  %i.ec = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !133 ; 2 uses
  %factor.op.mul397.us = mul i64 %i.eb, %i.ec     ; 11 uses
  %wide.trip.count469 = zext nneg i32 %i.ds to i64 ; 2 uses
  %wide.trip.count464 = zext nneg i32 %.pre515 to i64 ; 7 uses
  %i.ed = add nsw i64 %wide.trip.count464, -1     ; 2 uses
  %i.ee = mul i64 %i.ec, %i.eb                    ; 2 uses
  %i.ef = sub i64 0, %i.ee
  %i.eg = mul i64 %i.dv, %i.du
  %i.eh = mul i64 %i.ee, %i.ed
  %i.ei = add nsw i64 %wide.trip.count469, -1
  %i.ej = mul i64 %i.dv, %i.ei
  %i.ek = mul i64 %i.ej, %i.du
  %i.el = shl nuw nsw i64 %wide.trip.count464, 2
  %i.em = getelementptr i8, ptr %i.dl, i64 %i.ek
  %scevgep679 = getelementptr i8, ptr %i.em, i64 %i.el
  %min.iters.check681 = icmp ult i32 %.pre515, 72
  %i.en = icmp slt i64 %factor.op.mul397.us, 0    ; 2 uses
  %i.eo = select i1 %i.en, i64 %i.ef, i64 %factor.op.mul397.us
  %mul667 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.eo, i64 %i.ed) ; 2 uses
  %mul.result668 = extractvalue { i64, i1 } %mul667, 0 ; 2 uses
  %mul.overflow669 = extractvalue { i64, i1 } %mul667, 1
  %i.ep = sub i64 0, %mul.result668
  %i.eq = getelementptr i8, ptr %i.ea, i64 %i.eh
  %stride.check686 = icmp slt i64 %i.eg, 0
  %n.vec688 = and i64 %wide.trip.count464, 2147483644 ; 3 uses
  %cmp.n693 = icmp eq i64 %n.vec688, %wide.trip.count464
  %xtraiter738 = and i64 %wide.trip.count464, 3   ; 2 uses
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.split.us.us, %.lr.ph402.split.split.us
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %._crit_edge.split.us.us ], [ 0, %.lr.ph402.split.split.us ] ; 4 uses
  %.reass404.us = mul i64 %factor.op.mul403, %indvars.iv466
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.reass404.us ; 6 uses
  %invariant.gep399.us = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv466 ; 17 uses
  br i1 %min.iters.check681, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.scevcheck666

vector.scevcheck666:                              ; preds = %.lr.ph.us
  %i.es = getelementptr i8, ptr %invariant.gep399.us, i64 %mul.result668
  %i.et = getelementptr i8, ptr %invariant.gep399.us, i64 %i.ep
  %i.eu = icmp ult ptr %i.es, %invariant.gep399.us
  %i.ev = icmp ugt ptr %i.et, %invariant.gep399.us
  %i.ew = select i1 %i.en, i1 %i.ev, i1 %i.eu
  %i.ex = or i1 %i.ew, %mul.overflow669
  br i1 %i.ex, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.memcheck682

vector.memcheck682:                               ; preds = %vector.scevcheck666
  %i.ey = shl nuw nsw i64 %indvars.iv466, 2
  %i.ez = getelementptr i8, ptr %i.eq, i64 %i.ey  ; 4 uses
  %i.fa = icmp ult ptr %invariant.gep399.us, %i.ez
  %i.fb = select i1 %i.fa, ptr %invariant.gep399.us, ptr %i.ez
  %i.fc = icmp ugt ptr %invariant.gep399.us, %i.ez
  %i.fd = select i1 %i.fc, ptr %invariant.gep399.us, ptr %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %bound0683 = icmp ult ptr %i.dl, %i.fe
  %bound1684 = icmp ult ptr %i.fb, %scevgep679
  %found.conflict685 = and i1 %bound0683, %bound1684
  %i.ff = or i1 %found.conflict685, %stride.check686
  br i1 %i.ff, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.body689

vector.body689:                                   ; preds = %vector.memcheck682, %vector.body689
  %index690 = phi i64 [ %index.next691, %vector.body689 ], [ 0, %vector.memcheck682 ] ; 6 uses
  %i.fg = or disjoint i64 %index690, 1
  %i.fh = or disjoint i64 %index690, 2
  %i.fi = or disjoint i64 %index690, 3
  %i.fj = mul i64 %factor.op.mul397.us, %index690
  %i.fk = mul i64 %factor.op.mul397.us, %i.fg
  %i.fl = mul i64 %factor.op.mul397.us, %i.fh
  %i.fm = mul i64 %factor.op.mul397.us, %i.fi
  %i.fn = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fj
  %i.fo = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fk
  %i.fp = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fl
  %i.fq = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fm
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !59, !alias.scope !134
  %i.fs = load float, ptr %i.fo, align 4, !tbaa !59, !alias.scope !134
  %i.ft = load float, ptr %i.fp, align 4, !tbaa !59, !alias.scope !134
  %i.fu = load float, ptr %i.fq, align 4, !tbaa !59, !alias.scope !134
  %i.fv = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 2
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 3
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index690
  store <4 x float> %i.fy, ptr %i.fz, align 4, !tbaa !59, !alias.scope !135, !noalias !134
  %index.next691 = add nuw i64 %index690, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next691, %n.vec688
  br i1 %i.ga, label %middle.block692, label %vector.body689, !llvm.loop !111

middle.block692:                                  ; preds = %vector.body689
  br i1 %cmp.n693, label %._crit_edge.split.us.us, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader

_ZN4ncnn3MatD2Ev.exit231.us.us.preheader:         ; preds = %vector.memcheck682, %vector.scevcheck666, %.lr.ph.us, %middle.block692
  %indvars.iv461.ph = phi i64 [ 0, %vector.memcheck682 ], [ 0, %vector.scevcheck666 ], [ 0, %.lr.ph.us ], [ %n.vec688, %middle.block692 ] ; 3 uses
  br i1 %lcmp.mod739.not, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol

_ZN4ncnn3MatD2Ev.exit231.us.us.prol:              ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol
  %indvars.iv461.prol = phi i64 [ %indvars.iv.next462.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ], [ %indvars.iv461.ph, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ] ; 3 uses
  %prol.iter740 = phi i64 [ %prol.iter740.next, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ], [ 0, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ]
  %.reass398.us.prol = mul i64 %factor.op.mul397.us, %indvars.iv461.prol
  %gep400.us.prol = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us.prol
  %i.gb = load float, ptr %gep400.us.prol, align 4, !tbaa !59
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv461.prol
  store float %i.gb, ptr %i.gc, align 4, !tbaa !59
  %indvars.iv.next462.prol = add nuw nsw i64 %indvars.iv461.prol, 1 ; 2 uses
  %prol.iter740.next = add i64 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i64 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol, !llvm.loop !112

_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit:     ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader
  %indvars.iv461.unr = phi i64 [ %indvars.iv461.ph, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ], [ %indvars.iv.next462.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ]
  %i.gd = sub nsw i64 %indvars.iv461.ph, %wide.trip.count464
  %i.ge = icmp ugt i64 %i.gd, -4
end_hunk_0
begin_hunk_1_@_ZNK4ncnn4Gemm12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.jd = phi ptr [ %i.at, %_ZN4ncnn3Mat7releaseEv.exit.i341 ], [ %i.dl, %._crit_edge.split.us.us ], [ null, %bb.f ], [ %i.cn, %_ZN4ncnn3MataSERKS0_.exit346.loopexit ], [ %i.dl, %.preheader394 ], [ %i.dl, %.lr.ph402 ], [ %i.bs, %.preheader393 ], [ %i.dl, %._crit_edge.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %i.jd, ptr %5, align 8, !tbaa !21
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.jf = load ptr, ptr %i.u, align 8, !tbaa !19  ; 3 uses
  store ptr %i.jf, ptr %i.je, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.jh = load i64, ptr %i.v, align 16, !tbaa !55
  store i64 %i.jh, ptr %i.jg, align 8, !tbaa !55
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jj = load i32, ptr %i.w, align 8, !tbaa !56
  store i32 %i.jj, ptr %i.ji, align 8, !tbaa !56
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.jl = load ptr, ptr %i.x, align 16, !tbaa !20
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jn = load i32, ptr %i.y, align 8, !tbaa !62
  store i32 %i.jn, ptr %i.jm, align 8, !tbaa !62
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  store i32 %i.jc, ptr %i.jo, align 4, !tbaa !63
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  store i32 %i.jb, ptr %i.jp, align 8, !tbaa !66
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.jr = load i32, ptr %i.ab, align 4, !tbaa !138
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !138
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i32 %i.ja, ptr %i.js, align 8, !tbaa !58
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 %i.iz, ptr %i.jt, align 8, !tbaa !22
  %.not.i354 = icmp eq ptr %i.jf, null
  br i1 %.not.i354, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit346
  %i.ju = atomicrmw add ptr %i.jf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.t, %_ZN4ncnn3MataSERKS0_.exit346
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !19 ; 2 uses
  %i.jz = load <2 x ptr>, ptr %i.jv, align 8, !tbaa !54
  store <2 x ptr> %i.jz, ptr %6, align 16, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !55
  store i64 %i.kc, ptr %i.ka, align 16, !tbaa !55
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !56
  store i32 %i.kf, ptr %i.kd, align 8, !tbaa !56
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20
  store ptr %i.ki, ptr %i.kg, align 16, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.kl = load <4 x i32>, ptr %i.kk, align 8, !tbaa !57
  store <4 x i32> %i.kl, ptr %i.kj, align 8, !tbaa !57
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !58
  store i32 %i.ko, ptr %i.km, align 8, !tbaa !58
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !22
  store i64 %i.kr, ptr %i.kp, align 16, !tbaa !22
  %.not.i355 = icmp eq ptr %i.jy, null
  br i1 %.not.i355, label %_ZN4ncnn3Mat6addrefEv.exit356, label %bb.u

bb.u:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.ks = atomicrmw add ptr %i.jy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit356

_ZN4ncnn3Mat6addrefEv.exit356:                    ; preds = %bb.u, %_ZN4ncnn3Mat6addrefEv.exit
  %i.kt = load i64, ptr %i.jg, align 8, !tbaa !55
  %.not187 = icmp eq i64 %i.kt, 1
  br i1 %.not187, label %.loopexit392, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit356
  %i.ku = load i32, ptr %i.z, align 4, !tbaa !63
  %i.kv = load i32, ptr %i.y, align 8, !tbaa !62
  %i.kw = icmp eq i32 %i.kv, 3
  %i.kx = load i32, ptr %i.ac, align 8
  %i.ky = load i32, ptr %i.aa, align 16
  %i.kz = select i1 %i.kw, i32 %i.kx, i32 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ku, i32 noundef %i.kz, i64 noundef 1, i32 noundef 1, ptr noundef %i.lb)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lc = load ptr, ptr %5, align 8, !tbaa !21
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %_ZNK4ncnn3Mat5emptyEv.exit351

_ZNK4ncnn3Mat5emptyEv.exit351:                    ; preds = %bb.w
  %i.le = load i64, ptr %i.jt, align 8, !tbaa !22
  %i.lf = load i32, ptr %i.js, align 8, !tbaa !58
  %i.lg = sext i32 %i.lf to i64
  %i.lh = mul i64 %i.le, %i.lg
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %bb.y

bb.x:                                             ; preds = %bb.y, %bb.v
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit351
  %i.lk = load i32, ptr %i.jp, align 8, !tbaa !66
  %i.ll = load ptr, ptr %i.la, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.lk, i64 noundef 4, i32 noundef 1, ptr noundef %i.ll)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.lm = load ptr, ptr %6, align 16, !tbaa !21
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %_ZNK4ncnn3Mat5emptyEv.exit350

_ZNK4ncnn3Mat5emptyEv.exit350:                    ; preds = %bb.z
  %i.lo = load i64, ptr %i.kp, align 16, !tbaa !22
  %i.lp = load i32, ptr %i.km, align 8, !tbaa !58
  %i.lq = sext i32 %i.lp to i64
  %i.lr = mul i64 %i.lo, %i.lq
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %.preheader391

.preheader391:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit350
  %i.lt = load i32, ptr %i.jp, align 8, !tbaa !66 ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph422.preheader, label %.loopexit392

.lr.ph422.preheader:                              ; preds = %.preheader391
  %.pre520 = load ptr, ptr %4, align 16, !tbaa !21
  %.pre521 = load i32, ptr %i.jo, align 4, !tbaa !63
  br label %.lr.ph422

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge420
  %i.lv = phi i32 [ %i.lt, %.lr.ph422.preheader ], [ %i.nc, %._crit_edge420 ]
  %i.lw = phi i32 [ %.pre521, %.lr.ph422.preheader ], [ %i.nd, %._crit_edge420 ] ; 5 uses
  %i.lx = phi ptr [ %.pre520, %.lr.ph422.preheader ], [ %i.ne, %._crit_edge420 ] ; 2 uses
  %indvars.iv485 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next486, %._crit_edge420 ] ; 4 uses
  %i.ly = load i32, ptr %i.y, align 8, !tbaa !62
  %i.lz = icmp eq i32 %i.ly, 3
  %i.ma = load i64, ptr %i.ad, align 16
  %i.mb = load i32, ptr %i.z, align 4
  %i.mc = sext i32 %i.mb to i64
  %i.md = select i1 %i.lz, i64 %i.ma, i64 %i.mc
  %i.me = mul i64 %i.md, %indvars.iv485
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.me ; 3 uses
  %i.mg = icmp sgt i32 %i.lw, 0                   ; 2 uses
  br i1 %i.mg, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %.lr.ph422
  %wide.trip.count480 = zext nneg i32 %i.lw to i64 ; 3 uses
  %min.iters.check696 = icmp ult i32 %i.lw, 8
  br i1 %min.iters.check696, label %.lr.ph414.preheader728, label %vector.ph697

vector.ph697:                                     ; preds = %.lr.ph414.preheader
  %n.vec698 = and i64 %wide.trip.count480, 2147483640 ; 3 uses
  br label %vector.body699

vector.body699:                                   ; preds = %vector.body699, %vector.ph697
  %index700 = phi i64 [ 0, %vector.ph697 ], [ %index.next703, %vector.body699 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph697 ], [ %i.ml, %vector.body699 ]
  %vec.phi701 = phi <4 x float> [ zeroinitializer, %vector.ph697 ], [ %i.mm, %vector.body699 ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index700 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %wide.load = load <4 x float>, ptr %i.mh, align 4, !tbaa !59
  %wide.load702 = load <4 x float>, ptr %i.mi, align 4, !tbaa !59
  %i.mj = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.mk = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load702)
  %i.ml = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.mj) ; 2 uses
  %i.mm = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi701, <4 x float> %i.mk) ; 2 uses
  %index.next703 = add nuw i64 %index700, 8       ; 2 uses
  %i.mn = icmp eq i64 %index.next703, %n.vec698
  br i1 %i.mn, label %middle.block704, label %vector.body699, !llvm.loop !121

middle.block704:                                  ; preds = %vector.body699
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ml, <4 x float> %i.mm)
  %i.mo = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n705 = icmp eq i64 %n.vec698, %wide.trip.count480
  br i1 %cmp.n705, label %._crit_edge415, label %.lr.ph414.preheader728

.lr.ph414.preheader728:                           ; preds = %.lr.ph414.preheader, %middle.block704
  %indvars.iv477.ph = phi i64 [ 0, %.lr.ph414.preheader ], [ %n.vec698, %middle.block704 ]
  %.0377411.ph = phi float [ 0.000000e+00, %.lr.ph414.preheader ], [ %i.mo, %middle.block704 ]
  br label %.lr.ph414

._crit_edge415:                                   ; preds = %.lr.ph414, %middle.block704, %.lr.ph422
  %.0377.lcssa = phi float [ 0.000000e+00, %.lr.ph422 ], [ %i.mo, %middle.block704 ], [ %.sroa.speculated366, %.lr.ph414 ] ; 2 uses
  %i.mp = fcmp fast oeq float %.0377.lcssa, 0.000000e+00
  %i.mq = fdiv fast float 1.270000e+02, %.0377.lcssa
  %i.mr = select fast i1 %i.mp, float 1.000000e+00, float %i.mq ; 2 uses
  %i.ms = load ptr, ptr %6, align 16, !tbaa !21
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv485
  store float %i.mr, ptr %i.mt, align 4, !tbaa !59
  %i.mu = load ptr, ptr %5, align 8, !tbaa !21
  %11 = sext i32 %i.lw to i64
  %i.mv = mul nsw i64 %indvars.iv485, %11
  %i.mw = load i64, ptr %i.jg, align 8, !tbaa !55
  %i.mx = mul i64 %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mx
  br i1 %i.mg, label %.lr.ph419, label %._crit_edge420

.lr.ph414:                                        ; preds = %.lr.ph414.preheader728, %.lr.ph414
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %.lr.ph414 ], [ %indvars.iv477.ph, %.lr.ph414.preheader728 ] ; 2 uses
  %.0377411 = phi float [ %.sroa.speculated366, %.lr.ph414 ], [ %.0377411.ph, %.lr.ph414.preheader728 ]
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv477
  %i.na = load float, ptr %i.mz, align 4, !tbaa !59
  %i.nb = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.na)
  %.sroa.speculated366 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0377411, float %i.nb) ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next478, %wide.trip.count480
  br i1 %exitcond481.not, label %._crit_edge415, label %.lr.ph414, !llvm.loop !122

._crit_edge420.loopexit:                          ; preds = %.lr.ph419
  %.pre519 = load ptr, ptr %4, align 16, !tbaa !21
  %.pre522 = load i32, ptr %i.jp, align 8, !tbaa !66
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit, %._crit_edge415
  %i.nc = phi i32 [ %.pre522, %._crit_edge420.loopexit ], [ %i.lv, %._crit_edge415 ] ; 2 uses
  %i.nd = phi i32 [ %i.nn, %._crit_edge420.loopexit ], [ %i.lw, %._crit_edge415 ]
  %i.ne = phi ptr [ %.pre519, %._crit_edge420.loopexit ], [ %i.lx, %._crit_edge415 ]
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.nf = sext i32 %i.nc to i64
  %i.ng = icmp slt i64 %indvars.iv.next486, %i.nf
  br i1 %i.ng, label %.lr.ph422, label %.loopexit392, !llvm.loop !123

.lr.ph419:                                        ; preds = %._crit_edge415, %.lr.ph419
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %.lr.ph419 ], [ 0, %._crit_edge415 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv482
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !59
  %i.nj = fmul fast float %i.ni, %i.mr
  %i.nk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.nj)
  %i.nl = fptosi float %i.nk to i32
  %spec.select5.i = call i32 @llvm.smax.i32(i32 %i.nl, i32 -127)
  %.06.i = call i32 @llvm.smin.i32(i32 %spec.select5.i, i32 127)
  %.0.i = trunc nsw i32 %.06.i to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 %indvars.iv482
  store i8 %.0.i, ptr %i.nm, align 1, !tbaa !75
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %i.nn = load i32, ptr %i.jo, align 4, !tbaa !63 ; 2 uses
  %i.no = sext i32 %i.nn to i64
  %i.np = icmp slt i64 %indvars.iv.next483, %i.no
  br i1 %i.np, label %.lr.ph419, label %._crit_edge420.loopexit, !llvm.loop !124

.loopexit392:                                     ; preds = %._crit_edge420, %.preheader391, %_ZN4ncnn3Mat6addrefEv.exit356
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !19 ; 2 uses
  %i.nt = load <2 x ptr>, ptr %i.t, align 8, !tbaa !54
  store <2 x ptr> %i.nt, ptr %7, align 16, !tbaa !54
  %i.nu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !55 ; 2 uses
  store i64 %i.nw, ptr %i.nu, align 16, !tbaa !55
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !56
  store i32 %i.nz, ptr %i.nx, align 8, !tbaa !56
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !20
  store ptr %i.oc, ptr %i.oa, align 16, !tbaa !20
  %i.od = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.oj = load <4 x i32>, ptr %i.oe, align 8, !tbaa !57
  store <4 x i32> %i.oj, ptr %i.od, align 8, !tbaa !57
  %i.ok = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !58
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !58
  %i.on = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 3 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !22
  store i64 %i.op, ptr %i.on, align 16, !tbaa !22
  %.not.i357 = icmp eq ptr %i.ns, null
  br i1 %.not.i357, label %_ZN4ncnn3Mat6addrefEv.exit358, label %bb.aa

bb.aa:                                            ; preds = %.loopexit392
  %i.oq = atomicrmw add ptr %i.ns, i32 1 acq_rel, align 4 ; 0 uses
  %.pre523 = load i64, ptr %i.nu, align 16, !tbaa !55
  br label %_ZN4ncnn3Mat6addrefEv.exit358

_ZN4ncnn3Mat6addrefEv.exit358:                    ; preds = %bb.aa, %.loopexit392
  %i.or = phi i64 [ %.pre523, %bb.aa ], [ %i.nw, %.loopexit392 ]
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ot = load float, ptr %i.os, align 8, !tbaa !60
  %.not188 = icmp eq i64 %i.or, 1
  br i1 %.not188, label %.loopexit389, label %bb.ab

bb.ab:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit358
  %i.ou = load i32, ptr %i.og, align 4, !tbaa !63
  %i.ov = load i32, ptr %i.oe, align 8, !tbaa !62
  %i.ow = icmp eq i32 %i.ov, 3
  %.in189 = select i1 %i.ow, ptr %i.ol, ptr %i.oi
  %i.ox = load i32, ptr %.in189, align 8, !tbaa !57
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.ou, i32 noundef %i.ox, i64 noundef 1, i32 noundef 1, ptr noundef %i.oz)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.pa = load ptr, ptr %7, align 16, !tbaa !21
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %_ZNK4ncnn3Mat5emptyEv.exit349.thread, label %_ZNK4ncnn3Mat5emptyEv.exit349

_ZNK4ncnn3Mat5emptyEv.exit349:                    ; preds = %bb.ac
  %i.pc = load i64, ptr %i.on, align 16, !tbaa !22
  %i.pd = load i32, ptr %i.ok, align 8, !tbaa !58
  %i.pe = sext i32 %i.pd to i64
  %i.pf = mul i64 %i.pc, %i.pe
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %_ZNK4ncnn3Mat5emptyEv.exit349.thread, label %.preheader390

.preheader390:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit349
  %i.ph = load i32, ptr %i.oh, align 16, !tbaa !66 ; 3 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph431, label %.loopexit389

.lr.ph431:                                        ; preds = %.preheader390
  %i.pj = load i32, ptr %i.oe, align 8, !tbaa !62
  %i.pk = icmp eq i32 %i.pj, 3
  %i.pl = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.pm = load i32, ptr %i.of, align 4, !tbaa !63 ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 0
  br i1 %i.pn, label %.lr.ph431.split.us.preheader, label %.lr.ph443.preheader

.lr.ph431.split.us.preheader:                     ; preds = %.lr.ph431
  %wide.trip.count496 = zext nneg i32 %i.ph to i64
  %wide.trip.count491 = zext nneg i32 %i.pm to i64 ; 3 uses
  %min.iters.check708 = icmp ult i32 %i.pm, 8
  %n.vec710 = and i64 %wide.trip.count491, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec710, %wide.trip.count491
  br label %.lr.ph431.split.us

.lr.ph431.split.us:                               ; preds = %.lr.ph431.split.us.preheader, %._crit_edge427.us
  %indvars.iv493 = phi i64 [ 0, %.lr.ph431.split.us.preheader ], [ %indvars.iv.next494, %._crit_edge427.us ] ; 2 uses
  %.0429.us = phi float [ 0.000000e+00, %.lr.ph431.split.us.preheader ], [ %.sroa.speculated.us.lcssa, %._crit_edge427.us ] ; 2 uses
  br i1 %i.pk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph431.split.us
  %i.po = load i32, ptr %i.og, align 4, !tbaa !63
  %i.pp = sext i32 %i.po to i64
  br label %.lr.ph426.us

bb.ae:                                            ; preds = %.lr.ph431.split.us
  %i.pq = load i64, ptr %i.oo, align 8, !tbaa !22
  br label %.lr.ph426.us

.lr.ph426.us:                                     ; preds = %bb.ae, %bb.ad
  %i.pr = phi i64 [ %i.pq, %bb.ae ], [ %i.pp, %bb.ad ]
  %i.ps = mul i64 %i.pr, %indvars.iv493
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.ps ; 2 uses
  br i1 %min.iters.check708, label %scalar.ph707.preheader, label %vector.ph709

vector.ph709:                                     ; preds = %.lr.ph426.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0429.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph709
  %index712 = phi i64 [ 0, %vector.ph709 ], [ %index.next717, %vector.body711 ] ; 2 uses
  %vec.phi713 = phi <4 x float> [ %broadcast.splat, %vector.ph709 ], [ %i.py, %vector.body711 ]
  %vec.phi714 = phi <4 x float> [ %broadcast.splat, %vector.ph709 ], [ %i.pz, %vector.body711 ]
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index712 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %wide.load715 = load <4 x float>, ptr %i.pu, align 4, !tbaa !59
  %wide.load716 = load <4 x float>, ptr %i.pv, align 4, !tbaa !59
  %i.pw = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load715)
  %i.px = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load716)
  %i.py = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi713, <4 x float> %i.pw) ; 2 uses
  %i.pz = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi714, <4 x float> %i.px) ; 2 uses
  %index.next717 = add nuw i64 %index712, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next717, %n.vec710
  br i1 %i.qa, label %middle.block718, label %vector.body711, !llvm.loop !125

middle.block718:                                  ; preds = %vector.body711
  %rdx.minmax.select720 = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.py, <4 x float> %i.pz)
  %i.qb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select720) ; 2 uses
  br i1 %cmp.n721, label %._crit_edge427.us, label %scalar.ph707.preheader

scalar.ph707.preheader:                           ; preds = %.lr.ph426.us, %middle.block718
  %indvars.iv488.ph = phi i64 [ 0, %.lr.ph426.us ], [ %n.vec710, %middle.block718 ]
  %.1376423.us.ph = phi float [ %.0429.us, %.lr.ph426.us ], [ %i.qb, %middle.block718 ]
  br label %scalar.ph707

scalar.ph707:                                     ; preds = %scalar.ph707.preheader, %scalar.ph707
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %scalar.ph707 ], [ %indvars.iv488.ph, %scalar.ph707.preheader ] ; 2 uses
  %.1376423.us = phi float [ %.sroa.speculated.us, %scalar.ph707 ], [ %.1376423.us.ph, %scalar.ph707.preheader ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv488
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !59
  %i.qe = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qd)
  %.sroa.speculated.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.1376423.us, float %i.qe) ; 2 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %._crit_edge427.us, label %scalar.ph707, !llvm.loop !126

._crit_edge427.us:                                ; preds = %scalar.ph707, %middle.block718
  %.sroa.speculated.us.lcssa = phi float [ %i.qb, %middle.block718 ], [ %.sroa.speculated.us, %scalar.ph707 ] ; 3 uses
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %wide.trip.count496
  br i1 %exitcond497.not, label %._crit_edge432, label %.lr.ph431.split.us, !llvm.loop !127

bb.af:                                            ; preds = %bb.ab
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

._crit_edge432:                                   ; preds = %._crit_edge427.us
  %i.qg = fcmp fast oeq float %.sroa.speculated.us.lcssa, 0.000000e+00
  %i.qh = fdiv fast float 1.270000e+02, %.sroa.speculated.us.lcssa
  %i.qi = select fast i1 %i.qg, float 1.000000e+00, float %i.qh
  br label %.lr.ph443.preheader

.lr.ph443.preheader:                              ; preds = %._crit_edge432, %.lr.ph431
  %i.qj = phi float [ %i.qi, %._crit_edge432 ], [ 1.000000e+00, %.lr.ph431 ] ; 2 uses
  br label %.lr.ph443

.lr.ph443:                                        ; preds = %.lr.ph443.preheader, %._crit_edge440
  %i.qk = phi i32 [ %i.ph, %.lr.ph443.preheader ], [ %i.rb, %._crit_edge440 ]
  %indvars.iv501 = phi i64 [ 0, %.lr.ph443.preheader ], [ %indvars.iv.next502, %._crit_edge440 ] ; 3 uses
  %i.ql = load i32, ptr %i.oe, align 8, !tbaa !62
  %i.qm = icmp eq i32 %i.ql, 3
  br i1 %i.qm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph443
  %i.qn = load i64, ptr %i.oo, align 8, !tbaa !22
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph443
  %i.qo = load i32, ptr %i.og, align 4, !tbaa !63
  %i.qp = sext i32 %i.qo to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.qq = phi i64 [ %i.qn, %bb.ag ], [ %i.qp, %bb.ah ]
  %i.qr = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.qs = mul i64 %i.qq, %indvars.iv501
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qs
  %i.qu = load ptr, ptr %7, align 16, !tbaa !21
  %i.qv = load i32, ptr %i.of, align 4, !tbaa !63 ; 2 uses
  %12 = sext i32 %i.qv to i64
  %i.qw = mul nsw i64 %indvars.iv501, %12
  %i.qx = load i64, ptr %i.nu, align 16, !tbaa !55
  %i.qy = mul i64 %i.qw, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qy
  %i.ra = icmp sgt i32 %i.qv, 0
  br i1 %i.ra, label %.lr.ph439, label %._crit_edge440

._crit_edge440.loopexit:                          ; preds = %.lr.ph439
  %.pre524 = load i32, ptr %i.oh, align 16, !tbaa !66
  br label %._crit_edge440

._crit_edge440:                                   ; preds = %._crit_edge440.loopexit, %bb.ai
  %i.rb = phi i32 [ %.pre524, %._crit_edge440.loopexit ], [ %i.qk, %bb.ai ] ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp slt i64 %indvars.iv.next502, %i.rc
  br i1 %i.rd, label %.lr.ph443, label %.loopexit389, !llvm.loop !128

.lr.ph439:                                        ; preds = %bb.ai, %.lr.ph439
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %.lr.ph439 ], [ 0, %bb.ai ] ; 3 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv498
  %i.rf = load float, ptr %i.re, align 4, !tbaa !59
  %i.rg = fmul fast float %i.rf, %i.qj
  %i.rh = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rg)
  %i.ri = fptosi float %i.rh to i32
  %spec.select5.i361 = call i32 @llvm.smax.i32(i32 %i.ri, i32 -127)
  %.06.i362 = call i32 @llvm.smin.i32(i32 %spec.select5.i361, i32 127)
  %.0.i363 = trunc nsw i32 %.06.i362 to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 %indvars.iv498
  store i8 %.0.i363, ptr %i.rj, align 1, !tbaa !75
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %i.rk = load i32, ptr %i.of, align 4, !tbaa !63
  %i.rl = sext i32 %i.rk to i64
  %i.rm = icmp slt i64 %indvars.iv.next499, %i.rl
  br i1 %i.rm, label %.lr.ph439, label %._crit_edge440.loopexit, !llvm.loop !129

.loopexit389:                                     ; preds = %._crit_edge440, %.preheader390, %_ZN4ncnn3Mat6addrefEv.exit358
  %.0155 = phi nsz float [ %i.ot, %_ZN4ncnn3Mat6addrefEv.exit358 ], [ 1.000000e+00, %.preheader390 ], [ %i.qj, %._crit_edge440 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.rs = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.rv, align 16, !tbaa !22
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.rq, i8 0, i64 28, i1 false)
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !42
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.loopexit389
  %i.rz = load i32, ptr %i.oh, align 16, !tbaa !66
  %i.sa = load i32, ptr %i.of, align 4, !tbaa !63
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.rz, i32 noundef %i.sa, i64 noundef 1, i32 noundef 1, ptr noundef %i.sc)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sd = load ptr, ptr %8, align 16, !tbaa !21   ; 2 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %_ZNK4ncnn3Mat5emptyEv.exit348.thread, label %_ZNK4ncnn3Mat5emptyEv.exit348

_ZNK4ncnn3Mat5emptyEv.exit348:                    ; preds = %bb.ak
  %i.sf = load i64, ptr %i.rv, align 16, !tbaa !22
  %i.sg = load i32, ptr %i.ru, align 8, !tbaa !58
  %i.sh = sext i32 %i.sg to i64
  %i.si = mul i64 %i.sf, %i.sh
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %_ZNK4ncnn3Mat5emptyEv.exit348.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit348
  %i.sk = load i32, ptr %i.rt, align 16, !tbaa !66 ; 3 uses
  %i.sl = icmp sgt i32 %i.sk, 0
  br i1 %i.sl, label %.lr.ph449.preheader, label %.loopexit

.lr.ph449.preheader:                              ; preds = %.preheader
  %.pre528 = load i32, ptr %i.rs, align 4, !tbaa !63
  %.pre530 = load i64, ptr %i.ro, align 16, !tbaa !55
  br label %.lr.ph449

bb.al:                                            ; preds = %bb.aq, %bb.aj
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %._crit_edge447
  %i.sn = phi i32 [ %i.sk, %.lr.ph449.preheader ], [ %i.sv, %._crit_edge447 ]
  %i.so = phi i32 [ %.pre528, %.lr.ph449.preheader ], [ %i.sw, %._crit_edge447 ] ; 3 uses
  %i.sp = phi i64 [ %.pre530, %.lr.ph449.preheader ], [ %i.sx, %._crit_edge447 ] ; 2 uses
  %i.sq = phi ptr [ %i.sd, %.lr.ph449.preheader ], [ %i.sy, %._crit_edge447 ] ; 2 uses
  %indvars.iv507 = phi i64 [ 0, %.lr.ph449.preheader ], [ %indvars.iv.next508, %._crit_edge447 ] ; 3 uses
  %13 = sext i32 %i.so to i64
  %i.sr = mul nsw i64 %indvars.iv507, %13
  %i.ss = mul i64 %i.sr, %i.sp
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.ss
  %i.su = icmp sgt i32 %i.so, 0
  br i1 %i.su, label %.lr.ph446, label %._crit_edge447

._crit_edge447.loopexit:                          ; preds = %.lr.ph446
  %.pre526 = load ptr, ptr %8, align 16, !tbaa !21
  %.pre529 = load i64, ptr %i.ro, align 16, !tbaa !55
  %.pre531 = load i32, ptr %i.rt, align 16, !tbaa !66
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %.lr.ph449
  %i.sv = phi i32 [ %.pre531, %._crit_edge447.loopexit ], [ %i.sn, %.lr.ph449 ] ; 3 uses
  %i.sw = phi i32 [ %i.tl, %._crit_edge447.loopexit ], [ %i.so, %.lr.ph449 ]
  %i.sx = phi i64 [ %.pre529, %._crit_edge447.loopexit ], [ %i.sp, %.lr.ph449 ]
  %i.sy = phi ptr [ %.pre526, %._crit_edge447.loopexit ], [ %i.sq, %.lr.ph449 ]
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.sz = sext i32 %i.sv to i64
  %i.ta = icmp slt i64 %indvars.iv.next508, %i.sz
  br i1 %i.ta, label %.lr.ph449, label %.loopexit, !llvm.loop !130

.lr.ph446:                                        ; preds = %.lr.ph449, %.lr.ph446
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %.lr.ph446 ], [ 0, %.lr.ph449 ] ; 3 uses
  %i.tb = load ptr, ptr %7, align 16, !tbaa !21
  %i.tc = load i32, ptr %i.of, align 4, !tbaa !63
  %i.td = sext i32 %i.tc to i64
  %i.te = mul nsw i64 %indvars.iv504, %i.td
  %i.tf = load i64, ptr %i.nu, align 16, !tbaa !55
  %i.tg = mul i64 %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %indvars.iv507
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !75
  %i.tk = getelementptr inbounds nuw i8, ptr %i.st, i64 %indvars.iv504
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !75
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.tl = load i32, ptr %i.rs, align 4, !tbaa !63 ; 2 uses
  %i.tm = sext i32 %i.tl to i64
  %i.tn = icmp slt i64 %indvars.iv.next505, %i.tm
  br i1 %i.tn, label %.lr.ph446, label %._crit_edge447.loopexit, !llvm.loop !131

bb.am:                                            ; preds = %.loopexit389
  %i.to = load ptr, ptr %i.nq, align 8, !tbaa !19 ; 2 uses
  %.not.i331 = icmp eq ptr %i.to, null
  br i1 %.not.i331, label %_ZN4ncnn3MataSERKS0_.exit338, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tp = atomicrmw add ptr %i.to, i32 1 acq_rel, align 4 ; 0 uses
  %.pre525 = load ptr, ptr %i.rn, align 8, !tbaa !19 ; 2 uses
  %.not.i.i332 = icmp eq ptr %.pre525, null
  br i1 %.not.i.i332, label %_ZN4ncnn3MataSERKS0_.exit338, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tq = atomicrmw add ptr %.pre525, i32 -1 acq_rel, align 4
  %i.tr = icmp eq i32 %i.tq, 1
  br i1 %i.tr, label %bb.ap, label %_ZN4ncnn3MataSERKS0_.exit338

bb.ap:                                            ; preds = %bb.ao
  %i.ts = load ptr, ptr %i.rq, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i334 = icmp eq ptr %i.ts, null
  %i.tt = load ptr, ptr %8, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i334, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tu = load ptr, ptr %i.ts, align 8, !tbaa !13
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8
  invoke void %i.tw(ptr noundef nonnull align 8 dereferenceable(8) %i.ts, ptr noundef %i.tt)
          to label %_ZN4ncnn3MataSERKS0_.exit338 unwind label %bb.al, !inline_history !1

bb.ar:                                            ; preds = %bb.ap
  %.not.i18.i335 = icmp eq ptr %i.tt, null
  br i1 %.not.i18.i335, label %_ZN4ncnn3MataSERKS0_.exit338, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.tt) #12
  br label %_ZN4ncnn3MataSERKS0_.exit338

_ZN4ncnn3MataSERKS0_.exit338:                     ; preds = %bb.am, %bb.ar, %bb.as, %bb.aq, %bb.an, %bb.ao
  %i.tx = load <2 x ptr>, ptr %7, align 16, !tbaa !54
  store <2 x ptr> %i.tx, ptr %8, align 16, !tbaa !54
  %i.ty = load i64, ptr %i.nu, align 16, !tbaa !55
  store i64 %i.ty, ptr %i.ro, align 16, !tbaa !55
  %i.tz = load i32, ptr %i.nx, align 8, !tbaa !56
  store i32 %i.tz, ptr %i.rp, align 8, !tbaa !56
  %i.ua = load ptr, ptr %i.oa, align 16, !tbaa !20
  store ptr %i.ua, ptr %i.rq, align 16, !tbaa !20
  %i.ub = load <4 x i32>, ptr %i.od, align 8, !tbaa !57
  %i.uc = load i32, ptr %i.oh, align 16, !tbaa !66
  store <4 x i32> %i.ub, ptr %i.rr, align 8, !tbaa !57
  %i.ud = load i32, ptr %i.ok, align 8, !tbaa !58
  store i32 %i.ud, ptr %i.ru, align 8, !tbaa !58
  %i.ue = load i64, ptr %i.on, align 16, !tbaa !22
  store i64 %i.ue, ptr %i.rv, align 16, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge447, %.preheader, %_ZN4ncnn3MataSERKS0_.exit338
  %i.uf = phi i32 [ %i.uc, %_ZN4ncnn3MataSERKS0_.exit338 ], [ %i.sk, %.preheader ], [ %i.sv, %._crit_edge447 ] ; 3 uses
  %i.ug = load i32, ptr %i.jp, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.uh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 11 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.un, align 16, !tbaa !22
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.uk, i8 0, i64 28, i1 false)
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !45
  %.not190 = icmp eq i32 %i.up, 0
  br i1 %.not190, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !19 ; 2 uses
  %.not.i323 = icmp eq ptr %i.us, null
  br i1 %.not.i323, label %.thread637, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ut = atomicrmw add ptr %i.us, i32 1 acq_rel, align 4 ; 0 uses
  %.pre532 = load ptr, ptr %i.uh, align 8, !tbaa !19 ; 2 uses
  %.not.i.i324 = icmp eq ptr %.pre532, null
  br i1 %.not.i.i324, label %.thread637, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.uu = atomicrmw add ptr %.pre532, i32 -1 acq_rel, align 4
  %i.uv = icmp eq i32 %i.uu, 1
  br i1 %i.uv, label %bb.aw, label %.thread637

bb.aw:                                            ; preds = %bb.av
  %i.uw = load ptr, ptr %i.uk, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i326 = icmp eq ptr %i.uw, null
  %i.ux = load ptr, ptr %9, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i326, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.uy = load ptr, ptr %i.uw, align 8, !tbaa !13
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.va = load ptr, ptr %i.uz, align 8
  invoke void %i.va(ptr noundef nonnull align 8 dereferenceable(8) %i.uw, ptr noundef %i.ux)
          to label %.thread637 unwind label %bb.cf, !inline_history !1

bb.ay:                                            ; preds = %bb.aw
  %.not.i18.i327 = icmp eq ptr %i.ux, null
  br i1 %.not.i18.i327, label %.thread637, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.ux) #12
  br label %.thread637

.thread637:                                       ; preds = %bb.at, %bb.av, %bb.au, %bb.ax, %bb.az, %bb.ay
  %i.vb = load <2 x ptr>, ptr %i.uq, align 8, !tbaa !54
  store <2 x ptr> %i.vb, ptr %9, align 16, !tbaa !54
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !55
  store i64 %i.vd, ptr %i.ui, align 16, !tbaa !55
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !56
  store i32 %i.vf, ptr %i.uj, align 8, !tbaa !56
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !20
  store ptr %i.vh, ptr %i.uk, align 16, !tbaa !20
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.vj = load <4 x i32>, ptr %i.vi, align 8, !tbaa !57
  store <4 x i32> %i.vj, ptr %i.ul, align 8, !tbaa !57
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !58
  store i32 %i.vl, ptr %i.um, align 8, !tbaa !58
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !22
  store i64 %i.vn, ptr %i.un, align 16, !tbaa !22
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !49
  br label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

bb.ba:                                            ; preds = %.loopexit
  %i.vq = load i32, ptr %i.i, align 8, !tbaa !43
  %.not191 = icmp eq i32 %i.vq, 0
  %i.vr = load i32, ptr %i.k, align 4, !tbaa !44
  %.not194 = icmp eq i32 %i.vr, 0                 ; 2 uses
  br i1 %.not191, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.pre535 = load ptr, ptr %1, align 8, !tbaa !61 ; 13 uses
  br i1 %.not194, label %.thread388, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !71
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %.pre535 to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = icmp eq i64 %i.vw, 72
  br i1 %i.vx, label %bb.bd, label %.thread388

bb.bd:                                            ; preds = %bb.bc
  %i.vy = icmp eq ptr %9, %.pre535
end_hunk_1
