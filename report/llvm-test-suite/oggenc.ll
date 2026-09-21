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
