Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsintrp?download=true
inline.NumInlined: 120
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BilinearInterpFloat:bb.a
  %i.cc = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cd = fsub float %i.cb, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.u, float %i.cc)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ce, ptr %i.cf, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BilinearInterp16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
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
  %i.au = ptrtoaddr ptr %i.y to i64
  %i.av = shl nsw i64 %i.at, 1
  %i.aw = sub i64 %i.a, %i.au                     ; 4 uses
  %i.ax = sub i64 %i.av, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -16
  %i.ay = shl nsw i64 %i.as, 1
  %i.az = sub i64 %i.ay, %i.aw
  %diff.check66 = icmp ugt i64 %i.az, -16
  %conflict.rdx = or i1 %diff.check, %diff.check66
  %i.ba = shl nsw i64 %i.ar, 1
  %i.bb = sub i64 %i.ba, %i.aw
  %diff.check67 = icmp ugt i64 %i.bb, -16
  %conflict.rdx68 = or i1 %conflict.rdx, %diff.check67
  %i.bc = shl nsw i64 %i.aq, 1
  %i.bd = sub i64 %i.bc, %i.aw
  %diff.check69 = icmp ugt i64 %i.bd, -16
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  br i1 %conflict.rdx70, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat72 = shufflevector <8 x i32> %broadcast.splatinsert71, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.be = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.be, align 2, !tbaa !27 ; 2 uses
  %i.bf = zext <8 x i16> %wide.load to <8 x i32>
  %i.bg = getelementptr [2 x i8], ptr %invariant.gep55, i64 %index
  %wide.load73 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !27 ; 2 uses
  %i.bh = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.bi = getelementptr [2 x i8], ptr %invariant.gep57, i64 %index
  %wide.load74 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !27
  %i.bj = zext <8 x i16> %wide.load74 to <8 x i32>
  %i.bk = getelementptr [2 x i8], ptr %invariant.gep59, i64 %index
  %wide.load75 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !27
  %i.bl = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.bm = sub nsw <8 x i32> %i.bj, %i.bf
  %i.bn = mul nsw <8 x i32> %i.bm, %broadcast.splat
  %i.bo = add nsw <8 x i32> %i.bn, splat (i32 32768)
  %i.bp = lshr <8 x i32> %i.bo, splat (i32 16)
  %i.bq = trunc nuw <8 x i32> %i.bp to <8 x i16>
  %i.br = add <8 x i16> %wide.load, %i.bq         ; 2 uses
  %i.bs = zext <8 x i16> %i.br to <8 x i32>
  %i.bt = sub nsw <8 x i32> %i.bl, %i.bh
  %i.bu = mul nsw <8 x i32> %i.bt, %broadcast.splat
  %i.bv = add nsw <8 x i32> %i.bu, splat (i32 32768)
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  %i.by = add <8 x i16> %wide.load73, %i.bx
  %i.bz = zext <8 x i16> %i.by to <8 x i32>
  %i.ca = sub nsw <8 x i32> %i.bz, %i.bs
  %i.cb = mul nsw <8 x i32> %i.ca, %broadcast.splat72
  %i.cc = add nsw <8 x i32> %i.cb, splat (i32 32768)
  %i.cd = lshr <8 x i32> %i.cc, splat (i32 16)
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i16>
  %i.cf = add <8 x i16> %i.br, %i.ce
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.cf, ptr %i.cg, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ci = load i16, ptr %gep, align 2, !tbaa !27  ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %gep56 = getelementptr [2 x i8], ptr %invariant.gep55, i64 %indvars.iv
  %i.ck = load i16, ptr %gep56, align 2, !tbaa !27 ; 2 uses
  %i.cl = zext i16 %i.ck to i32
  %gep58 = getelementptr [2 x i8], ptr %invariant.gep57, i64 %indvars.iv
  %i.cm = load i16, ptr %gep58, align 2, !tbaa !27
  %i.cn = zext i16 %i.cm to i32
  %gep60 = getelementptr [2 x i8], ptr %invariant.gep59, i64 %indvars.iv
  %i.co = load i16, ptr %gep60, align 2, !tbaa !27
  %i.cp = zext i16 %i.co to i32
  %i.cq = sub nsw i32 %i.cn, %i.cj
  %i.cr = mul nsw i32 %i.cq, %i.l
  %i.cs = add nsw i32 %i.cr, 32768
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = add i16 %i.ci, %i.cu                    ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.cp, %i.cl
  %i.cy = mul nsw i32 %i.cx, %i.l
  %i.cz = add nsw i32 %i.cy, 32768
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = add i16 %i.ck, %i.db
  %i.dd = zext i16 %i.dc to i32
  %i.de = sub nsw i32 %i.dd, %i.cw
  %i.df = mul nsw i32 %i.de, %i.v
  %i.dg = add nsw i32 %i.df, 32768
  %i.dh = lshr i32 %i.dg, 16
  %i.di = trunc nuw i32 %i.dh to i16
  %i.dj = add i16 %i.cv, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TrilinearInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load float, ptr %0, align 4, !tbaa !25   ; 4 uses
  %i.e = fcmp olt float %i.d, f0x3089705F
  %i.f = fcmp uno float %i.d, 0.000000e+00
  %or.cond.i106 = or i1 %i.e, %i.f
  %i.g = fcmp ogt float %i.d, 1.000000e+00
  %i.h = select i1 %i.g, float 1.000000e+00, float %i.d
  %i.i = select i1 %or.cond.i106, float 0.000000e+00, float %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  %i.l = uitofp i32 %i.k to float
  %i.m = fmul float %i.i, %i.l                    ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.n = load <2 x float>, ptr %3, align 4, !tbaa !25 ; 4 uses
  %i.o = fcmp olt <2 x float> %i.n, splat (float f0x3089705F)
  %i.p = fcmp uno <2 x float> %i.n, zeroinitializer
  %i.q = or <2 x i1> %i.o, %i.p
  %i.r = fcmp ogt <2 x float> %i.n, splat (float 1.000000e+00)
  %i.s = select <2 x i1> %i.r, <2 x float> splat (float 1.000000e+00), <2 x float> %i.n
  %i.t = select <2 x i1> %i.q, <2 x float> zeroinitializer, <2 x float> %i.s ; 2 uses
  %5 = tail call float @llvm.floor.f32(float %i.m)
  %6 = fptosi float %5 to i32                     ; 2 uses
  %7 = sitofp i32 %6 to float
  %8 = fsub float %i.m, %7                        ; 2 uses
  %9 = load <2 x i32>, ptr %4, align 4, !tbaa !21
  %10 = uitofp <2 x i32> %9 to <2 x float>
  %11 = fmul <2 x float> %i.t, %10                ; 3 uses
  %12 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %11)
  %i.u = fptosi <2 x float> %12 to <2 x i32>      ; 3 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 2 uses
  %i.w = fsub <2 x float> %11, %i.v               ; 2 uses
  %foldExtExtBinop164 = fsub <2 x float> %11, %i.v ; 2 uses
  %13 = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %i.x = icmp sgt i32 %i.c, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %14 = extractelement <2 x i32> %i.u, i64 1
  %i.ac = mul i32 %i.ab, %14                      ; 5 uses
  %15 = fcmp ult <2 x float> %i.t, splat (float 1.000000e+00) ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 1
  %i.ad = select i1 %16, i32 %i.ab, i32 0
  %i.ae = add i32 %i.ac, %i.ad                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.u, i64 0
  %i.ai = mul i32 %i.ag, %i.ah                    ; 3 uses
  %17 = extractelement <2 x i1> %15, i64 0
  %i.aj = select i1 %17, i32 %i.ag, i32 0
  %i.ak = add i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.an = mul i32 %i.am, %6                       ; 3 uses
  %i.ao = fcmp ult float %i.i, 1.000000e+00
  %spec.select = select i1 %i.ao, i32 %i.am, i32 0
  %i.ap = add i32 %i.an, %spec.select             ; 2 uses
  %i.aq = add nsw i32 %i.ai, %i.an                ; 2 uses
  %i.ar = add nsw i32 %i.ac, %i.aq
  %i.as = add nsw i32 %i.ae, %i.aq
  %i.at = add nsw i32 %i.ak, %i.an                ; 2 uses
  %i.au = add nsw i32 %i.at, %i.ac
  %i.av = add nsw i32 %i.ae, %i.at
  %i.aw = add nsw i32 %i.ai, %i.ap                ; 2 uses
  %i.ax = add nsw i32 %i.ac, %i.aw
  %i.ay = add nsw i32 %i.ae, %i.aw
  %i.az = add nsw i32 %i.ak, %i.ap                ; 2 uses
  %i.ba = add nsw i32 %i.az, %i.ac
  %i.bb = add nsw i32 %i.ae, %i.az
  %i.bc = sext i32 %i.ar to i64                   ; 2 uses
  %i.bd = sext i32 %i.as to i64                   ; 2 uses
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sext i32 %i.av to i64                   ; 2 uses
  %i.bg = sext i32 %i.ax to i64                   ; 2 uses
  %i.bh = sext i32 %i.ay to i64                   ; 2 uses
  %i.bi = sext i32 %i.ba to i64                   ; 2 uses
  %i.bj = sext i32 %i.bb to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.bc ; 2 uses
  %invariant.gep112 = getelementptr [4 x i8], ptr %i.z, i64 %i.bd ; 2 uses
  %invariant.gep114 = getelementptr [4 x i8], ptr %i.z, i64 %i.be ; 2 uses
  %invariant.gep116 = getelementptr [4 x i8], ptr %i.z, i64 %i.bf ; 2 uses
  %invariant.gep118 = getelementptr [4 x i8], ptr %i.z, i64 %i.bg ; 2 uses
  %invariant.gep120 = getelementptr [4 x i8], ptr %i.z, i64 %i.bh ; 2 uses
  %invariant.gep122 = getelementptr [4 x i8], ptr %i.z, i64 %i.bi ; 2 uses
  %invariant.gep124 = getelementptr [4 x i8], ptr %i.z, i64 %i.bj ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bk = ptrtoaddr ptr %i.z to i64
  %i.bl = shl nsw i64 %i.bj, 2
  %i.bm = sub i64 %i.a, %i.bk                     ; 8 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %diff.check = icmp ugt i64 %i.bn, -16
  %i.bo = shl nsw i64 %i.bi, 2
  %i.bp = sub i64 %i.bo, %i.bm
  %diff.check139 = icmp ugt i64 %i.bp, -16
  %conflict.rdx = or i1 %diff.check, %diff.check139
  %i.bq = shl nsw i64 %i.bh, 2
  %i.br = sub i64 %i.bq, %i.bm
  %diff.check140 = icmp ugt i64 %i.br, -16
  %conflict.rdx141 = or i1 %conflict.rdx, %diff.check140
  %i.bs = shl nsw i64 %i.bg, 2
  %i.bt = sub i64 %i.bs, %i.bm
  %diff.check142 = icmp ugt i64 %i.bt, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  %i.bu = shl nsw i64 %i.bf, 2
  %i.bv = sub i64 %i.bu, %i.bm
  %diff.check144 = icmp ugt i64 %i.bv, -16
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.bw = shl nsw i64 %i.be, 2
  %i.bx = sub i64 %i.bw, %i.bm
  %diff.check146 = icmp ugt i64 %i.bx, -16
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.by = shl nsw i64 %i.bd, 2
  %i.bz = sub i64 %i.by, %i.bm
  %diff.check148 = icmp ugt i64 %i.bz, -16
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  %i.ca = shl nsw i64 %i.bc, 2
  %i.cb = sub i64 %i.ca, %i.bm
  %diff.check150 = icmp ugt i64 %i.cb, -16
  %conflict.rdx151 = or i1 %conflict.rdx149, %diff.check150
  br i1 %conflict.rdx151, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat153 = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat155 = shufflevector <2 x float> %foldExtExtBinop164, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cc, align 4, !tbaa !25 ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %invariant.gep112, i64 %index
  %wide.load156 = load <4 x float>, ptr %i.cd, align 4, !tbaa !25 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %invariant.gep114, i64 %index
  %wide.load157 = load <4 x float>, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %invariant.gep116, i64 %index
  %wide.load158 = load <4 x float>, ptr %i.cf, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep118, i64 %index
  %wide.load159 = load <4 x float>, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr [4 x i8], ptr %invariant.gep120, i64 %index
  %wide.load160 = load <4 x float>, ptr %i.ch, align 4, !tbaa !25
  %i.ci = getelementptr [4 x i8], ptr %invariant.gep122, i64 %index
  %wide.load161 = load <4 x float>, ptr %i.ci, align 4, !tbaa !25
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index
  %wide.load162 = load <4 x float>, ptr %i.cj, align 4, !tbaa !25
  %i.ck = fsub <4 x float> %wide.load159, %wide.load
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 2 uses
  %i.cm = fsub <4 x float> %wide.load160, %wide.load156
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %broadcast.splat, <4 x float> %wide.load156) ; 2 uses
  %i.co = fsub <4 x float> %wide.load161, %wide.load157
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %broadcast.splat, <4 x float> %wide.load157)
  %i.cq = fsub <4 x float> %wide.load162, %wide.load158
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %broadcast.splat, <4 x float> %wide.load158)
  %i.cs = fsub <4 x float> %i.cp, %i.cl
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %broadcast.splat153, <4 x float> %i.cl) ; 2 uses
  %i.cu = fsub <4 x float> %i.cr, %i.cn
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat153, <4 x float> %i.cn)
  %i.cw = fsub <4 x float> %i.cv, %i.ct
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %broadcast.splat155, <4 x float> %i.ct)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.cx, ptr %i.cy, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %18 = insertelement <4 x float> poison, float %8, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.da = load float, ptr %gep, align 4, !tbaa !25
  %gep113 = getelementptr [4 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.db = load float, ptr %gep113, align 4, !tbaa !25
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.dc = load float, ptr %gep115, align 4, !tbaa !25
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.dd = load float, ptr %gep117, align 4, !tbaa !25
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.de = load float, ptr %gep119, align 4, !tbaa !25
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.df = load float, ptr %gep121, align 4, !tbaa !25
  %gep123 = getelementptr [4 x i8], ptr %invariant.gep122, i64 %indvars.iv
  %i.dg = load float, ptr %gep123, align 4, !tbaa !25
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %indvars.iv
  %i.dh = load float, ptr %gep125, align 4, !tbaa !25
  %21 = insertelement <4 x float> poison, float %i.de, i64 0
  %22 = insertelement <4 x float> %21, float %i.df, i64 1
  %23 = insertelement <4 x float> %22, float %i.dg, i64 2
  %24 = insertelement <4 x float> %23, float %i.dh, i64 3
  %25 = insertelement <4 x float> poison, float %i.da, i64 0
  %26 = insertelement <4 x float> %25, float %i.db, i64 1
  %27 = insertelement <4 x float> %26, float %i.dc, i64 2
  %28 = insertelement <4 x float> %27, float %i.dd, i64 3 ; 2 uses
  %29 = fsub <4 x float> %24, %28
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %19, <4 x float> %28) ; 2 uses
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %32 = shufflevector <4 x float> %30, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.di = fsub <2 x float> %31, %32
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %20, <2 x float> %32) ; 3 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 0
  %shift = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop166 = fsub <2 x float> %shift, %i.dj
  %33 = extractelement <2 x float> %foldExtExtBinop166, i64 0
  %i.dl = tail call float @llvm.fmuladd.f32(float %33, float %13, float %i.dk)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.dl, ptr %i.dm, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TrilinearInterp16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
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
  %i.be = add nsw i32 %i.am, %i.bd
  %i.bf = add nsw i32 %i.ap, %i.bd
  %i.bg = add nsw i32 %i.aw, %i.ba                ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.am
  %i.bi = add nsw i32 %i.ap, %i.bg
  %i.bj = add nsw i32 %i.at, %i.bc                ; 2 uses
  %i.bk = add nsw i32 %i.am, %i.bj
  %i.bl = add nsw i32 %i.ap, %i.bj
  %i.bm = add i32 %i.aw, %i.bc                    ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.am
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
  %i.bx = ptrtoaddr ptr %i.ai to i64
  %i.by = shl nsw i64 %i.bw, 1
  %i.bz = sub i64 %i.a, %i.bx                     ; 8 uses
  %i.ca = sub i64 %i.by, %i.bz
  %diff.check = icmp ugt i64 %i.ca, -16
  %i.cb = shl nsw i64 %i.bv, 1
  %i.cc = sub i64 %i.cb, %i.bz
  %diff.check131 = icmp ugt i64 %i.cc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check131
  %i.cd = shl nsw i64 %i.bu, 1
  %i.ce = sub i64 %i.cd, %i.bz
  %diff.check132 = icmp ugt i64 %i.ce, -16
  %conflict.rdx133 = or i1 %conflict.rdx, %diff.check132
  %i.cf = shl nsw i64 %i.bt, 1
  %i.cg = sub i64 %i.cf, %i.bz
  %diff.check134 = icmp ugt i64 %i.cg, -16
  %conflict.rdx135 = or i1 %conflict.rdx133, %diff.check134
  %i.ch = shl nsw i64 %i.bs, 1
  %i.ci = sub i64 %i.ch, %i.bz
  %diff.check136 = icmp ugt i64 %i.ci, -16
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136
  %i.cj = shl nsw i64 %i.br, 1
  %i.ck = sub i64 %i.cj, %i.bz
  %diff.check138 = icmp ugt i64 %i.ck, -16
  %conflict.rdx139 = or i1 %conflict.rdx137, %diff.check138
  %i.cl = shl nsw i64 %i.bq, 1
  %i.cm = sub i64 %i.cl, %i.bz
  %diff.check140 = icmp ugt i64 %i.cm, -16
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %i.cn = shl nsw i64 %i.bp, 1
  %i.co = sub i64 %i.cn, %i.bz
  %diff.check142 = icmp ugt i64 %i.co, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  br i1 %conflict.rdx143, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert144 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat145 = shufflevector <8 x i32> %broadcast.splatinsert144, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cp = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cp, align 2, !tbaa !27 ; 2 uses
  %i.cq = zext <8 x i16> %wide.load to <8 x i32>
  %i.cr = getelementptr [2 x i8], ptr %invariant.gep104, i64 %index
  %wide.load148 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !27 ; 2 uses
  %i.cs = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.ct = getelementptr [2 x i8], ptr %invariant.gep106, i64 %index
  %wide.load149 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !27 ; 2 uses
  %i.cu = zext <8 x i16> %wide.load149 to <8 x i32>
  %i.cv = getelementptr [2 x i8], ptr %invariant.gep108, i64 %index
  %wide.load150 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !27 ; 2 uses
  %i.cw = zext <8 x i16> %wide.load150 to <8 x i32>
  %i.cx = getelementptr [2 x i8], ptr %invariant.gep110, i64 %index
  %wide.load151 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !27
  %i.cy = zext <8 x i16> %wide.load151 to <8 x i32>
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep112, i64 %index
  %wide.load152 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !27
  %i.da = zext <8 x i16> %wide.load152 to <8 x i32>
  %i.db = getelementptr [2 x i8], ptr %invariant.gep114, i64 %index
  %wide.load153 = load <8 x i16>, ptr %i.db, align 2, !tbaa !27
  %i.dc = zext <8 x i16> %wide.load153 to <8 x i32>
  %i.dd = getelementptr [2 x i8], ptr %invariant.gep116, i64 %index
  %wide.load154 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !27
  %i.de = zext <8 x i16> %wide.load154 to <8 x i32>
  %i.df = sub nsw <8 x i32> %i.cy, %i.cq
  %i.dg = mul nsw <8 x i32> %i.df, %broadcast.splat
  %i.dh = add nsw <8 x i32> %i.dg, splat (i32 32768)
  %i.di = lshr <8 x i32> %i.dh, splat (i32 16)
  %i.dj = trunc nuw <8 x i32> %i.di to <8 x i16>
  %i.dk = add <8 x i16> %wide.load, %i.dj         ; 2 uses
  %i.dl = zext <8 x i16> %i.dk to <8 x i32>
  %i.dm = sub nsw <8 x i32> %i.da, %i.cs
  %i.dn = mul nsw <8 x i32> %i.dm, %broadcast.splat
  %i.do = add nsw <8 x i32> %i.dn, splat (i32 32768)
  %i.dp = lshr <8 x i32> %i.do, splat (i32 16)
  %i.dq = trunc nuw <8 x i32> %i.dp to <8 x i16>
  %i.dr = add <8 x i16> %wide.load148, %i.dq      ; 2 uses
  %i.ds = zext <8 x i16> %i.dr to <8 x i32>
  %i.dt = sub nsw <8 x i32> %i.dc, %i.cu
  %i.du = mul nsw <8 x i32> %i.dt, %broadcast.splat
  %i.dv = add nsw <8 x i32> %i.du, splat (i32 32768)
  %i.dw = lshr <8 x i32> %i.dv, splat (i32 16)
  %i.dx = trunc nuw <8 x i32> %i.dw to <8 x i16>
  %i.dy = add <8 x i16> %wide.load149, %i.dx
  %i.dz = zext <8 x i16> %i.dy to <8 x i32>
  %i.ea = sub nsw <8 x i32> %i.de, %i.cw
  %i.eb = mul nsw <8 x i32> %i.ea, %broadcast.splat
  %i.ec = add nsw <8 x i32> %i.eb, splat (i32 32768)
end_hunk_0
begin_hunk_1_@Eval15InputsFloat:bb.a
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
