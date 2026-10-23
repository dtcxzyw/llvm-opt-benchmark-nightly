Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode:bb.a
  %i.ar = add nuw nsw i64 %i.aq, %.idx
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4, !tbaa !34
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
  %.07.i.idx.ph = phi i64 [ %.idx, %bb.l ], [ %i.ar, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i.idx = phi i64 [ %.07.i.add, %.lr.ph.i ], [ %.07.i.idx.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.am, i64 %.07.i.idx
  %.07.i.add = add nuw nsw i64 %.07.i.idx, 4
  store i32 %3, ptr %.07.i.ptr, align 4, !tbaa !34
  %i.au = icmp samesign ult i64 %.07.i.idx, 60
  br i1 %i.au, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, !llvm.loop !57

bb.m:                                             ; preds = %bb.k
  %i.av = and i32 %i.ab, 15                       ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aw
  %i.ay = icmp samesign ult i32 %i.ac, %i.av
  br i1 %i.ay, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.az = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az ; 3 uses
  %i.bb = shl nuw nsw i64 %i.al, 2                ; 2 uses
  %i.bc = shl nuw nsw i64 %i.az, 2                ; 2 uses
  %i.bd = add i64 %i.bb, %i.ak                    ; 2 uses
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = add i64 %i.be, 4
  %i.bg = shl nuw nsw i64 %i.aw, 2
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bh)
  %i.bj = xor i64 %i.ak, -1
  %i.bk = add i64 %i.bi, %i.bj
  %i.bl = add nuw nsw i64 %i.bb, %i.bc
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.bm, 28
  br i1 %min.iters.check93, label %.lr.ph.i61.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec95 = and i64 %i.bo, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec95, 2
  %i.bq = getelementptr i8, ptr %i.ba, i64 %i.bp
  %broadcast.splatinsert96 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat97 = shufflevector <4 x i32> %broadcast.splatinsert96, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next100, %vector.body98 ] ; 2 uses
  %i.br = shl i64 %index99, 2
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat97, ptr %next.gep, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat97, ptr %i.bs, align 4, !tbaa !34
  %index.next100 = add nuw i64 %index99, 8        ; 2 uses
  %i.bt = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.bt, label %middle.block101, label %vector.body98, !llvm.loop !58

middle.block101:                                  ; preds = %vector.body98
  %cmp.n102 = icmp eq i64 %i.bo, %n.vec95
  br i1 %cmp.n102, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block101
  %.07.i62.ph = phi ptr [ %i.ba, %.lr.ph.preheader.i ], [ %i.bq, %middle.block101 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.07.i62 = phi ptr [ %i.bu, %.lr.ph.i61 ], [ %.07.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i62, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i62, align 4, !tbaa !34
  %i.bv = icmp ult ptr %i.bu, %i.ax
  br i1 %i.bv, label %.lr.ph.i61, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !59

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit:    ; preds = %.lr.ph.i, %vector.body, %bb.i
  %.248 = phi i32 [ %1, %bb.i ], [ %i.ah, %vector.body ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.bw = and i32 %i.ab, 15                       ; 2 uses
  %i.bx = and i32 %i.ab, 4194288                  ; 2 uses
  %i.by = icmp samesign ult i32 %.248, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = zext nneg i32 %.248 to i64
  %i.cc = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.cd = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ] ; 2 uses
  %i.ce = lshr i64 %indvars.iv, 4                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !40
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %.lr.ph.i65

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %0, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ce
  store i32 %3, ptr %i.cj, align 4, !tbaa !34
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

.lr.ph.i65:                                       ; preds = %bb.n
  %i.ck = load ptr, ptr %i.ca, align 8, !tbaa !32
  %i.cl = load ptr, ptr %0, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ce
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.co ; 4 uses
  store <4 x i32> %i.cd, ptr %i.cp, align 4, !tbaa !34
  %.07.i66.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> %i.cd, ptr %.07.i66.ptr.4, align 4, !tbaa !34
  %.07.i66.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store <4 x i32> %i.cd, ptr %.07.i66.ptr.8, align 4, !tbaa !34
  %.07.i66.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store <4 x i32> %i.cd, ptr %.07.i66.ptr.12, align 4, !tbaa !34
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67:  ; preds = %.lr.ph.i65, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cr = icmp sgt i32 %i.bx, %i.cq
  br i1 %i.cr, label %bb.n, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %.3.lcssa = phi i32 [ %.248, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit ], [ %i.cq, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ]
  %.not59 = icmp eq i32 %i.bw, 0
  br i1 %.not59, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cs = lshr i32 %.3.lcssa, 4
  %i.ct = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.cs) ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %.lr.ph.preheader.i68, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split

.lr.ph.preheader.i68:                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !32 ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.cy = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cy ; 5 uses
  %i.da = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = shl nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.dd = shl nuw nsw i64 %i.da, 2
  %i.de = add nuw i64 %i.dc, %i.cx
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 4)
  %i.dg = add nuw i64 %i.de, %i.df
  %i.dh = xor i64 %i.cx, -1
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = sub i64 %i.di, %i.dc                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.dj, 28
  br i1 %min.iters.check105, label %.lr.ph.i69.preheader, label %vector.body110

vector.body110:                                   ; preds = %.lr.ph.preheader.i68
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec107 = and i64 %i.dl, 9223372036854775800  ; 2 uses
  %i.dm = shl i64 %n.vec107, 2
  %i.dn = getelementptr i8, ptr %i.cz, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat109, ptr %i.cz, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat109, ptr %i.do, align 4, !tbaa !34
  %cmp.n115 = icmp eq i64 %i.dl, %n.vec107
  br i1 %cmp.n115, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i68, %vector.body110
  %.07.i70.ph = phi ptr [ %i.cz, %.lr.ph.preheader.i68 ], [ %i.dn, %vector.body110 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.07.i70 = phi ptr [ %i.dp, %.lr.ph.i69 ], [ %.07.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i70, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i70, align 4, !tbaa !34
  %i.dq = icmp ult ptr %i.dp, %i.db
  br i1 %i.dq, label %.lr.ph.i69, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !61

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split: ; preds = %bb.p, %bb.j, %bb.e, %bb.b
  %.sink = phi i32 [ 7, %bb.j ], [ 7, %bb.e ], [ 1, %bb.b ], [ 7, %bb.p ]
  store i32 %.sink, ptr %4, align 4, !tbaa !17
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71:  ; preds = %.lr.ph.i61, %.lr.ph.i69, %middle.block101, %vector.body110, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, %bb.m, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @umutablecptrie_buildImmutable_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 7 uses
  %4 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 17 uses
  %i.b = alloca [2176 x i16], align 16            ; 7 uses
  %i.c = alloca [128 x i32], align 16             ; 6 uses
  %5 = alloca %"class.icu_78::(anonymous namespace)::AllSameBlocks", align 4 ; 16 uses
  %6 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 33 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !17
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1
  %i.f = icmp ugt i32 %2, 2
  %or.cond5.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond5.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !17
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i [
    i32 2, label %bb.m
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.g, align 8, !tbaa !34
  %i.i = and <2 x i32> %i.h, splat (i32 65535)
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %i.j, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29
  %i.o = ashr i32 %i.n, 4                         ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.s = icmp eq i32 %i.o, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.g

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod378 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i.epil.init
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %.epil.preheader
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34
  %i.y = and i32 %i.x, 65535
  store i32 %i.y, ptr %i.w, align 4, !tbaa !34
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph16.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i.i:                                     ; preds = %.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  br label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !34
  %i.aj = and i32 %i.ai, 65535
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !34
  %i.ap = and i32 %i.ao, 65535
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !62

bb.l:                                             ; preds = %bb.l, %.lr.ph16.i.i
  %indvars.iv18.i.i = phi i64 [ 0, %.lr.ph16.i.i ], [ %indvars.iv.next19.i.i, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv18.i.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = and i32 %i.ar, 65535
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !34
  %indvars.iv.next19.i.i = add nuw nsw i64 %indvars.iv18.i.i, 1 ; 2 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !35
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next19.i.i, %i.au
  br i1 %i.av, label %bb.l, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !63

bb.m:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !34
  %i.ay = and <2 x i32> %i.ax, splat (i32 255)
  store <2 x i32> %i.ay, ptr %i.aw, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = and i32 %i.ba, 255
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !29
  %i.be = ashr i32 %i.bd, 4                       ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i118.i, label %.preheader.i114.i

.lr.ph.i118.i:                                    ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bh = load ptr, ptr %0, align 8               ; 3 uses
  %wide.trip.count.i119.i = zext nneg i32 %i.be to i64 ; 2 uses
  %xtraiter380 = and i64 %wide.trip.count.i119.i, 1
  %i.bi = icmp eq i32 %i.be, 1
  br i1 %i.bi, label %.epil.preheader379, label %.lr.ph.i118.i.new

.lr.ph.i118.i.new:                                ; preds = %.lr.ph.i118.i
  %unroll_iter383 = and i64 %wide.trip.count.i119.i, 2147483646
  br label %bb.o

.preheader.i114.i.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.preheader.i114.i, label %.epil.preheader379

.epil.preheader379:                               ; preds = %.preheader.i114.i.loopexit.unr-lcssa, %.lr.ph.i118.i
  %indvars.iv.i120.i.epil.init = phi i64 [ 0, %.lr.ph.i118.i ], [ %indvars.iv.next.i121.i.1, %.preheader.i114.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod382 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i120.i.epil.init
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %.preheader.i114.i

bb.n:                                             ; preds = %.epil.preheader379
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i120.i.epil.init ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = and i32 %i.bn, 255
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !34
  br label %.preheader.i114.i

.preheader.i114.i:                                ; preds = %.preheader.i114.i.loopexit.unr-lcssa, %bb.n, %.epil.preheader379, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph16.i115.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i115.i:                                  ; preds = %.preheader.i114.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32
  br label %bb.t

bb.o:                                             ; preds = %bb.s, %.lr.ph.i118.i.new
  %indvars.iv.i120.i = phi i64 [ 0, %.lr.ph.i118.i.new ], [ %indvars.iv.next.i121.i.1, %bb.s ] ; 4 uses
  %niter384 = phi i64 [ 0, %.lr.ph.i118.i.new ], [ %niter384.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i120.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i120.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.bz = and i32 %i.by, 255
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i121.i = or disjoint i64 %indvars.iv.i120.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a

.thread133.i.i.i:                                 ; preds = %bb.bm, %.thread127.i.i.i, %bb.bl, %bb.au
  %.5136.i.i.i = phi i32 [ %i.ht, %bb.au ], [ %spec.select101.i.i.i, %bb.bm ], [ %i.lp, %.thread127.i.i.i ], [ %.084143.i.i.i, %bb.bl ] ; 10 uses
  %i.lt = add nuw nsw i32 %spec.select98.i.i.i, %.079146.i.i.i ; 2 uses
  %.not97.i.i.i = icmp samesign ult i32 %i.lt, %i.gu
  br i1 %.not97.i.i.i, label %bb.as, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i, !llvm.loop !76

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i: ; preds = %.thread133.i.i.i
  %i.lu = icmp slt i32 %.5136.i.i.i, 0
  br i1 %i.lu, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i

bb.bn:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i, %.loopexit133.i.i
  %indvars.iv237.i.i = phi i64 [ 0, %.loopexit133.i.i ], [ %indvars.iv.next238.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i ] ; 5 uses
  %.not.i61.i.i = icmp samesign ult i64 %indvars.iv237.i.i, %i.gs
  br i1 %.not.i61.i.i, label %bb.bo, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.lv = lshr i64 %indvars.iv237.i.i, 4          ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !40
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lz = load ptr, ptr %0, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lv
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.mb = trunc nuw nsw i64 %indvars.iv237.i.i to i32
  %i.mc = load ptr, ptr %i.gr, align 8, !tbaa !32
  %i.md = load ptr, ptr %0, align 8, !tbaa !22
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lv
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !34
  %i.mg = and i32 %i.mb, 15
  %i.mh = add i32 %i.mf, %i.mg
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mi
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i: ; preds = %bb.bq, %bb.bp, %bb.bn
  %.1.in.i62.i.i = phi ptr [ %i.mj, %bb.bq ], [ %i.ma, %bb.bp ], [ %i.df, %bb.bn ]
  %.1.i63.i.i = load i32, ptr %.1.in.i62.i.i, align 4, !tbaa !34
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv237.i.i
  store i32 %.1.i63.i.i, ptr %i.mk, align 4, !tbaa !34
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 1 ; 2 uses
  %exitcond240.not.i.i = icmp eq i64 %indvars.iv.next238.i.i, 128
  br i1 %exitcond240.not.i.i, label %.lr.ph149.i.i.i, label %bb.bn, !llvm.loop !77

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  %i.ml = shl nuw nsw i32 %.5136.i.i.i, 2
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.mm) #14 ; 23 uses
  %i.mo = ptrtoaddr ptr %i.mn to i64
  %i.mp = icmp eq ptr %i.mn, null
  br i1 %i.mp, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.mn, ptr noundef nonnull align 16 dereferenceable(512) %i.c, i64 512, i1 false)
  %i.mq = load i32, ptr %5, align 4, !tbaa !119   ; 4 uses
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i, label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %bb.br
  %i.ms = icmp sgt i32 %i.mq, 0
  br i1 %i.ms, label %.lr.ph.i67.i.i, label %._crit_edge.i66.i.i

.lr.ph.i67.i.i:                                   ; preds = %.preheader.i65.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.mq to i64 ; 2 uses
  %xtraiter403 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.mt = icmp ult i32 %i.mq, 4
  br i1 %i.mt, label %.epil.preheader402, label %.lr.ph.i67.i.i.new

.lr.ph.i67.i.i.new:                               ; preds = %.lr.ph.i67.i.i
  %unroll_iter408 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.bt

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.bt
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod405.not, label %._crit_edge.loopexit.i.i.i, label %.epil.preheader402

.epil.preheader402:                               ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i67.i.i
  %indvars.iv.i68.i.i.epil.init = phi i64 [ 0, %.lr.ph.i67.i.i ], [ %indvars.iv.next.i70.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0815.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i67.i.i ], [ %spec.select13.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0914.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i67.i.i ], [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod407 = icmp ne i64 %xtraiter403, 0
  tail call void @llvm.assume(i1 %lcmp.mod407)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader402
  %indvars.iv.i68.i.i.epil = phi i64 [ %indvars.iv.i68.i.i.epil.init, %.epil.preheader402 ], [ %indvars.iv.next.i70.i.i.epil, %bb.bs ] ; 3 uses
  %.0815.i.i.i.epil = phi i32 [ %.0815.i.i.i.epil.init, %.epil.preheader402 ], [ %spec.select13.i.i.i.epil, %bb.bs ] ; 2 uses
  %.0914.i.i.i.epil = phi i32 [ %.0914.i.i.i.epil.init, %.epil.preheader402 ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %epil.iter404 = phi i64 [ 0, %.epil.preheader402 ], [ %epil.iter404.next, %bb.bs ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i68.i.i.epil
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !34 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, %.0815.i.i.i.epil
  %i.mx = trunc nuw nsw i64 %indvars.iv.i68.i.i.epil to i32
  %spec.select.i69.i.i.epil = select i1 %i.mw, i32 %i.mx, i32 %.0914.i.i.i.epil ; 2 uses
  %spec.select13.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 %.0815.i.i.i.epil)
  %indvars.iv.next.i70.i.i.epil = add nuw nsw i64 %indvars.iv.i68.i.i.epil, 1
  %epil.iter404.next = add i64 %epil.iter404, 1   ; 2 uses
  %epil.iter404.cmp.not = icmp eq i64 %epil.iter404.next, %xtraiter403
  br i1 %epil.iter404.cmp.not, label %._crit_edge.loopexit.i.i.i, label %bb.bs, !llvm.loop !78

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bs, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %spec.select.i69.i.i.lcssa = phi i32 [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %i.my = sext i32 %spec.select.i69.i.i.lcssa to i64
  br label %._crit_edge.i66.i.i

._crit_edge.i66.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i65.i.i
  %.09.lcssa.i.i.i = phi i64 [ -1, %.preheader.i65.i.i ], [ %i.my, %._crit_edge.loopexit.i.i.i ]
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %.09.lcssa.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !34
  br label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i67.i.i.new
  %indvars.iv.i68.i.i = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %indvars.iv.next.i70.i.i.3, %bb.bt ] ; 6 uses
  %.0815.i.i.i = phi i32 [ 0, %.lr.ph.i67.i.i.new ], [ %spec.select13.i.i.i.3, %bb.bt ] ; 2 uses
  %.0914.i.i.i = phi i32 [ -1, %.lr.ph.i67.i.i.new ], [ %spec.select.i69.i.i.3, %bb.bt ]
  %niter409 = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %niter409.next.3, %bb.bt ]
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i68.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !34 ; 2 uses
  %i.nd = icmp sgt i32 %i.nc, %.0815.i.i.i
  %i.ne = trunc nuw nsw i64 %indvars.iv.i68.i.i to i32
  %spec.select.i69.i.i = select i1 %i.nd, i32 %i.ne, i32 %.0914.i.i.i
  %spec.select13.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 %.0815.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i = or disjoint i64 %indvars.iv.i68.i.i, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !34 ; 2 uses
  %i.nh = icmp sgt i32 %i.ng, %spec.select13.i.i.i
  %i.ni = trunc nuw nsw i64 %indvars.iv.next.i70.i.i to i32
  %spec.select.i69.i.i.1 = select i1 %i.nh, i32 %i.ni, i32 %spec.select.i69.i.i
  %spec.select13.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 %spec.select13.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i.1 = or disjoint i64 %indvars.iv.i68.i.i, 2 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i.1
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !34 ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, %spec.select13.i.i.i.1
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.1 to i32
  %spec.select.i69.i.i.2 = select i1 %i.nl, i32 %i.nm, i32 %spec.select.i69.i.i.1
  %spec.select13.i.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 %spec.select13.i.i.i.1) ; 2 uses
  %indvars.iv.next.i70.i.i.2 = or disjoint i64 %indvars.iv.i68.i.i, 3 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i.2
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 2 uses
  %i.np = icmp sgt i32 %i.no, %spec.select13.i.i.i.2
  %i.nq = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.2 to i32
  %spec.select.i69.i.i.3 = select i1 %i.np, i32 %i.nq, i32 %spec.select.i69.i.i.2 ; 3 uses
  %spec.select13.i.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %spec.select13.i.i.i.2) ; 2 uses
  %indvars.iv.next.i70.i.i.3 = add nuw nsw i64 %indvars.iv.i68.i.i, 4 ; 2 uses
  %niter409.next.3 = add i64 %niter409, 4         ; 2 uses
  %niter409.ncmp.3 = icmp eq i64 %niter409.next.3, %unroll_iter408
  br i1 %niter409.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.bt, !llvm.loop !79

_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i: ; preds = %._crit_edge.i66.i.i, %bb.br
  %.011.i.i.i = phi i32 [ %i.na, %._crit_edge.i66.i.i ], [ -1, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  %i.nr = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  store i32 0, ptr %i.nr, align 4, !tbaa !34
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store i32 64, ptr %i.ns, align 4, !tbaa !34
  %i.nt = icmp samesign ult i32 %.5136.i.i.i, 4159
  br i1 %i.nt, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 12, ptr %i.nu, align 8, !tbaa !46
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4095, ptr %i.nv, align 4, !tbaa !47
  br label %bb.ca

bb.bv:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nw = icmp samesign ult i32 %.5136.i.i.i, 32831
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  br i1 %i.nw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 15, ptr %i.ny, align 8, !tbaa !46
  store i32 32767, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.nz = icmp samesign ult i32 %.5136.i.i.i, 131135
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.nz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 17, ptr %i.oa, align 8, !tbaa !46
  store i32 131071, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  store i32 21, ptr %i.oa, align 8, !tbaa !46
  store i32 2097151, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bu
  %.promoted176.i.i = phi i32 [ 4095, %bb.bu ], [ 32767, %bb.bw ], [ 131071, %bb.by ], [ 2097151, %bb.bz ]
  %.promoted.i.i = phi i32 [ 12, %bb.bu ], [ 15, %bb.bw ], [ 17, %bb.by ], [ 21, %bb.bz ]
  %.promoted184.i.i = phi i32 [ 6007, %bb.bu ], [ 50021, %bb.bw ], [ 200003, %bb.by ], [ 1500007, %bb.bz ] ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.ca
  %i.oc = shl nuw nsw i32 %.promoted184.i.i, 2
  %i.od = zext nneg i32 %i.oc to i64              ; 2 uses
  %i.oe = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.od) #14
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc86.i.i:                                     ; preds = %.noexc.i.i
  store ptr %i.oe, ptr %6, align 8, !tbaa !48
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc86.i.i
  store i32 %.promoted184.i.i, ptr %i.ob, align 8, !tbaa !122
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 %.promoted184.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.oe, i8 0, i64 %i.od, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 64, ptr %i.oh, align 8, !tbaa !50
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef 0, i32 noundef 128)
  %i.oi = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.oj = ashr i32 %i.oi, 4                       ; 2 uses
  %.not201.i.i.i = icmp sgt i32 %i.oj, 8
  br i1 %.not201.i.i.i, label %.lr.ph209.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

.lr.ph209.i.i.i:                                  ; preds = %bb.cb
  %i.ok = icmp samesign ult i32 %.5136.i.i.i, 4111 ; 3 uses
  %i.ol = icmp samesign ult i32 %.5136.i.i.i, 32783 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.on = icmp samesign ult i32 %.5136.i.i.i, 131087 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.op = zext nneg i32 %i.co to i64
  %.mux.i.i.i = select i1 %i.ok, i32 12, i32 15
  %.mux315.i.i.i = select i1 %i.ok, i32 4095, i32 32767
  %.mux316.i.i.i = select i1 %i.ok, i32 6007, i32 50021
  %..i.i.i = select i1 %i.on, i32 17, i32 21
  %.313.i.i.i = select i1 %i.on, i32 131071, i32 2097151
  %.314.i.i.i = select i1 %i.on, i32 200003, i32 1500007
  %.sink312.i.i.i = select i1 %i.ol, i32 %.mux.i.i.i, i32 %..i.i.i ; 2 uses
  %.sink.i.i.i = select i1 %i.ol, i32 %.mux315.i.i.i, i32 %.313.i.i.i ; 2 uses
  %.0.i118.i.i.i = select i1 %i.ol, i32 %.mux316.i.i.i, i32 %.314.i.i.i ; 6 uses
  %.pre13.i121.i.i.i = shl nuw nsw i32 %.0.i118.i.i.i, 2
  %.pre14.i122.i.i.i = zext nneg i32 %.pre13.i121.i.i.i to i64 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cw, %.lr.ph209.i.i.i
  %i.oq = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %i.ov, %bb.cw ]
  %.0.i118.i185.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i186.i.i, %bb.cw ]
  %7 = phi ptr [ %i.oe, %.lr.ph209.i.i.i ], [ %9, %bb.cw ] ; 3 uses
  %.0.i118.i182.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i180.i.i, %bb.cw ] ; 3 uses
  %.sink.i178.i.i = phi i32 [ %.promoted176.i.i, %.lr.ph209.i.i.i ], [ %.sink.i177.i.i, %bb.cw ]
  %.sink312.i175.i.i = phi i32 [ %.promoted.i.i, %.lr.ph209.i.i.i ], [ %.sink312.i174.i.i, %bb.cw ]
  %.0101207.i.i.i = phi i32 [ 8, %.lr.ph209.i.i.i ], [ %i.xz, %bb.cw ] ; 5 uses
  %.0102206.i.i.i = phi i32 [ 0, %.lr.ph209.i.i.i ], [ %.1103.i.i.i, %bb.cw ]
  %.0104205.i.i.i = phi i32 [ 4, %.lr.ph209.i.i.i ], [ %.1105.i.i.i, %bb.cw ]
  %.0107204.i.i.i = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %.1108.i.i.i, %bb.cw ]
  %.1111202.i.i.i = phi i32 [ 128, %.lr.ph209.i.i.i ], [ %.6.i.i.i, %bb.cw ] ; 19 uses
  %i.or = icmp eq i32 %.0101207.i.i.i, %i.co
  br i1 %i.or, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  store i32 %.sink312.i.i.i, ptr %i.oo, align 8, !tbaa !46
  store i32 %.sink.i.i.i, ptr %i.om, align 4, !tbaa !47
  %i.os = icmp sgt i32 %.0.i118.i.i.i, %.0.i118.i182.i.i
  br i1 %i.os, label %bb.ce, label %._crit_edge.i120.i.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @uprv_free_78(ptr noundef %7)
          to label %.noexc87.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87.i.i:                                     ; preds = %bb.ce
  %i.ot = invoke noalias ptr @uprv_malloc_78(i64 noundef %.pre14.i122.i.i.i) #14
          to label %.noexc88.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc88.i.i:                                     ; preds = %.noexc87.i.i
  store ptr %i.ot, ptr %6, align 8, !tbaa !48
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cf

bb.cf:                                            ; preds = %.noexc88.i.i
  store i32 %.0.i118.i.i.i, ptr %i.ob, align 8, !tbaa !122
  br label %._crit_edge.i120.i.i.i

._crit_edge.i120.i.i.i:                           ; preds = %bb.cf, %bb.cd
  %8 = phi ptr [ %i.ot, %bb.cf ], [ %7, %bb.cd ]  ; 2 uses
  %.0.i118.i181.i.i = phi i32 [ %.0.i118.i.i.i, %bb.cf ], [ %.0.i118.i182.i.i, %bb.cd ]
  store i32 %.0.i118.i.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %8, i8 0, i64 %.pre14.i122.i.i.i, i1 false)
  store i32 16, ptr %i.oh, align 8, !tbaa !50
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef 0, i32 noundef %.1111202.i.i.i)
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i120.i.i.i, %bb.cc
  %i.ov = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %i.oq, %bb.cc ] ; 6 uses
  %.0.i118.i186.i.i = phi i32 [ %.0.i118.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i185.i.i, %bb.cc ] ; 5 uses
  %9 = phi ptr [ %8, %._crit_edge.i120.i.i.i ], [ %7, %bb.cc ] ; 8 uses
  %.0.i118.i180.i.i = phi i32 [ %.0.i118.i181.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i182.i.i, %bb.cc ]
  %.sink.i177.i.i = phi i32 [ %.sink.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink.i178.i.i, %bb.cc ] ; 7 uses
  %.sink312.i174.i.i = phi i32 [ %.sink312.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink312.i175.i.i, %bb.cc ] ; 3 uses
  %.1108.i.i.i = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %.0107204.i.i.i, %bb.cc ] ; 9 uses
  %.1105.i.i.i = phi i32 [ 1, %._crit_edge.i120.i.i.i ], [ %.0104205.i.i.i, %bb.cc ] ; 2 uses
  %.1103.i.i.i = phi i32 [ %.1111202.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0102206.i.i.i, %bb.cc ] ; 3 uses
  %i.ow = zext nneg i32 %.0101207.i.i.i to i64    ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !40
  switch i8 %i.oy, label %bb.cv [
    i8 0, label %.lr.ph.i.i.i.preheader.i.i
    i8 1, label %bb.co
  ]

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.cg
  %i.oz = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ow ; 3 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !34 ; 16 uses
  %i.pc = add nsw i32 %i.ov, -16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.pb, %.lr.ph.i.i.i.preheader.i.i ], [ %i.ps, %.lr.ph.i.i.i.i.i ]
  %niter427 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.i.i ], [ %niter427.next.7, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pd = mul i32 %.061.i.i.i.i.i, 37
  %i.pe = add i32 %i.pd, %i.pb
  %i.pf = mul i32 %i.pe, 37
  %i.pg = add i32 %i.pf, %i.pb
  %i.ph = mul i32 %i.pg, 37
  %i.pi = add i32 %i.ph, %i.pb
  %i.pj = mul i32 %i.pi, 37
  %i.pk = add i32 %i.pj, %i.pb
  %i.pl = mul i32 %i.pk, 37
  %i.pm = add i32 %i.pl, %i.pb
  %i.pn = mul i32 %i.pm, 37
  %i.po = add i32 %i.pn, %i.pb
  %i.pp = mul i32 %i.po, 37
  %i.pq = add i32 %i.pp, %i.pb
  %i.pr = mul i32 %i.pq, 37
  %i.ps = add i32 %i.pr, %i.pb                    ; 2 uses
  %niter427.next.7 = add nuw i32 %niter427, 8
  %niter427.ncmp.7 = icmp eq i32 %niter427, %i.pc
  br i1 %niter427.ncmp.7, label %.lr.ph.i.i.i.i.i.epil, label %.lr.ph.i.i.i.i.i, !llvm.loop !80

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.epil
  %.061.i.i.i.i.i.epil = phi i32 [ %i.pu, %.lr.ph.i.i.i.i.i.epil ], [ %i.ps, %.lr.ph.i.i.i.i.i ]
  %epil.iter422 = phi i32 [ %epil.iter422.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.pt = mul i32 %.061.i.i.i.i.i.epil, 37
  %i.pu = add i32 %i.pt, %i.pb                    ; 3 uses
  %epil.iter422.next = add i32 %epil.iter422, 1   ; 2 uses
  %epil.iter422.cmp.not = icmp eq i32 %epil.iter422.next, 7
  br i1 %epil.iter422.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !81

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %i.pv = shl i32 %i.pu, %.sink312.i174.i.i
  %i.pw = add nsw i32 %.0.i118.i186.i.i, -1
  %i.px = urem i32 %i.pu, %i.pw
  %i.py = add nuw nsw i32 %i.px, 1                ; 4 uses
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !34 ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.preheader.i.i

.lr.ph.split.us.i.i.i.preheader.i.i:              ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %i.qd = xor i32 %.sink.i177.i.i, -1
  %i.qe = shl nuw nsw i32 %i.ov, 2
  %.idx.i.i.i.i.i.i = zext nneg i32 %i.qe to i64
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ci, %.lr.ph.split.us.i.i.i.preheader.i.i
  %i.qf = phi i32 [ %i.qv, %bb.ci ], [ %i.qb, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %.01929.us.i.i.i.i.i = phi i32 [ %i.qs, %bb.ci ], [ %i.py, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %i.qg = and i32 %i.qf, %i.qd
  %i.qh = icmp eq i32 %i.qg, %i.pv
  br i1 %i.qh, label %.lr.ph.i.preheader.us.i.i.i.i.i, label %bb.ci

.lr.ph.i.preheader.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.qi = and i32 %i.qf, %.sink.i177.i.i
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr [4 x i8], ptr %i.mn, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 -4     ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.idx.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.us.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i:                            ; preds = %bb.ch, %.lr.ph.i.preheader.us.i.i.i.i.i
  %.08.i.us.i.i.i.i.i = phi ptr [ %i.qp, %bb.ch ], [ %i.ql, %.lr.ph.i.preheader.us.i.i.i.i.i ] ; 3 uses
  %i.qn = load i32, ptr %.08.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.qo = icmp eq i32 %i.qn, %i.pb
  br i1 %i.qo, label %bb.ch, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.us.i.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.08.i.us.i.i.i.i.i, i64 4 ; 3 uses
  %i.qq = icmp ult ptr %i.qp, %i.qm
  br i1 %i.qq, label %.lr.ph.i.us.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, !llvm.loop !69

bb.ci:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.qr = add nuw nsw i32 %.01929.us.i.i.i.i.i, %i.py
  %i.qs = urem i32 %i.qr, %.0.i118.i186.i.i       ; 3 uses
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !34 ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !82

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.us.i.i.i.i.i
  %.0.lcssa.i.ph.us.i.i.i.i.i = phi ptr [ %.08.i.us.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i ], [ %i.qp, %bb.ch ]
  %i.qx = icmp eq ptr %.0.lcssa.i.ph.us.i.i.i.i.i, %i.qm
  br i1 %i.qx, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i, label %bb.ci

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ci, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %.019.lcssa.i.i.i.i.i = phi i32 [ %i.py, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i ], [ %i.qs, %bb.ci ]
  %i.qy = xor i32 %.019.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.3.ph.i.i.i.i.i = phi i32 [ %i.qy, %._crit_edge.i.i.i.i.i ], [ %.01929.us.i.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.qz = icmp sgt i32 %.3.ph.i.i.i.i.i, -1
  br i1 %i.qz, label %bb.cj, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

bb.cj:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %i.ra = zext nneg i32 %.3.ph.i.i.i.i.i to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !34
  %i.rd = and i32 %i.rc, %.sink.i177.i.i
  %i.re = add nsw i32 %i.rd, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i: ; preds = %bb.cj, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %.0.i126.i.i.i = phi i32 [ %i.re, %bb.cj ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i ] ; 4 uses
  %i.rf = icmp eq i32 %.0101207.i.i.i, %.011.i.i.i
  %.not115.i.i.i = icmp uge i32 %.0101207.i.i.i, %i.co
  %i.rg = icmp sgt i32 %.0.i126.i.i.i, -1         ; 2 uses
  %i.rh = and i1 %i.rf, %.not115.i.i.i
  %or.cond116188.i.i.i = and i1 %i.rh, %i.rg
  %i.ri = icmp slt i32 %.0.i126.i.i.i, %.1103.i.i.i
  %or.cond117189.i.i.i = select i1 %or.cond116188.i.i.i, i1 %i.ri, i1 false
  br i1 %or.cond117189.i.i.i, label %.lr.ph191.split.preheader.i.i.i, label %.critedge.i82.i.i

.lr.ph191.split.preheader.i.i.i:                  ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %i.rj = sub nuw nsw i32 %.1111202.i.i.i, %.1108.i.i.i ; 2 uses
  %i.rk = zext nneg i32 %.1108.i.i.i to i64
  br label %.lr.ph191.split.i.i.i

.lr.ph191.split.i.i.i:                            ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %.lr.ph191.split.preheader.i.i.i
  %.099190.i.i.i = phi i32 [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ], [ %.0.i126.i.i.i, %.lr.ph191.split.preheader.i.i.i ] ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph191.split.i.i.i
  %indvars.iv.i.i83.i.i = phi i64 [ 0, %.lr.ph191.split.i.i.i ], [ %indvars.iv.next.i.i84.i.i, %bb.ck ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.i.i83.i.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !34
  %i.rn = icmp eq i32 %i.rm, %.099190.i.i.i       ; 2 uses
  %indvars.iv.next.i.i84.i.i = add nuw nsw i64 %indvars.iv.i.i83.i.i, 4 ; 2 uses
  %i.ro = icmp samesign uge i64 %indvars.iv.next.i.i84.i.i, %i.op
  %or.cond.not.i.i.i.i = select i1 %i.rn, i1 true, i1 %i.ro
  br i1 %or.cond.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, label %bb.ck, !llvm.loop !83

_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i: ; preds = %bb.ck
  br i1 %i.rn, label %bb.cl, label %.critedge.thread.i.i.i

bb.cl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i
  %.not40.i.not.i.i.i = icmp ult i32 %.099190.i.i.i, %i.rj
  br i1 %.not40.i.not.i.i.i, label %.lr.ph.i.i85.i.i, label %.critedge.thread279.i.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %bb.cl, %.loopexit36.i.i.i.i
  %.02241.i.in.i.i.i = phi i32 [ %.2.i.i.i.i, %.loopexit36.i.i.i.i ], [ %.099190.i.i.i, %bb.cl ] ; 2 uses
  %.02241.i.i.i.i = add nsw i32 %.02241.i.in.i.i.i, 1 ; 5 uses
  %i.rp = sext i32 %.02241.i.i.i.i to i64         ; 2 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !34
  %i.rs = icmp eq i32 %i.rr, %i.pb
  br i1 %i.rs, label %.preheader.i.i.i.i, label %.loopexit36.i.i.i.i

bb.cm:                                            ; preds = %.preheader.i.i.i.i
  %indvars.iv.next.i128.i.i.i = add nuw nsw i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %indvars.iv.next.i128.i.i.i, %i.rk
  br i1 %.not29.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !84

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i85.i.i, %bb.cm
  %indvars.iv.i127.i.i.i = phi i64 [ %indvars.iv.next.i128.i.i.i, %bb.cm ], [ 1, %.lr.ph.i.i85.i.i ] ; 2 uses
  %i.rt = add nsw i64 %indvars.iv.i127.i.i.i, %i.rp ; 2 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !34
  %.not28.i.i.i.i = icmp eq i32 %i.rv, %i.pb
  br i1 %.not28.i.i.i.i, label %bb.cm, label %.loopexit36.loopexit.i.i.i.i

.loopexit36.loopexit.i.i.i.i:                     ; preds = %.preheader.i.i.i.i
  %i.rw = trunc nsw i64 %i.rt to i32
  br label %.loopexit36.i.i.i.i

.loopexit36.i.i.i.i:                              ; preds = %.loopexit36.loopexit.i.i.i.i, %.lr.ph.i.i85.i.i
  %.2.i.i.i.i = phi i32 [ %.02241.i.i.i.i, %.lr.ph.i.i85.i.i ], [ %i.rw, %.loopexit36.loopexit.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp slt i32 %.2.i.i.i.i, %i.rj
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i85.i.i, label %.critedge.thread279.i.i.i, !llvm.loop !85

_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i: ; preds = %bb.cm
  %i.rx = icmp sgt i32 %.02241.i.in.i.i.i, -2     ; 2 uses
  %i.ry = icmp slt i32 %.02241.i.i.i.i, %.1103.i.i.i
  %or.cond117.i.i.i = select i1 %i.rx, i1 %i.ry, i1 false
  br i1 %or.cond117.i.i.i, label %.lr.ph191.split.i.i.i, label %.critedge.i82.i.i, !llvm.loop !86

.critedge.i82.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %.099.lcssa.i.i.i = phi i32 [ %.0.i126.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  %.lcssa177.i.i.i = phi i1 [ %i.rg, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %i.rx, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  br i1 %.lcssa177.i.i.i, label %.critedge.thread.i.i.i, label %.critedge.thread279.i.i.i

.critedge.thread.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, %.critedge.i82.i.i
  %.099180.i.i.i = phi i32 [ %.099.lcssa.i.i.i, %.critedge.i82.i.i ], [ %.099190.i.i.i, %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i ]
  store i32 %.099180.i.i.i, ptr %i.pa, align 4, !tbaa !34
  br label %bb.cw

.critedge.thread279.i.i.i:                        ; preds = %bb.cl, %.loopexit36.i.i.i.i, %.critedge.i82.i.i
  %.neg10.i.i.i.i = add nuw i32 %.1111202.i.i.i, 1
  %i.rz = sub i32 %.neg10.i.i.i.i, %.1108.i.i.i   ; 3 uses
  %i.sa = icmp samesign ult i32 %i.rz, %.1111202.i.i.i
  br i1 %i.sa, label %.lr.ph.preheader.i129.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

.lr.ph.preheader.i129.i.i.i:                      ; preds = %.critedge.thread279.i.i.i
  %i.sb = zext nneg i32 %.1111202.i.i.i to i64
  %i.sc = zext nneg i32 %i.rz to i64
  br label %.lr.ph.i130.i.i.i

.lr.ph.i130.i.i.i:                                ; preds = %bb.cn, %.lr.ph.preheader.i129.i.i.i
  %indvars.iv.i131.i.i.i = phi i64 [ %i.sb, %.lr.ph.preheader.i129.i.i.i ], [ %indvars.iv.next.i132.i.i.i, %bb.cn ] ; 3 uses
  %i.sd = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.i131.i.i.i
  %i.se = getelementptr i8, ptr %i.sd, i64 -4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !34
  %i.sg = icmp eq i32 %i.sf, %i.pb
  br i1 %i.sg, label %bb.cn, label %.critedge.loopexit.split.loop.exit16.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph.i130.i.i.i
  %indvars.iv.next.i132.i.i.i = add nsw i64 %indvars.iv.i131.i.i.i, -1 ; 2 uses
  %i.sh = icmp samesign ugt i64 %indvars.iv.next.i132.i.i.i, %i.sc
  br i1 %i.sh, label %.lr.ph.i130.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i, !llvm.loop !87

.critedge.loopexit.split.loop.exit16.i.i.i.i:     ; preds = %.lr.ph.i130.i.i.i
  %i.si = trunc nuw nsw i64 %indvars.iv.i131.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i: ; preds = %bb.cn, %.critedge.loopexit.split.loop.exit16.i.i.i.i, %.critedge.thread279.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %.1111202.i.i.i, %.critedge.thread279.i.i.i ], [ %i.si, %.critedge.loopexit.split.loop.exit16.i.i.i.i ], [ %i.rz, %bb.cn ] ; 3 uses
  %i.sj = sub nsw i32 %.1111202.i.i.i, %.0.lcssa.i.i.i.i ; 3 uses
  store i32 %.0.lcssa.i.i.i.i, ptr %i.pa, align 4, !tbaa !34
  %i.sk = icmp slt i32 %i.sj, %.1108.i.i.i
  br i1 %i.sk, label %.lr.ph198.preheader.i.i.i, label %._crit_edge199.i.i.i

.lr.ph198.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %i.sl = zext i32 %.1111202.i.i.i to i64         ; 3 uses
  %i.sm = add i32 %.0.lcssa.i.i.i.i, %.1108.i.i.i
  %i.sn = xor i32 %.1111202.i.i.i, -1
  %i.so = add i32 %i.sm, %i.sn                    ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %i.sq = add nuw nsw i64 %i.sp, 1                ; 2 uses
  %min.iters.check231 = icmp ult i32 %i.so, 7
  br i1 %min.iters.check231, label %.lr.ph198.i.i.i.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph198.preheader.i.i.i
  %n.vec233 = and i64 %i.sq, 8589934584           ; 4 uses
  %i.sr = add nuw nsw i64 %n.vec233, %i.sl        ; 2 uses
  %i.ss = trunc i64 %n.vec233 to i32
  %i.st = add i32 %i.sj, %i.ss
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %i.pb, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep505 = getelementptr [4 x i8], ptr %i.mn, i64 %i.sl
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph232
  %index237 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body236 ] ; 2 uses
  %gep506 = getelementptr [4 x i8], ptr %invariant.gep505, i64 %index237 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %gep506, i64 16
  store <4 x i32> %broadcast.splat235, ptr %gep506, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat235, ptr %i.su, align 4, !tbaa !34
  %index.next238 = add nuw i64 %index237, 8       ; 2 uses
  %i.sv = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.sv, label %middle.block239, label %vector.body236, !llvm.loop !88

middle.block239:                                  ; preds = %vector.body236
  %cmp.n240 = icmp eq i64 %i.sq, %n.vec233
  br i1 %cmp.n240, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i.preheader

.lr.ph198.i.i.i.preheader:                        ; preds = %.lr.ph198.preheader.i.i.i, %middle.block239
  %indvars.iv255.i.i.i.ph = phi i64 [ %i.sl, %.lr.ph198.preheader.i.i.i ], [ %i.sr, %middle.block239 ]
  %.1100197.i.i.i.ph = phi i32 [ %i.sj, %.lr.ph198.preheader.i.i.i ], [ %i.st, %middle.block239 ]
  br label %.lr.ph198.i.i.i

.lr.ph198.i.i.i:                                  ; preds = %.lr.ph198.i.i.i.preheader, %.lr.ph198.i.i.i
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ], [ %indvars.iv255.i.i.i.ph, %.lr.ph198.i.i.i.preheader ] ; 2 uses
  %.1100197.i.i.i = phi i32 [ %i.sx, %.lr.ph198.i.i.i ], [ %.1100197.i.i.i.ph, %.lr.ph198.i.i.i.preheader ]
  %indvars.iv.next256.i.i.i = add nuw nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv255.i.i.i
  store i32 %i.pb, ptr %i.sw, align 4, !tbaa !34
  %i.sx = add nsw i32 %.1100197.i.i.i, 1          ; 2 uses
  %exitcond258.not.i.i.i = icmp eq i32 %i.sx, %.1108.i.i.i
  br i1 %exitcond258.not.i.i.i, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i, !llvm.loop !89

._crit_edge199.loopexit.i.i.i:                    ; preds = %.lr.ph198.i.i.i, %middle.block239
  %indvars.iv.next256.i.i.i.lcssa = phi i64 [ %i.sr, %middle.block239 ], [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ]
  %i.sy = trunc nuw i64 %indvars.iv.next256.i.i.i.lcssa to i32
  br label %._crit_edge199.i.i.i

._crit_edge199.i.i.i:                             ; preds = %._crit_edge199.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %.2112.lcssa.i.i.i = phi i32 [ %.1111202.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i ], [ %i.sy, %._crit_edge199.loopexit.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef %.1111202.i.i.i, i32 noundef %.2112.lcssa.i.i.i)
  br label %bb.cw

bb.co:                                            ; preds = %bb.cg
  %i.sz = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 2 uses
  %i.ta = ptrtoaddr ptr %i.sz to i64
  %i.tb = load ptr, ptr %0, align 8, !tbaa !22
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ow ; 3 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !34
  %i.te = zext i32 %i.td to i64                   ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.te ; 14 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !34 ; 2 uses
  %i.th = tail call i32 @llvm.smax.i32(i32 %i.ov, i32 2)
  %smax.i.i.i.i = zext nneg i32 %i.th to i64
  %i.ti = add nsw i64 %smax.i.i.i.i, -1           ; 2 uses
  %xtraiter411 = and i64 %i.ti, 3
  %i.tj = icmp eq i32 %i.ov, 0
  br i1 %i.tj, label %.epil.preheader410, label %.new

.new:                                             ; preds = %bb.co
  %unroll_iter416 = and i64 %i.ti, -4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.new
  %indvars.iv.i.i.i.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cp ] ; 5 uses
  %.0.i.i.i.i.i = phi i32 [ %i.tg, %.new ], [ %i.uc, %bb.cp ]
  %niter417 = phi i64 [ 0, %.new ], [ %niter417.next.3, %bb.cp ]
  %i.tk = mul i32 %.0.i.i.i.i.i, 37
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv.i.i.i.i.i
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !34
  %i.tn = add i32 %i.tk, %i.tm
  %i.to = mul i32 %i.tn, 37
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv.i.i.i.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !34
  %i.ts = add i32 %i.to, %i.tr
  %i.tt = mul i32 %i.ts, 37
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !34
  %i.tx = add i32 %i.tt, %i.tw
  %i.ty = mul i32 %i.tx, 37
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv.i.i.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !34
  %i.uc = add i32 %i.ty, %i.ub                    ; 2 uses
  %niter417.next.3 = add nuw i64 %niter417, 4     ; 2 uses
  %niter417.ncmp.3 = icmp eq i64 %niter417.next.3, %unroll_iter416
  br i1 %niter417.ncmp.3, label %.epil.preheader410, label %bb.cp, !llvm.loop !1

.epil.preheader410:                               ; preds = %bb.cp, %bb.co
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 1, %bb.co ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cp ]
  %.0.i.i.i.i.i.epil.init = phi i32 [ %i.tg, %bb.co ], [ %i.uc, %bb.cp ]
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.epil.preheader410
  %indvars.iv.i.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.i.epil, %bb.cq ], [ %indvars.iv.i.i.i.i.i.epil.init, %.epil.preheader410 ] ; 2 uses
  %.0.i.i.i.i.i.epil = phi i32 [ %i.ug, %bb.cq ], [ %.0.i.i.i.i.i.epil.init, %.epil.preheader410 ]
  %epil.iter412 = phi i64 [ %epil.iter412.next, %bb.cq ], [ 0, %.epil.preheader410 ]
  %i.ud = mul i32 %.0.i.i.i.i.i.epil, 37
  %indvars.iv.next.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.epil, 1
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv.i.i.i.i.i.epil
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !34
  %i.ug = add i32 %i.ud, %i.uf                    ; 3 uses
  %epil.iter412.next = add i64 %epil.iter412, 1   ; 2 uses
  %epil.iter412.cmp.not = icmp eq i64 %epil.iter412.next, %xtraiter411
  br i1 %epil.iter412.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i, label %bb.cq, !llvm.loop !90

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i: ; preds = %bb.cq
  %i.uh = shl i32 %i.ug, %.sink312.i174.i.i
  %i.ui = add nsw i32 %.0.i118.i186.i.i, -1
  %i.uj = urem i32 %i.ug, %i.ui
  %i.uk = add nuw nsw i32 %i.uj, 1                ; 4 uses
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ul
  %i.un = load i32, ptr %i.um, align 4, !tbaa !34 ; 2 uses
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.preheader.i.i

.lr.ph.split.us.i.i139.i.preheader.i.i:           ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %i.up = xor i32 %.sink.i177.i.i, -1
  br label %.lr.ph.split.us.i.i139.i.i.i

.lr.ph.split.us.i.i139.i.i.i:                     ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %.lr.ph.split.us.i.i139.i.preheader.i.i
  %i.uq = phi i32 [ %i.vi, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.un, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %.02037.us.i.i.i.i.i = phi i32 [ %i.vf, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.uk, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %i.ur = and i32 %i.uq, %i.up
  %i.us = icmp eq i32 %i.ur, %i.uh
  br i1 %i.us, label %.lr.ph.i.preheader.us.i.i140.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

.lr.ph.i.preheader.us.i.i140.i.i.i:               ; preds = %.lr.ph.split.us.i.i139.i.i.i
  %i.ut = and i32 %i.uq, %.sink.i177.i.i
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = getelementptr [4 x i8], ptr %i.mn, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 -4
  br label %.lr.ph.i.us.i.i141.i.i.i

.lr.ph.i.us.i.i141.i.i.i:                         ; preds = %bb.cr, %.lr.ph.i.preheader.us.i.i140.i.i.i
  %.010.i.us.i.i.i.i.i = phi i32 [ %i.vc, %bb.cr ], [ %i.ov, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i.i = phi ptr [ %i.vb, %bb.cr ], [ %i.tf, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i.i = phi ptr [ %i.va, %bb.cr ], [ %i.uw, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %i.ux = load i32, ptr %.078.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.uy = load i32, ptr %.069.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.uz = icmp eq i32 %i.ux, %i.uy
  br i1 %i.uz, label %bb.cr, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.us.i.i141.i.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i.i, i64 4
  %i.vb = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i.i, i64 4
  %i.vc = add nsw i32 %.010.i.us.i.i.i.i.i, -1
  %i.vd = icmp sgt i32 %.010.i.us.i.i.i.i.i, 1
  br i1 %i.vd, label %.lr.ph.i.us.i.i141.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i, !llvm.loop !2

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i141.i.i.i, %.lr.ph.split.us.i.i139.i.i.i
  %i.ve = add nuw nsw i32 %.02037.us.i.i.i.i.i, %i.uk
  %i.vf = urem i32 %i.ve, %.0.i118.i186.i.i       ; 3 uses
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !34 ; 2 uses
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i, !llvm.loop !3

._crit_edge.i.i136.i.i.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %.020.lcssa.i.i.i.i.i = phi i32 [ %i.uk, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i ], [ %i.vf, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ]
  %i.vk = xor i32 %.020.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i: ; preds = %bb.cr, %._crit_edge.i.i136.i.i.i
  %.3.ph.i.i137.i.i.i = phi i32 [ %i.vk, %._crit_edge.i.i136.i.i.i ], [ %.02037.us.i.i.i.i.i, %bb.cr ] ; 2 uses
  %i.vl = icmp sgt i32 %.3.ph.i.i137.i.i.i, -1
  br i1 %i.vl, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vm = zext nneg i32 %.3.ph.i.i137.i.i.i to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !34
  %i.vp = and i32 %i.vo, %.sink.i177.i.i          ; 2 uses
  %i.vq = icmp sgt i32 %i.vp, 0
  br i1 %i.vq, label %bb.cs, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

bb.cs:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i
  %i.vr = add nsw i32 %i.vp, -1
  store i32 %i.vr, ptr %i.tc, align 4, !tbaa !34
  br label %bb.cw

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vs = zext nneg i32 %.1108.i.i.i to i64       ; 4 uses
  %i.vt = zext i32 %.1111202.i.i.i to i64         ; 6 uses
  br label %bb.ct

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i143.i.i.i
  %i.vu = icmp sgt i64 %indvars.iv.in.i.i.i.i, 2
  br i1 %i.vu, label %bb.ct, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !91

bb.ct:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i
  %indvars.iv.in.i.i.i.i = phi i64 [ %i.vs, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i ], [ %indvars.iv.i142.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.i142.i.i.i = add nsw i64 %indvars.iv.in.i.i.i.i, -1 ; 3 uses
  %i.vv = sub nsw i64 %i.vt, %indvars.iv.i142.i.i.i
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.vv
  %i.vx = trunc nuw nsw i64 %indvars.iv.i142.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i143.i.i.i

.lr.ph.i.i143.i.i.i:                              ; preds = %bb.cu, %bb.ct
  %.010.i.i.i.i.i = phi i32 [ %i.wd, %bb.cu ], [ %i.vx, %bb.ct ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.wc, %bb.cu ], [ %i.tf, %bb.ct ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.wb, %bb.cu ], [ %i.vw, %bb.ct ] ; 2 uses
  %i.vy = load i32, ptr %.078.i.i.i.i.i, align 4, !tbaa !34
  %i.vz = load i32, ptr %.069.i.i.i.i.i, align 4, !tbaa !34
  %i.wa = icmp eq i32 %i.vy, %i.vz
  br i1 %i.wa, label %bb.cu, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.cu:                                            ; preds = %.lr.ph.i.i143.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.078.i.i.i.i.i, i64 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.069.i.i.i.i.i, i64 4
  %i.wd = add nsw i32 %.010.i.i.i.i.i, -1
  %i.we = icmp sgt i32 %.010.i.i.i.i.i, 1
  br i1 %i.we, label %.lr.ph.i.i143.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !2

_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %bb.cu
  %.013.i.i.i.i = phi i32 [ %i.vx, %bb.cu ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 3 uses
  %i.wf = sub nsw i32 %.1111202.i.i.i, %.013.i.i.i.i
  store i32 %i.wf, ptr %i.tc, align 4, !tbaa !34
  %i.wg = icmp slt i32 %.013.i.i.i.i, %.1108.i.i.i
  br i1 %i.wg, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i74.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %i.wh = sext i32 %.013.i.i.i.i to i64           ; 6 uses
  %i.wi = sub nsw i64 %i.vs, %i.wh                ; 3 uses
  %min.iters.check245 = icmp ult i64 %i.wi, 8
  br i1 %min.iters.check245, label %.lr.ph.i77.i.i.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.preheader.i.i.i
  %i.wj = shl nuw nsw i64 %i.vt, 2
  %i.wk = add i64 %i.wj, %i.mo
  %i.wl = add nsw i64 %i.wh, %i.te
  %i.wm = shl nsw i64 %i.wl, 2
  %i.wn = add i64 %i.wm, %i.ta
  %i.wo = sub i64 %i.wn, %i.wk
  %diff.check = icmp ugt i64 %i.wo, -32
  br i1 %diff.check, label %.lr.ph.i77.i.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck243
  %n.vec247 = and i64 %i.wi, -8                   ; 4 uses
  %i.wp = add nsw i64 %n.vec247, %i.vt            ; 2 uses
  %i.wq = add nsw i64 %n.vec247, %i.wh
  %invariant.gep = getelementptr [4 x i8], ptr %i.tf, i64 %i.wh
  %invariant.gep503 = getelementptr [4 x i8], ptr %i.mn, i64 %i.vt
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next251, %vector.body248 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index249 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !34
  %wide.load250 = load <4 x i32>, ptr %i.wr, align 4, !tbaa !34
  %gep504 = getelementptr [4 x i8], ptr %invariant.gep503, i64 %index249 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %gep504, i64 16
  store <4 x i32> %wide.load, ptr %gep504, align 4, !tbaa !34
  store <4 x i32> %wide.load250, ptr %i.ws, align 4, !tbaa !34
  %index.next251 = add nuw i64 %index249, 8       ; 2 uses
  %i.wt = icmp eq i64 %index.next251, %n.vec247
  br i1 %i.wt, label %middle.block252, label %vector.body248, !llvm.loop !92

middle.block252:                                  ; preds = %vector.body248
  %cmp.n253 = icmp eq i64 %i.wi, %n.vec247
  br i1 %cmp.n253, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i.preheader

.lr.ph.i77.i.i.preheader:                         ; preds = %vector.memcheck243, %.lr.ph.preheader.i.i.i, %middle.block252
  %indvars.iv250.i.i.i.ph = phi i64 [ %i.vt, %vector.memcheck243 ], [ %i.vt, %.lr.ph.preheader.i.i.i ], [ %i.wp, %middle.block252 ] ; 2 uses
  %indvars.iv.i78.i.i.ph = phi i64 [ %i.wh, %vector.memcheck243 ], [ %i.wh, %.lr.ph.preheader.i.i.i ], [ %i.wq, %middle.block252 ] ; 4 uses
  %i.wu = sub nsw i64 0, %indvars.iv.i78.i.i.ph
  %xtraiter418 = and i64 %i.wu, 3                 ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph.i77.i.i.prol.loopexit, label %.lr.ph.i77.i.i.prol

.lr.ph.i77.i.i.prol:                              ; preds = %.lr.ph.i77.i.i.preheader, %.lr.ph.i77.i.i.prol
  %indvars.iv250.i.i.i.prol = phi i64 [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ], [ %indvars.iv250.i.i.i.ph, %.lr.ph.i77.i.i.preheader ] ; 2 uses
  %indvars.iv.i78.i.i.prol = phi i64 [ %indvars.iv.next.i79.i.i.prol, %.lr.ph.i77.i.i.prol ], [ %indvars.iv.i78.i.i.ph, %.lr.ph.i77.i.i.preheader ] ; 2 uses
  %prol.iter420 = phi i64 [ %prol.iter420.next, %.lr.ph.i77.i.i.prol ], [ 0, %.lr.ph.i77.i.i.preheader ]
  %indvars.iv.next.i79.i.i.prol = add nsw i64 %indvars.iv.i78.i.i.prol, 1 ; 2 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %indvars.iv.i78.i.i.prol
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !34
  %indvars.iv.next251.i.i.i.prol = add nuw nsw i64 %indvars.iv250.i.i.i.prol, 1 ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i.prol
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !34
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %.lr.ph.i77.i.i.prol.loopexit, label %.lr.ph.i77.i.i.prol, !llvm.loop !93

.lr.ph.i77.i.i.prol.loopexit:                     ; preds = %.lr.ph.i77.i.i.prol, %.lr.ph.i77.i.i.preheader
  %indvars.iv.next251.i.i.i.lcssa356.unr = phi i64 [ poison, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %indvars.iv250.i.i.i.unr = phi i64 [ %indvars.iv250.i.i.i.ph, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %indvars.iv.i78.i.i.unr = phi i64 [ %indvars.iv.i78.i.i.ph, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next.i79.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %i.wy = sub nsw i64 %indvars.iv.i78.i.i.ph, %i.vs
  %i.wz = icmp ugt i64 %i.wy, -4
  br i1 %i.wz, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i

.lr.ph.i77.i.i:                                   ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i
  %indvars.iv250.i.i.i = phi i64 [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv250.i.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i78.i.i = phi i64 [ %indvars.iv.next.i79.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv.i78.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %indvars.iv.i78.i.i
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !34
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !34
  %i.xd = getelementptr [4 x i8], ptr %i.tf, i64 %indvars.iv.i78.i.i
  %i.xe = getelementptr i8, ptr %i.xd, i64 4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !34
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  store i32 %i.xf, ptr %i.xh, align 4, !tbaa !34
  %i.xi = getelementptr [4 x i8], ptr %i.tf, i64 %indvars.iv.i78.i.i
  %i.xj = getelementptr i8, ptr %i.xi, i64 8
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !34
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 %i.xk, ptr %i.xm, align 4, !tbaa !34
  %indvars.iv.next.i79.i.i.3 = add nsw i64 %indvars.iv.i78.i.i, 4 ; 2 uses
  %i.xn = getelementptr [4 x i8], ptr %i.tf, i64 %indvars.iv.i78.i.i
  %i.xo = getelementptr i8, ptr %i.xn, i64 12
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !34
  %indvars.iv.next251.i.i.i.3 = add nuw nsw i64 %indvars.iv250.i.i.i, 4 ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 %i.xp, ptr %i.xr, align 4, !tbaa !34
  %exitcond.not.i80.i.i.3 = icmp eq i64 %indvars.iv.next.i79.i.i.3, %i.vs
  br i1 %exitcond.not.i80.i.i.3, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i, !llvm.loop !94

._crit_edge.loopexit.i81.i.i:                     ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i, %middle.block252
  %indvars.iv.next251.i.i.i.lcssa = phi i64 [ %i.wp, %middle.block252 ], [ %indvars.iv.next251.i.i.i.lcssa356.unr, %.lr.ph.i77.i.i.prol.loopexit ], [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i77.i.i ]
  %i.xs = trunc nuw i64 %indvars.iv.next251.i.i.i.lcssa to i32
  br label %._crit_edge.i74.i.i

._crit_edge.i74.i.i:                              ; preds = %._crit_edge.loopexit.i81.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %.4.lcssa.i.i.i = phi i32 [ %.1111202.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.xs, %._crit_edge.loopexit.i81.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef %.1111202.i.i.i, i32 noundef %.4.lcssa.i.i.i)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cg
  %i.xt = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.ow ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !34
  %i.xw = zext i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !34
  store i32 %i.xy, ptr %i.xu, align 4, !tbaa !34
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i74.i.i, %bb.cs, %._crit_edge199.i.i.i, %.critedge.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.1111202.i.i.i, %bb.cv ], [ %.2112.lcssa.i.i.i, %._crit_edge199.i.i.i ], [ %.1111202.i.i.i, %.critedge.thread.i.i.i ], [ %.1111202.i.i.i, %bb.cs ], [ %.4.lcssa.i.i.i, %._crit_edge.i74.i.i ] ; 2 uses
  %i.xz = add i32 %.1105.i.i.i, %.0101207.i.i.i   ; 2 uses
  %.not.i75.i.i = icmp slt i32 %i.xz, %i.oj
  br i1 %.not.i75.i.i, label %bb.cc, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, !llvm.loop !95

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i: ; preds = %.noexc88.i.i, %.noexc86.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fs

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.cw, %bb.cb
  %.pre.i.i93.ph.i.i = phi ptr [ %i.oe, %bb.cb ], [ %9, %bb.cw ] ; 4 uses
  %.2.i72.ph.i.i = phi i32 [ 128, %bb.cb ], [ %.6.i.i.i, %bb.cw ] ; 2 uses
  %.pr.i.i = load i32, ptr %3, align 4, !tbaa !17
  %i.ya = icmp slt i32 %.pr.i.i, 1
  br i1 %i.ya, label %bb.cx, label %bb.fs

bb.cx:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i
  %i.yb = load ptr, ptr %i.gr, align 8, !tbaa !32
  invoke void @uprv_free_78(ptr noundef %i.yb)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.mn, ptr %i.gr, align 8, !tbaa !32
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.5136.i.i.i, ptr %i.yc, align 8, !tbaa !33
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.2.i72.ph.i.i, ptr %i.yd, align 4, !tbaa !35
  %i.ye = icmp samesign ugt i32 %.2.i72.ph.i.i, 262159
  br i1 %i.ye, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 8, ptr %3, align 4, !tbaa !17
  br label %bb.fs

bb.da:                                            ; preds = %bb.cy
  %i.yf = icmp sgt i32 %.011.i.i.i, -1
  br i1 %i.yf, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yg = load ptr, ptr %0, align 8, !tbaa !22
  %i.yh = zext nneg i32 %.011.i.i.i to i64
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !34 ; 2 uses
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !34
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ym, ptr %i.yn, align 8, !tbaa !27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sink.i.i = phi i32 [ %i.yj, %bb.db ], [ 1048575, %bb.da ]
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yo, align 8, !tbaa !25
  %i.yp = lshr exact i32 %i.cn, 6                 ; 5 uses
  %i.yq = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.yr = ashr i32 %i.yq, 6
  %.not.i89.i.i = icmp sgt i32 %i.yr, %i.yp
  br i1 %.not.i89.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32767, ptr %i.ys, align 4, !tbaa !24
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.yt = load ptr, ptr %0, align 8, !tbaa !22
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.yv = add nsw i32 %i.co, -4
  %i.yw = lshr exact i32 %i.yv, 2
  %i.yx = add nuw nsw i32 %i.yw, 1
  %wide.trip.count.i90.i.i = zext nneg i32 %i.yx to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %bb.de
  %indvars.iv447.i.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next448.i.i.i, %bb.dj ] ; 2 uses
  %indvars.iv.i91.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next446.i.i.i, %bb.dj ] ; 3 uses
  %.0284390.i.i.i = phi i32 [ -1, %bb.de ], [ %.1285.i.i.i, %bb.dj ] ; 5 uses
  %indvars449.i.i.i = trunc i64 %indvars.iv.i91.i.i to i32 ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv447.i.i.i ; 3 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !34 ; 4 uses
  %i.za = trunc i32 %i.yz to i16
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i91.i.i
  store i16 %i.za, ptr %i.zb, align 2, !tbaa !42
  %i.zc = load i32, ptr %i.yo, align 8, !tbaa !25
  %i.zd = icmp eq i32 %i.yz, %i.zc
  br i1 %i.zd, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ze = icmp slt i32 %.0284390.i.i.i, 0
  br i1 %i.ze, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.zf = load i32, ptr %i.yu, align 4, !tbaa !24
  %i.zg = icmp slt i32 %i.zf, 0
  %i.zh = sub nsw i32 %indvars449.i.i.i, %.0284390.i.i.i
  %i.zi = icmp eq i32 %i.zh, 31
  %or.cond315.i.i.i = select i1 %i.zg, i1 %i.zi, i1 false
  br i1 %or.cond315.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 %.0284390.i.i.i, ptr %i.yu, align 4, !tbaa !24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.1285.i.i.i = phi i32 [ %.0284390.i.i.i, %bb.dh ], [ %.0284390.i.i.i, %bb.di ], [ %indvars449.i.i.i, %bb.dg ], [ -1, %bb.df ]
  %i.zj = insertelement <2 x i32> poison, i32 %i.yz, i64 0
  %i.zk = shufflevector <2 x i32> %i.zj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.zl = add <2 x i32> %i.zk, <i32 16, i32 32>
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store <2 x i32> %i.zl, ptr %i.zm, align 4, !tbaa !34
  %i.zn = add i32 %i.yz, 48
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !34
  %indvars.iv.next448.i.i.i = add nuw nsw i64 %indvars.iv447.i.i.i, 4
  %indvars.iv.next446.i.i.i = add nuw nsw i64 %indvars.iv.i91.i.i, 1 ; 2 uses
  %exitcond.not.i92.i.i = icmp eq i64 %indvars.iv.next446.i.i.i, %wide.trip.count.i90.i.i
  br i1 %exitcond.not.i92.i.i, label %._crit_edge.i.i94.i.i, label %bb.df, !llvm.loop !96

._crit_edge.i.i94.i.i:                            ; preds = %bb.dj
  %i.zp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zq = getelementptr inbounds nuw i8, ptr %6, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i93.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.og, align 4, !tbaa !34
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %i.yp)
  %i.zr = and i32 %i.co, 4096                     ; 4 uses
  %i.zs = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.zt = ashr i32 %i.zs, 4                       ; 4 uses
  %i.zu = icmp slt i32 %i.zr, %i.zt               ; 2 uses
  br i1 %i.zu, label %.preheader376.lr.ph.i.i.i, label %._crit_edge.i95.i.i

.preheader376.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i94.i.i
  %i.zv = load i32, ptr %i.yu, align 4, !tbaa !24
  %i.zw = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.zx = zext nneg i32 %i.zr to i64
  %sext.i.i = zext nneg i32 %i.zt to i64
  br label %.preheader376.i.i.i

.preheader376.i.i.i:                              ; preds = %bb.dr, %.preheader376.lr.ph.i.i.i
  %indvars.iv458.i.i.i = phi i64 [ %i.zx, %.preheader376.lr.ph.i.i.i ], [ %i.acs, %bb.dr ] ; 6 uses
  %.0273395.i.i.i = phi i1 [ false, %.preheader376.lr.ph.i.i.i ], [ %.2275.i.i.i, %bb.dr ] ; 4 uses
  %.0276394.i.i.i = phi i32 [ 0, %.preheader376.lr.ph.i.i.i ], [ %.3279.i.i.i, %bb.dr ] ; 5 uses
  %.2286393.i.i.i = phi i32 [ %i.zv, %.preheader376.lr.ph.i.i.i ], [ %.3287.i.i.i, %bb.dr ] ; 5 uses
  %i.zy = load i32, ptr %i.yo, align 8, !tbaa !25
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv458.i.i.i ; 2 uses
  %i.aaa = load <32 x i32>, ptr %i.zz, align 4, !tbaa !34 ; 33 uses
  %i.aab = extractelement <32 x i32> %i.aaa, i64 0
  %i.aac = extractelement <32 x i32> %i.aaa, i64 1
  %i.aad = or i32 %i.aac, %i.aab
  %i.aae = extractelement <32 x i32> %i.aaa, i64 2
  %i.aaf = or i32 %i.aad, %i.aae
  %i.aag = extractelement <32 x i32> %i.aaa, i64 3
  %i.aah = or i32 %i.aaf, %i.aag
  %i.aai = extractelement <32 x i32> %i.aaa, i64 4
  %i.aaj = or i32 %i.aah, %i.aai
  %i.aak = extractelement <32 x i32> %i.aaa, i64 5
  %i.aal = or i32 %i.aaj, %i.aak
  %i.aam = extractelement <32 x i32> %i.aaa, i64 6
  %i.aan = or i32 %i.aal, %i.aam
  %i.aao = extractelement <32 x i32> %i.aaa, i64 7
  %i.aap = or i32 %i.aan, %i.aao
  %i.aaq = extractelement <32 x i32> %i.aaa, i64 8
  %i.aar = or i32 %i.aap, %i.aaq
  %i.aas = extractelement <32 x i32> %i.aaa, i64 9
  %i.aat = or i32 %i.aar, %i.aas
  %i.aau = extractelement <32 x i32> %i.aaa, i64 10
  %i.aav = or i32 %i.aat, %i.aau
  %i.aaw = extractelement <32 x i32> %i.aaa, i64 11
  %i.aax = or i32 %i.aav, %i.aaw
  %i.aay = extractelement <32 x i32> %i.aaa, i64 12
  %i.aaz = or i32 %i.aax, %i.aay
  %i.aba = extractelement <32 x i32> %i.aaa, i64 13
  %i.abb = or i32 %i.aaz, %i.aba
  %i.abc = extractelement <32 x i32> %i.aaa, i64 14
  %i.abd = or i32 %i.abb, %i.abc
  %i.abe = extractelement <32 x i32> %i.aaa, i64 15
  %i.abf = or i32 %i.abd, %i.abe
  %i.abg = extractelement <32 x i32> %i.aaa, i64 16
  %i.abh = or i32 %i.abf, %i.abg
  %i.abi = extractelement <32 x i32> %i.aaa, i64 17
  %i.abj = or i32 %i.abh, %i.abi
  %i.abk = extractelement <32 x i32> %i.aaa, i64 18
  %i.abl = or i32 %i.abj, %i.abk
  %i.abm = extractelement <32 x i32> %i.aaa, i64 19
  %i.abn = or i32 %i.abl, %i.abm
  %i.abo = extractelement <32 x i32> %i.aaa, i64 20
  %i.abp = or i32 %i.abn, %i.abo
  %i.abq = extractelement <32 x i32> %i.aaa, i64 21
  %i.abr = or i32 %i.abp, %i.abq
  %i.abs = extractelement <32 x i32> %i.aaa, i64 22
  %i.abt = or i32 %i.abr, %i.abs
  %i.abu = extractelement <32 x i32> %i.aaa, i64 23
  %i.abv = or i32 %i.abt, %i.abu
  %i.abw = extractelement <32 x i32> %i.aaa, i64 24
  %i.abx = or i32 %i.abv, %i.abw
  %i.aby = extractelement <32 x i32> %i.aaa, i64 25
  %i.abz = or i32 %i.abx, %i.aby
  %i.aca = extractelement <32 x i32> %i.aaa, i64 26
  %i.acb = or i32 %i.abz, %i.aca
  %i.acc = extractelement <32 x i32> %i.aaa, i64 27
  %i.acd = or i32 %i.acb, %i.acc
  %i.ace = extractelement <32 x i32> %i.aaa, i64 28
  %i.acf = or i32 %i.acd, %i.ace
  %i.acg = extractelement <32 x i32> %i.aaa, i64 29
  %i.ach = or i32 %i.acf, %i.acg
  %i.aci = extractelement <32 x i32> %i.aaa, i64 30
  %i.acj = or i32 %i.ach, %i.aci
  %i.ack = extractelement <32 x i32> %i.aaa, i64 31
  %i.acl = or i32 %i.acj, %i.ack                  ; 2 uses
  %i.acm = insertelement <32 x i32> poison, i32 %i.zy, i64 0
  %i.acn = shufflevector <32 x i32> %i.acm, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.aco = icmp eq <32 x i32> %i.aaa, %i.acn
  %i.acp = freeze <32 x i1> %i.aco
  %i.acq = bitcast <32 x i1> %i.acp to i32
  %i.acr = icmp eq i32 %i.acq, -1
  %i.acs = add nuw nsw i64 %indvars.iv458.i.i.i, 32 ; 2 uses
  br i1 %i.acr, label %bb.dk, label %bb.dm

._crit_edge.i95.i.i:                              ; preds = %bb.dr, %._crit_edge.i.i94.i.i
  %.0276.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i94.i.i ], [ %.3279.i.i.i, %bb.dr ]
  %.0273.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i94.i.i ], [ %.2275.i.i.i, %bb.dr ] ; 3 uses
  %i.act = sub nsw i32 %i.zt, %i.zr
  %i.acu = ashr i32 %i.act, 5                     ; 2 uses
  %i.acv = add nsw i32 %i.acu, 31
  %i.acw = ashr i32 %i.acv, 5
  %i.acx = add nsw i32 %i.acw, %i.yp              ; 16 uses
  %i.acy = add nsw i32 %i.acx, %i.acu
  %i.acz = add i32 %i.acy, %.0276.lcssa.i.i.i     ; 7 uses
  %i.ada = shl i32 %i.acz, 1
  %i.adb = add i32 %i.ada, 2
  %i.adc = sext i32 %i.adb to i64
  %i.add = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.adc) #14
          to label %.noexc115.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc115.i.i:                                    ; preds = %._crit_edge.i95.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store ptr %i.add, ptr %i.ade, align 8, !tbaa !31
  %i.adf = icmp eq ptr %i.add, null
  br i1 %i.adf, label %bb.ds, label %bb.dt

bb.dk:                                            ; preds = %.preheader376.i.i.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i
  store i8 0, ptr %i.adg, align 1, !tbaa !40
  %i.adh = icmp slt i32 %.2286393.i.i.i, 0
  br i1 %i.adh, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.adi = icmp ugt i32 %i.acl, 65535             ; 2 uses
  %.1277.v.i.i.i = select i1 %i.adi, i32 36, i32 32
  %.1277.i.i.i = add nsw i32 %.1277.v.i.i.i, %.0276394.i.i.i
  %.1274.i.i.i = select i1 %i.adi, i1 true, i1 %.0273395.i.i.i
  br label %bb.dr

bb.dm:                                            ; preds = %.preheader376.i.i.i
  %i.adj = icmp ult i32 %i.acl, 65536
  br i1 %i.adj, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adk = trunc nuw nsw i64 %indvars.iv458.i.i.i to i32
  %i.adl = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zw, i32 noundef %i.adk) ; 2 uses
  %i.adm = icmp sgt i32 %i.adl, -1
  %i.adn = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i ; 2 uses
  br i1 %i.adm, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.adn, align 1, !tbaa !40
  store i32 %i.adl, ptr %i.zz, align 4, !tbaa !34
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  store i8 2, ptr %i.adn, align 1, !tbaa !40
  %i.ado = add nsw i32 %.0276394.i.i.i, 32
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.adp = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i
  store i8 3, ptr %i.adp, align 1, !tbaa !40
  %i.adq = add nsw i32 %.0276394.i.i.i, 36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk
  %.3287.i.i.i = phi i32 [ 0, %bb.dl ], [ %.2286393.i.i.i, %bb.dk ], [ %.2286393.i.i.i, %bb.dq ], [ %.2286393.i.i.i, %bb.dp ], [ %.2286393.i.i.i, %bb.do ]
  %.3279.i.i.i = phi i32 [ %.1277.i.i.i, %bb.dl ], [ %.0276394.i.i.i, %bb.dk ], [ %i.adq, %bb.dq ], [ %i.ado, %bb.dp ], [ %.0276394.i.i.i, %bb.do ] ; 2 uses
  %.2275.i.i.i = phi i1 [ %.1274.i.i.i, %bb.dl ], [ %.0273395.i.i.i, %bb.dk ], [ true, %bb.dq ], [ %.0273395.i.i.i, %bb.dp ], [ %.0273395.i.i.i, %bb.do ] ; 2 uses
  %i.adr = icmp samesign ult i64 %i.acs, %sext.i.i
  br i1 %i.adr, label %.preheader376.i.i.i, label %._crit_edge.i95.i.i, !llvm.loop !97

bb.ds:                                            ; preds = %.noexc115.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fq

bb.dt:                                            ; preds = %.noexc115.i.i
  %i.ads = lshr exact i32 %i.cn, 5
  %i.adt = zext nneg i32 %i.ads to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.add, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.adt, i1 false)
  %i.adu = icmp slt i32 %i.acz, 4126
  br i1 %i.adu, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.adv = icmp samesign ult i32 %i.acz, 32798
  br i1 %i.adv, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adw = icmp samesign ult i32 %i.acz, 131102   ; 3 uses
  %..i96.i.i = select i1 %i.adw, i32 17, i32 21
  %.537.i.i.i = select i1 %i.adw, i32 131071, i32 2097151
  %.538.i.i.i = select i1 %i.adw, i32 200003, i32 1500007
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.sink536.i.i.i = phi i32 [ 15, %bb.du ], [ %..i96.i.i, %bb.dv ], [ 12, %bb.dt ]
  %.sink.i97.i.i = phi i32 [ 32767, %bb.du ], [ %.537.i.i.i, %bb.dv ], [ 4095, %bb.dt ]
  %.0.i317.i.i.i = phi i32 [ 50021, %bb.du ], [ %.538.i.i.i, %bb.dv ], [ 6007, %bb.dt ] ; 5 uses
  store i32 %.sink536.i.i.i, ptr %i.zp, align 8, !tbaa !46
  store i32 %.sink.i97.i.i, ptr %i.zq, align 4, !tbaa !47
  %10 = load i32, ptr %i.ob, align 8, !tbaa !122
  %11 = icmp sgt i32 %.0.i317.i.i.i, %10
  %.pre.i318.i.i.i = load ptr, ptr %6, align 8, !tbaa !48 ; 2 uses
  br i1 %11, label %bb.dx, label %._crit_edge.i319.i.i.i

._crit_edge.i319.i.i.i:                           ; preds = %bb.dw
  %.pre13.i320.i.i.i = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %.pre14.i321.i.i.i = zext nneg i32 %.pre13.i320.i.i.i to i64
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @uprv_free_78(ptr noundef %.pre.i318.i.i.i)
          to label %.noexc116.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116.i.i:                                    ; preds = %bb.dx
  %i.adx = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %i.ady = zext nneg i32 %i.adx to i64            ; 2 uses
  %i.adz = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ady) #14
          to label %.noexc117.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc117.i.i:                                    ; preds = %.noexc116.i.i
  store ptr %i.adz, ptr %6, align 8, !tbaa !48
  %i.aea = icmp eq ptr %i.adz, null
  br i1 %i.aea, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc117.i.i
  store i32 %.0.i317.i.i.i, ptr %i.ob, align 8, !tbaa !122
  br label %bb.dz

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i: ; preds = %.noexc117.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fq

bb.dz:                                            ; preds = %bb.dy, %._crit_edge.i319.i.i.i
  %.pre-phi15.i322.i.i.i = phi i64 [ %.pre14.i321.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.ady, %bb.dy ]
  %12 = phi ptr [ %.pre.i318.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.adz, %bb.dy ] ; 2 uses
  store i32 %.0.i317.i.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %12, i8 0, i64 %.pre-phi15.i322.i.i.i, i1 false)
  store i32 32, ptr %i.oh, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0273.lcssa.i.i.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.aeb = icmp slt i32 %i.acz, 4130
  br i1 %i.aeb, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aec = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aec, align 8, !tbaa !46
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aed, align 4, !tbaa !47
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.aee = icmp samesign ult i32 %i.acz, 32802
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aee, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aeg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aeg, align 8, !tbaa !46
  store i32 32767, ptr %i.aef, align 4, !tbaa !47
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.aeh = icmp samesign ult i32 %i.acz, 131106
  %i.aei = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aeh, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 17, ptr %i.aei, align 8, !tbaa !46
  store i32 131071, ptr %i.aef, align 4, !tbaa !47
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  store i32 21, ptr %i.aei, align 8, !tbaa !46
  store i32 2097151, ptr %i.aef, align 4, !tbaa !47
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ed, %bb.eb
  %.0.i325.i.i.i = phi i32 [ 6007, %bb.eb ], [ 50021, %bb.ed ], [ 200003, %bb.ef ], [ 1500007, %bb.eg ] ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.ei

.noexc.i.i.i:                                     ; preds = %bb.eh
  %i.aek = shl nuw nsw i32 %.0.i325.i.i.i, 2
  %i.ael = zext nneg i32 %i.aek to i64            ; 2 uses
  %i.aem = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ael) #14
          to label %.noexc332.i.i.i unwind label %bb.ei ; 3 uses

.noexc332.i.i.i:                                  ; preds = %.noexc.i.i.i
  store ptr %i.aem, ptr %4, align 8, !tbaa !48
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 %.0.i325.i.i.i, ptr %i.aej, align 8, !tbaa !122
  %i.aeo = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i325.i.i.i, ptr %i.aeo, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aem, i8 0, i64 %i.ael, i1 false)
  %i.aep = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aep, align 8, !tbaa !50
  br label %bb.ej

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fn

bb.ei:                                            ; preds = %.noexc.i.i.i, %bb.eh
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i unwind label %bb.fp

bb.ej:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.pre.i.i.i = load i32, ptr %i.yu, align 4, !tbaa !24 ; 3 uses
  br i1 %i.zu, label %.lr.ph413.i.i.i, label %._crit_edge414.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.ej
  %i.aer = zext nneg i32 %i.zr to i64
  %i.aes = zext nneg i32 %i.zt to i64
  %.pre248.i.i = zext nneg i32 %i.acx to i64
  br label %bb.ek

._crit_edge414.loopexit.i.i.i:                    ; preds = %bb.fc
  %i.aet = trunc nuw nsw i64 %indvars.iv.next488.i.i.i to i32
  br label %._crit_edge414.i.i.i

._crit_edge414.i.i.i:                             ; preds = %._crit_edge414.loopexit.i.i.i, %bb.ej
  %i.aeu = phi i32 [ %.pre.i.i.i, %bb.ej ], [ %i.asr, %._crit_edge414.loopexit.i.i.i ]
  %.0255.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.aet, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ %i.acx, %bb.ej ], [ %.6.i107.i.i, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %i.aev = icmp slt i32 %i.aeu, 0
  br i1 %i.aev, label %bb.fd, label %bb.fe

bb.ek:                                            ; preds = %bb.fc, %.lr.ph413.i.i.i
  %i.aew = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %i.asr, %bb.fc ]
  %indvars.iv487.i.i.i.a = phi i64 [ 0, %.lr.ph413.i.i.i ], [ %indvars.iv.next488.i.i.i, %bb.fc ] ; 2 uses
  %indvars.iv460.i.i.i = phi i64 [ %i.aer, %.lr.ph413.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.fc ] ; 7 uses
  %.0250408.i.i.i = phi i32 [ %i.acx, %.lr.ph413.i.i.i ], [ %.6.i107.i.i, %bb.fc ] ; 18 uses
  %.4288406.i.i.i = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %.5289360.i.i.i, %bb.fc ] ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv460.i.i.i
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !40 ; 2 uses
  %i.aez = icmp eq i8 %i.aey, 0
  %i.afa = icmp slt i32 %.4288406.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.aez, i1 %i.afa, i1 false
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afb = load i32, ptr %i.yo, align 8, !tbaa !25
  %i.afc = icmp slt i32 %i.afb, 65536
  br i1 %i.afc, label %.thread362.i.i.i, label %.thread.i108.i.i

bb.em:                                            ; preds = %bb.ek
  switch i8 %i.aey, label %.thread.i108.i.i [
    i8 0, label %bb.fa
    i8 1, label %bb.en
    i8 2, label %.thread362.i.i.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.afd = load ptr, ptr %0, align 8, !tbaa !22
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv460.i.i.i
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !34
  br label %bb.fa

.thread362.i.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289365.i.i.i = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ] ; 3 uses
  %i.afg = load ptr, ptr %i.ade, align 8, !tbaa !31 ; 6 uses
  %i.afh = load ptr, ptr %0, align 8, !tbaa !22   ; 3 uses
  %i.afi = trunc nuw nsw i64 %indvars.iv460.i.i.i to i32
  %i.afj = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afg, ptr noundef %i.afh, i32 noundef %i.afi) ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, -1
  br i1 %i.afk, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %.thread362.i.i.i
  %i.afl = icmp eq i32 %.0250408.i.i.i, %i.acx
  br i1 %i.afl, label %.lr.ph403.preheader.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv460.i.i.i ; 2 uses
  %i.afn = sext i32 %.0250408.i.i.i to i64        ; 4 uses
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ep
  %indvars.iv.i.i101.i.i = phi i64 [ 31, %bb.ep ], [ %indvars.iv.next.i.i106.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afo = sub nsw i64 %i.afn, %indvars.iv.i.i101.i.i
  %i.afp = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %i.afo
  %i.afq = trunc nuw nsw i64 %indvars.iv.i.i101.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i

.lr.ph.i.i.i102.i.i:                              ; preds = %bb.er, %bb.eq
  %.010.i.i.i103.i.i = phi i32 [ %i.afx, %bb.er ], [ %i.afq, %bb.eq ] ; 2 uses
  %.069.i.i.i104.i.i = phi ptr [ %i.afw, %bb.er ], [ %i.afm, %bb.eq ] ; 2 uses
  %.078.i.i.i105.i.i = phi ptr [ %i.afv, %bb.er ], [ %i.afp, %bb.eq ] ; 2 uses
  %i.afr = load i16, ptr %.078.i.i.i105.i.i, align 2, !tbaa !42
  %i.afs = zext i16 %i.afr to i32
  %i.aft = load i32, ptr %.069.i.i.i104.i.i, align 4, !tbaa !34
  %i.afu = icmp eq i32 %i.aft, %i.afs
  br i1 %i.afu, label %bb.er, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i102.i.i
  %i.afv = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i, i64 2
  %i.afw = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i, i64 4
  %i.afx = add nsw i32 %.010.i.i.i103.i.i, -1
  %i.afy = icmp sgt i32 %.010.i.i.i103.i.i, 1
  br i1 %i.afy, label %.lr.ph.i.i.i102.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i102.i.i
  %indvars.iv.next.i.i106.i.i = add nsw i64 %indvars.iv.i.i101.i.i, -1 ; 3 uses
  %i.afz = icmp samesign ugt i64 %indvars.iv.i.i101.i.i, 1
  br i1 %i.afz, label %bb.es, label %.lr.ph403.preheader.i.i.i

bb.es:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %i.aga = sub nsw i64 %i.afn, %indvars.iv.next.i.i106.i.i
  %i.agb = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %i.aga
  %i.agc = trunc nuw nsw i64 %indvars.iv.next.i.i106.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i.1

.lr.ph.i.i.i102.i.i.1:                            ; preds = %bb.et, %bb.es
  %.010.i.i.i103.i.i.1 = phi i32 [ %i.agj, %bb.et ], [ %i.agc, %bb.es ] ; 2 uses
  %.069.i.i.i104.i.i.1 = phi ptr [ %i.agi, %bb.et ], [ %i.afm, %bb.es ] ; 2 uses
  %.078.i.i.i105.i.i.1 = phi ptr [ %i.agh, %bb.et ], [ %i.agb, %bb.es ] ; 2 uses
  %i.agd = load i16, ptr %.078.i.i.i105.i.i.1, align 2, !tbaa !42
  %i.age = zext i16 %i.agd to i32
  %i.agf = load i32, ptr %.069.i.i.i104.i.i.1, align 4, !tbaa !34
  %i.agg = icmp eq i32 %i.agf, %i.age
  br i1 %i.agg, label %bb.et, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i102.i.i.1
  %indvars.iv.next.i.i106.i.i.1 = add nsw i64 %indvars.iv.i.i101.i.i, -2
  br label %bb.eq

bb.et:                                            ; preds = %.lr.ph.i.i.i102.i.i.1
  %i.agh = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i.1, i64 2
  %i.agi = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i.1, i64 4
  %i.agj = add nsw i32 %.010.i.i.i103.i.i.1, -1
  %i.agk = icmp sgt i32 %.010.i.i.i103.i.i.1, 1
  br i1 %i.agk, label %.lr.ph.i.i.i102.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.er, %bb.et
  %indvars.iv.i.i101.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i106.i.i, %bb.et ], [ %indvars.iv.i.i101.i.i, %bb.er ]
  %.lcssa343 = phi i32 [ %i.agc, %bb.et ], [ %i.afq, %bb.er ]
  %i.agl = sub nsw i32 %.0250408.i.i.i, %.lcssa343
  br label %.lr.ph403.preheader.i.i.i

.lr.ph403.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %bb.eo
  %.pre-phi.i.i = phi i64 [ %.pre248.i.i, %bb.eo ], [ %i.afn, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.afn, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 4 uses
  %i.agm = phi i32 [ %i.acx, %bb.eo ], [ %i.agl, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 2 uses
  %.0243521.i.i.i = phi i64 [ 0, %bb.eo ], [ %indvars.iv.i.i101.i.i.lcssa, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 7 uses
  %invariant.gep534.i.i.i = getelementptr [4 x i8], ptr %i.afh, i64 %indvars.iv460.i.i.i ; 2 uses
  %i.agn = add i64 %.0243521.i.i.i, 1
  %i.ago = and i64 %i.agn, 4294967295
  %i.agp = sub nsw i64 33, %i.ago                 ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.agp, 12
  br i1 %min.iters.check257, label %.lr.ph403.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph403.preheader.i.i.i
  %i.agq = trunc i64 %.0243521.i.i.i to i32
  %i.agr = add i64 %.0243521.i.i.i, 1
  %i.ags = and i64 %i.agr, 4294967295
  %i.agt = sub nsw i64 32, %i.ags                 ; 2 uses
  %i.agu = trunc i64 %i.agt to i32
  %i.agv = sub i32 -2, %i.agq
  %i.agw = icmp ult i32 %i.agv, %i.agu
  %i.agx = icmp ugt i64 %i.agt, 4294967295
  %i.agy = or i1 %i.agw, %i.agx
  br i1 %i.agy, label %.lr.ph403.i.i.i.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %vector.scevcheck
  %n.vec259 = and i64 %i.agp, -8                  ; 4 uses
  %i.agz = add nsw i64 %.pre-phi.i.i, %n.vec259   ; 2 uses
  %i.aha = add i64 %.0243521.i.i.i, %n.vec259
  %i.ahb = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %.0243521.i.i.i
  %i.ahc = getelementptr [2 x i8], ptr %i.afg, i64 %.pre-phi.i.i
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.ahd = getelementptr [4 x i8], ptr %i.ahb, i64 %index261 ; 2 uses
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 16
  %wide.load262 = load <4 x i32>, ptr %i.ahd, align 4, !tbaa !34
  %wide.load263 = load <4 x i32>, ptr %i.ahe, align 4, !tbaa !34
  %i.ahf = trunc <4 x i32> %wide.load262 to <4 x i16>
  %i.ahg = trunc <4 x i32> %wide.load263 to <4 x i16>
  %i.ahh = getelementptr [2 x i8], ptr %i.ahc, i64 %index261 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  store <4 x i16> %i.ahf, ptr %i.ahh, align 2, !tbaa !42
  store <4 x i16> %i.ahg, ptr %i.ahi, align 2, !tbaa !42
  %index.next264 = add nuw i64 %index261, 8       ; 2 uses
  %i.ahj = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.ahj, label %middle.block265, label %vector.body260, !llvm.loop !98

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %i.agp, %n.vec259
  br i1 %cmp.n266, label %._crit_edge404.loopexit.i.i.i, label %.lr.ph403.i.i.i.preheader

.lr.ph403.i.i.i.preheader:                        ; preds = %vector.scevcheck, %.lr.ph403.preheader.i.i.i, %middle.block265
  %indvars.iv481.i.i.i.ph = phi i64 [ %.pre-phi.i.i, %vector.scevcheck ], [ %.pre-phi.i.i, %.lr.ph403.preheader.i.i.i ], [ %i.agz, %middle.block265 ]
  %indvars.iv479.i.i.i.ph.a = phi i64 [ %.0243521.i.i.i, %vector.scevcheck ], [ %.0243521.i.i.i, %.lr.ph403.preheader.i.i.i ], [ %i.aha, %middle.block265 ]
  br label %.lr.ph403.i.i.i

.lr.ph403.i.i.i:                                  ; preds = %.lr.ph403.i.i.i.preheader, %.lr.ph403.i.i.i
  %indvars.iv481.i.i.i = phi i64 [ %indvars.iv.next482.i.i.i, %.lr.ph403.i.i.i ], [ %indvars.iv481.i.i.i.ph, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv479.i.i.i.a = phi i64 [ %indvars.iv.next480.i.i.i.a, %.lr.ph403.i.i.i ], [ %indvars.iv479.i.i.i.ph.a, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next480.i.i.i.a = add nsw i64 %indvars.iv479.i.i.i.a, 1 ; 2 uses
  %gep535.i.i.i = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %indvars.iv479.i.i.i.a
  %i.ahk = load i32, ptr %gep535.i.i.i, align 4, !tbaa !34
  %i.ahl = trunc i32 %i.ahk to i16
  %indvars.iv.next482.i.i.i = add nsw i64 %indvars.iv481.i.i.i, 1 ; 2 uses
  %i.ahm = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %indvars.iv481.i.i.i
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !42
  %i.ahn = and i64 %indvars.iv.next480.i.i.i.a, 4294967295
  %exitcond486.not.i.i.i = icmp eq i64 %i.ahn, 32
end_hunk_1
begin_hunk_2_@umutablecptrie_buildImmutable_78:bb.a
  %i.asq = icmp sgt i32 %.5289360.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.asp, i1 %i.asq, i1 false
  br i1 %or.cond3.i.i.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 %.2248.i.i.i, ptr %i.yu, align 4, !tbaa !24
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.asr = phi i32 [ %.2248.i.i.i, %bb.fb ], [ %i.aso, %bb.fa ] ; 2 uses
  %i.ass = trunc i32 %.2248.i.i.i to i16
  %indvars.iv.next488.i.i.i = add nuw nsw i64 %indvars.iv487.i.i.i.a, 1 ; 2 uses
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv487.i.i.i.a
  store i16 %i.ass, ptr %i.ast, align 2, !tbaa !42
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i, 32 ; 2 uses
  %i.asu = icmp samesign ult i64 %indvars.iv.next461.i.i.i, %i.aes
  br i1 %i.asu, label %bb.ek, label %._crit_edge414.loopexit.i.i.i, !llvm.loop !102

bb.fd:                                            ; preds = %._crit_edge414.i.i.i
  store i32 32767, ptr %i.yu, align 4, !tbaa !24
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge414.i.i.i
  %i.asv = icmp sgt i32 %.0250.lcssa.i.i.i, 32798
  br i1 %i.asv, label %bb.ff, label %.preheader.i98.i.i

.preheader.i98.i.i:                               ; preds = %bb.fe
  %i.asw = icmp sgt i32 %.0255.lcssa.i.i.i, 0
  br i1 %i.asw, label %.lr.ph427.i.i.i, label %.loopexit.i.i.i

.lr.ph427.i.i.i:                                  ; preds = %.preheader.i98.i.i
  %i.asx = sext i32 %i.acx to i64
  %i.asy = zext nneg i32 %i.yp to i64
  %.pre.i.i = load ptr, ptr %i.ade, align 8, !tbaa !31
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 8, ptr %3, align 4, !tbaa !17
  br label %.loopexit.i.i.i

bb.fg:                                            ; preds = %bb.fm, %.lr.ph427.i.i.i
  %i.asz = phi ptr [ %.pre.i.i, %.lr.ph427.i.i.i ], [ %i.auy, %bb.fm ] ; 6 uses
  %indvars.iv500.i.i.i = phi i64 [ %i.asy, %.lr.ph427.i.i.i ], [ %indvars.iv.next501.i.i.i, %bb.fm ] ; 2 uses
  %.0232425.i.i.i = phi i32 [ 0, %.lr.ph427.i.i.i ], [ %i.avb, %bb.fm ] ; 6 uses
  %.0234423.i.i.i = phi i32 [ 32, %.lr.ph427.i.i.i ], [ %.1235371.i.i.i, %bb.fm ] ; 2 uses
  %.7422.i.i.i = phi i32 [ %.0250.lcssa.i.i.i, %.lr.ph427.i.i.i ], [ %.9.i.i.i, %bb.fm ] ; 10 uses
  %i.ata = sub nsw i32 %.0255.lcssa.i.i.i, %.0232425.i.i.i ; 6 uses
  %.not304.i.i.i = icmp slt i32 %i.ata, %.0234423.i.i.i
  br i1 %.not304.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.atb = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.asz, ptr noundef nonnull %i.b, i32 noundef %.0232425.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.atc = sub i32 %.7422.i.i.i, %i.ata           ; 2 uses
  %i.atd = sext i32 %.0232425.i.i.i to i64
  %i.ate = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atd
  %.not18.i.i.i.i = icmp sgt i32 %i.acx, %i.atc
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i340.i.i.i

.lr.ph.i340.i.i.i:                                ; preds = %bb.fi
  %i.atf = add i32 %i.atc, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i340.i.i.i
  %indvars.iv.i342.i.i.i = phi i64 [ %i.asx, %.lr.ph.i340.i.i.i ], [ %indvars.iv.next.i343.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.atg = getelementptr inbounds [2 x i8], ptr %i.asz, i64 %indvars.iv.i342.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.fj, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.atm, %bb.fj ], [ %i.ata, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.atl, %bb.fj ], [ %i.ate, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.atk, %bb.fj ], [ %i.atg, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.ath = load i16, ptr %.078.i.us.i.i.i.i, align 2, !tbaa !42
  %i.ati = load i16, ptr %.069.i.us.i.i.i.i, align 2, !tbaa !42
  %i.atj = icmp eq i16 %i.ath, %i.ati
  br i1 %i.atj, label %bb.fj, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.fj:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.atk = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.atl = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.atm = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.atn = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.atn, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i343.i.i.i = add nsw i64 %indvars.iv.i342.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i343.i.i.i to i32
  %exitcond.not.i.i100.i.i = icmp eq i32 %i.atf, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i100.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !103

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.fj
  %i.ato = trunc nsw i64 %indvars.iv.i342.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.fh
  %.1235.i.i.i = phi i32 [ %.0234423.i.i.i, %bb.fh ], [ %i.ata, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.atb, %bb.fh ], [ %i.ato, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.atp = icmp sgt i32 %.0231.i.i.i, -1
  br i1 %i.atp, label %bb.fm, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fi
  %.1235370.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.ata, %bb.fi ], [ %i.ata, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 7 uses
  %i.atq = icmp eq i32 %.7422.i.i.i, %i.acx
  br i1 %i.atq, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.atr = sext i32 %.0232425.i.i.i to i64
  %i.ats = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atr
  %i.att = icmp sgt i32 %.1235370.i.i.i, 1
  br i1 %i.att, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i: ; preds = %bb.fk
  %.014.i.i.i.i = add nsw i32 %.1235370.i.i.i, -1 ; 2 uses
  %i.atu = sub nsw i32 %.7422.i.i.i, %.014.i.i.i.i
  br label %.lr.ph419.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fk
  %i.atv = zext nneg i32 %.1235370.i.i.i to i64
  %i.atw = sext i32 %.7422.i.i.i to i64
  br label %.lr.ph.i345.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i: ; preds = %.lr.ph.i.i348.i.i.i
  %i.atx = icmp sgt i64 %indvars.iv.in.i346.i.i.i, 2
  br i1 %i.atx, label %.lr.ph.i345.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !104

.lr.ph.i345.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i346.i.i.i = phi i64 [ %i.atv, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i347.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 2 uses
  %indvars.iv.i347.i.i.i = add nsw i64 %indvars.iv.in.i346.i.i.i, -1 ; 3 uses
  %i.aty = sub nsw i64 %i.atw, %indvars.iv.i347.i.i.i
  %i.atz = getelementptr inbounds [2 x i8], ptr %i.asz, i64 %i.aty
  %i.aua = trunc nuw nsw i64 %indvars.iv.i347.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i348.i.i.i

.lr.ph.i.i348.i.i.i:                              ; preds = %bb.fl, %.lr.ph.i345.i.i.i
  %.010.i.i349.i.i.i = phi i32 [ %i.aug, %bb.fl ], [ %i.aua, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.069.i.i350.i.i.i = phi ptr [ %i.auf, %bb.fl ], [ %i.ats, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.078.i.i351.i.i.i = phi ptr [ %i.aue, %bb.fl ], [ %i.atz, %.lr.ph.i345.i.i.i ] ; 2 uses
  %i.aub = load i16, ptr %.078.i.i351.i.i.i, align 2, !tbaa !42
  %i.auc = load i16, ptr %.069.i.i350.i.i.i, align 2, !tbaa !42
  %i.aud = icmp eq i16 %i.aub, %i.auc
  br i1 %i.aud, label %bb.fl, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i348.i.i.i
  %i.aue = getelementptr inbounds nuw i8, ptr %.078.i.i351.i.i.i, i64 2
  %i.auf = getelementptr inbounds nuw i8, ptr %.069.i.i350.i.i.i, i64 2
  %i.aug = add nsw i32 %.010.i.i349.i.i.i, -1
  %i.auh = icmp sgt i32 %.010.i.i349.i.i.i, 1
  br i1 %i.auh, label %.lr.ph.i.i348.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %bb.fl, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i99.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.aua, %bb.fl ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 3 uses
  %i.aui = sub nsw i32 %.7422.i.i.i, %.1.i99.i.i  ; 2 uses
  %i.auj = icmp slt i32 %.1.i99.i.i, %.1235370.i.i.i
  br i1 %i.auj, label %.lr.ph419.i.i.i, label %._crit_edge420.i.i.i

.lr.ph419.i.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i
  %i.auk = phi i32 [ %i.atu, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %i.aui, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ]
  %.1523.i.i.i = phi i32 [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %.1.i99.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ] ; 3 uses
  %i.aul = sext i32 %.7422.i.i.i to i64
  %i.aum = shl nsw i64 %i.aul, 1
  %scevgep.i.i.i = getelementptr i8, ptr %i.asz, i64 %i.aum
  %i.aun = add i32 %.1523.i.i.i, %.0232425.i.i.i
  %i.auo = sext i32 %i.aun to i64
  %i.aup = shl nsw i64 %i.auo, 1
  %scevgep490.i.i.i = getelementptr i8, ptr %i.b, i64 %i.aup
  %i.auq = xor i32 %.1523.i.i.i, -1
  %i.aur = add i32 %.1235370.i.i.i, %i.auq
  %i.aus = zext i32 %i.aur to i64
  %i.aut = shl nuw nsw i64 %i.aus, 1
  %i.auu = add nuw nsw i64 %i.aut, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 2 dereferenceable(1) %scevgep490.i.i.i, i64 %i.auu, i1 false), !tbaa !42
  %i.auv = add i32 %.1235370.i.i.i, %.7422.i.i.i
  %i.auw = sub i32 %i.auv, %.1523.i.i.i
  br label %._crit_edge420.i.i.i

._crit_edge420.i.i.i:                             ; preds = %.lr.ph419.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i
  %i.aux = phi i32 [ %i.aui, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.auk, %.lr.ph419.i.i.i ]
  %.8.lcssa.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.auw, %.lr.ph419.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.asz, i32 noundef %i.acx, i32 noundef %.7422.i.i.i, i32 noundef %.8.lcssa.i.i.i)
  %.pre503.i.i.i = load ptr, ptr %i.ade, align 8, !tbaa !31
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge420.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i
  %i.auy = phi ptr [ %i.asz, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.pre503.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.1235371.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.1235370.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.9.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.8.lcssa.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.0231.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.aux, %._crit_edge420.i.i.i ]
  %i.auz = trunc i32 %.0.i.i.i to i16
  %indvars.iv.next501.i.i.i = add nuw nsw i64 %indvars.iv500.i.i.i, 1
  %i.ava = getelementptr inbounds nuw [2 x i8], ptr %i.auy, i64 %indvars.iv500.i.i.i
  store i16 %i.auz, ptr %i.ava, align 2, !tbaa !42
  %i.avb = add nsw i32 %.1235371.i.i.i, %.0232425.i.i.i ; 2 uses
  %i.avc = icmp slt i32 %i.avb, %.0255.lcssa.i.i.i
  br i1 %i.avc, label %bb.fg, label %.loopexit.i.i.i, !llvm.loop !105

.loopexit.i.i.i:                                  ; preds = %bb.fm, %bb.ff, %.preheader.i98.i.i
  %.0238.i.i.i = phi i32 [ 0, %bb.ff ], [ %.0250.lcssa.i.i.i, %.preheader.i98.i.i ], [ %.9.i.i.i, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.val316.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !48
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i
  %.val316.i.i.i = phi ptr [ %.val316.pre.i.i.i, %.loopexit.i.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i ]
  %.1239.i.i.i = phi i32 [ %.0238.i.i.i, %.loopexit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i ]
  invoke void @uprv_free_78(ptr noundef %.val316.i.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.avd = landingpad { ptr, i32 }
          catch ptr null
  %i.ave = extractvalue { ptr, i32 } %i.avd, 0
  tail call void @__clang_call_terminate(ptr %i.ave) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i: ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.fq

bb.fp:                                            ; preds = %bb.ei
  %i.avf = landingpad { ptr, i32 }
          catch ptr null
  %i.avg = extractvalue { ptr, i32 } %i.avf, 0
  tail call void @__clang_call_terminate(ptr %i.avg) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.body.i.i

bb.fq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, %bb.ds
  %.3.i.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i ], [ 0, %bb.ds ], [ %.1239.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.val54.i.pre.pre.i = load ptr, ptr %6, align 8, !tbaa !48
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.fq, %bb.dd
  %.val54.i.pre.i = phi ptr [ %.pre.i.i93.ph.i.i, %bb.dd ], [ %.val54.i.pre.pre.i, %bb.fq ]
  %.4.i.i.i = phi i32 [ %i.yp, %bb.dd ], [ %.3.i.i.i, %bb.fq ]
  store i32 %i.gp, ptr %i.cp, align 8, !tbaa !29
  br label %bb.fs

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc87.i.i, %bb.ce, %.noexc116.i.i, %bb.dx, %._crit_edge.i95.i.i, %bb.cx, %.noexc.i.i, %bb.ca
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i = load ptr, ptr %6, align 8, !tbaa !48
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i
  %.val.i.i = phi ptr [ %.val.pre.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %12, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp350, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aeq, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i ]
  invoke void @uprv_free_78(ptr noundef %.val.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i unwind label %bb.fr

bb.fr:                                            ; preds = %.body.i.i
  %i.avh = landingpad { ptr, i32 }
          catch ptr null
  %i.avi = extractvalue { ptr, i32 } %i.avh, 0
  tail call void @__clang_call_terminate(ptr %i.avi) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i: ; preds = %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.fs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %bb.cz, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i
  %.val54.i.i = phi ptr [ %.val54.i.pre.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ %.pre.i.i93.ph.i.i, %bb.cz ], [ %.pre.i.i93.ph.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ]
  %.046.i.i = phi i32 [ %.4.i.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %bb.cz ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ] ; 9 uses
  invoke void @uprv_free_78(ptr noundef %.val54.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avj = landingpad { ptr, i32 }
          catch ptr null
  %i.avk = extractvalue { ptr, i32 } %i.avj, 0
  tail call void @__clang_call_terminate(ptr %i.avk) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i: ; preds = %bb.bm, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.fu

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre.i = load i32, ptr %3, align 4, !tbaa !17
  %i.avl = icmp slt i32 %.pre.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br i1 %i.avl, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.avm, align 8, !tbaa !25
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.avn, align 4, !tbaa !24
  %i.avo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.avo, align 4, !tbaa !35
  %i.avp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !26 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.avq, ptr %i.avr, align 8, !tbaa !27
  store i32 %i.avq, ptr %i.df, align 4, !tbaa !30
  store i32 0, ptr %i.cp, align 8, !tbaa !29
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !31
  tail call void @uprv_free_78(ptr noundef %i.avt)
  store ptr null, ptr %i.avs, align 8, !tbaa !31
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.fv:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i
  %i.avu = icmp ne i32 %2, 1                      ; 2 uses
  %i.avv = and i32 %.046.i.i, 1
  %.not103.i = icmp eq i32 %i.avv, 0
  %or.cond113.i = or i1 %i.avu, %.not103.i
  br i1 %or.cond113.i, label %bb.fw, label %.thread132.i

.thread132.i:                                     ; preds = %bb.fv
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !31
  %i.avy = add nsw i32 %.046.i.i, 1               ; 2 uses
  %i.avz = sext i32 %.046.i.i to i64
  %i.awa = getelementptr inbounds [2 x i8], ptr %i.avx, i64 %i.avz
  store i16 -18, ptr %i.awa, align 2, !tbaa !42
  %i.awb = shl nsw i32 %i.avy, 1
  br label %bb.gd

bb.fw:                                            ; preds = %bb.fv
  %i.awc = shl nsw i32 %.046.i.i, 1               ; 5 uses
  %i.awd = icmp eq i32 %2, 0
  br i1 %i.awd, label %bb.fx, label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !35 ; 4 uses
  %i.awg = xor i32 %i.awf, %.046.i.i
  %i.awh = and i32 %i.awg, 1
  %.not108.i = icmp eq i32 %i.awh, 0
  %.pre243.i.a = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.pre246.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28 ; 2 uses
  br i1 %.not108.i, label %._crit_edge245.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.awi = add nsw i32 %i.awf, 1
  store i32 %i.awi, ptr %i.awe, align 4, !tbaa !35
  %i.awj = sext i32 %i.awf to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr %.pre243.i.a, i64 %i.awj
  store i32 %.pre246.i, ptr %i.awk, align 4, !tbaa !34
  %.pre244.i = load i32, ptr %i.awe, align 4, !tbaa !35
  br label %._crit_edge245.i

._crit_edge245.i:                                 ; preds = %bb.fy, %bb.fx
  %i.awl = phi i32 [ %.pre244.i, %bb.fy ], [ %i.awf, %bb.fx ] ; 3 uses
  %i.awm = sext i32 %i.awl to i64
  %i.awn = getelementptr [4 x i8], ptr %.pre243.i.a, i64 %i.awm ; 3 uses
  %i.awo = getelementptr i8, ptr %i.awn, i64 -4
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !34
  %.not109.i = icmp eq i32 %i.awp, %.pre246.i
  %.pre247.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 2 uses
  br i1 %.not109.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %._crit_edge245.i
  %i.awq = getelementptr i8, ptr %i.awn, i64 -8
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !34
  %.not110.i = icmp eq i32 %i.awr, %.pre247.i
  br i1 %.not110.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %._crit_edge245.i
  %i.aws = add nsw i32 %i.awl, 1
  store i32 %i.aws, ptr %i.awe, align 4, !tbaa !35
  store i32 %.pre247.i, ptr %i.awn, align 4, !tbaa !34
  %i.awt = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  %i.awu = load i32, ptr %i.awe, align 4, !tbaa !35 ; 2 uses
  %i.awv = add nsw i32 %i.awu, 1
  store i32 %i.awv, ptr %i.awe, align 4, !tbaa !35
  %i.aww = sext i32 %i.awu to i64
  %i.awx = getelementptr inbounds [4 x i8], ptr %.pre243.i.a, i64 %i.aww
  store i32 %i.awt, ptr %i.awx, align 4, !tbaa !34
  %.pre248.i = load i32, ptr %i.awe, align 4, !tbaa !35
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.awy = phi i32 [ %.pre248.i, %bb.ga ], [ %i.awl, %bb.fz ]
  %i.awz = add i32 %i.awy, %.046.i.i
  %i.axa = shl i32 %i.awz, 1
  br label %bb.gq

bb.gc:                                            ; preds = %bb.fw
  br i1 %i.avu, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.thread132.i
  %.094131134.i = phi i32 [ %i.avy, %.thread132.i ], [ %.046.i.i, %bb.gc ]
  %i.axb = phi i32 [ %i.awb, %.thread132.i ], [ %i.awc, %bb.gc ] ; 2 uses
  %i.axc = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !35 ; 4 uses
  %i.axf = sext i32 %i.axe to i64                 ; 2 uses
  %i.axg = getelementptr [4 x i8], ptr %i.axc, i64 %i.axf ; 3 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 -4
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !34 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !28 ; 2 uses
  %.not105.i = icmp eq i32 %i.axi, %i.axk
  %.pre235.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 3 uses
  br i1 %.not105.i, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.axl = getelementptr i8, ptr %i.axg, i64 -8
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !34
  %.not106.i = icmp eq i32 %i.axm, %.pre235.i
  br i1 %.not106.i, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.not107.i = icmp eq i32 %i.axi, %.pre235.i
  br i1 %.not107.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.axn = add nsw i32 %i.axe, 1
  store i32 %i.axn, ptr %i.axd, align 4, !tbaa !35
  store i32 %.pre235.i, ptr %i.axg, align 4, !tbaa !34
  %.pre236.i = load i32, ptr %i.axj, align 4, !tbaa !28
  %.pre237.i = load i32, ptr %i.axd, align 4, !tbaa !35 ; 2 uses
  %.pre250.i = sext i32 %.pre237.i to i64
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pre-phi.i = phi i64 [ %.pre250.i, %bb.gg ], [ %i.axf, %bb.gf ]
  %i.axo = phi i32 [ %.pre237.i, %bb.gg ], [ %i.axe, %bb.gf ]
  %i.axp = phi i32 [ %.pre236.i, %bb.gg ], [ %i.axk, %bb.gf ]
  %i.axq = add nsw i32 %i.axo, 1
  store i32 %i.axq, ptr %i.axd, align 4, !tbaa !35
  %i.axr = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %.pre-phi.i
  store i32 %i.axp, ptr %i.axr, align 4, !tbaa !34
  %.pre238.i = load i32, ptr %i.axd, align 4, !tbaa !35
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge
  %i.axs = phi i32 [ %.pre238.i, %bb.gh ], [ %i.axe, %bb.ge ]
  %i.axt = shl nsw i32 %i.axs, 2
  %i.axu = add nsw i32 %i.axt, %i.axb
  br label %bb.gq

bb.gj:                                            ; preds = %bb.gc
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !35 ; 5 uses
  %i.axx = add nsw i32 %i.axw, %i.awc
  %i.axy = and i32 %i.axx, 3                      ; 2 uses
  %i.axz = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 5 uses
end_hunk_2
