Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@WebPRescalerExportRowExpand_C:bb.a
  %xtraiter = and i64 %wide.trip.count45, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42.ph
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !23
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw i64 %i.al, %i.aj
  %i.an = add nuw i64 %i.am, 2147483648
  %i.ao = lshr i64 %i.an, 32                      ; 2 uses
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = icmp sgt i32 %i.ap, 255
  %i.ar = trunc i64 %i.ao to i8
  %i.as = select i1 %i.aq, i8 -1, i8 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42.ph
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %indvars.iv.next43.prol = or disjoint i64 %indvars.iv42.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %indvars.iv42.unr = phi i64 [ %indvars.iv42.ph, %scalar.ph82.preheader ], [ %indvars.iv.next43.prol, %scalar.ph82.prol ]
  %i.au = add nsw i64 %wide.trip.count45, -1
  %i.av = icmp eq i64 %indvars.iv42.ph, %i.au
  br i1 %i.av, label %.loopexit, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %scalar.ph82 ], [ %indvars.iv42.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = zext i32 %i.ax to i64
  %i.az = load i32, ptr %i.p, align 8, !tbaa !23
  %i.ba = zext i32 %i.az to i64
  %i.bb = mul nuw i64 %i.ba, %i.ay
  %i.bc = add nuw i64 %i.bb, 2147483648
  %i.bd = lshr i64 %i.bc, 32                      ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = icmp sgt i32 %i.be, 255
  %i.bg = trunc i64 %i.bd to i8
  %i.bh = select i1 %i.bf, i8 -1, i8 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next43
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.bl
  %i.bp = add nuw i64 %i.bo, 2147483648
  %i.bq = lshr i64 %i.bp, 32                      ; 2 uses
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = icmp sgt i32 %i.br, 255
  %i.bt = trunc i64 %i.bq to i8
  %i.bu = select i1 %i.bs, i8 -1, i8 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next43
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %exitcond46.not.1 = icmp eq i64 %indvars.iv.next43.1, %wide.trip.count45
  br i1 %exitcond46.not.1, label %.loopexit, label %scalar.ph82, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.bw = sub nsw i32 0, %i.m
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !51
  %i.cb = sext i32 %i.ca to i64
  %i.cc = udiv i64 %i.by, %i.cb                   ; 2 uses
  %i.cd = and i64 %i.cc, 4294967295               ; 2 uses
  %i.ce = icmp sgt i32 %i.i, 0
  br i1 %i.ce, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.cf = sub i64 0, %i.cc
  %i.cg = and i64 %i.cf, 4294967295               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.cj = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.k, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.cm = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %i.b, %i.ck
  %bound1 = icmp ult ptr %i.k, %i.ci
  %found.conflict = and i1 %bound0, %bound1
  %bound060 = icmp ult ptr %i.b, %i.cl
  %bound161 = icmp ult ptr %i.d, %i.ci
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict, %found.conflict62
  %bound063 = icmp ult ptr %i.b, %i.cm
  %bound164 = icmp ult ptr %i.ch, %i.ci
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx, %found.conflict65
  br i1 %conflict.rdx66, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.cn = load i32, ptr %i.ch, align 8, !tbaa !23, !alias.scope !52
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.co = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert67 = insertelement <4 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat68 = shufflevector <4 x i64> %broadcast.splatinsert67, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat70 = shufflevector <4 x i64> %broadcast.splatinsert69, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !17, !alias.scope !53
  %i.cq = zext <4 x i32> %wide.load to <4 x i64>
  %i.cr = mul nuw <4 x i64> %broadcast.splat68, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load71 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !17, !alias.scope !54
  %i.ct = zext <4 x i32> %wide.load71 to <4 x i64>
  %i.cu = mul nuw <4 x i64> %broadcast.splat70, %i.ct
  %i.cv = add nuw <4 x i64> %i.cr, splat (i64 2147483648)
  %i.cw = add <4 x i64> %i.cv, %i.cu
  %i.cx = lshr <4 x i64> %i.cw, splat (i64 32)
  %i.cy = mul nuw <4 x i64> %i.cx, %i.co
  %i.cz = add nuw <4 x i64> %i.cy, splat (i64 2147483648)
  %i.da = lshr <4 x i64> %i.cz, splat (i64 32)    ; 2 uses
  %i.db = trunc nuw <4 x i64> %i.da to <4 x i32>
  %i.dc = icmp sgt <4 x i32> %i.db, splat (i32 255)
  %i.dd = trunc <4 x i64> %i.da to <4 x i8>
  %i.de = select <4 x i1> %i.dc, <4 x i8> splat (i8 -1), <4 x i8> %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.de, ptr %i.df, align 1, !tbaa !16, !alias.scope !55, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw i64 %i.cg, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !17
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.cd, %i.dn
  %i.dp = add nuw i64 %i.dk, 2147483648
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = lshr i64 %i.dq, 32
  %i.ds = load i32, ptr %i.ch, align 8, !tbaa !23
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul nuw i64 %i.dr, %i.dt
  %i.dv = add nuw i64 %i.du, 2147483648
  %i.dw = lshr i64 %i.dv, 32                      ; 2 uses
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 255
  %i.dz = trunc i64 %i.dw to i8
  %i.ea = select i1 %i.dy, i8 -1, i8 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !46

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block, %middle.block100, %bb.b, %.preheader
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
  %i.q = sub i32 0, %i.p
  %i.r = icmp sgt i32 %i.i, 0
  br i1 %i.r, label %.preheader, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.s = zext i32 %i.q to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 %i.v     ; 3 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %i.v     ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %bound0 = icmp ult ptr %i.b, %i.w
  %bound1 = icmp ult ptr %i.d, %i.u
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %i.b, %i.x
  %bound170 = icmp ult ptr %i.k, %i.u
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  %bound072 = icmp ult ptr %i.b, %i.y
  %bound173 = icmp ult ptr %i.t, %i.u
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx, %found.conflict74
  %bound076 = icmp ult ptr %i.d, %i.x
  %bound177 = icmp ult ptr %i.k, %i.w
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  %bound080 = icmp ult ptr %i.d, %i.y
  %bound181 = icmp ult ptr %i.t, %i.w
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  br i1 %conflict.rdx83, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !26, !alias.scope !70
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aa = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert84 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat85 = shufflevector <4 x i64> %broadcast.splatinsert84, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ab, align 4, !tbaa !17, !alias.scope !71
  %i.ac = zext <4 x i32> %wide.load to <4 x i64>
  %i.ad = mul nuw <4 x i64> %broadcast.splat85, %i.ac
  %i.ae = lshr <4 x i64> %i.ad, splat (i64 32)
  %i.af = trunc nuw <4 x i64> %i.ae to <4 x i32>  ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %i.ah = sub <4 x i32> %wide.load86, %i.af
  %i.ai = zext <4 x i32> %i.ah to <4 x i64>
  %i.aj = mul nuw <4 x i64> %i.ai, %i.aa
  %i.ak = add nuw <4 x i64> %i.aj, splat (i64 2147483648)
  %i.al = lshr <4 x i64> %i.ak, splat (i64 32)    ; 2 uses
  %i.am = trunc nuw <4 x i64> %i.al to <4 x i32>
  %i.an = icmp sgt <4 x i32> %i.am, splat (i32 255)
  %i.ao = trunc <4 x i64> %i.al to <4 x i8>
  %i.ap = select <4 x i1> %i.an, <4 x i8> splat (i8 -1), <4 x i8> %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !16, !alias.scope !74, !noalias !75
  store <4 x i32> %i.af, ptr %i.ag, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.lr.ph41, label %.lr.ph

.lr.ph41:                                         ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %wide.trip.count47 = zext nneg i32 %i.i to i64  ; 7 uses
  %min.iters.check102 = icmp ult i32 %i.i, 12
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph41
  %i.at = getelementptr i8, ptr %i.b, i64 %wide.trip.count47 ; 2 uses
  %i.au = shl nuw nsw i64 %wide.trip.count47, 2
  %i.av = getelementptr i8, ptr %i.d, i64 %i.au   ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %bound0104 = icmp ult ptr %i.b, %i.av
  %bound1105 = icmp ult ptr %i.d, %i.at
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %i.b, %i.aw
  %bound1108 = icmp ult ptr %i.as, %i.at
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  %bound0111 = icmp ult ptr %i.d, %i.aw
  %bound1112 = icmp ult ptr %i.as, %i.av
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br i1 %conflict.rdx114, label %scalar.ph101.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck103
  %n.vec116 = and i64 %wide.trip.count47, 2147483644 ; 3 uses
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !26, !alias.scope !76
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = zext <4 x i32> %broadcast.splat118 to <4 x i64>
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph115
  %index120 = phi i64 [ 0, %vector.ph115 ], [ %index.next122, %vector.body119 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index120 ; 2 uses
  %wide.load121 = load <4 x i32>, ptr %i.az, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %i.ba = zext <4 x i32> %wide.load121 to <4 x i64>
  %i.bb = mul nuw <4 x i64> %i.ay, %i.ba
  %i.bc = add nuw <4 x i64> %i.bb, splat (i64 2147483648)
  %i.bd = lshr <4 x i64> %i.bc, splat (i64 32)    ; 2 uses
  %i.be = trunc nuw <4 x i64> %i.bd to <4 x i32>
  %i.bf = icmp sgt <4 x i32> %i.be, splat (i32 255)
  %i.bg = trunc <4 x i64> %i.bd to <4 x i8>
  %i.bh = select <4 x i1> %i.bf, <4 x i8> splat (i8 -1), <4 x i8> %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %index120
  store <4 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !16, !alias.scope !78, !noalias !79
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bj, label %middle.block123, label %vector.body119, !llvm.loop !67

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %n.vec116, %wide.trip.count47
  br i1 %cmp.n124, label %.loopexit, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %vector.memcheck103, %.lr.ph41, %middle.block123
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %.lr.ph41 ], [ %n.vec116, %middle.block123 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44.ph ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.as, align 4, !tbaa !26
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.bm
  %i.bq = add nuw i64 %i.bp, 2147483648
  %i.br = lshr i64 %i.bq, 32                      ; 2 uses
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = icmp sgt i32 %i.bs, 255
  %i.bu = trunc i64 %i.br to i8
  %i.bv = select i1 %i.bt, i8 -1, i8 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44.ph
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !16
  store i32 0, ptr %i.bk, align 4, !tbaa !17
  %indvars.iv.next45.prol = or disjoint i64 %indvars.iv44.ph, 1
  br label %scalar.ph101.prol.loopexit

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %scalar.ph101.preheader ], [ %indvars.iv.next45.prol, %scalar.ph101.prol ]
  %i.bx = add nsw i64 %wide.trip.count47, -1
  %i.by = icmp eq i64 %indvars.iv44.ph, %i.bx
  br i1 %i.by, label %.loopexit, label %scalar.ph101

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.cb = zext i32 %i.ca to i64
  %i.cc = mul nuw i64 %i.cb, %i.s
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = trunc nuw i64 %i.cd to i32              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = sub i32 %i.cg, %i.ce
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load i32, ptr %i.t, align 4, !tbaa !26
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nuw i64 %i.ci, %i.ck
  %i.cm = add nuw i64 %i.cl, 2147483648
  %i.cn = lshr i64 %i.cm, 32                      ; 2 uses
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, 255
  %i.cq = trunc i64 %i.cn to i8
  %i.cr = select i1 %i.cp, i8 -1, i8 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !16
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !68

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.1, %scalar.ph101 ], [ %indvars.iv44.unr, %scalar.ph101.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !26
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = add nuw i64 %i.cy, 2147483648
  %i.da = lshr i64 %i.cz, 32                      ; 2 uses
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = icmp sgt i32 %i.db, 255
  %i.dd = trunc i64 %i.da to i8
  %i.de = select i1 %i.dc, i8 -1, i8 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44
  store i8 %i.de, ptr %i.df, align 1, !tbaa !16
  store i32 0, ptr %i.ct, align 4, !tbaa !17
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !17
  %i.di = zext i32 %i.dh to i64
  %i.dj = load i32, ptr %i.as, align 4, !tbaa !26
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.dk, %i.di
  %i.dm = add nuw i64 %i.dl, 2147483648
  %i.dn = lshr i64 %i.dm, 32                      ; 2 uses
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = icmp sgt i32 %i.do, 255
  %i.dq = trunc i64 %i.dn to i8
  %i.dr = select i1 %i.dp, i8 -1, i8 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next45
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !16
  store i32 0, ptr %i.dg, align 4, !tbaa !17
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %exitcond48.not.1 = icmp eq i64 %indvars.iv.next45.1, %wide.trip.count47
  br i1 %exitcond48.not.1, label %.loopexit, label %scalar.ph101, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block, %middle.block123, %bb.a
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
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %1) #5
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
  tail call void %i.ac(ptr noundef nonnull %0) #5
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
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @WebPRescalerDspInit_body_lock) #5
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
  %i.d = tail call i32 %i.c(i32 noundef 0) #5, !inline_history !86
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %WebPRescalerDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @WebPRescalerDspInitSSE2() #5
  br label %WebPRescalerDspInit_body.exit

WebPRescalerDspInit_body.exit:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27
  store ptr %i.e, ptr @WebPRescalerDspInit_body_last_cpuinfo_used, align 8, !tbaa !27
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @WebPRescalerDspInit_body_lock) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %WebPRescalerDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @WebPRescalerDspInitSSE2() local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
end_hunk_0
