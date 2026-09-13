Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@_ZL28ec_GFp_mont_batch_get_windowPK11ec_group_stP11EC_JACOBIANPKS2_PK9EC_SCALARj:bb.a

scalar.ph107.prol.loopexit:                       ; preds = %scalar.ph107.prol, %scalar.ph107.preheader
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %scalar.ph107.preheader ], [ %i.ej, %scalar.ph107.prol ]
  %i.ek = icmp eq i64 %.09.i.i.i.ph, %i.cm
  br i1 %i.ek, label %.lr.ph.i.i15.i, label %scalar.ph107

scalar.ph107:                                     ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107
  %.09.i.i.i = phi i64 [ %i.fa, %scalar.ph107 ], [ %.09.i.i.i.unr, %scalar.ph107.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.09.i.i.i
  %i.em = load i64, ptr %i.el, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i.i ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !96
  %i.ep = and i64 %i.em, %i.dp
  %i.eq = and i64 %i.eo, %i.dq
  %i.er = or disjoint i64 %i.eq, %i.ep
  store i64 %i.er, ptr %i.en, align 8, !tbaa !96
  %i.es = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !96
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.es ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !96
  %i.ex = and i64 %i.eu, %i.dp
  %i.ey = and i64 %i.ew, %i.dq
  %i.ez = or disjoint i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !96
  %i.fa = add nuw i64 %.09.i.i.i, 2               ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.fa, %i.cb
  br i1 %exitcond.not.i.i.i.1, label %.lr.ph.i.i15.i, label %scalar.ph107, !llvm.loop !1245

.lr.ph.i.i15.i:                                   ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107, %middle.block122
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 4 uses
  %brmerge147 = select i1 %min.iters.check84, i1 true, i1 %found.conflict82
  br i1 %brmerge147, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.i.i15.i
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert89 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat90 = shufflevector <2 x i64> %broadcast.splatinsert89, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph85
  %index92 = phi i64 [ 0, %vector.ph85 ], [ %index.next97, %vector.body91 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index92 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !96, !alias.scope !1259
  %wide.load94 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !96, !alias.scope !1259
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index92 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !96, !alias.scope !1260, !noalias !1259
  %wide.load96 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !96, !alias.scope !1260, !noalias !1259
  %i.fg = and <2 x i64> %wide.load93, %broadcast.splat88
  %i.fh = and <2 x i64> %wide.load94, %broadcast.splat88
  %i.fi = and <2 x i64> %wide.load95, %broadcast.splat90
  %i.fj = and <2 x i64> %wide.load96, %broadcast.splat90
  %i.fk = or disjoint <2 x i64> %i.fi, %i.fg
  %i.fl = or disjoint <2 x i64> %i.fj, %i.fh
  store <2 x i64> %i.fk, ptr %i.fe, align 8, !tbaa !96, !alias.scope !1260, !noalias !1259
  store <2 x i64> %i.fl, ptr %i.ff, align 8, !tbaa !96, !alias.scope !1260, !noalias !1259
  %index.next97 = add nuw i64 %index92, 4         ; 2 uses
  %i.fm = icmp eq i64 %index.next97, %n.vec86
  br i1 %i.fm, label %middle.block98, label %vector.body91, !llvm.loop !1249

middle.block98:                                   ; preds = %vector.body91
  br i1 %cmp.n99, label %.lr.ph.i.i20.i, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph.i.i15.i, %middle.block98
  %.09.i.i16.i.ph = phi i64 [ %n.vec86, %middle.block98 ], [ 0, %.lr.ph.i.i15.i ] ; 5 uses
  br i1 %lcmp.mod144.not, label %scalar.ph83.prol.loopexit, label %scalar.ph83.prol

scalar.ph83.prol:                                 ; preds = %scalar.ph83.preheader
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.09.i.i16.i.ph
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.09.i.i16.i.ph ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !96
  %i.fr = and i64 %i.fo, %i.dp
  %i.fs = and i64 %i.fq, %i.dq
  %i.ft = or disjoint i64 %i.fs, %i.fr
  store i64 %i.ft, ptr %i.fp, align 8, !tbaa !96
  %i.fu = or disjoint i64 %.09.i.i16.i.ph, 1
  br label %scalar.ph83.prol.loopexit

scalar.ph83.prol.loopexit:                        ; preds = %scalar.ph83.prol, %scalar.ph83.preheader
  %.09.i.i16.i.unr = phi i64 [ %.09.i.i16.i.ph, %scalar.ph83.preheader ], [ %i.fu, %scalar.ph83.prol ]
  %i.fv = icmp eq i64 %.09.i.i16.i.ph, %i.co
  br i1 %i.fv, label %.lr.ph.i.i20.i, label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.prol.loopexit, %scalar.ph83
  %.09.i.i16.i = phi i64 [ %i.gl, %scalar.ph83 ], [ %.09.i.i16.i.unr, %scalar.ph83.prol.loopexit ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.09.i.i16.i
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !96
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.09.i.i16.i ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !96
  %i.ga = and i64 %i.fx, %i.dp
  %i.gb = and i64 %i.fz, %i.dq
  %i.gc = or disjoint i64 %i.gb, %i.ga
  store i64 %i.gc, ptr %i.fy, align 8, !tbaa !96
  %i.gd = add nuw i64 %.09.i.i16.i, 1             ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.gd ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !96
  %i.gi = and i64 %i.gf, %i.dp
  %i.gj = and i64 %i.gh, %i.dq
  %i.gk = or disjoint i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.gg, align 8, !tbaa !96
  %i.gl = add nuw i64 %.09.i.i16.i, 2             ; 2 uses
  %exitcond.not.i.i17.i.1 = icmp eq i64 %i.gl, %i.cb
  br i1 %exitcond.not.i.i17.i.1, label %.lr.ph.i.i20.i, label %scalar.ph83, !llvm.loop !1250

.lr.ph.i.i20.i:                                   ; preds = %scalar.ph83.prol.loopexit, %scalar.ph83, %middle.block98
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dn, i64 144 ; 4 uses
  %brmerge148 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge148, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i20.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load = load <2 x i64>, ptr %i.gn, align 8, !tbaa !96, !alias.scope !1261
  %wide.load73 = load <2 x i64>, ptr %i.go, align 8, !tbaa !96, !alias.scope !1261
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load74 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !96, !alias.scope !1262, !noalias !1261
  %wide.load75 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !96, !alias.scope !1262, !noalias !1261
  %i.gr = and <2 x i64> %wide.load, %broadcast.splat
  %i.gs = and <2 x i64> %wide.load73, %broadcast.splat
  %i.gt = and <2 x i64> %wide.load74, %broadcast.splat72
  %i.gu = and <2 x i64> %wide.load75, %broadcast.splat72
  %i.gv = or disjoint <2 x i64> %i.gt, %i.gr
  %i.gw = or disjoint <2 x i64> %i.gu, %i.gs
  store <2 x i64> %i.gv, ptr %i.gp, align 8, !tbaa !96, !alias.scope !1262, !noalias !1261
  store <2 x i64> %i.gw, ptr %i.gq, align 8, !tbaa !96, !alias.scope !1262, !noalias !1261
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !1254

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %ec_point_select.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i20.i, %middle.block
  %.09.i.i21.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i20.i ] ; 5 uses
  br i1 %lcmp.mod146.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.09.i.i21.i.ph
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !96
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.09.i.i21.i.ph ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !96
  %i.hc = and i64 %i.gz, %i.dp
  %i.hd = and i64 %i.hb, %i.dq
  %i.he = or disjoint i64 %i.hd, %i.hc
  store i64 %i.he, ptr %i.ha, align 8, !tbaa !96
  %i.hf = or disjoint i64 %.09.i.i21.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i21.i.unr = phi i64 [ %.09.i.i21.i.ph, %scalar.ph.preheader ], [ %i.hf, %scalar.ph.prol ]
  %i.hg = icmp eq i64 %.09.i.i21.i.ph, %i.cq
  br i1 %i.hg, label %ec_point_select.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i21.i = phi i64 [ %i.hw, %scalar.ph ], [ %.09.i.i21.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.09.i.i21.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !96
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.09.i.i21.i ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.hl = and i64 %i.hi, %i.dp
  %i.hm = and i64 %i.hk, %i.dq
  %i.hn = or disjoint i64 %i.hm, %i.hl
  store i64 %i.hn, ptr %i.hj, align 8, !tbaa !96
  %i.ho = add nuw i64 %.09.i.i21.i, 1             ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !96
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ho ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !96
  %i.ht = and i64 %i.hq, %i.dp
  %i.hu = and i64 %i.hs, %i.dq
  %i.hv = or disjoint i64 %i.hu, %i.ht
  store i64 %i.hv, ptr %i.hr, align 8, !tbaa !96
  %i.hw = add nuw i64 %.09.i.i21.i, 2             ; 2 uses
  %exitcond.not.i.i22.i.1 = icmp eq i64 %i.hw, %i.cb
  br i1 %exitcond.not.i.i22.i.1, label %ec_point_select.exit.loopexit, label %scalar.ph, !llvm.loop !1255

ec_point_select.exit.loopexit:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hx = add nuw nsw i64 %.04260, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.hx, 17
  br i1 %exitcond.not, label %.split, label %.lr.ph.i.i.i, !llvm.loop !1256
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @ec_GFp_mont_init_precomp(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %3 = alloca [31 x %struct.EC_JACOBIAN], align 16 ; 97 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.l, label %bb.b, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit.thread, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  br label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit

_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit.thread: ; preds = %bb.c, %bn_minimal_width.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !1264
  br label %._crit_edge.3

_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit: ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0             ; 2 uses
  %i.v = select i1 %.not.i.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.y, 0           ; 2 uses
  %i.z = select i1 %.not52.i.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.ab, 0          ; 2 uses
  %i.ac = select i1 %.not53.i.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.ae, 0          ; 2 uses
  %i.af = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ah, 0          ; 2 uses
  %i.ai = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, %i.w
  %i.am = or disjoint i32 %i.al, %i.v
  %i.an = or disjoint i32 %i.am, %i.z
  %i.ao = or disjoint i32 %i.an, %i.ac
  %i.ap = or disjoint i32 %i.ao, 4
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i.i
  %.fr = freeze i32 %i.as                         ; 2 uses
  %i.at = udiv i32 %.fr, 5                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !1264
  %i.au = icmp ugt i32 %.fr, 9
  br i1 %i.au, label %.lr.ph.us.preheader, label %._crit_edge.3

.lr.ph.us.preheader:                              ; preds = %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.preheader, %bb.d
  %.02327.us = phi i32 [ 1, %.lr.ph.us.preheader ], [ %i.aw, %bb.d ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %5)
  %i.aw = add nuw nsw i32 %.02327.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.at
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !1263

._crit_edge.us:                                   ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 432
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ax, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 864 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 7 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.us
  %.02327.us.1 = phi i32 [ 1, %._crit_edge.us ], [ %i.az, %bb.e ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ay)
  %i.az = add nuw nsw i32 %.02327.us.1, 1         ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.az, %i.at
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %bb.e, !llvm.loop !1263

._crit_edge.us.1:                                 ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 864
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, ptr noundef nonnull %3)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.av)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ay, ptr noundef nonnull %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1512 ; 11 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.ay)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.1
  %.02327.us.2 = phi i32 [ 1, %._crit_edge.us.1 ], [ %i.be, %bb.f ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bd)
  %i.be = add nuw nsw i32 %.02327.us.2, 1         ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %bb.f, !llvm.loop !1263

._crit_edge.us.2:                                 ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1728
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bd, ptr noundef nonnull %3)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.av)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bd, ptr noundef nonnull %4)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 2376
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bd, ptr noundef nonnull %8)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bd, ptr noundef nonnull %6)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 2808
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 3024
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 3240 ; 13 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bd)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.us.2
  %.02327.us.3 = phi i32 [ 1, %._crit_edge.us.2 ], [ %i.bp, %bb.g ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo)
  %i.bp = add nuw nsw i32 %.02327.us.3, 1         ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.bp, %i.at
  br i1 %exitcond.3.not, label %._crit_edge.us.3, label %bb.g, !llvm.loop !1263

._crit_edge.us.3:                                 ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 3456
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %i.bo, ptr noundef nonnull %3)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 3672
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.av)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 3888
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bo, ptr noundef nonnull %4)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4320
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bo, ptr noundef nonnull %6)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 4536
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4752
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4968
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1512
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 5184
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bo, ptr noundef nonnull %7)
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.3, %._crit_edge.us.3
  %.sink51 = phi ptr [ %i.dk, %._crit_edge.3 ], [ %i.bo, %._crit_edge.us.3 ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 5400
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cc, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 5616
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ce, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 5832
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 2376
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 6048
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 6264
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 2808
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ck, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 6480
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 3024
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cm, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cn)
  %i.co = load ptr, ptr %0, align 8, !tbaa !238
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !257 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.20, i32 noundef 544) #36
  br label %ec_jacobian_to_affine_batch.exit

bb.i:                                             ; preds = %.split.us
  %i.cs = call noundef i32 %i.cq(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i64 noundef 31) #36, !inline_history !1265
  br label %ec_jacobian_to_affine_batch.exit

ec_jacobian_to_affine_batch.exit:                 ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.cs, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.0.i

._crit_edge.3:                                    ; preds = %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit.thread, %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %3)
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 432
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cu, ptr noundef nonnull %11, ptr noundef nonnull %3)
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 864 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 5 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.cv, ptr noundef nonnull %11)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 864
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %i.cv, ptr noundef nonnull %3)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ct)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %10)
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 1512 ; 9 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 1728
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.cz, ptr noundef nonnull %3)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ct)
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.cz, ptr noundef nonnull %10)
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 2376
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.df, ptr noundef nonnull %i.cz, ptr noundef nonnull %12)
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 2808
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 3024
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.di, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 3240 ; 11 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cz)
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 3456
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull %3)
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 3672
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.ct)
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 3888
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dk, ptr noundef nonnull %10)
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4320
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dk, ptr noundef nonnull %12)
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4536
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4752
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4968
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 1512
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 5184
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cy)
  br label %.split.us
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @ec_GFp_mont_mul_precomp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7) #5 {
bb.a:
  %8 = alloca %struct.EC_JACOBIAN, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.l, label %bb.b, label %.critedge46, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %.critedge46, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  br label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit

_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit: ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0             ; 2 uses
  %i.v = select i1 %.not.i.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.y, 0           ; 2 uses
  %i.z = select i1 %.not52.i.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.ab, 0          ; 2 uses
  %i.ac = select i1 %.not53.i.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.ae, 0          ; 2 uses
  %i.af = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ah, 0          ; 2 uses
  %i.ai = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, %i.w
  %i.am = or disjoint i32 %i.al, %i.v
  %i.an = or disjoint i32 %i.am, %i.z
  %i.ao = or disjoint i32 %i.an, %i.ac
  %i.ap = or disjoint i32 %i.ao, 4
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i.i            ; 3 uses
  %i.at = udiv i32 %i.as, 5                       ; 3 uses
  %.not = icmp ult i32 %i.as, 5
  br i1 %.not, label %.critedge46, label %bb.d

bb.d:                                             ; preds = %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit
  %.043 = add nsw i32 %i.at, -1                   ; 3 uses
  %.not40 = icmp eq ptr %4, null                  ; 2 uses
  %.not41 = icmp eq ptr %6, null                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %.043)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 8 dereferenceable(72) %8, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.au, i64 72, i1 false)
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.043)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %.043)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.off = add i32 %i.as, -5
  %.not54 = icmp ult i32 %.off, 5
  br i1 %.not54, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.h
  %.0.peel = add nsw i32 %i.at, -2
  br label %bb.i

bb.i:                                             ; preds = %.peel.next, %bb.m
  %.045 = phi i32 [ %.0.peel, %.peel.next ], [ %.0, %bb.m ] ; 4 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.0 = add nsw i32 %.045, -1                     ; 2 uses
  %i.ay = icmp ult i32 %.0, %i.at
  br i1 %i.ay, label %bb.i, label %._crit_edge, !llvm.loop !1266

.critedge46:                                      ; preds = %bb.c, %bn_minimal_width.exit.i.i.i, %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.h, %.critedge46
  ret void
}

; Function Attrs: mustprogress nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL27ec_GFp_mont_get_comb_windowPK11ec_group_stP11EC_JACOBIANPK10EC_PRECOMPPK9EC_SCALARj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 858993459) %4) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i32, ptr %i.a, align 8, !tbaa !288
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bn_minimal_width.exit.thread7.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.05.i.i.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.o, label %bb.b, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %_ZL23ec_GFp_mont_comb_stridePK11ec_group_st.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !112
  br label %bn_minimal_width.exit.thread7.i.i.i

bn_minimal_width.exit.thread7.i.i.i:              ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.q = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.h, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.r = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.s = shl nsw i32 %i.r, 6
  %i.t = sext i32 %i.r to i64
end_hunk_0
