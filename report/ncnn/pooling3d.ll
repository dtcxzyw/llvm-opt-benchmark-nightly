Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling3d?download=true
inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn9Pooling3D12make_paddingERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !40
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.cy, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.de = add nsw <2 x i32> %i.c, splat (i32 -1)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !31
  %i.di = add nsw i32 %.fr91, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !34
  %i.dl = srem i32 %i.di, %i.dk
  %i.dm = xor i32 %i.dl, -1
  %i.dn = add i32 %i.dh, %i.dm                    ; 3 uses
  %i.do = load <2 x i32>, ptr %i.dd, align 4, !tbaa !51
  %i.dp = load <2 x i32>, ptr %i.df, align 8, !tbaa !51
  %i.dq = srem <2 x i32> %i.de, %i.dp
  %i.dr = xor <2 x i32> %i.dq, splat (i32 -1)
  %i.ds = add <2 x i32> %i.do, %i.dr              ; 3 uses
  %i.dt = icmp sgt <2 x i32> %i.ds, zeroinitializer ; 2 uses
  %i.du = extractelement <2 x i1> %i.dt, i64 0
  %i.dv = extractelement <2 x i1> %i.dt, i64 1
  %or.cond = select i1 %i.du, i1 true, i1 %i.dv
  %i.dw = icmp sgt i32 %i.dn, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.dw
  br i1 %or.cond3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !126
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !57
  %i.ea = extractelement <2 x i32> %i.ds, i64 1   ; 2 uses
  %i.eb = sdiv i32 %i.ea, 2                       ; 2 uses
  %i.ec = sub nsw i32 %i.ea, %i.eb
  %i.ed = extractelement <2 x i32> %i.ds, i64 0   ; 2 uses
  %i.ee = sdiv i32 %i.ed, 2                       ; 2 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %i.eg = sdiv i32 %i.dn, 2                       ; 2 uses
  %i.eh = sub nsw i32 %i.dn, %i.eg
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ee, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31
  %i.em = add i32 %.fr91, -1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !34
  %i.ep = srem i32 %i.em, %i.eo
  %i.eq = xor i32 %i.ep, -1
  %i.er = add i32 %i.el, %i.eq                    ; 3 uses
  %i.es = load <2 x i32>, ptr %i.ei, align 4, !tbaa !51
  %i.et = add <2 x i32> %i.c, splat (i32 -1)
  %i.eu = load <2 x i32>, ptr %i.ej, align 8, !tbaa !51
  %i.ev = srem <2 x i32> %i.et, %i.eu
  %i.ew = xor <2 x i32> %i.ev, splat (i32 -1)
  %i.ex = add <2 x i32> %i.es, %i.ew              ; 3 uses
  %i.ey = icmp sgt <2 x i32> %i.ex, zeroinitializer ; 2 uses
  %i.ez = extractelement <2 x i1> %i.ey, i64 0
  %i.fa = extractelement <2 x i1> %i.ey, i64 1
  %or.cond5 = select i1 %i.ez, i1 true, i1 %i.fa
  %i.fb = icmp sgt i32 %i.er, 0
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.fb
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !126
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !57
  %i.ff = extractelement <2 x i32> %i.ex, i64 1   ; 2 uses
  %i.fg = sdiv i32 %i.ff, 2                       ; 2 uses
  %i.fh = sub nsw i32 %i.ff, %i.fg
  %i.fi = extractelement <2 x i32> %i.ex, i64 0   ; 2 uses
  %i.fj = sdiv i32 %i.fi, 2                       ; 2 uses
  %i.fk = sub nsw i32 %i.fi, %i.fj
  %i.fl = sdiv i32 %i.er, 2                       ; 2 uses
  %i.fm = sub nsw i32 %i.er, %i.fl
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.fh, i32 noundef %i.fg, i32 noundef %i.fk, i32 noundef %i.fj, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.k, %bb.o, %bb.n, %bb.m, %bb.l
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 3 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge.split131, label %.noexc46.lr.ph

.noexc46.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50, !noalias !142
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52, !noalias !142
  %i.p = load ptr, ptr %3, align 8, !tbaa !58, !noalias !142 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !142 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !55, !noalias !142 ; 6 uses
  %factor.op.mul128 = mul i64 %i.r, %i.t          ; 2 uses
  %i.u = sext i32 %i.m to i64                     ; 4 uses
  %i.v = sext i32 %i.o to i64                     ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !58, !noalias !143 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59, !noalias !143
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !143
  %factor.op.mul129 = mul i64 %i.y, %i.aa         ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !51    ; 3 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.ac = icmp sgt i32 %i.ab, 0
  %factor.op.mul105.reass = mul i64 %factor.op.mul, %i.u ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 228
  %i.af = mul i64 %i.t, %i.u                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 224
  br i1 %i.ac, label %.noexc46.lr.ph.split, label %._crit_edge.split131

.noexc46.lr.ph.split:                             ; preds = %.noexc46.lr.ph
  %i.ah = load i32, ptr %6, align 4, !tbaa !51    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.noexc46.lr.ph.split.split, label %._crit_edge.split131

.noexc46.lr.ph.split.split:                       ; preds = %.noexc46.lr.ph.split
  %i.aj = load i32, ptr %7, align 4, !tbaa !51    ; 5 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.aj to i64                   ; 3 uses
  br i1 %i.ak, label %.noexc46.lr.ph.split.split.split.us, label %._crit_edge.split131

.noexc46.lr.ph.split.split.split.us:              ; preds = %.noexc46.lr.ph.split.split
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !33 ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ap = load i32, ptr %9, align 4, !tbaa !51    ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.noexc46.lr.ph.split.split.split.us.split.us, label %.noexc46.us.preheader

.noexc46.us.preheader:                            ; preds = %.noexc46.lr.ph.split.split.split.us
  %i.ar = sext i32 %i.ao to i64                   ; 5 uses
  %i.as = sext i32 %i.an to i64                   ; 2 uses
  %i.at = sext i32 %i.am to i64                   ; 2 uses
  %i.au = sext i32 %i.k to i64                    ; 2 uses
  %i.av = add nsw i32 %i.j, 1
  %wide.trip.count153 = zext nneg i32 %i.ab to i64
  %factor.op.mul193 = mul i64 %factor.op.mul105.reass, %i.at
  %wide.trip.count148 = zext nneg i32 %i.ah to i64 ; 2 uses
  %factor.op.mul192 = mul i64 %i.af, %i.as        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 7 uses
  %i.aw = add nsw i64 %wide.trip.count148, -1     ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.al
  %i.ay = shl nuw nsw i64 %wide.trip.count, 2
  %i.az = add i64 %i.ax, %wide.trip.count
  %i.ba = shl i64 %i.az, 2
  %i.bb = mul nsw i64 %i.aw, %i.u
  %i.bc = mul i64 %i.bb, %i.as
  %i.bd = mul i64 %i.r, %i.au
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = mul i64 %i.t, %i.be
  %i.bg = mul i64 %i.r, %i.t
  %i.bh = mul i64 %i.t, %i.v
  %i.bi = mul i64 %i.bh, %i.u
  %i.bj = mul i64 %i.bi, %i.at
  %i.bk = getelementptr i8, ptr %i.p, i64 %i.bf
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.ay
  %min.iters.check = icmp ugt i32 %i.aj, 7
  %ident.check.not = icmp eq i32 %i.ao, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul192, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc46.us

.noexc46.lr.ph.split.split.split.us.split.us:     ; preds = %.noexc46.lr.ph.split.split.split.us
  %i.bm = load ptr, ptr %10, align 8, !tbaa !70   ; 5 uses
  %i.bn = sext i32 %i.ao to i64
  %i.bo = sext i32 %i.an to i64
  %i.bp = sext i32 %i.am to i64
  %i.bq = sext i32 %i.k to i64
  %i.br = add nsw i32 %i.j, 1
  %wide.trip.count177 = zext nneg i32 %i.ab to i64
  %factor.op.mul197 = mul i64 %factor.op.mul105.reass, %i.bp
  %wide.trip.count172 = zext nneg i32 %i.ah to i64
  %factor.op.mul195 = mul i64 %i.af, %i.bo
  %wide.trip.count167 = zext nneg i32 %i.aj to i64
  %wide.trip.count162 = zext nneg i32 %i.ap to i64 ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count162, 3   ; 3 uses
  %i.bs = icmp ult i32 %i.ap, 4
  %unroll_iter = and i64 %wide.trip.count162, 2147483644
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod208 = icmp ne i64 %xtraiter205, 0
  br label %.noexc46.us.us

.noexc46.us.us:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us, %.noexc46.lr.ph.split.split.split.us.split.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us ], [ %i.bq, %.noexc46.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul128, %indvars.iv179
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us.us
  %.reass130.us.us = mul i64 %factor.op.mul129, %indvars.iv179
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass130.us.us
  br label %.preheader99.us.us.us.us

.preheader99.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc46.us.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc46.us.us ] ; 2 uses
  %.041115.us.us.us.us = phi ptr [ %i.dd, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bu, %.noexc46.us.us ]
  %.reass198 = mul i64 %indvars.iv174, %factor.op.mul197
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.reass198
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge103.split.us.us.us.us.us.us.us, %.preheader99.us.us.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %._crit_edge103.split.us.us.us.us.us.us.us ], [ 0, %.preheader99.us.us.us.us ] ; 2 uses
  %.1106.us.us.us.us.us.us = phi ptr [ %i.dd, %._crit_edge103.split.us.us.us.us.us.us.us ], [ %.041115.us.us.us.us, %.preheader99.us.us.us.us ] ; 2 uses
  %.reass196 = mul i64 %indvars.iv169, %factor.op.mul195
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.reass196
  br label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us:     ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %i.bx = mul nsw i64 %indvars.iv164, %i.bn
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx ; 6 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !75 ; 2 uses
  br i1 %i.bs, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new: ; preds = %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ] ; 5 uses
  %.098100.us.us.us.us.us.us.us = phi float [ %.sroa.speculated.us.us.us.us.us.us.us.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.098100.us.us.us.us.us.us.us, float %i.ce)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.us.us.us.us, float %i.ck)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.us.us.us.us.1, float %i.cq)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !51
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.us.us.us.us.2, float %i.cw) ; 3 uses
  %indvars.iv.next160.3 = add nuw nsw i64 %indvars.iv159, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new, !llvm.loop !131

._crit_edge.us.us.us.us.us.us.us.unr-lcssa:       ; preds = %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod206.not, label %._crit_edge.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us
  %indvars.iv159.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ], [ %indvars.iv.next160.3, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  %.098100.us.us.us.us.us.us.us.epil.init = phi float [ %i.bz, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ], [ %.sroa.speculated.us.us.us.us.us.us.us.3, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv159.epil = phi i64 [ %indvars.iv.next160.epil, %bb.c ], [ %indvars.iv159.epil.init, %.epil.preheader ] ; 2 uses
  %.098100.us.us.us.us.us.us.us.epil = phi float [ %.sroa.speculated.us.us.us.us.us.us.us.epil, %bb.c ], [ %.098100.us.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159.epil
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !51
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.epil = call nnan ninf nsz float @llvm.maxnum.f32(float %.098100.us.us.us.us.us.us.us.epil, float %i.db) ; 2 uses
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter205
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !132

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa
  %.sroa.speculated.us.us.us.us.us.us.us.lcssa = phi float [ %.sroa.speculated.us.us.us.us.us.us.us.3, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.us.us.us.epil, %bb.c ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us.us.us.us.us, i64 %indvars.iv164
  store float %.sroa.speculated.us.us.us.us.us.us.us.lcssa, ptr %i.dc, align 4, !tbaa !75
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge103.split.us.us.us.us.us.us.us, label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us, !llvm.loop !133

._crit_edge103.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us.us.us.us.us, i64 %i.al ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !134

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge103.split.us.us.us.us.us.us.us
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us, label %.preheader99.us.us.us.us, !llvm.loop !135

._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv182 = trunc i64 %indvars.iv.next180 to i32
  %exitcond183.not = icmp eq i32 %i.br, %lftr.wideiv182
  br i1 %exitcond183.not, label %._crit_edge.split131, label %.noexc46.us.us

.noexc46.us:                                      ; preds = %.noexc46.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us137
  %indvar = phi i64 [ 0, %.noexc46.us.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us137 ] ; 2 uses
  %indvars.iv155 = phi i64 [ %i.au, %.noexc46.us.preheader ], [ %indvars.iv.next156, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us137 ] ; 3 uses
  %i.de = mul i64 %i.bg, %indvar
  %.reass.us = mul i64 %factor.op.mul128, %indvars.iv155
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us
  %.reass130.us = mul i64 %factor.op.mul129, %indvars.iv155
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass130.us
  %i.dh = getelementptr i8, ptr %i.bl, i64 %i.de
  br label %.preheader99.us.us134

.preheader99.us.us134:                            ; preds = %._crit_edge.split.us.split.us122.us, %.noexc46.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge.split.us.split.us122.us ], [ 0, %.noexc46.us ] ; 3 uses
  %.041115.us.us136 = phi ptr [ %i.en, %._crit_edge.split.us.split.us122.us ], [ %i.dg, %.noexc46.us ] ; 3 uses
  %i.di = mul i64 %i.bj, %indvars.iv150
  %scevgep201 = getelementptr i8, ptr %i.dh, i64 %i.di
  %.reass194 = mul i64 %indvars.iv150, %factor.op.mul193
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %.reass194 ; 2 uses
  %scevgep = getelementptr i8, ptr %.041115.us.us136, i64 %i.ba
  %bound0 = icmp ult ptr %.041115.us.us136, %scevgep201
  %bound1 = icmp ult ptr %i.dj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dk = or i1 %found.conflict, %stride.check
  br label %.preheader.us.us119.us

.preheader.us.us119.us:                           ; preds = %._crit_edge103.split.us112.us.us, %.preheader99.us.us134
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %._crit_edge103.split.us112.us.us ], [ 0, %.preheader99.us.us134 ] ; 2 uses
  %.1106.us.us121.us = phi ptr [ %i.en, %._crit_edge103.split.us112.us.us ], [ %.041115.us.us136, %.preheader99.us.us134 ] ; 7 uses
  %.reass = mul i64 %indvars.iv145, %factor.op.mul192
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.reass ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.dk
  br i1 %brmerge, label %_ZN4ncnn3MatD2Ev.exit44.us110.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us119.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us119.us ] ; 3 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <4 x float>, ptr %i.dm, align 4, !tbaa !75, !alias.scope !144
  %wide.load202 = load <4 x float>, ptr %i.dn, align 4, !tbaa !75, !alias.scope !144
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us121.us, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %wide.load, ptr %i.do, align 4, !tbaa !75, !alias.scope !145, !noalias !144
  store <4 x float> %wide.load202, ptr %i.dp, align 4, !tbaa !75, !alias.scope !145, !noalias !144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge103.split.us112.us.us, label %_ZN4ncnn3MatD2Ev.exit44.us110.us.us.preheader

_ZN4ncnn3MatD2Ev.exit44.us110.us.us.preheader:    ; preds = %.preheader.us.us119.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.us119.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN4ncnn3MatD2Ev.exit44.us110.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit44.us110.us.us.prol
end_hunk_0
begin_hunk_1_@_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5:bb.a

bb.e:                                             ; preds = %.loopexit.us.us.us.us.us.us.us, %.lr.ph187.us.us.us.us.us.us.us
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.loopexit.us.us.us.us.us.us.us ], [ 0, %.lr.ph187.us.us.us.us.us.us.us ] ; 2 uses
  %.1185.us.us.us.us.us.us.us = phi i32 [ %.5.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ], [ %.068194.us.us.us.us.us.us.us, %.lr.ph187.us.us.us.us.us.us.us ] ; 4 uses
  %.170184.us.us.us.us.us.us.us = phi float [ %.574.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ], [ %.069193.us.us.us.us.us.us.us, %.lr.ph187.us.us.us.us.us.us.us ] ; 4 uses
  %i.cb = add nsw i64 %indvars.iv257, %i.bl       ; 3 uses
  %i.cc = icmp slt i64 %i.cb, %i.ca
  br i1 %i.cc, label %.loopexit.us.us.us.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = load i32, ptr %11, align 4, !tbaa !51
  %i.ce = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.cf = load i32, ptr %12, align 4, !tbaa !51
  %i.cg = add i32 %i.ce, %i.cf
  %i.ch = sub i32 %i.cd, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %.not92.us.us.us.us.us.us.us = icmp slt i64 %i.cb, %i.ci
  br i1 %.not92.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us, label %.loopexit175.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us:                  ; preds = %bb.f
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.us.us.us.us.us.us.us, label %.loopexit.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us:                      ; preds = %.preheader.us.us.us.us.us.us.us
  %i.cl = load i32, ptr %i.am, align 4, !tbaa !35
  %i.cm = mul i64 %factor.op.mul216, %i.cb
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cm
  %i.co = sext i32 %i.cl to i64
  %wide.trip.count255 = zext nneg i32 %i.cj to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.us.us.us.us.us.us.us
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %bb.i ], [ 0, %.lr.ph.us.us.us.us.us.us.us ] ; 2 uses
  %.2177.us.us.us.us.us.us.us = phi i32 [ %.3.ph.us.us.us.us.us.us.us, %bb.i ], [ %.1185.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ] ; 3 uses
  %.271176.us.us.us.us.us.us.us = phi float [ %.372.ph.us.us.us.us.us.us.us, %bb.i ], [ %.170184.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ] ; 3 uses
  %i.cp = add nsw i64 %indvars.iv252, %i.bm       ; 3 uses
  %i.cq = icmp slt i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = load i32, ptr %13, align 4, !tbaa !51
  %i.cs = load i32, ptr %i.an, align 8, !tbaa !36
  %i.ct = load i32, ptr %14, align 4, !tbaa !51
  %i.cu = add i32 %i.cs, %i.ct
  %i.cv = sub i32 %i.cr, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %.not93.us.us.us.us.us.us.us = icmp slt i64 %i.cp, %i.cw
  br i1 %.not93.us.us.us.us.us.us.us, label %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us, label %.loopexit.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us:     ; preds = %bb.h
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !75
  %i.cz = fadd fast float %i.cy, %.271176.us.us.us.us.us.us.us
  %i.da = add nsw i32 %.2177.us.us.us.us.us.us.us, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us, %bb.g
  %.372.ph.us.us.us.us.us.us.us = phi float [ %.271176.us.us.us.us.us.us.us, %bb.g ], [ %i.cz, %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us ] ; 2 uses
  %.3.ph.us.us.us.us.us.us.us = phi i32 [ %.2177.us.us.us.us.us.us.us, %bb.g ], [ %i.da, %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit.us.us.us.us.us.us.us, label %bb.g, !llvm.loop !150

.loopexit.us.us.us.us.us.us.us:                   ; preds = %bb.h, %bb.i, %.preheader.us.us.us.us.us.us.us, %bb.e
  %.574.ph.us.us.us.us.us.us.us = phi float [ %.170184.us.us.us.us.us.us.us, %bb.e ], [ %.170184.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %.271176.us.us.us.us.us.us.us, %bb.h ], [ %.372.ph.us.us.us.us.us.us.us, %bb.i ] ; 2 uses
  %.5.ph.us.us.us.us.us.us.us = phi i32 [ %.1185.us.us.us.us.us.us.us, %bb.e ], [ %.1185.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %.2177.us.us.us.us.us.us.us, %bb.h ], [ %.3.ph.us.us.us.us.us.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit175.us.us.us.us.us.us.us, label %bb.e, !llvm.loop !151

.loopexit175.us.us.us.us.us.us.us:                ; preds = %bb.f, %.loopexit.us.us.us.us.us.us.us, %.preheader174.us.us.us.us.us.us.us, %bb.c
  %.776.ph.us.us.us.us.us.us.us = phi float [ %.069193.us.us.us.us.us.us.us, %bb.c ], [ %.069193.us.us.us.us.us.us.us, %.preheader174.us.us.us.us.us.us.us ], [ %.170184.us.us.us.us.us.us.us, %bb.f ], [ %.574.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 2 uses
  %.7.ph.us.us.us.us.us.us.us = phi i32 [ %.068194.us.us.us.us.us.us.us, %bb.c ], [ %.068194.us.us.us.us.us.us.us, %.preheader174.us.us.us.us.us.us.us ], [ %.1185.us.us.us.us.us.us.us, %bb.f ], [ %.5.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count265
  br i1 %exitcond266.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !152

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %.loopexit175.us.us.us.us.us.us.us, %bb.d
  %.069.lcssa.us.us.us.us.us.us.us = phi float [ %.069193.us.us.us.us.us.us.us, %bb.d ], [ %.776.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ]
  %.068.lcssa.us.us.us.us.us.us.us = phi i32 [ %.068194.us.us.us.us.us.us.us, %bb.d ], [ %.7.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ]
  %i.db = sitofp fast i32 %.068.lcssa.us.us.us.us.us.us.us to float
  %i.dc = fdiv fast float %.069.lcssa.us.us.us.us.us.us.us, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.185208.us.us.us.us.us.us, i64 %indvars.iv267
  store float %i.dc, ptr %i.dd, align 4, !tbaa !75
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge206.split.us.us.us.us.us.us.us, label %.lr.ph196.us.us.us.us.us.us.us, !llvm.loop !153

._crit_edge206.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.185208.us.us.us.us.us.us, i64 %i.av ; 2 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.lr.ph205.us.us.us.us.us.us, !llvm.loop !154

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge206.split.us.us.us.us.us.us.us
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us, label %.lr.ph.us.us.us.us, !llvm.loop !155

._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1 ; 2 uses
  %lftr.wideiv285 = trunc i64 %indvars.iv.next283 to i32
  %exitcond286.not = icmp eq i32 %i.bh, %lftr.wideiv285
  br i1 %exitcond286.not, label %._crit_edge.split232, label %.noexc96.us.us

.noexc96.us:                                      ; preds = %.noexc96.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us238
  %indvars.iv248 = phi i64 [ %i.ay, %.noexc96.us.preheader ], [ %indvars.iv.next249, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us238 ] ; 2 uses
  %.reass231.us = mul i64 %factor.op.mul230, %indvars.iv248
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass231.us
  br label %.lr.ph.us.us235

.lr.ph.us.us235:                                  ; preds = %._crit_edge.split.us.split.us224.us, %.noexc96.us
  %.083218.us.us236 = phi i32 [ 0, %.noexc96.us ], [ %i.dm, %._crit_edge.split.us.split.us224.us ]
  %.084217.us.us237 = phi ptr [ %i.df, %.noexc96.us ], [ %i.dk, %._crit_edge.split.us.split.us224.us ]
  br label %.lr.ph205.us.us221.us

.lr.ph205.us.us221.us:                            ; preds = %._crit_edge206.split.us213.us.us, %.lr.ph.us.us235
  %.079210.us.us222.us = phi i32 [ 0, %.lr.ph.us.us235 ], [ %i.dl, %._crit_edge206.split.us213.us.us ]
  %.185208.us.us223.us = phi ptr [ %.084217.us.us237, %.lr.ph.us.us235 ], [ %i.dk, %._crit_edge206.split.us213.us.us ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph205.us.us221.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph205.us.us221.us ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.185208.us.us223.us, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> splat (float +qnan), ptr %i.dg, align 4, !tbaa !75
  store <4 x float> splat (float +qnan), ptr %i.dh, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge206.split.us213.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph205.us.us221.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph205.us.us221.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.185208.us.us223.us, i64 %indvars.iv
  store float +qnan, ptr %i.dj, align 4, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge206.split.us213.us.us, label %scalar.ph, !llvm.loop !157

._crit_edge206.split.us213.us.us:                 ; preds = %scalar.ph, %middle.block
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.185208.us.us223.us, i64 %i.av ; 2 uses
  %i.dl = add nuw nsw i32 %.079210.us.us222.us, 1 ; 2 uses
  %exitcond246.not = icmp eq i32 %i.dl, %i.aq
  br i1 %exitcond246.not, label %._crit_edge.split.us.split.us224.us, label %.lr.ph205.us.us221.us, !llvm.loop !154

._crit_edge.split.us.split.us224.us:              ; preds = %._crit_edge206.split.us213.us.us
  %i.dm = add nuw nsw i32 %.083218.us.us236, 1    ; 2 uses
  %exitcond247.not = icmp eq i32 %i.dm, %i.ab
  br i1 %exitcond247.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us238, label %.lr.ph.us.us235, !llvm.loop !155

._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us238: ; preds = %._crit_edge.split.us.split.us224.us
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next249 to i32
  %exitcond251.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond251.not, label %._crit_edge.split232, label %.noexc96.us

._crit_edge.split232:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us238, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us, %.noexc96.lr.ph.split.split, %.noexc96.lr.ph, %.noexc96.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split232, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 3 uses
  %.not130 = icmp sgt i32 %i.k, %i.j
  br i1 %.not130, label %._crit_edge.split135, label %.noexc50.lr.ph

.noexc50.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50, !noalias !170
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52, !noalias !170
  %i.p = load ptr, ptr %3, align 8, !tbaa !58, !noalias !170
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !170
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !55, !noalias !170 ; 3 uses
  %factor.op.mul132 = mul i64 %i.r, %i.t
  %i.u = sext i32 %i.m to i64                     ; 2 uses
  %i.v = sext i32 %i.o to i64
  %i.w = load ptr, ptr %4, align 8, !tbaa !58, !noalias !171 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59, !noalias !171
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !171
  %factor.op.mul133 = mul i64 %i.y, %i.aa         ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !51    ; 5 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.ac = icmp sgt i32 %i.ab, 0
  %factor.op.mul109.reass = mul i64 %factor.op.mul, %i.u
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 228
  %i.af = mul i64 %i.t, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 224
  br i1 %i.ac, label %.noexc50.lr.ph.split, label %._crit_edge.split135

.noexc50.lr.ph.split:                             ; preds = %.noexc50.lr.ph
  %i.ah = load i32, ptr %6, align 4, !tbaa !51    ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.noexc50.lr.ph.split.split, label %._crit_edge.split135

.noexc50.lr.ph.split.split:                       ; preds = %.noexc50.lr.ph.split
  %i.aj = load i32, ptr %7, align 4, !tbaa !51    ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.ak, label %.noexc50.lr.ph.split.split.split.us, label %._crit_edge.split135

.noexc50.lr.ph.split.split.split.us:              ; preds = %.noexc50.lr.ph.split.split
  %i.am = load i32, ptr %9, align 4, !tbaa !51    ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc50.lr.ph.split.split.split.us.split.us, label %.noexc50.us.preheader

.noexc50.us.preheader:                            ; preds = %.noexc50.lr.ph.split.split.split.us
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = zext nneg i32 %i.ah to i64
  %i.aq = mul nuw nsw i64 %i.ao, %i.ap
  %11 = shl nuw i64 %i.aq, 2                      ; 9 uses
  %12 = add nsw i32 %i.ah, -1
  %i.ar = zext nneg i32 %12 to i64
  %13 = shl nuw nsw i64 %i.ar, 2
  %14 = add nuw nsw i64 %13, 4
  %15 = mul nuw i64 %14, %i.al                    ; 9 uses
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %xtraiter = and i32 %i.ab, 7                    ; 3 uses
  %16 = icmp ult i32 %i.ab, 8
  %unroll_iter = and i32 %i.ab, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod191 = icmp ne i32 %xtraiter, 0
  br label %.noexc50.us

.noexc50.lr.ph.split.split.split.us.split.us:     ; preds = %.noexc50.lr.ph.split.split.split.us
  %i.au = sitofp fast i32 %i.am to float
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ax = load i32, ptr %i.ad, align 8, !tbaa !34
  %i.ay = load ptr, ptr %10, align 8, !tbaa !70   ; 5 uses
  %i.az = sext i32 %i.av to i64
  %i.ba = sext i32 %i.aw to i64
  %i.bb = sext i32 %i.ax to i64
  %i.bc = sext i32 %i.k to i64
  %i.bd = add nsw i32 %i.j, 1
  %wide.trip.count169 = zext nneg i32 %i.ab to i64
  %factor.op.mul185 = mul i64 %factor.op.mul109.reass, %i.bb
  %wide.trip.count164 = zext nneg i32 %i.ah to i64
  %factor.op.mul184 = mul i64 %i.af, %i.ba
  %wide.trip.count159 = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext nneg i32 %i.am to i64   ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.be = icmp ult i32 %i.am, 4
  %unroll_iter197 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  %i.bf = fdiv fast float 1.000000e+00, %i.au
  br label %.noexc50.us.us

.noexc50.us.us:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, %.noexc50.lr.ph.split.split.split.us.split.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us ], [ %i.bc, %.noexc50.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul132, %indvars.iv171
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us.us
  %.reass134.us.us = mul i64 %factor.op.mul133, %indvars.iv171
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass134.us.us
  br label %.preheader101.us.us.us.us

.preheader101.us.us.us.us:                        ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc50.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc50.us.us ] ; 2 uses
  %.045119.us.us.us.us = phi ptr [ %i.cv, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bh, %.noexc50.us.us ]
  %.reass186 = mul i64 %indvars.iv166, %factor.op.mul185
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.reass186
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge107.split.us.us.us.us.us.us.us, %.preheader101.us.us.us.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge107.split.us.us.us.us.us.us.us ], [ 0, %.preheader101.us.us.us.us ] ; 2 uses
  %.1110.us.us.us.us.us.us = phi ptr [ %i.cv, %._crit_edge107.split.us.us.us.us.us.us.us ], [ %.045119.us.us.us.us, %.preheader101.us.us.us.us ] ; 2 uses
  %.reass = mul i64 %indvars.iv161, %factor.op.mul184
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us:     ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %i.bk = mul nsw i64 %indvars.iv156, %i.az
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk ; 5 uses
  br i1 %i.be, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new: ; preds = %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.3, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ] ; 5 uses
  %.041103.us.us.us.us.us.us.us = phi float [ %i.cm, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ]
  %niter198 = phi i64 [ %niter198.next.3, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv152
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !75
  %i.br = fadd fast float %i.bq, %.041103.us.us.us.us.us.us.us
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !51
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !75
  %i.by = fadd fast float %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv152
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !75
  %i.cf = fadd fast float %i.ce, %i.by
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv152
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !51
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !75
  %i.cm = fadd fast float %i.cl, %i.cf            ; 3 uses
  %indvars.iv.next153.3 = add nuw nsw i64 %indvars.iv152, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new, !llvm.loop !164

._crit_edge.us.us.us.us.us.us.us.unr-lcssa:       ; preds = %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod194.not, label %._crit_edge.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us
  %indvars.iv152.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ], [ %indvars.iv.next153.3, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  %.041103.us.us.us.us.us.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ], [ %i.cm, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv152.epil = phi i64 [ %indvars.iv.next153.epil, %bb.c ], [ %indvars.iv152.epil.init, %.epil.preheader ] ; 2 uses
  %.041103.us.us.us.us.us.us.us.epil = phi float [ %i.cs, %bb.c ], [ %.041103.us.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv152.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !75
  %i.cs = fadd fast float %i.cr, %.041103.us.us.us.us.us.us.us.epil ; 2 uses
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !165

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cm, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ], [ %i.cs, %bb.c ]
  %i.ct = fmul fast float %.lcssa, %i.bf
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.1110.us.us.us.us.us.us, i64 %indvars.iv156
  store float %i.ct, ptr %i.cu, align 4, !tbaa !75
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge107.split.us.us.us.us.us.us.us, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us, !llvm.loop !166

._crit_edge107.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.1110.us.us.us.us.us.us, i64 %i.al ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !167

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge107.split.us.us.us.us.us.us.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, label %.preheader101.us.us.us.us, !llvm.loop !168

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv174 = trunc i64 %indvars.iv.next172 to i32
  %exitcond175.not = icmp eq i32 %i.bd, %lftr.wideiv174
  br i1 %exitcond175.not, label %._crit_edge.split135, label %.noexc50.us.us

.noexc50.us:                                      ; preds = %.noexc50.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141
  %indvars.iv = phi i64 [ %i.as, %.noexc50.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141 ] ; 2 uses
  %.reass134.us = mul i64 %factor.op.mul133, %indvars.iv
  %17 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass134.us ; 2 uses
  br i1 %16, label %.preheader101.us.us138.epil.preheader, label %.preheader101.us.us138

.preheader101.us.us138:                           ; preds = %.noexc50.us, %.preheader101.us.us138
  %.045119.us.us140 = phi ptr [ %scevgep.7, %.preheader101.us.us138 ], [ %17, %.noexc50.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.preheader101.us.us138 ], [ 0, %.noexc50.us ]
  call void @llvm.memset.p0.i64(ptr align 4 %.045119.us.us140, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep = getelementptr i8, ptr %.045119.us.us140, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.1 = getelementptr i8, ptr %scevgep, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.2 = getelementptr i8, ptr %scevgep.1, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.3 = getelementptr i8, ptr %scevgep.2, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.4 = getelementptr i8, ptr %scevgep.3, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.5 = getelementptr i8, ptr %scevgep.4, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.6 = getelementptr i8, ptr %scevgep.5, i64 %15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.7 = getelementptr i8, ptr %scevgep.6, i64 %15 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141.unr-lcssa, label %.preheader101.us.us138, !llvm.loop !168

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141.unr-lcssa: ; preds = %.preheader101.us.us138
  br i1 %lcmp.mod.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141, label %.preheader101.us.us138.epil.preheader

.preheader101.us.us138.epil.preheader:            ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141.unr-lcssa, %.noexc50.us
  %.045119.us.us140.epil.init = phi ptr [ %17, %.noexc50.us ], [ %scevgep.7, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %.preheader101.us.us138.epil

.preheader101.us.us138.epil:                      ; preds = %.preheader101.us.us138.epil, %.preheader101.us.us138.epil.preheader
  %.045119.us.us140.epil = phi ptr [ %.045119.us.us140.epil.init, %.preheader101.us.us138.epil.preheader ], [ %scevgep.epil, %.preheader101.us.us138.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader101.us.us138.epil.preheader ], [ %epil.iter.next, %.preheader101.us.us138.epil ]
  call void @llvm.memset.p0.i64(ptr align 4 %.045119.us.us140.epil, i8 0, i64 %11, i1 false), !tbaa !75
  %scevgep.epil = getelementptr i8, ptr %.045119.us.us140.epil, i64 %15
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141, label %.preheader101.us.us138.epil, !llvm.loop !169

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141: ; preds = %.preheader101.us.us138.epil, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141.unr-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond151.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond151.not, label %._crit_edge.split135, label %.noexc50.us

._crit_edge.split135:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us141, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, %.noexc50.lr.ph.split.split, %.noexc50.lr.ph, %.noexc50.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split135, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !6, i64 16}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!21 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!26 = !{!"_ZTSN4ncnn5LayerE", !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 22, !10, i64 23, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !7, i64 28, !11, i64 32, !7, i64 40, !15, i64 48, !15, i64 80, !20, i64 112, !20, i64 136, !25, i64 160, !25, i64 184}
!27 = !{!"_ZTSN4ncnn9Pooling3DE", !26, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284}
!28 = !{!27, !7, i64 208}
!29 = !{!27, !7, i64 212}
!30 = !{!27, !7, i64 216}
!31 = !{!27, !7, i64 220}
!32 = !{!27, !7, i64 224}
!33 = !{!27, !7, i64 228}
!34 = !{!27, !7, i64 232}
!35 = !{!27, !7, i64 236}
!36 = !{!27, !7, i64 240}
!37 = !{!27, !7, i64 244}
!38 = !{!27, !7, i64 248}
!39 = !{!27, !7, i64 252}
!40 = !{!27, !7, i64 256}
!41 = !{!27, !7, i64 260}
!42 = !{!27, !7, i64 264}
!43 = !{!27, !7, i64 268}
!44 = !{!27, !7, i64 272}
!45 = !{!27, !7, i64 276}
!46 = !{!27, !7, i64 280}
!47 = !{!27, !7, i64 284}
!48 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!49 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !16, i64 8, !14, i64 16, !7, i64 24, !48, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!50 = !{!49, !7, i64 44}
!51 = !{!7, !7, i64 0}
!52 = !{!49, !7, i64 48}
!53 = !{!49, !7, i64 52}
!54 = !{!49, !7, i64 56}
!55 = !{!49, !14, i64 16}
!56 = !{!"_ZTSN4ncnn6OptionE", !10, i64 0, !10, i64 1, !10, i64 2, !10, i64 3, !7, i64 4, !48, i64 8, !48, i64 16, !7, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31, !10, i64 32, !10, i64 33, !10, i64 34, !10, i64 35, !10, i64 36, !10, i64 37, !10, i64 38, !10, i64 39, !7, i64 40, !10, i64 44, !10, i64 45, !10, i64 46, !10, i64 47, !6, i64 48, !10, i64 49, !10, i64 50, !10, i64 51, !10, i64 52, !10, i64 53, !10, i64 54, !10, i64 55, !10, i64 56, !10, i64 57, !10, i64 58, !10, i64 59, !10, i64 60, !10, i64 61, !10, i64 62, !10, i64 63}
!57 = !{!56, !48, i64 8}
!58 = !{!49, !11, i64 0}
!59 = !{!49, !14, i64 64}
!60 = !{!49, !16, i64 8}
!61 = !{!49, !48, i64 32}
!62 = !{!"vtable pointer", !5, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!11, !11, i64 0}
!65 = !{!49, !7, i64 24}
!66 = !{!10, !10, i64 0}
!67 = !{!48, !48, i64 0}
!68 = !{!6, !6, i64 0}
!69 = !{i64 0, i64 1, !66, i64 1, i64 1, !66, i64 2, i64 1, !66, i64 3, i64 1, !66, i64 4, i64 4, !51, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 4, !51, i64 28, i64 1, !66, i64 29, i64 1, !66, i64 30, i64 1, !66, i64 31, i64 1, !66, i64 32, i64 1, !66, i64 33, i64 1, !66, i64 34, i64 1, !66, i64 35, i64 1, !66, i64 36, i64 1, !66, i64 37, i64 1, !66, i64 38, i64 1, !66, i64 39, i64 1, !66, i64 40, i64 4, !51, i64 44, i64 1, !66, i64 45, i64 1, !66, i64 46, i64 1, !66, i64 47, i64 1, !66, i64 48, i64 1, !68, i64 49, i64 1, !66, i64 50, i64 1, !66, i64 51, i64 1, !66, i64 52, i64 1, !66, i64 53, i64 1, !66, i64 54, i64 1, !66, i64 55, i64 1, !66, i64 56, i64 1, !66, i64 57, i64 1, !66, i64 58, i64 1, !66, i64 59, i64 1, !66, i64 60, i64 1, !66, i64 61, i64 1, !66, i64 62, i64 1, !66, i64 63, i64 1, !66}
!70 = !{!16, !16, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!"float", !6, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{i64 2, i64 -1, i64 -1, i1 true}
!78 = !{!77}
!79 = distinct !{!79, !71, !72, !73}
!80 = distinct !{!80, !71, !73, !72}
!81 = distinct !{!81, !71}
!82 = distinct !{!82, !71}
!83 = !{!56, !7, i64 4}
!84 = !{!56, !10, i64 39}
!85 = !{!26, !10, i64 8}
!86 = !{!26, !10, i64 9}
!87 = distinct !{!87, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!88 = distinct !{!88, !87, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, !76}
!90 = distinct !{!90, !71, !72, !73}
!91 = distinct !{!91, !71, !73, !72}
!92 = !{!88}
!93 = distinct !{!93, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!94 = distinct !{!94, !93, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, !71, !72, !73}
!96 = distinct !{!96, !71, !73, !72}
!97 = !{!94}
!98 = distinct !{!98, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!99 = distinct !{!99, !98, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!101 = distinct !{!101, !100, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!102 = distinct !{!102, !71}
!103 = distinct !{!103, !71}
!104 = distinct !{!104, !71, !72, !73}
!105 = distinct !{!105, !76}
!106 = distinct !{!106, !71, !72}
!107 = distinct !{!107, !71}
!108 = distinct !{!108, !71}
!109 = distinct !{!109, !71}
!110 = !{!99}
!111 = !{!101}
!112 = distinct !{!112, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!113 = distinct !{!113, !112, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!115 = distinct !{!115, !114, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!116 = distinct !{!116, !71, !72, !73}
!117 = distinct !{!117, !76}
!118 = distinct !{!118, !71, !72}
!119 = distinct !{!119, !71}
!120 = distinct !{!120, !71}
!121 = distinct !{!121, !71}
!122 = distinct !{!122, !71}
!123 = distinct !{!123, !71}
!124 = !{!113}
!125 = !{!115}
!126 = !{!56, !48, i64 16}
!127 = distinct !{!127, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!128 = distinct !{!128, !127, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!130 = distinct !{!130, !129, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!131 = distinct !{!131, !71}
!132 = distinct !{!132, !76}
!133 = distinct !{!133, !71}
!134 = distinct !{!134, !71}
!135 = distinct !{!135, !71}
!136 = distinct !{!136, i1 false, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !71, !72, !73}
!140 = distinct !{!140, !76}
!141 = distinct !{!141, !71, !72}
!142 = !{!128}
!143 = !{!130}
!144 = !{!137}
!145 = !{!138}
!146 = distinct !{!146, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!147 = distinct !{!147, !146, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!148 = distinct !{!148, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!149 = distinct !{!149, !148, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!150 = distinct !{!150, !71}
!151 = distinct !{!151, !71}
!152 = distinct !{!152, !71}
!153 = distinct !{!153, !71}
!154 = distinct !{!154, !71}
!155 = distinct !{!155, !71}
!156 = distinct !{!156, !71, !72, !73}
!157 = distinct !{!157, !71, !73, !72}
!158 = !{!147}
!159 = !{!149}
!160 = distinct !{!160, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!161 = distinct !{!161, !160, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!162 = distinct !{!162, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!163 = distinct !{!163, !162, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!164 = distinct !{!164, !71}
!165 = distinct !{!165, !76}
!166 = distinct !{!166, !71}
!167 = distinct !{!167, !71}
!168 = distinct !{!168, !71}
!169 = distinct !{!169, !76}
!170 = !{!161}
!171 = !{!163}
end_hunk_1
