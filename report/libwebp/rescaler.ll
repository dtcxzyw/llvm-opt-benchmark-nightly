Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@WebPRescalerExportRowExpand_C:bb.a
  %indvars.iv42.ph = phi i64 [ 0, %vector.memcheck65 ], [ 0, %.lr.ph39 ], [ %n.vec79, %middle.block86 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count45, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph76.prol.loopexit, label %scalar.ph76.prol

scalar.ph76.prol:                                 ; preds = %scalar.ph76.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42.ph
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !23
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul nuw i64 %i.ai, %i.ag
  %i.ak = add nuw i64 %i.aj, 2147483648
  %i.al = lshr i64 %i.ak, 32                      ; 2 uses
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = icmp sgt i32 %i.am, 255
  %i.ao = trunc i64 %i.al to i8
  %i.ap = select i1 %i.an, i8 -1, i8 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42.ph
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !16
  %indvars.iv.next43.prol = or disjoint i64 %indvars.iv42.ph, 1
  br label %scalar.ph76.prol.loopexit

scalar.ph76.prol.loopexit:                        ; preds = %scalar.ph76.prol, %scalar.ph76.preheader
  %indvars.iv42.unr = phi i64 [ %indvars.iv42.ph, %scalar.ph76.preheader ], [ %indvars.iv.next43.prol, %scalar.ph76.prol ]
  %i.ar = add nsw i64 %wide.trip.count45, -1
  %i.as = icmp eq i64 %indvars.iv42.ph, %i.ar
  br i1 %i.as, label %.loopexit, label %scalar.ph76

scalar.ph76:                                      ; preds = %scalar.ph76.prol.loopexit, %scalar.ph76
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %scalar.ph76 ], [ %indvars.iv42.unr, %scalar.ph76.prol.loopexit ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42
  %i.au = load i32, ptr %i.at, align 4, !tbaa !17
  %i.av = zext i32 %i.au to i64
  %i.aw = load i32, ptr %i.p, align 8, !tbaa !23
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.av
  %i.az = add nuw i64 %i.ay, 2147483648
  %i.ba = lshr i64 %i.az, 32                      ; 2 uses
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = icmp sgt i32 %i.bb, 255
  %i.bd = trunc i64 %i.ba to i8
  %i.be = select i1 %i.bc, i8 -1, i8 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next43
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.bi
  %i.bm = add nuw i64 %i.bl, 2147483648
  %i.bn = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = icmp sgt i32 %i.bo, 255
  %i.bq = trunc i64 %i.bn to i8
  %i.br = select i1 %i.bp, i8 -1, i8 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next43
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %exitcond46.not.1 = icmp eq i64 %indvars.iv.next43.1, %wide.trip.count45
  br i1 %exitcond46.not.1, label %.loopexit, label %scalar.ph76, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.bt = sub nsw i32 0, %i.m
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !51
  %i.by = sext i32 %i.bx to i64
  %i.bz = udiv i64 %i.bv, %i.by                   ; 2 uses
  %i.ca = and i64 %i.bz, 4294967295               ; 2 uses
  %i.cb = icmp sgt i32 %i.i, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.cc = sub i64 0, %i.bz
  %i.cd = and i64 %i.cc, 4294967295               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.cf = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.cf
  %scevgep51 = getelementptr i8, ptr %i.d, i64 %i.cf
  %scevgep52 = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %i.b, %scevgep50
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound053 = icmp ult ptr %i.b, %scevgep51
  %bound154 = icmp ult ptr %i.d, %scevgep
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  %bound056 = icmp ult ptr %i.b, %scevgep52
  %bound157 = icmp ult ptr %i.ce, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx, %found.conflict58
  br i1 %conflict.rdx59, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !23, !alias.scope !52
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ch = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert60 = insertelement <4 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat61 = shufflevector <4 x i64> %broadcast.splatinsert60, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <4 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat63 = shufflevector <4 x i64> %broadcast.splatinsert62, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !17, !alias.scope !53
  %i.cj = zext <4 x i32> %wide.load to <4 x i64>
  %i.ck = mul nuw <4 x i64> %broadcast.splat61, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load64 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !17, !alias.scope !54
  %i.cm = zext <4 x i32> %wide.load64 to <4 x i64>
  %i.cn = mul nuw <4 x i64> %broadcast.splat63, %i.cm
  %i.co = add nuw <4 x i64> %i.ck, splat (i64 2147483648)
  %i.cp = add <4 x i64> %i.co, %i.cn
  %i.cq = lshr <4 x i64> %i.cp, splat (i64 32)
  %i.cr = mul nuw <4 x i64> %i.cq, %i.ch
  %i.cs = add nuw <4 x i64> %i.cr, splat (i64 2147483648)
  %i.ct = lshr <4 x i64> %i.cs, splat (i64 32)    ; 2 uses
  %i.cu = trunc nuw <4 x i64> %i.ct to <4 x i32>
  %i.cv = icmp sgt <4 x i32> %i.cu, splat (i32 255)
  %i.cw = trunc <4 x i64> %i.ct to <4 x i8>
  %i.cx = select <4 x i1> %i.cv, <4 x i8> splat (i8 -1), <4 x i8> %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !16, !alias.scope !55, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.db = load i32, ptr %i.da, align 4, !tbaa !17
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw i64 %i.cd, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !17
  %i.dg = zext i32 %i.df to i64
  %i.dh = mul nuw i64 %i.ca, %i.dg
  %i.di = add nuw i64 %i.dd, 2147483648
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = lshr i64 %i.dj, 32
  %i.dl = load i32, ptr %i.ce, align 8, !tbaa !23
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw i64 %i.dk, %i.dm
  %i.do = add nuw i64 %i.dn, 2147483648
  %i.dp = lshr i64 %i.do, 32                      ; 2 uses
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = icmp sgt i32 %i.dq, 255
  %i.ds = trunc i64 %i.dp to i8
  %i.dt = select i1 %i.dr, i8 -1, i8 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !46

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph76.prol.loopexit, %scalar.ph76, %middle.block, %middle.block86, %bb.b, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerExportRowShrink_C(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = mul i32 %i.h, %i.f                       ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.t = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.d, i64 %i.t ; 3 uses
  %scevgep52 = getelementptr i8, ptr %i.k, i64 %i.t ; 2 uses
  %scevgep53 = getelementptr i8, ptr %0, i64 24   ; 2 uses
  %bound0 = icmp ult ptr %i.b, %scevgep51
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %i.b, %scevgep52
  %bound155 = icmp ult ptr %i.k, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  %bound057 = icmp ult ptr %i.b, %scevgep53
  %bound158 = icmp ult ptr %i.s, %scevgep
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx, %found.conflict59
  %bound061 = icmp ult ptr %i.d, %scevgep52
  %bound162 = icmp ult ptr %i.k, %scevgep51
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %i.d, %scevgep53
  %bound166 = icmp ult ptr %i.s, %scevgep51
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  br i1 %conflict.rdx68, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !26, !alias.scope !70
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.v = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert69 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat70 = shufflevector <4 x i32> %broadcast.splatinsert69, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !17, !alias.scope !71
  %1 = tail call <4 x i32> @llvm.umulh.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat70) ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load71 = load <4 x i32>, ptr %i.x, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %i.y = sub <4 x i32> %wide.load71, %1
  %i.z = zext <4 x i32> %i.y to <4 x i64>
  %i.aa = mul nuw <4 x i64> %i.z, %i.v
  %i.ab = add nuw <4 x i64> %i.aa, splat (i64 2147483648)
  %i.ac = lshr <4 x i64> %i.ab, splat (i64 32)    ; 2 uses
  %i.ad = trunc nuw <4 x i64> %i.ac to <4 x i32>
  %i.ae = icmp sgt <4 x i32> %i.ad, splat (i32 255)
  %i.af = trunc <4 x i64> %i.ac to <4 x i8>
  %i.ag = select <4 x i1> %i.ae, <4 x i8> splat (i8 -1), <4 x i8> %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.ag, ptr %i.ah, align 1, !tbaa !16, !alias.scope !74, !noalias !75
  store <4 x i32> %1, ptr %i.x, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.r, label %.lr.ph41, label %.loopexit

.lr.ph41:                                         ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %wide.trip.count47 = zext nneg i32 %i.i to i64  ; 7 uses
  %min.iters.check88 = icmp ult i32 %i.i, 12
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph41
  %scevgep73 = getelementptr i8, ptr %i.b, i64 %wide.trip.count47 ; 2 uses
  %i.ak = shl nuw nsw i64 %wide.trip.count47, 2
  %scevgep74 = getelementptr i8, ptr %i.d, i64 %i.ak ; 2 uses
  %scevgep75 = getelementptr i8, ptr %0, i64 24   ; 2 uses
  %bound076 = icmp ult ptr %i.b, %scevgep74
  %bound177 = icmp ult ptr %i.d, %scevgep73
  %found.conflict78 = and i1 %bound076, %bound177
  %bound079 = icmp ult ptr %i.b, %scevgep75
  %bound180 = icmp ult ptr %i.aj, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %found.conflict78, %found.conflict81
  %bound083 = icmp ult ptr %i.d, %scevgep75
  %bound184 = icmp ult ptr %i.aj, %scevgep74
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82, %found.conflict85
  br i1 %conflict.rdx86, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck72
  %n.vec90 = and i64 %wide.trip.count47, 2147483644 ; 3 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !26, !alias.scope !76
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = zext <4 x i32> %broadcast.splat92 to <4 x i64>
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body93 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index94 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %i.an, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %i.ao = zext <4 x i32> %wide.load95 to <4 x i64>
  %i.ap = mul nuw <4 x i64> %i.am, %i.ao
  %i.aq = add nuw <4 x i64> %i.ap, splat (i64 2147483648)
  %i.ar = lshr <4 x i64> %i.aq, splat (i64 32)    ; 2 uses
  %i.as = trunc nuw <4 x i64> %i.ar to <4 x i32>
  %i.at = icmp sgt <4 x i32> %i.as, splat (i32 255)
  %i.au = trunc <4 x i64> %i.ar to <4 x i8>
  %i.av = select <4 x i1> %i.at, <4 x i8> splat (i8 -1), <4 x i8> %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %index94
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !16, !alias.scope !78, !noalias !79
  store <4 x i32> zeroinitializer, ptr %i.an, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.ax, label %middle.block97, label %vector.body93, !llvm.loop !67

middle.block97:                                   ; preds = %vector.body93
  %cmp.n98 = icmp eq i64 %n.vec90, %wide.trip.count47
  br i1 %cmp.n98, label %.loopexit, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %vector.memcheck72, %.lr.ph41, %middle.block97
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %.lr.ph41 ], [ %n.vec90, %middle.block97 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph87.prol.loopexit, label %scalar.ph87.prol

scalar.ph87.prol:                                 ; preds = %scalar.ph87.preheader
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44.ph ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !17
  %i.ba = zext i32 %i.az to i64
  %i.bb = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ba
  %i.be = add nuw i64 %i.bd, 2147483648
  %i.bf = lshr i64 %i.be, 32                      ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bg, 255
  %i.bi = trunc i64 %i.bf to i8
  %i.bj = select i1 %i.bh, i8 -1, i8 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44.ph
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  store i32 0, ptr %i.ay, align 4, !tbaa !17
  %indvars.iv.next45.prol = or disjoint i64 %indvars.iv44.ph, 1
  br label %scalar.ph87.prol.loopexit

scalar.ph87.prol.loopexit:                        ; preds = %scalar.ph87.prol, %scalar.ph87.preheader
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %scalar.ph87.preheader ], [ %indvars.iv.next45.prol, %scalar.ph87.prol ]
  %i.bl = add nsw i64 %wide.trip.count47, -1
  %i.bm = icmp eq i64 %indvars.iv44.ph, %i.bl
  br i1 %i.bm, label %.loopexit, label %scalar.ph87

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !17
  %2 = tail call i32 @llvm.umulh.i32(i32 %i.bo, i32 %i.q) ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17
  %i.br = sub i32 %i.bq, %2
  %i.bs = zext i32 %i.br to i64
  %i.bt = load i32, ptr %i.s, align 4, !tbaa !26
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul nuw i64 %i.bs, %i.bu
  %i.bw = add nuw i64 %i.bv, 2147483648
  %i.bx = lshr i64 %i.bw, 32                      ; 2 uses
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 255
  %i.ca = trunc i64 %i.bx to i8
  %i.cb = select i1 %i.bz, i8 -1, i8 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !16
  store i32 %2, ptr %i.bp, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !68

scalar.ph87:                                      ; preds = %scalar.ph87.prol.loopexit, %scalar.ph87
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.1, %scalar.ph87 ], [ %indvars.iv44.unr, %scalar.ph87.prol.loopexit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul nuw i64 %i.ch, %i.cf
  %i.cj = add nuw i64 %i.ci, 2147483648
  %i.ck = lshr i64 %i.cj, 32                      ; 2 uses
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 255
  %i.cn = trunc i64 %i.ck to i8
  %i.co = select i1 %i.cm, i8 -1, i8 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !16
  store i32 0, ptr %i.cd, align 4, !tbaa !17
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul nuw i64 %i.cu, %i.cs
  %i.cw = add nuw i64 %i.cv, 2147483648
  %i.cx = lshr i64 %i.cw, 32                      ; 2 uses
  %i.cy = trunc nuw i64 %i.cx to i32
  %i.cz = icmp sgt i32 %i.cy, 255
  %i.da = trunc i64 %i.cx to i8
  %i.db = select i1 %i.cz, i8 -1, i8 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next45
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !16
  store i32 0, ptr %i.cq, align 4, !tbaa !17
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %exitcond48.not.1 = icmp eq i64 %indvars.iv.next45.1, %wide.trip.count47
  br i1 %exitcond48.not.1, label %.loopexit, label %scalar.ph87, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph87.prol.loopexit, %scalar.ph87, %middle.block, %middle.block97, %.preheader37, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @WebPRescalerImportRow(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !80
  %.not = icmp eq i32 %i.a, 0
  %WebPRescalerImportRowShrink.val = load ptr, ptr @WebPRescalerImportRowShrink, align 8
  %WebPRescalerImportRowExpand.val = load ptr, ptr @WebPRescalerImportRowExpand, align 8
  %i.b = select i1 %.not, ptr %WebPRescalerImportRowShrink.val, ptr %WebPRescalerImportRowExpand.val
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @WebPRescalerExportRow(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !12
  %i.k = load i32, ptr %i.i, align 4, !tbaa !13
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = trunc i32 %i.r to i8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  store i8 %i.s, ptr %i.u, align 1, !tbaa !16
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 0, ptr %i.w, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !12
  %i.y = load i32, ptr %i.i, align 4, !tbaa !13
  %i.z = mul nsw i32 %i.y, %i.x
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.d, label %.loopexit, !llvm.loop !81

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %WebPRescalerExportRowShrink.sink = phi ptr [ @WebPRescalerExportRowExpand, %bb.b ], [ @WebPRescalerExportRowShrink, %bb.c ]
  %i.ac = load ptr, ptr %WebPRescalerExportRowShrink.sink, align 8, !tbaa !27
  tail call void %i.ac(ptr noundef nonnull %0) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = load i32, ptr %i.a, align 8, !tbaa !22
  %i.ag = add nsw i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !85
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @WebPRescalerDspInit() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @WebPRescalerDspInit_body_lock) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @WebPRescalerDspInit_body_last_cpuinfo_used, align 8, !tbaa !27
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %WebPRescalerDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @WebPRescalerExportRowExpand_C, ptr @WebPRescalerExportRowExpand, align 8, !tbaa !27
  store ptr @WebPRescalerExportRowShrink_C, ptr @WebPRescalerExportRowShrink, align 8, !tbaa !27
  store ptr @WebPRescalerImportRowExpand_C, ptr @WebPRescalerImportRowExpand, align 8, !tbaa !27
  store ptr @WebPRescalerImportRowShrink_C, ptr @WebPRescalerImportRowShrink, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %WebPRescalerDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #6, !inline_history !86
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %WebPRescalerDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @WebPRescalerDspInitSSE2() #6
  br label %WebPRescalerDspInit_body.exit

WebPRescalerDspInit_body.exit:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27
  store ptr %i.e, ptr @WebPRescalerDspInit_body_last_cpuinfo_used, align 8, !tbaa !27
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @WebPRescalerDspInit_body_lock) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %WebPRescalerDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @WebPRescalerDspInitSSE2() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umulh.v4i32(<4 x i32>, <4 x i32>) #5

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"WebPRescaler", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !9, i64 72, !5, i64 80, !10, i64 88, !10, i64 96}
!12 = !{!11, !5, i64 8}
!13 = !{!11, !5, i64 52}
!14 = !{!11, !5, i64 36}
!15 = !{!11, !10, i64 96}
!16 = !{!4, !4, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !5, i64 40}
!20 = !{!11, !9, i64 72}
!21 = !{!11, !10, i64 88}
!22 = !{!11, !5, i64 24}
!23 = !{!11, !5, i64 16}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!11, !5, i64 20}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !18}
!29 = !{!11, !5, i64 44}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = !{!11, !5, i64 12}
!34 = distinct !{!34, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !18, !24, !25}
!39 = distinct !{!39, !18, !24}
!40 = distinct !{!40, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !18, !24, !25}
!46 = distinct !{!46, !18, !24}
!47 = !{!35}
!48 = !{!36}
!49 = !{!37}
!50 = !{!36, !35}
!51 = !{!11, !5, i64 32}
!52 = !{!41}
!53 = !{!42}
!54 = !{!43}
!55 = !{!44}
!56 = !{!42, !43, !41}
!57 = distinct !{!57, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !18, !24, !25}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !18, !24, !25}
!68 = distinct !{!68, !18, !24}
!69 = distinct !{!69, !18, !24}
!70 = !{!58}
!71 = !{!59}
!72 = !{!60}
!73 = !{!59, !58}
!74 = !{!61}
!75 = !{!60, !59, !58}
!76 = !{!64}
!77 = !{!65}
!78 = !{!66}
!79 = !{!65, !64}
!80 = !{!11, !5, i64 0}
!81 = distinct !{!81, !18}
!82 = !{!11, !5, i64 4}
!83 = !{!11, !5, i64 28}
!84 = !{!11, !5, i64 80}
!85 = !{!11, !5, i64 64}
!86 = distinct !{null}
end_hunk_0
