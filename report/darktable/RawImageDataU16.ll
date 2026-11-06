Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawImageDataU16?download=true
inline.NumInlined: 598
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8rawspeed15RawImageDataU1615scaleBlackWhiteEv:bb.a
  %.pre60 = load ptr, ptr %i.i, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.dg = phi ptr [ %i.j, %bb.a ], [ %.pre60, %bb.f ]
  %i.dh = phi ptr [ %i.h, %bb.a ], [ %.pre59, %bb.f ]
  %i.di = icmp eq ptr %i.dh, %i.dg
  br i1 %i.di, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dj = load i32, ptr %i.o, align 8, !tbaa !83
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dm = load i8, ptr %i.r, align 4, !tbaa !85, !range !109, !noundef !110
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i32, ptr %i.dl, align 8
  %i.dp = icmp eq i32 %i.do, 65535
  %i.dq = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %i.dq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dr = load i8, ptr %i.l, align 8, !tbaa !84, !range !109, !noundef !110
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !87
  %i.du = tail call i32 @llvm.abs.i32(i32 %i.dt, i1 false)
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !88
  %i.dy = tail call i32 @llvm.abs.i32(i32 %i.dx, i1 false)
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw nsw i64 %i.dz, %i.dv
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = load i8, ptr %i.l, align 8, !tbaa !84, !range !109, !noundef !110
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN8rawspeed15RawImageDataU1619calculateBlackAreasEv(ptr noundef nonnull align 8 dereferenceable(624) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb(ptr noundef nonnull align 8 dereferenceable(624) %0, i16 noundef zeroext 1, i1 noundef zeroext true)
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.n
  ret void
}

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb(ptr noundef nonnull align 8 dereferenceable(624), i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN8rawspeed15RawImageDataU1611scaleValuesEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !111, !noalias !163
  %i.d = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !tbaa !98
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = sitofp i32 %i.e to float
  %i.g = fdiv float 6.553500e+04, %i.f
  %i.h = tail call noundef zeroext i1 @_ZN8rawspeed5Cpuid4SSE2Ev() #28
  %i.i = fcmp olt float %i.g, 6.300000e+01
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8rawspeed15RawImageDataU1616scaleValues_SSE2Eii(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN8rawspeed15RawImageDataU1617scaleValues_plainEii(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef zeroext i1 @_ZN8rawspeed5Cpuid4SSE2Ev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN8rawspeed15RawImageDataU1616scaleValues_SSE2Eii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114, !noalias !172
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115, !noalias !172
  %i.e = mul nuw nsw i32 %i.d, %i.b               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.g = load i32, ptr %i.f, align 8, !tbaa !100
  %i.h = and i32 %i.g, 1                          ; 4 uses
  %i.i = xor i32 %i.h, 1                          ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, %i.e
  tail call void @llvm.assume(i1 %i.j)
  %i.k = or disjoint i32 %i.h, 2                  ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, %i.e
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i32 %i.h, 3                          ; 2 uses
  %i.n = icmp samesign ult i32 %i.m, %i.e
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93, !noalias !173
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.s = load i32, ptr %i.r, align 8, !tbaa !90, !noalias !173
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94, !noalias !173 ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.x = load i32, ptr %i.w, align 4, !tbaa !95, !noalias !173
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96, !noalias !173
  %i.aa = ashr i32 %i.z, 1                        ; 3 uses
  %i.ab = icmp ne i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp sge i32 %i.aa, %i.v
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp slt i32 %1, %2
  br i1 %i.ad, label %.lr.ph185, label %._crit_edge

.lr.ph185:                                        ; preds = %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !98 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ag, align 8, !tbaa !111, !noalias !174 ; 5 uses
  %i.ah = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !tbaa !98
  %i.ai = sub nsw i32 %i.af, %i.ah
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fdiv float 6.553500e+04, %i.aj          ; 2 uses
  %i.al = fmul nnan float %i.ak, 4.095000e+03
  %i.am = fptosi float %i.al to i32
  %i.an = fmul nnan float %i.ak, 4.000000e+00
  %i.ao = fptosi float %i.an to i32               ; 2 uses
  %i.ap = zext nneg i32 %i.m to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !98 ; 2 uses
  %i.as = zext nneg i32 %i.k to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !98 ; 2 uses
  %i.av = shl i32 %i.ar, 16
  %i.aw = or i32 %i.av, %i.au
  %.sroa.12.32.vec.insert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %.sroa.12.44.vec.insert = shufflevector <4 x i32> %.sroa.12.32.vec.insert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = zext nneg i32 %i.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !98 ; 2 uses
  %i.ba = zext nneg i32 %i.h to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !98 ; 2 uses
  %i.bd = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bf = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.au, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.az, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.bc, i64 3
  %i.bj = sub nsw <4 x i32> %i.be, %i.bi
  %i.bk = sitofp <4 x i32> %i.bj to <4 x float>
  %i.bl = fdiv <4 x float> splat (float f0x4C7FFF00), %i.bk ; 4 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 0
  %i.bn = fptosi float %i.bm to i32
  %i.bo = shl i32 %i.bn, 16
  %i.bp = extractelement <4 x float> %i.bl, i64 1
  %i.bq = fptosi float %i.bp to i32
  %i.br = or i32 %i.bo, %i.bq
  %.sroa.17.48.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.17.60.vec.insert = shufflevector <4 x i32> %.sroa.17.48.vec.insert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bs = extractelement <4 x float> %i.bl, i64 2
  %i.bt = fptosi float %i.bs to i32
  %i.bu = shl i32 %i.bt, 16
  %i.bv = extractelement <4 x float> %i.bl, i64 3
  %i.bw = fptosi float %i.bv to i32
  %i.bx = or i32 %i.bu, %i.bw
  %.sroa.7.16.vec.insert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %.sroa.7.28.vec.insert = shufflevector <4 x i32> %.sroa.7.16.vec.insert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.by = shl i32 %i.az, 16
  %i.bz = or i32 %i.by, %i.bc
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %.sroa.0.12.vec.insert = shufflevector <4 x i32> %.sroa.0.0.vec.insert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ca = load i8, ptr %i.o, align 4, !tbaa !86, !range !109, !noundef !110
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select = select i1 %i.cb, <2 x i64> splat (i64 5593221364105289010), <2 x i64> zeroinitializer
  %i.cc = ashr i32 %i.am, 4
  %i.cd = shl i32 %i.ao, 16
  %i.ce = or i32 %i.cd, %i.ao
  %i.cf = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.ci = bitcast <2 x i64> %spec.select to <8 x i16> ; 2 uses
  %3 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = bitcast <4 x i32> %3 to <8 x i16>
  %.scalar = add nsw i32 %i.cc, 512
  %i.cj = insertelement <4 x i32> poison, i32 %.scalar, i64 0
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cl = zext nneg i32 %i.v to i64
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN8rawspeed9roundDownEmm.exit._crit_edge, %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit
  ret void

bb.a:                                             ; preds = %.lr.ph185, %_ZN8rawspeed9roundDownEmm.exit._crit_edge
  %i.cm = phi i32 [ %i.u, %.lr.ph185 ], [ %i.de, %_ZN8rawspeed9roundDownEmm.exit._crit_edge ] ; 2 uses
  %.081184 = phi i32 [ %1, %.lr.ph185 ], [ %i.df, %_ZN8rawspeed9roundDownEmm.exit._crit_edge ] ; 4 uses
  %i.cn = load i8, ptr %i.o, align 4, !tbaa !86, !range !109, !noundef !110
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cp = load <1 x i32>, ptr %i.cg, align 8
  %i.cq = insertelement <4 x i32> poison, i32 %.081184, i64 0
  %i.cr = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cs = mul nsw <4 x i32> %i.cr, <i32 23464, i32 12123, i32 34311, i32 18000>
  %i.ct = shufflevector <1 x i32> %i.cp, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = mul nsw <4 x i32> %i.ct, <i32 1234, i32 4272, i32 2342, i32 1676>
  %i.cv = add nsw <4 x i32> %i.cu, %i.cs
  %i.cw = bitcast <4 x i32> %i.cv to <8 x i16>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.080 = phi <8 x i16> [ %i.cw, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.cx = icmp sgt i32 %i.cm, 7
  br i1 %i.cx, label %.lr.ph, label %_ZN8rawspeed9roundDownEmm.exit._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.cy = load i32, ptr %i.ch, align 4, !tbaa !106
  %i.cz = add nsw i32 %i.cy, %.081184
  %i.da = and i32 %i.cz, 1
  %i.db = icmp eq i32 %i.da, 0                    ; 2 uses
  %.078.v = select i1 %i.db, <4 x i32> %.sroa.0.12.vec.insert, <4 x i32> %.sroa.12.44.vec.insert
  %.079.v = select i1 %i.db, <4 x i32> %.sroa.7.28.vec.insert, <4 x i32> %.sroa.17.60.vec.insert
  %i.dc = bitcast <4 x i32> %.078.v to <8 x i16>
  %i.dd = bitcast <4 x i32> %.079.v to <8 x i16>  ; 2 uses
  br label %_ZN8rawspeed9roundDownEmm.exit

_ZN8rawspeed9roundDownEmm.exit._crit_edge:        ; preds = %_ZN8rawspeed9roundDownEmm.exit, %bb.c
  %i.de = phi i32 [ %i.cm, %bb.c ], [ %i.eq, %_ZN8rawspeed9roundDownEmm.exit ]
  %i.df = add nsw i32 %.081184, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !170

_ZN8rawspeed9roundDownEmm.exit:                   ; preds = %.lr.ph, %_ZN8rawspeed9roundDownEmm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed9roundDownEmm.exit ] ; 3 uses
  %.1182 = phi <8 x i16> [ %.080, %.lr.ph ], [ %i.dy, %_ZN8rawspeed9roundDownEmm.exit ] ; 2 uses
  %i.dg = load i32, ptr %i.ch, align 4, !tbaa !106
  %i.dh = add nsw i32 %i.dg, %.081184             ; 2 uses
  %i.di = icmp samesign ult i64 %indvars.iv, %i.cl
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = icmp samesign ult i32 %i.dh, %i.x
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = mul nuw nsw i32 %i.dh, %i.aa
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = load <8 x i16>, ptr %i.dn, align 16, !tbaa !89
  %i.dp = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.do, <8 x i16> %i.dc) ; 2 uses
  %i.dq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.dp, <8 x i16> %i.dd) ; 2 uses
  %i.dr = mul <8 x i16> %i.dp, %i.dd              ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dt = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.du = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.dv = bitcast <8 x i16> %i.dt to <4 x i32>
  %i.dw = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %.1182, <8 x i16> %i.ci)
  %i.dx = mul <8 x i16> %.1182, %i.ci
  %i.dy = xor <8 x i16> %i.dw, %i.dx              ; 2 uses
  %i.dz = and <8 x i16> %i.dy, splat (i16 255)
  %i.ea = mul <8 x i16> %i.dz, %4                 ; 2 uses
  %i.eb = shufflevector <8 x i16> %i.ea, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ec = bitcast <8 x i16> %i.eb to <4 x i32>
  %i.ed = shufflevector <8 x i16> %i.ea, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ee = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.ef = sub <4 x i32> %i.ck, %i.ec
  %i.eg = add <4 x i32> %i.ef, %i.du
  %i.eh = sub <4 x i32> %i.ck, %i.ee
  %i.ei = add <4 x i32> %i.eh, %i.dv
  %i.ej = ashr <4 x i32> %i.eg, splat (i32 10)
  %i.ek = ashr <4 x i32> %i.ei, splat (i32 10)
  %i.el = add nsw <4 x i32> %i.ej, splat (i32 -32768)
  %i.em = add nsw <4 x i32> %i.ek, splat (i32 -32768)
  %i.en = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.el, <4 x i32> %i.em)
  %i.eo = bitcast <8 x i16> %i.en to <2 x i64>
  %i.ep = xor <2 x i64> %i.eo, splat (i64 -9223231297218904064)
  store <2 x i64> %i.ep, ptr %i.dn, align 16, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.eq = load i32, ptr %i.t, align 8, !tbaa !94  ; 2 uses
  %.0.i.i = and i32 %i.eq, -8
  %i.er = sext i32 %.0.i.i to i64
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %_ZN8rawspeed9roundDownEmm.exit, label %_ZN8rawspeed9roundDownEmm.exit._crit_edge, !llvm.loop !171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN8rawspeed15RawImageDataU1617scaleValues_plainEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit:
  %3 = alloca %"struct.std::array", align 16      ; 7 uses
  %4 = alloca %"struct.std::array", align 4       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !186 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90, !noalias !186 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94, !noalias !186
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95, !noalias !186 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !96, !noalias !186
  %i.l = ashr i32 %i.k, 1                         ; 4 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = load i32, ptr %i.o, align 8, !tbaa !100, !noalias !187 ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.d                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !106, !noalias !187 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !99, !noalias !187 ; 2 uses
  %i.v = mul i32 %i.u, %i.d                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !107, !noalias !187 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !114, !noalias !188
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !115, !noalias !188
  %i.ad = mul nuw nsw i32 %i.ac, %i.aa            ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8, !tbaa !111, !noalias !189 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !98 ; 2 uses
  %i.ag = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ah = and i32 %i.p, 1
  %i.ai = shl i32 %i.s, 1
  %i.aj = and i32 %i.ai, 2
  %i.ak = or disjoint i32 %i.aj, %i.ah            ; 5 uses
  %i.al = icmp samesign ult i32 %i.ak, %i.ad
  tail call void @llvm.assume(i1 %i.al)
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !98 ; 2 uses
  store i32 %i.ao, ptr %4, align 4, !tbaa !98
  %.138.1 = xor i32 %i.ak, 1                      ; 2 uses
  %i.ap = icmp samesign ult i32 %.138.1, %i.ad
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = zext nneg i32 %.138.1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !98 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !98
  %.138.2 = xor i32 %i.ak, 2                      ; 2 uses
  %i.au = icmp samesign ult i32 %.138.2, %i.ad
  tail call void @llvm.assume(i1 %i.au)
  %i.av = zext nneg i32 %.138.2 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !98 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !98
  %.138.3 = xor i32 %i.ak, 3                      ; 2 uses
  %i.az = icmp samesign ult i32 %.138.3, %i.ad
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext nneg i32 %.138.3 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !98 ; 2 uses
  %i.bd = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bf = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.as, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.ax, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.bc, i64 3
  %i.bj = sub nsw <4 x i32> %i.be, %i.bi
  %i.bk = sitofp <4 x i32> %i.bj to <4 x float>
  %i.bl = fdiv <4 x float> splat (float f0x4E7FFF00), %i.bk
  %i.bm = fptosi <4 x float> %i.bl to <4 x i32>
  store <4 x i32> %i.bm, ptr %3, align 16, !tbaa !98
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bc, ptr %i.bn, align 4, !tbaa !98
  %i.bo = sub nsw i32 %i.af, %i.ag
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fdiv float 6.553500e+04, %i.bp          ; 2 uses
  %i.br = fmul nnan float %i.bq, 4.000000e+00
  %i.bs = fptosi float %i.br to i32
  %i.bt = fmul nnan float %i.bq, 4.095000e+03
  %i.bu = fptosi float %i.bt to i32
  %i.bv = icmp slt i32 %1, %2
  br i1 %i.bv, label %.lr.ph66, label %._crit_edge67.split

.lr.ph66:                                         ; preds = %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit
  %i.bw = icmp sgt i32 %i.v, 0
  %i.bx = icmp sgt i32 %i.q, -1
end_hunk_0
