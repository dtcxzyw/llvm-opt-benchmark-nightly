Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_sve2_sqrdmulh_h:bb.a
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -16
  %i.m = sub i64 %i.k, %i.i
  %diff.check13 = icmp ugt i64 %i.m, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %do_sqrdmlah_h.exit.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load14 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sext <8 x i16> %wide.load to <8 x i32>
  %i.q = sext <8 x i16> %wide.load14 to <8 x i32>
  %i.r = mul nsw <8 x i32> %i.q, %i.p
  %i.s = add nsw <8 x i32> %i.r, splat (i32 16384)
  %i.t = ashr <8 x i32> %i.s, splat (i32 15)
  %i.u = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.t, <8 x i32> splat (i32 32767))
  %i.v = trunc nsw <8 x i32> %i.u to <8 x i16>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.v, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %do_sqrdmlah_h.exit.preheader.new

do_sqrdmlah_h.exit.preheader.new:                 ; preds = %vector.memcheck, %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %do_sqrdmlah_h.exit, %do_sqrdmlah_h.exit.preheader.new
  %.012 = phi i64 [ %.012.ph, %do_sqrdmlah_h.exit.preheader.new ], [ %i.av, %do_sqrdmlah_h.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = sext i16 %i.z to i32
  %i.ad = sext i16 %i.ab to i32
  %i.ae = mul nsw i32 %i.ad, %i.ac
  %i.af = add nsw i32 %i.ae, 16384
  %i.ag = ashr i32 %i.af, 15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 32767)
  %i.ah = trunc nsw i32 %spec.select to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = or disjoint i64 %.012, 1                ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.al to i32
  %i.ap = sext i16 %i.an to i32
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = add nsw i32 %i.aq, 16384
  %i.as = ashr i32 %i.ar, 15
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 32767)
  %i.at = trunc nsw i32 %spec.select.1 to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add nuw nsw i64 %.012, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %do_sqrdmlah_h.exit, !llvm.loop !100

.loopexit:                                        ; preds = %do_sqrdmlah_h.exit, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqdmulh_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = ashr i32 %3, 10
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %2, i64 %i.h
  %i.j = lshr exact i32 %.v.i, 1
  %i.k = zext nneg i32 %i.j to i64
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %do_sqrdmlah_h.exit
  %.01921 = phi i64 [ 0, %bb.a ], [ %i.bz, %do_sqrdmlah_h.exit ] ; 11 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.01921
  %i.m = load i16, ptr %i.l, align 2
  %i.n = sext i16 %i.m to i32                     ; 8 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01921
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.n
  %i.s = ashr i32 %i.r, 15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.s, i32 32767)
  %i.t = trunc nsw i32 %spec.select to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01921
  store i16 %i.t, ptr %i.u, align 2
  %i.v = or disjoint i64 %.01921, 1               ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %i.y, %i.n
  %i.aa = ashr i32 %i.z, 15
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 32767)
  %i.ab = trunc nsw i32 %spec.select.1 to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = or disjoint i64 %.01921, 2              ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.n
  %i.ai = ashr i32 %i.ah, 15
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 32767)
  %i.aj = trunc nsw i32 %spec.select.2 to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = or disjoint i64 %.01921, 3              ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.n
  %i.aq = ashr i32 %i.ap, 15
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 32767)
  %i.ar = trunc nsw i32 %spec.select.3 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = or disjoint i64 %.01921, 4              ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32
  %i.ax = mul nsw i32 %i.aw, %i.n
  %i.ay = ashr i32 %i.ax, 15
  %spec.select.4 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %i.az = trunc nsw i32 %spec.select.4 to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.at
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = or disjoint i64 %.01921, 5              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.n
  %i.bg = ashr i32 %i.bf, 15
  %spec.select.5 = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 32767)
  %i.bh = trunc nsw i32 %spec.select.5 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = or disjoint i64 %.01921, 6              ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.n
  %i.bo = ashr i32 %i.bn, 15
  %spec.select.6 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 32767)
  %i.bp = trunc nsw i32 %spec.select.6 to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = or disjoint i64 %.01921, 7              ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.n
  %i.bw = ashr i32 %i.bv, 15
  %spec.select.7 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 32767)
  %i.bx = trunc nsw i32 %spec.select.7 to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.br
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = add nuw nsw i64 %.01921, 8              ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %i.k
  br i1 %i.ca, label %do_sqrdmlah_h.exit, label %bb.b, !llvm.loop !101

bb.b:                                             ; preds = %do_sqrdmlah_h.exit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqrdmulh_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = ashr i32 %3, 10
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [2 x i8], ptr %2, i64 %i.h ; 10 uses
  %i.j = lshr exact i32 %.v.i, 1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 122
  br i1 %min.iters.check, label %do_sqrdmlah_h.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.o = shl nuw nsw i64 %i.l, 1
  %i.p = and i64 %i.o, 9223372036854775792        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 16                 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.q   ; 2 uses
  %i.r = shl nsw i64 %i.h, 1
  %i.s = getelementptr i8, ptr %2, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %scevgep22 = getelementptr i8, ptr %i.t, i64 2
  %scevgep23 = getelementptr i8, ptr %1, i64 %i.q
  %bound0 = icmp ult ptr %0, %scevgep22
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %0, %scevgep23
  %bound125 = icmp ult ptr %1, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %do_sqrdmlah_h.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = and i64 %i.n, 7                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 8, i64 %i.u
  %n.vec = sub nsw i64 %i.n, %i.w                 ; 2 uses
  %i.x = shl i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl nuw i64 %index, 3                    ; 66 uses
  %i.z = or disjoint i64 %i.y, 8                  ; 2 uses
  %i.aa = or disjoint i64 %i.y, 16                ; 2 uses
  %i.ab = or disjoint i64 %i.y, 24                ; 2 uses
  %i.ac = or disjoint i64 %i.y, 32                ; 2 uses
  %i.ad = or disjoint i64 %i.y, 40                ; 2 uses
  %i.ae = or disjoint i64 %i.y, 48                ; 2 uses
  %i.af = or disjoint i64 %i.y, 56                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.y
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.z
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.aa
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ab
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ac
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ad
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ae
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.af
  %i.ao = load i16, ptr %i.ag, align 2, !alias.scope !108
  %i.ap = load i16, ptr %i.ah, align 2, !alias.scope !108
  %i.aq = load i16, ptr %i.ai, align 2, !alias.scope !108
  %i.ar = load i16, ptr %i.aj, align 2, !alias.scope !108
  %i.as = load i16, ptr %i.ak, align 2, !alias.scope !108
  %i.at = load i16, ptr %i.al, align 2, !alias.scope !108
  %i.au = load i16, ptr %i.am, align 2, !alias.scope !108
  %i.av = load i16, ptr %i.an, align 2, !alias.scope !108
  %i.aw = insertelement <8 x i16> poison, i16 %i.ao, i64 0
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 1
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 2
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 3
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 4
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 5
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 6
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 7
  %i.be = sext <8 x i16> %i.bd to <8 x i32>       ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.bn = load i16, ptr %i.bf, align 2, !alias.scope !109
  %i.bo = load i16, ptr %i.bg, align 2, !alias.scope !109
  %i.bp = load i16, ptr %i.bh, align 2, !alias.scope !109
  %i.bq = load i16, ptr %i.bi, align 2, !alias.scope !109
  %i.br = load i16, ptr %i.bj, align 2, !alias.scope !109
  %i.bs = load i16, ptr %i.bk, align 2, !alias.scope !109
  %i.bt = load i16, ptr %i.bl, align 2, !alias.scope !109
  %i.bu = load i16, ptr %i.bm, align 2, !alias.scope !109
  %i.bv = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 1
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 2
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 3
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 4
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 5
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 6
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 7
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 18
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 34
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 50
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 66
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 82
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 98
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 114
  %i.cu = load i16, ptr %i.cf, align 2, !alias.scope !109
  %i.cv = load i16, ptr %i.ch, align 2, !alias.scope !109
  %i.cw = load i16, ptr %i.cj, align 2, !alias.scope !109
  %i.cx = load i16, ptr %i.cl, align 2, !alias.scope !109
  %i.cy = load i16, ptr %i.cn, align 2, !alias.scope !109
  %i.cz = load i16, ptr %i.cp, align 2, !alias.scope !109
  %i.da = load i16, ptr %i.cr, align 2, !alias.scope !109
  %i.db = load i16, ptr %i.ct, align 2, !alias.scope !109
  %i.dc = insertelement <8 x i16> poison, i16 %i.cu, i64 0
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 1
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 2
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 3
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 4
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 5
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 6
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 7
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 52
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 68
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 84
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 100
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 116
  %i.ea = load i16, ptr %i.dl, align 2, !alias.scope !109
  %i.eb = load i16, ptr %i.dn, align 2, !alias.scope !109
  %i.ec = load i16, ptr %i.dp, align 2, !alias.scope !109
  %i.ed = load i16, ptr %i.dr, align 2, !alias.scope !109
  %i.ee = load i16, ptr %i.dt, align 2, !alias.scope !109
  %i.ef = load i16, ptr %i.dv, align 2, !alias.scope !109
  %i.eg = load i16, ptr %i.dx, align 2, !alias.scope !109
  %i.eh = load i16, ptr %i.dz, align 2, !alias.scope !109
  %i.ei = insertelement <8 x i16> poison, i16 %i.ea, i64 0
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 1
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ec, i64 2
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ed, i64 3
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 4
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 5
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 6
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 7
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 22
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 38
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 54
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 70
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 86
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 102
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 118
  %i.fg = load i16, ptr %i.er, align 2, !alias.scope !109
  %i.fh = load i16, ptr %i.et, align 2, !alias.scope !109
  %i.fi = load i16, ptr %i.ev, align 2, !alias.scope !109
  %i.fj = load i16, ptr %i.ex, align 2, !alias.scope !109
  %i.fk = load i16, ptr %i.ez, align 2, !alias.scope !109
  %i.fl = load i16, ptr %i.fb, align 2, !alias.scope !109
  %i.fm = load i16, ptr %i.fd, align 2, !alias.scope !109
  %i.fn = load i16, ptr %i.ff, align 2, !alias.scope !109
  %i.fo = insertelement <8 x i16> poison, i16 %i.fg, i64 0
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 1
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 2
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 3
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 4
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 5
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 6
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 7
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 120
  %i.gm = load i16, ptr %i.fx, align 2, !alias.scope !109
  %i.gn = load i16, ptr %i.fz, align 2, !alias.scope !109
  %i.go = load i16, ptr %i.gb, align 2, !alias.scope !109
  %i.gp = load i16, ptr %i.gd, align 2, !alias.scope !109
end_hunk_0
