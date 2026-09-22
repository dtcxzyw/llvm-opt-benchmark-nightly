Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsintrp?download=true
inline.NumInlined: 120
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BilinearInterp16:bb.a
  %i.h = mul i32 %i.g, %i.e                       ; 2 uses
  %i.i = add nsw i32 %i.h, 32767
  %i.j = sdiv i32 %i.i, 65535
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %i.l = and i32 %i.k, 65535                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = mul i32 %i.q, %i.o                       ; 2 uses
  %i.s = add nsw i32 %i.r, 32767
  %i.t = sdiv i32 %i.s, 65535
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = and i32 %i.u, 65535                      ; 2 uses
  %i.w = icmp sgt i32 %i.c, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 5 uses
  %i.z = ashr i32 %i.u, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %i.ac = mul i32 %i.z, %i.ab                     ; 3 uses
  %i.ad = icmp eq i16 %i.n, -1
  %i.ae = select i1 %i.ad, i32 0, i32 %i.ab
  %i.af = add i32 %i.ac, %i.ae                    ; 2 uses
  %i.ag = ashr i32 %i.k, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = mul i32 %i.ag, %i.ai                    ; 3 uses
  %i.ak = icmp eq i16 %i.d, -1
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai
  %i.al = add i32 %i.aj, %spec.select             ; 2 uses
  %i.am = add nsw i32 %i.ac, %i.aj
  %i.an = add nsw i32 %i.af, %i.aj
  %i.ao = add nsw i32 %i.ac, %i.al
  %i.ap = add nsw i32 %i.af, %i.al
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = sext i32 %i.ao to i64                   ; 2 uses
  %i.at = sext i32 %i.ap to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.y, i64 %i.aq ; 2 uses
  %invariant.gep55 = getelementptr [2 x i8], ptr %i.y, i64 %i.ar ; 2 uses
  %invariant.gep57 = getelementptr [2 x i8], ptr %i.y, i64 %i.as ; 2 uses
  %invariant.gep59 = getelementptr [2 x i8], ptr %i.y, i64 %i.at ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = ptrtoaddr ptr %i.y to i64               ; 2 uses
  %i.av = sub i64 %i.a, %i.au                     ; 2 uses
  %i.aw = shl nsw i64 %i.at, 1
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -16
  %i.ay = shl nsw i64 %i.as, 1
  %i.az = sub i64 %i.ay, %i.av
  %diff.check61 = icmp ugt i64 %i.az, -16
  %conflict.rdx = or i1 %diff.check, %diff.check61
  %i.ba = sub i64 %i.a, %i.au                     ; 2 uses
  %i.bb = shl nsw i64 %i.ar, 1
  %i.bc = sub i64 %i.bb, %i.ba
  %diff.check62 = icmp ugt i64 %i.bc, -16
  %conflict.rdx63 = or i1 %conflict.rdx, %diff.check62
  %i.bd = shl nsw i64 %i.aq, 1
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check64 = icmp ugt i64 %i.be, -16
  %conflict.rdx65 = or i1 %conflict.rdx63, %diff.check64
  br i1 %conflict.rdx65, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert66 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bf = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bf, align 2, !tbaa !27 ; 2 uses
  %i.bg = zext <8 x i16> %wide.load to <8 x i32>
  %i.bh = getelementptr [2 x i8], ptr %invariant.gep55, i64 %index
  %wide.load68 = load <8 x i16>, ptr %i.bh, align 2, !tbaa !27 ; 2 uses
  %i.bi = zext <8 x i16> %wide.load68 to <8 x i32>
  %i.bj = getelementptr [2 x i8], ptr %invariant.gep57, i64 %index
  %wide.load69 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !27
  %i.bk = zext <8 x i16> %wide.load69 to <8 x i32>
  %i.bl = getelementptr [2 x i8], ptr %invariant.gep59, i64 %index
  %wide.load70 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !27
  %i.bm = zext <8 x i16> %wide.load70 to <8 x i32>
  %i.bn = sub nsw <8 x i32> %i.bk, %i.bg
  %i.bo = mul nsw <8 x i32> %i.bn, %broadcast.splat
  %i.bp = add nsw <8 x i32> %i.bo, splat (i32 32768)
  %i.bq = lshr <8 x i32> %i.bp, splat (i32 16)
  %i.br = trunc nuw <8 x i32> %i.bq to <8 x i16>
  %i.bs = add <8 x i16> %wide.load, %i.br         ; 2 uses
  %i.bt = zext <8 x i16> %i.bs to <8 x i32>
  %i.bu = sub nsw <8 x i32> %i.bm, %i.bi
  %i.bv = mul nsw <8 x i32> %i.bu, %broadcast.splat
  %i.bw = add nsw <8 x i32> %i.bv, splat (i32 32768)
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 16)
  %i.by = trunc nuw <8 x i32> %i.bx to <8 x i16>
  %i.bz = add <8 x i16> %wide.load68, %i.by
  %i.ca = zext <8 x i16> %i.bz to <8 x i32>
  %i.cb = sub nsw <8 x i32> %i.ca, %i.bt
  %i.cc = mul nsw <8 x i32> %i.cb, %broadcast.splat67
  %i.cd = add nsw <8 x i32> %i.cc, splat (i32 32768)
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 16)
  %i.cf = trunc nuw <8 x i32> %i.ce to <8 x i16>
  %i.cg = add <8 x i16> %i.bs, %i.cf
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.cg, ptr %i.ch, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cj = load i16, ptr %gep, align 2, !tbaa !27  ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %gep56 = getelementptr [2 x i8], ptr %invariant.gep55, i64 %indvars.iv
  %i.cl = load i16, ptr %gep56, align 2, !tbaa !27 ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %gep58 = getelementptr [2 x i8], ptr %invariant.gep57, i64 %indvars.iv
  %i.cn = load i16, ptr %gep58, align 2, !tbaa !27
  %i.co = zext i16 %i.cn to i32
  %gep60 = getelementptr [2 x i8], ptr %invariant.gep59, i64 %indvars.iv
  %i.cp = load i16, ptr %gep60, align 2, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.co, %i.ck
  %i.cs = mul nsw i32 %i.cr, %i.l
  %i.ct = add nsw i32 %i.cs, 32768
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  %i.cw = add i16 %i.cj, %i.cv                    ; 2 uses
  %i.cx = zext i16 %i.cw to i32
  %i.cy = sub nsw i32 %i.cq, %i.cm
  %i.cz = mul nsw i32 %i.cy, %i.l
  %i.da = add nsw i32 %i.cz, 32768
  %i.db = lshr i32 %i.da, 16
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = add i16 %i.cl, %i.dc
  %i.de = zext i16 %i.dd to i32
  %i.df = sub nsw i32 %i.de, %i.cx
  %i.dg = mul nsw i32 %i.df, %i.v
  %i.dh = add nsw i32 %i.dg, 32768
  %i.di = lshr i32 %i.dh, 16
  %i.dj = trunc nuw i32 %i.di to i16
  %i.dk = add i16 %i.cw, %i.dj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TrilinearInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !25 ; 4 uses
  %i.g = fcmp olt float %i.f, f0x3089705F
  %i.h = fcmp uno float %i.f, 0.000000e+00
  %or.cond.i106 = or i1 %i.g, %i.h
  %i.i = fcmp ogt float %i.f, 1.000000e+00
  %i.j = select i1 %i.i, float 1.000000e+00, float %i.f
  %i.k = select i1 %or.cond.i106, float 0.000000e+00, float %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = uitofp i32 %i.m to float
  %i.o = fmul float %i.k, %i.n                    ; 2 uses
  %i.p = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 4 uses
  %i.q = fcmp olt <2 x float> %i.p, splat (float f0x3089705F)
  %i.r = fcmp uno <2 x float> %i.p, zeroinitializer
  %i.s = or <2 x i1> %i.q, %i.r
  %i.t = fcmp ogt <2 x float> %i.p, splat (float 1.000000e+00)
  %i.u = select <2 x i1> %i.t, <2 x float> splat (float 1.000000e+00), <2 x float> %i.p
  %i.v = select <2 x i1> %i.s, <2 x float> zeroinitializer, <2 x float> %i.u ; 3 uses
  %i.w = load <2 x i32>, ptr %i.d, align 8, !tbaa !21
  %i.x = uitofp <2 x i32> %i.w to <2 x float>
  %i.y = fmul <2 x float> %i.v, %i.x              ; 2 uses
  %3 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.y)
  %i.z = fptosi <2 x float> %3 to <2 x i32>       ; 3 uses
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>
  %i.ab = fsub <2 x float> %i.y, %i.aa            ; 4 uses
  %i.ac = tail call float @llvm.floor.f32(float %i.o)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fsub float %i.o, %i.ae                  ; 2 uses
  %i.ag = icmp sgt i32 %i.c, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %i.al = mul i32 %i.ak, %i.ad                    ; 5 uses
  %i.am = fcmp ult float %i.k, 1.000000e+00
  %i.an = select i1 %i.am, i32 %i.ak, i32 0
  %i.ao = add i32 %i.al, %i.an                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.ar = extractelement <2 x i32> %i.z, i64 1
  %i.as = mul i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = extractelement <2 x float> %i.v, i64 1
  %i.au = fcmp ult float %i.at, 1.000000e+00
  %i.av = select i1 %i.au, i32 %i.aq, i32 0
  %i.aw = add i32 %i.as, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21 ; 2 uses
  %i.az = extractelement <2 x i32> %i.z, i64 0
  %i.ba = mul i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = extractelement <2 x float> %i.v, i64 0
  %i.bc = fcmp ult float %i.bb, 1.000000e+00
  %spec.select = select i1 %i.bc, i32 %i.ay, i32 0
  %i.bd = add i32 %i.ba, %spec.select             ; 2 uses
  %i.be = add nsw i32 %i.as, %i.ba                ; 2 uses
  %i.bf = add i32 %i.al, %i.be
  %i.bg = add i32 %i.ao, %i.be
  %i.bh = add i32 %i.aw, %i.ba                    ; 2 uses
  %i.bi = add i32 %i.bh, %i.al
  %i.bj = add i32 %i.ao, %i.bh
  %i.bk = add i32 %i.as, %i.bd                    ; 2 uses
  %i.bl = add i32 %i.al, %i.bk
  %i.bm = add i32 %i.ao, %i.bk
  %i.bn = add nsw i32 %i.aw, %i.bd                ; 2 uses
  %i.bo = add nsw i32 %i.bn, %i.al
  %i.bp = add nsw i32 %i.ao, %i.bn
  %i.bq = sext i32 %i.bf to i64                   ; 2 uses
  %i.br = sext i32 %i.bg to i64                   ; 2 uses
  %i.bs = sext i32 %i.bi to i64                   ; 2 uses
  %i.bt = sext i32 %i.bj to i64                   ; 2 uses
  %i.bu = sext i32 %i.bl to i64                   ; 2 uses
  %i.bv = sext i32 %i.bm to i64                   ; 2 uses
  %i.bw = sext i32 %i.bo to i64                   ; 2 uses
  %i.bx = sext i32 %i.bp to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.bq ; 2 uses
  %invariant.gep112 = getelementptr [4 x i8], ptr %i.ai, i64 %i.br ; 2 uses
  %invariant.gep114 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bs ; 2 uses
  %invariant.gep116 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bt ; 2 uses
  %invariant.gep118 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bu ; 2 uses
  %invariant.gep120 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bv ; 2 uses
  %invariant.gep122 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %invariant.gep124 = getelementptr [4 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.by = ptrtoaddr ptr %i.ai to i64              ; 4 uses
  %i.bz = sub i64 %i.a, %i.by                     ; 2 uses
  %i.ca = shl nsw i64 %i.bx, 2
  %i.cb = sub i64 %i.ca, %i.bz
  %diff.check = icmp ugt i64 %i.cb, -16
  %i.cc = shl nsw i64 %i.bw, 2
  %i.cd = sub i64 %i.cc, %i.bz
  %diff.check126 = icmp ugt i64 %i.cd, -16
  %conflict.rdx = or i1 %diff.check, %diff.check126
  %i.ce = sub i64 %i.a, %i.by                     ; 2 uses
  %i.cf = shl nsw i64 %i.bv, 2
  %i.cg = sub i64 %i.cf, %i.ce
  %diff.check127 = icmp ugt i64 %i.cg, -16
  %conflict.rdx128 = or i1 %conflict.rdx, %diff.check127
  %i.ch = shl nsw i64 %i.bu, 2
  %i.ci = sub i64 %i.ch, %i.ce
  %diff.check129 = icmp ugt i64 %i.ci, -16
  %conflict.rdx130 = or i1 %conflict.rdx128, %diff.check129
  %i.cj = sub i64 %i.a, %i.by                     ; 2 uses
  %i.ck = shl nsw i64 %i.bt, 2
  %i.cl = sub i64 %i.ck, %i.cj
  %diff.check131 = icmp ugt i64 %i.cl, -16
  %conflict.rdx132 = or i1 %conflict.rdx130, %diff.check131
  %i.cm = shl nsw i64 %i.bs, 2
  %i.cn = sub i64 %i.cm, %i.cj
  %diff.check133 = icmp ugt i64 %i.cn, -16
  %conflict.rdx134 = or i1 %conflict.rdx132, %diff.check133
  %i.co = sub i64 %i.a, %i.by                     ; 2 uses
  %i.cp = shl nsw i64 %i.br, 2
  %i.cq = sub i64 %i.cp, %i.co
  %diff.check135 = icmp ugt i64 %i.cq, -16
  %conflict.rdx136 = or i1 %conflict.rdx134, %diff.check135
  %i.cr = shl nsw i64 %i.bq, 2
  %i.cs = sub i64 %i.cr, %i.co
  %diff.check137 = icmp ugt i64 %i.cs, -16
  %conflict.rdx138 = or i1 %conflict.rdx136, %diff.check137
  br i1 %conflict.rdx138, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat140 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.ct = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.ct, align 4, !tbaa !25 ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %invariant.gep112, i64 %index
  %wide.load143 = load <4 x float>, ptr %i.cu, align 4, !tbaa !25 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %invariant.gep114, i64 %index
  %wide.load144 = load <4 x float>, ptr %i.cv, align 4, !tbaa !25 ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep116, i64 %index
  %wide.load145 = load <4 x float>, ptr %i.cw, align 4, !tbaa !25 ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep118, i64 %index
  %wide.load146 = load <4 x float>, ptr %i.cx, align 4, !tbaa !25
  %i.cy = getelementptr [4 x i8], ptr %invariant.gep120, i64 %index
  %wide.load147 = load <4 x float>, ptr %i.cy, align 4, !tbaa !25
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep122, i64 %index
  %wide.load148 = load <4 x float>, ptr %i.cz, align 4, !tbaa !25
  %i.da = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index
  %wide.load149 = load <4 x float>, ptr %i.da, align 4, !tbaa !25
  %i.db = fsub <4 x float> %wide.load146, %wide.load
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 2 uses
  %i.dd = fsub <4 x float> %wide.load147, %wide.load143
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %broadcast.splat, <4 x float> %wide.load143) ; 2 uses
  %i.df = fsub <4 x float> %wide.load148, %wide.load144
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %broadcast.splat, <4 x float> %wide.load144)
  %i.dh = fsub <4 x float> %wide.load149, %wide.load145
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %broadcast.splat, <4 x float> %wide.load145)
  %i.dj = fsub <4 x float> %i.dg, %i.dc
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat140, <4 x float> %i.dc) ; 2 uses
  %i.dl = fsub <4 x float> %i.di, %i.de
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %broadcast.splat140, <4 x float> %i.de)
  %i.dn = fsub <4 x float> %i.dm, %i.dk
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %broadcast.splat142, <4 x float> %i.dk)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.do, ptr %i.dp, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dr = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dt = load float, ptr %gep, align 4, !tbaa !25
  %gep113 = getelementptr [4 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.du = load float, ptr %gep113, align 4, !tbaa !25
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.dv = load float, ptr %gep115, align 4, !tbaa !25
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.dw = load float, ptr %gep117, align 4, !tbaa !25
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.dx = load float, ptr %gep119, align 4, !tbaa !25
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.dy = load float, ptr %gep121, align 4, !tbaa !25
  %gep123 = getelementptr [4 x i8], ptr %invariant.gep122, i64 %indvars.iv
  %i.dz = load float, ptr %gep123, align 4, !tbaa !25
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %indvars.iv
  %i.ea = load float, ptr %gep125, align 4, !tbaa !25
  %i.eb = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dx, i64 1
  %i.ed = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.dt, i64 1 ; 2 uses
  %i.ef = fsub <2 x float> %i.ec, %i.ee
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dr, <2 x float> %i.ee) ; 2 uses
  %i.eh = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.dz, i64 1
  %i.ej = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.dv, i64 1 ; 2 uses
  %i.el = fsub <2 x float> %i.ei, %i.ek
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dr, <2 x float> %i.ek)
  %i.en = fsub <2 x float> %i.em, %i.eg
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ds, <2 x float> %i.eg) ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  %i.eq = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  %i.er = fsub float %i.ep, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.af, float %i.eq)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.es, ptr %i.et, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@Eval15InputsFloat:bb.a
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !179

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check102 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check102, label %.lr.ph.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.preheader
  %n.vec104 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat106 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph103
  %index108 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body107 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index108 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load109 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25 ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.ci, align 16, !tbaa !25 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index108 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load111 = load <4 x float>, ptr %i.cj, align 16, !tbaa !25
  %wide.load112 = load <4 x float>, ptr %i.ck, align 16, !tbaa !25
  %i.cl = fsub <4 x float> %wide.load111, %wide.load109
  %i.cm = fsub <4 x float> %wide.load112, %wide.load110
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %broadcast.splat106, <4 x float> %wide.load109)
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %broadcast.splat106, <4 x float> %wide.load110)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index108 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x float> %i.cn, ptr %i.cp, align 4, !tbaa !25
  store <4 x float> %i.co, ptr %i.cq, align 4, !tbaa !25
  %index.next113 = add nuw i64 %index108, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.cr, label %middle.block114, label %vector.body107, !llvm.loop !180

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %n.vec104, %wide.trip.count.i37
  br i1 %cmp.n115, label %._crit_edge, label %.lr.ph.preheader120

.lr.ph.preheader120:                              ; preds = %.lr.ph.preheader, %middle.block114
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec104, %middle.block114 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader120, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader120 ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !25 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !25
  %i.cw = fsub float %i.cv, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ad, float %i.ct)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cx, ptr %i.cy, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph, %middle.block114, %Eval14InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval15Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 4 dereferenceable(56) %i.v, i64 56, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval14Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval14Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS18_cmsContext_struct", !9, i64 0}
!12 = !{!"", !9, i64 0}
!13 = !{!12, !9, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"_cms_interp_struc", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 80, !5, i64 140, !9, i64 200, !5, i64 208}
!16 = !{!15, !6, i64 12}
!17 = !{!15, !6, i64 16}
!18 = !{!15, !6, i64 8}
!19 = !{!15, !9, i64 200}
!20 = !{!15, !11, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"float", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!11, !11, i64 0}
!31 = !{i64 0, i64 8, !30, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21, i64 20, i64 60, !14, i64 80, i64 60, !14, i64 140, i64 60, !14, i64 200, i64 8, !10, i64 208, i64 8, !14}
!32 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!33 = !{!"_cmsContext_struct", !11, i64 0, !9, i64 8, !5, i64 16, !32, i64 144}
!34 = !{!33, !9, i64 8}
!35 = !{!"p1 _ZTS20_cmsPluginBaseStruct", !9, i64 0}
!36 = !{!"_cmsPluginBaseStruct", !6, i64 0, !6, i64 4, !6, i64 8, !35, i64 16}
!37 = !{!"", !36, i64 0, !9, i64 24}
!38 = !{!37, !9, i64 24}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !22, !28, !29}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !22, !28}
!45 = distinct !{!45, !22, !28, !29}
!46 = distinct !{!46, !22, !28}
!47 = distinct !{!47, !22, !28, !29}
!48 = distinct !{!48, !22, !28, !29}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !22, !28}
!51 = distinct !{!51, !22, !28, !29}
!52 = distinct !{!52, !22, !28}
!53 = !{!"branch_weights", i32 4, i32 12}
!54 = distinct !{!54, !22, !28, !29}
!55 = distinct !{!55, !22, !28}
!56 = distinct !{!56, !22, !28, !29}
!57 = distinct !{!57, !22, !28}
!58 = distinct !{!58, !22, !28, !29}
!59 = distinct !{!59, !22, !28}
!60 = distinct !{!60, !22, !28, !29}
!61 = distinct !{!61, !22, !28}
!62 = distinct !{!62, !22, !28, !29}
!63 = distinct !{!63, !22, !28, !29}
!64 = distinct !{!64, !22, !28, !29}
!65 = distinct !{!65, !22, !28, !29}
!66 = distinct !{!66, !22, !28, !29}
!67 = distinct !{!67, !22, !28, !29}
!68 = distinct !{!68, !22, !28, !29}
!69 = distinct !{!69, !22, !28}
!70 = distinct !{!70, !22, !28}
!71 = distinct !{!71, !22, !28}
!72 = distinct !{!72, !22, !28}
!73 = distinct !{!73, !22, !28}
!74 = distinct !{!74, !22, !28}
!75 = distinct !{!75, !22, !28}
!76 = distinct !{!76, !22, !28, !29}
!77 = distinct !{!77, !22, !28}
!78 = distinct !{!78, !22, !28, !29}
!79 = distinct !{!79, !22, !28}
!80 = distinct !{!80, !22, !28, !29}
!81 = distinct !{!81, !22, !28}
!82 = distinct !{!82, !22, !28, !29}
!83 = distinct !{!83, !22, !28}
!84 = distinct !{!84, !22, !28, !29}
!85 = distinct !{!85, !22, !28}
!86 = distinct !{!86, !22, !28, !29}
!87 = distinct !{!87, !22, !28}
!88 = distinct !{!88, !22, !28, !29}
!89 = distinct !{!89, !22, !29, !28}
!90 = distinct !{!90, !22, !28, !29}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22, !28}
!93 = distinct !{!93, !22, !28, !29}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22, !29, !28}
!96 = distinct !{!96, !22, !28, !29}
!97 = distinct !{!97, !22, !29, !28}
!98 = distinct !{!98, !22, !28, !29}
!99 = distinct !{!99, !22, !29, !28}
!100 = distinct !{!100, !22, !28, !29}
!101 = distinct !{!101, !22, !29, !28}
!102 = distinct !{!102, !22, !28, !29}
!103 = distinct !{!103, !22, !29, !28}
!104 = distinct !{!104, !22, !28, !29}
!105 = distinct !{!105, !22, !29, !28}
!106 = distinct !{!106, !22, !28, !29}
!107 = distinct !{!107, !22, !29, !28}
!108 = distinct !{!108, !22, !28, !29}
!109 = distinct !{!109, !22, !29, !28}
!110 = distinct !{!110, !22, !28, !29}
!111 = distinct !{!111, !22, !29, !28}
!112 = distinct !{!112, !22, !28, !29}
!113 = distinct !{!113, !22, !29, !28}
!114 = distinct !{!114, !22, !28, !29}
!115 = distinct !{!115, !22, !29, !28}
!116 = distinct !{!116, !22, !28, !29}
!117 = distinct !{!117, !22, !29, !28}
!118 = distinct !{!118, !22, !28, !29}
!119 = distinct !{!119, !22, !29, !28}
!120 = distinct !{!120, !22, !28, !29}
!121 = distinct !{!121, !22, !29, !28}
!122 = distinct !{!122, !22, !28, !29}
!123 = distinct !{!123, !22, !29, !28}
!124 = distinct !{!124, !22, !28, !29}
!125 = distinct !{!125, !22, !29, !28}
!126 = distinct !{!126, !22, !28, !29}
!127 = distinct !{!127, !22, !29, !28}
!128 = distinct !{!128, !22, !28, !29}
!129 = distinct !{!129, !22, !29, !28}
!130 = distinct !{!130, !22, !28, !29}
!131 = distinct !{!131, !22, !29, !28}
!132 = distinct !{!132, !22, !28, !29}
!133 = distinct !{!133, !22, !29, !28}
!134 = distinct !{!134, !22, !28, !29}
!135 = distinct !{!135, !22, !29, !28}
!136 = distinct !{!136, !22, !28, !29}
!137 = distinct !{!137, !22, !29, !28}
!138 = distinct !{!138, !22, !28, !29}
!139 = distinct !{!139, !22, !29, !28}
!140 = distinct !{!140, !22, !28, !29}
!141 = distinct !{!141, !22, !29, !28}
!142 = distinct !{!142, !22, !28, !29}
!143 = distinct !{!143, !22, !29, !28}
!144 = distinct !{!144, !22, !28, !29}
!145 = distinct !{!145, !22, !29, !28}
!146 = distinct !{!146, !22, !28, !29}
!147 = distinct !{!147, !22, !29, !28}
!148 = distinct !{!148, !22, !28, !29}
!149 = distinct !{!149, !22, !29, !28}
!150 = distinct !{!150, !22, !28, !29}
!151 = distinct !{!151, !22, !29, !28}
!152 = distinct !{!152, !22, !28, !29}
!153 = distinct !{!153, !22, !29, !28}
!154 = distinct !{!154, !22, !28, !29}
!155 = distinct !{!155, !22, !29, !28}
!156 = distinct !{!156, !22, !28, !29}
!157 = distinct !{!157, !22, !29, !28}
!158 = distinct !{!158, !22, !28, !29}
!159 = distinct !{!159, !22, !29, !28}
!160 = distinct !{!160, !22, !28, !29}
!161 = distinct !{!161, !22, !29, !28}
!162 = distinct !{!162, !22, !28, !29}
!163 = distinct !{!163, !22, !29, !28}
!164 = distinct !{!164, !22, !28, !29}
!165 = distinct !{!165, !22, !29, !28}
!166 = distinct !{!166, !22, !28, !29}
!167 = distinct !{!167, !22, !29, !28}
!168 = distinct !{!168, !22, !28, !29}
!169 = distinct !{!169, !22, !29, !28}
!170 = distinct !{!170, !22, !28, !29}
!171 = distinct !{!171, !22, !29, !28}
!172 = distinct !{!172, !22, !28, !29}
!173 = distinct !{!173, !22, !29, !28}
!174 = distinct !{!174, !22, !28, !29}
!175 = distinct !{!175, !22, !29, !28}
!176 = distinct !{!176, !22, !28, !29}
!177 = distinct !{!177, !22, !29, !28}
!178 = distinct !{!178, !22, !28, !29}
!179 = distinct !{!179, !22, !29, !28}
!180 = distinct !{!180, !22, !28, !29}
!181 = distinct !{!181, !22, !29, !28}
!182 = distinct !{!182, !22, !28, !29}
!183 = distinct !{!183, !22, !29, !28}
end_hunk_1
