Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/joint?download=true
inline.NumInlined: 114
inline.NumDeleted: 29
begin_hunk_0_@b2CreateJoint:bb.a

bb.o:                                             ; preds = %bb.n
  %i.di = load i32, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !86 ; 3 uses
  store i32 1, ptr %i.bp, align 8, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 128 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !228 ; 3 uses
  store i32 %i.do, ptr %i.br, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 132 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !101 ; 4 uses
  %.not.i192 = icmp slt i32 %i.do, %i.dq
  %.pre.i = load ptr, ptr %i.dm, align 8, !tbaa !100 ; 2 uses
  br i1 %.not.i192, label %b2EmplaceHelper.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = mul nsw i32 %i.dq, 252
  %i.ds = icmp eq i32 %i.dq, 0
  %i.dt = shl nsw i32 %i.dq, 1
  %i.du = select i1 %i.ds, i32 8, i32 %i.dt       ; 2 uses
  %i.dv = mul nsw i32 %i.du, 252
  %i.dw = sext i32 %i.dr to i64
  %i.dx = sext i32 %i.dv to i64
  %i.dy = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.dw, i64 noundef %i.dx) #12 ; 2 uses
  store ptr %i.dy, ptr %i.dm, align 8, !tbaa !100
  store i32 %i.du, ptr %i.dp, align 4, !tbaa !101
  %.pre17.i = load i32, ptr %i.dn, align 8, !tbaa !101
  br label %b2EmplaceHelper.exit

b2EmplaceHelper.exit:                             ; preds = %bb.p, %bb.q
  %i.dz = phi i32 [ %.pre17.i, %bb.q ], [ %i.do, %bb.p ] ; 2 uses
  %i.ea = phi ptr [ %i.dy, %bb.q ], [ %.pre.i, %bb.p ]
  %i.eb = add nsw i32 %i.dz, 1
  store i32 %i.eb, ptr %i.dn, align 8, !tbaa !101
  %i.ec = mul nsw i32 %i.dz, 252
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.ef, i8 0, i64 240, i1 false)
  store i32 %i.an, ptr %i.ee, align 4, !tbaa !95
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %i.ae, ptr %i.eg, align 4, !tbaa !229
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.ag, ptr %i.eh, align 4, !tbaa !230
  br label %bb.ac

bb.r:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !231
  %.not188 = icmp eq i32 %i.ej, 2
  br i1 %.not188, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !231
  %.not189 = icmp eq i32 %i.el, 2
  br i1 %.not189, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86 ; 3 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !83
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !228 ; 3 uses
  store i32 %i.eq, ptr %i.br, align 8, !tbaa !84
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 44 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !101 ; 4 uses
  %.not.i193 = icmp slt i32 %i.eq, %i.es
  %.pre.i194 = load ptr, ptr %i.eo, align 8, !tbaa !100 ; 2 uses
  br i1 %.not.i193, label %b2EmplaceHelper.exit196, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = mul nsw i32 %i.es, 252
  %i.eu = icmp eq i32 %i.es, 0
  %i.ev = shl nsw i32 %i.es, 1
  %i.ew = select i1 %i.eu, i32 8, i32 %i.ev       ; 2 uses
  %i.ex = mul nsw i32 %i.ew, 252
  %i.ey = sext i32 %i.et to i64
  %i.ez = sext i32 %i.ex to i64
  %i.fa = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i194, i64 noundef %i.ey, i64 noundef %i.ez) #12 ; 2 uses
  store ptr %i.fa, ptr %i.eo, align 8, !tbaa !100
  store i32 %i.ew, ptr %i.er, align 4, !tbaa !101
  %.pre17.i195 = load i32, ptr %i.ep, align 8, !tbaa !101
  br label %b2EmplaceHelper.exit196

b2EmplaceHelper.exit196:                          ; preds = %bb.t, %bb.u
  %i.fb = phi i32 [ %.pre17.i195, %bb.u ], [ %i.eq, %bb.t ] ; 2 uses
  %i.fc = phi ptr [ %i.fa, %bb.u ], [ %.pre.i194, %bb.t ]
  %i.fd = add nsw i32 %i.fb, 1
  store i32 %i.fd, ptr %i.ep, align 8, !tbaa !101
  %i.fe = mul nsw i32 %i.fb, 252
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.fh, i8 0, i64 240, i1 false)
  store i32 %i.an, ptr %i.fg, align 4, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.ae, ptr %i.fi, align 4, !tbaa !229
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ag, ptr %i.fj, align 4, !tbaa !230
  br label %bb.ac

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.fk = icmp eq i32 %i.dg, 2
  %i.fl = icmp eq i32 %i.di, 2
  %or.cond201 = or i1 %i.fk, %i.fl
  br i1 %or.cond201, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.fm = icmp sgt i32 %i.al, 2
  br i1 %i.fm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @b2WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.al) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 2, ptr %i.bp, align 8, !tbaa !83
  %i.fn = tail call ptr @b2CreateJointInGraph(ptr noundef nonnull %0, ptr noundef nonnull %i.bj) #12 ; 4 uses
  store i32 %i.an, ptr %i.fn, align 4, !tbaa !95
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %i.ae, ptr %i.fo, align 4, !tbaa !229
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 %i.ag, ptr %i.fp, align 4, !tbaa !230
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !86
  %i.fs = sext i32 %i.al to i64
  %i.ft = getelementptr inbounds [88 x i8], ptr %i.fr, i64 %i.fs ; 3 uses
  store i32 %i.al, ptr %i.bp, align 8, !tbaa !83
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !228 ; 3 uses
  store i32 %i.fw, ptr %i.br, align 8, !tbaa !84
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 44 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !101 ; 4 uses
  %.not.i197 = icmp slt i32 %i.fw, %i.fy
  %.pre.i198 = load ptr, ptr %i.fu, align 8, !tbaa !100 ; 2 uses
  br i1 %.not.i197, label %b2EmplaceHelper.exit200, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = mul nsw i32 %i.fy, 252
  %i.ga = icmp eq i32 %i.fy, 0
  %i.gb = shl nsw i32 %i.fy, 1
  %i.gc = select i1 %i.ga, i32 8, i32 %i.gb       ; 2 uses
  %i.gd = mul nsw i32 %i.gc, 252
  %i.ge = sext i32 %i.fz to i64
  %i.gf = sext i32 %i.gd to i64
  %i.gg = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i198, i64 noundef %i.ge, i64 noundef %i.gf) #12 ; 2 uses
  store ptr %i.gg, ptr %i.fu, align 8, !tbaa !100
  store i32 %i.gc, ptr %i.fx, align 4, !tbaa !101
  %.pre17.i199 = load i32, ptr %i.fv, align 8, !tbaa !101
  br label %b2EmplaceHelper.exit200

b2EmplaceHelper.exit200:                          ; preds = %bb.z, %bb.aa
  %i.gh = phi i32 [ %.pre17.i199, %bb.aa ], [ %i.fw, %bb.z ] ; 2 uses
  %i.gi = phi ptr [ %i.gg, %bb.aa ], [ %.pre.i198, %bb.z ]
  %i.gj = add nsw i32 %i.gh, 1
  store i32 %i.gj, ptr %i.fv, align 8, !tbaa !101
  %i.gk = mul nsw i32 %i.gh, 252
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.gn, i8 0, i64 240, i1 false)
  store i32 %i.an, ptr %i.gm, align 4, !tbaa !95
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 %i.ae, ptr %i.go, align 4, !tbaa !229
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 %i.ag, ptr %i.gp, align 4, !tbaa !230
  %i.gq = load i32, ptr %i.ah, align 8, !tbaa !112 ; 3 uses
  %i.gr = load i32, ptr %i.aj, align 8, !tbaa !112 ; 3 uses
  %.not190 = icmp ne i32 %i.gq, %i.gr
  %i.gs = icmp sgt i32 %i.gq, 2
  %or.cond = and i1 %i.gs, %.not190
  %i.gt = icmp sgt i32 %i.gr, 2
  %or.cond191 = and i1 %i.gt, %or.cond
  br i1 %or.cond191, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %b2EmplaceHelper.exit200
  tail call void @b2MergeSolverSets(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %i.gr) #12
  %i.gu = load i32, ptr %i.ah, align 8, !tbaa !112
  %i.gv = load ptr, ptr %i.fq, align 8, !tbaa !86
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [88 x i8], ptr %i.gv, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !135
  %i.ha = load i32, ptr %i.br, align 8, !tbaa !84
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [252 x i8], ptr %i.gz, i64 %i.hb
  br label %bb.ac

bb.ac:                                            ; preds = %b2EmplaceHelper.exit200, %bb.ab, %b2EmplaceHelper.exit196, %bb.y, %b2EmplaceHelper.exit
  %.1 = phi ptr [ %i.ee, %b2EmplaceHelper.exit ], [ %i.fg, %b2EmplaceHelper.exit196 ], [ %i.fn, %bb.y ], [ %i.hc, %bb.ab ], [ %i.gm, %b2EmplaceHelper.exit200 ] ; 8 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !232
  %i.hf = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !tbaa.struct !232
  %i.hh = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %2, ptr %i.hh, align 4, !tbaa !136
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.1, i64 64
  %i.hk = load <2 x float>, ptr %i.hi, align 8, !tbaa !10
  store <2 x float> %i.hk, ptr %i.hj, align 4, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %.1, i64 72
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !10
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1, i64 80
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hm = getelementptr inbounds nuw i8, ptr %.1, i64 84
  %i.hn = load <2 x float>, ptr %i.hl, align 8, !tbaa !10
  store <2 x float> %i.hn, ptr %i.hm, align 4, !tbaa !10
  %i.ho = load i32, ptr %i.bp, align 8, !tbaa !83
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @b2LinkJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bj) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @b2ValidateSolverSets(ptr noundef nonnull %0) #12
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @b2RecWriteRet_CreateDistanceJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @b2CreateFilterJoint(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_CreateFilterJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b2GetWorldFromId(i32 %0) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !89, !range !90, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { ptr, ptr } @b2CreateJoint(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 1) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.k = load i16, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.m = load i16, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2712
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = zext i16 %i.m to i64
  %.pre25 = shl nuw i64 %.pre, 48
  %.pre27 = zext i16 %i.k to i64
  %.pre29 = shl nuw nsw i64 %.pre27, 32
  %.pre31 = zext i32 %i.i to i64
  %.pre33 = or disjoint i64 %.pre29, %.pre31
  %.pre35 = or disjoint i64 %.pre33, %.pre25
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %0, ptr %2, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !tbaa.struct !233
  %.sroa.6.0.insert.ext = zext i16 %i.m to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.414.0.insert.ext = zext i16 %i.k to i64
  %.sroa.414.0.insert.shift = shl nuw nsw i64 %.sroa.414.0.insert.ext, 32
  %.sroa.09.0.insert.ext = zext i32 %i.i to i64
  %.sroa.414.0.insert.insert = or disjoint i64 %.sroa.414.0.insert.shift, %.sroa.09.0.insert.ext
  %.sroa.09.0.insert.insert = or disjoint i64 %.sroa.414.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b2RecWriteRet_CreateFilterJoint(ptr noundef nonnull %i.o, ptr noundef nonnull %2, i64 %.sroa.09.0.insert.insert) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  %.sroa.09.0.insert.insert13 = phi i64 [ 0, %bb.a ], [ %.pre35, %._crit_edge ], [ %.sroa.09.0.insert.insert, %bb.c ]
  ret i64 %.sroa.09.0.insert.insert13
}

declare void @b2RecWriteRet_CreateFilterJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @b2CreateMotorJoint(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_CreateMotorJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b2GetWorldFromId(i32 %0) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !89, !range !90, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { ptr, ptr } @b2CreateJoint(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 2) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 92 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.h, i8 0, i64 160, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  store i64 %i.j, ptr %i.h, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load float, ptr %i.k, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store float %i.l, ptr %i.m, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load float, ptr %i.n, align 4, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store float %i.o, ptr %i.p, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load float, ptr %i.q, align 8, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store float %i.r, ptr %i.s, align 4, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.u = load float, ptr %i.t, align 4, !tbaa !237
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store float %i.u, ptr %i.v, align 4, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load float, ptr %i.w, align 8, !tbaa !238
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store float %i.x, ptr %i.y, align 4, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.aa = load float, ptr %i.z, align 4, !tbaa !239
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store float %i.aa, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !240
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store float %i.ad, ptr %i.ae, align 4, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ag = load float, ptr %i.af, align 4, !tbaa !241
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store float %i.ag, ptr %i.ah, align 4, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !242
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store float %i.aj, ptr %i.ak, align 4, !tbaa !92
  %i.al = load i32, ptr %i.g, align 4, !tbaa !95
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !97 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2712
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = zext i16 %i.aq to i64
  %.pre46 = shl nuw i64 %.pre, 48
  %.pre48 = zext i16 %i.ao to i64
  %.pre50 = shl nuw nsw i64 %.pre48, 32
  %.pre52 = zext i32 %i.am to i64
  %.pre54 = or disjoint i64 %.pre50, %.pre52
  %.pre56 = or disjoint i64 %.pre54, %.pre46
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %0, ptr %2, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.au, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !243
  %.sroa.6.0.insert.ext = zext i16 %i.aq to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.435.0.insert.ext = zext i16 %i.ao to i64
  %.sroa.435.0.insert.shift = shl nuw nsw i64 %.sroa.435.0.insert.ext, 32
  %.sroa.030.0.insert.ext = zext i32 %i.am to i64
  %.sroa.435.0.insert.insert = or disjoint i64 %.sroa.435.0.insert.shift, %.sroa.030.0.insert.ext
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.435.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b2RecWriteRet_CreateMotorJoint(ptr noundef nonnull %i.as, ptr noundef nonnull %2, i64 %.sroa.030.0.insert.insert) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  %.sroa.030.0.insert.insert34 = phi i64 [ 0, %bb.a ], [ %.pre56, %._crit_edge ], [ %.sroa.030.0.insert.insert, %bb.c ]
  ret i64 %.sroa.030.0.insert.insert34
}

declare void @b2RecWriteRet_CreateMotorJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @b2CreateMoverJoint(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_CreateMoverJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b2GetWorldFromId(i32 %0) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !89, !range !90, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { ptr, ptr } @b2CreateJoint(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 3) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 92 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.h, i8 0, i64 68, i1 false)
end_hunk_0
begin_hunk_1_@b2DestroyJointInternal:bb.a

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !83 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !84 ; 5 uses
  %i.ca = icmp eq i32 %i.bx, 2
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !120
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !120
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !85
  tail call void @b2RemoveJointFromGraph(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.bz) #12
  br label %b2RemoveHelper.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !86
  %i.ch = sext i32 %i.bx to i64
  %i.ci = getelementptr inbounds [88 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !135 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !101
  %i.cn = add nsw i32 %i.cm, -1                   ; 3 uses
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !101
  %.not.i = icmp eq i32 %i.bz, %i.cn
  br i1 %.not.i, label %b2RemoveHelper.exit.thread, label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %bb.q
  %i.co = mul nsw i32 %i.bz, 252
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 %i.cp
  %i.cr = mul nsw i32 %i.cn, 252
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.ck, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(252) %i.cq, ptr noundef nonnull align 1 dereferenceable(252) %i.ct, i64 252, i1 false)
  %i.cu = load i32, ptr %i.cl, align 8, !tbaa !101
  %.not91 = icmp eq i32 %i.cu, -1
  br i1 %.not91, label %b2RemoveHelper.exit.thread, label %bb.r

bb.r:                                             ; preds = %b2RemoveHelper.exit
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !135
  %i.cw = sext i32 %i.bz to i64
  %i.cx = getelementptr inbounds [252 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !81
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [72 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i32 %i.bz, ptr %i.dd, align 8, !tbaa !84
  br label %b2RemoveHelper.exit.thread

b2RemoveHelper.exit.thread:                       ; preds = %bb.q, %b2RemoveHelper.exit, %bb.r, %bb.p
  store i32 -1, ptr %i.bw, align 8, !tbaa !83
  store i32 -1, ptr %i.by, align 8, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 -1, ptr %i.de, align 4, !tbaa !85
  store i32 -1, ptr %i.a, align 4, !tbaa !113
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1976
  tail call void @b2FreeId(ptr noundef nonnull %i.df, i32 noundef %i.b) #12
  %i.dg = tail call zeroext i1 @b2WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #12 ; 0 uses
  %i.dh = tail call zeroext i1 @b2WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #12 ; 0 uses
  tail call void @b2ValidateSolverSets(ptr noundef nonnull %0) #12
  ret void
}

declare void @b2UnlinkJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2RemoveJointFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @b2FreeId(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @b2WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2ValidateSolverSets(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b2DestroyJoint(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.b2RecArgs_DestroyJoint, align 8 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2739
  %i.e = load i8, ptr %i.d, align 1, !tbaa !89, !range !90, !noundef !91
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store i64 %0, ptr %1, align 8
  call void @b2RecWrite_DestroyJoint(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = shl i64 %0, 32
  %sext.i = add i64 %i.k, -4294967296
  %i.l = ashr exact i64 %sext.i, 32
  %i.m = getelementptr inbounds [72 x i8], ptr %i.j, i64 %i.l
  call void @b2DestroyJointInternal(ptr noundef nonnull %i.c, ptr noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_DestroyJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @b2Joint_GetType(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !117
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define i64 @b2Joint_GetBodyA(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120
  %i.k = tail call i64 @b2MakeBodyId(ptr noundef %i.c, i32 noundef %i.j) #12
  ret i64 %i.k
}

declare i64 @b2MakeBodyId(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @b2Joint_GetBodyB(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120
  %i.k = tail call i64 @b2MakeBodyId(ptr noundef %i.c, i32 noundef %i.j) #12
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define i32 @b2Joint_GetWorld(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %0, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.a = and i32 %.sroa.1.0.extract.trunc, 65535
  %i.b = tail call ptr @b2GetWorld(i32 noundef %i.a) #12
  %i.c = add i32 %.sroa.1.0.extract.trunc, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2504
  %i.e = load i16, ptr %i.d, align 8, !tbaa !285
  %.sroa.2.0.insert.ext = zext i16 %i.e to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 16
  %.sroa.02.0.insert.ext = and i32 %i.c, 65535
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.02.0.insert.ext
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @b2Joint_SetLocalFrameA(i64 %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b2RecArgs_JointSetLocalFrameA, align 8 ; 6 uses
  %.sroa.310.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.310.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.f, align 8, !tbaa !10
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  call void @b2RecWrite_JointSetLocalFrameA(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = shl i64 %0, 32
  %sext.i = add i64 %i.i, -4294967296
  %i.j = ashr exact i64 %sext.i, 32
  %i.k = getelementptr inbounds [72 x i8], ptr %i.h, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = icmp eq i32 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !84
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [64 x i8], ptr %i.c, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 392
  br label %b2GetJointSim.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [88 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %b2GetJointSim.exit

b2GetJointSim.exit:                               ; preds = %bb.d, %bb.e
  %.sink.in.i = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.d ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !88
  %i.aa = sext i32 %i.p to i64
  %i.ab = getelementptr inbounds [252 x i8], ptr %.sink.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x float> %1, ptr %i.ac, align 4, !tbaa !10
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx7, align 4, !tbaa !10
  ret void
}

declare void @b2RecWrite_JointSetLocalFrameA(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Joint_GetLocalFrameA(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !85
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [64 x i8], ptr %i.c, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 392
  br label %b2GetJointSim.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %b2GetJointSim.exit

b2GetJointSim.exit:                               ; preds = %bb.b, %bb.c
  %.sink.in.i = phi ptr [ %i.w, %bb.c ], [ %i.r, %bb.b ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !88
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [252 x i8], ptr %.sink.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.z, align 4, !tbaa !10
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.25.0.copyload = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.04.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.25.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @b2Joint_SetLocalFrameB(i64 %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b2RecArgs_JointSetLocalFrameB, align 8 ; 6 uses
  %.sroa.310.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.310.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.f, align 8, !tbaa !10
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  call void @b2RecWrite_JointSetLocalFrameB(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = shl i64 %0, 32
  %sext.i = add i64 %i.i, -4294967296
  %i.j = ashr exact i64 %sext.i, 32
  %i.k = getelementptr inbounds [72 x i8], ptr %i.h, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = icmp eq i32 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !84
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [64 x i8], ptr %i.c, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 392
  br label %b2GetJointSim.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [88 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %b2GetJointSim.exit

b2GetJointSim.exit:                               ; preds = %bb.d, %bb.e
  %.sink.in.i = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.d ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !88
  %i.aa = sext i32 %i.p to i64
  %i.ab = getelementptr inbounds [252 x i8], ptr %.sink.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store <2 x float> %1, ptr %i.ac, align 4, !tbaa !10
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx7, align 4, !tbaa !10
  ret void
}

declare void @b2RecWrite_JointSetLocalFrameB(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Joint_GetLocalFrameB(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !85
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [64 x i8], ptr %i.c, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 392
  br label %b2GetJointSim.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %b2GetJointSim.exit

b2GetJointSim.exit:                               ; preds = %bb.b, %bb.c
  %.sink.in.i = phi ptr [ %i.w, %bb.c ], [ %i.r, %bb.b ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !88
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [252 x i8], ptr %.sink.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.z, align 4, !tbaa !10
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.25.0.copyload = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.04.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.25.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @b2Joint_SetCollideConnected(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_JointSetCollideConnected, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorldLocked(i32 noundef %i.c) #12 ; 12 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b2RecWrite_JointSetCollideConnected(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2000
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = shl i64 %0, 32
  %sext.i = add i64 %i.l, -4294967296
  %i.m = ashr exact i64 %sext.i, 32
  %i.n = getelementptr inbounds [72 x i8], ptr %i.k, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 66 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !118, !range !90, !noundef !91
  %i.q = icmp eq i8 %i.p, %i.a
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.a, ptr %i.o, align 2, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !120
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [104 x i8], ptr %i.s, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.y = load i32, ptr %i.x, align 4, !tbaa !120
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [104 x i8], ptr %i.s, i64 %i.z ; 4 uses
  br i1 %1, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !289
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !289
  %i.af = icmp slt i32 %i.ac, %i.ae
  %. = select i1 %i.af, i64 %i.v, i64 %i.z
  %i.ag = getelementptr inbounds [104 x i8], ptr %i.s, i64 %.
  %.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.034 = load i32, ptr %.in, align 4, !tbaa !101 ; 2 uses
  %.not3135 = icmp eq i32 %.034, -1
  br i1 %.not3135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 2144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 312 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 316 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %b2BufferMove.exit
  %.036 = phi i32 [ %.034, %.lr.ph ], [ %.0, %b2BufferMove.exit ]
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !290
  %i.an = sext i32 %.036 to i64
  %i.ao = getelementptr inbounds [296 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !294 ; 4 uses
  %.not32 = icmp eq i32 %i.aq, -1
  br i1 %.not32, label %b2BufferMove.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = and i32 %i.aq, 3
  %i.as = ashr i32 %i.aq, 2                       ; 3 uses
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.at ; 4 uses
  %i.av = lshr i32 %i.as, 6                       ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %.not.i.i = icmp ult i32 %i.av, %i.ax
  br i1 %.not.i.i, label %b2GetBit.exit.i, label %bb.i

b2GetBit.exit.i:                                  ; preds = %bb.h
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !142 ; 2 uses
  %i.az = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !143 ; 2 uses
  %i.bc = and i32 %i.as, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %i.bf = and i64 %i.bb, %i.be
  %.not27.i = icmp eq i64 %i.bf, 0
  br i1 %.not27.i, label %b2SetBitGrow.exit.i, label %b2BufferMove.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = add nuw nsw i32 %i.av, 1
  call void @b2GrowBitSet(ptr noundef nonnull %i.au, i32 noundef %i.bg) #12
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !142 ; 2 uses
  %.pre28.i = zext nneg i32 %i.av to i64          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.pre28.i
  %.pre31.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  %.pre32.i = and i32 %i.as, 63
  %.pre34.i = zext nneg i32 %.pre32.i to i64
  %.pre36.i = shl nuw i64 1, %.pre34.i
  br label %b2SetBitGrow.exit.i

b2SetBitGrow.exit.i:                              ; preds = %bb.i, %b2GetBit.exit.i
  %.pre-phi37.i = phi i64 [ %i.be, %b2GetBit.exit.i ], [ %.pre36.i, %bb.i ]
  %i.bh = phi i64 [ %i.bb, %b2GetBit.exit.i ], [ %.pre31.i, %bb.i ]
  %.pre-phi.i = phi i64 [ %i.az, %b2GetBit.exit.i ], [ %.pre28.i, %bb.i ]
  %i.bi = phi ptr [ %i.ay, %b2GetBit.exit.i ], [ %.pre.i, %bb.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.pre-phi.i
  %i.bk = or i64 %i.bh, %.pre-phi37.i
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !143
  %i.bl = load i32, ptr %i.ak, align 8, !tbaa !295 ; 2 uses
  %i.bm = load i32, ptr %i.al, align 4, !tbaa !296 ; 4 uses
  %.not.i = icmp slt i32 %i.bl, %i.bm
  %.pre29.i = load ptr, ptr %i.aj, align 8, !tbaa !297 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %b2SetBitGrow.exit.i
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = icmp eq i32 %i.bm, 0
  %i.bp = shl nsw i32 %i.bm, 1
  %spec.select.i = select i1 %i.bo, i32 8, i32 %i.bp ; 2 uses
  %i.bq = shl nsw i32 %spec.select.i, 2
  %i.br = sext i32 %i.bn to i64
  %i.bs = sext i32 %i.bq to i64
  %i.bt = call ptr @b2GrowAlloc(ptr noundef %.pre29.i, i64 noundef %i.br, i64 noundef %i.bs) #12 ; 2 uses
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !297
end_hunk_1
