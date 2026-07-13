inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ov_getlap:bb.a

.lr.ph79:                                         ; preds = %.preheader
  %i.bf = sext i32 %.053.ph to i64                ; 2 uses
  %i.bg = sext i32 %4 to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = sub nsw i64 %i.bh, %i.bf
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph79, %bb.k
  %indvars.iv85 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next86, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv85
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bf
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bi, i1 false)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bm = load i32, ptr %i.g, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next86, %i.bn
  br i1 %i.bo, label %bb.k, label %.loopexit, !llvm.loop !324

bb.l:                                             ; preds = %bb.j
  br i1 %i.be, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %bb.l
  %i.bp = sub nsw i32 %4, %.053.ph
  %spec.select66 = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bp)
  %i.bq = sext i32 %.053.ph to i64
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = sext i32 %spec.select66 to i64
  %i.bt = shl nsw i64 %i.bs, 2
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph77, %bb.m
  %indvars.iv82 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next83, %bb.m ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv82
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bq
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv82
  %i.by = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.by, i64 %i.bt, i1 false)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bz = load i32, ptr %i.g, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next83, %i.ca
  br i1 %i.cb, label %bb.m, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.l, %.preheader, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @vorbis_synthesis_lapout(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5808
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add nsw i32 %i.f, 1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = ashr i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = load i64, ptr %i.d, align 8
  %i.p = ashr i64 %i.o, %i.l                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = ashr i64 %i.s, %i.l                      ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.w = load i32, ptr %i.v, align 8              ; 4 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %sext = shl i64 %i.t, 32                        ; 2 uses
  %i.aa = ashr exact i64 %sext, 32                ; 2 uses
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %.preheader109, label %bb.c

.preheader109:                                    ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph112, label %._crit_edge113.split

.lr.ph112:                                        ; preds = %.preheader109
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = icmp sgt i32 %i.u, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge113.split

.lr.ph.preheader:                                 ; preds = %.lr.ph112
  %i.ah = and i64 %i.t, 2147483647                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 8
  %n.vec = and i64 %i.t, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv132
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.al, align 4
  %wide.load164 = load <4 x float>, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load165 = load <4 x float>, ptr %i.an, align 4
  %wide.load166 = load <4 x float>, ptr %i.ao, align 4
  store <4 x float> %wide.load165, ptr %i.al, align 4
  store <4 x float> %wide.load166, ptr %i.am, align 4
  store <4 x float> %wide.load, ptr %i.an, align 4
  store <4 x float> %wide.load164, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.as = load float, ptr %gep, align 4
  store float %i.as, ptr %i.aq, align 4
  store float %i.ar, ptr %gep, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !327

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next133, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge113.split.loopexit, !llvm.loop !328

._crit_edge113.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr %i.v, align 8
  %.pre150.pre = load i64, ptr %i.g, align 8
  br label %._crit_edge113.split

._crit_edge113.split:                             ; preds = %._crit_edge113.split.loopexit, %.lr.ph112, %.preheader109
  %.pre150 = phi i64 [ %.pre150.pre, %._crit_edge113.split.loopexit ], [ %i.h, %.lr.ph112 ], [ %i.h, %.preheader109 ]
  %i.aw = phi i32 [ %.pre, %._crit_edge113.split.loopexit ], [ %i.w, %.lr.ph112 ], [ %i.w, %.preheader109 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub nsw i32 %i.ay, %i.u
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = sub nsw i32 %i.aw, %i.u                 ; 2 uses
  store i32 %i.ba, ptr %i.v, align 8
  store i64 0, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge113.split, %bb.b
  %i.bb = phi i32 [ %i.ba, %._crit_edge113.split ], [ %i.w, %bb.b ] ; 5 uses
  %i.bc = phi i64 [ %.pre150, %._crit_edge113.split ], [ %i.h, %bb.b ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = xor i64 %i.bc, %i.be
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %.preheader107, label %bb.d

.preheader107:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph126, label %.preheader107.._crit_edge127.split_crit_edge

.preheader107.._crit_edge127.split_crit_edge:     ; preds = %.preheader107
  %.pre155 = sub nsw i32 %i.u, %i.q
  %.pre156 = sdiv i32 %.pre155, 2
  br label %._crit_edge127.split

.lr.ph126:                                        ; preds = %.preheader107
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = sub nsw i32 %i.u, %i.q
  %i.bm = sdiv i32 %i.bl, 2                       ; 3 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = add nsw i32 %i.u, %i.q                  ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph123.preheader, label %._crit_edge127.split

.lr.ph123.preheader:                              ; preds = %.lr.ph126
  %i.bq = lshr i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64              ; 4 uses
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 1) ; 2 uses
  %min.iters.check184 = icmp ult i32 %i.bo, 16
  %i.bt = shl nsw i64 %i.bn, 2
  %diff.check181 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check184, i1 true, i1 %diff.check181
  %n.vec187 = and i64 %i.bs, 1073741816           ; 3 uses
  %i.bu = sub nsw i64 %i.br, %n.vec187
  %cmp.n194 = icmp eq i64 %i.bs, %n.vec187
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge124
  %indvars.iv144 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next145, %._crit_edge124 ] ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv144
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bn ; 2 uses
  br i1 %or.cond, label %scalar.ph183.preheader, label %vector.body188

vector.body188:                                   ; preds = %.lr.ph123, %vector.body188
  %index189 = phi i64 [ %index.next192, %vector.body188 ], [ 0, %.lr.ph123 ] ; 2 uses
  %i.bz = xor i64 %index189, -1
  %i.ca = add i64 %i.bz, %i.br                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -28
  %wide.load190.a = load <4 x float>, ptr %i.cc, align 4
  %wide.load191 = load <4 x float>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -12
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -28
  store <4 x float> %wide.load190.a, ptr %i.cf, align 4
  store <4 x float> %wide.load191, ptr %i.cg, align 4
  %index.next192 = add nuw i64 %index189, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.ch, label %middle.block193, label %vector.body188, !llvm.loop !329

middle.block193:                                  ; preds = %vector.body188
  br i1 %cmp.n194, label %._crit_edge124, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph123, %middle.block193
  %indvars.iv141.ph = phi i64 [ %i.br, %.lr.ph123 ], [ %i.bu, %middle.block193 ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph183 ], [ %indvars.iv141.ph, %scalar.ph183.preheader ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next142
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next142
  store float %i.cj, ptr %i.ck, align 4
  %i.cl = icmp sgt i64 %indvars.iv141, 1
  br i1 %i.cl, label %scalar.ph183, label %._crit_edge124, !llvm.loop !330

._crit_edge124:                                   ; preds = %scalar.ph183, %middle.block193
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bh, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next145, %i.cn
  br i1 %i.co, label %.lr.ph123, label %._crit_edge127.split.loopexit, !llvm.loop !331

._crit_edge127.split.loopexit:                    ; preds = %._crit_edge124
  %.pre152 = load i32, ptr %i.v, align 8
  br label %._crit_edge127.split

._crit_edge127.split:                             ; preds = %.preheader107.._crit_edge127.split_crit_edge, %._crit_edge127.split.loopexit, %.lr.ph126
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader107.._crit_edge127.split_crit_edge ], [ %i.bm, %._crit_edge127.split.loopexit ], [ %i.bm, %.lr.ph126 ] ; 2 uses
  %i.cp = phi i32 [ %i.bb, %.preheader107.._crit_edge127.split_crit_edge ], [ %.pre152, %._crit_edge127.split.loopexit ], [ %i.bb, %.lr.ph126 ]
  %i.cq = add nsw i32 %i.cp, %.pre-phi157
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.cr = icmp eq i64 %i.be, 0
  br i1 %i.cr, label %.preheader108, label %bb.e

.preheader108:                                    ; preds = %bb.d
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph119, label %._crit_edge120.split

.lr.ph119:                                        ; preds = %.preheader108
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %sext106 = shl i64 %i.p, 32                     ; 2 uses
  %i.cw = ashr exact i64 %sext106, 32
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = icmp sgt i32 %i.q, 0
  br i1 %i.cy, label %.lr.ph116.preheader, label %._crit_edge120.split

.lr.ph116.preheader:                              ; preds = %.lr.ph119
  %i.cz = and i64 %i.p, 2147483647                ; 5 uses
  %i.da = lshr exact i64 %sext106, 30
  %i.db = ashr exact i64 %sext, 30
  %i.dc = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 1) ; 2 uses
  %min.iters.check168 = icmp samesign ult i64 %i.cz, 8
  %i.dd = sub nsw i64 %i.db, %i.da
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond196 = select i1 %min.iters.check168, i1 true, i1 %diff.check
  %n.vec171 = and i64 %i.dc, 2147483640           ; 3 uses
  %i.de = sub nsw i64 %i.cz, %n.vec171
  %cmp.n178 = icmp eq i64 %i.dc, %n.vec171
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117
  %indvars.iv138 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next139, %._crit_edge117 ] ; 2 uses
  %i.df = load ptr, ptr %i.cv, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv138
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.aa
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.cx ; 2 uses
  br i1 %or.cond196, label %scalar.ph167.preheader, label %vector.body172

vector.body172:                                   ; preds = %.lr.ph116, %vector.body172
  %index173 = phi i64 [ %index.next176, %vector.body172 ], [ 0, %.lr.ph116 ] ; 2 uses
  %i.dk = xor i64 %index173, -1
  %i.dl = add i64 %i.cz, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -28
  %wide.load174 = load <4 x float>, ptr %i.dn, align 4
  %wide.load175 = load <4 x float>, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dl ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -12
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -28
  store <4 x float> %wide.load174, ptr %i.dq, align 4
  store <4 x float> %wide.load175, ptr %i.dr, align 4
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.ds, label %middle.block177, label %vector.body172, !llvm.loop !332

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %._crit_edge117, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph116, %middle.block177
  %indvars.iv135.ph = phi i64 [ %i.cz, %.lr.ph116 ], [ %i.de, %middle.block177 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph167 ], [ %indvars.iv135.ph, %scalar.ph167.preheader ] ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next136
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next136
  store float %i.du, ptr %i.dv, align 4
  %i.dw = icmp sgt i64 %indvars.iv135, 1
  br i1 %i.dw, label %scalar.ph167, label %._crit_edge117, !llvm.loop !333

._crit_edge117:                                   ; preds = %scalar.ph167, %middle.block177
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dx = load i32, ptr %i.cs, align 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next139, %i.dy
  br i1 %i.dz, label %.lr.ph116, label %._crit_edge120.split.loopexit, !llvm.loop !334

._crit_edge120.split.loopexit:                    ; preds = %._crit_edge117
  %.pre151 = load i32, ptr %i.v, align 8
  br label %._crit_edge120.split

._crit_edge120.split:                             ; preds = %._crit_edge120.split.loopexit, %.lr.ph119, %.preheader108
  %i.ea = phi i32 [ %.pre151, %._crit_edge120.split.loopexit ], [ %i.bb, %.lr.ph119 ], [ %i.bb, %.preheader108 ]
  %i.eb = sub nsw i32 %i.u, %i.q                  ; 2 uses
  %i.ec = add nsw i32 %i.ea, %i.eb
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge127.split, %._crit_edge120.split
  %.sink = phi i32 [ %i.ec, %._crit_edge120.split ], [ %i.cq, %._crit_edge127.split ] ; 2 uses
  %.sink163 = phi i32 [ %i.eb, %._crit_edge120.split ], [ %.pre-phi157, %._crit_edge127.split ]
  store i32 %.sink, ptr %i.v, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add nsw i32 %i.ee, %.sink163
  store i32 %i.ef, ptr %i.ed, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.eg = phi i32 [ %i.bb, %bb.d ], [ %.sink, %.sink.split ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph129, %bb.f
  %indvars.iv147 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next148, %bb.f ] ; 3 uses
  %i.em = load ptr, ptr %i.ek, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv147
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load i32, ptr %i.v, align 8
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  %i.es = load ptr, ptr %i.el, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv147
  store ptr %i.er, ptr %i.et, align 8
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.eu = load i32, ptr %i.eh, align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next148, %i.ev
  br i1 %i.ew, label %bb.f, label %._crit_edge130, !llvm.loop !335

._crit_edge130:                                   ; preds = %bb.f, %.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  store ptr %i.ey, ptr %1, align 8
  %.pre153 = load i32, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge130, %bb.e
  %i.ez = phi i32 [ %.pre153, %._crit_edge130 ], [ %i.eg, %bb.e ]
  %i.fa = add nsw i32 %i.u, %i.n
  %i.fb = sub i32 %i.fa, %i.ez
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.099 = phi i32 [ %i.fb, %bb.g ], [ 0, %bb.a ]
  ret i32 %.099
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_analysis_output_always(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef %0, i32 noundef %1) #62 ; 0 uses
  %i.c = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef nonnull @.str.133) #64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not36 = icmp eq i32 %4, 0
  %i.e = uitofp nneg i32 %3 to float              ; 2 uses
  %.not37 = icmp eq i64 %6, 0                     ; 2 uses
  %.not38 = icmp eq i32 %5, 0                     ; 2 uses
  %wide.trip.count71 = zext nneg i32 %3 to i64    ; 6 uses
  br i1 %.not36, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not38, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not37, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph.split.us.split.us.split.us ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv68 to i32
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.g) #62 ; 0 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68
  %i.j = load float, ptr %i.i, align 4
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %i.k) #62 ; 0 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !303

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.lr.ph.split.us.split.us.split ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.m = add nsw i64 %6, %indvars.iv63
  %i.n = sitofp i64 %i.m to double
  %i.o = fdiv double %i.n, 8.000000e+03
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.o) #62 ; 0 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv63
  %i.r = load float, ptr %i.q, align 4
  %i.s = fpext float %i.r to double
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %i.s) #62 ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count71
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split, !llvm.loop !303

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not37, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %bb.e
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %bb.e ], [ 0, %.lr.ph.split.us.split ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv58 to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.v) #62 ; 0 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv58
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = fcmp oeq float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.aa = tail call float @llvm.fabs.f32(float %i.y)
  %i.ab = bitcast float %i.aa to i32
  %i.ac = uitofp nneg i32 %i.ab to float
end_hunk_0
begin_hunk_1_@vorbis_lpc_to_lsp:bb.a
  %i.bu = icmp ult i32 %i.b, 4
  br i1 %i.bu, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.bt, 2147483644
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph132

.preheader118:                                    ; preds = %._crit_edge129
  %.not104136 = icmp slt i32 %i.j, 2
  br i1 %.not104136, label %.loopexit119, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.preheader118
  %i.bv = add nuw nsw i32 %i.j, 1
  %wide.trip.count164 = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.bw = add nsw i64 %wide.trip.count164, -2     ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check206, label %.lr.ph138.preheader267, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph138.preheader
  %n.vec209 = and i64 %i.bw, -2                   ; 3 uses
  %i.bx = add nsw i64 %n.vec209, 2
  %i.by = shl nuw nsw i64 %i.an, 2
  %i.bz = getelementptr i8, ptr %i.g, i64 %i.by
  %scevgep264 = getelementptr i8, ptr %i.bz, i64 -4
  %load_initial265 = load <2 x float>, ptr %scevgep264, align 4
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph207
  %store_forwarded266 = phi <2 x float> [ %load_initial265, %vector.ph207 ], [ %i.ce, %vector.body210 ]
  %index211 = phi i64 [ 0, %vector.ph207 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.ca = add i64 %index211, 2
  %i.cb = sub nsw i64 %i.an, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %wide.load213 = load <2 x float>, ptr %i.cd, align 4
  %i.ce = fadd <2 x float> %store_forwarded266, %wide.load213 ; 2 uses
  store <2 x float> %i.ce, ptr %i.cd, align 4
  %index.next214 = add nuw i64 %index211, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.cf, label %middle.block215, label %vector.body210, !llvm.loop !666

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.bw, %n.vec209
  br i1 %cmp.n216, label %.loopexit119, label %.lr.ph138.preheader267

.lr.ph138.preheader267:                           ; preds = %.lr.ph138.preheader, %middle.block215
  %indvars.iv161.ph = phi i64 [ 2, %.lr.ph138.preheader ], [ %i.bx, %middle.block215 ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader267, %.lr.ph138
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph138 ], [ %indvars.iv161.ph, %.lr.ph138.preheader267 ] ; 2 uses
  %i.cg = sub nsw i64 %i.an, %indvars.iv161
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = load float, ptr %i.ch, align 4
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.ch, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit119, label %.lr.ph138, !llvm.loop !667

.preheader120.loopexit.unr-lcssa:                 ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader120, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.preheader
  %store_forwarded263.epil.init = phi float [ %load_initial262, %.lr.ph132.preheader ], [ %i.dg, %.preheader120.loopexit.unr-lcssa ]
  %indvars.iv151.epil.init = phi i64 [ 1, %.lr.ph132.preheader ], [ %indvars.iv.next152.3, %.preheader120.loopexit.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %store_forwarded263.epil = phi float [ %store_forwarded263.epil.init, %.lr.ph132.epil.preheader ], [ %i.cp, %.lr.ph132.epil ]
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph132.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph132.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph132.epil.preheader ], [ %epil.iter.next, %.lr.ph132.epil ]
  %i.cm = sub nsw i64 %i.k, %indvars.iv151.epil
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fsub float %i.co, %store_forwarded263.epil ; 2 uses
  store float %i.cp, ptr %i.cn, align 4
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader120, label %.lr.ph132.epil, !llvm.loop !668

.preheader120:                                    ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader122
  br i1 %.not101125, label %.loopexit119, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %.preheader120
  %i.cq = shl nuw nsw i64 %i.an, 2
  %scevgep258 = getelementptr i8, ptr %i.g, i64 %i.cq
  %load_initial259 = load float, ptr %scevgep258, align 4 ; 2 uses
  %i.cr = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter272 = and i64 %i.cr, 3                 ; 3 uses
  %i.cs = icmp ult i32 %i.j, 4
  br i1 %i.cs, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter276 = and i64 %i.cr, 2147483644
  %invariant.gep291 = getelementptr [4 x i8], ptr %i.g, i64 %i.an
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %store_forwarded263 = phi float [ %load_initial262, %.lr.ph132.preheader.new ], [ %i.dg, %.lr.ph132 ]
  %indvars.iv151 = phi i64 [ 1, %.lr.ph132.preheader.new ], [ %indvars.iv.next152.3, %.lr.ph132 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.ct = sub nsw i64 %i.k, %indvars.iv151
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.cv, %store_forwarded263   ; 2 uses
  store float %i.cw, ptr %i.cu, align 4
  %indvars.iv.next152.neg = xor i64 %indvars.iv151, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next152.neg ; 2 uses
  %i.cx = load float, ptr %gep, align 4
  %i.cy = fsub float %i.cx, %i.cw                 ; 2 uses
  store float %i.cy, ptr %gep, align 4
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2
  %i.cz = sub nsw i64 %i.k, %indvars.iv.next152.1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fsub float %i.db, %i.cy                 ; 2 uses
  store float %i.dc, ptr %i.da, align 4
  %indvars.iv.next152.2 = add nuw nsw i64 %indvars.iv151, 3
  %i.dd = sub nsw i64 %i.k, %indvars.iv.next152.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fsub float %i.df, %i.dc                 ; 3 uses
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader120.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !669

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %store_forwarded260 = phi float [ %load_initial259, %.lr.ph135.preheader.new ], [ %i.du, %.lr.ph135 ]
  %indvars.iv156 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next157.3, %.lr.ph135 ] ; 5 uses
  %niter277 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter277.next.3, %.lr.ph135 ]
  %i.dh = sub nsw i64 %i.an, %indvars.iv156
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fadd float %store_forwarded260, %i.dj   ; 2 uses
  store float %i.dk, ptr %i.di, align 4
  %indvars.iv.next157.neg = xor i64 %indvars.iv156, -1
  %gep292 = getelementptr [4 x i8], ptr %invariant.gep291, i64 %indvars.iv.next157.neg ; 2 uses
  %i.dl = load float, ptr %gep292, align 4
  %i.dm = fadd float %i.dk, %i.dl                 ; 2 uses
  store float %i.dm, ptr %gep292, align 4
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2
  %i.dn = sub nsw i64 %i.an, %indvars.iv.next157.1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dm, %i.dp                 ; 2 uses
  store float %i.dq, ptr %i.do, align 4
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3
  %i.dr = sub nsw i64 %i.an, %indvars.iv.next157.2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = fadd float %i.dq, %i.dt                 ; 3 uses
  store float %i.du, ptr %i.ds, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter277.next.3 = add nuw i64 %niter277, 4     ; 2 uses
  %niter277.ncmp.3 = icmp eq i64 %niter277.next.3, %unroll_iter276
  br i1 %niter277.ncmp.3, label %.loopexit119.loopexit268.unr-lcssa, label %.lr.ph135, !llvm.loop !670

.loopexit119.loopexit268.unr-lcssa:               ; preds = %.lr.ph135
  %lcmp.mod274.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod274.not, label %.loopexit119, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %.loopexit119.loopexit268.unr-lcssa, %.lr.ph135.preheader
  %store_forwarded260.epil.init = phi float [ %load_initial259, %.lr.ph135.preheader ], [ %i.du, %.loopexit119.loopexit268.unr-lcssa ]
  %indvars.iv156.epil.init = phi i64 [ 1, %.lr.ph135.preheader ], [ %indvars.iv.next157.3, %.loopexit119.loopexit268.unr-lcssa ]
  %lcmp.mod275 = icmp ne i64 %xtraiter272, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %store_forwarded260.epil = phi float [ %store_forwarded260.epil.init, %.lr.ph135.epil.preheader ], [ %i.dy, %.lr.ph135.epil ]
  %indvars.iv156.epil = phi i64 [ %indvars.iv156.epil.init, %.lr.ph135.epil.preheader ], [ %indvars.iv.next157.epil, %.lr.ph135.epil ] ; 2 uses
  %epil.iter273 = phi i64 [ 0, %.lr.ph135.epil.preheader ], [ %epil.iter273.next, %.lr.ph135.epil ]
  %i.dv = sub nsw i64 %i.an, %indvars.iv156.epil
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fadd float %store_forwarded260.epil, %i.dx ; 2 uses
  store float %i.dy, ptr %i.dw, align 4
  %indvars.iv.next157.epil = add nuw nsw i64 %indvars.iv156.epil, 1
  %epil.iter273.next = add i64 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i64 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %.loopexit119, label %.lr.ph135.epil, !llvm.loop !671

.loopexit119:                                     ; preds = %.loopexit119.loopexit268.unr-lcssa, %.lr.ph135.epil, %.lr.ph138, %middle.block215, %.preheader120, %.preheader118
  %i.dz = load float, ptr %i.f, align 16
  %i.ea = fmul float %i.dz, 5.000000e-01
  store float %i.ea, ptr %i.f, align 16
  %.not19.i = icmp slt i32 %i.b, 2
  br i1 %.not19.i, label %cheby.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit119
  %i.eb = zext nneg i32 %i.b to i64               ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %3 = add nuw nsw i64 %i.eb, 1
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %i.f, i64 %i.ec
  %scevgep255 = getelementptr i8, ptr %i.ed, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit254, %.preheader.preheader.i
  %indvars.iv22.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next23.i, %.loopexit254 ] ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i, i64 %i.eb)
  %i.ee = sub nsw i64 %3, %smin                   ; 3 uses
  %min.iters.check219 = icmp ult i64 %i.ee, 2
  br i1 %min.iters.check219, label %scalar.ph218.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %.preheader.i
  %n.vec222 = and i64 %i.ee, -2                   ; 3 uses
  %i.ef = sub nsw i64 %i.eb, %n.vec222
  %load_initial256 = load <2 x float>, ptr %scevgep255, align 4
  %i.eg = shufflevector <2 x float> %load_initial256, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph220
  %store_forwarded257 = phi <2 x float> [ %i.eg, %vector.ph220 ], [ %i.el, %vector.body223 ] ; 3 uses
  %index224 = phi i64 [ 0, %vector.ph220 ], [ %index.next231, %vector.body223 ] ; 2 uses
  %i.eh = sub i64 %i.eb, %index224
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %i.ek = getelementptr i8, ptr %i.ei, i64 -12    ; 2 uses
  %wide.load227 = load <2 x float>, ptr %i.ek, align 4
  %reverse228 = shufflevector <2 x float> %wide.load227, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = fsub <2 x float> %reverse228, %store_forwarded257 ; 2 uses
  %reverse229 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse229, ptr %i.ek, align 4
  %i.em = fadd <2 x float> %store_forwarded257, %store_forwarded257
  %reverse230 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse230, ptr %i.ej, align 4
  %index.next231 = add nuw i64 %index224, 2       ; 2 uses
  %i.en = icmp eq i64 %index.next231, %n.vec222
  br i1 %i.en, label %middle.block232, label %vector.body223, !llvm.loop !672

middle.block232:                                  ; preds = %vector.body223
  %cmp.n233 = icmp eq i64 %i.ee, %n.vec222
  br i1 %cmp.n233, label %.loopexit254, label %scalar.ph218.preheader

scalar.ph218.preheader:                           ; preds = %.preheader.i, %middle.block232
  %indvars.iv.i.ph = phi i64 [ %i.eb, %.preheader.i ], [ %i.ef, %middle.block232 ]
  br label %scalar.ph218

scalar.ph218:                                     ; preds = %scalar.ph218.preheader, %scalar.ph218
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph218 ], [ %indvars.iv.i.ph, %scalar.ph218.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.ep = load float, ptr %i.eo, align 4          ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 -8     ; 2 uses
  %i.er = load float, ptr %i.eq, align 4
  %i.es = fsub float %i.er, %i.ep
  store float %i.es, ptr %i.eq, align 4
  %i.et = fadd float %i.ep, %i.ep
  store float %i.et, ptr %i.eo, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not17.not.i = icmp sgt i64 %indvars.iv.i, %indvars.iv22.i
  br i1 %.not17.not.i, label %scalar.ph218, label %.loopexit254, !llvm.loop !673

.loopexit254:                                     ; preds = %scalar.ph218, %middle.block232
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cheby.exit, label %.preheader.i, !llvm.loop !674

cheby.exit:                                       ; preds = %.loopexit254, %.loopexit119
  %i.eu = load float, ptr %i.g, align 16
  %i.ev = fmul float %i.eu, 5.000000e-01
  store float %i.ev, ptr %i.g, align 16
  %.not19.i107 = icmp slt i32 %i.j, 2
  br i1 %.not19.i107, label %cheby.exit117, label %.preheader.preheader.i108

.preheader.preheader.i108:                        ; preds = %cheby.exit
  %i.ew = zext nneg i32 %i.j to i64               ; 6 uses
  %i.ex = add nuw nsw i32 %i.j, 1
  %wide.trip.count.i109 = zext nneg i32 %i.ex to i64
  %4 = add nuw nsw i64 %i.ew, 1
  %i.ey = shl nuw nsw i64 %i.ew, 2
  %i.ez = getelementptr i8, ptr %i.g, i64 %i.ey
  %scevgep = getelementptr i8, ptr %i.ez, i64 -4
  br label %.preheader.i110

.preheader.i110:                                  ; preds = %.loopexit253, %.preheader.preheader.i108
  %indvars.iv22.i111 = phi i64 [ 2, %.preheader.preheader.i108 ], [ %indvars.iv.next23.i115, %.loopexit253 ] ; 3 uses
  %smin235 = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i111, i64 %i.ew)
  %i.fa = sub nsw i64 %4, %smin235                ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.fa, 2
  br i1 %min.iters.check237, label %scalar.ph236.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %.preheader.i110
  %n.vec240 = and i64 %i.fa, -2                   ; 3 uses
  %i.fb = sub nsw i64 %i.ew, %n.vec240
  %load_initial = load <2 x float>, ptr %scevgep, align 4
  %i.fc = shufflevector <2 x float> %load_initial, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph238
  %store_forwarded = phi <2 x float> [ %i.fc, %vector.ph238 ], [ %i.fh, %vector.body241 ] ; 3 uses
  %index242 = phi i64 [ 0, %vector.ph238 ], [ %index.next249, %vector.body241 ] ; 2 uses
  %i.fd = sub i64 %i.ew, %index242
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fg = getelementptr i8, ptr %i.fe, i64 -12    ; 2 uses
  %wide.load245 = load <2 x float>, ptr %i.fg, align 4
  %reverse246.a = shufflevector <2 x float> %wide.load245, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = fsub <2 x float> %reverse246.a, %store_forwarded ; 2 uses
  %reverse247.a = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse247.a, ptr %i.fg, align 4
  %i.fi = fadd <2 x float> %store_forwarded, %store_forwarded
  %reverse248 = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse248, ptr %i.ff, align 4
  %index.next249 = add nuw i64 %index242, 2       ; 2 uses
  %i.fj = icmp eq i64 %index.next249, %n.vec240
  br i1 %i.fj, label %middle.block250, label %vector.body241, !llvm.loop !675

middle.block250:                                  ; preds = %vector.body241
  %cmp.n251 = icmp eq i64 %i.fa, %n.vec240
  br i1 %cmp.n251, label %.loopexit253, label %scalar.ph236.preheader

scalar.ph236.preheader:                           ; preds = %.preheader.i110, %middle.block250
  %indvars.iv.i112.ph = phi i64 [ %i.ew, %.preheader.i110 ], [ %i.fb, %middle.block250 ]
  br label %scalar.ph236

scalar.ph236:                                     ; preds = %scalar.ph236.preheader, %scalar.ph236
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %scalar.ph236 ], [ %indvars.iv.i112.ph, %scalar.ph236.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i112 ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4          ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fk, i64 -8     ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = fsub float %i.fn, %i.fl
  store float %i.fo, ptr %i.fm, align 4
  %i.fp = fadd float %i.fl, %i.fl
  store float %i.fp, ptr %i.fk, align 4
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i112, -1
  %.not17.not.i114 = icmp sgt i64 %indvars.iv.i112, %indvars.iv22.i111
  br i1 %.not17.not.i114, label %scalar.ph236, label %.loopexit253, !llvm.loop !676

.loopexit253:                                     ; preds = %scalar.ph236, %middle.block250
  %indvars.iv.next23.i115 = add nuw nsw i64 %indvars.iv22.i111, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next23.i115, %wide.trip.count.i109
  br i1 %exitcond.not.i116, label %cheby.exit117, label %.preheader.i110, !llvm.loop !674

cheby.exit117:                                    ; preds = %.loopexit253, %cheby.exit
  %i.fq = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  %.not105 = icmp eq i32 %i.fq, 0
  br i1 %.not105, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %cheby.exit117
  %i.fr = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  %.not106 = icmp eq i32 %i.fr, 0
  br i1 %.not106, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call fastcc void @Newton_Raphson(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  call fastcc void @Newton_Raphson(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  call void @qsort(ptr noundef nonnull %i.h, i64 noundef %i.k, i64 noundef 4, ptr noundef nonnull @comp) #62
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.an, i64 noundef 4, ptr noundef nonnull @comp) #62
  %i.fs = icmp sgt i32 %i.b, 0
  br i1 %i.fs, label %.lr.ph141.preheader, label %.preheader

.lr.ph141.preheader:                              ; preds = %bb.c
  %wide.trip.count169 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter278 = and i64 %wide.trip.count169, 1
  %i.ft = icmp eq i32 %i.b, 1
  br i1 %i.ft, label %.lr.ph141.epil.preheader, label %.lr.ph141.preheader.new

.lr.ph141.preheader.new:                          ; preds = %.lr.ph141.preheader
  %unroll_iter282 = and i64 %wide.trip.count169, 2147483646
  br label %.lr.ph141

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph141
  %lcmp.mod280.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod280.not, label %.preheader, label %.lr.ph141.epil.preheader

.lr.ph141.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph141.preheader
  %indvars.iv166.epil.init = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next167.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod281 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod281)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166.epil.init
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fpext float %i.fv to double
  %i.fx = call double @acos(double noundef %i.fw) #62
  %i.fy = fptrunc double %i.fx to float
  %.idx.epil = shl nuw nsw i64 %indvars.iv166.epil.init, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.epil
  store float %i.fy, ptr %i.fz, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph141.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.ga = icmp sgt i32 %i.j, 0
  br i1 %i.ga, label %.lr.ph143.preheader, label %.loopexit

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count174 = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter284 = and i64 %wide.trip.count174, 1
  %i.gb = icmp eq i32 %i.j, 1
  br i1 %i.gb, label %.lr.ph143.epil.preheader, label %.lr.ph143.preheader.new

.lr.ph143.preheader.new:                          ; preds = %.lr.ph143.preheader
  %unroll_iter288 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph143

.lr.ph141:                                        ; preds = %.lr.ph141, %.lr.ph141.preheader.new
  %indvars.iv166 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph141 ] ; 4 uses
  %niter283 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %niter283.next.1, %.lr.ph141 ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166
  %i.gd = load float, ptr %i.gc, align 8
  %i.ge = fpext float %i.gd to double
  %i.gf = call double @acos(double noundef %i.ge) #62
  %i.gg = fptrunc double %i.gf to float
  %.idx = shl nuw nsw i64 %indvars.iv166, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  store float %i.gg, ptr %i.gh, align 4
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next167
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = fpext float %i.gj to double
  %i.gl = call double @acos(double noundef %i.gk) #62
  %i.gm = fptrunc double %i.gl to float
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next167, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.1
  store float %i.gm, ptr %i.gn, align 4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph141, !llvm.loop !677

.lr.ph143:                                        ; preds = %.lr.ph143, %.lr.ph143.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %indvars.iv.next172.1, %.lr.ph143 ] ; 4 uses
  %niter289 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %niter289.next.1, %.lr.ph143 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171
  %i.gp = load float, ptr %i.go, align 8
  %i.gq = fpext float %i.gp to double
  %i.gr = call double @acos(double noundef %i.gq) #62
  %i.gs = fptrunc double %i.gr to float
  %.idx177 = shl nuw nsw i64 %indvars.iv171, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store float %i.gs, ptr %i.gu, align 4
  %indvars.iv.next172 = or disjoint i64 %indvars.iv171, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next172
  %i.gw = load float, ptr %i.gv, align 4
  %i.gx = fpext float %i.gw to double
  %i.gy = call double @acos(double noundef %i.gx) #62
  %i.gz = fptrunc double %i.gy to float
  %.idx177.1 = shl nuw nsw i64 %indvars.iv.next172, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store float %i.gz, ptr %i.hb, align 4
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph143, !llvm.loop !678

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph143
  %lcmp.mod286.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod286.not, label %.loopexit, label %.lr.ph143.epil.preheader

.lr.ph143.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph143.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next172.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171.epil.init
  %i.hd = load float, ptr %i.hc, align 4
  %i.he = fpext float %i.hd to double
  %i.hf = call double @acos(double noundef %i.he) #62
  %i.hg = fptrunc double %i.hf to float
  %.idx177.epil = shl nuw nsw i64 %indvars.iv171.epil.init, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.epil
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.hg, ptr %i.hi, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %cheby.exit117, %bb.b
  %.096 = phi i32 [ -1, %cheby.exit117 ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph143.epil.preheader ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 -1, 1) i32 @Laguerre_With_Deflation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #56 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.not101 = icmp slt i32 %1, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load142 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load142 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader97, label %.lr.ph.preheader147

end_hunk_1
begin_hunk_2_@dradf4:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2147483644               ; 6 uses
  %i.ai = add nsw i64 %n.vec, %i.i
  %i.aj = add nsw i64 %n.vec, %i.h
  %i.ak = add nuw nsw i64 %n.vec, %i.f
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %invariant.gep916 = getelementptr [4 x i8], ptr %2, i64 %i.f
  %invariant.gep918 = getelementptr [4 x i8], ptr %2, i64 %i.h
  %invariant.gep920 = getelementptr [4 x i8], ptr %2, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.am = trunc i64 %index to i32
  %gep917 = getelementptr [4 x i8], ptr %invariant.gep916, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %gep917, align 4, !alias.scope !927, !noalias !930
  %gep919 = getelementptr [4 x i8], ptr %invariant.gep918, i64 %index ; 2 uses
  %wide.load340 = load <4 x float>, ptr %gep919, align 4, !alias.scope !932, !noalias !930
  %i.an = fadd <4 x float> %wide.load, %wide.load340 ; 2 uses
  %sext = shl i64 %index, 32
  %i.ao = ashr exact i64 %sext, 30
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao ; 2 uses
  %wide.load341 = load <4 x float>, ptr %i.ap, align 4, !alias.scope !934, !noalias !930
  %gep921 = getelementptr [4 x i8], ptr %invariant.gep920, i64 %index ; 2 uses
  %wide.load342 = load <4 x float>, ptr %gep921, align 4, !alias.scope !936, !noalias !930
  %i.aq = fadd <4 x float> %wide.load341, %wide.load342 ; 2 uses
  %i.ar = fadd <4 x float> %i.an, %i.aq
  %i.as = shl i32 %i.am, 2
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %i.at
  %wide.load343 = load <4 x float>, ptr %i.ap, align 4, !alias.scope !934, !noalias !930
  %wide.load344 = load <4 x float>, ptr %gep921, align 4, !alias.scope !936, !noalias !930
  %i.av = fsub <4 x float> %wide.load343, %wide.load344
  %wide.load345 = load <4 x float>, ptr %gep919, align 4, !alias.scope !932, !noalias !930
  %wide.load346 = load <4 x float>, ptr %gep917, align 4, !alias.scope !927, !noalias !930
  %i.aw = shufflevector <4 x float> %i.ar, <4 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ax = fsub <4 x float> %wide.load345, %wide.load346
  %i.ay = fsub <4 x float> %i.aq, %i.an
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.aw, <8 x float> %i.az, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.au, align 4, !alias.scope !930
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv264.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph ], [ %i.ai, %middle.block ]
  %indvars.iv262.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph ], [ %i.aj, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.f, %vector.memcheck ], [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph ], [ %i.ak, %middle.block ]
  %.0231240.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.al, %middle.block ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph ], [ %indvars.iv264.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %scalar.ph ], [ %indvars.iv262.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0224243 = phi i32 [ %i.cg, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ]
  %.0231240 = phi i32 [ %i.br, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv262 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fadd float %i.bc, %i.be                 ; 2 uses
  %i.bg = sext i32 %.0231240 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv264 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = fadd float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fadd float %i.bf, %i.bl
  %i.bn = shl i32 %.0231240, 2                    ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bo
  store float %i.bm, ptr %i.bp, align 4
  %i.bq = fsub float %i.bl, %i.bf
  %i.br = add i32 %.0231240, %0                   ; 2 uses
  %i.bs = shl i32 %i.br, 2
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr %3, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store float %i.bq, ptr %i.bv, align 4
  %i.bw = load float, ptr %i.bh, align 4
  %i.bx = load float, ptr %i.bj, align 4
  %i.by = fsub float %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bn, %i.e
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %3, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  store float %i.by, ptr %i.cc, align 4
  %i.cd = load float, ptr %i.bd, align 4
  %i.ce = load float, ptr %i.bb, align 4
  %i.cf = fsub float %i.cd, %i.ce
  store float %i.cf, ptr %i.cb, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, %i.g
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, %i.g
  %i.cg = add nuw nsw i32 %.0224243, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !939

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ch = icmp slt i32 %0, 2
  br i1 %i.ch, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ci = icmp eq i32 %0, 2
  br i1 %i.ci, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %._crit_edge254.split, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %i.cj = shl nuw i32 %0, 1                       ; 2 uses
  %i.ck = zext nneg i32 %0 to i64                 ; 7 uses
  %i.cl = sext i32 %i.a to i64                    ; 11 uses
  %i.cm = shl i32 %0, 2                           ; 2 uses
  %i.cn = sext i32 %i.cj to i64                   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.cl ; 2 uses
  %invariant.gep313 = getelementptr [4 x i8], ptr %3, i64 %i.cn ; 2 uses
  %invariant.gep315 = getelementptr [4 x i8], ptr %3, i64 %i.cn ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 4)
  %i.co = add nsw i64 %umax, -3                   ; 2 uses
  %i.cp = lshr i64 %i.co, 1                       ; 6 uses
  %i.cq = shl nsw i64 %i.cl, 2                    ; 2 uses
  %i.cr = shl nuw nsw i64 %i.ck, 2
  %i.cs = shl nsw i64 %i.cl, 3                    ; 2 uses
  %i.ct = mul nsw i64 %i.cl, 12                   ; 2 uses
  %scevgep376 = getelementptr i8, ptr %3, i64 4
  %umax378 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 4)
  %i.cu = shl nuw nsw i64 %umax378, 2
  %i.cv = add nsw i64 %i.cu, -12
  %i.cw = and i64 %i.cv, -8                       ; 11 uses
  %i.cx = add nuw nsw i64 %i.cw, 8                ; 4 uses
  %scevgep379 = getelementptr i8, ptr %3, i64 %i.cx
  %scevgep381 = getelementptr i8, ptr %3, i64 8
  %i.cy = getelementptr i8, ptr %3, i64 %i.cw
  %scevgep383 = getelementptr i8, ptr %i.cy, i64 12
  %i.cz = sub nsw i64 -12, %i.cw
  %scevgep385 = getelementptr i8, ptr %3, i64 %i.cz
  %scevgep387 = getelementptr i8, ptr %3, i64 -8
  %i.da = sub nuw nsw i64 -8, %i.cw
  %scevgep389 = getelementptr i8, ptr %3, i64 %i.da
  %scevgep391 = getelementptr i8, ptr %3, i64 -4
  %i.db = shl nsw i64 %i.cn, 2                    ; 7 uses
  %i.dc = getelementptr i8, ptr %3, i64 %i.db
  %scevgep393 = getelementptr i8, ptr %i.dc, i64 4
  %i.dd = add nsw i64 %i.cw, %i.db                ; 2 uses
  %i.de = getelementptr i8, ptr %3, i64 %i.dd
  %scevgep395 = getelementptr i8, ptr %i.de, i64 8
  %i.df = getelementptr i8, ptr %3, i64 %i.db
  %scevgep397 = getelementptr i8, ptr %i.df, i64 8
  %i.dg = getelementptr i8, ptr %3, i64 %i.dd
  %scevgep399 = getelementptr i8, ptr %i.dg, i64 12
  %i.dh = add nsw i64 %i.db, -12
  %i.di = sub nsw i64 %i.dh, %i.cw
  %scevgep401 = getelementptr i8, ptr %3, i64 %i.di
  %i.dj = getelementptr i8, ptr %3, i64 %i.db
  %scevgep403 = getelementptr i8, ptr %i.dj, i64 -8
  %i.dk = add nsw i64 %i.db, -8
  %i.dl = sub nsw i64 %i.dk, %i.cw
  %scevgep405 = getelementptr i8, ptr %3, i64 %i.dl
  %i.dm = getelementptr i8, ptr %3, i64 %i.db
  %scevgep407 = getelementptr i8, ptr %i.dm, i64 -4
  %scevgep409 = getelementptr i8, ptr %4, i64 %i.cx
  %scevgep410 = getelementptr i8, ptr %5, i64 %i.cx
  %scevgep411 = getelementptr i8, ptr %6, i64 %i.cx
  %scevgep412 = getelementptr i8, ptr %2, i64 4
  %i.dn = add nsw i32 %1, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw nsw i64 %i.ck, %i.do
  %i.dq = shl i64 %i.dp, 2                        ; 4 uses
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.cw
  %scevgep413 = getelementptr i8, ptr %i.ds, i64 12
  %i.dt = mul nsw i64 %i.cl, 12                   ; 2 uses
  %i.du = getelementptr i8, ptr %2, i64 %i.dt
  %scevgep414 = getelementptr i8, ptr %i.du, i64 4 ; 8 uses
  %i.dv = getelementptr i8, ptr %2, i64 %i.dq
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.dt
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.cw
  %scevgep415 = getelementptr i8, ptr %i.dx, i64 12 ; 8 uses
  %i.dy = shl nsw i64 %i.cl, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %2, i64 %i.dy
  %scevgep416 = getelementptr i8, ptr %i.dz, i64 4 ; 8 uses
  %i.ea = getelementptr i8, ptr %2, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.cw
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dy
  %scevgep417 = getelementptr i8, ptr %i.ec, i64 12 ; 8 uses
  %i.ed = shl nsw i64 %i.cl, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %2, i64 %i.ed
  %scevgep418 = getelementptr i8, ptr %i.ee, i64 4 ; 8 uses
  %i.ef = getelementptr i8, ptr %2, i64 %i.dq
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.cw
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.ed
  %scevgep419 = getelementptr i8, ptr %i.eh, i64 12 ; 8 uses
  %umax755 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 4)
  %7 = add nsw i64 %umax755, -3                   ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %i.ei = insertelement <4 x ptr> poison, ptr %scevgep409, i64 0
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %scevgep410, i64 1
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %scevgep411, i64 2
  %i.el = insertelement <4 x ptr> %i.ek, ptr %scevgep413, i64 3 ; 8 uses
  %10 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %5, i64 1
  %12 = insertelement <4 x ptr> %11, ptr %6, i64 2
  %13 = insertelement <4 x ptr> %12, ptr %scevgep412, i64 3 ; 8 uses
  %min.iters.check757 = icmp ult i64 %7, 46
  %i.em = getelementptr i8, ptr %2, i64 %i.ct
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = getelementptr i8, ptr %2, i64 %i.ct
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = getelementptr i8, ptr %2, i64 %i.cs
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = getelementptr i8, ptr %2, i64 %i.cs
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %i.eu = getelementptr i8, ptr %2, i64 %i.cq
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = getelementptr i8, ptr %2, i64 %i.cq
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %mul.result353 = shl i64 %i.cp, 3
  %mul.result357 = shl i64 %i.cp, 3
  %mul.overflow358 = icmp ugt i64 %i.co, 4611686018427387903
  %mul.result361 = shl i64 %i.cp, 3
  %mul.result365 = shl i64 %i.cp, 3
  %mul.result369 = shl i64 %i.cp, 3
  %mul.result373 = shl i64 %i.cp, 3
  %n.vec760 = and i64 %9, 9223372036854775804     ; 4 uses
  %i.ey = shl nuw i64 %n.vec760, 1
  %i.ez = shl nuw i64 %n.vec760, 1                ; 3 uses
  %i.fa = or disjoint i64 %i.ez, 2
  %cmp.n791 = icmp eq i64 %9, %n.vec760
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %._crit_edge250
  %indvar = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvar.next, %._crit_edge250 ] ; 2 uses
  %indvars.iv281 = phi i32 [ %i.cj, %.lr.ph249.preheader ], [ %indvars.iv.next282, %._crit_edge250 ] ; 3 uses
  %indvars.iv277 = phi i32 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next278, %._crit_edge250 ] ; 3 uses
  %indvars.iv273 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next274, %._crit_edge250 ] ; 6 uses
  %.1252 = phi i32 [ 0, %.lr.ph249.preheader ], [ %i.no, %._crit_edge250 ]
  %i.fb = sext i32 %indvars.iv277 to i64
  %i.fc = shl nsw i64 %i.fb, 2                    ; 8 uses
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.fc ; 11 uses
  %scevgep380 = getelementptr i8, ptr %scevgep379, i64 %i.fc ; 11 uses
  %scevgep382 = getelementptr i8, ptr %scevgep381, i64 %i.fc ; 11 uses
  %scevgep384 = getelementptr i8, ptr %scevgep383, i64 %i.fc ; 11 uses
  %i.fd = sext i32 %indvars.iv281 to i64
  %i.fe = shl nsw i64 %i.fd, 2                    ; 8 uses
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.fe ; 11 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.fe ; 11 uses
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.fe ; 11 uses
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.fe ; 11 uses
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.fc ; 11 uses
  %scevgep396 = getelementptr i8, ptr %scevgep395, i64 %i.fc ; 11 uses
  %scevgep398 = getelementptr i8, ptr %scevgep397, i64 %i.fc ; 11 uses
  %scevgep400 = getelementptr i8, ptr %scevgep399, i64 %i.fc ; 11 uses
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.fe ; 11 uses
  %scevgep404 = getelementptr i8, ptr %scevgep403, i64 %i.fe ; 11 uses
  %scevgep406 = getelementptr i8, ptr %scevgep405, i64 %i.fe ; 11 uses
  %scevgep408 = getelementptr i8, ptr %scevgep407, i64 %i.fe ; 11 uses
  %i.ff = sext i32 %indvars.iv277 to i64          ; 5 uses
  %i.fg = sext i32 %indvars.iv281 to i64          ; 5 uses
  br i1 %min.iters.check757, label %scalar.ph756.preheader, label %vector.scevcheck350

vector.scevcheck350:                              ; preds = %.lr.ph249
  %i.fh = mul i64 %i.cr, %indvar                  ; 6 uses
  %scevgep371 = getelementptr i8, ptr %i.en, i64 %i.fh ; 2 uses
  %scevgep367 = getelementptr i8, ptr %i.ep, i64 %i.fh ; 2 uses
  %scevgep363 = getelementptr i8, ptr %i.er, i64 %i.fh ; 2 uses
  %scevgep359 = getelementptr i8, ptr %i.et, i64 %i.fh ; 2 uses
  %scevgep355 = getelementptr i8, ptr %i.ev, i64 %i.fh ; 2 uses
  %scevgep351 = getelementptr i8, ptr %i.ex, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %scevgep351, i64 %mul.result353
  %i.fj = icmp ult ptr %i.fi, %scevgep351
  %i.fk = getelementptr i8, ptr %scevgep355, i64 %mul.result357
  %i.fl = icmp ult ptr %i.fk, %scevgep355
  %i.fm = or i1 %i.fl, %mul.overflow358
  %i.fn = getelementptr i8, ptr %scevgep359, i64 %mul.result361
  %i.fo = icmp ult ptr %i.fn, %scevgep359
  %i.fp = getelementptr i8, ptr %scevgep363, i64 %mul.result365
  %i.fq = icmp ult ptr %i.fp, %scevgep363
  %i.fr = getelementptr i8, ptr %scevgep367, i64 %mul.result369
  %i.fs = icmp ult ptr %i.fr, %scevgep367
  %i.ft = getelementptr i8, ptr %scevgep371, i64 %mul.result373
  %i.fu = icmp ult ptr %i.ft, %scevgep371
  %i.fv = or i1 %i.fj, %i.fm
  %i.fw = or i1 %i.fo, %i.fv
  %i.fx = or i1 %i.fq, %i.fw
  %i.fy = or i1 %i.fs, %i.fx
  %i.fz = or i1 %i.fu, %i.fy
  br i1 %i.fz, label %scalar.ph756.preheader, label %vector.memcheck375

vector.memcheck375:                               ; preds = %vector.scevcheck350
  %bound0420 = icmp ult ptr %scevgep377, %scevgep384
  %bound1421 = icmp ult ptr %scevgep382, %scevgep380
  %found.conflict422 = and i1 %bound0420, %bound1421
  %bound0423 = icmp ult ptr %scevgep377, %scevgep388
  %bound1424 = icmp ult ptr %scevgep386, %scevgep380
  %found.conflict425 = and i1 %bound0423, %bound1424
  %bound0427 = icmp ult ptr %scevgep377, %scevgep392
  %bound1428 = icmp ult ptr %scevgep390, %scevgep380
  %found.conflict429 = and i1 %bound0427, %bound1428
  %bound0431 = icmp ult ptr %scevgep377, %scevgep396
  %bound1432 = icmp ult ptr %scevgep394, %scevgep380
  %found.conflict433 = and i1 %bound0431, %bound1432
  %bound0435 = icmp ult ptr %scevgep377, %scevgep400
  %bound1436 = icmp ult ptr %scevgep398, %scevgep380
  %found.conflict437 = and i1 %bound0435, %bound1436
  %bound0439 = icmp ult ptr %scevgep377, %scevgep404
  %bound1440 = icmp ult ptr %scevgep402, %scevgep380
  %found.conflict441 = and i1 %bound0439, %bound1440
  %bound0443 = icmp ult ptr %scevgep377, %scevgep408
  %bound1444 = icmp ult ptr %scevgep406, %scevgep380
  %found.conflict445 = and i1 %bound0443, %bound1444
  %i.ga = insertelement <4 x ptr> poison, ptr %scevgep377, i64 0
  %i.gb = shufflevector <4 x ptr> %i.ga, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gc = icmp ult <4 x ptr> %i.gb, %i.el
  %i.gd = insertelement <4 x ptr> poison, ptr %scevgep380, i64 0
  %i.ge = shufflevector <4 x ptr> %i.gd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gf = icmp ult <4 x ptr> %13, %i.ge
  %i.gg = and <4 x i1> %i.gc, %i.gf
  %bound0463 = icmp ult ptr %scevgep377, %scevgep415
  %bound1464 = icmp ult ptr %scevgep414, %scevgep380
  %found.conflict465 = and i1 %bound0463, %bound1464
  %bound0467 = icmp ult ptr %scevgep377, %scevgep417
  %bound1468 = icmp ult ptr %scevgep416, %scevgep380
  %found.conflict469 = and i1 %bound0467, %bound1468
  %bound0471 = icmp ult ptr %scevgep377, %scevgep419
  %bound1472 = icmp ult ptr %scevgep418, %scevgep380
  %found.conflict473 = and i1 %bound0471, %bound1472
  %bound0475 = icmp ult ptr %scevgep382, %scevgep388
  %bound1476 = icmp ult ptr %scevgep386, %scevgep384
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0479 = icmp ult ptr %scevgep382, %scevgep392
  %bound1480 = icmp ult ptr %scevgep390, %scevgep384
  %found.conflict481 = and i1 %bound0479, %bound1480
  %bound0483 = icmp ult ptr %scevgep382, %scevgep396
  %bound1484 = icmp ult ptr %scevgep394, %scevgep384
  %found.conflict485 = and i1 %bound0483, %bound1484
  %bound0487 = icmp ult ptr %scevgep382, %scevgep400
  %bound1488 = icmp ult ptr %scevgep398, %scevgep384
  %found.conflict489 = and i1 %bound0487, %bound1488
  %bound0491 = icmp ult ptr %scevgep382, %scevgep404
  %bound1492 = icmp ult ptr %scevgep402, %scevgep384
  %found.conflict493 = and i1 %bound0491, %bound1492
  %bound0495 = icmp ult ptr %scevgep382, %scevgep408
  %bound1496 = icmp ult ptr %scevgep406, %scevgep384
  %found.conflict497 = and i1 %bound0495, %bound1496
  %i.gh = insertelement <4 x ptr> poison, ptr %scevgep382, i64 0
  %i.gi = shufflevector <4 x ptr> %i.gh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gj = icmp ult <4 x ptr> %i.gi, %i.el
  %i.gk = insertelement <4 x ptr> poison, ptr %scevgep384, i64 0
  %i.gl = shufflevector <4 x ptr> %i.gk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gm = icmp ult <4 x ptr> %13, %i.gl
  %i.gn = and <4 x i1> %i.gj, %i.gm
  %bound0515 = icmp ult ptr %scevgep382, %scevgep415
  %bound1516 = icmp ult ptr %scevgep414, %scevgep384
  %found.conflict517 = and i1 %bound0515, %bound1516
  %bound0519 = icmp ult ptr %scevgep382, %scevgep417
  %bound1520 = icmp ult ptr %scevgep416, %scevgep384
  %found.conflict521 = and i1 %bound0519, %bound1520
  %bound0523 = icmp ult ptr %scevgep382, %scevgep419
  %bound1524 = icmp ult ptr %scevgep418, %scevgep384
  %found.conflict525 = and i1 %bound0523, %bound1524
  %bound0527 = icmp ult ptr %scevgep386, %scevgep392
  %bound1528 = icmp ult ptr %scevgep390, %scevgep388
  %found.conflict529 = and i1 %bound0527, %bound1528
  %bound0531 = icmp ult ptr %scevgep386, %scevgep396
  %bound1532 = icmp ult ptr %scevgep394, %scevgep388
  %found.conflict533 = and i1 %bound0531, %bound1532
  %bound0535 = icmp ult ptr %scevgep386, %scevgep400
  %bound1536 = icmp ult ptr %scevgep398, %scevgep388
  %found.conflict537 = and i1 %bound0535, %bound1536
  %bound0539 = icmp ult ptr %scevgep386, %scevgep404
  %bound1540 = icmp ult ptr %scevgep402, %scevgep388
  %found.conflict541 = and i1 %bound0539, %bound1540
  %bound0543 = icmp ult ptr %scevgep386, %scevgep408
  %bound1544 = icmp ult ptr %scevgep406, %scevgep388
  %found.conflict545 = and i1 %bound0543, %bound1544
  %i.go = insertelement <4 x ptr> poison, ptr %scevgep386, i64 0
  %i.gp = shufflevector <4 x ptr> %i.go, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gq = icmp ult <4 x ptr> %i.gp, %i.el
  %i.gr = insertelement <4 x ptr> poison, ptr %scevgep388, i64 0
  %i.gs = shufflevector <4 x ptr> %i.gr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gt = icmp ult <4 x ptr> %13, %i.gs
  %i.gu = and <4 x i1> %i.gq, %i.gt
  %bound0563 = icmp ult ptr %scevgep386, %scevgep415
  %bound1564 = icmp ult ptr %scevgep414, %scevgep388
  %found.conflict565 = and i1 %bound0563, %bound1564
  %bound0567 = icmp ult ptr %scevgep386, %scevgep417
  %bound1568 = icmp ult ptr %scevgep416, %scevgep388
  %found.conflict569 = and i1 %bound0567, %bound1568
  %bound0571 = icmp ult ptr %scevgep386, %scevgep419
  %bound1572 = icmp ult ptr %scevgep418, %scevgep388
  %found.conflict573 = and i1 %bound0571, %bound1572
  %bound0575 = icmp ult ptr %scevgep390, %scevgep396
  %bound1576 = icmp ult ptr %scevgep394, %scevgep392
  %found.conflict577 = and i1 %bound0575, %bound1576
  %bound0579 = icmp ult ptr %scevgep390, %scevgep400
  %bound1580 = icmp ult ptr %scevgep398, %scevgep392
  %found.conflict581 = and i1 %bound0579, %bound1580
  %bound0583 = icmp ult ptr %scevgep390, %scevgep404
  %bound1584 = icmp ult ptr %scevgep402, %scevgep392
  %found.conflict585 = and i1 %bound0583, %bound1584
  %bound0587 = icmp ult ptr %scevgep390, %scevgep408
  %bound1588 = icmp ult ptr %scevgep406, %scevgep392
  %found.conflict589 = and i1 %bound0587, %bound1588
  %i.gv = insertelement <4 x ptr> poison, ptr %scevgep390, i64 0
  %i.gw = shufflevector <4 x ptr> %i.gv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gx = icmp ult <4 x ptr> %i.gw, %i.el
  %i.gy = insertelement <4 x ptr> poison, ptr %scevgep392, i64 0
  %i.gz = shufflevector <4 x ptr> %i.gy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ha = icmp ult <4 x ptr> %13, %i.gz
  %i.hb = and <4 x i1> %i.gx, %i.ha
  %bound0607 = icmp ult ptr %scevgep390, %scevgep415
  %bound1608 = icmp ult ptr %scevgep414, %scevgep392
  %found.conflict609 = and i1 %bound0607, %bound1608
  %bound0611 = icmp ult ptr %scevgep390, %scevgep417
  %bound1612 = icmp ult ptr %scevgep416, %scevgep392
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0615 = icmp ult ptr %scevgep390, %scevgep419
  %bound1616 = icmp ult ptr %scevgep418, %scevgep392
  %found.conflict617 = and i1 %bound0615, %bound1616
  %bound0619 = icmp ult ptr %scevgep394, %scevgep400
  %bound1620 = icmp ult ptr %scevgep398, %scevgep396
  %found.conflict621 = and i1 %bound0619, %bound1620
  %bound0623 = icmp ult ptr %scevgep394, %scevgep404
  %bound1624 = icmp ult ptr %scevgep402, %scevgep396
  %found.conflict625 = and i1 %bound0623, %bound1624
  %bound0627 = icmp ult ptr %scevgep394, %scevgep408
  %bound1628 = icmp ult ptr %scevgep406, %scevgep396
  %found.conflict629 = and i1 %bound0627, %bound1628
  %i.hc = insertelement <4 x ptr> poison, ptr %scevgep394, i64 0
  %i.hd = shufflevector <4 x ptr> %i.hc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.he = icmp ult <4 x ptr> %i.hd, %i.el
  %i.hf = insertelement <4 x ptr> poison, ptr %scevgep396, i64 0
  %i.hg = shufflevector <4 x ptr> %i.hf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hh = icmp ult <4 x ptr> %13, %i.hg
  %i.hi = and <4 x i1> %i.he, %i.hh
  %bound0647 = icmp ult ptr %scevgep394, %scevgep415
  %bound1648 = icmp ult ptr %scevgep414, %scevgep396
  %found.conflict649 = and i1 %bound0647, %bound1648
  %bound0651 = icmp ult ptr %scevgep394, %scevgep417
  %bound1652 = icmp ult ptr %scevgep416, %scevgep396
  %found.conflict653 = and i1 %bound0651, %bound1652
  %bound0655 = icmp ult ptr %scevgep394, %scevgep419
  %bound1656 = icmp ult ptr %scevgep418, %scevgep396
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0659 = icmp ult ptr %scevgep398, %scevgep404
  %bound1660 = icmp ult ptr %scevgep402, %scevgep400
  %found.conflict661 = and i1 %bound0659, %bound1660
  %bound0663 = icmp ult ptr %scevgep398, %scevgep408
  %bound1664 = icmp ult ptr %scevgep406, %scevgep400
  %found.conflict665 = and i1 %bound0663, %bound1664
  %i.hj = insertelement <4 x ptr> poison, ptr %scevgep398, i64 0
  %i.hk = shufflevector <4 x ptr> %i.hj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hl = icmp ult <4 x ptr> %i.hk, %i.el
  %i.hm = insertelement <4 x ptr> poison, ptr %scevgep400, i64 0
  %i.hn = shufflevector <4 x ptr> %i.hm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ho = icmp ult <4 x ptr> %13, %i.hn
  %i.hp = and <4 x i1> %i.hl, %i.ho
  %bound0683 = icmp ult ptr %scevgep398, %scevgep415
  %bound1684 = icmp ult ptr %scevgep414, %scevgep400
  %found.conflict685 = and i1 %bound0683, %bound1684
  %bound0687 = icmp ult ptr %scevgep398, %scevgep417
  %bound1688 = icmp ult ptr %scevgep416, %scevgep400
  %found.conflict689 = and i1 %bound0687, %bound1688
  %bound0691 = icmp ult ptr %scevgep398, %scevgep419
  %bound1692 = icmp ult ptr %scevgep418, %scevgep400
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0695 = icmp ult ptr %scevgep402, %scevgep408
  %bound1696 = icmp ult ptr %scevgep406, %scevgep404
  %found.conflict697 = and i1 %bound0695, %bound1696
  %i.hq = insertelement <4 x ptr> poison, ptr %scevgep402, i64 0
  %i.hr = shufflevector <4 x ptr> %i.hq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hs = icmp ult <4 x ptr> %i.hr, %i.el
  %i.ht = insertelement <4 x ptr> poison, ptr %scevgep404, i64 0
  %i.hu = shufflevector <4 x ptr> %i.ht, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hv = icmp ult <4 x ptr> %13, %i.hu
  %i.hw = and <4 x i1> %i.hs, %i.hv
  %bound0715 = icmp ult ptr %scevgep402, %scevgep415
  %bound1716 = icmp ult ptr %scevgep414, %scevgep404
  %found.conflict717 = and i1 %bound0715, %bound1716
  %bound0719 = icmp ult ptr %scevgep402, %scevgep417
  %bound1720 = icmp ult ptr %scevgep416, %scevgep404
  %found.conflict721 = and i1 %bound0719, %bound1720
  %bound0723 = icmp ult ptr %scevgep402, %scevgep419
  %bound1724 = icmp ult ptr %scevgep418, %scevgep404
  %found.conflict725 = and i1 %bound0723, %bound1724
  %i.hx = insertelement <4 x ptr> poison, ptr %scevgep406, i64 0
  %i.hy = shufflevector <4 x ptr> %i.hx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hz = icmp ult <4 x ptr> %i.hy, %i.el
  %i.ia = insertelement <4 x ptr> poison, ptr %scevgep408, i64 0
  %i.ib = shufflevector <4 x ptr> %i.ia, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ic = icmp ult <4 x ptr> %13, %i.ib
  %i.id = and <4 x i1> %i.hz, %i.ic
  %bound0743 = icmp ult ptr %scevgep406, %scevgep415
  %bound1744 = icmp ult ptr %scevgep414, %scevgep408
  %found.conflict745 = and i1 %bound0743, %bound1744
  %bound0747 = icmp ult ptr %scevgep406, %scevgep417
  %bound1748 = icmp ult ptr %scevgep416, %scevgep408
  %found.conflict749 = and i1 %bound0747, %bound1748
  %bound0751 = icmp ult ptr %scevgep406, %scevgep419
  %bound1752 = icmp ult ptr %scevgep418, %scevgep408
  %found.conflict753 = and i1 %bound0751, %bound1752
  %rdx.op = or <4 x i1> %i.gg, %i.gn
  %rdx.op859.a = or <4 x i1> %rdx.op, %i.gu
  %rdx.op860.a = or <4 x i1> %rdx.op859.a, %i.hb
  %rdx.op861.a = or <4 x i1> %rdx.op860.a, %i.hi
  %rdx.op862.a = or <4 x i1> %rdx.op861.a, %i.hp
  %rdx.op863.a = or <4 x i1> %rdx.op862.a, %i.hw
  %rdx.op864 = or <4 x i1> %rdx.op863.a, %i.id
  %i.ie = bitcast <4 x i1> %rdx.op864 to i4
  %i.if = icmp ne i4 %i.ie, 0
  %op.rdx = or i1 %i.if, %found.conflict422
  %op.rdx865.a = or i1 %found.conflict425, %found.conflict429
  %op.rdx866.a = or i1 %found.conflict433, %found.conflict437
  %op.rdx867.a = or i1 %found.conflict441, %found.conflict445
  %op.rdx868.a = or i1 %found.conflict465, %found.conflict469
  %op.rdx869.a = or i1 %found.conflict473, %found.conflict477
  %op.rdx870.a = or i1 %found.conflict481, %found.conflict485
  %op.rdx871.a = or i1 %found.conflict489, %found.conflict493
  %op.rdx872.a = or i1 %found.conflict497, %found.conflict517
  %op.rdx873.a = or i1 %found.conflict521, %found.conflict525
  %op.rdx874.a = or i1 %found.conflict529, %found.conflict533
  %op.rdx875.a = or i1 %found.conflict537, %found.conflict541
  %op.rdx876.a = or i1 %found.conflict545, %found.conflict565
  %op.rdx877.a = or i1 %found.conflict569, %found.conflict573
  %op.rdx878.a = or i1 %found.conflict577, %found.conflict581
  %op.rdx879.a = or i1 %found.conflict585, %found.conflict589
  %op.rdx880.a = or i1 %found.conflict609, %found.conflict613
  %op.rdx881.a = or i1 %found.conflict617, %found.conflict621
  %op.rdx882.a = or i1 %found.conflict625, %found.conflict629
  %op.rdx883.a = or i1 %found.conflict649, %found.conflict653
  %op.rdx884.a = or i1 %found.conflict657, %found.conflict661
  %op.rdx885.a = or i1 %found.conflict665, %found.conflict685
  %op.rdx886.a = or i1 %found.conflict689, %found.conflict693
  %op.rdx887.a = or i1 %found.conflict697, %found.conflict717
  %op.rdx888.a = or i1 %found.conflict721, %found.conflict725
  %op.rdx889.a = or i1 %found.conflict745, %found.conflict749
  %op.rdx890.a = or i1 %op.rdx, %op.rdx865.a
  %op.rdx891.a = or i1 %op.rdx866.a, %op.rdx867.a
  %op.rdx892.a = or i1 %op.rdx868.a, %op.rdx869.a
  %op.rdx893.a = or i1 %op.rdx870.a, %op.rdx871.a
  %op.rdx894.a = or i1 %op.rdx872.a, %op.rdx873.a
  %op.rdx895.a = or i1 %op.rdx874.a, %op.rdx875.a
  %op.rdx896.a = or i1 %op.rdx876.a, %op.rdx877.a
  %op.rdx897.a = or i1 %op.rdx878.a, %op.rdx879.a
  %op.rdx898.a = or i1 %op.rdx880.a, %op.rdx881.a
  %op.rdx899.a = or i1 %op.rdx882.a, %op.rdx883.a
  %op.rdx900.a = or i1 %op.rdx884.a, %op.rdx885.a
  %op.rdx901.a = or i1 %op.rdx886.a, %op.rdx887.a
  %op.rdx902.a = or i1 %op.rdx888.a, %op.rdx889.a
  %op.rdx903.a = or i1 %op.rdx890.a, %op.rdx891.a
  %op.rdx904.a = or i1 %op.rdx892.a, %op.rdx893.a
  %op.rdx905.a = or i1 %op.rdx894.a, %op.rdx895.a
  %op.rdx906.a = or i1 %op.rdx896.a, %op.rdx897.a
  %op.rdx907.a = or i1 %op.rdx898.a, %op.rdx899.a
  %op.rdx908.a = or i1 %op.rdx900.a, %op.rdx901.a
  %op.rdx909.a = or i1 %op.rdx902.a, %found.conflict753
  %op.rdx910.a = or i1 %op.rdx903.a, %op.rdx904.a
  %op.rdx911.a = or i1 %op.rdx905.a, %op.rdx906.a
  %op.rdx912.a = or i1 %op.rdx907.a, %op.rdx908.a
  %op.rdx913.a = or i1 %op.rdx910.a, %op.rdx911.a
  %op.rdx914.a = or i1 %op.rdx912.a, %op.rdx909.a
  %op.rdx915 = or i1 %op.rdx913.a, %op.rdx914.a
  br i1 %op.rdx915, label %scalar.ph756.preheader, label %vector.ph758

vector.ph758:                                     ; preds = %vector.memcheck375
  %i.ig = sub i64 %i.fg, %i.ey
  %i.ih = add i64 %i.ez, %i.ff
  %i.ii = add i64 %indvars.iv273, %i.ez
  %invariant.op = add i64 %indvars.iv273, 2
  br label %vector.body761

vector.body761:                                   ; preds = %vector.body761, %vector.ph758
  %index762 = phi i64 [ 0, %vector.ph758 ], [ %index.next789, %vector.body761 ] ; 3 uses
  %i.ij = shl i64 %index762, 1
  %i.ik = sub i64 %i.fg, %i.ij                    ; 2 uses
  %i.il = shl i64 %index762, 1                    ; 5 uses
  %i.im = add i64 %i.il, %i.ff                    ; 2 uses
  %.reass = add i64 %i.il, %invariant.op          ; 2 uses
  %i.in = add nuw nsw i64 %.reass, %i.cl          ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %4, i64 %i.il
  %wide.vec = load <8 x float>, ptr %i.io, align 4, !alias.scope !940 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec763 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %2, i64 %i.in
  %i.iq = getelementptr i8, ptr %i.ip, i64 -4
  %wide.vec764 = load <8 x float>, ptr %i.iq, align 4, !alias.scope !943 ; 2 uses
  %strided.vec765.a = shufflevector <8 x float> %wide.vec764, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec766 = shufflevector <8 x float> %wide.vec764, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ir = fmul <4 x float> %strided.vec, %strided.vec765.a
  %i.is = fmul <4 x float> %strided.vec763, %strided.vec766
  %i.it = fadd <4 x float> %i.ir, %i.is           ; 2 uses
  %i.iu = fmul <4 x float> %strided.vec, %strided.vec766
  %i.iv = fmul <4 x float> %strided.vec765.a, %strided.vec763
  %i.iw = fsub <4 x float> %i.iu, %i.iv           ; 2 uses
  %i.ix = add nuw nsw i64 %i.in, %i.cl            ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.il
  %wide.vec767 = load <8 x float>, ptr %i.iy, align 4, !alias.scope !945 ; 2 uses
  %strided.vec768.a = shufflevector <8 x float> %wide.vec767, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec769 = shufflevector <8 x float> %wide.vec767, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.iz = getelementptr [4 x i8], ptr %2, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 -4
  %wide.vec770 = load <8 x float>, ptr %i.ja, align 4, !alias.scope !947 ; 2 uses
  %strided.vec771.a = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec772 = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jb = fmul <4 x float> %strided.vec768.a, %strided.vec771.a
  %i.jc = fmul <4 x float> %strided.vec769, %strided.vec772
  %i.jd = fadd <4 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = fmul <4 x float> %strided.vec768.a, %strided.vec772
  %i.jf = fmul <4 x float> %strided.vec771.a, %strided.vec769
  %i.jg = fsub <4 x float> %i.je, %i.jf           ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.il
  %wide.vec773 = load <8 x float>, ptr %i.jh, align 4, !alias.scope !949 ; 2 uses
  %strided.vec774.a = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec775 = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ji = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ix
  %i.jj = getelementptr i8, ptr %i.ji, i64 -4
  %wide.vec776 = load <8 x float>, ptr %i.jj, align 4, !alias.scope !951 ; 2 uses
  %strided.vec777.a = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec778 = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jk = fmul <4 x float> %strided.vec774.a, %strided.vec777.a
  %i.jl = fmul <4 x float> %strided.vec775, %strided.vec778
  %i.jm = fadd <4 x float> %i.jk, %i.jl           ; 2 uses
  %i.jn = fmul <4 x float> %strided.vec774.a, %strided.vec778
  %i.jo = fmul <4 x float> %strided.vec777.a, %strided.vec775
  %i.jp = fsub <4 x float> %i.jn, %i.jo           ; 2 uses
  %i.jq = fadd <4 x float> %i.it, %i.jm           ; 2 uses
  %i.jr = fsub <4 x float> %i.jm, %i.it           ; 2 uses
  %i.js = fadd <4 x float> %i.iw, %i.jp           ; 2 uses
  %i.jt = fsub <4 x float> %i.iw, %i.jp           ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %wide.vec779 = load <8 x float>, ptr %i.jv, align 4, !alias.scope !953 ; 2 uses
  %strided.vec780.a = shufflevector <8 x float> %wide.vec779, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec781 = shufflevector <8 x float> %wide.vec779, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jw = fadd <4 x float> %i.jg, %strided.vec781 ; 2 uses
  %i.jx = fsub <4 x float> %strided.vec781, %i.jg ; 2 uses
  %i.jy = fadd <4 x float> %i.jd, %strided.vec780.a ; 2 uses
  %i.jz = fsub <4 x float> %strided.vec780.a, %i.jd ; 2 uses
  %i.ka = fadd <4 x float> %i.jq, %i.jy
  %i.kb = getelementptr [4 x i8], ptr %3, i64 %i.im
  %i.kc = getelementptr i8, ptr %i.kb, i64 4
  %i.kd = fadd <4 x float> %i.jw, %i.js
  %interleaved.vec782 = shufflevector <4 x float> %i.ka, <4 x float> %i.kd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec782, ptr %i.kc, align 4
  %i.ke = fsub <4 x float> %i.jz, %i.jt
  %i.kf = getelementptr [4 x i8], ptr %3, i64 %i.ik
  %i.kg = fsub <4 x float> %i.jr, %i.jx
  %i.kh = getelementptr i8, ptr %i.kf, i64 -36
  %interleaved.vec784.a = shufflevector <4 x float> %i.ke, <4 x float> %i.kg, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec784.a, ptr %i.kh, align 4
  %i.ki = fadd <4 x float> %i.jt, %i.jz
  %i.kj = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.im
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %i.kl = fadd <4 x float> %i.jx, %i.jr
  %interleaved.vec785 = shufflevector <4 x float> %i.ki, <4 x float> %i.kl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec785, ptr %i.kk, align 4
  %i.km = fsub <4 x float> %i.jy, %i.jq
  %i.kn = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.ik
  %i.ko = fsub <4 x float> %i.js, %i.jw
  %i.kp = getelementptr i8, ptr %i.kn, i64 -36
  %interleaved.vec788 = shufflevector <4 x float> %i.km, <4 x float> %i.ko, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec788, ptr %i.kp, align 4
  %index.next789 = add nuw i64 %index762, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next789, %n.vec760
  br i1 %i.kq, label %middle.block790, label %vector.body761, !llvm.loop !955

middle.block790:                                  ; preds = %vector.body761
  br i1 %cmp.n791, label %._crit_edge250, label %scalar.ph756.preheader

scalar.ph756.preheader:                           ; preds = %vector.memcheck375, %vector.scevcheck350, %.lr.ph249, %middle.block790
  %indvars.iv283.ph = phi i64 [ %i.fg, %vector.memcheck375 ], [ %i.fg, %vector.scevcheck350 ], [ %i.fg, %.lr.ph249 ], [ %i.ig, %middle.block790 ]
  %indvars.iv279.ph = phi i64 [ %i.ff, %vector.memcheck375 ], [ %i.ff, %vector.scevcheck350 ], [ %i.ff, %.lr.ph249 ], [ %i.ih, %middle.block790 ]
  %indvars.iv275.ph = phi i64 [ %indvars.iv273, %vector.memcheck375 ], [ %indvars.iv273, %vector.scevcheck350 ], [ %indvars.iv273, %.lr.ph249 ], [ %i.ii, %middle.block790 ]
  %indvars.iv271.ph = phi i64 [ 2, %vector.memcheck375 ], [ 2, %vector.scevcheck350 ], [ 2, %.lr.ph249 ], [ %i.fa, %middle.block790 ]
  br label %scalar.ph756

scalar.ph756:                                     ; preds = %scalar.ph756.preheader, %scalar.ph756
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph756 ], [ %indvars.iv283.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %scalar.ph756 ], [ %indvars.iv279.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph756 ], [ %indvars.iv275.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph756 ], [ %indvars.iv271.ph, %scalar.ph756.preheader ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 2 ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 2 ; 3 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -2 ; 3 uses
  %i.kr = add nuw nsw i64 %indvars.iv.next276, %i.cl ; 2 uses
  %i.ks = add nsw i64 %indvars.iv271, -2          ; 3 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ks
  %i.ku = load float, ptr %i.kt, align 4          ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %2, i64 %i.kr ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 -4
  %i.kx = load float, ptr %i.kw, align 4          ; 2 uses
end_hunk_2
begin_hunk_3_@dradb4:bb.a
  %i.by = getelementptr [4 x i8], ptr %2, i64 %i.ao
  %i.bz = getelementptr i8, ptr %i.by, i64 48
  %i.ca = load float, ptr %i.bt, align 4, !alias.scope !1066
  %i.cb = load float, ptr %i.bv, align 4, !alias.scope !1066
  %i.cc = load float, ptr %i.bx, align 4, !alias.scope !1066
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !1066
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ap
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aq
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ar
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.as
  %i.cm = getelementptr i8, ptr %i.ci, i64 -4
  %i.cn = getelementptr i8, ptr %i.cj, i64 -4
  %i.co = getelementptr i8, ptr %i.ck, i64 -4
  %i.cp = getelementptr i8, ptr %i.cl, i64 -4
  %i.cq = load float, ptr %i.cm, align 4, !alias.scope !1066
  %i.cr = load float, ptr %i.cn, align 4, !alias.scope !1066
  %i.cs = load float, ptr %i.co, align 4, !alias.scope !1066
  %i.ct = load float, ptr %i.cp, align 4, !alias.scope !1066
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3 ; 2 uses
  %i.cy = fsub <4 x float> %i.ch, %i.cx           ; 2 uses
  %i.cz = fadd <4 x float> %i.ch, %i.cx           ; 2 uses
  %i.da = fadd <4 x float> %i.bj, %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.da, ptr %i.db, align 4, !alias.scope !1069, !noalias !1071
  %i.dc = fsub <4 x float> %i.cy, %i.bs
  %i.dd = add nsw i64 %index, %i.f                ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dd
  store <4 x float> %i.dc, ptr %i.de, align 4, !alias.scope !1075, !noalias !1076
  %i.df = fsub <4 x float> %i.cz, %i.bj
  %i.dg = add nsw i64 %i.dd, %i.f                 ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dg
  store <4 x float> %i.df, ptr %i.dh, align 4, !alias.scope !1077, !noalias !1078
  %i.di = fadd <4 x float> %i.bs, %i.cy
  %i.dj = getelementptr [4 x i8], ptr %invariant.gep311, i64 %i.dg
  store <4 x float> %i.di, ptr %i.dj, align 4, !alias.scope !1079, !noalias !1066
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader931

.lr.ph.preheader931:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv258.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0222238.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader931, %.lr.ph
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.lr.ph ], [ %indvars.iv258.ph, %.lr.ph.preheader931 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader931 ] ; 3 uses
  %.0222238 = phi i32 [ %i.eh, %.lr.ph ], [ %.0222238.ph, %.lr.ph.preheader931 ]
  %i.dl = add nsw i64 %indvars.iv258, %i.h        ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load float, ptr %i.dn, align 4          ; 2 uses
  %i.dp = fadd float %i.do, %i.do                 ; 2 uses
  %i.dq = load float, ptr %i.dm, align 4          ; 2 uses
  %i.dr = fadd float %i.dq, %i.dq                 ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv258
  %i.dt = load float, ptr %i.ds, align 4          ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dl
  %i.du = getelementptr i8, ptr %gep, i64 -4
  %i.dv = load float, ptr %i.du, align 4          ; 2 uses
  %i.dw = fsub float %i.dt, %i.dv                 ; 2 uses
  %i.dx = fadd float %i.dt, %i.dv                 ; 2 uses
  %i.dy = fadd float %i.dp, %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = fsub float %i.dw, %i.dr
  %i.eb = add nsw i64 %indvars.iv, %i.f           ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eb
  store float %i.ea, ptr %i.ec, align 4
  %i.ed = fsub float %i.dx, %i.dp
  %i.ee = add nsw i64 %i.eb, %i.f                 ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ee
  store float %i.ed, ptr %i.ef, align 4
  %i.eg = fadd float %i.dr, %i.dw
  %gep312 = getelementptr [4 x i8], ptr %invariant.gep311, i64 %i.ee
  store float %i.eg, ptr %gep312, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, %i.g
  %i.eh = add nuw nsw i32 %.0222238, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.eh, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1081

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ei = icmp slt i32 %0, 2
  br i1 %i.ei, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ej = icmp eq i32 %0, 2
  br i1 %i.ej, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %._crit_edge251.split, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader
  %i.ek = zext nneg i32 %0 to i64                 ; 7 uses
  %i.el = zext i32 %i.a to i64                    ; 11 uses
  %invariant.gep313 = getelementptr [4 x i8], ptr %3, i64 %i.el ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 4)
  %i.em = add nsw i64 %umax, -3                   ; 2 uses
  %i.en = lshr i64 %i.em, 1                       ; 6 uses
  %i.eo = shl nuw nsw i64 %i.el, 2                ; 2 uses
  %i.ep = shl nuw nsw i64 %i.ek, 2
  %i.eq = shl nuw nsw i64 %i.el, 3                ; 2 uses
  %i.er = mul nuw nsw i64 %i.el, 12               ; 2 uses
  %scevgep397 = getelementptr i8, ptr %3, i64 4   ; 7 uses
  %i.es = add nsw i32 %1, -1
  %i.et = zext i32 %i.es to i64
  %i.eu = mul nuw nsw i64 %i.ek, %i.et
  %i.ev = shl i64 %i.eu, 2                        ; 4 uses
  %umax398 = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 4)
  %i.ew = shl nuw nsw i64 %umax398, 2
  %i.ex = add nsw i64 %i.ew, -12
  %i.ey = and i64 %i.ex, -8                       ; 7 uses
  %i.ez = add i64 %i.ev, %i.ey                    ; 2 uses
  %i.fa = getelementptr i8, ptr %3, i64 %i.ez
  %scevgep399 = getelementptr i8, ptr %i.fa, i64 8 ; 7 uses
  %scevgep400 = getelementptr i8, ptr %3, i64 8   ; 7 uses
  %i.fb = getelementptr i8, ptr %3, i64 %i.ez
  %scevgep401 = getelementptr i8, ptr %i.fb, i64 12 ; 7 uses
  %i.fc = sub nsw i64 -12, %i.ey                  ; 2 uses
  %scevgep402 = getelementptr i8, ptr %2, i64 %i.fc
  %scevgep404 = getelementptr i8, ptr %2, i64 -4
  %scevgep406 = getelementptr i8, ptr %2, i64 4
  %i.fd = add nuw nsw i64 %i.ey, 12               ; 2 uses
  %scevgep408 = getelementptr i8, ptr %2, i64 %i.fd
  %scevgep410 = getelementptr i8, ptr %2, i64 %i.fc
  %scevgep412 = getelementptr i8, ptr %2, i64 -4
  %scevgep414 = getelementptr i8, ptr %2, i64 4
  %scevgep416 = getelementptr i8, ptr %2, i64 %i.fd
  %i.fe = add nuw nsw i64 %i.ey, 8                ; 3 uses
  %scevgep418 = getelementptr i8, ptr %4, i64 %i.fe ; 3 uses
  %scevgep419 = getelementptr i8, ptr %5, i64 %i.fe ; 4 uses
  %scevgep420 = getelementptr i8, ptr %6, i64 %i.fe ; 4 uses
  %i.ff = shl nuw nsw i64 %i.el, 2                ; 3 uses
  %i.fg = getelementptr i8, ptr %3, i64 %i.ff     ; 2 uses
  %scevgep421 = getelementptr i8, ptr %i.fg, i64 4 ; 5 uses
  %i.fh = add i64 %i.ev, %i.ey
  %i.fi = add i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = getelementptr i8, ptr %3, i64 %i.fi     ; 2 uses
  %scevgep422 = getelementptr i8, ptr %i.fj, i64 8 ; 5 uses
  %i.fk = getelementptr i8, ptr %3, i64 %i.ff     ; 2 uses
  %scevgep423 = getelementptr i8, ptr %i.fk, i64 8 ; 7 uses
  %i.fl = getelementptr i8, ptr %3, i64 %i.fi     ; 2 uses
  %scevgep424 = getelementptr i8, ptr %i.fl, i64 12 ; 7 uses
  %i.fm = shl nuw nsw i64 %i.el, 3                ; 3 uses
  %i.fn = getelementptr i8, ptr %3, i64 %i.fm     ; 2 uses
  %scevgep425 = getelementptr i8, ptr %i.fn, i64 4 ; 7 uses
  %i.fo = add i64 %i.ev, %i.ey
  %i.fp = add i64 %i.fo, %i.fm                    ; 2 uses
  %i.fq = getelementptr i8, ptr %3, i64 %i.fp     ; 2 uses
  %scevgep426 = getelementptr i8, ptr %i.fq, i64 8 ; 7 uses
  %i.fr = getelementptr i8, ptr %3, i64 %i.fm     ; 2 uses
  %i.fs = insertelement <4 x ptr> poison, ptr %i.fg, i64 0
  %i.ft = insertelement <4 x ptr> %i.fs, ptr %i.fk, i64 1
  %i.fu = insertelement <4 x ptr> %i.ft, ptr %i.fn, i64 2
  %i.fv = insertelement <4 x ptr> %i.fu, ptr %i.fr, i64 3 ; 7 uses
  %i.fw = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8> ; 2 uses
  %i.fx = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %i.fy = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %i.fz = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %i.ga = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %i.gb = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %i.gc = getelementptr i8, <4 x ptr> %i.fv, <4 x i64> <i64 4, i64 8, i64 4, i64 8>
  %scevgep427 = getelementptr i8, ptr %i.fr, i64 8 ; 7 uses
  %i.gd = getelementptr i8, ptr %3, i64 %i.fp     ; 2 uses
  %i.ge = insertelement <4 x ptr> poison, ptr %i.fj, i64 0
  %i.gf = insertelement <4 x ptr> %i.ge, ptr %i.fl, i64 1
  %i.gg = insertelement <4 x ptr> %i.gf, ptr %i.fq, i64 2
  %i.gh = insertelement <4 x ptr> %i.gg, ptr %i.gd, i64 3 ; 7 uses
  %i.gi = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12> ; 2 uses
  %i.gj = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %i.gk = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %i.gl = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %i.gm = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %i.gn = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %i.go = getelementptr i8, <4 x ptr> %i.gh, <4 x i64> <i64 8, i64 12, i64 8, i64 12>
  %scevgep428 = getelementptr i8, ptr %i.gd, i64 12 ; 7 uses
  %i.gp = mul nuw nsw i64 %i.el, 12               ; 3 uses
  %i.gq = getelementptr i8, ptr %3, i64 %i.gp
  %scevgep429 = getelementptr i8, ptr %i.gq, i64 4 ; 14 uses
  %i.gr = add i64 %i.ev, %i.gp
  %i.gs = add i64 %i.gr, %i.ey                    ; 2 uses
  %i.gt = getelementptr i8, ptr %3, i64 %i.gs
  %scevgep430 = getelementptr i8, ptr %i.gt, i64 8 ; 14 uses
  %i.gu = getelementptr i8, ptr %3, i64 %i.gp
  %scevgep431 = getelementptr i8, ptr %i.gu, i64 8 ; 14 uses
  %i.gv = getelementptr i8, ptr %3, i64 %i.gs
  %scevgep432 = getelementptr i8, ptr %i.gv, i64 12 ; 14 uses
  %umax768 = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 4)
  %7 = add nsw i64 %umax768, -3                   ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %i.gw = insertelement <4 x ptr> poison, ptr %scevgep397, i64 0
  %i.gx = shufflevector <4 x ptr> %i.gw, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = insertelement <4 x ptr> poison, ptr %scevgep399, i64 0
  %i.gz = shufflevector <4 x ptr> %i.gy, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = insertelement <4 x ptr> poison, ptr %scevgep418, i64 0 ; 2 uses
  %i.hb = insertelement <4 x ptr> %i.ha, ptr %scevgep419, i64 1
  %i.hc = insertelement <4 x ptr> %i.hb, ptr %scevgep420, i64 2
  %i.hd = insertelement <4 x ptr> poison, ptr %4, i64 0 ; 2 uses
  %i.he = insertelement <4 x ptr> %i.hd, ptr %5, i64 1
  %i.hf = insertelement <4 x ptr> %i.he, ptr %6, i64 2
  %i.hg = insertelement <4 x ptr> poison, ptr %scevgep400, i64 0
  %i.hh = shufflevector <4 x ptr> %i.hg, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hi = insertelement <4 x ptr> poison, ptr %scevgep401, i64 0
  %i.hj = shufflevector <4 x ptr> %i.hi, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hk = shufflevector <4 x ptr> %i.hc, <4 x ptr> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hl = shufflevector <4 x ptr> %i.hf, <4 x ptr> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hm = shufflevector <4 x ptr> %i.hd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hn = shufflevector <4 x ptr> %i.ha, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ho = insertelement <4 x ptr> poison, ptr %5, i64 0
  %i.hp = shufflevector <4 x ptr> %i.ho, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hq = insertelement <4 x ptr> poison, ptr %scevgep419, i64 0
  %i.hr = shufflevector <4 x ptr> %i.hq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hs = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.ht = shufflevector <4 x ptr> %i.hs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hu = insertelement <4 x ptr> poison, ptr %scevgep420, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check770 = icmp ult i64 %7, 46
  %i.hw = getelementptr i8, ptr %3, i64 %i.er
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  %i.hy = getelementptr i8, ptr %3, i64 %i.er
  %i.hz = getelementptr i8, ptr %i.hy, i64 4
  %i.ia = getelementptr i8, ptr %3, i64 %i.eq
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = getelementptr i8, ptr %3, i64 %i.eq
  %i.id = getelementptr i8, ptr %i.ic, i64 4
  %i.ie = getelementptr i8, ptr %3, i64 %i.eo
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  %i.ig = getelementptr i8, ptr %3, i64 %i.eo
  %i.ih = getelementptr i8, ptr %i.ig, i64 4
  %mul.result374 = shl i64 %i.en, 3
  %mul.result378 = shl i64 %i.en, 3
  %mul.overflow379 = icmp ugt i64 %i.em, 4611686018427387903
  %mul.result382 = shl i64 %i.en, 3
  %mul.result386 = shl i64 %i.en, 3
  %mul.result390 = shl i64 %i.en, 3
  %mul.result394 = shl i64 %i.en, 3
  %bound0433 = icmp ult ptr %scevgep397, %scevgep401
  %bound1434 = icmp ult ptr %scevgep400, %scevgep399
  %found.conflict435 = and i1 %bound0433, %bound1434
  %i.ii = icmp ult <4 x ptr> %i.gx, %i.hk
  %i.ij = icmp ult <4 x ptr> %i.hl, %i.gz
  %i.ik = and <4 x i1> %i.ii, %i.ij
  %bound0468 = icmp ult ptr %scevgep397, %scevgep424
  %bound1469 = icmp ult ptr %scevgep423, %scevgep399
  %found.conflict470 = and i1 %bound0468, %bound1469
  %bound0472 = icmp ult ptr %scevgep397, %scevgep426
  %bound1473 = icmp ult ptr %scevgep425, %scevgep399
  %found.conflict474 = and i1 %bound0472, %bound1473
  %bound0476 = icmp ult ptr %scevgep397, %scevgep428
  %bound1477 = icmp ult ptr %scevgep427, %scevgep399
  %found.conflict478 = and i1 %bound0476, %bound1477
  %bound0480 = icmp ult ptr %scevgep397, %scevgep430
  %bound1481 = icmp ult ptr %scevgep429, %scevgep399
  %found.conflict482 = and i1 %bound0480, %bound1481
  %bound0484 = icmp ult ptr %scevgep397, %scevgep432
  %bound1485 = icmp ult ptr %scevgep431, %scevgep399
  %found.conflict486 = and i1 %bound0484, %bound1485
  %i.il = icmp ult <4 x ptr> %i.hh, %i.hk
  %i.im = icmp ult <4 x ptr> %i.hl, %i.hj
  %i.in = and <4 x i1> %i.il, %i.im
  %bound0520 = icmp ult ptr %scevgep400, %scevgep424
  %bound1521 = icmp ult ptr %scevgep423, %scevgep401
  %found.conflict522 = and i1 %bound0520, %bound1521
  %bound0524 = icmp ult ptr %scevgep400, %scevgep426
  %bound1525 = icmp ult ptr %scevgep425, %scevgep401
  %found.conflict526 = and i1 %bound0524, %bound1525
  %bound0528 = icmp ult ptr %scevgep400, %scevgep428
  %bound1529 = icmp ult ptr %scevgep427, %scevgep401
  %found.conflict530 = and i1 %bound0528, %bound1529
  %bound0532 = icmp ult ptr %scevgep400, %scevgep430
  %bound1533 = icmp ult ptr %scevgep429, %scevgep401
  %found.conflict534 = and i1 %bound0532, %bound1533
  %bound0536 = icmp ult ptr %scevgep400, %scevgep432
  %bound1537 = icmp ult ptr %scevgep431, %scevgep401
  %found.conflict538 = and i1 %bound0536, %bound1537
  %i.io = icmp ult <4 x ptr> %i.hm, %i.gm
  %i.ip = icmp ult <4 x ptr> %i.ga, %i.hn
  %i.iq = and <4 x i1> %i.io, %i.ip
  %bound0652 = icmp ult ptr %4, %scevgep430
  %bound1653 = icmp ult ptr %scevgep429, %scevgep418
  %found.conflict654 = and i1 %bound0652, %bound1653
  %bound0656 = icmp ult ptr %4, %scevgep432
  %bound1657 = icmp ult ptr %scevgep431, %scevgep418
  %found.conflict658 = and i1 %bound0656, %bound1657
  %i.ir = icmp ult <4 x ptr> %i.hp, %i.gn
  %i.is = icmp ult <4 x ptr> %i.gb, %i.hr
  %i.it = and <4 x i1> %i.ir, %i.is
  %bound0676 = icmp ult ptr %5, %scevgep430
  %bound1677 = icmp ult ptr %scevgep429, %scevgep419
  %found.conflict678 = and i1 %bound0676, %bound1677
  %bound0680 = icmp ult ptr %5, %scevgep432
  %bound1681 = icmp ult ptr %scevgep431, %scevgep419
  %found.conflict682 = and i1 %bound0680, %bound1681
  %i.iu = icmp ult <4 x ptr> %i.ht, %i.go
  %i.iv = icmp ult <4 x ptr> %i.gc, %i.hv
  %i.iw = and <4 x i1> %i.iu, %i.iv
  %bound0700 = icmp ult ptr %6, %scevgep430
  %bound1701 = icmp ult ptr %scevgep429, %scevgep420
  %found.conflict702 = and i1 %bound0700, %bound1701
  %bound0704 = icmp ult ptr %6, %scevgep432
  %bound1705 = icmp ult ptr %scevgep431, %scevgep420
  %found.conflict706 = and i1 %bound0704, %bound1705
  %bound0708 = icmp ult ptr %scevgep421, %scevgep424
  %bound1709 = icmp ult ptr %scevgep423, %scevgep422
  %found.conflict710 = and i1 %bound0708, %bound1709
  %bound0712 = icmp ult ptr %scevgep421, %scevgep426
  %bound1713 = icmp ult ptr %scevgep425, %scevgep422
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep421, %scevgep428
  %bound1717 = icmp ult ptr %scevgep427, %scevgep422
  %found.conflict718 = and i1 %bound0716, %bound1717
  %bound0720 = icmp ult ptr %scevgep421, %scevgep430
  %bound1721 = icmp ult ptr %scevgep429, %scevgep422
  %found.conflict722 = and i1 %bound0720, %bound1721
  %bound0724 = icmp ult ptr %scevgep421, %scevgep432
  %bound1725 = icmp ult ptr %scevgep431, %scevgep422
  %found.conflict726 = and i1 %bound0724, %bound1725
  %bound0728 = icmp ult ptr %scevgep423, %scevgep426
  %bound1729 = icmp ult ptr %scevgep425, %scevgep424
  %found.conflict730 = and i1 %bound0728, %bound1729
  %bound0732 = icmp ult ptr %scevgep423, %scevgep428
  %bound1733 = icmp ult ptr %scevgep427, %scevgep424
  %found.conflict734 = and i1 %bound0732, %bound1733
  %bound0736 = icmp ult ptr %scevgep423, %scevgep430
  %bound1737 = icmp ult ptr %scevgep429, %scevgep424
  %found.conflict738 = and i1 %bound0736, %bound1737
  %bound0740 = icmp ult ptr %scevgep423, %scevgep432
  %bound1741 = icmp ult ptr %scevgep431, %scevgep424
  %found.conflict742 = and i1 %bound0740, %bound1741
  %bound0744 = icmp ult ptr %scevgep425, %scevgep428
  %bound1745 = icmp ult ptr %scevgep427, %scevgep426
  %found.conflict746 = and i1 %bound0744, %bound1745
  %bound0748 = icmp ult ptr %scevgep425, %scevgep430
  %bound1749 = icmp ult ptr %scevgep429, %scevgep426
  %found.conflict750 = and i1 %bound0748, %bound1749
  %bound0752 = icmp ult ptr %scevgep425, %scevgep432
  %bound1753 = icmp ult ptr %scevgep431, %scevgep426
  %found.conflict754 = and i1 %bound0752, %bound1753
  %bound0756 = icmp ult ptr %scevgep427, %scevgep430
  %bound1757 = icmp ult ptr %scevgep429, %scevgep428
  %found.conflict758 = and i1 %bound0756, %bound1757
  %bound0760 = icmp ult ptr %scevgep427, %scevgep432
  %bound1761 = icmp ult ptr %scevgep431, %scevgep428
  %found.conflict762 = and i1 %bound0760, %bound1761
  %bound0764 = icmp ult ptr %scevgep429, %scevgep432
  %bound1765 = icmp ult ptr %scevgep431, %scevgep430
  %found.conflict766 = and i1 %bound0764, %bound1765
  %invariant.op940.a = or <4 x i1> %i.iq, %i.it
  %invariant.op941.a = or <4 x i1> %invariant.op940.a, %i.iw
  %op.rdx892.a = or i1 %found.conflict470, %found.conflict474
  %op.rdx893.a = or i1 %found.conflict478, %found.conflict482
  %op.rdx894.a = or i1 %found.conflict486, %found.conflict522
  %op.rdx895.a = or i1 %found.conflict526, %found.conflict530
  %op.rdx896.a = or i1 %found.conflict534, %found.conflict538
  %op.rdx901.a = or i1 %found.conflict654, %found.conflict658
  %op.rdx902.a = or i1 %found.conflict678, %found.conflict682
  %op.rdx903.a = or i1 %found.conflict702, %found.conflict706
  %op.rdx904.a = or i1 %found.conflict710, %found.conflict714
  %op.rdx905.a = or i1 %found.conflict718, %found.conflict722
  %op.rdx906.a = or i1 %found.conflict726, %found.conflict730
  %op.rdx907.a = or i1 %found.conflict734, %found.conflict738
  %op.rdx908.a = or i1 %found.conflict742, %found.conflict746
  %op.rdx909.a = or i1 %found.conflict750, %found.conflict754
  %op.rdx910 = or i1 %found.conflict758, %found.conflict762
  %invariant.op942.a = or i1 %found.conflict435, %op.rdx892.a
  %op.rdx912.a = or i1 %op.rdx893.a, %op.rdx894.a
  %op.rdx913.a = or i1 %op.rdx895.a, %op.rdx896.a
  %op.rdx916.a = or i1 %op.rdx901.a, %op.rdx902.a
  %op.rdx917.a = or i1 %op.rdx903.a, %op.rdx904.a
  %op.rdx918.a = or i1 %op.rdx905.a, %op.rdx906.a
  %op.rdx919.a = or i1 %op.rdx907.a, %op.rdx908.a
  %op.rdx920 = or i1 %op.rdx909.a, %op.rdx910
  %invariant.op943.a = or i1 %invariant.op942.a, %op.rdx912.a
  %op.rdx924.a = or i1 %op.rdx917.a, %op.rdx918.a
  %op.rdx925.a = or i1 %op.rdx919.a, %op.rdx920
  %invariant.op944 = or i1 %op.rdx916.a, %op.rdx924.a
  %op.rdx928.a = or i1 %op.rdx925.a, %found.conflict766
  %n.vec773 = and i64 %9, 9223372036854775804     ; 4 uses
  %i.ix = shl nuw i64 %n.vec773, 1                ; 4 uses
  %i.iy = mul i64 %n.vec773, -2                   ; 2 uses
  %i.iz = or disjoint i64 %i.ix, 2
  %invariant.op = add nuw nsw i64 2, %i.el
  %cmp.n812 = icmp eq i64 %9, %n.vec773
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge247
  %indvar = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvar.next, %._crit_edge247 ] ; 2 uses
  %indvars.iv279 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next280, %._crit_edge247 ] ; 6 uses
  %indvars.iv275 = phi i32 [ %i.b, %.lr.ph246.preheader ], [ %indvars.iv.next276, %._crit_edge247 ] ; 3 uses
  %indvars.iv269 = phi i32 [ %i.c, %.lr.ph246.preheader ], [ %indvars.iv.next270, %._crit_edge247 ] ; 3 uses
  %indvars.iv265 = phi i32 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next266, %._crit_edge247 ] ; 3 uses
  %.1249 = phi i32 [ 0, %.lr.ph246.preheader ], [ %i.rg, %._crit_edge247 ]
  %i.ja = sext i32 %indvars.iv269 to i64
  %i.jb = shl nsw i64 %i.ja, 2                    ; 4 uses
  %scevgep403 = getelementptr i8, ptr %scevgep402, i64 %i.jb ; 3 uses
  %scevgep405 = getelementptr i8, ptr %scevgep404, i64 %i.jb ; 3 uses
  %scevgep407 = getelementptr i8, ptr %scevgep406, i64 %i.jb ; 4 uses
  %scevgep409 = getelementptr i8, ptr %scevgep408, i64 %i.jb ; 4 uses
  %i.jc = sext i32 %indvars.iv275 to i64
  %i.jd = shl nsw i64 %i.jc, 2                    ; 2 uses
  %scevgep411 = getelementptr i8, ptr %scevgep410, i64 %i.jd ; 4 uses
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.jd ; 4 uses
  %i.je = sext i32 %indvars.iv265 to i64
  %i.jf = shl nsw i64 %i.je, 2                    ; 2 uses
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.jf ; 4 uses
  %scevgep417 = getelementptr i8, ptr %scevgep416, i64 %i.jf ; 4 uses
  %i.jg = sext i32 %indvars.iv265 to i64          ; 5 uses
  %i.jh = sext i32 %indvars.iv269 to i64          ; 10 uses
  %i.ji = sext i32 %indvars.iv275 to i64          ; 5 uses
  br i1 %min.iters.check770, label %scalar.ph769.preheader, label %vector.scevcheck371

vector.scevcheck371:                              ; preds = %.lr.ph246
  %i.jj = mul i64 %i.ep, %indvar                  ; 6 uses
  %scevgep392 = getelementptr i8, ptr %i.hx, i64 %i.jj ; 2 uses
  %scevgep388 = getelementptr i8, ptr %i.hz, i64 %i.jj ; 2 uses
  %scevgep384 = getelementptr i8, ptr %i.ib, i64 %i.jj ; 2 uses
  %scevgep380 = getelementptr i8, ptr %i.id, i64 %i.jj ; 2 uses
  %scevgep376 = getelementptr i8, ptr %i.if, i64 %i.jj ; 2 uses
  %scevgep372 = getelementptr i8, ptr %i.ih, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %scevgep372, i64 %mul.result374
  %i.jl = icmp ult ptr %i.jk, %scevgep372
  %i.jm = getelementptr i8, ptr %scevgep376, i64 %mul.result378
  %i.jn = icmp ult ptr %i.jm, %scevgep376
  %i.jo = or i1 %i.jn, %mul.overflow379
  %i.jp = getelementptr i8, ptr %scevgep380, i64 %mul.result382
  %i.jq = icmp ult ptr %i.jp, %scevgep380
  %i.jr = getelementptr i8, ptr %scevgep384, i64 %mul.result386
  %i.js = icmp ult ptr %i.jr, %scevgep384
  %i.jt = getelementptr i8, ptr %scevgep388, i64 %mul.result390
  %i.ju = icmp ult ptr %i.jt, %scevgep388
  %i.jv = getelementptr i8, ptr %scevgep392, i64 %mul.result394
  %i.jw = icmp ult ptr %i.jv, %scevgep392
  %i.jx = or i1 %i.jl, %i.jo
  %i.jy = or i1 %i.jq, %i.jx
  %i.jz = or i1 %i.js, %i.jy
  %i.ka = or i1 %i.ju, %i.jz
  %i.kb = or i1 %i.jw, %i.ka
  br i1 %i.kb, label %scalar.ph769.preheader, label %vector.memcheck396

vector.memcheck396:                               ; preds = %vector.scevcheck371
  %i.kc = insertelement <4 x ptr> poison, ptr %scevgep405, i64 0 ; 2 uses
  %i.kd = insertelement <4 x ptr> %i.kc, ptr %scevgep409, i64 1
  %i.ke = insertelement <4 x ptr> %i.kd, ptr %scevgep413, i64 2
  %i.kf = insertelement <4 x ptr> %i.ke, ptr %scevgep417, i64 3 ; 2 uses
  %i.kg = icmp ult <4 x ptr> %i.gx, %i.kf
  %i.kh = insertelement <4 x ptr> poison, ptr %scevgep403, i64 0 ; 2 uses
  %i.ki = insertelement <4 x ptr> %i.kh, ptr %scevgep407, i64 1
  %i.kj = insertelement <4 x ptr> %i.ki, ptr %scevgep411, i64 2
  %i.kk = insertelement <4 x ptr> %i.kj, ptr %scevgep415, i64 3 ; 2 uses
  %i.kl = icmp ult <4 x ptr> %i.kk, %i.gz
  %i.km = and <4 x i1> %i.kg, %i.kl
  %i.kn = icmp ult <4 x ptr> %i.hh, %i.kf
  %i.ko = icmp ult <4 x ptr> %i.kk, %i.hj
  %i.kp = and <4 x i1> %i.kn, %i.ko
  %i.kq = shufflevector <4 x ptr> %i.kh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kr = icmp ult <4 x ptr> %i.kq, %i.gi
  %i.ks = shufflevector <4 x ptr> %i.kc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kt = icmp ult <4 x ptr> %i.fw, %i.ks
  %i.ku = and <4 x i1> %i.kr, %i.kt
  %bound0556 = icmp ult ptr %scevgep403, %scevgep430
  %bound1557 = icmp ult ptr %scevgep429, %scevgep405
  %found.conflict558 = and i1 %bound0556, %bound1557
  %bound0560 = icmp ult ptr %scevgep403, %scevgep432
  %bound1561 = icmp ult ptr %scevgep431, %scevgep405
  %found.conflict562 = and i1 %bound0560, %bound1561
  %i.kv = insertelement <4 x ptr> poison, ptr %scevgep407, i64 0
  %i.kw = shufflevector <4 x ptr> %i.kv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kx = icmp ult <4 x ptr> %i.kw, %i.gj
  %i.ky = insertelement <4 x ptr> poison, ptr %scevgep409, i64 0
  %i.kz = shufflevector <4 x ptr> %i.ky, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.la = icmp ult <4 x ptr> %i.fx, %i.kz
  %i.lb = and <4 x i1> %i.kx, %i.la
  %bound0580 = icmp ult ptr %scevgep407, %scevgep430
  %bound1581 = icmp ult ptr %scevgep429, %scevgep409
  %found.conflict582 = and i1 %bound0580, %bound1581
  %bound0584 = icmp ult ptr %scevgep407, %scevgep432
  %bound1585 = icmp ult ptr %scevgep431, %scevgep409
  %found.conflict586 = and i1 %bound0584, %bound1585
  %i.lc = insertelement <4 x ptr> poison, ptr %scevgep411, i64 0
  %i.ld = shufflevector <4 x ptr> %i.lc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.le = icmp ult <4 x ptr> %i.ld, %i.gk
  %i.lf = insertelement <4 x ptr> poison, ptr %scevgep413, i64 0
  %i.lg = shufflevector <4 x ptr> %i.lf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lh = icmp ult <4 x ptr> %i.fy, %i.lg
  %i.li = and <4 x i1> %i.le, %i.lh
  %bound0604 = icmp ult ptr %scevgep411, %scevgep430
  %bound1605 = icmp ult ptr %scevgep429, %scevgep413
  %found.conflict606 = and i1 %bound0604, %bound1605
  %bound0608 = icmp ult ptr %scevgep411, %scevgep432
  %bound1609 = icmp ult ptr %scevgep431, %scevgep413
  %found.conflict610 = and i1 %bound0608, %bound1609
  %i.lj = insertelement <4 x ptr> poison, ptr %scevgep415, i64 0
  %i.lk = shufflevector <4 x ptr> %i.lj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ll = icmp ult <4 x ptr> %i.lk, %i.gl
  %i.lm = insertelement <4 x ptr> poison, ptr %scevgep417, i64 0
  %i.ln = shufflevector <4 x ptr> %i.lm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lo = icmp ult <4 x ptr> %i.fz, %i.ln
  %i.lp = and <4 x i1> %i.ll, %i.lo
  %bound0628 = icmp ult ptr %scevgep415, %scevgep430
  %bound1629 = icmp ult ptr %scevgep429, %scevgep417
  %found.conflict630 = and i1 %bound0628, %bound1629
  %bound0632 = icmp ult ptr %scevgep415, %scevgep432
  %bound1633 = icmp ult ptr %scevgep431, %scevgep417
  %found.conflict634 = and i1 %bound0632, %bound1633
  %rdx.op = or <4 x i1> %i.km, %i.ik
  %rdx.op883.a = or <4 x i1> %rdx.op, %i.kp
  %rdx.op884.a = or <4 x i1> %rdx.op883.a, %i.in
  %rdx.op885.a = or <4 x i1> %rdx.op884.a, %i.ku
  %rdx.op886.a = or <4 x i1> %rdx.op885.a, %i.lb
  %rdx.op887.a = or <4 x i1> %rdx.op886.a, %i.li
  %rdx.op888 = or <4 x i1> %rdx.op887.a, %i.lp
  %rdx.op891.reass = or <4 x i1> %rdx.op888, %invariant.op941.a
  %i.lq = bitcast <4 x i1> %rdx.op891.reass to i4
  %i.lr = icmp ne i4 %i.lq, 0
  %op.rdx897.a = or i1 %found.conflict558, %found.conflict562
  %op.rdx898.a = or i1 %found.conflict582, %found.conflict586
  %op.rdx899.a = or i1 %found.conflict606, %found.conflict610
  %op.rdx900 = or i1 %found.conflict630, %found.conflict634
  %op.rdx914.a = or i1 %op.rdx897.a, %op.rdx898.a
  %op.rdx915 = or i1 %op.rdx899.a, %op.rdx900
  %op.rdx921.reass = or i1 %i.lr, %invariant.op943.a
  %op.rdx922 = or i1 %op.rdx913.a, %op.rdx914.a
  %op.rdx926 = or i1 %op.rdx921.reass, %op.rdx922
  %op.rdx927.reass = or i1 %op.rdx915, %invariant.op944
  %op.rdx929.a = or i1 %op.rdx926, %op.rdx927.reass
  %op.rdx930 = or i1 %op.rdx929.a, %op.rdx928.a
  br i1 %op.rdx930, label %scalar.ph769.preheader, label %vector.ph771

vector.ph771:                                     ; preds = %vector.memcheck396
  %i.ls = add i64 %indvars.iv279, %i.ix
  %i.lt = add i64 %i.iy, %i.ji
  %i.lu = add i64 %i.iy, %i.jh
  %i.lv = add i64 %i.ix, %i.jh
  %i.lw = add i64 %i.ix, %i.jg
  %invariant.gep932 = getelementptr [4 x i8], ptr %2, i64 %i.jg
  %invariant.gep934 = getelementptr [4 x i8], ptr %2, i64 %i.ji
  %invariant.gep936 = getelementptr [4 x i8], ptr %2, i64 %i.jh
  %invariant.gep938 = getelementptr [4 x i8], ptr %2, i64 %i.jh
  br label %vector.body774

vector.body774:                                   ; preds = %vector.body774, %vector.ph771
  %index775 = phi i64 [ 0, %vector.ph771 ], [ %index.next810, %vector.body774 ] ; 3 uses
  %i.lx = shl i64 %index775, 1                    ; 6 uses
  %i.ly = add i64 %indvars.iv279, %i.lx           ; 2 uses
  %i.lz = mul i64 %index775, -2                   ; 2 uses
  %gep933 = getelementptr [4 x i8], ptr %invariant.gep932, i64 %i.lx
  %i.ma = getelementptr i8, ptr %gep933, i64 4
  %wide.vec = load <8 x float>, ptr %i.ma, align 4, !alias.scope !1082, !noalias !1085 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec776 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep935 = getelementptr [4 x i8], ptr %invariant.gep934, i64 %i.lz
  %i.mb = getelementptr i8, ptr %gep935, i64 -36
  %wide.vec777 = load <8 x float>, ptr %i.mb, align 4, !alias.scope !1092, !noalias !1085 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec777, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse780 = shufflevector <8 x float> %wide.vec777, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.mc = fadd <4 x float> %strided.vec776, %reverse780 ; 2 uses
  %i.md = fsub <4 x float> %strided.vec776, %reverse780 ; 2 uses
  %gep937 = getelementptr [4 x i8], ptr %invariant.gep936, i64 %i.lx
  %i.me = getelementptr i8, ptr %gep937, i64 4
  %wide.vec781 = load <8 x float>, ptr %i.me, align 4, !alias.scope !1094, !noalias !1085 ; 2 uses
  %strided.vec782.a = shufflevector <8 x float> %wide.vec781, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec783 = shufflevector <8 x float> %wide.vec781, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep939 = getelementptr [4 x i8], ptr %invariant.gep938, i64 %i.lz
  %i.mf = getelementptr i8, ptr %gep939, i64 -36
  %wide.vec784 = load <8 x float>, ptr %i.mf, align 4, !alias.scope !1096, !noalias !1085 ; 2 uses
  %reverse786 = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse788 = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.mg = fsub <4 x float> %strided.vec783, %reverse788 ; 2 uses
  %i.mh = fadd <4 x float> %strided.vec783, %reverse788 ; 2 uses
  %i.mi = fsub <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mj = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mk = fsub <4 x float> %strided.vec782.a, %reverse786 ; 2 uses
  %i.ml = fadd <4 x float> %strided.vec782.a, %reverse786 ; 2 uses
  %i.mm = fadd <4 x float> %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ly
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mp = fsub <4 x float> %i.mj, %i.ml           ; 2 uses
  %i.mq = fadd <4 x float> %i.md, %i.mg
  %interleaved.vec = shufflevector <4 x float> %i.mm, <4 x float> %i.mq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.mo, align 4
  %i.mr = fsub <4 x float> %i.md, %i.mg           ; 2 uses
  %i.ms = fsub <4 x float> %i.mi, %i.mh           ; 2 uses
  %i.mt = fadd <4 x float> %i.mh, %i.mi           ; 2 uses
end_hunk_3
begin_hunk_4_@dradb3:bb.a
  %i.y = zext nneg i32 %1 to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  %scevgep225 = getelementptr i8, ptr %3, i64 %i.z ; 3 uses
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.w
  %scevgep226 = getelementptr i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ac = shl nuw i32 %1, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %scevgep227 = getelementptr i8, ptr %3, i64 %i.ae ; 3 uses
  %i.af = getelementptr i8, ptr %3, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.w
  %scevgep228 = getelementptr i8, ptr %i.ag, i64 4 ; 3 uses
  %i.ah = mul nuw nsw i64 %i.v, 12
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %scevgep229 = getelementptr i8, ptr %i.ai, i64 12 ; 3 uses
  %bound0 = icmp ult ptr %3, %scevgep226
  %bound1 = icmp ult ptr %scevgep225, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  %bound0230 = icmp ult ptr %3, %scevgep228
  %bound1231 = icmp ult ptr %scevgep227, %scevgep224
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx = or i1 %found.conflict, %found.conflict232
  %bound0233 = icmp ult ptr %3, %scevgep229
  %bound1234 = icmp ult ptr %2, %scevgep224
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx, %found.conflict235
  %bound0237 = icmp ult ptr %scevgep225, %scevgep228
  %bound1238 = icmp ult ptr %scevgep227, %scevgep226
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %scevgep225, %scevgep229
  %bound1242 = icmp ult ptr %2, %scevgep226
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %scevgep227, %scevgep229
  %bound1246 = icmp ult ptr %2, %scevgep228
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  br i1 %conflict.rdx248, label %.lr.ph.preheader560, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 2147483644               ; 5 uses
  %i.aj = mul nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 2
  %i.al = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = mul i64 %index, 3                       ; 8 uses
  %i.an = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %i.ar = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  %i.at = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 44
  %i.av = getelementptr i8, ptr %i.an, i64 4
  %i.aw = getelementptr i8, ptr %i.ap, i64 16
  %i.ax = getelementptr i8, ptr %i.ar, i64 28
  %i.ay = getelementptr i8, ptr %i.at, i64 40
  %i.az = load float, ptr %i.av, align 4, !alias.scope !1128
  %i.ba = load float, ptr %i.aw, align 4, !alias.scope !1128
  %i.bb = load float, ptr %i.ax, align 4, !alias.scope !1128
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !1128
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3 ; 2 uses
  %i.bh = fadd <4 x float> %i.bg, %i.bg           ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.am
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  %i.bl = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bo = getelementptr i8, ptr %i.bn, i64 36
  %i.bp = load float, ptr %i.bi, align 4, !alias.scope !1128
  %i.bq = load float, ptr %i.bk, align 4, !alias.scope !1128
  %i.br = load float, ptr %i.bm, align 4, !alias.scope !1128
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !1128
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3 ; 2 uses
  %i.bx = fmul <4 x float> %i.bh, splat (float 5.000000e-01)
  %i.by = fsub <4 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fadd <4 x float> %i.bw, %i.bh
  %i.ca = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.bz, ptr %i.ca, align 4, !alias.scope !1131, !noalias !1133
  %i.cb = load float, ptr %i.ao, align 4, !alias.scope !1128
  %i.cc = load float, ptr %i.aq, align 4, !alias.scope !1128
  %i.cd = load float, ptr %i.as, align 4, !alias.scope !1128
  %i.ce = load float, ptr %i.au, align 4, !alias.scope !1128
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3 ; 2 uses
  %i.cj = fadd <4 x float> %i.ci, %i.ci
  %i.ck = fmul <4 x float> %i.cj, splat (float f0x3F5DB3D7) ; 2 uses
  %i.cl = fsub <4 x float> %i.by, %i.ck
  %i.cm = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.cl, ptr %i.cm, align 4, !alias.scope !1136, !noalias !1137
  %i.cn = fadd <4 x float> %i.by, %i.ck
  %i.co = getelementptr [4 x i8], ptr %invariant.gep218, i64 %index
  store <4 x float> %i.cn, ptr %i.co, align 4, !alias.scope !1138, !noalias !1128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !1139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader560

.lr.ph.preheader560:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv169.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %indvars.iv167.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0136152.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader560, %.lr.ph
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.lr.ph ], [ %indvars.iv169.ph, %.lr.ph.preheader560 ] ; 2 uses
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.lr.ph ], [ %indvars.iv167.ph, %.lr.ph.preheader560 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader560 ] ; 4 uses
  %.0136152 = phi i32 [ %i.df, %.lr.ph ], [ %.0136152.ph, %.lr.ph.preheader560 ]
  %i.cq = getelementptr [4 x i8], ptr %2, i64 %indvars.iv167 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %i.cs = load float, ptr %i.cr, align 4          ; 2 uses
  %i.ct = fadd float %i.cs, %i.cs                 ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv169
  %i.cv = load float, ptr %i.cu, align 4          ; 2 uses
  %i.cw = fmul float %i.ct, 5.000000e-01
  %i.cx = fsub float %i.cv, %i.cw                 ; 2 uses
  %i.cy = fadd float %i.cv, %i.ct
  %i.cz = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.cy, ptr %i.cz, align 4
  %i.da = load float, ptr %i.cq, align 4          ; 2 uses
  %i.db = fadd float %i.da, %i.da
  %i.dc = fmul float %i.db, f0x3F5DB3D7           ; 2 uses
  %i.dd = fsub float %i.cx, %i.dc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.dd, ptr %gep, align 4
  %i.de = fadd float %i.cx, %i.dc
  %gep219 = getelementptr [4 x i8], ptr %invariant.gep218, i64 %indvars.iv
  store float %i.de, ptr %gep219, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.f
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, %i.j
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, %i.j
  %i.df = add nuw nsw i32 %.0136152, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1140

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.dg = icmp sgt i32 %0, 2
  br i1 %i.dg, label %.lr.ph161.preheader, label %.loopexit

.lr.ph161.preheader:                              ; preds = %._crit_edge
  %i.dh = zext nneg i32 %0 to i64                 ; 6 uses
  %i.di = zext nneg i32 %0 to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 4)
  %i.dj = add nsw i64 %umax, -3                   ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dh, 2
  %scevgep258 = getelementptr i8, ptr %3, i64 8   ; 10 uses
  %i.dl = add nsw i32 %1, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dh, %i.dm
  %i.do = shl i64 %i.dn, 2                        ; 2 uses
  %umax259 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 4)
  %i.dp = shl nuw nsw i64 %umax259, 2
  %i.dq = add nsw i64 %i.dp, -12
  %i.dr = and i64 %i.dq, -8                       ; 5 uses
  %i.ds = getelementptr i8, ptr %3, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.dr
  %scevgep260 = getelementptr i8, ptr %i.dt, i64 12 ; 10 uses
  %scevgep261 = getelementptr i8, ptr %3, i64 4
  %i.du = add nuw nsw i64 %i.dr, 8                ; 4 uses
  %scevgep263 = getelementptr i8, ptr %3, i64 %i.du
  %scevgep265 = getelementptr i8, ptr %3, i64 8
  %i.dv = add nuw nsw i64 %i.dr, 12               ; 4 uses
  %scevgep267 = getelementptr i8, ptr %3, i64 %i.dv
  %scevgep269 = getelementptr i8, ptr %3, i64 4
  %scevgep271 = getelementptr i8, ptr %3, i64 %i.du
  %scevgep273 = getelementptr i8, ptr %3, i64 8
  %scevgep275 = getelementptr i8, ptr %3, i64 %i.dv
  %scevgep277 = getelementptr i8, ptr %2, i64 4
  %scevgep279 = getelementptr i8, ptr %2, i64 %i.dv
  %i.dw = sub nsw i64 -12, %i.dr
  %scevgep281 = getelementptr i8, ptr %2, i64 %i.dw
  %scevgep283 = getelementptr i8, ptr %2, i64 -4
  %scevgep285 = getelementptr i8, ptr %2, i64 4
  %scevgep287 = getelementptr i8, ptr %2, i64 %i.dv
  %scevgep289 = getelementptr i8, ptr %4, i64 %i.du ; 6 uses
  %scevgep290 = getelementptr i8, ptr %5, i64 %i.du ; 6 uses
  %scevgep291 = getelementptr i8, ptr %3, i64 4   ; 7 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.do
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dr
  %scevgep292 = getelementptr i8, ptr %i.dy, i64 8 ; 7 uses
  %umax472 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 4)
  %6 = add nsw i64 %umax472, -3                   ; 2 uses
  %7 = lshr i64 %6, 1
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %9 = insertelement <4 x ptr> poison, ptr %scevgep292, i64 0
  %10 = shufflevector <4 x ptr> %9, <4 x ptr> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x ptr> poison, ptr %scevgep291, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check474 = icmp ult i64 %6, 22
  %i.dz = shl nsw i64 %i.dj, 2
  %mul.result255 = and i64 %i.dz, -8
  %mul.overflow256 = icmp ugt i64 %i.dj, 4611686018427387903
  %bound0320 = icmp ult ptr %scevgep258, %scevgep289
  %bound1321 = icmp ult ptr %4, %scevgep260
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0324 = icmp ult ptr %scevgep258, %scevgep290
  %bound1325 = icmp ult ptr %5, %scevgep260
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0328 = icmp ult ptr %scevgep258, %scevgep292
  %bound1329 = icmp ult ptr %scevgep291, %scevgep260
  %found.conflict330 = and i1 %bound0328, %bound1329
  %bound0468 = icmp ult ptr %5, %scevgep292
  %bound1469 = icmp ult ptr %scevgep291, %scevgep290
  %found.conflict470 = and i1 %bound0468, %bound1469
  %op.rdx523 = or i1 %found.conflict322, %found.conflict326
  %invariant.op = or i1 %found.conflict330, %op.rdx523
  %n.vec477 = and i64 %8, 9223372036854775804     ; 4 uses
  %i.ea = shl nuw i64 %n.vec477, 1                ; 6 uses
  %i.eb = shl nuw i64 %n.vec477, 1
  %i.ec = or disjoint i64 %i.ea, 2
  %cmp.n512 = icmp eq i64 %8, %n.vec477
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %._crit_edge162
  %indvar = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvar.next, %._crit_edge162 ] ; 2 uses
  %indvars.iv196 = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next197, %._crit_edge162 ] ; 6 uses
  %indvars.iv192 = phi i32 [ %i.a, %.lr.ph161.preheader ], [ %indvars.iv.next193, %._crit_edge162 ] ; 3 uses
  %indvars.iv188 = phi i32 [ %i.b, %.lr.ph161.preheader ], [ %indvars.iv.next189, %._crit_edge162 ] ; 3 uses
  %indvars.iv184 = phi i32 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next185, %._crit_edge162 ] ; 3 uses
  %indvars.iv178 = phi i32 [ %i.c, %.lr.ph161.preheader ], [ %indvars.iv.next179, %._crit_edge162 ] ; 3 uses
  %.1164 = phi i32 [ 0, %.lr.ph161.preheader ], [ %i.jx, %._crit_edge162 ]
  %i.ed = zext i32 %indvars.iv192 to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2                ; 4 uses
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.ee ; 10 uses
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.ee ; 10 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.ee ; 10 uses
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.ee ; 10 uses
  %i.ef = zext i32 %indvars.iv188 to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2                ; 4 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.eg ; 10 uses
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.eg ; 10 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.eg ; 10 uses
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.eg ; 10 uses
  %i.eh = sext i32 %indvars.iv184 to i64
  %i.ei = shl nsw i64 %i.eh, 2                    ; 2 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.ei ; 6 uses
  %scevgep280 = getelementptr i8, ptr %scevgep279, i64 %i.ei ; 6 uses
  %i.ej = sext i32 %indvars.iv178 to i64
  %i.ek = shl nsw i64 %i.ej, 2                    ; 4 uses
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.ek ; 6 uses
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.ek ; 6 uses
  %scevgep286 = getelementptr i8, ptr %scevgep285, i64 %i.ek ; 6 uses
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.ek ; 6 uses
  %i.el = sext i32 %indvars.iv178 to i64          ; 10 uses
  %i.em = sext i32 %indvars.iv184 to i64          ; 5 uses
  %i.en = zext i32 %indvars.iv188 to i64          ; 5 uses
  %i.eo = zext i32 %indvars.iv192 to i64          ; 5 uses
  br i1 %min.iters.check474, label %scalar.ph473.preheader, label %vector.scevcheck252

vector.scevcheck252:                              ; preds = %.lr.ph161
  %i.ep = mul i64 %i.dk, %indvar
  %i.eq = getelementptr i8, ptr %3, i64 %i.ep
  %scevgep253 = getelementptr i8, ptr %i.eq, i64 4 ; 2 uses
  %i.er = getelementptr i8, ptr %scevgep253, i64 %mul.result255
  %i.es = icmp ult ptr %i.er, %scevgep253
  %i.et = or i1 %i.es, %mul.overflow256
  br i1 %i.et, label %scalar.ph473.preheader, label %vector.memcheck257

vector.memcheck257:                               ; preds = %vector.scevcheck252
  %bound0293 = icmp ult ptr %scevgep258, %scevgep264
  %bound1294 = icmp ult ptr %scevgep262, %scevgep260
  %found.conflict295 = and i1 %bound0293, %bound1294
  %bound0296 = icmp ult ptr %scevgep258, %scevgep268
  %bound1297 = icmp ult ptr %scevgep266, %scevgep260
  %found.conflict298 = and i1 %bound0296, %bound1297
  %bound0300 = icmp ult ptr %scevgep258, %scevgep272
  %bound1301 = icmp ult ptr %scevgep270, %scevgep260
  %found.conflict302 = and i1 %bound0300, %bound1301
  %bound0304 = icmp ult ptr %scevgep258, %scevgep276
  %bound1305 = icmp ult ptr %scevgep274, %scevgep260
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0308 = icmp ult ptr %scevgep258, %scevgep280
  %bound1309 = icmp ult ptr %scevgep278, %scevgep260
  %found.conflict310 = and i1 %bound0308, %bound1309
  %bound0312 = icmp ult ptr %scevgep258, %scevgep284
  %bound1313 = icmp ult ptr %scevgep282, %scevgep260
  %found.conflict314 = and i1 %bound0312, %bound1313
  %bound0316 = icmp ult ptr %scevgep258, %scevgep288
  %bound1317 = icmp ult ptr %scevgep286, %scevgep260
  %found.conflict318 = and i1 %bound0316, %bound1317
  %bound0332 = icmp ult ptr %scevgep262, %scevgep268
  %bound1333 = icmp ult ptr %scevgep266, %scevgep264
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0336 = icmp ult ptr %scevgep262, %scevgep272
  %bound1337 = icmp ult ptr %scevgep270, %scevgep264
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0340 = icmp ult ptr %scevgep262, %scevgep276
  %bound1341 = icmp ult ptr %scevgep274, %scevgep264
  %found.conflict342 = and i1 %bound0340, %bound1341
  %bound0344 = icmp ult ptr %scevgep262, %scevgep280
  %bound1345 = icmp ult ptr %scevgep278, %scevgep264
  %found.conflict346 = and i1 %bound0344, %bound1345
  %bound0348 = icmp ult ptr %scevgep262, %scevgep284
  %bound1349 = icmp ult ptr %scevgep282, %scevgep264
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0352 = icmp ult ptr %scevgep262, %scevgep288
  %bound1353 = icmp ult ptr %scevgep286, %scevgep264
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0356 = icmp ult ptr %scevgep262, %scevgep289
  %bound1357 = icmp ult ptr %4, %scevgep264
  %found.conflict358 = and i1 %bound0356, %bound1357
  %bound0360 = icmp ult ptr %scevgep262, %scevgep290
  %bound1361 = icmp ult ptr %5, %scevgep264
  %found.conflict362 = and i1 %bound0360, %bound1361
  %bound0364 = icmp ult ptr %scevgep262, %scevgep292
  %bound1365 = icmp ult ptr %scevgep291, %scevgep264
  %found.conflict366 = and i1 %bound0364, %bound1365
  %bound0368 = icmp ult ptr %scevgep266, %scevgep272
  %bound1369 = icmp ult ptr %scevgep270, %scevgep268
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0372 = icmp ult ptr %scevgep266, %scevgep276
  %bound1373 = icmp ult ptr %scevgep274, %scevgep268
  %found.conflict374 = and i1 %bound0372, %bound1373
  %bound0376 = icmp ult ptr %scevgep266, %scevgep280
  %bound1377 = icmp ult ptr %scevgep278, %scevgep268
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0380 = icmp ult ptr %scevgep266, %scevgep284
  %bound1381 = icmp ult ptr %scevgep282, %scevgep268
  %found.conflict382 = and i1 %bound0380, %bound1381
  %bound0384 = icmp ult ptr %scevgep266, %scevgep288
  %bound1385 = icmp ult ptr %scevgep286, %scevgep268
  %found.conflict386 = and i1 %bound0384, %bound1385
  %bound0388 = icmp ult ptr %scevgep266, %scevgep289
  %bound1389 = icmp ult ptr %4, %scevgep268
  %found.conflict390 = and i1 %bound0388, %bound1389
  %bound0392 = icmp ult ptr %scevgep266, %scevgep290
  %bound1393 = icmp ult ptr %5, %scevgep268
  %found.conflict394 = and i1 %bound0392, %bound1393
  %bound0396 = icmp ult ptr %scevgep266, %scevgep292
  %bound1397 = icmp ult ptr %scevgep291, %scevgep268
  %found.conflict398 = and i1 %bound0396, %bound1397
  %bound0400 = icmp ult ptr %scevgep270, %scevgep276
  %bound1401 = icmp ult ptr %scevgep274, %scevgep272
  %found.conflict402 = and i1 %bound0400, %bound1401
  %bound0404 = icmp ult ptr %scevgep270, %scevgep280
  %bound1405 = icmp ult ptr %scevgep278, %scevgep272
  %found.conflict406 = and i1 %bound0404, %bound1405
  %bound0408 = icmp ult ptr %scevgep270, %scevgep284
  %bound1409 = icmp ult ptr %scevgep282, %scevgep272
  %found.conflict410 = and i1 %bound0408, %bound1409
  %bound0412 = icmp ult ptr %scevgep270, %scevgep288
  %bound1413 = icmp ult ptr %scevgep286, %scevgep272
  %found.conflict414 = and i1 %bound0412, %bound1413
  %bound0416 = icmp ult ptr %scevgep270, %scevgep289
  %bound1417 = icmp ult ptr %4, %scevgep272
  %found.conflict418 = and i1 %bound0416, %bound1417
  %bound0420 = icmp ult ptr %scevgep270, %scevgep290
  %bound1421 = icmp ult ptr %5, %scevgep272
  %found.conflict422 = and i1 %bound0420, %bound1421
  %bound0424 = icmp ult ptr %scevgep270, %scevgep292
  %bound1425 = icmp ult ptr %scevgep291, %scevgep272
  %found.conflict426 = and i1 %bound0424, %bound1425
  %bound0428 = icmp ult ptr %scevgep274, %scevgep280
  %bound1429 = icmp ult ptr %scevgep278, %scevgep276
  %found.conflict430 = and i1 %bound0428, %bound1429
  %bound0432 = icmp ult ptr %scevgep274, %scevgep284
  %bound1433 = icmp ult ptr %scevgep282, %scevgep276
  %found.conflict434 = and i1 %bound0432, %bound1433
  %bound0436 = icmp ult ptr %scevgep274, %scevgep288
  %bound1437 = icmp ult ptr %scevgep286, %scevgep276
  %found.conflict438 = and i1 %bound0436, %bound1437
  %bound0440 = icmp ult ptr %scevgep274, %scevgep289
  %bound1441 = icmp ult ptr %4, %scevgep276
  %found.conflict442 = and i1 %bound0440, %bound1441
  %bound0444 = icmp ult ptr %scevgep274, %scevgep290
  %bound1445 = icmp ult ptr %5, %scevgep276
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0448 = icmp ult ptr %scevgep274, %scevgep292
  %bound1449 = icmp ult ptr %scevgep291, %scevgep276
  %found.conflict450 = and i1 %bound0448, %bound1449
  %i.eu = insertelement <4 x ptr> poison, ptr %scevgep278, i64 0
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep282, i64 1
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep286, i64 2
  %i.ex = insertelement <4 x ptr> %i.ew, ptr %4, i64 3
  %i.ey = icmp ult <4 x ptr> %i.ex, %10
  %i.ez = insertelement <4 x ptr> poison, ptr %scevgep280, i64 0
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %scevgep284, i64 1
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep288, i64 2
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep289, i64 3
  %i.fd = icmp ult <4 x ptr> %12, %i.fc
  %i.fe = and <4 x i1> %i.ey, %i.fd
  %i.ff = bitcast <4 x i1> %i.fe to i4
  %i.fg = icmp ne i4 %i.ff, 0
  %op.rdx = or i1 %i.fg, %found.conflict295
  %op.rdx520.a = or i1 %found.conflict298, %found.conflict302
  %op.rdx521.a = or i1 %found.conflict306, %found.conflict310
  %op.rdx522 = or i1 %found.conflict314, %found.conflict318
  %op.rdx525.a = or i1 %found.conflict338, %found.conflict342
  %op.rdx526.a = or i1 %found.conflict346, %found.conflict350
  %op.rdx527.a = or i1 %found.conflict354, %found.conflict358
  %op.rdx528.a = or i1 %found.conflict362, %found.conflict366
  %op.rdx529.a = or i1 %found.conflict370, %found.conflict374
  %op.rdx530.a = or i1 %found.conflict378, %found.conflict382
  %op.rdx531.a = or i1 %found.conflict386, %found.conflict390
  %op.rdx532.a = or i1 %found.conflict394, %found.conflict398
  %op.rdx533.a = or i1 %found.conflict402, %found.conflict406
  %op.rdx534.a = or i1 %found.conflict410, %found.conflict414
  %op.rdx535.a = or i1 %found.conflict418, %found.conflict422
  %op.rdx536.a = or i1 %found.conflict426, %found.conflict430
  %op.rdx537.a = or i1 %found.conflict434, %found.conflict438
  %op.rdx538.a = or i1 %found.conflict442, %found.conflict446
  %op.rdx539.a = or i1 %found.conflict450, %found.conflict470
  %op.rdx540.a = or i1 %op.rdx, %op.rdx520.a
  %op.rdx541 = or i1 %op.rdx521.a, %op.rdx522
  %op.rdx542.reass = or i1 %found.conflict334, %invariant.op
  %op.rdx543.a = or i1 %op.rdx525.a, %op.rdx526.a
  %op.rdx544.a = or i1 %op.rdx527.a, %op.rdx528.a
  %op.rdx545.a = or i1 %op.rdx529.a, %op.rdx530.a
  %op.rdx546.a = or i1 %op.rdx531.a, %op.rdx532.a
  %op.rdx547.a = or i1 %op.rdx533.a, %op.rdx534.a
  %op.rdx548.a = or i1 %op.rdx535.a, %op.rdx536.a
  %op.rdx549.a = or i1 %op.rdx537.a, %op.rdx538.a
  %op.rdx550.a = or i1 %op.rdx540.a, %op.rdx541
  %op.rdx551.a = or i1 %op.rdx542.reass, %op.rdx543.a
  %op.rdx552.a = or i1 %op.rdx544.a, %op.rdx545.a
  %op.rdx553.a = or i1 %op.rdx546.a, %op.rdx547.a
  %op.rdx554.a = or i1 %op.rdx548.a, %op.rdx549.a
  %op.rdx555.a = or i1 %op.rdx550.a, %op.rdx551.a
  %op.rdx556.a = or i1 %op.rdx552.a, %op.rdx553.a
  %op.rdx557.a = or i1 %op.rdx554.a, %op.rdx539.a
  %op.rdx558.a = or i1 %op.rdx555.a, %op.rdx556.a
  %op.rdx559 = or i1 %op.rdx558.a, %op.rdx557.a
  br i1 %op.rdx559, label %scalar.ph473.preheader, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck257
  %i.fh = add i64 %indvars.iv196, %i.ea
  %i.fi = add i64 %i.ea, %i.eo
  %i.fj = add i64 %i.ea, %i.en
  %i.fk = add i64 %i.ea, %i.em
  %i.fl = sub i64 %i.el, %i.eb
  %i.fm = add i64 %i.ea, %i.el
  %invariant.gep561 = getelementptr [4 x i8], ptr %2, i64 %i.el
  %invariant.gep563 = getelementptr [4 x i8], ptr %2, i64 %i.em
  %i.fn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv196
  %invariant.gep565 = getelementptr [4 x i8], ptr %3, i64 %i.eo
  %invariant.gep567 = getelementptr [4 x i8], ptr %3, i64 %i.en
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph475
  %index479 = phi i64 [ 0, %vector.ph475 ], [ %index.next510, %vector.body478 ] ; 3 uses
  %i.fo = shl i64 %index479, 1                    ; 7 uses
  %i.fp = shl i64 %index479, 1
  %i.fq = sub i64 %i.el, %i.fp
  %gep562 = getelementptr [4 x i8], ptr %invariant.gep561, i64 %i.fo
  %i.fr = getelementptr i8, ptr %gep562, i64 4    ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fr, align 4, !alias.scope !1141, !noalias !1144 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec480 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fs = getelementptr [4 x i8], ptr %2, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fs, i64 -36    ; 2 uses
  %wide.vec481 = load <8 x float>, ptr %i.ft, align 4, !alias.scope !1146, !noalias !1144 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec481, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse484 = shufflevector <8 x float> %wide.vec481, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.fu = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %gep564 = getelementptr [4 x i8], ptr %invariant.gep563, i64 %i.fo
  %i.fv = getelementptr i8, ptr %gep564, i64 4
  %wide.vec485 = load <8 x float>, ptr %i.fv, align 4, !alias.scope !1148, !noalias !1144 ; 2 uses
  %strided.vec486.a = shufflevector <8 x float> %wide.vec485, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec487 = shufflevector <8 x float> %wide.vec485, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fw = fmul <4 x float> %i.fu, splat (float 5.000000e-01)
  %i.fx = fsub <4 x float> %strided.vec486.a, %i.fw ; 2 uses
  %i.fy = fadd <4 x float> %strided.vec486.a, %i.fu
  %i.fz = getelementptr [4 x i8], ptr %i.fn, i64 %i.fo
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = fsub <4 x float> %strided.vec480, %reverse484 ; 2 uses
  %i.gc = fmul <4 x float> %i.gb, splat (float 5.000000e-01)
  %i.gd = fsub <4 x float> %strided.vec487, %i.gc ; 2 uses
  %i.ge = fadd <4 x float> %strided.vec487, %i.gb
  %interleaved.vec = shufflevector <4 x float> %i.fy, <4 x float> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ga, align 4
  %wide.vec488 = load <8 x float>, ptr %i.fr, align 4, !alias.scope !1141, !noalias !1144 ; 2 uses
  %strided.vec489.a = shufflevector <8 x float> %wide.vec488, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec490 = shufflevector <8 x float> %wide.vec488, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec491 = load <8 x float>, ptr %i.ft, align 4, !alias.scope !1146, !noalias !1144 ; 2 uses
  %reverse493 = shufflevector <8 x float> %wide.vec491, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse495 = shufflevector <8 x float> %wide.vec491, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.gf = fsub <4 x float> %strided.vec489.a, %reverse493
  %i.gg = fmul <4 x float> %i.gf, splat (float f0x3F5DB3D7) ; 2 uses
  %i.gh = fadd <4 x float> %strided.vec490, %reverse495
  %i.gi = fmul <4 x float> %i.gh, splat (float f0x3F5DB3D7) ; 2 uses
  %i.gj = fsub <4 x float> %i.fx, %i.gi           ; 2 uses
  %i.gk = fadd <4 x float> %i.fx, %i.gi           ; 2 uses
  %i.gl = fadd <4 x float> %i.gd, %i.gg           ; 2 uses
  %i.gm = fsub <4 x float> %i.gd, %i.gg           ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fo ; 2 uses
  %wide.vec496 = load <8 x float>, ptr %i.gn, align 4, !alias.scope !1150, !noalias !1144 ; 2 uses
  %strided.vec497.a = shufflevector <8 x float> %wide.vec496, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec498 = shufflevector <8 x float> %wide.vec496, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.go = fmul <4 x float> %strided.vec497.a, %i.gj
  %i.gp = fmul <4 x float> %i.gl, %strided.vec498
  %i.gq = fsub <4 x float> %i.go, %i.gp
  %gep566 = getelementptr [4 x i8], ptr %invariant.gep565, i64 %i.fo
  %i.gr = getelementptr i8, ptr %gep566, i64 4
  %wide.vec499 = load <8 x float>, ptr %i.gn, align 4, !alias.scope !1150, !noalias !1144 ; 2 uses
  %strided.vec500.a = shufflevector <8 x float> %wide.vec499, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec501 = shufflevector <8 x float> %wide.vec499, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gs = fmul <4 x float> %i.gl, %strided.vec500.a
  %i.gt = fmul <4 x float> %i.gj, %strided.vec501
  %i.gu = fadd <4 x float> %i.gs, %i.gt
  %interleaved.vec502 = shufflevector <4 x float> %i.gq, <4 x float> %i.gu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec502, ptr %i.gr, align 4
  %i.gv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.fo ; 2 uses
  %wide.vec503 = load <8 x float>, ptr %i.gv, align 4, !alias.scope !1152, !noalias !1144 ; 2 uses
  %strided.vec504.a = shufflevector <8 x float> %wide.vec503, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec505 = shufflevector <8 x float> %wide.vec503, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gw = fmul <4 x float> %i.gk, %strided.vec504.a
  %i.gx = fmul <4 x float> %i.gm, %strided.vec505
  %i.gy = fsub <4 x float> %i.gw, %i.gx
  %gep568 = getelementptr [4 x i8], ptr %invariant.gep567, i64 %i.fo
  %i.gz = getelementptr i8, ptr %gep568, i64 4
  %wide.vec506 = load <8 x float>, ptr %i.gv, align 4, !alias.scope !1152, !noalias !1144 ; 2 uses
  %strided.vec507.a = shufflevector <8 x float> %wide.vec506, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec508 = shufflevector <8 x float> %wide.vec506, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ha = fmul <4 x float> %i.gm, %strided.vec507.a
  %i.hb = fmul <4 x float> %i.gk, %strided.vec508
  %i.hc = fadd <4 x float> %i.ha, %i.hb
  %interleaved.vec509 = shufflevector <4 x float> %i.gy, <4 x float> %i.hc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec509, ptr %i.gz, align 4
  %index.next510 = add nuw i64 %index479, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next510, %n.vec477
  br i1 %i.hd, label %middle.block511, label %vector.body478, !llvm.loop !1154

middle.block511:                                  ; preds = %vector.body478
  br i1 %cmp.n512, label %._crit_edge162, label %scalar.ph473.preheader

scalar.ph473.preheader:                           ; preds = %vector.memcheck257, %vector.scevcheck252, %.lr.ph161, %middle.block511
  %indvars.iv198.ph = phi i64 [ %indvars.iv196, %vector.memcheck257 ], [ %indvars.iv196, %vector.scevcheck252 ], [ %indvars.iv196, %.lr.ph161 ], [ %i.fh, %middle.block511 ]
  %indvars.iv194.ph = phi i64 [ %i.eo, %vector.memcheck257 ], [ %i.eo, %vector.scevcheck252 ], [ %i.eo, %.lr.ph161 ], [ %i.fi, %middle.block511 ]
  %indvars.iv190.ph = phi i64 [ %i.en, %vector.memcheck257 ], [ %i.en, %vector.scevcheck252 ], [ %i.en, %.lr.ph161 ], [ %i.fj, %middle.block511 ]
  %indvars.iv186.ph = phi i64 [ %i.em, %vector.memcheck257 ], [ %i.em, %vector.scevcheck252 ], [ %i.em, %.lr.ph161 ], [ %i.fk, %middle.block511 ]
  %indvars.iv182.ph = phi i64 [ %i.el, %vector.memcheck257 ], [ %i.el, %vector.scevcheck252 ], [ %i.el, %.lr.ph161 ], [ %i.fl, %middle.block511 ]
  %indvars.iv180.ph = phi i64 [ %i.el, %vector.memcheck257 ], [ %i.el, %vector.scevcheck252 ], [ %i.el, %.lr.ph161 ], [ %i.fm, %middle.block511 ]
  %indvars.iv176.ph = phi i64 [ 2, %vector.memcheck257 ], [ 2, %vector.scevcheck252 ], [ 2, %.lr.ph161 ], [ %i.ec, %middle.block511 ]
  br label %scalar.ph473

scalar.ph473:                                     ; preds = %scalar.ph473.preheader, %scalar.ph473
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %scalar.ph473 ], [ %indvars.iv198.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %scalar.ph473 ], [ %indvars.iv194.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %scalar.ph473 ], [ %indvars.iv190.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %scalar.ph473 ], [ %indvars.iv186.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph473 ], [ %indvars.iv182.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %scalar.ph473 ], [ %indvars.iv180.ph, %scalar.ph473.preheader ] ; 2 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph473 ], [ %indvars.iv176.ph, %scalar.ph473.preheader ] ; 3 uses
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 2 ; 2 uses
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, -2 ; 2 uses
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, 2 ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 2 ; 2 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %2, i64 %indvars.iv180
  %i.hf = getelementptr i8, ptr %i.he, i64 4      ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4
  %i.hh = getelementptr [4 x i8], ptr %2, i64 %indvars.iv182
  %i.hi = getelementptr i8, ptr %i.hh, i64 -12    ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = fadd float %i.hg, %i.hj                 ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %2, i64 %indvars.iv186
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = load float, ptr %i.hm, align 4          ; 2 uses
  %i.ho = fmul float %i.hk, 5.000000e-01
  %i.hp = fsub float %i.hn, %i.ho                 ; 2 uses
  %i.hq = fadd float %i.hn, %i.hk
  %i.hr = getelementptr [4 x i8], ptr %3, i64 %indvars.iv198
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  store float %i.hq, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next181 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next183 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4
  %i.hx = fsub float %i.hu, %i.hw                 ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next187
  %i.hz = load float, ptr %i.hy, align 4          ; 2 uses
  %i.ia = fmul float %i.hx, 5.000000e-01
  %i.ib = fsub float %i.hz, %i.ia                 ; 2 uses
  %i.ic = fadd float %i.hz, %i.hx
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next199
  store float %i.ic, ptr %i.id, align 4
  %i.ie = load float, ptr %i.hf, align 4
  %i.if = load float, ptr %i.hi, align 4
  %i.ig = fsub float %i.ie, %i.if
end_hunk_4
