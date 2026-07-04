inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@bsdf_approximate_edge:bb.a
  %i.ef = lshr i64 %i.ee, 16
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %.neg55 = add nsw i32 %i.cz, %.neg.i
  %i.eh = add nuw nsw i32 %i.dp, %i.ec
  %i.ei = sub nsw i32 %.neg55, %i.eh
  %i.ej = add nsw i32 %i.ei, %i.eg
  %i.ek = add nsw i32 %i.ej, %i.dy
  %i.el = sext i32 %i.ek to i64
  store i64 %i.el, ptr %1, align 8, !tbaa !52
  %i.em = mul nuw nsw i64 %i.cs, 23726336
  %i.en = add nuw nsw i64 %i.em, 32768
  %i.eo = lshr i64 %i.en, 16
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = mul nuw nsw i64 %i.du, 23726336
  %i.er = add nuw nsw i64 %i.eq, 32768
  %i.es = lshr i64 %i.er, 16
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = add nuw nsw i32 %i.cz, %i.ep
  %i.ev = sub nsw i32 %.neg.i, %i.eu
  %i.ew = add nsw i32 %i.ev, %i.dp
  %i.ex = add nsw i32 %i.ew, %i.dy
  %i.ey = add nsw i32 %i.ex, %i.et
  %i.ez = sext i32 %i.ey to i64
  store i64 %i.ez, ptr %i.f, align 8, !tbaa !53
  %i.fa = call i32 @FT_Vector_NormLen(ptr noundef nonnull %1) #12 ; 0 uses
  %i.fb = load i64, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = load i64, ptr %i.f, align 8             ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  %or.cond4.i = select i1 %i.fc, i1 true, i1 %i.fe
  br i1 %or.cond4.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ff = sub nsw i32 32768, %i.dg
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.fg = trunc i64 %i.fb to i32
  %i.fh = trunc i64 %i.fd to i32
  %i.fi = call i32 @llvm.abs.i32(i32 %i.fg, i1 true) ; 4 uses
  %i.fj = call i32 @llvm.abs.i32(i32 %i.fh, i1 true) ; 4 uses
  %spec.select.i42 = call i32 @llvm.umin.i32(i32 %i.fi, i32 %i.fj)
  %spec.select74.i = call i32 @llvm.umax.i32(i32 %i.fi, i32 %i.fj)
  %i.fk = zext nneg i32 %spec.select.i42 to i64   ; 3 uses
  %i.fl = zext nneg i32 %spec.select74.i to i64   ; 4 uses
  %i.fm = call i64 @FT_DivFix(i64 noundef %i.fk, i64 noundef %i.fl) #12
  %i.fn = sdiv i64 %i.fm, 2
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  %i.fp = icmp slt i32 %i.dg, %i.fo
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fq = add nuw nsw i32 %i.fj, %i.fi
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = zext nneg i32 %i.dg to i64
  %i.ft = mul nuw nsw i64 %i.fk, %i.fs
  %i.fu = add nuw nsw i64 %i.ft, 32768
  %i.fv = lshr i64 %i.fu, 16
  %i.fw = mul nuw nsw i64 %i.fv, %i.fl
  %i.fx = add nuw nsw i64 %i.fw, 32768
  %sh.diff78.i = lshr i64 %i.fx, 15
  %tr.sh.diff79.i = trunc i64 %sh.diff78.i to i32
  %i.fy = and i32 %tr.sh.diff79.i, -2
  %i.fz = call fastcc i32 @square_root(i32 noundef %i.fy)
  %i.ga = sub nsw i32 %i.fr, %i.fz
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.gb = sub nsw i32 65536, %i.fo
  %i.gc = icmp samesign ult i32 %i.dg, %i.gb
  br i1 %i.gc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gd = sub nsw i32 32768, %i.dg
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul nsw i64 %i.fl, %i.ge                ; 2 uses
  %i.gg = ashr i64 %i.gf, 63
  %i.gh = add nsw i64 %i.gf, 32768
  %i.gi = add nsw i64 %i.gh, %i.gg
  %i.gj = lshr i64 %i.gi, 16
  %i.gk = trunc i64 %i.gj to i32
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gl = add nuw nsw i32 %i.fj, %i.fi
  %i.gm = lshr i32 %i.gl, 1
  %i.gn = sub nuw nsw i32 65536, %i.dg
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = mul nuw nsw i64 %i.fk, %i.go
  %i.gq = add nuw nsw i64 %i.gp, 32768
  %i.gr = lshr i64 %i.gq, 16
  %i.gs = mul nuw nsw i64 %i.gr, %i.fl
  %i.gt = add nuw nsw i64 %i.gs, 32768
  %sh.diff.i = lshr i64 %i.gt, 15
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.gu = and i32 %tr.sh.diff.i, -2
  %i.gv = call fastcc i32 @square_root(i32 noundef %i.gu)
  %i.gw = sub nsw i32 %i.gv, %i.gm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.u
  %.0.i43 = phi i32 [ %i.ff, %bb.u ], [ %i.ga, %bb.w ], [ %i.gk, %bb.y ], [ %i.gw, %bb.z ]
  %i.gx = load i64, ptr %1, align 8, !tbaa !52
  %sext.i = shl i64 %i.gx, 32
  %i.gy = ashr exact i64 %sext.i, 32
  %i.gz = sext i32 %.0.i43 to i64                 ; 2 uses
  %i.ha = mul nsw i64 %i.gy, %i.gz                ; 2 uses
  %i.hb = ashr i64 %i.ha, 63
  %i.hc = add nsw i64 %i.ha, 32768
  %i.hd = add nsw i64 %i.hc, %i.hb
  %i.he = shl i64 %i.hd, 16
  %i.hf = ashr i64 %i.he, 32
  %i.hg = load i64, ptr %i.f, align 8, !tbaa !53
  %sext81.i = shl i64 %i.hg, 32
  %i.hh = ashr exact i64 %sext81.i, 32
  %i.hi = mul nsw i64 %i.hh, %i.gz                ; 2 uses
  %i.hj = ashr i64 %i.hi, 63
  %i.hk = add nsw i64 %i.hi, 32768
  %i.hl = add nsw i64 %i.hk, %i.hj
  %i.hm = shl i64 %i.hl, 16
  %i.hn = ashr i64 %i.hm, 32
  br label %compute_edge_distance.exit

compute_edge_distance.exit:                       ; preds = %bsdf_is_edge.exit.thread49, %bb.s, %bb.aa
  %i.ho = phi ptr [ %i.bz, %bsdf_is_edge.exit.thread49 ], [ %i.cb, %bb.s ], [ %i.cb, %bb.aa ] ; 2 uses
  %i.hp = phi ptr [ %i.by, %bsdf_is_edge.exit.thread49 ], [ %i.cc, %bb.s ], [ %i.cc, %bb.aa ] ; 2 uses
  %.fca.1.load.i = phi i64 [ 0, %bsdf_is_edge.exit.thread49 ], [ 0, %bb.s ], [ %i.hn, %bb.aa ]
  %.fca.0.load.i = phi i64 [ 0, %bsdf_is_edge.exit.thread49 ], [ 0, %bb.s ], [ %i.hf, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i64 %.fca.0.load.i, ptr %i.ho, align 8, !tbaa !88
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %.fca.1.load.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  %i.hq = call i64 @FT_Vector_Length(ptr noundef nonnull %i.ho) #12
  %i.hr = trunc i64 %i.hq to i32
  store i32 %i.hr, ptr %i.hp, align 8, !tbaa !115
  %.pre = load i32, ptr %i.e, align 8, !tbaa !102
  br label %bb.ab

bsdf_is_edge.exit.thread46:                       ; preds = %bb.r, %bb.b
  %i.hs = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  store i32 26214400, ptr %i.hs, align 8, !tbaa !115
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 13107200, ptr %i.ht, align 8, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 13107200, ptr %i.hu, align 8, !tbaa !117
  br label %bb.ab

bb.ab:                                            ; preds = %compute_edge_distance.exit, %bsdf_is_edge.exit.thread46
  %i.hv = phi i32 [ %.pre, %compute_edge_distance.exit ], [ %i.o, %bsdf_is_edge.exit.thread46 ] ; 5 uses
  %i.hw = add nuw nsw i32 %.03660, 1              ; 2 uses
  %i.hx = icmp slt i32 %i.hw, %i.hv
  br i1 %i.hx, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !118

._crit_edge.loopexit:                             ; preds = %bb.ab
  %.pre66 = load i32, ptr %i.b, align 4, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre67, %.preheader.._crit_edge_crit_edge ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %i.hy = phi i32 [ %i.i, %.preheader.._crit_edge_crit_edge ], [ %.pre66, %._crit_edge.loopexit ] ; 2 uses
  %i.hz = phi i32 [ %i.j, %.preheader.._crit_edge_crit_edge ], [ %i.hv, %._crit_edge.loopexit ]
  %i.ia = phi i32 [ %i.k, %.preheader.._crit_edge_crit_edge ], [ %i.hv, %._crit_edge.loopexit ]
  %i.ib = icmp slt i32 %.pre-phi, %i.hy
  br i1 %i.ib, label %.preheader, label %.loopexit, !llvm.loop !119

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader59, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %.preheader.lr.ph ], [ 0, %.preheader59 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @edt8(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 14 uses
  %2 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %3 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 14 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %9 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %10 = alloca %struct.FT_Vector_, align 16       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %second_pass.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !103  ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.preheader.lr.ph.i, label %second_pass.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.g = icmp sgt i32 %i.c, 2
  %i.h = sub nsw i32 0, %i.c
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.c, -2                     ; 2 uses
  br i1 %i.g, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.l = add nsw i32 %i.c, -1
  %i.m = zext nneg i32 %i.k to i64
  %i.n = zext nneg i32 %i.c to i64
  %wide.trip.count59.i = zext nneg i32 %i.e to i64
  %wide.trip.count51.i = zext nneg i32 %i.l to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge40.us.i.loopexit, %.preheader.us.preheader.i
  %indvars.iv56.i = phi i64 [ 1, %.preheader.us.preheader.i ], [ %indvars.iv.next57.i, %._crit_edge40.us.i.loopexit ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv56.i, %i.n    ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %invariant.gep75.i = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.p
  br label %bb.f

._crit_edge40.us.i.loopexit:                      ; preds = %compare_neighbor.exit35.us.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %first_pass.exit, label %.preheader.us.i, !llvm.loop !121

bb.c:                                             ; preds = %._crit_edge.us.i, %compare_neighbor.exit35.us.i
  %indvars.iv53.i = phi i64 [ %i.m, %._crit_edge.us.i ], [ %indvars.iv.next54.i, %compare_neighbor.exit35.us.i ] ; 3 uses
  %gep78.i = getelementptr [32 x i8], ptr %invariant.gep77.i, i64 %indvars.iv53.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.q = getelementptr inbounds nuw i8, ptr %gep78.i, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115
  %i.s = add nsw i32 %i.r, -65536
  %i.t = load i32, ptr %gep78.i, align 8, !tbaa !115
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %compare_neighbor.exit35.us.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %gep78.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !122
  %i.w = load i64, ptr %6, align 8, !tbaa !52
  %i.x = add nsw i64 %i.w, 65536
  store i64 %i.x, ptr %6, align 8, !tbaa !52
  %i.y = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %gep78.i, align 8, !tbaa !115
  %i.ab = icmp sgt i32 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %compare_neighbor.exit35.us.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.z, ptr %gep78.i, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %gep78.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit35.us.i

compare_neighbor.exit35.us.i:                     ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1
  %i.ad = icmp sgt i64 %indvars.iv53.i, 0
  br i1 %i.ad, label %bb.c, label %._crit_edge40.us.i.loopexit, !llvm.loop !123

bb.f:                                             ; preds = %compare_neighbor.exit34.us.i, %.preheader.us.i
  %indvars.iv48.i = phi i64 [ 1, %.preheader.us.i ], [ %indvars.iv.next49.i, %compare_neighbor.exit34.us.i ] ; 2 uses
  %gep76.i = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep75.i, i64 %indvars.iv48.i ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.ae = getelementptr inbounds [32 x i8], ptr %gep76.i, i64 %i.i ; 6 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !115
  %i.ah = add nsw i32 %i.ag, -65536
  %i.ai = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %compare_neighbor.exit.us.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !122
  %i.al = load <2 x i64>, ptr %10, align 16, !tbaa !88
  %i.am = add nsw <2 x i64> %i.al, splat (i64 -65536)
  store <2 x i64> %i.am, ptr %10, align 16, !tbaa !88
  %i.an = call i64 @FT_Vector_Length(ptr noundef nonnull %10) #12
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.ao
  br i1 %i.aq, label %bb.h, label %compare_neighbor.exit.us.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ao, ptr %gep76.i, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit.us.i

compare_neighbor.exit.us.i:                       ; preds = %bb.h, %bb.g, %bb.f
  %i.as = phi i32 [ %i.ao, %bb.h ], [ %i.ap, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.at = load i32, ptr %i.ae, align 8, !tbaa !115
  %i.au = add nsw i32 %i.at, -65536
  %i.av = icmp slt i32 %i.au, %i.as
  br i1 %i.av, label %bb.i, label %compare_neighbor.exit32.us.i

bb.i:                                             ; preds = %compare_neighbor.exit.us.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !122
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !53
  %i.ay = add nsw i64 %i.ax, -65536
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !53
  %i.az = call i64 @FT_Vector_Length(ptr noundef nonnull %9) #12
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  %i.bb = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %i.ba
  br i1 %i.bc, label %bb.j, label %compare_neighbor.exit32.us.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.ba, ptr %gep76.i, align 8, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit32.us.i

compare_neighbor.exit32.us.i:                     ; preds = %bb.j, %bb.i, %compare_neighbor.exit.us.i
  %i.be = phi i32 [ %i.ba, %bb.j ], [ %i.bb, %bb.i ], [ %i.as, %compare_neighbor.exit.us.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !115
  %i.bh = add nsw i32 %i.bg, -65536
  %i.bi = icmp slt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %compare_neighbor.exit33.us.i

bb.k:                                             ; preds = %compare_neighbor.exit32.us.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !122
  %i.bk = load <2 x i64>, ptr %8, align 16, !tbaa !88
  %i.bl = add nsw <2 x i64> %i.bk, <i64 65536, i64 -65536>
  store <2 x i64> %i.bl, ptr %8, align 16, !tbaa !88
  %i.bm = call i64 @FT_Vector_Length(ptr noundef nonnull %8) #12
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = load i32, ptr %gep76.i, align 8, !tbaa !115 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %i.bn
  br i1 %i.bp, label %bb.l, label %compare_neighbor.exit33.us.i

bb.l:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %gep76.i, align 8, !tbaa !115
  %i.bq = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit33.us.i

compare_neighbor.exit33.us.i:                     ; preds = %bb.l, %bb.k, %compare_neighbor.exit32.us.i
  %i.br = phi i32 [ %i.bn, %bb.l ], [ %i.bo, %bb.k ], [ %i.be, %compare_neighbor.exit32.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bs = getelementptr inbounds i8, ptr %gep76.i, i64 -32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !115
  %i.bu = add nsw i32 %i.bt, -65536
  %i.bv = icmp slt i32 %i.bu, %i.br
  br i1 %i.bv, label %bb.m, label %compare_neighbor.exit34.us.i

bb.m:                                             ; preds = %compare_neighbor.exit33.us.i
  %i.bw = getelementptr inbounds i8, ptr %gep76.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !122
  %i.bx = load i64, ptr %7, align 8, !tbaa !52
  %i.by = add nsw i64 %i.bx, -65536
  store i64 %i.by, ptr %7, align 8, !tbaa !52
  %i.bz = call i64 @FT_Vector_Length(ptr noundef nonnull %7) #12
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = load i32, ptr %gep76.i, align 8, !tbaa !115
  %i.cc = icmp sgt i32 %i.cb, %i.ca
  br i1 %i.cc, label %bb.n, label %compare_neighbor.exit34.us.i

bb.n:                                             ; preds = %bb.m
  store i32 %i.ca, ptr %gep76.i, align 8, !tbaa !115
  %i.cd = getelementptr inbounds nuw i8, ptr %gep76.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit34.us.i:                     ; preds = %bb.n, %bb.m, %compare_neighbor.exit33.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.us.i, label %bb.f, !llvm.loop !124

._crit_edge.us.i:                                 ; preds = %compare_neighbor.exit34.us.i
  %invariant.gep77.i = getelementptr [32 x i8], ptr %i.a, i64 %i.o
  br label %bb.c

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ce = icmp eq i32 %i.c, 2
  br i1 %i.ce, label %.preheader.preheader.i, label %first_pass.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.cf = zext nneg i32 %i.k to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge40.i, %.preheader.preheader.i
  %indvars.iv45.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next46.i, %._crit_edge40.i ] ; 2 uses
  %.idx.i = shl i64 %indvars.iv45.i, 6
  %invariant.gep.i = getelementptr i8, ptr %i.a, i64 %.idx.i
  br label %bb.o

bb.o:                                             ; preds = %compare_neighbor.exit35.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cf, %.preheader.i ], [ %indvars.iv.next.i, %compare_neighbor.exit35.i ] ; 3 uses
  %gep.i = getelementptr [32 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cg = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !115
  %i.ci = add nsw i32 %i.ch, -65536
  %i.cj = load i32, ptr %gep.i, align 8, !tbaa !115
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.p, label %compare_neighbor.exit35.i

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %gep.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !122
  %i.cm = load i64, ptr %6, align 8, !tbaa !52
  %i.cn = add nsw i64 %i.cm, 65536
  store i64 %i.cn, ptr %6, align 8, !tbaa !52
  %i.co = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = load i32, ptr %gep.i, align 8, !tbaa !115
  %i.cr = icmp sgt i32 %i.cq, %i.cp
  br i1 %i.cr, label %bb.q, label %compare_neighbor.exit35.i

bb.q:                                             ; preds = %bb.p
  store i32 %i.cp, ptr %gep.i, align 8, !tbaa !115
  %i.cs = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit35.i

compare_neighbor.exit35.i:                        ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ct = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ct, label %bb.o, label %._crit_edge40.i, !llvm.loop !123

._crit_edge40.i:                                  ; preds = %compare_neighbor.exit35.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %first_pass.exit, label %.preheader.i, !llvm.loop !121

first_pass.exit:                                  ; preds = %._crit_edge40.i, %._crit_edge40.us.i.loopexit, %.preheader.lr.ph.split.i
  %.pr = load i32, ptr %i.d, align 4, !tbaa !103  ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.cv = add nsw i32 %.pr, -2                    ; 2 uses
  %i.cw = icmp sgt i32 %.pr, 1
  br i1 %i.cw, label %.preheader.lr.ph.i5, label %second_pass.exit

.preheader.lr.ph.i5:                              ; preds = %first_pass.exit
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !102 ; 5 uses
  %i.cy = icmp sgt i32 %i.cx, 2
  %i.cz = sext i32 %i.cx to i64                   ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.db = add nsw i32 %i.cx, -2                   ; 2 uses
  br i1 %i.cy, label %.preheader.us.preheader.i17, label %.preheader.lr.ph.split.i6

.preheader.us.preheader.i17:                      ; preds = %.preheader.lr.ph.i5
  %i.dc = add nsw i32 %i.cx, -1
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = zext nneg i32 %i.cv to i64
  %wide.trip.count.i18 = zext nneg i32 %i.dc to i64
  br label %.preheader.us.i19

.preheader.us.i19:                                ; preds = %._crit_edge40.us.i28.loopexit, %.preheader.us.preheader.i17
  %indvars.iv54.i = phi i64 [ %i.de, %.preheader.us.preheader.i17 ], [ %indvars.iv.next55.i, %._crit_edge40.us.i28.loopexit ] ; 3 uses
  %i.df = mul nsw i64 %indvars.iv54.i, %i.cz
  %invariant.gep69.i = getelementptr [32 x i8], ptr %i.cu, i64 %i.df ; 2 uses
  br label %bb.t

._crit_edge40.us.i28.loopexit:                    ; preds = %compare_neighbor.exit35.us.i30
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.dg = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.dg, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !125

.lr.ph39.us.i29:                                  ; preds = %compare_neighbor.exit34.us.i24, %compare_neighbor.exit35.us.i30
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %compare_neighbor.exit35.us.i30 ], [ %i.dd, %compare_neighbor.exit34.us.i24 ] ; 3 uses
  %gep72.i = getelementptr [32 x i8], ptr %invariant.gep69.i, i64 %indvars.iv51.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.dh = getelementptr inbounds nuw i8, ptr %gep72.i, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !115
  %i.dj = add nsw i32 %i.di, -65536
  %i.dk = load i32, ptr %gep72.i, align 8, !tbaa !115
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.r, label %compare_neighbor.exit35.us.i30

bb.r:                                             ; preds = %.lr.ph39.us.i29
  %i.dm = getelementptr inbounds nuw i8, ptr %gep72.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !122
  %i.dn = load i64, ptr %1, align 8, !tbaa !52
  %i.do = add nsw i64 %i.dn, 65536
  store i64 %i.do, ptr %1, align 8, !tbaa !52
  %i.dp = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = load i32, ptr %gep72.i, align 8, !tbaa !115
  %i.ds = icmp sgt i32 %i.dr, %i.dq
  br i1 %i.ds, label %bb.s, label %compare_neighbor.exit35.us.i30

bb.s:                                             ; preds = %bb.r
  store i32 %i.dq, ptr %gep72.i, align 8, !tbaa !115
  %i.dt = getelementptr inbounds nuw i8, ptr %gep72.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit35.us.i30

compare_neighbor.exit35.us.i30:                   ; preds = %bb.s, %bb.r, %.lr.ph39.us.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, -1
  %i.du = icmp sgt i64 %indvars.iv51.i, 0
  br i1 %i.du, label %.lr.ph39.us.i29, label %._crit_edge40.us.i28.loopexit, !llvm.loop !126

bb.t:                                             ; preds = %compare_neighbor.exit34.us.i24, %.preheader.us.i19
  %indvars.iv48.i20 = phi i64 [ 1, %.preheader.us.i19 ], [ %indvars.iv.next49.i25, %compare_neighbor.exit34.us.i24 ] ; 2 uses
  %gep70.i = getelementptr [32 x i8], ptr %invariant.gep69.i, i64 %indvars.iv48.i20 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %gep70.i, i64 %i.cz ; 6 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !115
  %i.dy = add nsw i32 %i.dx, -65536
  %i.dz = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.ea = icmp slt i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.u, label %compare_neighbor.exit.us.i21

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds i8, ptr %i.dv, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !122
  %i.ec = load <2 x i64>, ptr %5, align 16, !tbaa !88
  %i.ed = add nsw <2 x i64> %i.ec, <i64 -65536, i64 65536>
  store <2 x i64> %i.ed, ptr %5, align 16, !tbaa !88
  %i.ee = call i64 @FT_Vector_Length(ptr noundef nonnull %5) #12
  %i.ef = trunc i64 %i.ee to i32                  ; 3 uses
  %i.eg = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, %i.ef
  br i1 %i.eh, label %bb.v, label %compare_neighbor.exit.us.i21

bb.v:                                             ; preds = %bb.u
  store i32 %i.ef, ptr %gep70.i, align 8, !tbaa !115
  %i.ei = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit.us.i21

compare_neighbor.exit.us.i21:                     ; preds = %bb.v, %bb.u, %bb.t
  %i.ej = phi i32 [ %i.ef, %bb.v ], [ %i.eg, %bb.u ], [ %i.dz, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ek = load i32, ptr %i.dv, align 8, !tbaa !115
  %i.el = add nsw i32 %i.ek, -65536
  %i.em = icmp slt i32 %i.el, %i.ej
  br i1 %i.em, label %bb.w, label %compare_neighbor.exit32.us.i22

bb.w:                                             ; preds = %compare_neighbor.exit.us.i21
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !122
  %i.eo = load i64, ptr %i.da, align 8, !tbaa !53
  %i.ep = add nsw i64 %i.eo, 65536
  store i64 %i.ep, ptr %i.da, align 8, !tbaa !53
  %i.eq = call i64 @FT_Vector_Length(ptr noundef nonnull %4) #12
  %i.er = trunc i64 %i.eq to i32                  ; 3 uses
  %i.es = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.et = icmp sgt i32 %i.es, %i.er
  br i1 %i.et, label %bb.x, label %compare_neighbor.exit32.us.i22

bb.x:                                             ; preds = %bb.w
  store i32 %i.er, ptr %gep70.i, align 8, !tbaa !115
  %i.eu = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit32.us.i22

compare_neighbor.exit32.us.i22:                   ; preds = %bb.x, %bb.w, %compare_neighbor.exit.us.i21
  %i.ev = phi i32 [ %i.er, %bb.x ], [ %i.es, %bb.w ], [ %i.ej, %compare_neighbor.exit.us.i21 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !115
  %i.ey = add nsw i32 %i.ex, -65536
  %i.ez = icmp slt i32 %i.ey, %i.ev
  br i1 %i.ez, label %bb.y, label %compare_neighbor.exit33.us.i23

bb.y:                                             ; preds = %compare_neighbor.exit32.us.i22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i64 16, i1 false), !tbaa.struct !122
  %i.fb = load <2 x i64>, ptr %3, align 16, !tbaa !88
  %i.fc = add nsw <2 x i64> %i.fb, splat (i64 65536)
  store <2 x i64> %i.fc, ptr %3, align 16, !tbaa !88
  %i.fd = call i64 @FT_Vector_Length(ptr noundef nonnull %3) #12
  %i.fe = trunc i64 %i.fd to i32                  ; 3 uses
  %i.ff = load i32, ptr %gep70.i, align 8, !tbaa !115 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.z, label %compare_neighbor.exit33.us.i23

bb.z:                                             ; preds = %bb.y
  store i32 %i.fe, ptr %gep70.i, align 8, !tbaa !115
  %i.fh = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit33.us.i23

compare_neighbor.exit33.us.i23:                   ; preds = %bb.z, %bb.y, %compare_neighbor.exit32.us.i22
  %i.fi = phi i32 [ %i.fe, %bb.z ], [ %i.ff, %bb.y ], [ %i.ev, %compare_neighbor.exit32.us.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fj = getelementptr inbounds i8, ptr %gep70.i, i64 -32
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !115
  %i.fl = add nsw i32 %i.fk, -65536
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.aa, label %compare_neighbor.exit34.us.i24

bb.aa:                                            ; preds = %compare_neighbor.exit33.us.i23
  %i.fn = getelementptr inbounds i8, ptr %gep70.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa.struct !122
  %i.fo = load i64, ptr %2, align 8, !tbaa !52
  %i.fp = add nsw i64 %i.fo, -65536
  store i64 %i.fp, ptr %2, align 8, !tbaa !52
  %i.fq = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #12
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = load i32, ptr %gep70.i, align 8, !tbaa !115
  %i.ft = icmp sgt i32 %i.fs, %i.fr
  br i1 %i.ft, label %bb.ab, label %compare_neighbor.exit34.us.i24

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fr, ptr %gep70.i, align 8, !tbaa !115
  %i.fu = getelementptr inbounds nuw i8, ptr %gep70.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !122
  br label %compare_neighbor.exit34.us.i24

compare_neighbor.exit34.us.i24:                   ; preds = %bb.ab, %bb.aa, %compare_neighbor.exit33.us.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next49.i25 = add nuw nsw i64 %indvars.iv48.i20, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next49.i25, %wide.trip.count.i18
  br i1 %exitcond.not.i26, label %.lr.ph39.us.i29, label %bb.t, !llvm.loop !127

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.fv = icmp eq i32 %i.cx, 2
  br i1 %i.fv, label %.preheader.preheader.i7, label %second_pass.exit

.preheader.preheader.i7:                          ; preds = %.preheader.lr.ph.split.i6
  %i.fw = zext nneg i32 %i.db to i64
  %i.fx = zext nneg i32 %i.cv to i64
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %._crit_edge40.i15, %.preheader.preheader.i7
  %indvars.iv45.i9 = phi i64 [ %i.fx, %.preheader.preheader.i7 ], [ %indvars.iv.next46.i16, %._crit_edge40.i15 ] ; 3 uses
  %i.fy = mul nsw i64 %indvars.iv45.i9, %i.cz
  %invariant.gep.i10 = getelementptr [32 x i8], ptr %i.cu, i64 %i.fy
  br label %bb.ac

bb.ac:                                            ; preds = %compare_neighbor.exit35.i13, %.preheader.i8
  %indvars.iv.i11 = phi i64 [ %i.fw, %.preheader.i8 ], [ %indvars.iv.next.i14, %compare_neighbor.exit35.i13 ] ; 3 uses
  %gep.i12 = getelementptr [32 x i8], ptr %invariant.gep.i10, i64 %indvars.iv.i11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fz = getelementptr inbounds nuw i8, ptr %gep.i12, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !115
  %i.gb = add nsw i32 %i.ga, -65536
  %i.gc = load i32, ptr %gep.i12, align 8, !tbaa !115
  %i.gd = icmp slt i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ad, label %compare_neighbor.exit35.i13

end_hunk_0
