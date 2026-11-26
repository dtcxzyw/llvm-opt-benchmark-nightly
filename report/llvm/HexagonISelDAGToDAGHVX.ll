Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8shuffles6vshuffEN4llvm8ArrayRefIiEES2_jb:bb.a
  %i.au = zext i32 %i.ac to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %.reass = add i64 %i.aw, %invariant.op
  %diff.check44 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %i.ax = sub nsw i64 %i.av, %i.as
  %.reass55 = add i64 %i.ax, %invariant.op54
  %diff.check45 = icmp ult i64 %.reass55, 31
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %i.ay = sub nsw i64 %i.aq, %i.av                ; 2 uses
  %.reass57 = add i64 %i.ay, %invariant.op56
  %diff.check47 = icmp ult i64 %.reass57, 31
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %.reass59 = add i64 %i.ay, %invariant.op58
  %diff.check49 = icmp ult i64 %.reass59, 31
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  br i1 %conflict.rdx50, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.az = trunc nuw nsw i64 %index to i32         ; 3 uses
  %i.ba = add i32 %i.ac, %i.az
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !34
  %wide.load51 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !34
  %i.be = add i32 %i.ad, %i.az
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %wide.load, ptr %i.bg, align 4, !tbaa !34
  store <4 x i32> %wide.load51, ptr %i.bh, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load52 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !34
  %wide.load53 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !34
  %i.bk = add i32 %i.af, %i.az
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load52, ptr %i.bm, align 4, !tbaa !34
  store <4 x i32> %wide.load53, ptr %i.bn, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bp = trunc nuw nsw i64 %indvars.iv.ph to i32 ; 3 uses
  %i.bq = add i32 %i.ac, %i.bp
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = add i32 %i.ad, %i.bp
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !34
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.bz = add i32 %i.af, %i.bp
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cc = icmp eq i64 %indvars.iv.ph, %i.z
  br i1 %i.cc, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cd = add nuw nsw i32 %.02432, 1              ; 2 uses
  %.not = icmp eq i32 %i.cd, %i.p
  br i1 %.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !580

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cf = add i32 %i.ac, %i.ce
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34
  %i.cj = add i32 %i.ad, %i.ce
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34
  %i.co = add i32 %i.af, %i.ce
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cp
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !34
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = add i32 %i.cr, 1                        ; 3 uses
  %i.ct = add i32 %i.ac, %i.cs
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !34
  %i.cx = add i32 %i.ad, %i.cs
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cy
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !34
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.db = load i32, ptr %i.da, align 4, !tbaa !34
  %i.dc = add i32 %i.af, %i.cs
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dd
  store i32 %i.db, ptr %i.de, align 4, !tbaa !34
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
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 7 uses
  %.sroa.0.0.copyload.pn.idx.i.i = sub nuw nsw i64 %i.h, %i.i
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
  %i.w = ptrtoaddr ptr %i.v to i64                ; 3 uses
  %i.x = lshr i32 %i.j, 1                         ; 6 uses
  br i1 %.not2730.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.y = zext i32 %5 to i64                       ; 6 uses
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.h, 2
  %i.ab = add i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = shl nuw nsw i64 %i.i, 2                 ; 2 uses
  %8 = sub i64 %i.w, %i.e                         ; 2 uses
  %9 = add i64 %i.ac, %i.w
  %i.ad = sub i64 %i.ab, %9
  %min.iters.check = icmp ult i32 %5, 24
  %i.ae = trunc i64 %i.z to i32                   ; 3 uses
  %i.af = icmp ugt i64 %i.z, 4294967295
  %invariant.op = add i64 %i.ad, -1
  %invariant.op40 = add i64 %8, -1
  %invariant.op42 = add i64 %i.w, %i.ac
  %invariant.op44 = add i64 %8, -1
  %n.vec = and i64 %i.y, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.y, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02533.i = phi i32 [ %i.ck, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.ah = shl nuw nsw i32 %.02533.i, 1
  %i.ai = or disjoint i32 %i.ah, %i.t
  %i.aj = mul i32 %i.ai, %5                       ; 6 uses
  %i.ak = mul i32 %.02533.i, %5                   ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.al = mul i32 %5, %.02533.i
  %i.am = add i32 %i.x, %i.al
  %i.an = xor i32 %i.ak, -1
  %i.ao = icmp ult i32 %i.an, %i.ae
  %i.ap = xor i32 %i.am, -1
  %i.aq = icmp ult i32 %i.ap, %i.ae
  %i.ar = or i1 %i.aq, %i.af
  %i.as = xor i32 %i.aj, -1
  %i.at = icmp ult i32 %i.as, %i.ae
  %i.au = or i1 %i.ao, %i.ar
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = add i32 %i.x, %i.ak
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 3 uses
  %i.az = zext i32 %i.ak to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 3 uses
  %i.bb = sub nsw i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  %i.bc = zext i32 %i.aj to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 4 uses
  %i.be = sub nsw i64 %i.bd, %i.ba
  %.reass = add i64 %i.be, %invariant.op
  %diff.check30 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check30
  %i.bf = sub nsw i64 %i.ba, %i.bd
  %.reass41 = add i64 %i.bf, %invariant.op40
  %diff.check31 = icmp ult i64 %.reass41, 31
  %conflict.rdx32 = or i1 %conflict.rdx, %diff.check31
  %10 = add i64 %i.ab, %i.bd
  %.reass43 = add i64 %i.ay, %invariant.op42
  %11 = sub i64 %10, %.reass43
  %diff.check33 = icmp ugt i64 %11, -32
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %12 = sub nsw i64 %i.ay, %i.bd
  %.reass45 = add i64 %12, %invariant.op44
  %diff.check35 = icmp ult i64 %.reass45, 31
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  br i1 %conflict.rdx36, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bg = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.bh = add i32 %i.aj, %i.bg
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !34, !noalias !586
  %wide.load37 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !34, !noalias !586
  %i.bl = add i32 %i.ak, %i.bg                    ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %wide.load, ptr %i.bn, align 4, !tbaa !34
  store <4 x i32> %wide.load37, ptr %i.bo, align 4, !tbaa !34
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.bi ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load38 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !34, !noalias !586
  %wide.load39 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !34, !noalias !586
  %i.br = add i32 %i.bl, %i.x
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x i32> %wide.load38, ptr %i.bt, align 4, !tbaa !34
  store <4 x i32> %wide.load39, ptr %i.bu, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = trunc nuw nsw i64 %indvars.iv.i.ph to i32 ; 2 uses
  %i.bx = add i32 %i.aj, %i.bw
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !34, !noalias !586
  %i.cb = add i32 %i.ak, %i.bw                    ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !34
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.by
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !34, !noalias !586
  %i.cg = add i32 %i.cb, %i.x
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !34
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cj = icmp eq i64 %indvars.iv.i.ph, %i.ag
  br i1 %i.cj, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ck = add nuw nsw i32 %.02533.i, 1            ; 2 uses
  %.not.i = icmp eq i32 %i.ck, %i.u
  br i1 %.not.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.i, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cm = add i32 %i.aj, %i.cl
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34, !noalias !586
  %i.cq = add i32 %i.ak, %i.cl                    ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cr
  store i32 %i.cp, ptr %i.cs, align 4, !tbaa !34
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.cn
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !34, !noalias !586
  %i.cv = add i32 %i.cq, %i.x
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cw
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !34
  %i.cy = trunc i64 %indvars.iv.i to i32
  %i.cz = add i32 %i.cy, 1                        ; 2 uses
  %i.da = add i32 %i.aj, %i.cz
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !34, !noalias !586
  %i.de = add i32 %i.ak, %i.cz                    ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.df
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !34
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.db
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !34, !noalias !586
  %i.dj = add i32 %i.de, %i.x
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dk
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !34
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not27.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.y
  br i1 %.not27.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !585

_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit: ; preds = %._crit_edge.i, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i, %.preheader.lr.ph.i
  %i.dm = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit
  call void @free(ptr noundef %i.dm) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles8vdealb4wEN4llvm8ArrayRefIiEES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.b = ashr exact i64 %sext, 32                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.e, align 4, !tbaa !33
  %i.f = icmp eq i64 %sext, 0
  br i1 %i.f, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.b, 128
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.c, i64 noundef %i.b, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.b, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.h = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.c, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi.i.i3.i
  %i.j = sub nsw i64 %i.b, %.pre-phi.i.i3.i
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.k, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %i.a, ptr %i.d, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %bb.a, %.sink.split.i.i.i
  %.off = add i32 %i.a, 3
  %.not22 = icmp ult i32 %.off, 7
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.l = sdiv i32 %i.a, 4                         ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.n = shl nsw i32 %i.l, 1
  %i.o = mul nsw i32 %i.l, 3
  %i.p = sext i32 %i.l to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %i.o to i64
  %i.s = zext i32 %i.l to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.p
  %invariant.gep25 = getelementptr [4 x i8], ptr %i.m, i64 %i.q
  %invariant.gep27 = getelementptr [4 x i8], ptr %i.m, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.t = shl nuw nsw i64 %indvars.iv, 2           ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !34
  %i.x = or disjoint i64 %i.t, 2                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.z, ptr %gep, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34
  %gep26 = getelementptr [4 x i8], ptr %invariant.gep25, i64 %indvars.iv
end_hunk_0
