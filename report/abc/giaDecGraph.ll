Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph10TruthTable6moveToEjhb:bb.a
  %i.ce = and i64 %i.cd, 34359738360
  %.not8297 = icmp eq i64 %i.ce, 0
  br i1 %.not8297, label %.loopexit, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %i.cf = lshr exact i64 %i.cd, 3                 ; 3 uses
  %i.cg = and i64 %i.cf, 4294967295               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.cg, 8
  %i.ch = sub i64 %.162.lcssa124, %i.cc
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond126 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond126, label %.lr.ph99.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph99.preheader
  %n.vec = and i64 %i.cf, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !50
  %wide.load125 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %wide.load, ptr %i.ck, align 8, !tbaa !50
  store <2 x i64> %wide.load125, ptr %i.cl, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph99.preheader127

.lr.ph99.preheader127:                            ; preds = %.lr.ph99.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader127, %.lr.ph99.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph99.prol ], [ %indvars.iv.ph, %.lr.ph99.preheader127 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader127 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %indvars.iv.prol
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.prol
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !217

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader127
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph99.preheader127 ], [ %indvars.iv.next.prol, %.lr.ph99.prol ]
  %i.cq = sub nsw i64 %indvars.iv.ph, %i.cg
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph99 ], [ %indvars.iv.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %indvars.iv
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %indvars.iv.next
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %indvars.iv.next.1
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.1
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.162.lcssa, i64 %indvars.iv.next.2
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.2
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not82.3 = icmp eq i64 %indvars.iv.next.3, %i.cg
  br i1 %.not82.3, label %.loopexit, label %.lr.ph99, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %._crit_edge, %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45 ; 3 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !46 ; 2 uses
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !46
  %i.di = icmp ne i32 %i.dg, 1
  %brmerge = or i1 %i.di, %.not.i64
  br i1 %brmerge, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.i, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !48
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.j, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.k, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %bb.g, %.loopexit, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN8DecGraph10TruthTableD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph10TruthTable12swapVariableEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.f, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit

_ZNK8DecGraph10TruthTable6nWordsEv.exit:          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !47   ; 9 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = icmp eq i32 %1, %2
  br i1 %i.p, label %bb.f, label %_ZNK8DecGraph10TruthTable4dataEv.exit

_ZNK8DecGraph10TruthTable4dataEv.exit:            ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %1) ; 7 uses
  %spec.select131 = tail call i32 @llvm.smax.i32(i32 %2, i32 %1) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = icmp slt i32 %spec.select131, 6
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %.not144 = icmp slt i32 %i.o, 1
  br i1 %.not144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.neg = shl nsw i32 -1, %spec.select
  %i.t = shl nuw nsw i32 1, %spec.select131
  %i.u = add nsw i32 %.neg, %i.t
  %i.v = sext i32 %spec.select to i64
  %i.w = getelementptr inbounds [48 x i8], ptr @_ZN8DecGraphL9swap_maskE, i64 %i.v
  %i.x = sext i32 %spec.select131 to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50  ; 5 uses
  %i.ab = zext i32 %i.u to i64                    ; 4 uses
  %i.ac = xor i64 %i.aa, -1                       ; 2 uses
  %i.ad = shl i64 %i.aa, %i.ab
  %i.ae = xor i64 %i.ad, -1                       ; 2 uses
  %i.af = and i64 %i.n, 2147483647                ; 3 uses
  %min.iters.check215 = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check215, label %scalar.ph214.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph
  %n.vec217 = and i64 %i.n, 2147483644            ; 3 uses
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert220 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat221 = shufflevector <2 x i64> %broadcast.splatinsert220, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert222 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat225.a = shufflevector <2 x i64> %broadcast.splatinsert222, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert226 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat227 = shufflevector <2 x i64> %broadcast.splatinsert226, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op248 = and <2 x i64> %broadcast.splat225.a, %broadcast.splat227
  %invariant.op250 = and <2 x i64> %broadcast.splat225.a, %broadcast.splat227
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph216
  %index229 = phi i64 [ 0, %vector.ph216 ], [ %index.next232, %vector.body228 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index229 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load230 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %wide.load231 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !50 ; 3 uses
  %i.ai = and <2 x i64> %broadcast.splat219, %wide.load230
  %i.aj = and <2 x i64> %broadcast.splat219, %wide.load231
  %i.ak = shl <2 x i64> %i.ai, %broadcast.splat221
  %i.al = shl <2 x i64> %i.aj, %broadcast.splat221
  %.reass245.a = and <2 x i64> %wide.load230, %broadcast.splat225.a
  %.reass247 = and <2 x i64> %wide.load231, %broadcast.splat225.a
  %i.am = lshr <2 x i64> %.reass245.a, %broadcast.splat221
  %i.an = lshr <2 x i64> %.reass247, %broadcast.splat221
  %3 = and <2 x i64> %i.am, %broadcast.splat219
  %4 = and <2 x i64> %i.an, %broadcast.splat219
  %.reass249 = and <2 x i64> %wide.load230, %invariant.op248
  %.reass251 = and <2 x i64> %wide.load231, %invariant.op250
  %i.ao = or <2 x i64> %.reass249, %i.ak
  %i.ap = or <2 x i64> %.reass251, %i.al
  %i.aq = or <2 x i64> %i.ao, %3
  %i.ar = or <2 x i64> %i.ap, %4
  store <2 x i64> %i.aq, ptr %i.ag, align 8, !tbaa !50
  store <2 x i64> %i.ar, ptr %i.ah, align 8, !tbaa !50
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next232, %n.vec217
  br i1 %i.as, label %middle.block233, label %vector.body228, !llvm.loop !219

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %i.af, %n.vec217
  br i1 %cmp.n234, label %.loopexit, label %scalar.ph214.preheader

scalar.ph214.preheader:                           ; preds = %.lr.ph, %middle.block233
  %indvars.iv170.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec217, %middle.block233 ]
  br label %scalar.ph214

scalar.ph214:                                     ; preds = %scalar.ph214.preheader, %scalar.ph214
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %scalar.ph214 ], [ %indvars.iv170.ph, %scalar.ph214.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv170 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = and i64 %i.aa, %i.au
  %i.aw = shl i64 %i.av, %i.ab
  %i.ax = and i64 %i.au, %i.ac                    ; 2 uses
  %5 = lshr i64 %i.ax, %i.ab
  %6 = and i64 %5, %i.aa
  %i.ay = and i64 %i.ax, %i.ae
  %i.az = or i64 %i.ay, %i.aw
  %i.ba = or i64 %i.az, %6
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !50
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next171, %i.af
  br i1 %.not, label %.loopexit, label %scalar.ph214, !llvm.loop !220

bb.c:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.bb = icmp slt i32 %spec.select, 6
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = add nsw i32 %spec.select131, -5         ; 2 uses
  %i.bd = shl nuw i32 1, %i.bc                    ; 2 uses
  %i.be = sdiv i32 %i.bd, 2                       ; 2 uses
  %i.bf = icmp sgt i32 %i.o, 0
  br i1 %i.bf, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bg = shl nuw nsw i32 1, %spec.select
  %i.bh = icmp sgt i32 %i.bd, 1
  %i.bi = zext nneg i32 %i.bg to i64              ; 4 uses
  br i1 %i.bh, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bj = shl nuw nsw i32 %i.be, 1
  %i.bk = sext i32 %spec.select to i64
  %i.bl = getelementptr inbounds [48 x i8], ptr @_ZN8DecGraphL9swap_maskE, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50 ; 4 uses
  %i.bo = lshr i64 %i.bn, %i.bi                   ; 3 uses
  %i.bp = xor i64 %i.bo, -1                       ; 2 uses
  %i.bq = xor i64 %i.bn, -1                       ; 2 uses
  %i.br = zext nneg i32 %i.bj to i64
  %i.bs = zext nneg i32 %i.be to i64              ; 4 uses
  %invariant.gep182 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bs
  %min.iters.check193 = icmp ult i32 %i.bc, 2
  %n.vec195 = and i64 %i.bs, 1073741822           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat203 = shufflevector <2 x i64> %broadcast.splatinsert202, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n212 = icmp eq i64 %n.vec195, %i.bs
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge142
  %indvars.iv167 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next168, %._crit_edge142 ] ; 3 uses
  %invariant.gep180 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv167 ; 2 uses
  %gep183 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep182, i64 %indvars.iv167 ; 2 uses
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.body204

vector.body204:                                   ; preds = %.preheader, %vector.body204
  %index205 = phi i64 [ %index.next210, %vector.body204 ], [ 0, %.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %index205 ; 4 uses
  %wide.load206 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !50 ; 2 uses
  %i.bu = and <2 x i64> %broadcast.splat, %wide.load206
  %i.bv = shl <2 x i64> %i.bu, %broadcast.splat197
  %i.bw = and <2 x i64> %wide.load206, %broadcast.splat199
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %index205 ; 4 uses
  %wide.load207 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !50 ; 2 uses
  %i.by = and <2 x i64> %wide.load207, %broadcast.splat201
  %i.bz = lshr <2 x i64> %i.by, %broadcast.splat197
  %i.ca = and <2 x i64> %wide.load207, %broadcast.splat203
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !50
  %wide.load208 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !50
  %i.cb = or <2 x i64> %wide.load208, %i.bz
  store <2 x i64> %i.cb, ptr %i.bt, align 8, !tbaa !50
  %wide.load209 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !50
  %i.cc = or <2 x i64> %wide.load209, %i.bv
  store <2 x i64> %i.cc, ptr %i.bx, align 8, !tbaa !50
  %index.next210 = add nuw i64 %index205, 2       ; 2 uses
  %i.cd = icmp eq i64 %index.next210, %n.vec195
  br i1 %i.cd, label %middle.block211, label %vector.body204, !llvm.loop !221

middle.block211:                                  ; preds = %vector.body204
  br i1 %cmp.n212, label %._crit_edge142, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.preheader, %middle.block211
  %indvars.iv162.ph = phi i64 [ 0, %.preheader ], [ %n.vec195, %middle.block211 ]
  br label %scalar.ph192

._crit_edge142:                                   ; preds = %scalar.ph192, %middle.block211
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, %i.br ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next168 to i32
  %i.cf = icmp slt i32 %i.ce, %i.o
  br i1 %i.cf, label %.preheader, label %.loopexit, !llvm.loop !222

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph192 ], [ %indvars.iv162.ph, %scalar.ph192.preheader ] ; 3 uses
  %gep181 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %indvars.iv162 ; 4 uses
  %i.cg = load i64, ptr %gep181, align 8, !tbaa !50 ; 2 uses
  %i.ch = and i64 %i.bo, %i.cg
  %i.ci = shl i64 %i.ch, %i.bi
  %i.cj = and i64 %i.cg, %i.bp
  store i64 %i.cj, ptr %gep181, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %indvars.iv162 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50 ; 2 uses
  %i.cm = and i64 %i.cl, %i.bn
  %i.cn = lshr i64 %i.cm, %i.bi
  %i.co = and i64 %i.cl, %i.bq
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !50
  %i.cp = load i64, ptr %gep181, align 8, !tbaa !50
  %i.cq = or i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %gep181, align 8, !tbaa !50
  %i.cr = load i64, ptr %i.ck, align 8, !tbaa !50
  %i.cs = or i64 %i.cr, %i.ci
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !50
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.bs
  br i1 %exitcond166.not, label %._crit_edge142, label %scalar.ph192, !llvm.loop !223

bb.e:                                             ; preds = %bb.c
  %i.ct = add nsw i32 %spec.select, -5            ; 2 uses
  %i.cu = shl nuw i32 1, %i.ct                    ; 2 uses
  %i.cv = sdiv i32 %i.cu, 2                       ; 3 uses
  %i.cw = add nsw i32 %spec.select131, -5
  %i.cx = shl nuw i32 1, %i.cw                    ; 2 uses
  %i.cy = sdiv i32 %i.cx, 2                       ; 3 uses
  %i.cz = icmp sgt i32 %i.o, 0
  br i1 %i.cz, label %.preheader134.lr.ph, label %.loopexit

.preheader134.lr.ph:                              ; preds = %bb.e
  %i.da = icmp slt i32 %i.cx, 2
  %i.db = icmp slt i32 %i.cu, 2
  %brmerge = select i1 %i.da, i1 true, i1 %i.db
  br i1 %brmerge, label %.loopexit, label %.preheader134.preheader

.preheader134.preheader:                          ; preds = %.preheader134.lr.ph
  %i.dc = shl nuw nsw i32 %i.cy, 1
  %i.dd = shl nuw nsw i32 %i.cv, 1                ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64              ; 5 uses
  %i.df = zext nneg i32 %i.cy to i64              ; 4 uses
  %i.dg = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.dh = zext nneg i32 %i.cv to i64              ; 3 uses
  %i.di = and i64 %i.n, 2147483647
  %wide.trip.count = zext nneg i32 %i.cv to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dh
  %invariant.gep178 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.df
  %i.dj = shl nuw nsw i64 %i.dg, 3
  %i.dk = shl nuw nsw i64 %wide.trip.count, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %umax188 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.de)
  %i.dl = icmp ult i32 %i.dd, %i.cy
  %umin = zext i1 %i.dl to i64                    ; 2 uses
  %i.dm = or disjoint i64 %umin, %i.de
  %i.dn = sub nsw i64 %umax188, %i.dm
  %min.iters.check = icmp ult i32 %i.ct, 3
  %invariant.gep238.a = getelementptr i8, ptr %i.j, i64 %i.dk
  %invariant.op = add i64 %i.df, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.do = add nsw i64 %i.dh, -1
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.preheader, %._crit_edge138
  %indvar = phi i64 [ 0, %.preheader134.preheader ], [ %indvar.next, %._crit_edge138 ] ; 2 uses
  %indvars.iv159 = phi i64 [ 0, %.preheader134.preheader ], [ %indvars.iv.next160, %._crit_edge138 ] ; 3 uses
  %i.dp = mul i64 %i.dj, %indvar                  ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv159 ; 2 uses
  %gep179 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep178, i64 %indvars.iv159 ; 2 uses
  %invariant.gep240.a = getelementptr i8, ptr %invariant.gep238.a, i64 %i.dp
  %invariant.gep242 = getelementptr i8, ptr %i.j, i64 %i.dp
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader134, %._crit_edge
  %indvars.iv156 = phi i64 [ 0, %.preheader134 ], [ %indvars.iv.next157, %._crit_edge ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv156 ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %gep179, i64 %indvars.iv156 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader133
  %i.ds = udiv i64 %i.dn, %umax
  %i.dt = add i64 %i.ds, %umin
  %i.du = mul i64 %i.dt, %i.de                    ; 2 uses
  %i.dv = shl i64 %i.du, 3
  %gep241.a = getelementptr i8, ptr %invariant.gep240.a, i64 %i.dv
  %.reass = add i64 %i.du, %invariant.op
  %i.dw = shl i64 %.reass, 3
  %gep243 = getelementptr i8, ptr %invariant.gep242, i64 %i.dw
  %bound0 = icmp ult ptr %gep, %gep243
  %bound1 = icmp ult ptr %gep179, %gep241.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dx, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  %wide.load189 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load190 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !50, !alias.scope !232
end_hunk_0
