Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ov_getlap:bb.a
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
  br i1 %i.bo, label %bb.k, label %.loopexit, !llvm.loop !342

bb.l:                                             ; preds = %bb.j
  br i1 %i.be, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %bb.l
  %i.bp = sub nsw i32 %4, %.056.ph
  %spec.select66 = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bp)
  %i.bq = sext i32 %.056.ph to i64
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
  br i1 %i.cb, label %bb.m, label %.loopexit, !llvm.loop !343

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
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !344

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
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !345

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next133, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge113.split.loopexit, !llvm.loop !346

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
  %i.br = zext nneg i32 %i.bq to i64              ; 5 uses
  %min.iters.check182 = icmp ult i32 %i.bo, 16
  %i.bs = shl nsw i64 %i.bn, 2
  %diff.check180 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check182, i1 true, i1 %diff.check180
  %n.vec184 = and i64 %i.br, 1073741816           ; 2 uses
  %2 = and i64 %i.br, 7
  %cmp.n191 = icmp eq i64 %n.vec184, %i.br
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge124
  %indvars.iv144 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next145, %._crit_edge124 ] ; 2 uses
  %i.bt = load ptr, ptr %i.bk, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv144
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bn ; 2 uses
  br i1 %or.cond, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %.lr.ph123, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %.lr.ph123 ] ; 2 uses
  %i.bx = xor i64 %index186, -1
  %i.by = add i64 %i.bx, %i.br                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -28
  %wide.load187 = load <4 x float>, ptr %i.ca, align 4
  %wide.load188 = load <4 x float>, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.by ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -12
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -28
  store <4 x float> %wide.load187, ptr %i.cd, align 4
  store <4 x float> %wide.load188, ptr %i.ce, align 4
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.cf, label %middle.block190, label %vector.body185, !llvm.loop !347

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %._crit_edge124, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.lr.ph123, %middle.block190
  %indvars.iv141.ph = phi i64 [ %i.br, %.lr.ph123 ], [ %2, %middle.block190 ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph181 ], [ %indvars.iv141.ph, %scalar.ph181.preheader ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next142
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next142
  store float %i.ch, ptr %i.ci, align 4
  %i.cj = icmp sgt i64 %indvars.iv141, 1
  br i1 %i.cj, label %scalar.ph181, label %._crit_edge124, !llvm.loop !348

._crit_edge124:                                   ; preds = %scalar.ph181, %middle.block190
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ck = load i32, ptr %i.bh, align 4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next145, %i.cl
  br i1 %i.cm, label %.lr.ph123, label %._crit_edge127.split.loopexit, !llvm.loop !349

._crit_edge127.split.loopexit:                    ; preds = %._crit_edge124
  %.pre152 = load i32, ptr %i.v, align 8
  br label %._crit_edge127.split

._crit_edge127.split:                             ; preds = %.preheader107.._crit_edge127.split_crit_edge, %._crit_edge127.split.loopexit, %.lr.ph126
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader107.._crit_edge127.split_crit_edge ], [ %i.bm, %._crit_edge127.split.loopexit ], [ %i.bm, %.lr.ph126 ] ; 2 uses
  %i.cn = phi i32 [ %i.bb, %.preheader107.._crit_edge127.split_crit_edge ], [ %.pre152, %._crit_edge127.split.loopexit ], [ %i.bb, %.lr.ph126 ]
  %i.co = add nsw i32 %i.cn, %.pre-phi157
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.cp = icmp eq i64 %i.be, 0
  br i1 %i.cp, label %.preheader108, label %bb.e

.preheader108:                                    ; preds = %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph119, label %._crit_edge120.split

.lr.ph119:                                        ; preds = %.preheader108
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %sext106 = shl i64 %i.p, 32                     ; 2 uses
  %i.cu = ashr exact i64 %sext106, 32
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = icmp sgt i32 %i.q, 0
  br i1 %i.cw, label %.lr.ph116.preheader, label %._crit_edge120.split

.lr.ph116.preheader:                              ; preds = %.lr.ph119
  %i.cx = and i64 %i.p, 2147483647                ; 5 uses
  %i.cy = lshr exact i64 %sext106, 30
  %i.cz = ashr exact i64 %sext, 30
  %i.da = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 1) ; 2 uses
  %min.iters.check168 = icmp samesign ult i64 %i.cx, 8
  %i.db = sub nsw i64 %i.cz, %i.cy
  %diff.check = icmp ugt i64 %i.db, -32
  %or.cond193 = select i1 %min.iters.check168, i1 true, i1 %diff.check
  %n.vec170 = and i64 %i.da, 2147483640           ; 3 uses
  %i.dc = sub nsw i64 %i.cx, %n.vec170
  %cmp.n177 = icmp eq i64 %i.da, %n.vec170
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117
  %indvars.iv138 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next139, %._crit_edge117 ] ; 2 uses
  %i.dd = load ptr, ptr %i.ct, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv138
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.aa
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cv ; 2 uses
  br i1 %or.cond193, label %scalar.ph167.preheader, label %vector.body171

vector.body171:                                   ; preds = %.lr.ph116, %vector.body171
  %index172 = phi i64 [ %index.next175, %vector.body171 ], [ 0, %.lr.ph116 ] ; 2 uses
  %i.di = xor i64 %index172, -1
  %i.dj = add i64 %i.cx, %i.di                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -12
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -28
  %wide.load173 = load <4 x float>, ptr %i.dl, align 4
  %wide.load174 = load <4 x float>, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -12
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -28
  store <4 x float> %wide.load173, ptr %i.do, align 4
  store <4 x float> %wide.load174, ptr %i.dp, align 4
  %index.next175 = add nuw i64 %index172, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.dq, label %middle.block176, label %vector.body171, !llvm.loop !350

middle.block176:                                  ; preds = %vector.body171
  br i1 %cmp.n177, label %._crit_edge117, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph116, %middle.block176
  %indvars.iv135.ph = phi i64 [ %i.cx, %.lr.ph116 ], [ %i.dc, %middle.block176 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph167 ], [ %indvars.iv135.ph, %scalar.ph167.preheader ] ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next136
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next136
  store float %i.ds, ptr %i.dt, align 4
  %i.du = icmp sgt i64 %indvars.iv135, 1
  br i1 %i.du, label %scalar.ph167, label %._crit_edge117, !llvm.loop !351

._crit_edge117:                                   ; preds = %scalar.ph167, %middle.block176
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dv = load i32, ptr %i.cq, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next139, %i.dw
  br i1 %i.dx, label %.lr.ph116, label %._crit_edge120.split.loopexit, !llvm.loop !352

._crit_edge120.split.loopexit:                    ; preds = %._crit_edge117
  %.pre151 = load i32, ptr %i.v, align 8
  br label %._crit_edge120.split

._crit_edge120.split:                             ; preds = %._crit_edge120.split.loopexit, %.lr.ph119, %.preheader108
  %i.dy = phi i32 [ %.pre151, %._crit_edge120.split.loopexit ], [ %i.bb, %.lr.ph119 ], [ %i.bb, %.preheader108 ]
  %i.dz = sub nsw i32 %i.u, %i.q                  ; 2 uses
  %i.ea = add nsw i32 %i.dy, %i.dz
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge127.split, %._crit_edge120.split
  %.sink = phi i32 [ %i.ea, %._crit_edge120.split ], [ %i.co, %._crit_edge127.split ] ; 2 uses
  %.sink163 = phi i32 [ %i.dz, %._crit_edge120.split ], [ %.pre-phi157, %._crit_edge127.split ]
  store i32 %.sink, ptr %i.v, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = add nsw i32 %i.ec, %.sink163
  store i32 %i.ed, ptr %i.eb, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.ee = phi i32 [ %i.bb, %bb.d ], [ %.sink, %.sink.split ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph129, %bb.f
  %indvars.iv147 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next148, %bb.f ] ; 3 uses
  %i.ek = load ptr, ptr %i.ei, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv147
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load i32, ptr %i.v, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eo
  %i.eq = load ptr, ptr %i.ej, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv147
  store ptr %i.ep, ptr %i.er, align 8
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.es = load i32, ptr %i.ef, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next148, %i.et
  br i1 %i.eu, label %bb.f, label %._crit_edge130, !llvm.loop !353

._crit_edge130:                                   ; preds = %bb.f, %.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  store ptr %i.ew, ptr %1, align 8
  %.pre153 = load i32, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge130, %bb.e
  %i.ex = phi i32 [ %.pre153, %._crit_edge130 ], [ %i.ee, %bb.e ]
  %i.ey = add nsw i32 %i.u, %i.n
  %i.ez = sub i32 %i.ey, %i.ex
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.099 = phi i32 [ %i.ez, %bb.g ], [ 0, %bb.a ]
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
end_hunk_0
begin_hunk_1_@decode_packed_entry_number:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 6 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = lshr i32 %i.v, %.fr
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp sgt i32 %i.i, 8
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub nsw i32 8, %.fr
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = or i64 %i.ae, %i.x                      ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.i, 16
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = sub nsw i32 16, %.fr
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = or i64 %i.af, %i.am                     ; 2 uses
  %i.ao = icmp samesign ugt i32 %i.i, 24
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 24, %.fr
  %i.at = shl i32 %i.ar, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = or i64 %i.an, %i.au                     ; 2 uses
  %i.aw = icmp samesign ult i32 %i.i, 33
  %.not33.i = icmp eq i32 %.fr, 0
  %or.cond.i = or i1 %.not33.i, %i.aw
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = sub nsw i32 32, %.fr
  %i.bb = shl i32 %i.az, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = or i64 %i.av, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.bd, %bb.g ], [ %i.x, %bb.c ], [ %i.av, %bb.f ], [ %i.an, %bb.e ], [ %i.af, %bb.d ]
  %i.be = and i64 %.0.i, %i.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %.not = icmp slt i32 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %.fr, %i.bp                 ; 2 uses
  %i.br = sdiv i32 %i.bq, 8
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.t, i64 %i.bs
  store ptr %i.bt, ptr %i.s, align 8
  br label %._crit_edge.sink.split

.thread127:                                       ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = zext nneg i32 %i.b to i64
  %notmask.i63130 = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i63130, -1
  %i.by = add nsw i32 %.fr, %i.b
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bz = lshr i64 %i.bj, 15
  %i.ca = and i64 %i.bz, 32767                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.bj, 32767
  %i.ce = sub nsw i64 %i.cc, %i.cd                ; 2 uses
  %i.cf = zext nneg i32 %i.b to i64
  %notmask.i63 = shl nsw i64 -1, %i.cf
  %i.cg = xor i64 %notmask.i63, -1                ; 2 uses
  %i.ch = add nsw i32 %.fr, %i.b                  ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread127, %bb.j
  %i.ci = phi i32 [ %i.by, %.thread127 ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cj = phi i64 [ %i.bx, %.thread127 ], [ %i.cg, %bb.j ]
  %.154136 = phi i64 [ %i.bv, %.thread127 ], [ %i.ce, %bb.j ] ; 3 uses
  %.157133 = phi i64 [ 0, %.thread127 ], [ %i.ca, %bb.j ] ; 3 uses
  %i.ck = shl nsw i64 %i.j, 3
  %i.cl = sext i32 %i.ci to i64
  %i.cm = add nsw i64 %i.ck, %i.cl
  %i.cn = shl nsw i64 %i.m, 3
  %i.co = icmp sgt i64 %i.cm, %i.cn
  br i1 %i.co, label %oggpack_look.exit69, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cp = phi i32 [ %i.ci, %bb.k ], [ %i.ch, %bb.j ] ; 4 uses
  %i.cq = phi i64 [ %i.cj, %bb.k ], [ %i.cg, %bb.j ]
  %.154134 = phi i64 [ %.154136, %bb.k ], [ %i.ce, %bb.j ]
  %.157131 = phi i64 [ %.157133, %bb.k ], [ %i.ca, %bb.j ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 5 uses
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = lshr i32 %i.cu, %.fr
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = icmp sgt i32 %i.cp, 8
  br i1 %i.cx, label %bb.m, label %oggpack_look.exit69.thread

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 8, %.fr
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = or i64 %i.dd, %i.cw                     ; 2 uses
  %i.df = icmp samesign ugt i32 %i.cp, 16
  br i1 %i.df, label %bb.n, label %oggpack_look.exit69.thread

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 16, %.fr
  %i.dk = shl i32 %i.di, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = or i64 %i.de, %i.dl                     ; 2 uses
  %i.dn = icmp samesign ugt i32 %i.cp, 24
  br i1 %i.dn, label %bb.o, label %oggpack_look.exit69.thread

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i32
  %i.dr = sub nsw i32 24, %.fr
  %i.ds = shl i32 %i.dq, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = or i64 %i.dm, %i.dt                     ; 2 uses
  %i.dv = icmp samesign ult i32 %i.cp, 33
  %.not33.i67 = icmp eq i32 %.fr, 0
  %or.cond.i68 = or i1 %.not33.i67, %i.dv
  br i1 %or.cond.i68, label %oggpack_look.exit69.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = sub nsw i32 32, %.fr
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = or i64 %i.du, %i.eb
  br label %oggpack_look.exit69.thread

oggpack_look.exit69.thread:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i65 = phi i64 [ %i.ec, %bb.p ], [ %i.cw, %bb.l ], [ %i.du, %bb.o ], [ %i.dm, %bb.n ], [ %i.de, %bb.m ]
  %i.ed = and i64 %.0.i65, %i.cq
  br label %bb.y

oggpack_look.exit69:                              ; preds = %bb.k
  %i.ee = icmp sgt i32 %i.b, 1
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %oggpack_look.exit69
  %i.ef = shl i64 %i.j, 3                         ; 4 uses
  %i.eg = shl i64 %i.m, 3                         ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ei = sub nsw i32 8, %.fr                     ; 2 uses
  %i.ej = sub nsw i32 16, %.fr                    ; 2 uses
  %i.ek = sub nsw i32 24, %.fr                    ; 2 uses
  %.not33.i74 = icmp eq i32 %.fr, 0
  %i.el = sub nsw i32 32, %.fr
  %i.em = zext nneg i32 %i.b to i64               ; 8 uses
  br i1 %.not33.i74, label %.lr.ph.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.en = add i64 %i.ef, %i.em
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  %i.ep = tail call i64 @llvm.smin.i64(i64 %i.eg, i64 %i.eo)
  %i.eq = sub i64 %i.eo, %i.ep
  %2 = add nsw i64 %i.em, -2
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 %2)
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.es, 80
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.es, -16                     ; 3 uses
  %i.et = sub i64 %i.em, %n.vec
  %broadcast.splatinsert169 = insertelement <16 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat170 = shufflevector <16 x i64> %broadcast.splatinsert169, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <16 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat172 = shufflevector <16 x i64> %broadcast.splatinsert171, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.eu = add nsw <16 x i64> %broadcast.splat172, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  %.scalar = add i64 %i.ef, -1
  %i.ev = insertelement <16 x i64> poison, i64 %.scalar, i64 0
  %i.ew = shufflevector <16 x i64> %i.ev, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.eu, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ex = add <16 x i64> %i.ew, %vec.ind
  %i.ey = icmp sle <16 x i64> %i.ex, %broadcast.splat170
  %.fr173 = freeze <16 x i1> %i.ey
  %i.ez = select i1 %.not.i, <16 x i1> %.fr173, <16 x i1> splat (i1 true) ; 2 uses
  %i.fa = bitcast <16 x i1> %i.ez to i16
  %.not174 = icmp eq i16 %i.fa, 0
  br i1 %.not174, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader177

.lr.ph.split.us.preheader177:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv116.ph = phi i64 [ %i.em, %.lr.ph.split.us.preheader ], [ %i.et, %middle.block ]
  br label %.lr.ph.split.us

vector.early.exit:                                ; preds = %vector.body
  %i.fc = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ez, i1 false)
  %i.fd = add i64 %index, %i.fc                   ; 2 uses
  %i.fe = sub i64 %i.em, %i.fd
  %.neg = xor i64 %i.fd, -1
  %i.ff = add i64 %.neg, %i.em
  br label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader177, %oggpack_look.exit76.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %oggpack_look.exit76.us ], [ %indvars.iv116.ph, %.lr.ph.split.us.preheader177 ] ; 3 uses
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 3 uses
  %i.fg = add nsw i64 %i.ef, %indvars.iv.next117
  %i.fh = icmp sgt i64 %i.fg, %i.eg
  %or.cond = select i1 %.not.i, i1 %i.fh, i1 false
  br i1 %or.cond, label %oggpack_look.exit76.us, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.us, %vector.early.exit
  %indvars.iv116.lcssa = phi i64 [ %i.fe, %vector.early.exit ], [ %indvars.iv116, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv.next117.lcssa = phi i64 [ %i.ff, %vector.early.exit ], [ %indvars.iv.next117, %.lr.ph.split.us ] ; 2 uses
  %notmask.i70.us.le = shl nsw i64 -1, %indvars.iv.next117.lcssa
  %i.fi = xor i64 %notmask.i70.us.le, -1
  %i.fj = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64                    ; 2 uses
  %i.fm = icmp samesign ugt i64 %indvars.iv116.lcssa, 9
  br i1 %i.fm, label %bb.q, label %._crit_edge.loopexit.thread

bb.q:                                             ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, %i.ei
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = or disjoint i64 %i.fr, %i.fl            ; 2 uses
  %i.ft = icmp samesign ugt i64 %indvars.iv116.lcssa, 17
  br i1 %i.ft, label %bb.r, label %._crit_edge.loopexit.thread

bb.r:                                             ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, %i.ej
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fs, %i.fy            ; 2 uses
  %i.ga = icmp samesign ugt i64 %indvars.iv116.lcssa, 25
  br i1 %i.ga, label %bb.s, label %._crit_edge.loopexit.thread

bb.s:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw i32 %i.gd, %i.ek
  %i.gf = sext i32 %i.ge to i64
  %i.gg = or i64 %i.fz, %i.gf
  br label %._crit_edge.loopexit.thread

._crit_edge.loopexit.thread:                      ; preds = %bb.s, %bb.r, %bb.q, %.loopexit
  %.0.i72.us = phi i64 [ %i.fs, %bb.q ], [ %i.fl, %.loopexit ], [ %i.gg, %bb.s ], [ %i.fz, %bb.r ]
  %i.gh = and i64 %.0.i72.us, %i.fi
  %i.gi = trunc nuw nsw i64 %indvars.iv.next117.lcssa to i32
  br label %bb.y

oggpack_look.exit76.us:                           ; preds = %.lr.ph.split.us
  %i.gj = icmp samesign ugt i64 %indvars.iv116, 2
  br i1 %i.gj, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !491

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph
  %i.gk = sext i32 %.fr to i64
  br label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %oggpack_look.exit76
  %indvars.iv = phi i64 [ %i.em, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %oggpack_look.exit76 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.gl = add nsw i64 %indvars.iv.next, %i.gk     ; 5 uses
  %i.gm = add nsw i64 %i.ef, %i.gl
  %i.gn = icmp sgt i64 %i.gm, %i.eg
  br i1 %i.gn, label %oggpack_look.exit76, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split
  %notmask.i70.le = shl nsw i64 -1, %indvars.iv.next
  %i.go = xor i64 %notmask.i70.le, -1
  %i.gp = load ptr, ptr %i.eh, align 8            ; 5 uses
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = zext i8 %i.gq to i32
  %i.gs = lshr i32 %i.gr, %.fr
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = icmp sgt i64 %i.gl, 8
  br i1 %i.gu, label %bb.u, label %._crit_edge.loopexit109.thread

bb.u:                                             ; preds = %bb.t
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl i32 %i.gx, %i.ei
  %i.gz = sext i32 %i.gy to i64
  %i.ha = or i64 %i.gz, %i.gt                     ; 2 uses
  %i.hb = icmp samesign ugt i64 %i.gl, 16
  br i1 %i.hb, label %bb.v, label %._crit_edge.loopexit109.thread

bb.v:                                             ; preds = %bb.u
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl i32 %i.he, %i.ej
  %i.hg = sext i32 %i.hf to i64
  %i.hh = or i64 %i.ha, %i.hg                     ; 2 uses
  %i.hi = icmp samesign ugt i64 %i.gl, 24
  br i1 %i.hi, label %bb.w, label %._crit_edge.loopexit109.thread

bb.w:                                             ; preds = %bb.v
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = zext i8 %i.hk to i32
  %i.hm = shl i32 %i.hl, %i.ek
  %i.hn = sext i32 %i.hm to i64
  %i.ho = or i64 %i.hh, %i.hn                     ; 2 uses
  %i.hp = icmp samesign ult i64 %i.gl, 33
  br i1 %i.hp, label %._crit_edge.loopexit109.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i32
  %i.ht = shl i32 %i.hs, %i.el
  %i.hu = sext i32 %i.ht to i64
  %i.hv = or i64 %i.ho, %i.hu
  br label %._crit_edge.loopexit109.thread

._crit_edge.loopexit109.thread:                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i72 = phi i64 [ %i.hv, %bb.x ], [ %i.gt, %bb.t ], [ %i.ho, %bb.w ], [ %i.hh, %bb.v ], [ %i.ha, %bb.u ]
  %i.hw = and i64 %.0.i72, %i.go
  %i.hx = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb.y

oggpack_look.exit76:                              ; preds = %.lr.ph.split.split
  %i.hy = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.hy, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !492

bb.y:                                             ; preds = %oggpack_look.exit69.thread, %._crit_edge.loopexit109.thread, %._crit_edge.loopexit.thread
  %.049.lcssa149 = phi i32 [ %i.b, %oggpack_look.exit69.thread ], [ %i.hx, %._crit_edge.loopexit109.thread ], [ %i.gi, %._crit_edge.loopexit.thread ] ; 2 uses
  %.052.lcssa148 = phi i64 [ %i.ed, %oggpack_look.exit69.thread ], [ %i.hw, %._crit_edge.loopexit109.thread ], [ %i.gh, %._crit_edge.loopexit.thread ]
  %.154135140147 = phi i64 [ %.154134, %oggpack_look.exit69.thread ], [ %.154136, %._crit_edge.loopexit109.thread ], [ %.154136, %._crit_edge.loopexit.thread ] ; 2 uses
  %.157132141146 = phi i64 [ %.157131, %oggpack_look.exit69.thread ], [ %.157133, %._crit_edge.loopexit109.thread ], [ %.157133, %._crit_edge.loopexit.thread ] ; 3 uses
  %i.hz = trunc i64 %.052.lcssa148 to i32
  %rev10.i = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.hz)
  %i.ia = sub nsw i64 %.154135140147, %.157132141146 ; 2 uses
  %i.ib = icmp sgt i64 %i.ia, 1
  br i1 %i.ib, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = load ptr, ptr %i.ic, align 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph106, %bb.z
  %i.ie = phi i64 [ %i.ia, %.lr.ph106 ], [ %i.io, %bb.z ]
  %.255104 = phi i64 [ %.154135140147, %.lr.ph106 ], [ %i.in, %bb.z ]
  %.258103 = phi i64 [ %.157132141146, %.lr.ph106 ], [ %i.il, %bb.z ] ; 2 uses
  %i.if = lshr i64 %i.ie, 1                       ; 3 uses
  %i.ig = getelementptr [4 x i8], ptr %i.id, i64 %.258103
  %i.ih = getelementptr [4 x i8], ptr %i.ig, i64 %i.if
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = icmp ugt i32 %i.ii, %rev10.i            ; 2 uses
  %i.ik = select i1 %i.ij, i64 0, i64 %i.if
  %i.il = add nuw nsw i64 %i.ik, %.258103         ; 3 uses
end_hunk_1
begin_hunk_2_@dradbg:bb.a
  %i.aht = add i64 %indvars.iv1143, %i.ahi
  %invariant.op1860 = add nuw i64 %indvars.iv1143, 1
  br label %vector.body1722

vector.body1722:                                  ; preds = %vector.body1722, %vector.ph1720
  %index1723 = phi i64 [ 0, %vector.ph1720 ], [ %index.next1737, %vector.body1722 ] ; 2 uses
  %i.ahu = shl i64 %index1723, 1                  ; 2 uses
  %gep1859 = getelementptr [4 x i8], ptr %invariant.gep1858, i64 %i.ahu
  %i.ahv = getelementptr i8, ptr %gep1859, i64 4  ; 2 uses
  %wide.vec1724 = load <8 x float>, ptr %i.ahv, align 4, !alias.scope !1268 ; 2 uses
  %strided.vec1725 = shufflevector <8 x float> %wide.vec1724, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1726 = shufflevector <8 x float> %wide.vec1724, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %.reass1861 = add nuw i64 %i.ahu, %invariant.op1860 ; 2 uses
  %i.ahw = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1861 ; 2 uses
  %wide.vec1727 = load <8 x float>, ptr %i.ahw, align 4, !alias.scope !1269 ; 2 uses
  %strided.vec1728 = shufflevector <8 x float> %wide.vec1727, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1729 = shufflevector <8 x float> %wide.vec1727, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahx = fmul <4 x float> %strided.vec1725, %strided.vec1728
  %i.ahy = fmul <4 x float> %strided.vec1726, %strided.vec1729
  %i.ahz = fsub <4 x float> %i.ahx, %i.ahy
  %i.aia = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1861
  %wide.vec1730 = load <8 x float>, ptr %i.ahv, align 4, !alias.scope !1268 ; 2 uses
  %strided.vec1731 = shufflevector <8 x float> %wide.vec1730, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1732 = shufflevector <8 x float> %wide.vec1730, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1733 = load <8 x float>, ptr %i.ahw, align 4, !alias.scope !1269 ; 2 uses
  %strided.vec1734 = shufflevector <8 x float> %wide.vec1733, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1735 = shufflevector <8 x float> %wide.vec1733, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aib = fmul <4 x float> %strided.vec1731, %strided.vec1735
  %i.aic = fmul <4 x float> %strided.vec1732, %strided.vec1734
  %i.aid = fadd <4 x float> %i.aib, %i.aic
  %interleaved.vec1736 = shufflevector <4 x float> %i.ahz, <4 x float> %i.aid, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1736, ptr %i.aia, align 4, !alias.scope !1270, !noalias !1271
  %index.next1737 = add nuw i64 %index1723, 4     ; 2 uses
  %i.aie = icmp eq i64 %index.next1737, %n.vec1721
  br i1 %i.aie, label %middle.block1738, label %vector.body1722, !llvm.loop !1237

middle.block1738:                                 ; preds = %vector.body1722
  br i1 %cmp.n1739, label %._crit_edge851, label %scalar.ph1718.preheader

scalar.ph1718.preheader:                          ; preds = %.preheader, %middle.block1738
  %indvars.iv1149.ph = phi i64 [ %i.ahs, %middle.block1738 ], [ %i.ahr, %.preheader ]
  %indvars.iv1145.ph = phi i64 [ %i.aht, %middle.block1738 ], [ %indvars.iv1143, %.preheader ]
  %.7633848.ph = phi i32 [ %i.ahl, %middle.block1738 ], [ 2, %.preheader ]
  br label %scalar.ph1718

scalar.ph1718:                                    ; preds = %scalar.ph1718.preheader, %scalar.ph1718
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %scalar.ph1718 ], [ %indvars.iv1149.ph, %scalar.ph1718.preheader ] ; 2 uses
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %scalar.ph1718 ], [ %indvars.iv1145.ph, %scalar.ph1718.preheader ] ; 2 uses
  %.7633848 = phi i32 [ %i.ajb, %scalar.ph1718 ], [ %.7633848.ph, %scalar.ph1718.preheader ]
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, 2 ; 2 uses
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 2 ; 3 uses
  %i.aif = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1149
  %i.aig = getelementptr i8, ptr %i.aif, i64 4    ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4
  %i.aii = add nuw nsw i64 %indvars.iv1145, 1     ; 2 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aii ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = fmul float %i.aih, %i.aik
  %i.aim = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1150 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4
  %i.aio = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1146 ; 2 uses
  %i.aip = load float, ptr %i.aio, align 4
  %i.aiq = fmul float %i.ain, %i.aip
  %i.air = fsub float %i.ail, %i.aiq
  %i.ais = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aii
  store float %i.air, ptr %i.ais, align 4
  %i.ait = load float, ptr %i.aig, align 4
  %i.aiu = load float, ptr %i.aio, align 4
  %i.aiv = fmul float %i.ait, %i.aiu
  %i.aiw = load float, ptr %i.aim, align 4
  %i.aix = load float, ptr %i.aij, align 4
  %i.aiy = fmul float %i.aiw, %i.aix
  %i.aiz = fadd float %i.aiv, %i.aiy
  %i.aja = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1146
  store float %i.aiz, ptr %i.aja, align 4
  %i.ajb = add nuw nsw i32 %.7633848, 2           ; 2 uses
  %i.ajc = icmp slt i32 %i.ajb, %0
  br i1 %i.ajc, label %scalar.ph1718, label %._crit_edge851, !llvm.loop !1238

._crit_edge851:                                   ; preds = %scalar.ph1718, %middle.block1738
  %indvars.iv.next1144 = add i64 %indvars.iv1143, %i.agt
  %i.ajd = add nuw nsw i32 %.10614852, 1          ; 2 uses
  %exitcond1155.not = icmp eq i32 %i.ajd, %2
  br i1 %exitcond1155.not, label %._crit_edge854, label %.preheader, !llvm.loop !1239

._crit_edge854:                                   ; preds = %._crit_edge851
  %i.aje = add nuw nsw i32 %.10625855, 1          ; 2 uses
  %indvars.iv.next1142 = add i32 %indvars.iv1141, %i.d
  %indvars.iv.next1148 = add i32 %indvars.iv1147, %0
  %exitcond1156.not = icmp eq i32 %i.aje, %1
  br i1 %exitcond1156.not, label %.critedge, label %.preheader.lr.ph, !llvm.loop !1240

.critedge:                                        ; preds = %._crit_edge840, %._crit_edge854, %.lr.ph859, %.lr.ph845, %bb.h, %bb.j, %._crit_edge786.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @icomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bitreverse.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { nofree nounwind }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #62 = { nounwind }
attributes #63 = { nounwind willreturn memory(read) }
attributes #64 = { cold }
attributes #65 = { cold nounwind }
attributes #66 = { nounwind allocsize(1) }
attributes #67 = { cold noreturn nounwind }
attributes #68 = { noreturn nounwind }
attributes #69 = { nounwind allocsize(0) }
attributes #70 = { nounwind willreturn memory(none) }
attributes #71 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{!8, !42}
!9 = distinct !{!9, !42}
!10 = distinct !{!10, !42}
!11 = distinct !{!11, !42}
!12 = distinct !{!12, !42}
!13 = distinct !{!13, !42}
!14 = distinct !{!14, !42}
!15 = distinct !{!15, !42}
!16 = distinct !{!16, !42}
!17 = distinct !{null}
!18 = distinct !{!18, !42}
!19 = distinct !{!19, !42}
!20 = distinct !{!20, !42}
!21 = distinct !{!21, !42}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !42}
!24 = distinct !{!24, !42}
!25 = distinct !{!25, !42}
!26 = distinct !{!26, !42}
!27 = distinct !{!27, !42}
!28 = distinct !{!28, !42}
!29 = distinct !{!29, !42}
!30 = distinct !{!30, !42}
!31 = distinct !{!31, !42}
!32 = distinct !{!32, !42}
!33 = distinct !{!33, !42}
!34 = distinct !{!34, !42}
!35 = distinct !{!35, !42}
!36 = distinct !{null}
!37 = distinct !{!37, !42}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!"llvm.loop.unswitch.partial.disable"}
!48 = !{ptr @oggpackB_write, ptr @oggpack_write}
!49 = distinct !{null}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{ptr @vorbis_analysis}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !42, !44}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !42, !44}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !42, !44}
!102 = distinct !{!102, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !42, !44}
!106 = distinct !{!106, !42}
end_hunk_2
