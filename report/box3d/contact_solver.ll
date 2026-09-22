Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3ApplyRestitution_Mesh:bb.a
  %shift515 = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop516 = fadd <2 x float> %i.ff, %shift515
  %i.fy = extractelement <2 x float> %foldExtExtBinop516, i64 0
  %i.fz = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = fmul <2 x float> %i.aj, %i.fz
  %i.gb = insertelement <2 x float> %i.fe, float %i.fb, i64 0
  %i.gc = fadd <2 x float> %i.gb, %i.ga
  %i.gd = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.fd, i64 0
  %i.gf = fadd <2 x float> %i.ge, %i.gc
  %i.gg = fadd <2 x float> %.sroa.0171.1460, %i.gf
  %i.gh = fadd float %.sroa.7174.1461, %i.fy
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0171.2 = phi <2 x float> [ %i.gg, %bb.g ], [ %.sroa.0171.1460, %bb.f ], [ %.sroa.0171.1460, %bb.e ] ; 2 uses
  %.sroa.7174.2 = phi float [ %i.gh, %bb.g ], [ %.sroa.7174.1461, %bb.f ], [ %.sroa.7174.1461, %bb.e ] ; 2 uses
  %.sroa.0177.2 = phi <2 x float> [ %i.es, %bb.g ], [ %.sroa.0177.1462, %bb.f ], [ %.sroa.0177.1462, %bb.e ] ; 2 uses
  %.sroa.7180.2 = phi float [ %i.eu, %bb.g ], [ %.sroa.7180.1463, %bb.f ], [ %.sroa.7180.1463, %bb.e ] ; 2 uses
  %.sroa.0183.2 = phi <2 x float> [ %i.fw, %bb.g ], [ %.sroa.0183.1464, %bb.f ], [ %.sroa.0183.1464, %bb.e ] ; 2 uses
  %.sroa.7186.2 = phi float [ %i.fx, %bb.g ], [ %.sroa.7186.1465, %bb.f ], [ %.sroa.7186.1465, %bb.e ] ; 2 uses
  %.sroa.0189.2 = phi <2 x float> [ %i.dy, %bb.g ], [ %.sroa.0189.1466, %bb.f ], [ %.sroa.0189.1466, %bb.e ] ; 2 uses
  %.sroa.7192.2 = phi float [ %i.eb, %bb.g ], [ %.sroa.7192.1467, %bb.f ], [ %.sroa.7192.1467, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !200

.cont374:                                         ; preds = %.cont365
  store <2 x float> %.sroa.0189.1.lcssa, ptr %i.y, align 4
  store float %.sroa.7192.1.lcssa, ptr %.sroa.gep337412417430, align 4, !tbaa !103
  store <2 x float> %.sroa.0183.1.lcssa, ptr %.sroa.gep339420427, align 4
  store float %.sroa.7186.1.lcssa, ptr %.sroa.gep342432, align 4, !tbaa !103
  br label %.cont365.thread

.cont365.thread:                                  ; preds = %._crit_edge, %.cont374, %.cont365
  br i1 %i.z, label %.cont.thread, label %.cont

.cont:                                            ; preds = %.cont365.thread
  %.else.val = load i32, ptr %.sroa.gep357, align 4, !tbaa !143
  %i.gi = and i32 %.else.val, 4096
  %.not241 = icmp eq i32 %i.gi, 0
  br i1 %.not241, label %.cont.thread, label %.cont370

.cont370:                                         ; preds = %.cont
  store <2 x float> %.sroa.0177.1.lcssa, ptr %i.ab, align 4
  store float %.sroa.7180.1.lcssa, ptr %.sroa.gep348436441454, align 4, !tbaa !103
  store <2 x float> %.sroa.0171.1.lcssa, ptr %.sroa.gep351444451, align 4
  store float %.sroa.7174.1.lcssa, ptr %.sroa.gep354456, align 4, !tbaa !103
  br label %.cont.thread

.cont.thread:                                     ; preds = %.cont365.thread, %.cont370, %.cont
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.loopexit, label %bb.d, !llvm.loop !201

.loopexit:                                        ; preds = %.cont.thread, %.cont372, %bb.b
  %indvars.iv.next497 = add nsw i64 %indvars.iv496, 1 ; 2 uses
  %i.gj = icmp slt i64 %indvars.iv.next497, %i.n
  br i1 %i.gj, label %bb.b, label %._crit_edge488, !llvm.loop !202
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3StoreImpulses_Mesh(i64 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.sroa.076.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = and i64 %0, 71776119061217280
  %i.e = icmp eq i64 %i.d, 1970324836974592       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3816
  %.080.in = select i1 %i.e, ptr %i.f, ptr %i.c
  %.079.in.v = select i1 %i.e, i64 176, i64 168
  %.079.in = getelementptr inbounds nuw i8, ptr %1, i64 %.079.in.v
  %.079 = load ptr, ptr %.079.in, align 8, !tbaa !87 ; 2 uses
  %.080 = load ptr, ptr %.080.in, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds [3848 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !153, !range !85, !noundef !86 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4440
  %i.n = load float, ptr %i.m, align 8, !tbaa !154
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.079, i64 %indvars.iv.next
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91
  %.not = icmp sgt i32 %i.p, %.sroa.076.0.extract.trunc
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !204

.preheader:                                       ; preds = %bb.b
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = fneg float %i.n
  %i.s = and i32 %.sroa.3.0.extract.trunc, 65535  ; 2 uses
  %i.t = add nsw i32 %i.s, %.sroa.076.0.extract.trunc ; 2 uses
  %.not120 = icmp eq i32 %i.s, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph118

.loopexit:                                        ; preds = %._crit_edge105, %.lr.ph118
  %.183.lcssa = phi i32 [ %.082116, %.lr.ph118 ], [ %i.x, %._crit_edge105 ] ; 2 uses
  %.1.lcssa = phi i8 [ %.081117, %.lr.ph118 ], [ %.2.lcssa, %._crit_edge105 ] ; 2 uses
  %i.u = icmp slt i32 %.183.lcssa, %i.t
  br i1 %i.u, label %.lr.ph118, label %._crit_edge, !llvm.loop !205

.lr.ph118:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.loopexit ], [ %indvars.iv, %.preheader ]
  %.081117 = phi i8 [ %.1.lcssa, %.loopexit ], [ %i.l, %.preheader ] ; 2 uses
  %.082116 = phi i32 [ %.183.lcssa, %.loopexit ], [ %.sroa.076.0.extract.trunc, %.preheader ] ; 3 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.079, i64 %indvars.iv.next144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = tail call noundef i32 @llvm.smin.i32(i32 %i.w, i32 %i.t) ; 3 uses
  %i.y = icmp slt i32 %.082116, %i.x
  br i1 %i.y, label %.lr.ph113.preheader, label %.loopexit

.lr.ph113.preheader:                              ; preds = %.lr.ph118
  %i.z = sext i32 %.082116 to i64
  %i.aa = sext i32 %i.x to i64
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %._crit_edge105
  %indvars.iv140 = phi i64 [ %i.z, %.lr.ph113.preheader ], [ %indvars.iv.next141, %._crit_edge105 ] ; 2 uses
  %.1112 = phi i8 [ %.081117, %.lr.ph113.preheader ], [ %.2.lcssa, %._crit_edge105 ] ; 3 uses
  %i.ab = getelementptr inbounds [168 x i8], ptr %.080, i64 %indvars.iv140 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 164
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %.lr.ph113
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !111
  %.fr121 = freeze i32 %i.ai
  %i.aj = and i32 %.fr121, 1048576
  %.not91.not = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %wide.trip.count138 = zext nneg i32 %i.ad to i64 ; 2 uses
  br i1 %.not91.not, label %.lr.ph104.split, label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %._crit_edge.split.us109
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %._crit_edge.split.us109 ], [ 0, %.lr.ph104 ] ; 3 uses
  %.2102.us = phi i8 [ %.3.lcssa.us, %._crit_edge.split.us109 ], [ %.1112, %.lr.ph104 ] ; 2 uses
  %.085100.us = phi i8 [ %.186.lcssa.us, %._crit_edge.split.us109 ], [ 0, %.lr.ph104 ] ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw [268 x i8], ptr %i.am, i64 %indvars.iv126 ; 5 uses
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw [308 x i8], ptr %i.ao, i64 %indvars.iv126 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 260
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 236
  store float %i.ar, ptr %i.as, align 4, !tbaa !135
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 284
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.av, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %i.ax, align 4
  %.sroa.213.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ap, i64 228
  %.sroa.213.0.copyload.us = load float, ptr %.sroa.213.0..sroa_idx.us, align 4
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !133 ; 2 uses
  %i.az = load float, ptr %i.au, align 4, !tbaa !132 ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %.sroa.014.0.copyload.us
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %.sroa.012.0.copyload.us
  %i.bg = fadd <2 x float> %i.bc, %i.bf
  %i.bh = fmul float %i.az, %.sroa.215.0.copyload.us
  %i.bi = fmul float %i.ay, %.sroa.213.0.copyload.us
  %i.bj = fadd float %i.bh, %i.bi
  store <2 x float> %i.bg, ptr %i.at, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  store float %i.bj, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !103
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !122
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !121 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.us.preheader, label %._crit_edge.split.us109

.lr.ph.us.preheader:                              ; preds = %.lr.ph104.split.us
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.d
  %indvars.iv124 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next125.a, %bb.d ] ; 3 uses
  %.396.us = phi i8 [ %.2102.us, %.lr.ph.us.preheader ], [ %.4.us, %bb.d ] ; 2 uses
  %.18695.us = phi i8 [ %.085100.us, %.lr.ph.us.preheader ], [ %.287.us, %bb.d ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv124 ; 3 uses
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %indvars.iv124 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !128
  %i.bv = load <2 x float>, ptr %i.br, align 4, !tbaa !103
  store <2 x float> %i.bv, ptr %i.bs, align 4, !tbaa !103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !130 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store float %i.bx, ptr %i.by, align 4, !tbaa !155
  %i.bz = icmp eq i8 %.18695.us, 0
  %i.ca = fcmp olt float %i.bx, %i.r
  %or.cond94.us = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond94.us, label %3, label %bb.d

3:                                                ; preds = %.lr.ph.us
  %4 = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %3
  %i.cb = load i32, ptr %i.al, align 8, !tbaa !156 ; 2 uses
  %.val.us = load ptr, ptr %i.q, align 8, !tbaa !157
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = and i32 %i.cb, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = zext nneg i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !158
  %i.cj = or i64 %i.cf, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !158
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %3, %.lr.ph.us
  %.287.us = phi i8 [ 1, %bb.c ], [ 0, %3 ], [ %.18695.us, %.lr.ph.us ] ; 2 uses
  %.4.us = phi i8 [ 1, %bb.c ], [ %.396.us, %3 ], [ %.396.us, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next125.a = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us109, label %.lr.ph.us, !llvm.loop !206

._crit_edge.split.us109:                          ; preds = %bb.d, %.lr.ph104.split.us
  %.186.lcssa.us = phi i8 [ %.085100.us, %.lr.ph104.split.us ], [ %.287.us, %bb.d ]
  %.3.lcssa.us = phi i8 [ %.2102.us, %.lr.ph104.split.us ], [ %.4.us, %bb.d ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count138
  br i1 %exitcond129.not, label %._crit_edge105, label %.lr.ph104.split.us, !llvm.loop !207

._crit_edge105:                                   ; preds = %._crit_edge.split.us109, %._crit_edge.split.us, %.lr.ph113
  %.2.lcssa = phi i8 [ %.1112, %.lr.ph113 ], [ %.1112, %._crit_edge.split.us ], [ %.3.lcssa.us, %._crit_edge.split.us109 ] ; 2 uses
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next141, %i.aa
  br i1 %exitcond142.not, label %.loopexit, label %.lr.ph113, !llvm.loop !208

.lr.ph104.split:                                  ; preds = %.lr.ph104, %._crit_edge.split.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %._crit_edge.split.us ], [ 0, %.lr.ph104 ] ; 3 uses
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !115
  %i.cl = getelementptr inbounds nuw [268 x i8], ptr %i.ck, i64 %indvars.iv135 ; 7 uses
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !114
  %i.cn = getelementptr inbounds nuw [308 x i8], ptr %i.cm, i64 %indvars.iv135 ; 12 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 260
  %i.cp = load float, ptr %i.co, align 4, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 236
  store float %i.cp, ptr %i.cq, align 4, !tbaa !135
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 280
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 208
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 284
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 220
  %.sroa.014.0.copyload = load <2 x float>, ptr %i.ct, align 4
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 216
  %.sroa.215.0.copyload = load float, ptr %.sroa.215.0..sroa_idx, align 4
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.cv, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 228
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !133 ; 2 uses
  %i.cx = load float, ptr %i.cs, align 4, !tbaa !132 ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cz, %.sroa.014.0.copyload
  %i.db = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.dc, %.sroa.012.0.copyload
  %i.de = fadd <2 x float> %i.da, %i.dd
  %i.df = fmul float %i.cx, %.sroa.215.0.copyload
  %i.dg = fmul float %i.cw, %.sroa.213.0.copyload
  %i.dh = fadd float %i.df, %i.dg
  store <2 x float> %i.de, ptr %i.cr, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 248
  store float %i.dh, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !103
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 252
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.di, ptr noundef nonnull align 4 dereferenceable(12) %i.dj, i64 12, i1 false), !tbaa.struct !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 192
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !121 ; 4 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.preheader, label %._crit_edge.split.us

.lr.ph.preheader:                                 ; preds = %.lr.ph104.split
  %wide.trip.count133 = zext nneg i32 %i.dl to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count133, 1
  %i.dn = icmp eq i32 %i.dl, 1
  br i1 %i.dn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count133, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next131.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %indvars.iv130 ; 2 uses
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %indvars.iv130 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !103
  store <2 x float> %i.ds, ptr %i.dr, align 4, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.du = load float, ptr %i.dt, align 4, !tbaa !130
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store float %i.du, ptr %i.dv, align 4, !tbaa !155
  %indvars.iv.next131 = or disjoint i64 %indvars.iv130, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %indvars.iv.next131 ; 2 uses
  %i.dx = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %indvars.iv.next131 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = load <2 x float>, ptr %i.dy, align 4, !tbaa !103
  store <2 x float> %i.ea, ptr %i.dz, align 4, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !130
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store float %i.ec, ptr %i.ed, align 4, !tbaa !155
  %indvars.iv.next131.1 = add nuw nsw i64 %indvars.iv130, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !206

._crit_edge.split.us.loopexit.unr-lcssa:          ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.split.us.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next131.1, %._crit_edge.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.dl to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %indvars.iv130.epil.init ; 2 uses
  %i.ef = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %indvars.iv130.epil.init ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ei = load <2 x float>, ptr %i.eg, align 4, !tbaa !103
  store <2 x float> %i.ei, ptr %i.eh, align 4, !tbaa !103
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !130
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store float %i.ek, ptr %i.el, align 4, !tbaa !155
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %.lr.ph.epil.preheader, %._crit_edge.split.us.loopexit.unr-lcssa, %.lr.ph104.split
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge105, label %.lr.ph104.split, !llvm.loop !207

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.081.lcssa = phi i8 [ %i.l, %.preheader ], [ %.1.lcssa, %.loopexit ]
  store i8 %.081.lcssa, ptr %i.k, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @b3GetWideContactConstraintByteCount() local_unnamed_addr #4 {
bb.a:
  ret i32 1696
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Convex(i64 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0686.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0664.0.copyload = load float, ptr %i.k, align 4, !tbaa !103
  %.sroa.4665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4665.0.copyload = load float, ptr %.sroa.4665.0..sroa_idx, align 8, !tbaa !103
  %.sroa.5666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5666.0.copyload = load float, ptr %.sroa.5666.0..sroa_idx, align 4, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0661.0.copyload = load float, ptr %i.l, align 8, !tbaa !103
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.4662.0.copyload = load float, ptr %.sroa.4662.0..sroa_idx, align 4, !tbaa !103
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5663.0.copyload = load float, ptr %.sroa.5663.0..sroa_idx, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4764
  %i.n = load i8, ptr %i.m, align 4, !tbaa !84, !range !85, !noundef !86
  %i.o = tail call float @b3GetLengthUnitsPerMeter() #13
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 8, !tbaa !162
  %.not = icmp sgt i32 %i.q, %.sroa.0686.0.extract.trunc
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !209

.preheader:                                       ; preds = %bb.b
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.r = trunc nuw i8 %i.n to i1
  %i.s = select i1 %i.r, float 1.000000e+00, float 0.000000e+00 ; 7 uses
  %i.t = fmul float %i.o, 5.000000e-03
  %i.u = fmul float %i.t, 4.000000e+00
  %i.v = fdiv float 1.000000e+00, %i.u
  %i.w = and i32 %.sroa.3.0.extract.trunc, 65535  ; 2 uses
  %i.x = add nsw i32 %i.w, %.sroa.0686.0.extract.trunc ; 2 uses
  %.not1183 = icmp eq i32 %i.w, 0
  br i1 %.not1183, label %._crit_edge1182, label %.lr.ph1181

.lr.ph1181:                                       ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4000
  br label %bb.c

.loopexit:                                        ; preds = %.critedge, %bb.c
  %.1.lcssa = phi i32 [ %.06891180, %bb.c ], [ %i.ad, %.critedge ] ; 2 uses
  %i.z = icmp slt i32 %.1.lcssa, %i.x
  br i1 %i.z, label %bb.c, label %._crit_edge1182, !llvm.loop !210

bb.c:                                             ; preds = %.lr.ph1181, %.loopexit
  %indvars.iv1208 = phi i64 [ %indvars.iv, %.lr.ph1181 ], [ %indvars.iv.next1209, %.loopexit ] ; 2 uses
end_hunk_0
