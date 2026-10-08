Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsintrp?download=true
inline.NumInlined: 120
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@TrilinearInterpFloat:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21 ; 2 uses
  %i.ar = mul i32 %i.aq, %i.aj                    ; 5 uses
  %i.as = fcmp ult float %i.k, 1.000000e+00
  %i.at = select i1 %i.as, i32 %i.aq, i32 0
  %i.au = add i32 %i.ar, %i.at                    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = extractelement <2 x i32> %i.af, i64 1
  %i.ay = mul i32 %i.aw, %i.ax                    ; 3 uses
  %i.az = extractelement <2 x float> %i.v, i64 1
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  %i.bb = select i1 %i.ba, i32 %i.aw, i32 0
  %i.bc = add i32 %i.ay, %i.bb                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21 ; 2 uses
  %i.bf = extractelement <2 x i32> %i.af, i64 0
  %i.bg = mul i32 %i.be, %i.bf                    ; 3 uses
  %i.bh = extractelement <2 x float> %i.v, i64 0
  %i.bi = fcmp ult float %i.bh, 1.000000e+00
  %spec.select = select i1 %i.bi, i32 %i.be, i32 0
  %i.bj = add i32 %i.bg, %spec.select             ; 2 uses
  %i.bk = add nsw i32 %i.ay, %i.bg                ; 2 uses
  %i.bl = add i32 %i.ar, %i.bk
  %i.bm = add i32 %i.au, %i.bk
  %i.bn = add i32 %i.bc, %i.bg                    ; 2 uses
  %i.bo = add i32 %i.bn, %i.ar
  %i.bp = add i32 %i.au, %i.bn
  %i.bq = add i32 %i.ay, %i.bj                    ; 2 uses
  %i.br = add i32 %i.ar, %i.bq
  %i.bs = add i32 %i.au, %i.bq
  %i.bt = add nsw i32 %i.bc, %i.bj                ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.ar
  %i.bv = add nsw i32 %i.au, %i.bt
  %i.bw = sext i32 %i.bl to i64                   ; 2 uses
  %i.bx = sext i32 %i.bm to i64                   ; 2 uses
  %i.by = sext i32 %i.bo to i64                   ; 2 uses
  %i.bz = sext i32 %i.bp to i64                   ; 2 uses
  %i.ca = sext i32 %i.br to i64                   ; 2 uses
  %i.cb = sext i32 %i.bs to i64                   ; 2 uses
  %i.cc = sext i32 %i.bu to i64                   ; 2 uses
  %i.cd = sext i32 %i.bv to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ao, i64 %i.bw ; 2 uses
  %invariant.gep112 = getelementptr [4 x i8], ptr %i.ao, i64 %i.bx ; 2 uses
  %invariant.gep114 = getelementptr [4 x i8], ptr %i.ao, i64 %i.by ; 2 uses
  %invariant.gep116 = getelementptr [4 x i8], ptr %i.ao, i64 %i.bz ; 2 uses
  %invariant.gep118 = getelementptr [4 x i8], ptr %i.ao, i64 %i.ca ; 2 uses
  %invariant.gep120 = getelementptr [4 x i8], ptr %i.ao, i64 %i.cb ; 2 uses
  %invariant.gep122 = getelementptr [4 x i8], ptr %i.ao, i64 %i.cc ; 2 uses
  %invariant.gep124 = getelementptr [4 x i8], ptr %i.ao, i64 %i.cd ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ce = ptrtoaddr ptr %i.ao to i64              ; 4 uses
  %i.cf = sub i64 %i.a, %i.ce                     ; 2 uses
  %i.cg = shl nsw i64 %i.cd, 2
  %i.ch = sub i64 %i.cg, %i.cf
  %diff.check = icmp ugt i64 %i.ch, -16
  %i.ci = shl nsw i64 %i.cc, 2
  %i.cj = sub i64 %i.ci, %i.cf
  %diff.check126 = icmp ugt i64 %i.cj, -16
  %conflict.rdx = or i1 %diff.check, %diff.check126
  %i.ck = sub i64 %i.a, %i.ce                     ; 2 uses
  %i.cl = shl nsw i64 %i.cb, 2
  %i.cm = sub i64 %i.cl, %i.ck
  %diff.check127 = icmp ugt i64 %i.cm, -16
  %conflict.rdx128 = or i1 %conflict.rdx, %diff.check127
  %i.cn = shl nsw i64 %i.ca, 2
  %i.co = sub i64 %i.cn, %i.ck
  %diff.check129 = icmp ugt i64 %i.co, -16
  %conflict.rdx130 = or i1 %conflict.rdx128, %diff.check129
  %i.cp = sub i64 %i.a, %i.ce                     ; 2 uses
  %i.cq = shl nsw i64 %i.bz, 2
  %i.cr = sub i64 %i.cq, %i.cp
  %diff.check131 = icmp ugt i64 %i.cr, -16
  %conflict.rdx132 = or i1 %conflict.rdx130, %diff.check131
  %i.cs = shl nsw i64 %i.by, 2
  %i.ct = sub i64 %i.cs, %i.cp
  %diff.check133 = icmp ugt i64 %i.ct, -16
  %conflict.rdx134 = or i1 %conflict.rdx132, %diff.check133
  %i.cu = sub i64 %i.a, %i.ce                     ; 2 uses
  %i.cv = shl nsw i64 %i.bx, 2
  %i.cw = sub i64 %i.cv, %i.cu
  %diff.check135 = icmp ugt i64 %i.cw, -16
  %conflict.rdx136 = or i1 %conflict.rdx134, %diff.check135
  %i.cx = shl nsw i64 %i.bw, 2
  %i.cy = sub i64 %i.cx, %i.cu
  %diff.check137 = icmp ugt i64 %i.cy, -16
  %conflict.rdx138 = or i1 %conflict.rdx136, %diff.check137
  br i1 %conflict.rdx138, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat140 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cz, align 4, !tbaa !25 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %invariant.gep112, i64 %index
  %wide.load143 = load <4 x float>, ptr %i.da, align 4, !tbaa !25 ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %invariant.gep114, i64 %index
  %wide.load144 = load <4 x float>, ptr %i.db, align 4, !tbaa !25 ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep116, i64 %index
  %wide.load145 = load <4 x float>, ptr %i.dc, align 4, !tbaa !25 ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %invariant.gep118, i64 %index
  %wide.load146 = load <4 x float>, ptr %i.dd, align 4, !tbaa !25
  %i.de = getelementptr [4 x i8], ptr %invariant.gep120, i64 %index
  %wide.load147 = load <4 x float>, ptr %i.de, align 4, !tbaa !25
  %i.df = getelementptr [4 x i8], ptr %invariant.gep122, i64 %index
  %wide.load148 = load <4 x float>, ptr %i.df, align 4, !tbaa !25
  %i.dg = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index
  %wide.load149 = load <4 x float>, ptr %i.dg, align 4, !tbaa !25
  %i.dh = fsub <4 x float> %wide.load146, %wide.load
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 2 uses
  %i.dj = fsub <4 x float> %wide.load147, %wide.load143
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat, <4 x float> %wide.load143) ; 2 uses
  %i.dl = fsub <4 x float> %wide.load148, %wide.load144
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %broadcast.splat, <4 x float> %wide.load144)
  %i.dn = fsub <4 x float> %wide.load149, %wide.load145
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %broadcast.splat, <4 x float> %wide.load145)
  %i.dp = fsub <4 x float> %i.dm, %i.di
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %broadcast.splat140, <4 x float> %i.di) ; 2 uses
  %i.dr = fsub <4 x float> %i.do, %i.dk
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %broadcast.splat140, <4 x float> %i.dk)
  %i.dt = fsub <4 x float> %i.ds, %i.dq
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %broadcast.splat142, <4 x float> %i.dq)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.du, ptr %i.dv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dx = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dz = load float, ptr %gep, align 4, !tbaa !25
  %gep113 = getelementptr [4 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.ea = load float, ptr %gep113, align 4, !tbaa !25
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.eb = load float, ptr %gep115, align 4, !tbaa !25
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.ec = load float, ptr %gep117, align 4, !tbaa !25
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.ed = load float, ptr %gep119, align 4, !tbaa !25
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.ee = load float, ptr %gep121, align 4, !tbaa !25
  %gep123 = getelementptr [4 x i8], ptr %invariant.gep122, i64 %indvars.iv
  %i.ef = load float, ptr %gep123, align 4, !tbaa !25
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %indvars.iv
  %i.eg = load float, ptr %gep125, align 4, !tbaa !25
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ed, i64 1
  %i.ej = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.dz, i64 1 ; 2 uses
  %i.el = fsub <2 x float> %i.ei, %i.ek
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dx, <2 x float> %i.ek) ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.ef, i64 1
  %i.ep = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.eb, i64 1 ; 2 uses
  %i.er = fsub <2 x float> %i.eo, %i.eq
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.dx, <2 x float> %i.eq)
  %i.et = fsub <2 x float> %i.es, %i.em
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.dy, <2 x float> %i.em) ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = extractelement <2 x float> %i.eu, i64 1 ; 2 uses
  %i.ex = fsub float %i.ev, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.al, float %i.ew)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ey, ptr %i.ez, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TrilinearInterp16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = mul i32 %i.g, %i.e                       ; 2 uses
  %i.i = add nsw i32 %i.h, 32767
  %i.j = sdiv i32 %i.i, 65535
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %i.l = and i32 %i.k, 65535                      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = mul i32 %i.q, %i.o                       ; 2 uses
  %i.s = add nsw i32 %i.r, 32767
  %i.t = sdiv i32 %i.s, 65535
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = and i32 %i.u, 65535                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21
  %i.ab = mul i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = add nsw i32 %i.ab, 32767
  %i.ad = sdiv i32 %i.ac, 65535
  %i.ae = add nsw i32 %i.ad, %i.ab                ; 2 uses
  %i.af = and i32 %i.ae, 65535                    ; 2 uses
  %i.ag = icmp sgt i32 %i.c, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 9 uses
  %i.aj = ashr i32 %i.ae, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21 ; 2 uses
  %i.am = mul i32 %i.aj, %i.al                    ; 5 uses
  %i.an = icmp eq i16 %i.x, -1
  %i.ao = select i1 %i.an, i32 0, i32 %i.al
  %i.ap = add i32 %i.am, %i.ao                    ; 4 uses
  %i.aq = ashr i32 %i.u, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = mul i32 %i.aq, %i.as                    ; 3 uses
  %i.au = icmp eq i16 %i.n, -1
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  %i.aw = add i32 %i.at, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21 ; 2 uses
  %i.az = ashr i32 %i.k, 16
  %i.ba = mul i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i16 %i.d, -1
  %spec.select = select i1 %i.bb, i32 0, i32 %i.ay
  %i.bc = add i32 %i.ba, %spec.select             ; 2 uses
  %i.bd = add nsw i32 %i.at, %i.ba                ; 2 uses
  %i.be = add i32 %i.am, %i.bd
  %i.bf = add i32 %i.ap, %i.bd
  %i.bg = add i32 %i.aw, %i.ba                    ; 2 uses
  %i.bh = add i32 %i.bg, %i.am
  %i.bi = add i32 %i.ap, %i.bg
  %i.bj = add i32 %i.at, %i.bc                    ; 2 uses
  %i.bk = add i32 %i.am, %i.bj
  %i.bl = add i32 %i.ap, %i.bj
  %i.bm = add i32 %i.aw, %i.bc                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.am
  %i.bo = add i32 %i.ap, %i.bm
  %i.bp = sext i32 %i.be to i64                   ; 2 uses
  %i.bq = sext i32 %i.bf to i64                   ; 2 uses
  %i.br = sext i32 %i.bh to i64                   ; 2 uses
  %i.bs = sext i32 %i.bi to i64                   ; 2 uses
  %i.bt = sext i32 %i.bk to i64                   ; 2 uses
  %i.bu = sext i32 %i.bl to i64                   ; 2 uses
  %i.bv = sext i32 %i.bn to i64                   ; 2 uses
  %i.bw = sext i32 %i.bo to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ai, i64 %i.bp ; 2 uses
  %invariant.gep104 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bq ; 2 uses
  %invariant.gep106 = getelementptr [2 x i8], ptr %i.ai, i64 %i.br ; 2 uses
  %invariant.gep108 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bs ; 2 uses
  %invariant.gep110 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bt ; 2 uses
  %invariant.gep112 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bu ; 2 uses
  %invariant.gep114 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bv ; 2 uses
  %invariant.gep116 = getelementptr [2 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bx = ptrtoaddr ptr %i.ai to i64              ; 4 uses
  %3 = sub i64 %i.a, %i.bx                        ; 2 uses
  %i.by = shl nsw i64 %i.bw, 1
  %i.bz = sub i64 %i.by, %3
  %diff.check = icmp ugt i64 %i.bz, -16
  %i.ca = shl nsw i64 %i.bv, 1
  %i.cb = sub i64 %i.ca, %3
  %diff.check118 = icmp ugt i64 %i.cb, -16
  %conflict.rdx = or i1 %diff.check, %diff.check118
  %4 = sub i64 %i.a, %i.bx                        ; 2 uses
  %i.cc = shl nsw i64 %i.bu, 1
  %i.cd = sub i64 %i.cc, %4
  %diff.check119 = icmp ugt i64 %i.cd, -16
  %conflict.rdx120 = or i1 %conflict.rdx, %diff.check119
  %i.ce = shl nsw i64 %i.bt, 1
  %i.cf = sub i64 %i.ce, %4
  %diff.check121 = icmp ugt i64 %i.cf, -16
  %conflict.rdx122 = or i1 %conflict.rdx120, %diff.check121
  %5 = sub i64 %i.a, %i.bx                        ; 2 uses
  %i.cg = shl nsw i64 %i.bs, 1
  %i.ch = sub i64 %i.cg, %5
  %diff.check123 = icmp ugt i64 %i.ch, -16
  %conflict.rdx124 = or i1 %conflict.rdx122, %diff.check123
  %i.ci = shl nsw i64 %i.br, 1
  %i.cj = sub i64 %i.ci, %5
  %diff.check125 = icmp ugt i64 %i.cj, -16
  %conflict.rdx126 = or i1 %conflict.rdx124, %diff.check125
  %6 = sub i64 %i.a, %i.bx                        ; 2 uses
  %i.ck = shl nsw i64 %i.bq, 1
  %i.cl = sub i64 %i.ck, %6
  %diff.check127 = icmp ugt i64 %i.cl, -16
  %conflict.rdx128 = or i1 %conflict.rdx126, %diff.check127
  %i.cm = shl nsw i64 %i.bp, 1
  %i.cn = sub i64 %i.cm, %6
  %diff.check129 = icmp ugt i64 %i.cn, -16
  %conflict.rdx130 = or i1 %conflict.rdx128, %diff.check129
  br i1 %conflict.rdx130, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert131 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat132 = shufflevector <8 x i32> %broadcast.splatinsert131, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert133 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat134 = shufflevector <8 x i32> %broadcast.splatinsert133, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.co = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.co, align 2, !tbaa !27 ; 2 uses
  %i.cp = zext <8 x i16> %wide.load to <8 x i32>
  %i.cq = getelementptr [2 x i8], ptr %invariant.gep104, i64 %index
  %wide.load135 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !27 ; 2 uses
  %i.cr = zext <8 x i16> %wide.load135 to <8 x i32>
  %i.cs = getelementptr [2 x i8], ptr %invariant.gep106, i64 %index
  %wide.load136 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !27 ; 2 uses
  %i.ct = zext <8 x i16> %wide.load136 to <8 x i32>
  %i.cu = getelementptr [2 x i8], ptr %invariant.gep108, i64 %index
  %wide.load137 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load137 to <8 x i32>
  %i.cw = getelementptr [2 x i8], ptr %invariant.gep110, i64 %index
  %wide.load138 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load138 to <8 x i32>
  %i.cy = getelementptr [2 x i8], ptr %invariant.gep112, i64 %index
  %wide.load139 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !27
  %i.cz = zext <8 x i16> %wide.load139 to <8 x i32>
  %i.da = getelementptr [2 x i8], ptr %invariant.gep114, i64 %index
  %wide.load140 = load <8 x i16>, ptr %i.da, align 2, !tbaa !27
  %i.db = zext <8 x i16> %wide.load140 to <8 x i32>
  %i.dc = getelementptr [2 x i8], ptr %invariant.gep116, i64 %index
  %wide.load141 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !27
  %i.dd = zext <8 x i16> %wide.load141 to <8 x i32>
  %i.de = sub nsw <8 x i32> %i.cx, %i.cp
  %i.df = mul nsw <8 x i32> %i.de, %broadcast.splat
  %i.dg = add nsw <8 x i32> %i.df, splat (i32 32768)
  %i.dh = lshr <8 x i32> %i.dg, splat (i32 16)
  %i.di = trunc nuw <8 x i32> %i.dh to <8 x i16>
  %i.dj = add <8 x i16> %wide.load, %i.di         ; 2 uses
  %i.dk = zext <8 x i16> %i.dj to <8 x i32>
  %i.dl = sub nsw <8 x i32> %i.cz, %i.cr
  %i.dm = mul nsw <8 x i32> %i.dl, %broadcast.splat
  %i.dn = add nsw <8 x i32> %i.dm, splat (i32 32768)
  %i.do = lshr <8 x i32> %i.dn, splat (i32 16)
  %i.dp = trunc nuw <8 x i32> %i.do to <8 x i16>
  %i.dq = add <8 x i16> %wide.load135, %i.dp      ; 2 uses
  %i.dr = zext <8 x i16> %i.dq to <8 x i32>
  %i.ds = sub nsw <8 x i32> %i.db, %i.ct
  %i.dt = mul nsw <8 x i32> %i.ds, %broadcast.splat
  %i.du = add nsw <8 x i32> %i.dt, splat (i32 32768)
  %i.dv = lshr <8 x i32> %i.du, splat (i32 16)
  %i.dw = trunc nuw <8 x i32> %i.dv to <8 x i16>
  %i.dx = add <8 x i16> %wide.load136, %i.dw
  %i.dy = zext <8 x i16> %i.dx to <8 x i32>
  %i.dz = sub nsw <8 x i32> %i.dd, %i.cv
  %i.ea = mul nsw <8 x i32> %i.dz, %broadcast.splat
  %i.eb = add nsw <8 x i32> %i.ea, splat (i32 32768)
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 16)
  %i.ed = trunc nuw <8 x i32> %i.ec to <8 x i16>
  %i.ee = add <8 x i16> %wide.load137, %i.ed
  %i.ef = zext <8 x i16> %i.ee to <8 x i32>
  %i.eg = sub nsw <8 x i32> %i.dy, %i.dk
  %i.eh = mul nsw <8 x i32> %i.eg, %broadcast.splat132
  %i.ei = add nsw <8 x i32> %i.eh, splat (i32 32768)
  %i.ej = lshr <8 x i32> %i.ei, splat (i32 16)
  %i.ek = trunc nuw <8 x i32> %i.ej to <8 x i16>
  %i.el = add <8 x i16> %i.dj, %i.ek              ; 2 uses
  %i.em = zext <8 x i16> %i.el to <8 x i32>
  %i.en = sub nsw <8 x i32> %i.ef, %i.dr
  %i.eo = mul nsw <8 x i32> %i.en, %broadcast.splat132
  %i.ep = add nsw <8 x i32> %i.eo, splat (i32 32768)
  %i.eq = lshr <8 x i32> %i.ep, splat (i32 16)
  %i.er = trunc nuw <8 x i32> %i.eq to <8 x i16>
  %i.es = add <8 x i16> %i.dq, %i.er
  %i.et = zext <8 x i16> %i.es to <8 x i32>
  %i.eu = sub nsw <8 x i32> %i.et, %i.em
  %i.ev = mul nsw <8 x i32> %i.eu, %broadcast.splat134
  %i.ew = add nsw <8 x i32> %i.ev, splat (i32 32768)
  %i.ex = lshr <8 x i32> %i.ew, splat (i32 16)
  %i.ey = trunc nuw <8 x i32> %i.ex to <8 x i16>
  %i.ez = add <8 x i16> %i.el, %i.ey
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fc = load i16, ptr %gep, align 2, !tbaa !27  ; 2 uses
  %i.fd = zext i16 %i.fc to i32
  %gep105 = getelementptr [2 x i8], ptr %invariant.gep104, i64 %indvars.iv
  %i.fe = load i16, ptr %gep105, align 2, !tbaa !27 ; 2 uses
  %i.ff = zext i16 %i.fe to i32
  %gep107 = getelementptr [2 x i8], ptr %invariant.gep106, i64 %indvars.iv
  %i.fg = load i16, ptr %gep107, align 2, !tbaa !27 ; 2 uses
  %i.fh = zext i16 %i.fg to i32
  %gep109 = getelementptr [2 x i8], ptr %invariant.gep108, i64 %indvars.iv
  %i.fi = load i16, ptr %gep109, align 2, !tbaa !27 ; 2 uses
  %i.fj = zext i16 %i.fi to i32
  %gep111 = getelementptr [2 x i8], ptr %invariant.gep110, i64 %indvars.iv
  %i.fk = load i16, ptr %gep111, align 2, !tbaa !27
  %i.fl = zext i16 %i.fk to i32
  %gep113 = getelementptr [2 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.fm = load i16, ptr %gep113, align 2, !tbaa !27
  %i.fn = zext i16 %i.fm to i32
  %gep115 = getelementptr [2 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.fo = load i16, ptr %gep115, align 2, !tbaa !27
  %i.fp = zext i16 %i.fo to i32
  %gep117 = getelementptr [2 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.fq = load i16, ptr %gep117, align 2, !tbaa !27
  %i.fr = zext i16 %i.fq to i32
  %i.fs = sub nsw i32 %i.fl, %i.fd
  %i.ft = mul nsw i32 %i.fs, %i.l
  %i.fu = add nsw i32 %i.ft, 32768
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc nuw i32 %i.fv to i16
  %i.fx = add i16 %i.fc, %i.fw                    ; 2 uses
  %i.fy = zext i16 %i.fx to i32
  %i.fz = sub nsw i32 %i.fn, %i.ff
  %i.ga = mul nsw i32 %i.fz, %i.l
  %i.gb = add nsw i32 %i.ga, 32768
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = add i16 %i.fe, %i.gd                    ; 2 uses
  %i.gf = zext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.fp, %i.fh
  %i.gh = mul nsw i32 %i.gg, %i.l
  %i.gi = add nsw i32 %i.gh, 32768
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc nuw i32 %i.gj to i16
  %i.gl = add i16 %i.fg, %i.gk
  %i.gm = zext i16 %i.gl to i32
  %i.gn = sub nsw i32 %i.fr, %i.fj
  %i.go = mul nsw i32 %i.gn, %i.l
  %i.gp = add nsw i32 %i.go, 32768
  %i.gq = lshr i32 %i.gp, 16
  %i.gr = trunc nuw i32 %i.gq to i16
  %i.gs = add i16 %i.fi, %i.gr
  %i.gt = zext i16 %i.gs to i32
  %i.gu = sub nsw i32 %i.gm, %i.fy
  %i.gv = mul nsw i32 %i.gu, %i.v
  %i.gw = add nsw i32 %i.gv, 32768
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = add i16 %i.fx, %i.gy                    ; 2 uses
  %i.ha = zext i16 %i.gz to i32
  %i.hb = sub nsw i32 %i.gt, %i.gf
  %i.hc = mul nsw i32 %i.hb, %i.v
  %i.hd = add nsw i32 %i.hc, 32768
  %i.he = lshr i32 %i.hd, 16
  %i.hf = trunc nuw i32 %i.he to i16
  %i.hg = add i16 %i.ge, %i.hf
  %i.hh = zext i16 %i.hg to i32
  %i.hi = sub nsw i32 %i.hh, %i.ha
  %i.hj = mul nsw i32 %i.hi, %i.af
  %i.hk = add nsw i32 %i.hj, 32768
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = trunc nuw i32 %i.hl to i16
  %i.hn = add i16 %i.gz, %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TetrahedralInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 26 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17   ; 15 uses
  %i.g = load float, ptr %0, align 4, !tbaa !25   ; 4 uses
  %i.h = fcmp olt float %i.g, f0x3089705F
  %i.i = fcmp uno float %i.g, 0.000000e+00
  %or.cond.i = or i1 %i.h, %i.i
  %i.j = fcmp ogt float %i.g, 1.000000e+00
end_hunk_0
begin_hunk_1_@TetrahedralInterp16:bb.a
  br label %scalar.ph450

scalar.ph450:                                     ; preds = %scalar.ph450.preheader, %scalar.ph450
  %.5275 = phi i32 [ %i.su, %scalar.ph450 ], [ %.5275.ph, %scalar.ph450.preheader ]
  %.5218274 = phi ptr [ %i.sc, %scalar.ph450 ], [ %.5218274.ph, %scalar.ph450.preheader ] ; 5 uses
  %.5224273 = phi ptr [ %i.st, %scalar.ph450 ], [ %.5224273.ph, %scalar.ph450.preheader ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qb
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !27
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qc
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !27
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qd
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !27
  %i.sc = getelementptr inbounds nuw i8, ptr %.5218274, i64 2
  %i.sd = load i16, ptr %.5218274, align 2, !tbaa !27 ; 2 uses
  %i.se = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 -32767>, i16 %i.rx, i64 0
  %i.sf = insertelement <4 x i16> %i.se, i16 %i.rz, i64 1
  %i.sg = insertelement <4 x i16> %i.sf, i16 %i.sb, i64 2 ; 2 uses
  %i.sh = zext <4 x i16> %i.sg to <4 x i32>
  %i.si = shufflevector <4 x i16> %i.sg, <4 x i16> <i16 poison, i16 poison, i16 poison, i16 0>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %i.sj = insertelement <4 x i16> %i.si, i16 %i.sd, i64 2
  %i.sk = zext <4 x i16> %i.sj to <4 x i32>
  %i.sl = sub nsw <4 x i32> %i.sh, %i.sk
  %i.sm = mul nsw <4 x i32> %i.sl, %i.af
  %i.sn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sm) ; 2 uses
  %i.so = ashr i32 %i.sn, 16
  %i.sp = add nsw i32 %i.so, %i.sn
  %i.sq = lshr i32 %i.sp, 16
  %i.sr = trunc nuw i32 %i.sq to i16
  %i.ss = add i16 %i.sd, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.5224273, i64 2
  store i16 %i.ss, ptr %.5224273, align 2, !tbaa !27
  %i.su = add i32 %.5275, -1                      ; 2 uses
  %.not235 = icmp eq i32 %i.su, 0
  br i1 %.not235, label %.loopexit, label %scalar.ph450, !llvm.loop !87

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph322, %scalar.ph354, %scalar.ph386, %scalar.ph418, %scalar.ph450, %middle.block, %middle.block341, %middle.block373, %middle.block405, %middle.block437, %middle.block469, %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval4InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 4 uses
  %i.f = fcmp olt float %i.e, f0x3089705F
  %i.g = fcmp uno float %i.e, 0.000000e+00
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = fcmp ogt float %i.e, 1.000000e+00
  %i.i = select i1 %i.h, float 1.000000e+00, float %i.e
  %i.j = select i1 %or.cond.i, float 0.000000e+00, float %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = uitofp i32 %i.l to float
  %i.n = fmul float %i.j, %i.m                    ; 2 uses
  %i.o = fpext float %i.n to double
  %i.p = fadd double %i.o, f0x4238000000000000
  %i.q = bitcast double %i.p to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.q to i32
  %i.r = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.s = sitofp i32 %i.r to float
  %i.t = fsub float %i.n, %i.s                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.w = mul i32 %i.r, %i.v                       ; 2 uses
  %i.x = fcmp ult float %i.j, 1.000000e+00
  %spec.select = select i1 %i.x, i32 %i.v, i32 0
  %i.y = add i32 %i.w, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.ab = sext i32 %i.w to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @TetrahedralInterpFloat(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.af = sext i32 %i.y to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.af
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !19
  call void @TetrahedralInterpFloat(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ai to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x float>, ptr %i.aj, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load35 = load <4 x float>, ptr %i.al, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.am, align 16, !tbaa !25
  %i.an = fsub <4 x float> %wide.load35, %wide.load
  %i.ao = fsub <4 x float> %wide.load36, %wide.load34
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x float> %i.ap, ptr %i.ar, align 4, !tbaa !25
  store <4 x float> %i.aq, ptr %i.as, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !25
  %i.ay = fsub float %i.ax, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.t, float %i.av)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.az, ptr %i.ba, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval4Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 7 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = mul i32 %i.f, %i.d                       ; 2 uses
  %i.h = add nsw i32 %i.g, 32767
  %i.i = sdiv i32 %i.h, 65535
  %i.j = add nsw i32 %i.i, %i.g                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.m = load i16, ptr %i.k, align 2, !tbaa !27
  %i.n = load <3 x i16>, ptr %i.k, align 2, !tbaa !27 ; 3 uses
  %i.o = shufflevector <3 x i16> %i.n, <3 x i16> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.p = zext <4 x i16> %i.o to <4 x i32>
  %i.q = load <3 x i32>, ptr %i.l, align 4, !tbaa !21
  %i.r = shufflevector <3 x i32> %i.q, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.s = mul <4 x i32> %i.r, %i.p                 ; 2 uses
  %i.t = add nsw <4 x i32> %i.s, splat (i32 32767)
  %i.u = sdiv <4 x i32> %i.t, splat (i32 65535)
  %i.v = add nsw <4 x i32> %i.u, %i.s             ; 4 uses
  %i.w = ashr i32 %i.j, 16
  %i.x = extractelement <4 x i32> %i.v, i64 1
  %i.y = ashr i32 %i.x, 16
  %i.z = extractelement <4 x i32> %i.v, i64 3
  %i.aa = ashr i32 %i.z, 16
  %i.ab = extractelement <4 x i32> %i.v, i64 0
  %i.ac = ashr i32 %i.ab, 16
  %i.ad = and i32 %i.j, 65535                     ; 2 uses
  %i.ae = and <4 x i32> %i.v, splat (i32 65535)   ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = mul i32 %i.ah, %i.w                     ; 2 uses
  %i.aj = icmp eq i16 %i.c, -1
  %spec.select = select i1 %i.aj, i32 0, i32 %i.ah
  %i.ak = add i32 %i.ai, %spec.select
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.an = mul i32 %i.am, %i.y                     ; 7 uses
  %i.ao = icmp eq i16 %i.m, -1
  %i.ap = select i1 %i.ao, i32 0, i32 %i.am
  %i.aq = add i32 %i.an, %i.ap                    ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = mul i32 %i.as, %i.aa                    ; 7 uses
  %i.au = extractelement <3 x i16> %i.n, i64 1
  %i.av = icmp eq i16 %i.au, -1
  %i.aw = select i1 %i.av, i32 0, i32 %i.as
  %i.ax = add i32 %i.at, %i.aw                    ; 6 uses
  %i.ay = load i32, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.az = mul i32 %i.ac, %i.ay                    ; 9 uses
  %i.ba = extractelement <3 x i16> %i.n, i64 2
  %i.bb = icmp eq i16 %i.ba, -1
  %i.bc = select i1 %i.bb, i32 0, i32 %i.ay
  %i.bd = add i32 %i.az, %i.bc                    ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = sext i32 %i.ai to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bg ; 24 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17 ; 6 uses
  %.not486 = icmp eq i32 %i.bj, 0
  br i1 %.not486, label %._crit_edge485, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bk = add i32 %i.at, %i.an                    ; 2 uses
  %i.bl = add i32 %i.az, %i.bk                    ; 4 uses
  %i.bm = extractelement <4 x i32> %i.ae, i64 1   ; 8 uses
  %i.bn = extractelement <4 x i32> %i.ae, i64 3   ; 9 uses
  %.not461 = icmp samesign ult i32 %i.bm, %i.bn   ; 2 uses
  %i.bo = extractelement <4 x i32> %i.ae, i64 0   ; 8 uses
  %.not462 = icmp samesign ult i32 %i.bn, %i.bo   ; 2 uses
  %or.cond = select i1 %.not461, i1 true, i1 %.not462
  %i.bp = add i32 %i.aq, %i.at                    ; 2 uses
  %i.bq = add i32 %i.bp, %i.az                    ; 4 uses
  %i.br = add i32 %i.ax, %i.aq                    ; 2 uses
  %i.bs = add i32 %i.br, %i.az                    ; 4 uses
  %i.bt = add i32 %i.bd, %i.br                    ; 8 uses
  %.not463 = icmp samesign ult i32 %i.bm, %i.bo   ; 2 uses
  %.not464 = icmp samesign ult i32 %i.bo, %i.bn   ; 2 uses
  %or.cond469 = select i1 %.not463, i1 true, i1 %.not464
  %i.bu = add nsw i32 %i.bd, %i.bp
  %.not465 = icmp samesign ult i32 %i.bo, %i.bm   ; 2 uses
  %brmerge = or i1 %.not461, %.not465
  %i.bv = add i32 %i.bd, %i.aq
  %i.bw = add i32 %i.bv, %i.at
  %i.bx = add nsw i32 %i.bd, %i.bk                ; 2 uses
  %.not466 = icmp samesign ult i32 %i.bn, %i.bm   ; 2 uses
  %brmerge470 = or i1 %.not466, %.not463
  %i.by = add nsw i32 %i.ax, %i.an                ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.az                ; 2 uses
  %brmerge471 = or i1 %.not462, %.not465
  %i.ca = add nsw i32 %i.bd, %i.by
  %brmerge472 = or i1 %.not466, %.not464
  %i.cb = add i32 %i.bd, %i.ax
  %i.cc = add i32 %i.cb, %i.an
  %wide.trip.count494 = zext i32 %i.bj to i64     ; 7 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.bj, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader532, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.preheader
  %i.cd = add nsw i64 %wide.trip.count494, -1     ; 2 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 4 uses
  %i.cf = xor i32 %i.bl, -1
  %i.cg = icmp ult i32 %i.cf, %i.ce
  %i.ch = xor i32 %i.bq, -1
  %i.ci = icmp ult i32 %i.ch, %i.ce
  %i.cj = icmp ugt i64 %i.cd, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  %i.cl = xor i32 %i.bs, -1
  %i.cm = icmp ult i32 %i.cl, %i.ce
  %i.cn = xor i32 %i.bt, -1
  %i.co = icmp ult i32 %i.cn, %i.ce
  %i.cp = or i1 %i.cg, %i.ck
  %i.cq = or i1 %i.cm, %i.cp
  %i.cr = or i1 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.split.preheader532, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count494, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat511 = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat513 = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = trunc nuw i64 %index to i32             ; 4 uses
  %i.ct = add i32 %i.bl, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cu
  %wide.load = load <8 x i16>, ptr %i.cv, align 2, !tbaa !27 ; 2 uses
  %i.cw = zext <8 x i16> %wide.load to <8 x i32>
  %i.cx = add i32 %i.bq, %i.cs
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cy
  %wide.load514 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !27
  %i.da = zext <8 x i16> %wide.load514 to <8 x i32> ; 2 uses
  %i.db = sub nsw <8 x i32> %i.da, %i.cw
  %i.dc = add i32 %i.bs, %i.cs
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.dd
  %wide.load515 = load <8 x i16>, ptr %i.de, align 2, !tbaa !27
  %i.df = zext <8 x i16> %wide.load515 to <8 x i32> ; 2 uses
  %i.dg = sub nsw <8 x i32> %i.df, %i.da
  %i.dh = add i32 %i.bt, %i.cs
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.di
  %wide.load516 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !27
  %i.dk = zext <8 x i16> %wide.load516 to <8 x i32>
  %i.dl = sub nsw <8 x i32> %i.dk, %i.df
  %i.dm = mul nsw <8 x i32> %i.db, %broadcast.splat
  %i.dn = mul nsw <8 x i32> %i.dg, %broadcast.splat511
  %i.do = add nsw <8 x i32> %i.dn, %i.dm
  %i.dp = mul nsw <8 x i32> %i.dl, %broadcast.splat513
  %i.dq = add nsw <8 x i32> %i.do, %i.dp          ; 2 uses
  %i.dr = add nsw <8 x i32> %i.dq, splat (i32 32767)
  %i.ds = sdiv <8 x i32> %i.dr, splat (i32 65535)
  %i.dt = add <8 x i32> %i.dq, splat (i32 32768)
  %i.du = add <8 x i32> %i.dt, %i.ds
  %i.dv = lshr <8 x i32> %i.du, splat (i32 16)
  %i.dw = trunc nuw <8 x i32> %i.dv to <8 x i16>
  %i.dx = add <8 x i16> %wide.load, %i.dw
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  store <8 x i16> %i.dx, ptr %i.dy, align 16, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count494
  br i1 %cmp.n, label %.lr.ph482, label %.lr.ph.split.preheader532

.lr.ph.split.preheader532:                        ; preds = %vector.scevcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.ea = trunc nuw i64 %indvars.iv491 to i32     ; 16 uses
  %i.eb = add i32 %i.bl, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !27 ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 5 uses
  br i1 %or.cond469, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.eg = add i32 %i.bq, %i.ea
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !27
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = sub nsw i32 %i.ek, %i.ef
  %i.em = add i32 %i.bt, %i.ea
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !27
  %i.eq = zext i16 %i.ep to i32
  %i.er = add i32 %i.bu, %i.ea
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !27
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = sub nsw i32 %i.eq, %i.ev
  %i.ex = sub nsw i32 %i.ev, %i.ek
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph.split.us
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ey = add i32 %i.bw, %i.ea
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !27
  %i.fc = zext i16 %i.fb to i32                   ; 2 uses
  %i.fd = add i32 %i.bx, %i.ea
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !27
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = sub nsw i32 %i.fc, %i.fh
  %i.fj = add i32 %i.bt, %i.ea
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !27
  %i.fn = zext i16 %i.fm to i32
  %i.fo = sub nsw i32 %i.fn, %i.fc
  %i.fp = sub nsw i32 %i.fh, %i.ef
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  br i1 %brmerge470, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = add i32 %i.bs, %i.ea
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !27
  %i.fu = zext i16 %i.ft to i32                   ; 2 uses
  %i.fv = add i32 %i.bz, %i.ea
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !27
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = sub nsw i32 %i.fu, %i.fz
  %i.gb = sub nsw i32 %i.fz, %i.ef
  %i.gc = add i32 %i.bt, %i.ea
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !27
  %i.gg = zext i16 %i.gf to i32
  %i.gh = sub nsw i32 %i.gg, %i.fu
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br i1 %brmerge471, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gi = add i32 %i.bt, %i.ea
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !27
  %i.gm = zext i16 %i.gl to i32
  %i.gn = add i32 %i.ca, %i.ea
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !27
  %i.gr = zext i16 %i.gq to i32                   ; 2 uses
  %i.gs = sub nsw i32 %i.gm, %i.gr
  %i.gt = add i32 %i.bz, %i.ea
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !27
  %i.gx = zext i16 %i.gw to i32                   ; 2 uses
  %i.gy = sub nsw i32 %i.gx, %i.ef
  %i.gz = sub nsw i32 %i.gr, %i.gx
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %brmerge472, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ha = add i32 %i.bt, %i.ea
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !27
  %i.he = zext i16 %i.hd to i32
  %i.hf = add i32 %i.cc, %i.ea
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !27
  %i.hj = zext i16 %i.hi to i32                   ; 2 uses
  %i.hk = sub nsw i32 %i.he, %i.hj
  %i.hl = add i32 %i.bx, %i.ea
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !27
  %i.hp = zext i16 %i.ho to i32                   ; 2 uses
  %i.hq = sub nsw i32 %i.hj, %i.hp
  %i.hr = sub nsw i32 %i.hp, %i.ef
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0447.us = phi i32 [ 0, %bb.i ], [ %i.el, %bb.b ], [ %i.fi, %bb.d ], [ %i.ga, %bb.f ], [ %i.gs, %bb.h ], [ %i.hk, %bb.j ]
  %.0445.us = phi i32 [ 0, %bb.i ], [ %i.ew, %bb.b ], [ %i.fo, %bb.d ], [ %i.gb, %bb.f ], [ %i.gy, %bb.h ], [ %i.hq, %bb.j ]
  %.0443.us = phi i32 [ 0, %bb.i ], [ %i.ex, %bb.b ], [ %i.fp, %bb.d ], [ %i.gh, %bb.f ], [ %i.gz, %bb.h ], [ %i.hr, %bb.j ]
  %i.hs = mul nsw i32 %.0447.us, %i.bm
  %i.ht = mul nsw i32 %.0445.us, %i.bn
  %i.hu = add nsw i32 %i.ht, %i.hs
  %i.hv = mul nsw i32 %.0443.us, %i.bo
end_hunk_1
