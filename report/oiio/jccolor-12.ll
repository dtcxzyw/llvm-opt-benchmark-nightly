Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jccolor-12?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rgb_gray_convert:bb.a
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %..loopexit71_crit_edge, label %bb.i, !llvm.loop !71

bb.j:                                             ; preds = %bb.a, %bb.a
  br i1 %i.i, label %.lr.ph87, label %extrgb_gray_convert_internal.exit

.lr.ph87:                                         ; preds = %bb.j
  %i.ep = load ptr, ptr %2, align 8, !tbaa !51
  %.not118 = icmp eq i32 %i.h, 0
  br i1 %.not118, label %extrgb_gray_convert_internal.exit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %.lr.ph87
  %wide.trip.count140 = zext i32 %i.h to i64
  br label %.lr.ph84

..loopexit73_crit_edge:                           ; preds = %bb.k
  %i.eq = add nsw i32 %.in119, -1
  %i.er = getelementptr inbounds nuw i8, ptr %.025.i5085, i64 8
  %i.es = add i32 %.024.i5186, 1
  %i.et = icmp sgt i32 %.in119, 1
  br i1 %i.et, label %.lr.ph84, label %extrgb_gray_convert_internal.exit, !llvm.loop !72

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %..loopexit73_crit_edge
  %.in119 = phi i32 [ %i.eq, %..loopexit73_crit_edge ], [ %4, %.lr.ph84.preheader ] ; 2 uses
  %.024.i5186 = phi i32 [ %i.es, %..loopexit73_crit_edge ], [ %3, %.lr.ph84.preheader ] ; 2 uses
  %.025.i5085 = phi ptr [ %i.er, %..loopexit73_crit_edge ], [ %1, %.lr.ph84.preheader ] ; 2 uses
  %i.eu = load ptr, ptr %.025.i5085, align 8, !tbaa !58
  %i.ev = zext i32 %.024.i5186 to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph84, %bb.k
  %indvars.iv137 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next138, %bb.k ] ; 2 uses
  %.022.i5382 = phi ptr [ %i.eu, %.lr.ph84 ], [ %i.fh, %bb.k ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.022.i5382, i64 6
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !53
  %i.fa = and i16 %i.ez, 4095
  %i.fb = getelementptr inbounds nuw i8, ptr %.022.i5382, i64 4
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !53
  %i.fd = and i16 %i.fc, 4095
  %i.fe = getelementptr inbounds nuw i8, ptr %.022.i5382, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !53
  %i.fg = and i16 %i.ff, 4095
  %i.fh = getelementptr inbounds nuw i8, ptr %.022.i5382, i64 8
  %i.fi = zext nneg i16 %i.fa to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !62
  %i.fl = zext nneg i16 %i.fd to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32768
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !62
  %i.fp = add nsw i64 %i.fo, %i.fk
  %i.fq = zext nneg i16 %i.fg to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 65536
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !62
  %i.fu = add nsw i64 %i.fp, %i.ft
  %i.fv = lshr i64 %i.fu, 16
  %i.fw = trunc i64 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv137
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !53
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %..loopexit73_crit_edge, label %bb.k, !llvm.loop !73

bb.l:                                             ; preds = %bb.a, %bb.a
  br i1 %i.i, label %.lr.ph81, label %extrgb_gray_convert_internal.exit

.lr.ph81:                                         ; preds = %bb.l
  %i.fy = load ptr, ptr %2, align 8, !tbaa !51
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %extrgb_gray_convert_internal.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph81
  %wide.trip.count = zext i32 %i.h to i64
  br label %.lr.ph

..loopexit75_crit_edge:                           ; preds = %bb.m
  %i.fz = add nsw i32 %.in, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.025.i5579, i64 8
  %i.gb = add i32 %.024.i5680, 1
  %i.gc = icmp sgt i32 %.in, 1
  br i1 %i.gc, label %.lr.ph, label %extrgb_gray_convert_internal.exit, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit75_crit_edge
  %.in = phi i32 [ %i.fz, %..loopexit75_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.024.i5680 = phi i32 [ %i.gb, %..loopexit75_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.025.i5579 = phi ptr [ %i.ga, %..loopexit75_crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.gd = load ptr, ptr %.025.i5579, align 8, !tbaa !58
  %i.ge = zext i32 %.024.i5680 to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.022.i5877 = phi ptr [ %i.gd, %.lr.ph ], [ %i.gq, %bb.m ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.022.i5877, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !53
  %i.gj = and i16 %i.gi, 4095
  %i.gk = getelementptr inbounds nuw i8, ptr %.022.i5877, i64 4
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !53
  %i.gm = and i16 %i.gl, 4095
  %i.gn = getelementptr inbounds nuw i8, ptr %.022.i5877, i64 6
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !53
  %i.gp = and i16 %i.go, 4095
  %i.gq = getelementptr inbounds nuw i8, ptr %.022.i5877, i64 8
  %i.gr = zext nneg i16 %i.gj to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !62
  %i.gu = zext nneg i16 %i.gm to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32768
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !62
  %i.gy = add nsw i64 %i.gx, %i.gt
  %i.gz = zext nneg i16 %i.gp to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 65536
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !62
  %i.hd = add nsw i64 %i.gy, %i.hc
  %i.he = lshr i64 %i.hd, 16
  %i.hf = trunc i64 %i.he to i16
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %indvars.iv
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit75_crit_edge, label %bb.m, !llvm.loop !75

bb.n:                                             ; preds = %bb.a
  br i1 %i.i, label %.lr.ph117, label %extrgb_gray_convert_internal.exit

.lr.ph117:                                        ; preds = %bb.n
  %i.hh = load ptr, ptr %2, align 8, !tbaa !51
  %.not128 = icmp eq i32 %i.h, 0
  br i1 %.not128, label %extrgb_gray_convert_internal.exit, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph117
  %wide.trip.count165 = zext i32 %i.h to i64
  br label %.lr.ph114

..loopexit_crit_edge:                             ; preds = %bb.o
  %i.hi = add nsw i32 %.in129, -1
  %i.hj = getelementptr inbounds nuw i8, ptr %.025.i60115, i64 8
  %i.hk = add i32 %.024.i61116, 1
  %i.hl = icmp sgt i32 %.in129, 1
  br i1 %i.hl, label %.lr.ph114, label %extrgb_gray_convert_internal.exit, !llvm.loop !76

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %..loopexit_crit_edge
  %.in129 = phi i32 [ %i.hi, %..loopexit_crit_edge ], [ %4, %.lr.ph114.preheader ] ; 2 uses
  %.024.i61116 = phi i32 [ %i.hk, %..loopexit_crit_edge ], [ %3, %.lr.ph114.preheader ] ; 2 uses
  %.025.i60115 = phi ptr [ %i.hj, %..loopexit_crit_edge ], [ %1, %.lr.ph114.preheader ] ; 2 uses
  %i.hm = load ptr, ptr %.025.i60115, align 8, !tbaa !58
  %i.hn = zext i32 %.024.i61116 to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph114, %bb.o
  %indvars.iv162 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next163, %bb.o ] ; 2 uses
  %.022.i63112 = phi ptr [ %i.hm, %.lr.ph114 ], [ %i.hy, %bb.o ] ; 4 uses
  %i.hq = load i16, ptr %.022.i63112, align 2, !tbaa !53
  %i.hr = and i16 %i.hq, 4095
  %i.hs = getelementptr inbounds nuw i8, ptr %.022.i63112, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !53
  %i.hu = and i16 %i.ht, 4095
  %i.hv = getelementptr inbounds nuw i8, ptr %.022.i63112, i64 4
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !53
  %i.hx = and i16 %i.hw, 4095
  %i.hy = getelementptr inbounds nuw i8, ptr %.022.i63112, i64 6
  %i.hz = zext nneg i16 %i.hr to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !62
  %i.ic = zext nneg i16 %i.hu to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32768
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !62
  %i.ig = add nsw i64 %i.if, %i.ib
  %i.ih = zext nneg i16 %i.hx to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 65536
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !62
  %i.il = add nsw i64 %i.ig, %i.ik
  %i.im = lshr i64 %i.il, 16
  %i.in = trunc i64 %i.im to i16
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv162
  store i16 %i.in, ptr %i.io, align 2, !tbaa !53
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %..loopexit_crit_edge, label %bb.o, !llvm.loop !77

extrgb_gray_convert_internal.exit:                ; preds = %..loopexit75_crit_edge, %..loopexit73_crit_edge, %..loopexit71_crit_edge, %..loopexit69_crit_edge, %..loopexit67_crit_edge, %..loopexit65_crit_edge, %..loopexit_crit_edge, %bb.l, %.lr.ph81, %bb.j, %.lr.ph87, %bb.h, %.lr.ph93, %bb.f, %.lr.ph99, %bb.d, %.lr.ph105, %bb.b, %.lr.ph111, %bb.n, %.lr.ph117
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @null_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 9 uses
  %i.e = icmp sgt i32 %4, 0                       ; 3 uses
  switch i32 %i.b, label %.preheader86 [
    i32 3, label %.preheader88
    i32 4, label %.preheader91
  ]

.preheader91:                                     ; preds = %bb.a
  br i1 %i.e, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %.preheader91
  %i.f = load ptr, ptr %2, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %.not114 = icmp eq i32 %i.d, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph97
  %wide.trip.count = zext i32 %i.d to i64         ; 7 uses
  %i.m = shl nuw nsw i64 %wide.trip.count, 1      ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count, 3
  %min.iters.check = icmp ult i32 %i.d, 24
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.p = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.preheader88:                                     ; preds = %bb.a
  br i1 %i.e, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.preheader88
  %i.q = load ptr, ptr %2, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %.not115 = icmp eq i32 %i.d, 0
  br i1 %.not115, label %.loopexit, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.lr.ph103
  %wide.trip.count125 = zext i32 %i.d to i64      ; 7 uses
  %i.v = shl nuw nsw i64 %wide.trip.count125, 1   ; 3 uses
  %i.w = mul nuw nsw i64 %wide.trip.count125, 6
  %min.iters.check221 = icmp ult i32 %i.d, 16
  %n.vec223 = and i64 %wide.trip.count125, 4294967288 ; 4 uses
  %i.x = mul nuw nsw i64 %n.vec223, 6
  %cmp.n236 = icmp eq i64 %n.vec223, %wide.trip.count125
  %xtraiter246 = and i64 %wide.trip.count125, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %i.y = add nsw i64 %wide.trip.count125, -1
  br label %.lr.ph100

.preheader86:                                     ; preds = %bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader86
  %i.z = icmp slt i32 %i.b, 1
  %.not117 = icmp eq i32 %i.d, 0
  %5 = zext i32 %i.b to i64                       ; 6 uses
  %brmerge = select i1 %i.z, i1 true, i1 %.not117
  br i1 %brmerge, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count130 = zext i32 %i.d to i64      ; 2 uses
  %xtraiter248 = and i64 %wide.trip.count130, 3   ; 3 uses
  %i.aa = add i32 %i.d, -1
  %i.ab = icmp ult i32 %i.aa, 3
  %unroll_iter = and i64 %wide.trip.count130, 4294967292
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = icmp ne i64 %xtraiter248, 0
  br label %.preheader

..loopexit87_crit_edge:                           ; preds = %scalar.ph220.prol.loopexit, %scalar.ph220, %middle.block235
  %i.ac = add nsw i32 %.in116, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.079101, i64 8
  %i.ae = add i32 %.076102, 1
  %i.af = icmp sgt i32 %.in116, 1
  br i1 %i.af, label %.lr.ph100, label %.loopexit, !llvm.loop !78

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %..loopexit87_crit_edge
  %.in116 = phi i32 [ %i.ac, %..loopexit87_crit_edge ], [ %4, %.lr.ph100.preheader ] ; 2 uses
  %.076102 = phi i32 [ %i.ae, %..loopexit87_crit_edge ], [ %3, %.lr.ph100.preheader ] ; 2 uses
  %.079101 = phi ptr [ %i.ad, %..loopexit87_crit_edge ], [ %1, %.lr.ph100.preheader ] ; 2 uses
  %i.ag = load ptr, ptr %.079101, align 8, !tbaa !58 ; 15 uses
  %i.ah = zext i32 %.076102 to i64                ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 8 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58 ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ah
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58 ; 8 uses
  br i1 %min.iters.check221, label %scalar.ph220.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph100
  %scevgep193.a = getelementptr i8, ptr %i.aj, i64 %i.v ; 3 uses
  %scevgep194.a = getelementptr i8, ptr %i.al, i64 %i.v ; 3 uses
  %scevgep195.a = getelementptr i8, ptr %i.an, i64 %i.v ; 3 uses
  %scevgep196 = getelementptr i8, ptr %i.ag, i64 %i.w ; 3 uses
  %bound0197 = icmp ult ptr %i.aj, %scevgep194.a
  %bound1198 = icmp ult ptr %i.al, %scevgep193.a
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0200 = icmp ult ptr %i.aj, %scevgep195.a
  %bound1201 = icmp ult ptr %i.an, %scevgep193.a
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %found.conflict199, %found.conflict202
  %bound0204 = icmp ult ptr %i.aj, %scevgep196
  %bound1205 = icmp ult ptr %i.ag, %scevgep193.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %i.al, %scevgep195.a
  %bound1209 = icmp ult ptr %i.an, %scevgep194.a
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %i.al, %scevgep196
  %bound1213 = icmp ult ptr %i.ag, %scevgep194.a
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  %bound0216 = icmp ult ptr %i.an, %scevgep196
  %bound1217 = icmp ult ptr %i.ag, %scevgep195.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  br i1 %conflict.rdx219, label %scalar.ph220.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck192
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.x
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next234, %vector.body224 ] ; 5 uses
  %i.ap = mul i64 %index225, 6                    ; 8 uses
  %next.gep226.a = getelementptr i8, ptr %i.ag, i64 %i.ap ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep227.a = getelementptr i8, ptr %i.aq, i64 6
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep228.a = getelementptr i8, ptr %i.ar, i64 12
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep229.a = getelementptr i8, ptr %i.as, i64 18
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep230.a = getelementptr i8, ptr %i.at, i64 24
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep231.a = getelementptr i8, ptr %i.au, i64 30
  %i.av = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep232.a = getelementptr i8, ptr %i.av, i64 36
  %i.aw = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 3 uses
  %next.gep233 = getelementptr i8, ptr %i.aw, i64 42
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep226.a, i64 2
  %i.ay = getelementptr i8, ptr %i.aq, i64 8
  %i.az = getelementptr i8, ptr %i.ar, i64 14
  %i.ba = getelementptr i8, ptr %i.as, i64 20
  %i.bb = getelementptr i8, ptr %i.at, i64 26
  %i.bc = getelementptr i8, ptr %i.au, i64 32
  %i.bd = getelementptr i8, ptr %i.av, i64 38
  %i.be = getelementptr i8, ptr %i.aw, i64 44
  %i.bf = load i16, ptr %next.gep226.a, align 2, !tbaa !53, !alias.scope !79
  %i.bg = load i16, ptr %next.gep227.a, align 2, !tbaa !53, !alias.scope !79
  %i.bh = load i16, ptr %next.gep228.a, align 2, !tbaa !53, !alias.scope !79
  %i.bi = load i16, ptr %next.gep229.a, align 2, !tbaa !53, !alias.scope !79
  %i.bj = load i16, ptr %next.gep230.a, align 2, !tbaa !53, !alias.scope !79
  %i.bk = load i16, ptr %next.gep231.a, align 2, !tbaa !53, !alias.scope !79
  %i.bl = load i16, ptr %next.gep232.a, align 2, !tbaa !53, !alias.scope !79
  %i.bm = load i16, ptr %next.gep233, align 2, !tbaa !53, !alias.scope !79
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index225
  store <8 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !53, !alias.scope !82, !noalias !84
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep226.a, i64 4
  %i.bx = getelementptr i8, ptr %i.aq, i64 10
  %i.by = getelementptr i8, ptr %i.ar, i64 16
  %i.bz = getelementptr i8, ptr %i.as, i64 22
  %i.ca = getelementptr i8, ptr %i.at, i64 28
  %i.cb = getelementptr i8, ptr %i.au, i64 34
  %i.cc = getelementptr i8, ptr %i.av, i64 40
  %i.cd = getelementptr i8, ptr %i.aw, i64 46
  %i.ce = load i16, ptr %i.ax, align 2, !tbaa !53, !alias.scope !79
  %i.cf = load i16, ptr %i.ay, align 2, !tbaa !53, !alias.scope !79
  %i.cg = load i16, ptr %i.az, align 2, !tbaa !53, !alias.scope !79
  %i.ch = load i16, ptr %i.ba, align 2, !tbaa !53, !alias.scope !79
  %i.ci = load i16, ptr %i.bb, align 2, !tbaa !53, !alias.scope !79
  %i.cj = load i16, ptr %i.bc, align 2, !tbaa !53, !alias.scope !79
  %i.ck = load i16, ptr %i.bd, align 2, !tbaa !53, !alias.scope !79
  %i.cl = load i16, ptr %i.be, align 2, !tbaa !53, !alias.scope !79
  %i.cm = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 1
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 2
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 3
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 4
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 5
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 6
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cl, i64 7
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index225
  store <8 x i16> %i.ct, ptr %i.cu, align 2, !tbaa !53, !alias.scope !87, !noalias !88
  %i.cv = load i16, ptr %i.bw, align 2, !tbaa !53, !alias.scope !79
  %i.cw = load i16, ptr %i.bx, align 2, !tbaa !53, !alias.scope !79
  %i.cx = load i16, ptr %i.by, align 2, !tbaa !53, !alias.scope !79
  %i.cy = load i16, ptr %i.bz, align 2, !tbaa !53, !alias.scope !79
  %i.cz = load i16, ptr %i.ca, align 2, !tbaa !53, !alias.scope !79
  %i.da = load i16, ptr %i.cb, align 2, !tbaa !53, !alias.scope !79
  %i.db = load i16, ptr %i.cc, align 2, !tbaa !53, !alias.scope !79
  %i.dc = load i16, ptr %i.cd, align 2, !tbaa !53, !alias.scope !79
  %i.dd = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 1
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 2
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 3
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 4
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 5
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 6
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 7
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index225
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !53, !alias.scope !89, !noalias !79
  %index.next234 = add nuw i64 %index225, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next234, %n.vec223
  br i1 %i.dm, label %middle.block235, label %vector.body224, !llvm.loop !90

middle.block235:                                  ; preds = %vector.body224
  br i1 %cmp.n236, label %..loopexit87_crit_edge, label %scalar.ph220.preheader

scalar.ph220.preheader:                           ; preds = %vector.memcheck192, %.lr.ph100, %middle.block235
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph100 ], [ %n.vec223, %middle.block235 ] ; 6 uses
  %.07098.ph = phi ptr [ %i.ag, %vector.memcheck192 ], [ %i.ag, %.lr.ph100 ], [ %i.ao, %middle.block235 ] ; 5 uses
  br i1 %lcmp.mod247.not, label %scalar.ph220.prol.loopexit, label %scalar.ph220.prol

scalar.ph220.prol:                                ; preds = %scalar.ph220.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 2
  %i.do = load i16, ptr %.07098.ph, align 2, !tbaa !53
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv122.ph
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 4
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !53
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv122.ph
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 6
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !53
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv122.ph
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !53
  %indvars.iv.next123.prol = or disjoint i64 %indvars.iv122.ph, 1
  br label %scalar.ph220.prol.loopexit

scalar.ph220.prol.loopexit:                       ; preds = %scalar.ph220.prol, %scalar.ph220.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %scalar.ph220.preheader ], [ %indvars.iv.next123.prol, %scalar.ph220.prol ]
  %.07098.unr = phi ptr [ %.07098.ph, %scalar.ph220.preheader ], [ %i.dt, %scalar.ph220.prol ]
  %i.dw = icmp eq i64 %indvars.iv122.ph, %i.y
  br i1 %i.dw, label %..loopexit87_crit_edge, label %scalar.ph220

scalar.ph220:                                     ; preds = %scalar.ph220.prol.loopexit, %scalar.ph220
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %scalar.ph220 ], [ %indvars.iv122.unr, %scalar.ph220.prol.loopexit ] ; 5 uses
  %.07098 = phi ptr [ %i.em, %scalar.ph220 ], [ %.07098.unr, %scalar.ph220.prol.loopexit ] ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.07098, i64 2
  %i.dy = load i16, ptr %.07098, align 2, !tbaa !53
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv122
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %.07098, i64 4
  %i.eb = load i16, ptr %i.dx, align 2, !tbaa !53
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv122
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %.07098, i64 6
  %i.ee = load i16, ptr %i.ea, align 2, !tbaa !53
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv122
end_hunk_0
begin_hunk_1_@null_convert:bb.a
  %i.hx = insertelement <8 x i16> %i.hw, i16 %i.hp, i64 5
  %i.hy = insertelement <8 x i16> %i.hx, i16 %i.hq, i64 6
  %i.hz = insertelement <8 x i16> %i.hy, i16 %i.hr, i64 7
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index
  store <8 x i16> %i.hz, ptr %i.ia, align 2, !tbaa !53, !alias.scope !104, !noalias !105
  %i.ib = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.ic = getelementptr i8, ptr %i.fw, i64 14
  %i.id = getelementptr i8, ptr %i.fx, i64 22
  %i.ie = getelementptr i8, ptr %i.fy, i64 30
  %i.if = getelementptr i8, ptr %i.fz, i64 38
  %i.ig = getelementptr i8, ptr %i.ga, i64 46
  %i.ih = getelementptr i8, ptr %i.gb, i64 54
  %i.ii = getelementptr i8, ptr %i.gc, i64 62
  %i.ij = load i16, ptr %i.hc, align 2, !tbaa !53, !alias.scope !95
  %i.ik = load i16, ptr %i.hd, align 2, !tbaa !53, !alias.scope !95
  %i.il = load i16, ptr %i.he, align 2, !tbaa !53, !alias.scope !95
  %i.im = load i16, ptr %i.hf, align 2, !tbaa !53, !alias.scope !95
  %i.in = load i16, ptr %i.hg, align 2, !tbaa !53, !alias.scope !95
  %i.io = load i16, ptr %i.hh, align 2, !tbaa !53, !alias.scope !95
  %i.ip = load i16, ptr %i.hi, align 2, !tbaa !53, !alias.scope !95
  %i.iq = load i16, ptr %i.hj, align 2, !tbaa !53, !alias.scope !95
  %i.ir = insertelement <8 x i16> poison, i16 %i.ij, i64 0
  %i.is = insertelement <8 x i16> %i.ir, i16 %i.ik, i64 1
  %i.it = insertelement <8 x i16> %i.is, i16 %i.il, i64 2
  %i.iu = insertelement <8 x i16> %i.it, i16 %i.im, i64 3
  %i.iv = insertelement <8 x i16> %i.iu, i16 %i.in, i64 4
  %i.iw = insertelement <8 x i16> %i.iv, i16 %i.io, i64 5
  %i.ix = insertelement <8 x i16> %i.iw, i16 %i.ip, i64 6
  %i.iy = insertelement <8 x i16> %i.ix, i16 %i.iq, i64 7
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %index
  store <8 x i16> %i.iy, ptr %i.iz, align 2, !tbaa !53, !alias.scope !106, !noalias !107
  %i.ja = load i16, ptr %i.ib, align 2, !tbaa !53, !alias.scope !95
  %i.jb = load i16, ptr %i.ic, align 2, !tbaa !53, !alias.scope !95
  %i.jc = load i16, ptr %i.id, align 2, !tbaa !53, !alias.scope !95
  %i.jd = load i16, ptr %i.ie, align 2, !tbaa !53, !alias.scope !95
  %i.je = load i16, ptr %i.if, align 2, !tbaa !53, !alias.scope !95
  %i.jf = load i16, ptr %i.ig, align 2, !tbaa !53, !alias.scope !95
  %i.jg = load i16, ptr %i.ih, align 2, !tbaa !53, !alias.scope !95
  %i.jh = load i16, ptr %i.ii, align 2, !tbaa !53, !alias.scope !95
  %i.ji = insertelement <8 x i16> poison, i16 %i.ja, i64 0
  %i.jj = insertelement <8 x i16> %i.ji, i16 %i.jb, i64 1
  %i.jk = insertelement <8 x i16> %i.jj, i16 %i.jc, i64 2
  %i.jl = insertelement <8 x i16> %i.jk, i16 %i.jd, i64 3
  %i.jm = insertelement <8 x i16> %i.jl, i16 %i.je, i64 4
  %i.jn = insertelement <8 x i16> %i.jm, i16 %i.jf, i64 5
  %i.jo = insertelement <8 x i16> %i.jn, i16 %i.jg, i64 6
  %i.jp = insertelement <8 x i16> %i.jo, i16 %i.jh, i64 7
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %index
  store <8 x i16> %i.jp, ptr %i.jq, align 2, !tbaa !53, !alias.scope !108, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit90_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.17193.ph = phi ptr [ %i.et, %vector.memcheck ], [ %i.et, %.lr.ph ], [ %i.fu, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.js = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 2
  %i.jt = load i16, ptr %.17193.ph, align 2, !tbaa !53
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv.ph
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !53
  %i.jv = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 4
  %i.jw = load i16, ptr %i.js, align 2, !tbaa !53
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.ph
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !53
  %i.jy = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 6
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !53
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv.ph
  store i16 %i.jz, ptr %i.ka, align 2, !tbaa !53
  %i.kb = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 8
  %i.kc = load i16, ptr %i.jy, align 2, !tbaa !53
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.ph
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !53
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.17193.unr = phi ptr [ %.17193.ph, %scalar.ph.preheader ], [ %i.kb, %scalar.ph.prol ]
  %i.ke = icmp eq i64 %indvars.iv.ph, %i.p
  br i1 %i.ke, label %..loopexit90_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.17193 = phi ptr [ %i.la, %scalar.ph ], [ %.17193.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.17193, i64 2
  %i.kg = load i16, ptr %.17193, align 2, !tbaa !53
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !53
  %i.ki = getelementptr inbounds nuw i8, ptr %.17193, i64 4
  %i.kj = load i16, ptr %i.kf, align 2, !tbaa !53
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !53
  %i.kl = getelementptr inbounds nuw i8, ptr %.17193, i64 6
  %i.km = load i16, ptr %i.ki, align 2, !tbaa !53
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !53
  %i.ko = getelementptr inbounds nuw i8, ptr %.17193, i64 8
  %i.kp = load i16, ptr %i.kl, align 2, !tbaa !53
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.17193, i64 10
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !53
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv.next
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !53
  %i.ku = getelementptr inbounds nuw i8, ptr %.17193, i64 12
  %i.kv = load i16, ptr %i.kr, align 2, !tbaa !53
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.next
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !53
  %i.kx = getelementptr inbounds nuw i8, ptr %.17193, i64 14
  %i.ky = load i16, ptr %i.ku, align 2, !tbaa !53
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv.next
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !53
  %i.la = getelementptr inbounds nuw i8, ptr %.17193, i64 16
  %i.lb = load i16, ptr %i.kx, align 2, !tbaa !53
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.next
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !53
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit90_crit_edge, label %scalar.ph, !llvm.loop !110

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge109
  %.in118 = phi i32 [ %i.mg, %._crit_edge109 ], [ %4, %.preheader.preheader ] ; 2 uses
  %.278111 = phi i32 [ %i.mi, %._crit_edge109 ], [ %3, %.preheader.preheader ] ; 2 uses
  %.281110 = phi ptr [ %i.mh, %._crit_edge109 ], [ %1, %.preheader.preheader ] ; 2 uses
  %i.ld = load ptr, ptr %.281110, align 8, !tbaa !58 ; 2 uses
  %i.le = zext i32 %.278111 to i64
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 7 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !51
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.le
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !58 ; 5 uses
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106, %.lr.ph106.new
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.3, %.lr.ph106.new ], [ 0, %.lr.ph106 ] ; 5 uses
  %.272104 = phi ptr [ %i.mb, %.lr.ph106.new ], [ %i.ld, %.lr.ph106 ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph106.new ], [ 0, %.lr.ph106 ]
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %.272104, i64 %indvars.iv132
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !53
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv127
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !53
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.272104, i64 %5 ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %indvars.iv132
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !53
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv127
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  store i16 %i.lo, ptr %i.lq, align 2, !tbaa !53
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %5 ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %indvars.iv132
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !53
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv127
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i16 %i.lt, ptr %i.lv, align 2, !tbaa !53
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %5 ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %indvars.iv132
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !53
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv127
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 6
  store i16 %i.ly, ptr %i.ma, align 2, !tbaa !53
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %5 ; 2 uses
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph106.new, !llvm.loop !111

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph106.new
  br i1 %lcmp.mod249.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph106
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next128.3, %._crit_edge.unr-lcssa ]
  %.272104.epil.init = phi ptr [ %i.ld, %.lr.ph106 ], [ %i.mb, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv127.epil = phi i64 [ %indvars.iv127.epil.init, %.epil.preheader ], [ %indvars.iv.next128.epil, %bb.b ] ; 2 uses
  %.272104.epil = phi ptr [ %.272104.epil.init, %.epil.preheader ], [ %i.mf, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.272104.epil, i64 %indvars.iv132
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !53
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv127.epil
  store i16 %i.md, ptr %i.me, align 2, !tbaa !53
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.272104.epil, i64 %5
  %indvars.iv.next128.epil = add nuw nsw i64 %indvars.iv127.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter248
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %5
  br i1 %exitcond136.not, label %._crit_edge109, label %.lr.ph106, !llvm.loop !113

._crit_edge109:                                   ; preds = %._crit_edge
  %i.mg = add nsw i32 %.in118, -1
  %i.mh = getelementptr inbounds nuw i8, ptr %.281110, i64 8
  %i.mi = add i32 %.278111, 1
  %i.mj = icmp sgt i32 %.in118, 1
  br i1 %i.mj, label %.preheader, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %..loopexit90_crit_edge, %..loopexit87_crit_edge, %._crit_edge109, %.preheader.lr.ph, %.preheader91, %.lr.ph97, %.preheader88, %.lr.ph103, %.preheader86
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 21 uses
  %i.e = icmp sgt i32 %4, 0                       ; 7 uses
  switch i32 %i.b, label %bb.h [
    i32 6, label %bb.b
    i32 7, label %bb.c
    i32 12, label %bb.c
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 13, label %bb.e
    i32 10, label %bb.f
    i32 14, label %bb.f
    i32 11, label %bb.g
    i32 15, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %.lr.ph111, label %extrgb_rgb_convert_internal.exit

.lr.ph111:                                        ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %.not126 = icmp eq i32 %i.d, 0
  br i1 %.not126, label %extrgb_rgb_convert_internal.exit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.lr.ph111
  %wide.trip.count160 = zext i32 %i.d to i64      ; 7 uses
  %i.k = shl nuw nsw i64 %wide.trip.count160, 1   ; 3 uses
  %i.l = mul nuw nsw i64 %wide.trip.count160, 6
  %min.iters.check431 = icmp ult i32 %i.d, 16
  %n.vec433 = and i64 %wide.trip.count160, 4294967288 ; 4 uses
  %i.m = mul nuw nsw i64 %n.vec433, 6
  %cmp.n446 = icmp eq i64 %n.vec433, %wide.trip.count160
  %xtraiter510 = and i64 %wide.trip.count160, 1
  %lcmp.mod511.not = icmp eq i64 %xtraiter510, 0
  %i.n = add nsw i64 %wide.trip.count160, -1
  br label %.lr.ph108

..loopexit65_crit_edge:                           ; preds = %scalar.ph430.prol.loopexit, %scalar.ph430, %middle.block445
  %i.o = add nsw i32 %.in127, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.025.i109, i64 8
  %i.q = add i32 %.024.i110, 1
  %i.r = icmp sgt i32 %.in127, 1
  br i1 %i.r, label %.lr.ph108, label %extrgb_rgb_convert_internal.exit, !llvm.loop !115

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %..loopexit65_crit_edge
  %.in127 = phi i32 [ %i.o, %..loopexit65_crit_edge ], [ %4, %.lr.ph108.preheader ] ; 2 uses
  %.024.i110 = phi i32 [ %i.q, %..loopexit65_crit_edge ], [ %3, %.lr.ph108.preheader ] ; 2 uses
  %.025.i109 = phi ptr [ %i.p, %..loopexit65_crit_edge ], [ %1, %.lr.ph108.preheader ] ; 2 uses
  %i.s = load ptr, ptr %.025.i109, align 8, !tbaa !58 ; 15 uses
  %i.t = zext i32 %.024.i110 to i64               ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58   ; 8 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 8 uses
  br i1 %min.iters.check431, label %scalar.ph430.preheader, label %vector.memcheck402

vector.memcheck402:                               ; preds = %.lr.ph108
  %scevgep403 = getelementptr i8, ptr %i.v, i64 %i.k ; 3 uses
  %scevgep404 = getelementptr i8, ptr %i.x, i64 %i.k ; 3 uses
  %scevgep405 = getelementptr i8, ptr %i.z, i64 %i.k ; 3 uses
  %scevgep406 = getelementptr i8, ptr %i.s, i64 %i.l ; 3 uses
  %bound0407 = icmp ult ptr %i.v, %scevgep404
  %bound1408 = icmp ult ptr %i.x, %scevgep403
  %found.conflict409 = and i1 %bound0407, %bound1408
  %bound0410 = icmp ult ptr %i.v, %scevgep405
  %bound1411 = icmp ult ptr %i.z, %scevgep403
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %found.conflict409, %found.conflict412
  %bound0414 = icmp ult ptr %i.v, %scevgep406
  %bound1415 = icmp ult ptr %i.s, %scevgep403
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %conflict.rdx413, %found.conflict416
  %bound0418 = icmp ult ptr %i.x, %scevgep405
  %bound1419 = icmp ult ptr %i.z, %scevgep404
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx417, %found.conflict420
  %bound0422 = icmp ult ptr %i.x, %scevgep406
  %bound1423 = icmp ult ptr %i.s, %scevgep404
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.z, %scevgep406
  %bound1427 = icmp ult ptr %i.s, %scevgep405
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  br i1 %conflict.rdx429, label %scalar.ph430.preheader, label %vector.ph432

vector.ph432:                                     ; preds = %vector.memcheck402
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.m
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next444, %vector.body434 ] ; 5 uses
  %i.ab = mul i64 %index435, 6                    ; 8 uses
  %next.gep436 = getelementptr i8, ptr %i.s, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep437 = getelementptr i8, ptr %i.ac, i64 6
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep438 = getelementptr i8, ptr %i.ad, i64 12
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep439 = getelementptr i8, ptr %i.ae, i64 18
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.af, i64 24
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep441 = getelementptr i8, ptr %i.ag, i64 30
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep442 = getelementptr i8, ptr %i.ah, i64 36
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ab   ; 3 uses
  %next.gep443 = getelementptr i8, ptr %i.ai, i64 42
  %i.aj = load i16, ptr %next.gep436, align 2, !tbaa !53, !alias.scope !116
  %i.ak = load i16, ptr %next.gep437, align 2, !tbaa !53, !alias.scope !116
  %i.al = load i16, ptr %next.gep438, align 2, !tbaa !53, !alias.scope !116
  %i.am = load i16, ptr %next.gep439, align 2, !tbaa !53, !alias.scope !116
  %i.an = load i16, ptr %next.gep440, align 2, !tbaa !53, !alias.scope !116
  %i.ao = load i16, ptr %next.gep441, align 2, !tbaa !53, !alias.scope !116
  %i.ap = load i16, ptr %next.gep442, align 2, !tbaa !53, !alias.scope !116
  %i.aq = load i16, ptr %next.gep443, align 2, !tbaa !53, !alias.scope !116
  %i.ar = insertelement <8 x i16> poison, i16 %i.aj, i64 0
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 1
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 2
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 3
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 4
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 5
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 6
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 7
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %index435
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !53, !alias.scope !119, !noalias !121
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep436, i64 2
  %i.bb = getelementptr i8, ptr %i.ac, i64 8
  %i.bc = getelementptr i8, ptr %i.ad, i64 14
  %i.bd = getelementptr i8, ptr %i.ae, i64 20
  %i.be = getelementptr i8, ptr %i.af, i64 26
  %i.bf = getelementptr i8, ptr %i.ag, i64 32
  %i.bg = getelementptr i8, ptr %i.ah, i64 38
  %i.bh = getelementptr i8, ptr %i.ai, i64 44
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !53, !alias.scope !116
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !53, !alias.scope !116
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !53, !alias.scope !116
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !53, !alias.scope !116
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !53, !alias.scope !116
  %i.bn = load i16, ptr %i.bf, align 2, !tbaa !53, !alias.scope !116
  %i.bo = load i16, ptr %i.bg, align 2, !tbaa !53, !alias.scope !116
  %i.bp = load i16, ptr %i.bh, align 2, !tbaa !53, !alias.scope !116
  %i.bq = insertelement <8 x i16> poison, i16 %i.bi, i64 0
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 1
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 2
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 3
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 4
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 5
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 6
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 7
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %index435
  store <8 x i16> %i.bx, ptr %i.by, align 2, !tbaa !53, !alias.scope !124, !noalias !125
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep436, i64 4
  %i.ca = getelementptr i8, ptr %i.ac, i64 10
  %i.cb = getelementptr i8, ptr %i.ad, i64 16
  %i.cc = getelementptr i8, ptr %i.ae, i64 22
  %i.cd = getelementptr i8, ptr %i.af, i64 28
  %i.ce = getelementptr i8, ptr %i.ag, i64 34
  %i.cf = getelementptr i8, ptr %i.ah, i64 40
  %i.cg = getelementptr i8, ptr %i.ai, i64 46
  %i.ch = load i16, ptr %i.bz, align 2, !tbaa !53, !alias.scope !116
  %i.ci = load i16, ptr %i.ca, align 2, !tbaa !53, !alias.scope !116
  %i.cj = load i16, ptr %i.cb, align 2, !tbaa !53, !alias.scope !116
  %i.ck = load i16, ptr %i.cc, align 2, !tbaa !53, !alias.scope !116
  %i.cl = load i16, ptr %i.cd, align 2, !tbaa !53, !alias.scope !116
  %i.cm = load i16, ptr %i.ce, align 2, !tbaa !53, !alias.scope !116
  %i.cn = load i16, ptr %i.cf, align 2, !tbaa !53, !alias.scope !116
  %i.co = load i16, ptr %i.cg, align 2, !tbaa !53, !alias.scope !116
  %i.cp = insertelement <8 x i16> poison, i16 %i.ch, i64 0
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 1
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 2
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 3
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cl, i64 4
  %i.cu = insertelement <8 x i16> %i.ct, i16 %i.cm, i64 5
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 6
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 7
end_hunk_1
