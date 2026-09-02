Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8shuffles6vshuffEN4llvm8ArrayRefIiEES2_jb:bb.a
  br i1 %.not31, label %._crit_edge33.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %.not2629 = icmp eq i32 %5, 0
  %i.q = load ptr, ptr %0, align 8                ; 9 uses
  br i1 %.not2629, label %._crit_edge33.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = ptrtoaddr ptr %i.q to i64                ; 4 uses
  %i.s = zext i32 %5 to i64                       ; 6 uses
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %i.u = shl i32 %5, 1
  %i.v = select i1 %6, i32 %5, i32 0
  %min.iters.check = icmp ult i32 %5, 24
  %i.w = trunc i64 %i.t to i32                    ; 3 uses
  %i.x = icmp ugt i64 %i.t, 4294967295
  %n.vec = and i64 %i.s, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.s
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.y = add nsw i64 %i.s, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02432 = phi i32 [ %i.co, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.z = mul i32 %i.u, %.02432                    ; 3 uses
  %i.aa = add i32 %5, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.ad = zext i32 %i.z to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 3 uses
  %i.af = add i32 %i.v, %i.z
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 4 uses
  %i.ai = add i64 %i.ae, %i.r
  %i.aj = add i64 %i.ah, %i.b
  %i.ak = add i64 %i.ah, %i.a
  %i.al = add i64 %i.ae, %i.r
  %i.am = add i64 %i.ac, %i.r
  %i.an = add i64 %i.ah, %i.b
  %i.ao = add i64 %i.ac, %i.r
  %i.ap = add i64 %i.ah, %i.a
  %i.aq = shl nuw nsw i32 %.02432, 1              ; 3 uses
  %i.ar = or disjoint i32 %i.aq, %i.n
  %i.as = mul i32 %i.ar, %5                       ; 5 uses
  %i.at = mul i32 %i.aq, %5                       ; 5 uses
  %i.au = or disjoint i32 %i.aq, 1
  %i.av = mul i32 %i.au, %5                       ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.aw = xor i32 %i.at, -1
  %i.ax = icmp ult i32 %i.aw, %i.w
  %i.ay = xor i32 %i.av, -1
  %i.az = icmp ult i32 %i.ay, %i.w
  %i.ba = or i1 %i.az, %i.x
  %i.bb = xor i32 %i.as, -1
  %i.bc = icmp ult i32 %i.bb, %i.w
  %i.bd = or i1 %i.ax, %i.ba
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = sub nsw i64 %i.ae, %i.ac
  %diff.check = icmp ugt i64 %i.bf, -32
  %i.bg = sub i64 %i.aj, %i.ai
  %diff.check37 = icmp ugt i64 %i.bg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check37
  %i.bh = sub i64 %i.al, %i.ak
  %diff.check38 = icmp ugt i64 %i.bh, -32
  %conflict.rdx39 = or i1 %conflict.rdx, %diff.check38
  %i.bi = sub i64 %i.an, %i.am
  %diff.check40 = icmp ugt i64 %i.bi, -32
  %conflict.rdx41 = or i1 %conflict.rdx39, %diff.check40
  %i.bj = sub i64 %i.ap, %i.ao
  %diff.check42 = icmp ugt i64 %i.bj, -32
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  br i1 %conflict.rdx43, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bk = trunc nuw nsw i64 %index to i32         ; 3 uses
  %i.bl = add i32 %i.as, %i.bk
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !34
  %wide.load44 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !34
  %i.bp = add i32 %i.at, %i.bk
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> %wide.load, ptr %i.br, align 4, !tbaa !34
  store <4 x i32> %wide.load44, ptr %i.bs, align 4, !tbaa !34
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load45 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !34
  %wide.load46 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !34
  %i.bv = add i32 %i.av, %i.bk
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> %wide.load45, ptr %i.bx, align 4, !tbaa !34
  store <4 x i32> %wide.load46, ptr %i.by, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = trunc nuw nsw i64 %indvars.iv.ph to i32 ; 3 uses
  %i.cb = add i32 %i.as, %i.ca
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !34
  %i.cf = add i32 %i.at, %i.ca
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !34
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !34
  %i.ck = add i32 %i.av, %i.ca
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cn = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.cn, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.co = add nuw nsw i32 %.02432, 1              ; 2 uses
  %.not = icmp eq i32 %i.co, %i.p
  br i1 %.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !580

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cq = add i32 %i.as, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !34
  %i.cu = add i32 %i.at, %i.cp
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cv
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !34
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !34
  %i.cz = add i32 %i.av, %i.cp
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.da
  store i32 %i.cy, ptr %i.db, align 4, !tbaa !34
  %i.dc = trunc i64 %indvars.iv to i32
  %i.dd = add i32 %i.dc, 1                        ; 3 uses
  %i.de = add i32 %i.as, %i.dd
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !34
  %i.di = add i32 %i.at, %i.dd
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dj
  store i32 %i.dh, ptr %i.dk, align 4, !tbaa !34
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !34
  %i.dn = add i32 %i.av, %i.dd
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.do
  store i32 %i.dm, ptr %i.dp, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not26.1 = icmp eq i64 %indvars.iv.next.1, %i.s
  br i1 %.not26.1, label %._crit_edge, label %scalar.ph, !llvm.loop !581

._crit_edge33.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles5vdealEN4llvm8ArrayRefIiEES2_jb(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6) #1 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %i.a = trunc i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = shl i32 %5, 1                            ; 3 uses
  %i.c = sub i32 %i.a, %i.b
  call void @_ZN8shuffles8vdealvddEN4llvm8ArrayRefIiEES2_j(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %7, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %i.c)
  %i.d = load ptr, ptr %7, align 8, !tbaa !31     ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 7 uses
  %.sroa.0.0.copyload.pn.idx.i.i = call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.i)
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.0.0.copyload.pn.idx.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.j = trunc nuw nsw i64 %i.i to i32            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !31, !alias.scope !586
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.m, align 4, !tbaa !33, !alias.scope !586
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i32 %i.g, 257
  br i1 %i.o, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef 4) #23
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.i, %.pre13.i.i.i.i
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31, !alias.scope !586
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.b
  %i.p = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.k, %bb.b ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre13.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %.pre-phi.i.i3.i.i
  %i.r = sub nsw i64 %i.i, %.pre-phi.i.i3.i.i
  %i.s = shl nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.s, i1 false), !tbaa !34
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  store i32 %i.j, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i:        ; preds = %.sink.split.i.i.i.i, %bb.a
  %i.t = zext i1 %6 to i32
  %i.u = udiv i32 %i.j, %i.b
  %.not32.i = icmp ugt i32 %i.b, %i.j
  br i1 %.not32.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i
  %.not2730.i = icmp eq i32 %5, 0
  %i.v = load ptr, ptr %0, align 8, !alias.scope !586 ; 9 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 4 uses
  %i.x = lshr i32 %i.j, 1                         ; 6 uses
  br i1 %.not2730.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.y = zext i32 %5 to i64                       ; 6 uses
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.h, 2                 ; 2 uses
  %i.ab = add i64 %i.aa, %i.e
  %i.ac = shl nuw nsw i64 %i.i, 2                 ; 2 uses
  %i.ad = add i64 %i.ac, %i.w
  %i.ae = select i1 %6, i32 %5, i32 0
  %i.af = shl i32 %5, 1
  %i.ag = add i64 %i.aa, %i.e
  %min.iters.check = icmp ult i32 %5, 24
  %i.ah = trunc i64 %i.z to i32                   ; 3 uses
  %i.ai = icmp ugt i64 %i.z, 4294967295
  %invariant.op = add i64 %i.w, %i.ac
  %n.vec = and i64 %i.y, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aj = add nsw i64 %i.y, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02533.i = phi i32 [ %i.cz, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %i.ak = mul i32 %5, %.02533.i                   ; 2 uses
  %i.al = add i32 %i.x, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 3 uses
  %i.ao = zext i32 %i.ak to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 3 uses
  %i.aq = mul i32 %i.af, %.02533.i
  %i.ar = add i32 %i.ae, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 4 uses
  %i.au = add i64 %i.ab, %i.at
  %i.av = add i64 %i.ad, %i.ap
  %i.aw = add i64 %i.ap, %i.w
  %i.ax = add i64 %i.at, %i.e
  %i.ay = add i64 %i.an, %i.w
  %i.az = add i64 %i.at, %i.e
  %i.ba = shl nuw nsw i32 %.02533.i, 1
  %i.bb = or disjoint i32 %i.ba, %i.t
  %i.bc = mul i32 %i.bb, %5                       ; 5 uses
  %i.bd = mul i32 %.02533.i, %5                   ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.be = mul i32 %5, %.02533.i
  %i.bf = add i32 %i.x, %i.be
  %i.bg = xor i32 %i.bd, -1
  %i.bh = icmp ult i32 %i.bg, %i.ah
  %i.bi = xor i32 %i.bf, -1
  %i.bj = icmp ult i32 %i.bi, %i.ah
  %i.bk = or i1 %i.bj, %i.ai
  %i.bl = xor i32 %i.bc, -1
  %i.bm = icmp ult i32 %i.bl, %i.ah
  %i.bn = or i1 %i.bh, %i.bk
  %i.bo = or i1 %i.bm, %i.bn
  br i1 %i.bo, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bp = sub nsw i64 %i.ap, %i.an
  %diff.check = icmp ugt i64 %i.bp, -32
  %i.bq = sub i64 %i.av, %i.au
  %diff.check23 = icmp ugt i64 %i.bq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check23
  %i.br = sub i64 %i.ax, %i.aw
  %diff.check24 = icmp ugt i64 %i.br, -32
  %conflict.rdx25 = or i1 %conflict.rdx, %diff.check24
  %i.bs = add i64 %i.ag, %i.at
  %.reass = add i64 %i.an, %invariant.op
  %i.bt = sub i64 %i.bs, %.reass
  %diff.check26 = icmp ugt i64 %i.bt, -32
  %conflict.rdx27 = or i1 %conflict.rdx25, %diff.check26
  %i.bu = sub i64 %i.az, %i.ay
  %diff.check28 = icmp ugt i64 %i.bu, -32
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  br i1 %conflict.rdx29, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bv = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.bw = add i32 %i.bc, %i.bv
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !34, !noalias !586
  %wide.load30 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !34, !noalias !586
  %i.ca = add i32 %i.bd, %i.bv                    ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !34
  store <4 x i32> %wide.load30, ptr %i.cd, align 4, !tbaa !34
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.bx ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load31 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !34, !noalias !586
  %wide.load32 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !34, !noalias !586
  %i.cg = add i32 %i.ca, %i.x
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i32> %wide.load31, ptr %i.ci, align 4, !tbaa !34
  store <4 x i32> %wide.load32, ptr %i.cj, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cl = trunc nuw nsw i64 %indvars.iv.i.ph to i32 ; 2 uses
  %i.cm = add i32 %i.bc, %i.cl
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34, !noalias !586
  %i.cq = add i32 %i.bd, %i.cl                    ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cr
  store i32 %i.cp, ptr %i.cs, align 4, !tbaa !34
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.cn
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !34, !noalias !586
  %i.cv = add i32 %i.cq, %i.x
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cw
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !34
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cy = icmp eq i64 %indvars.iv.i.ph, %i.aj
  br i1 %i.cy, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cz = add nuw nsw i32 %.02533.i, 1            ; 2 uses
  %.not.i = icmp eq i32 %i.cz, %i.u
  br i1 %.not.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.i, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.db = add i32 %i.bc, %i.da
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm11HvxSelector7shuffp1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE:bb.a

.critedge63.i:                                    ; preds = %.critedge58.i, %.critedge58.preheader.i
  %i.br = icmp eq i64 %.sroa.3.0.i.i, 1
  %i.bs = select i1 %i.br, i32 3332, i32 3333
  %i.bt = and i32 %.val39, 2147483647
  switch i32 %i.bt, label %bb.k [
    i32 1, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit
    i32 2, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i
    i32 3, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i
    i32 4, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i
    i32 8, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i
    i32 16, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i
    i32 32, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i
    i32 64, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i
    i32 128, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i
    i32 256, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i
    i32 512, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i
  ]

bb.k:                                             ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread: ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i, %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i, %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.bu = lshr i64 %i.an, 1                       ; 5 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !286, !alias.scope !1160
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bu, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !250, !alias.scope !1160
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i32 -1, ptr %i.bv, align 8, !tbaa !289, !alias.scope !1160
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  store i32 -1, ptr %i.bw, align 4, !tbaa !290, !alias.scope !1160
  %.idx.i.i = shl nuw nsw i64 %i.bu, 2            ; 2 uses
  %.not12.i.i = icmp eq i64 %i.bu, 0              ; 2 uses
  br i1 %.not12.i.i, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit, label %.lr.ph.i.i65.preheader

.lr.ph.i.i65.preheader:                           ; preds = %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread
  %i.bx = add nsw i64 %.idx.i.i, -4               ; 3 uses
  %i.by = lshr exact i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %.lr.ph.i.i65.epil.preheader, label %.lr.ph.i.i65.preheader.new

.lr.ph.i.i65.preheader.new:                       ; preds = %.lr.ph.i.i65.preheader
  %unroll_iter = and i64 %i.bz, 9223372036854775806
  br label %.lr.ph.i.i65

_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit: ; preds = %.critedge63.i, %bb.k, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i
  %.sroa.0.0.i.i = phi i16 [ 0, %bb.k ], [ 41, %.critedge63.i ], [ 51, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i ], [ 50, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i ], [ 52, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i ], [ 43, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i ], [ 53, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i ], [ 45, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i ], [ 47, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i ], [ 48, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i ], [ 49, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i ], [ 54, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i ]
  %i.cb = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25, !noalias !1159 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cb, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !1159
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bs, ptr %5, align 8, !tbaa !280, !noalias !1159
  store i16 %.sroa.0.0.i.i, ptr %i.cc, align 4, !tbaa !242, !noalias !1159
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cf = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25, !noalias !1159 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !1159
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !281, !noalias !1159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !282, !noalias !1159
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !283, !noalias !1159
  %i.ci = call fastcc noundef i32 @_ZN12_GLOBAL__N_111ResultStack4pushERKNS_12NodeTemplateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %5), !noalias !1159 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 24) #27, !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1159
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 24) #27, !noalias !1159
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val67.i = load ptr, ptr %i.cj, align 8, !tbaa !284, !noalias !1159
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val68.i = load ptr, ptr %i.ck, align 8, !tbaa !285, !noalias !1159
  %i.cl = ptrtoint ptr %.val68.i to i64
  %i.cm = ptrtoint ptr %.val67.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 5
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 268435455
  %i.cr = and i32 %i.cq, 268435455
  %i.cs = or disjoint i32 %i.cr, 1610612736
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %i.cs, ptr %.sroa.7105.0..sroa_idx, align 8, !tbaa !34
  br label %bb.ae

.lr.ph.i.i65:                                     ; preds = %bb.l, %.lr.ph.i.i65.preheader.new
  %i.ct = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.dr, %bb.l ]
  %i.cu = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.ds, %bb.l ]
  %.013.i.i = phi ptr [ %i.al, %.lr.ph.i.i65.preheader.new ], [ %i.dv, %bb.l ] ; 3 uses
  %.else.val.i.i = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.du, %bb.l ] ; 3 uses
  %i.cv = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.dt, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i65.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.cw = load i32, ptr %.013.i.i, align 4, !tbaa !34, !noalias !1160 ; 5 uses
  %i.cx = icmp eq i32 %i.cw, -1
  br i1 %i.cx, label %.lr.ph.i.i65.1, label %.cont.i.i

.cont.i.i:                                        ; preds = %.lr.ph.i.i65
  %i.cy = icmp eq i32 %.else.val.i.i, -1
  %i.cz = call i32 @llvm.smin.i32(i32 %i.cw, i32 %.else.val.i.i)
  %i.da = select i1 %i.cy, i32 %i.cw, i32 %i.cz   ; 2 uses
  %i.db = icmp eq i32 %i.cv, -1
  %i.dc = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %i.dd = select i1 %i.db, i32 %i.cw, i32 %i.dc   ; 2 uses
  br label %.lr.ph.i.i65.1

.lr.ph.i.i65.1:                                   ; preds = %.cont.i.i, %.lr.ph.i.i65
  %i.de = phi i32 [ %i.ct, %.lr.ph.i.i65 ], [ %i.dd, %.cont.i.i ]
  %i.df = phi i32 [ %i.cu, %.lr.ph.i.i65 ], [ %i.da, %.cont.i.i ]
  %i.dg = phi i32 [ %i.cv, %.lr.ph.i.i65 ], [ %i.dd, %.cont.i.i ] ; 3 uses
  %i.dh = phi i32 [ %.else.val.i.i, %.lr.ph.i.i65 ], [ %i.da, %.cont.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !34, !noalias !1160 ; 5 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.l, label %.cont.i.i.1

.cont.i.i.1:                                      ; preds = %.lr.ph.i.i65.1
  %i.dl = icmp eq i32 %i.dh, -1
  %i.dm = call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.dh)
  %i.dn = select i1 %i.dl, i32 %i.dj, i32 %i.dm   ; 2 uses
  %i.do = icmp eq i32 %i.dg, -1
  %i.dp = call i32 @llvm.smax.i32(i32 %i.dg, i32 %i.dj)
  %i.dq = select i1 %i.do, i32 %i.dj, i32 %i.dp   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.cont.i.i.1, %.lr.ph.i.i65.1
  %i.dr = phi i32 [ %i.de, %.lr.ph.i.i65.1 ], [ %i.dq, %.cont.i.i.1 ] ; 3 uses
  %i.ds = phi i32 [ %i.df, %.lr.ph.i.i65.1 ], [ %i.dn, %.cont.i.i.1 ] ; 3 uses
  %i.dt = phi i32 [ %i.dg, %.lr.ph.i.i65.1 ], [ %i.dq, %.cont.i.i.1 ] ; 2 uses
  %i.du = phi i32 [ %i.dh, %.lr.ph.i.i65.1 ], [ %i.dn, %.cont.i.i.1 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i65

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %i.dw = and i64 %i.bx, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i65.epil.preheader, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit

.lr.ph.i.i65.epil.preheader:                      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i65.preheader
  %.epil.init = phi i32 [ -1, %.lr.ph.i.i65.preheader ], [ %i.dr, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ]
  %.epil.init237 = phi i32 [ -1, %.lr.ph.i.i65.preheader ], [ %i.ds, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ]
  %.013.i.i.epil.init = phi ptr [ %i.al, %.lr.ph.i.i65.preheader ], [ %i.dv, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ]
  %.else.val.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i65.preheader ], [ %i.du, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init239 = phi i32 [ -1, %.lr.ph.i.i65.preheader ], [ %i.dt, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod242 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.dx = load i32, ptr %.013.i.i.epil.init, align 4, !tbaa !34, !noalias !1160 ; 5 uses
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit, label %.cont.i.i.epil

.cont.i.i.epil:                                   ; preds = %.lr.ph.i.i65.epil.preheader
  %i.dz = icmp eq i32 %.else.val.i.i.epil.init, -1
  %i.ea = call i32 @llvm.smin.i32(i32 %i.dx, i32 %.else.val.i.i.epil.init)
  %i.eb = select i1 %i.dz, i32 %i.dx, i32 %i.ea
  %i.ec = icmp eq i32 %.epil.init239, -1
  %i.ed = call i32 @llvm.smax.i32(i32 %.epil.init239, i32 %i.dx)
  %i.ee = select i1 %i.ec, i32 %i.dx, i32 %i.ed
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit: ; preds = %.lr.ph.i.i65.epil.preheader, %.cont.i.i.epil, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa
  %.lcssa232 = phi i32 [ %i.dr, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph.i.i65.epil.preheader ], [ %i.ee, %.cont.i.i.epil ]
  %.lcssa231 = phi i32 [ %i.ds, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit.unr-lcssa ], [ %.epil.init237, %.lr.ph.i.i65.epil.preheader ], [ %i.eb, %.cont.i.i.epil ]
  store i32 %.lcssa231, ptr %i.bv, align 8
  store i32 %.lcssa232, ptr %i.bw, align 4
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit:        ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit.loopexit, %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread
  call fastcc void @_ZN4llvm11HvxSelector7shuffs1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 %11, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %.sroa.0.0.copyload.pn.idx.i.i = call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.bu)
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.0.0.copyload.pn.idx.i.i ; 3 uses
  store ptr %.sroa.0.0.copyload.pn.i.i, ptr %13, align 8, !tbaa !286, !alias.scope !1161
  %.sroa.2.0..sroa_idx.i.i66 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bu, ptr %.sroa.2.0..sroa_idx.i.i66, align 8, !tbaa !250, !alias.scope !1161
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i32 -1, ptr %i.ef, align 8, !tbaa !289, !alias.scope !1161
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  store i32 -1, ptr %i.eg, align 4, !tbaa !290, !alias.scope !1161
  br i1 %.not12.i.i, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit, label %.lr.ph.i.i69.preheader

.lr.ph.i.i69.preheader:                           ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit
  %i.eh = add nsw i64 %.idx.i.i, -4               ; 3 uses
  %i.ei = lshr exact i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, 0
  br i1 %i.ek, label %.lr.ph.i.i69.epil.preheader, label %.lr.ph.i.i69.preheader.new

.lr.ph.i.i69.preheader.new:                       ; preds = %.lr.ph.i.i69.preheader
  %unroll_iter254 = and i64 %i.ej, 9223372036854775806
  br label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %bb.m, %.lr.ph.i.i69.preheader.new
  %i.el = phi i32 [ -1, %.lr.ph.i.i69.preheader.new ], [ %i.fj, %bb.m ]
  %i.em = phi i32 [ -1, %.lr.ph.i.i69.preheader.new ], [ %i.fk, %bb.m ]
  %.013.i.i70 = phi ptr [ %.sroa.0.0.copyload.pn.i.i, %.lr.ph.i.i69.preheader.new ], [ %i.fn, %bb.m ] ; 3 uses
  %.else.val.i.i71 = phi i32 [ -1, %.lr.ph.i.i69.preheader.new ], [ %i.fm, %bb.m ] ; 3 uses
  %i.en = phi i32 [ -1, %.lr.ph.i.i69.preheader.new ], [ %i.fl, %bb.m ] ; 3 uses
  %niter255 = phi i64 [ 0, %.lr.ph.i.i69.preheader.new ], [ %niter255.next.1, %bb.m ]
  %i.eo = load i32, ptr %.013.i.i70, align 4, !tbaa !34, !noalias !1161 ; 5 uses
  %i.ep = icmp eq i32 %i.eo, -1
  br i1 %i.ep, label %.lr.ph.i.i69.1, label %.cont.i.i72

.cont.i.i72:                                      ; preds = %.lr.ph.i.i69
  %i.eq = icmp eq i32 %.else.val.i.i71, -1
  %i.er = call i32 @llvm.smin.i32(i32 %i.eo, i32 %.else.val.i.i71)
  %i.es = select i1 %i.eq, i32 %i.eo, i32 %i.er   ; 2 uses
  %i.et = icmp eq i32 %i.en, -1
  %i.eu = call i32 @llvm.smax.i32(i32 %i.en, i32 %i.eo)
  %i.ev = select i1 %i.et, i32 %i.eo, i32 %i.eu   ; 2 uses
  br label %.lr.ph.i.i69.1

.lr.ph.i.i69.1:                                   ; preds = %.cont.i.i72, %.lr.ph.i.i69
  %i.ew = phi i32 [ %i.el, %.lr.ph.i.i69 ], [ %i.ev, %.cont.i.i72 ]
  %i.ex = phi i32 [ %i.em, %.lr.ph.i.i69 ], [ %i.es, %.cont.i.i72 ]
  %i.ey = phi i32 [ %i.en, %.lr.ph.i.i69 ], [ %i.ev, %.cont.i.i72 ] ; 3 uses
  %i.ez = phi i32 [ %.else.val.i.i71, %.lr.ph.i.i69 ], [ %i.es, %.cont.i.i72 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i70, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !34, !noalias !1161 ; 5 uses
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %bb.m, label %.cont.i.i72.1

.cont.i.i72.1:                                    ; preds = %.lr.ph.i.i69.1
  %i.fd = icmp eq i32 %i.ez, -1
  %i.fe = call i32 @llvm.smin.i32(i32 %i.fb, i32 %i.ez)
  %i.ff = select i1 %i.fd, i32 %i.fb, i32 %i.fe   ; 2 uses
  %i.fg = icmp eq i32 %i.ey, -1
  %i.fh = call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.fb)
  %i.fi = select i1 %i.fg, i32 %i.fb, i32 %i.fh   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.cont.i.i72.1, %.lr.ph.i.i69.1
  %i.fj = phi i32 [ %i.ew, %.lr.ph.i.i69.1 ], [ %i.fi, %.cont.i.i72.1 ] ; 3 uses
  %i.fk = phi i32 [ %i.ex, %.lr.ph.i.i69.1 ], [ %i.ff, %.cont.i.i72.1 ] ; 3 uses
  %i.fl = phi i32 [ %i.ey, %.lr.ph.i.i69.1 ], [ %i.fi, %.cont.i.i72.1 ] ; 2 uses
  %i.fm = phi i32 [ %i.ez, %.lr.ph.i.i69.1 ], [ %i.ff, %.cont.i.i72.1 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.013.i.i70, i64 8 ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i69

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %i.fo = and i64 %i.eh, 4
  %lcmp.mod250.not.not = icmp eq i64 %i.fo, 0
  br i1 %lcmp.mod250.not.not, label %.lr.ph.i.i69.epil.preheader, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit

.lr.ph.i.i69.epil.preheader:                      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i69.preheader
  %.epil.init245 = phi i32 [ -1, %.lr.ph.i.i69.preheader ], [ %i.fj, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ]
  %.epil.init247 = phi i32 [ -1, %.lr.ph.i.i69.preheader ], [ %i.fk, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ]
  %.013.i.i70.epil.init = phi ptr [ %.sroa.0.0.copyload.pn.i.i, %.lr.ph.i.i69.preheader ], [ %i.fn, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ]
  %.else.val.i.i71.epil.init = phi i32 [ -1, %.lr.ph.i.i69.preheader ], [ %i.fm, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init249 = phi i32 [ -1, %.lr.ph.i.i69.preheader ], [ %i.fl, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod253 = trunc i64 %i.ej to i1
  call void @llvm.assume(i1 %lcmp.mod253)
  %i.fp = load i32, ptr %.013.i.i70.epil.init, align 4, !tbaa !34, !noalias !1161 ; 5 uses
  %i.fq = icmp eq i32 %i.fp, -1
  br i1 %i.fq, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit, label %.cont.i.i72.epil

.cont.i.i72.epil:                                 ; preds = %.lr.ph.i.i69.epil.preheader
  %i.fr = icmp eq i32 %.else.val.i.i71.epil.init, -1
  %i.fs = call i32 @llvm.smin.i32(i32 %i.fp, i32 %.else.val.i.i71.epil.init)
  %i.ft = select i1 %i.fr, i32 %i.fp, i32 %i.fs
  %i.fu = icmp eq i32 %.epil.init249, -1
  %i.fv = call i32 @llvm.smax.i32(i32 %.epil.init249, i32 %i.fp)
  %i.fw = select i1 %i.fu, i32 %i.fp, i32 %i.fv
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit: ; preds = %.lr.ph.i.i69.epil.preheader, %.cont.i.i72.epil, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa
  %.lcssa230 = phi i32 [ %i.fj, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ], [ %.epil.init245, %.lr.ph.i.i69.epil.preheader ], [ %i.fw, %.cont.i.i72.epil ]
  %.lcssa229 = phi i32 [ %i.fk, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit.unr-lcssa ], [ %.epil.init247, %.lr.ph.i.i69.epil.preheader ], [ %i.ft, %.cont.i.i72.epil ]
  store i32 %.lcssa229, ptr %i.ef, align 8
  store i32 %.lcssa230, ptr %i.eg, align 4
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit:        ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit.loopexit, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit
  call fastcc void @_ZN4llvm11HvxSelector7shuffs1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 %13, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.val25 = load ptr, ptr %10, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val26 = load i32, ptr %i.fx, align 8
  %i.fy = icmp ne ptr %.val25, null
  %i.fz = and i32 %.val26, 268435456
  %.not.i74 = icmp eq i32 %i.fz, 0
  %i.ga = select i1 %i.fy, i1 true, i1 %.not.i74
  br i1 %i.ga, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit
  %.val23 = load ptr, ptr %12, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.val24 = load i32, ptr %i.gb, align 8
  %i.gc = icmp ne ptr %.val23, null
  %i.gd = and i32 %.val24, 268435456
  %.not.i75 = icmp eq i32 %i.gd, 0
  %i.ge = select i1 %i.gc, i1 true, i1 %.not.i75
  br i1 %i.ge, label %.critedge17, label %bb.o

.critedge17:                                      ; preds = %bb.n
  call fastcc void @_ZN4llvm11HvxSelector7concatsEN12_GLOBAL__N_15OpRefES2_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %10, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.ae

bb.o:                                             ; preds = %bb.n, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.gf = trunc i64 %i.b to i32
  %i.gg = sdiv i32 %i.gf, 2
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = sub i64 %i.b, %i.gh                     ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.copyload, i64 %i.gh ; 4 uses
  %.idx1.i.i = shl nuw nsw i64 %i.gi, 2           ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx1.i.i
  %i.gl = lshr i64 %i.gi, 2                       ; 2 uses
  %.not.i.i76 = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i76, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.o
  %i.gm = and i64 %.idx1.i.i, 9223372036854775792
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.gj, i64 %i.gm
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %.lr.ph.preheader.i.i.i.i.i.i
  %.044.i.i.i.i.i.i = phi i64 [ %i.gv, %bb.s ], [ %i.gl, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.s ], [ %i.gj, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i32, ptr %.02943.i.i.i.i.i.i, align 4, !tbaa !34
  %i.gn = icmp sgt i32 %.029.val32.i.i.i.i.i.i, -1
  br i1 %i.gn, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 4
  %.val31.i.i.i.i.i.i = load i32, ptr %i.go, align 4, !tbaa !34
  %i.gp = icmp sgt i32 %.val31.i.i.i.i.i.i, -1
  br i1 %i.gp, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  %.val30.i.i.i.i.i.i = load i32, ptr %i.gq, align 4, !tbaa !34
  %i.gr = icmp sgt i32 %.val30.i.i.i.i.i.i, -1
  br i1 %i.gr, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit200, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 12
  %.val.i.i.i.i.i.i = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.gt = icmp sgt i32 %.val.i.i.i.i.i.i, -1
  br i1 %i.gt, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit202, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  %i.gv = add nsw i64 %.044.i.i.i.i.i.i, -1
  %i.gw = icmp sgt i64 %.044.i.i.i.i.i.i, 1
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1141

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.s
  %i.gx = and i64 %i.gi, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.o
  %.pre-phi50.i.i.i.i.i.i = phi i64 [ %i.gx, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.gi, %bb.o ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.gj, %bb.o ] ; 5 uses
  switch i64 %.pre-phi50.i.i.i.i.i.i, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread [
    i64 3, label %bb.t
    i64 2, label %bb.v
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4, !tbaa !34
  %i.gy = icmp sgt i32 %.029.val.i.i.i.i.i.i, -1
  br i1 %i.gy, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.gz, %bb.u ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i, align 4, !tbaa !34
  %i.ha = icmp sgt i32 %.1.val.i.i.i.i.i.i, -1
  br i1 %i.ha, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.w ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i, align 4, !tbaa !34
  %i.hc = icmp sgt i32 %.2.val.i.i.i.i.i.i, -1
  br i1 %i.hc, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread

_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit: ; preds = %bb.p
  %i.hd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 4
  br label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit

_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit200: ; preds = %bb.q
  %i.he = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  br label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit

_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit202: ; preds = %bb.r
  %i.hf = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 12
  br label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit

_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit:       ; preds = %.lr.ph.i.i.i.i.i.i, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit200, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit202, %bb.t, %bb.v, %bb.x
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.v ], [ %.029.lcssa.i.i.i.i.i.i, %bb.t ], [ %.2.i.i.i.i.i.i, %bb.x ], [ %i.hf, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit202 ], [ %i.he, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit200 ], [ %i.hd, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.hg = icmp eq ptr %i.gk, %.028.i.i.i.i.i.i
  br i1 %i.hg, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit
  call fastcc void @_ZN4llvm11HvxSelector7perfectEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 %2, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.val21 = load ptr, ptr %0, align 8, !tbaa !58
  %i.hh = getelementptr i8, ptr %0, i64 16
  %.val22 = load i32, ptr %i.hh, align 8
  %i.hi = icmp ne ptr %.val21, null
  %i.hj = and i32 %.val22, 268435456
  %.not.i77 = icmp eq i32 %i.hj, 0
  %i.hk = select i1 %i.hi, i1 true, i1 %.not.i77
  br i1 %i.hk, label %bb.ae, label %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread

_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread: ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i, %bb.y, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.hl = lshr i64 %i.b, 1                        ; 5 uses
  store ptr %.sroa.04.0.copyload, ptr %15, align 8, !tbaa !286, !alias.scope !1162
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hl, ptr %.sroa.2.0..sroa_idx.i.i78, align 8, !tbaa !250, !alias.scope !1162
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store i32 -1, ptr %i.hm, align 8, !tbaa !289, !alias.scope !1162
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  store i32 -1, ptr %i.hn, align 4, !tbaa !290, !alias.scope !1162
  %.idx.i.i79 = shl i64 %i.hl, 2                  ; 2 uses
  %.not12.i.i80 = icmp eq i64 %i.hl, 0            ; 2 uses
  br i1 %.not12.i.i80, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86, label %.lr.ph.i.i81.preheader

.lr.ph.i.i81.preheader:                           ; preds = %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread
  %i.ho = add i64 %.idx.i.i79, -4                 ; 3 uses
  %i.hp = lshr exact i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %i.hr = icmp eq i64 %i.ho, 0
  br i1 %i.hr, label %.lr.ph.i.i81.epil.preheader, label %.lr.ph.i.i81.preheader.new

.lr.ph.i.i81.preheader.new:                       ; preds = %.lr.ph.i.i81.preheader
  %unroll_iter267 = and i64 %i.hq, 9223372036854775806
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %bb.z, %.lr.ph.i.i81.preheader.new
  %i.hs = phi i32 [ -1, %.lr.ph.i.i81.preheader.new ], [ %i.iq, %bb.z ]
  %i.ht = phi i32 [ -1, %.lr.ph.i.i81.preheader.new ], [ %i.ir, %bb.z ]
  %.013.i.i82 = phi ptr [ %.sroa.04.0.copyload, %.lr.ph.i.i81.preheader.new ], [ %i.iu, %bb.z ] ; 3 uses
  %.else.val.i.i83 = phi i32 [ -1, %.lr.ph.i.i81.preheader.new ], [ %i.it, %bb.z ] ; 3 uses
  %i.hu = phi i32 [ -1, %.lr.ph.i.i81.preheader.new ], [ %i.is, %bb.z ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph.i.i81.preheader.new ], [ %niter268.next.1, %bb.z ]
  %i.hv = load i32, ptr %.013.i.i82, align 4, !tbaa !34, !noalias !1162 ; 5 uses
  %i.hw = icmp eq i32 %i.hv, -1
  br i1 %i.hw, label %.lr.ph.i.i81.1, label %.cont.i.i84

.cont.i.i84:                                      ; preds = %.lr.ph.i.i81
  %i.hx = icmp eq i32 %.else.val.i.i83, -1
  %i.hy = call i32 @llvm.smin.i32(i32 %i.hv, i32 %.else.val.i.i83)
  %i.hz = select i1 %i.hx, i32 %i.hv, i32 %i.hy   ; 2 uses
  %i.ia = icmp eq i32 %i.hu, -1
  %i.ib = call i32 @llvm.smax.i32(i32 %i.hu, i32 %i.hv)
  %i.ic = select i1 %i.ia, i32 %i.hv, i32 %i.ib   ; 2 uses
  br label %.lr.ph.i.i81.1

.lr.ph.i.i81.1:                                   ; preds = %.cont.i.i84, %.lr.ph.i.i81
  %i.id = phi i32 [ %i.hs, %.lr.ph.i.i81 ], [ %i.ic, %.cont.i.i84 ]
  %i.ie = phi i32 [ %i.ht, %.lr.ph.i.i81 ], [ %i.hz, %.cont.i.i84 ]
  %i.if = phi i32 [ %i.hu, %.lr.ph.i.i81 ], [ %i.ic, %.cont.i.i84 ] ; 3 uses
  %i.ig = phi i32 [ %.else.val.i.i83, %.lr.ph.i.i81 ], [ %i.hz, %.cont.i.i84 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i82, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !34, !noalias !1162 ; 5 uses
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %bb.z, label %.cont.i.i84.1

.cont.i.i84.1:                                    ; preds = %.lr.ph.i.i81.1
  %i.ik = icmp eq i32 %i.ig, -1
  %i.il = call i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ig)
  %i.im = select i1 %i.ik, i32 %i.ii, i32 %i.il   ; 2 uses
  %i.in = icmp eq i32 %i.if, -1
  %i.io = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ii)
  %i.ip = select i1 %i.in, i32 %i.ii, i32 %i.io   ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.cont.i.i84.1, %.lr.ph.i.i81.1
  %i.iq = phi i32 [ %i.id, %.lr.ph.i.i81.1 ], [ %i.ip, %.cont.i.i84.1 ] ; 3 uses
  %i.ir = phi i32 [ %i.ie, %.lr.ph.i.i81.1 ], [ %i.im, %.cont.i.i84.1 ] ; 3 uses
  %i.is = phi i32 [ %i.if, %.lr.ph.i.i81.1 ], [ %i.ip, %.cont.i.i84.1 ] ; 2 uses
  %i.it = phi i32 [ %i.ig, %.lr.ph.i.i81.1 ], [ %i.im, %.cont.i.i84.1 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i82, i64 8 ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa, label %.lr.ph.i.i81

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa: ; preds = %bb.z
  %i.iv = and i64 %i.ho, 4
  %lcmp.mod263.not.not = icmp eq i64 %i.iv, 0
  br i1 %lcmp.mod263.not.not, label %.lr.ph.i.i81.epil.preheader, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit

.lr.ph.i.i81.epil.preheader:                      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa, %.lr.ph.i.i81.preheader
  %.epil.init258 = phi i32 [ -1, %.lr.ph.i.i81.preheader ], [ %i.iq, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ]
  %.epil.init260 = phi i32 [ -1, %.lr.ph.i.i81.preheader ], [ %i.ir, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ]
  %.013.i.i82.epil.init = phi ptr [ %.sroa.04.0.copyload, %.lr.ph.i.i81.preheader ], [ %i.iu, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ]
  %.else.val.i.i83.epil.init = phi i32 [ -1, %.lr.ph.i.i81.preheader ], [ %i.it, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init262 = phi i32 [ -1, %.lr.ph.i.i81.preheader ], [ %i.is, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod266 = trunc i64 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.iw = load i32, ptr %.013.i.i82.epil.init, align 4, !tbaa !34, !noalias !1162 ; 5 uses
  %i.ix = icmp eq i32 %i.iw, -1
  br i1 %i.ix, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit, label %.cont.i.i84.epil

.cont.i.i84.epil:                                 ; preds = %.lr.ph.i.i81.epil.preheader
  %i.iy = icmp eq i32 %.else.val.i.i83.epil.init, -1
  %i.iz = call i32 @llvm.smin.i32(i32 %i.iw, i32 %.else.val.i.i83.epil.init)
  %i.ja = select i1 %i.iy, i32 %i.iw, i32 %i.iz
  %i.jb = icmp eq i32 %.epil.init262, -1
  %i.jc = call i32 @llvm.smax.i32(i32 %.epil.init262, i32 %i.iw)
  %i.jd = select i1 %i.jb, i32 %i.iw, i32 %i.jc
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit: ; preds = %.lr.ph.i.i81.epil.preheader, %.cont.i.i84.epil, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa
  %.lcssa224 = phi i32 [ %i.iq, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ], [ %.epil.init258, %.lr.ph.i.i81.epil.preheader ], [ %i.jd, %.cont.i.i84.epil ]
  %.lcssa223 = phi i32 [ %i.ir, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit.unr-lcssa ], [ %.epil.init260, %.lr.ph.i.i81.epil.preheader ], [ %i.ja, %.cont.i.i84.epil ]
  store i32 %.lcssa223, ptr %i.hm, align 8
  store i32 %.lcssa224, ptr %i.hn, align 4
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86

_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86:      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86.loopexit, %_ZL13isLowHalfOnlyN4llvm8ArrayRefIiEE.exit.thread
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 16, i1 false), !alias.scope !1163
  store i32 %i.ad, ptr %i.je, align 8, !tbaa !293, !alias.scope !1163
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %17, i8 0, i64 16, i1 false), !alias.scope !1164
  store i32 %i.af, ptr %i.jf, align 8, !tbaa !293, !alias.scope !1164
  call fastcc void @_ZN4llvm11HvxSelector7shuffs2EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 %15, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %16, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %17, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %.sroa.0.0.copyload.pn.idx.i.i87 = call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.hl)
  %.sroa.0.0.copyload.pn.i.i88 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.copyload, i64 %.sroa.0.0.copyload.pn.idx.i.i87 ; 3 uses
  store ptr %.sroa.0.0.copyload.pn.i.i88, ptr %19, align 8, !tbaa !286, !alias.scope !1165
  %.sroa.2.0..sroa_idx.i.i89 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.hl, ptr %.sroa.2.0..sroa_idx.i.i89, align 8, !tbaa !250, !alias.scope !1165
  %i.jg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store i32 -1, ptr %i.jg, align 8, !tbaa !289, !alias.scope !1165
  %i.jh = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  store i32 -1, ptr %i.jh, align 4, !tbaa !290, !alias.scope !1165
  br i1 %.not12.i.i80, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97, label %.lr.ph.i.i92.preheader

.lr.ph.i.i92.preheader:                           ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86
  %i.ji = add i64 %.idx.i.i79, -4                 ; 3 uses
  %i.jj = lshr exact i64 %i.ji, 2
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %i.jl = icmp eq i64 %i.ji, 0
  br i1 %i.jl, label %.lr.ph.i.i92.epil.preheader, label %.lr.ph.i.i92.preheader.new

.lr.ph.i.i92.preheader.new:                       ; preds = %.lr.ph.i.i92.preheader
  %unroll_iter280 = and i64 %i.jk, 9223372036854775806
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %bb.aa, %.lr.ph.i.i92.preheader.new
  %i.jm = phi i32 [ -1, %.lr.ph.i.i92.preheader.new ], [ %i.kk, %bb.aa ]
  %i.jn = phi i32 [ -1, %.lr.ph.i.i92.preheader.new ], [ %i.kl, %bb.aa ]
  %.013.i.i93 = phi ptr [ %.sroa.0.0.copyload.pn.i.i88, %.lr.ph.i.i92.preheader.new ], [ %i.ko, %bb.aa ] ; 3 uses
  %.else.val.i.i94 = phi i32 [ -1, %.lr.ph.i.i92.preheader.new ], [ %i.kn, %bb.aa ] ; 3 uses
  %i.jo = phi i32 [ -1, %.lr.ph.i.i92.preheader.new ], [ %i.km, %bb.aa ] ; 3 uses
  %niter281 = phi i64 [ 0, %.lr.ph.i.i92.preheader.new ], [ %niter281.next.1, %bb.aa ]
  %i.jp = load i32, ptr %.013.i.i93, align 4, !tbaa !34, !noalias !1165 ; 5 uses
  %i.jq = icmp eq i32 %i.jp, -1
  br i1 %i.jq, label %.lr.ph.i.i92.1, label %.cont.i.i95

.cont.i.i95:                                      ; preds = %.lr.ph.i.i92
  %i.jr = icmp eq i32 %.else.val.i.i94, -1
  %i.js = call i32 @llvm.smin.i32(i32 %i.jp, i32 %.else.val.i.i94)
  %i.jt = select i1 %i.jr, i32 %i.jp, i32 %i.js   ; 2 uses
  %i.ju = icmp eq i32 %i.jo, -1
  %i.jv = call i32 @llvm.smax.i32(i32 %i.jo, i32 %i.jp)
  %i.jw = select i1 %i.ju, i32 %i.jp, i32 %i.jv   ; 2 uses
  br label %.lr.ph.i.i92.1

.lr.ph.i.i92.1:                                   ; preds = %.cont.i.i95, %.lr.ph.i.i92
  %i.jx = phi i32 [ %i.jm, %.lr.ph.i.i92 ], [ %i.jw, %.cont.i.i95 ]
  %i.jy = phi i32 [ %i.jn, %.lr.ph.i.i92 ], [ %i.jt, %.cont.i.i95 ]
  %i.jz = phi i32 [ %i.jo, %.lr.ph.i.i92 ], [ %i.jw, %.cont.i.i95 ] ; 3 uses
  %i.ka = phi i32 [ %.else.val.i.i94, %.lr.ph.i.i92 ], [ %i.jt, %.cont.i.i95 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.013.i.i93, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !34, !noalias !1165 ; 5 uses
  %i.kd = icmp eq i32 %i.kc, -1
  br i1 %i.kd, label %bb.aa, label %.cont.i.i95.1

.cont.i.i95.1:                                    ; preds = %.lr.ph.i.i92.1
  %i.ke = icmp eq i32 %i.ka, -1
  %i.kf = call i32 @llvm.smin.i32(i32 %i.kc, i32 %i.ka)
  %i.kg = select i1 %i.ke, i32 %i.kc, i32 %i.kf   ; 2 uses
  %i.kh = icmp eq i32 %i.jz, -1
  %i.ki = call i32 @llvm.smax.i32(i32 %i.jz, i32 %i.kc)
  %i.kj = select i1 %i.kh, i32 %i.kc, i32 %i.ki   ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.cont.i.i95.1, %.lr.ph.i.i92.1
  %i.kk = phi i32 [ %i.jx, %.lr.ph.i.i92.1 ], [ %i.kj, %.cont.i.i95.1 ] ; 3 uses
  %i.kl = phi i32 [ %i.jy, %.lr.ph.i.i92.1 ], [ %i.kg, %.cont.i.i95.1 ] ; 3 uses
  %i.km = phi i32 [ %i.jz, %.lr.ph.i.i92.1 ], [ %i.kj, %.cont.i.i95.1 ] ; 2 uses
  %i.kn = phi i32 [ %i.ka, %.lr.ph.i.i92.1 ], [ %i.kg, %.cont.i.i95.1 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.013.i.i93, i64 8 ; 2 uses
  %niter281.next.1 = add i64 %niter281, 2         ; 2 uses
  %niter281.ncmp.1 = icmp eq i64 %niter281.next.1, %unroll_iter280
  br i1 %niter281.ncmp.1, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa, label %.lr.ph.i.i92

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa: ; preds = %bb.aa
  %i.kp = and i64 %i.ji, 4
  %lcmp.mod276.not.not = icmp eq i64 %i.kp, 0
  br i1 %lcmp.mod276.not.not, label %.lr.ph.i.i92.epil.preheader, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit

.lr.ph.i.i92.epil.preheader:                      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa, %.lr.ph.i.i92.preheader
  %.epil.init271 = phi i32 [ -1, %.lr.ph.i.i92.preheader ], [ %i.kk, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ]
  %.epil.init273 = phi i32 [ -1, %.lr.ph.i.i92.preheader ], [ %i.kl, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ]
  %.013.i.i93.epil.init = phi ptr [ %.sroa.0.0.copyload.pn.i.i88, %.lr.ph.i.i92.preheader ], [ %i.ko, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ]
  %.else.val.i.i94.epil.init = phi i32 [ -1, %.lr.ph.i.i92.preheader ], [ %i.kn, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init275 = phi i32 [ -1, %.lr.ph.i.i92.preheader ], [ %i.km, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod279 = trunc i64 %i.jk to i1
  call void @llvm.assume(i1 %lcmp.mod279)
  %i.kq = load i32, ptr %.013.i.i93.epil.init, align 4, !tbaa !34, !noalias !1165 ; 5 uses
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit, label %.cont.i.i95.epil

.cont.i.i95.epil:                                 ; preds = %.lr.ph.i.i92.epil.preheader
  %i.ks = icmp eq i32 %.else.val.i.i94.epil.init, -1
  %i.kt = call i32 @llvm.smin.i32(i32 %i.kq, i32 %.else.val.i.i94.epil.init)
  %i.ku = select i1 %i.ks, i32 %i.kq, i32 %i.kt
  %i.kv = icmp eq i32 %.epil.init275, -1
  %i.kw = call i32 @llvm.smax.i32(i32 %.epil.init275, i32 %i.kq)
  %i.kx = select i1 %i.kv, i32 %i.kq, i32 %i.kw
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit: ; preds = %.lr.ph.i.i92.epil.preheader, %.cont.i.i95.epil, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa
  %.lcssa222 = phi i32 [ %i.kk, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ], [ %.epil.init271, %.lr.ph.i.i92.epil.preheader ], [ %i.kx, %.cont.i.i95.epil ]
  %.lcssa = phi i32 [ %i.kl, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit.unr-lcssa ], [ %.epil.init273, %.lr.ph.i.i92.epil.preheader ], [ %i.ku, %.cont.i.i95.epil ]
  store i32 %.lcssa, ptr %i.jg, align 8
  store i32 %.lcssa222, ptr %i.jh, align 4
  br label %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97

_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97:      ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97.loopexit, %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit86
  %i.ky = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %20, i8 0, i64 16, i1 false), !alias.scope !1166
  store i32 %i.ad, ptr %i.ky, align 8, !tbaa !293, !alias.scope !1166
  %i.kz = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %21, i8 0, i64 16, i1 false), !alias.scope !1167
  store i32 %i.af, ptr %i.kz, align 8, !tbaa !293, !alias.scope !1167
  call fastcc void @_ZN4llvm11HvxSelector7shuffs2EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 %19, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %20, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.val19 = load ptr, ptr %14, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.val20 = load i32, ptr %i.la, align 8
  %i.lb = icmp ne ptr %.val19, null
  %i.lc = and i32 %.val20, 268435456
  %.not.i98 = icmp eq i32 %i.lc, 0
  %i.ld = select i1 %i.lb, i1 true, i1 %.not.i98
  br i1 %i.ld, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97
  %.val = load ptr, ptr %18, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.val18 = load i32, ptr %i.le, align 8
  %i.lf = icmp ne ptr %.val, null
  %i.lg = and i32 %.val18, 268435456
  %.not.i99 = icmp eq i32 %i.lg, 0
  %i.lh = select i1 %i.lf, i1 true, i1 %.not.i99
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_ZN4llvm11HvxSelector7concatsEN12_GLOBAL__N_15OpRefES2_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %14, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %_ZNK12_GLOBAL__N_111ShuffleMask2hiEv.exit97
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !1168
  store i32 268435456, ptr %i.li, align 8, !tbaa !293, !alias.scope !1168
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %.critedge17, %bb.y, %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit
  %i.lj = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.p
  br i1 %i.lk, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.lj) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %_ZN4llvm3MVT11getVectorVTES0_j.exit, %.loopexit131
  ret void
}

declare { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr, i32) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #3

declare void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !62, !noalias !1173 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !1173 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64, !noalias !1173 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
end_hunk_1
