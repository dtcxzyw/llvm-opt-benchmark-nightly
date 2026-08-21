inline.NumInlined: 1851
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp4Ogre7MeshXml20ConvertToAssimpSceneEP7aiScene:bb.a
  br i1 %.not62, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %bb.k
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.057 = phi i64 [ %i.di, %.lr.ph59 ], [ 0, %.lr.ph59.preheader ] ; 3 uses
  %i.da = load ptr, ptr %i.v, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.057
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef ptr @_ZN6Assimp4Ogre9Animation24ConvertToAssimpAnimationEv(ptr noundef nonnull align 8 dereferenceable(112) %i.de)
  %i.dg = load ptr, ptr %i.cq, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.057
  store ptr %i.df, ptr %i.dh, align 8
  %i.di = add nuw i64 %.057, 1                    ; 2 uses
  %exitcond64.not = icmp eq i64 %i.di, %i.cz
  br i1 %exitcond64.not, label %.loopexit, label %.lr.ph59, !llvm.loop !55

.loopexit:                                        ; preds = %.lr.ph59, %bb.k, %bb.j, %._crit_edge
  ret void

bb.l:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit47, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn51, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit47 ], [ %i.x, %bb.c ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp4Ogre10SubMeshXml19ConvertToAssimpMeshEPNS0_7MeshXmlE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %4 = alloca %"class.std::map.16", align 8       ; 10 uses
  %5 = alloca %"class.std::set", align 8          ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #30 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  %i.j = add i64 %i.i, -1024
  %or.cond108 = icmp ult i64 %i.j, -1023
  br i1 %or.cond108, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.m = trunc nuw nsw i64 %i.i to i32
  store i32 %i.m, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %i.o, i64 %i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 0, ptr %i.p, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 %i.r, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8
  %.fr130 = freeze i32 %i.v                       ; 4 uses
  store i32 %.fr130, ptr %i.c, align 8
  %i.w = zext i32 %.fr130 to i64                  ; 7 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = or disjoint i64 %i.x, 8
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #30 ; 2 uses
  store i64 %i.w, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = icmp eq i32 %.fr130, 0                  ; 5 uses
  br i1 %i.ab, label %.loopexit111, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.w
  %i.ad = add nuw nsw i64 %i.w, 1152921504606846975
  %i.ae = and i64 %i.ad, 1152921504606846975
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.af = phi ptr [ %i.ah, %.prol.preheader ], [ %i.aa, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !56

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.aa, %bb.e ], [ %i.ah, %.prol.preheader ]
  %i.ai = icmp samesign ult i64 %i.ae, 7
  br i1 %i.ai, label %.loopexit111, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.aj = phi ptr [ %i.az, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %.loopexit111, label %.new

.loopexit111:                                     ; preds = %.prol.loopexit, %.new, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  store ptr %i.aa, ptr %i.bb, align 8
  %i.bc = mul i32 %.fr130, 3                      ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  store i32 %i.bc, ptr %i.b, align 4
  %i.be = mul nuw nsw i64 %i.bd, 12               ; 7 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #30 ; 12 uses
  br i1 %i.ab, label %.loopexit110, label %.loopexit110.loopexit

.loopexit110.loopexit:                            ; preds = %.loopexit111
  %i.bg = add nsw i64 %i.be, -12                  ; 2 uses
  %i.bh = urem i64 %i.bg, 12
  %i.bi = sub nuw nsw i64 %i.bg, %i.bh
  %i.bj = add nsw i64 %i.bi, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.bj, i1 false)
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit, %.loopexit111
  store ptr %i.bf, ptr %i.d, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bl = load i8, ptr %i.bk, align 4, !range !27, !noundef !28
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.in = select i1 %i.bm, ptr %i.bo, ptr %i.bn
  %i.bp = load ptr, ptr %.in, align 8             ; 19 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp ne ptr %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 152 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.by = load ptr, ptr %i.bx, align 8
  %.not106 = icmp eq ptr %i.bw, %i.by             ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 200 ; 19 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 9 uses
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit110
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #30 ; 3 uses
  br i1 %i.ab, label %.loopexit109, label %.loopexit109.loopexit

.loopexit109.loopexit:                            ; preds = %bb.f
  %i.ci = add nsw i64 %i.be, -12                  ; 2 uses
  %i.cj = urem i64 %i.ci, 12
  %i.ck = sub nuw nsw i64 %i.ci, %i.cj
  %i.cl = add nsw i64 %i.ck, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ch, i8 0, i64 %i.cl, i1 false)
  br label %.loopexit109

.loopexit109:                                     ; preds = %.loopexit109.loopexit, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ch, ptr %i.cm, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit109, %.loopexit110
  %i.cn = phi ptr [ %i.ch, %.loopexit109 ], [ null, %.loopexit110 ] ; 2 uses
  %.not129 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not129, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cq = add nsw i64 %i.be, -12                  ; 2 uses
  %i.cr = urem i64 %i.cq, 12
  %i.cs = sub nuw nsw i64 %i.cq, %i.cr
  %i.ct = add nsw i64 %i.cs, 12
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.092113.us = phi i64 [ %i.cx, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.092113.us
  store i32 2, ptr %i.cu, align 4
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #30
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.092113.us
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = add nuw i64 %.092113.us, 1              ; 2 uses
  %exitcond137.not = icmp eq i64 %i.cx, %i.cg
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !57

.preheader:                                       ; preds = %bb.g
  br i1 %i.ab, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph.split, %.preheader
  %i.cy = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.db = icmp ne ptr %i.cb, %i.cc
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 18 uses
  %.fr119 = freeze i1 %i.db
  br i1 %.fr119, label %.split.us.us.preheader, label %.split

.split.us.us.preheader:                           ; preds = %.lr.ph122
  %umax141 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1) ; 18 uses
  %xtraiter171 = and i64 %umax141, 1
  %6 = icmp ult i64 %i.cg, 2
  %unroll_iter = and i64 %umax141, -2
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  %lcmp.mod173 = trunc i64 %umax141 to i1
  %xtraiter176 = and i64 %umax141, 1
  %7 = icmp ult i64 %i.cg, 2
  %unroll_iter179 = and i64 %umax141, -2
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %lcmp.mod178 = trunc i64 %umax141 to i1
  %xtraiter182 = and i64 %umax141, 1
  %8 = icmp ult i64 %i.cg, 2
  %unroll_iter185 = and i64 %umax141, -2
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  %lcmp.mod184 = trunc i64 %umax141 to i1
  %xtraiter187 = and i64 %umax141, 1
  %9 = icmp ult i64 %i.cg, 2
  %unroll_iter190 = and i64 %umax141, -2
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod189 = trunc i64 %umax141 to i1
  %xtraiter194 = and i64 %umax141, 1
  %10 = icmp ult i64 %i.cg, 2
  %unroll_iter197 = and i64 %umax141, -2
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod196 = trunc i64 %umax141 to i1
  %xtraiter200 = and i64 %umax141, 1
  %11 = icmp ult i64 %i.cg, 2
  %unroll_iter203 = and i64 %umax141, -2
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = trunc i64 %umax141 to i1
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %.split118.us.us
  %i.dd = phi ptr [ %i.le, %.split118.us.us ], [ %i.cn, %.split.us.us.preheader ] ; 3 uses
  %.091121.us = phi i64 [ %i.lf, %.split118.us.us ], [ 0, %.split.us.us.preheader ] ; 4 uses
  %i.de = load ptr, ptr %i.t, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %.091121.us
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.091121.us ; 2 uses
  store i32 3, ptr %i.di, align 8
  %i.dj = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #30 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 5 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = mul nuw nsw i64 %.091121.us, 3          ; 13 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 5 uses
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  store i32 %i.dn, ptr %i.dj, align 4
  %i.do = load ptr, ptr %i.dm, align 8
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 8 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.dp, i32 noundef %i.dn)
  %i.dr = load ptr, ptr %i.cz, align 8
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false)
  br i1 %.not106, label %.lr.ph115.us.us.us.preheader.preheader, label %.lr.ph115.us.us.preheader

.lr.ph115.us.us.us.preheader.preheader:           ; preds = %.split.us.us
  br i1 %9, label %.lr.ph115.us.us.us.preheader.epil.preheader, label %.lr.ph115.us.us.us.preheader

.lr.ph115.us.us.preheader:                        ; preds = %.split.us.us
  %i.du = load ptr, ptr %i.bv, align 8
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.dq
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dw, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i64 12, i1 false)
  br i1 %6, label %.epil.preheader, label %.lr.ph115.us.us.preheader.new

.lr.ph115.us.us.us.preheader:                     ; preds = %.lr.ph115.us.us.us.preheader.preheader, %.lr.ph115.us.us.us.preheader
  %.089114.us.us.us = phi i64 [ %i.em, %.lr.ph115.us.us.us.preheader ], [ 0, %.lr.ph115.us.us.us.preheader.preheader ] ; 4 uses
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph115.us.us.us.preheader ], [ 0, %.lr.ph115.us.us.us.preheader.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.bz, align 8
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %.089114.us.us.us
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.dq
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i64 12, i1 false)
  %i.ee = or disjoint i64 %.089114.us.us.us, 1    ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.bz, align 8
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ee
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ej, i64 %i.dq
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.el, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false)
  %i.em = add nuw i64 %.089114.us.us.us, 2        ; 2 uses
  %niter191.next.1 = add i64 %niter191, 2         ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph115.us.us.us.preheader, !llvm.loop !58

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph115.us.us.us.preheader
  br i1 %lcmp.mod188.not, label %._crit_edge.us.us.us, label %.lr.ph115.us.us.us.preheader.epil.preheader

.lr.ph115.us.us.us.preheader.epil.preheader:      ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph115.us.us.us.preheader.preheader
  %.089114.us.us.us.epil.init = phi i64 [ 0, %.lr.ph115.us.us.us.preheader.preheader ], [ %i.em, %._crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us.epil.init
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.bz, align 8
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %.089114.us.us.us.epil.init
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.er, i64 %i.dq
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.et, ptr noundef nonnull align 4 dereferenceable(12) %i.es, i64 12, i1 false)
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph115.us.us.us.preheader.epil.preheader
  %i.eu = add nuw nsw i64 %i.dl, 1                ; 5 uses
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load ptr, ptr %i.dk, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %i.ev, ptr %i.ex, align 4
  %i.ey = load ptr, ptr %i.dm, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 4 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.fa, i32 noundef %i.ev)
  %i.fc = load ptr, ptr %i.cz, align 8
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fe, ptr noundef nonnull align 4 dereferenceable(12) %i.fd, i64 12, i1 false)
  br i1 %10, label %.epil.preheader193, label %._crit_edge.us.us.us.new

._crit_edge.us.us.us.new:                         ; preds = %._crit_edge.us.us.us, %._crit_edge.us.us.us.new
  %.089114.us.us.us.1 = phi i64 [ %i.fu, %._crit_edge.us.us.us.new ], [ 0, %._crit_edge.us.us.us ] ; 4 uses
  %niter198 = phi i64 [ %niter198.next.1, %._crit_edge.us.us.us.new ], [ 0, %._crit_edge.us.us.us ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us.1
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.bz, align 8
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.089114.us.us.us.1
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.fj, i64 %i.fb
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fl, ptr noundef nonnull align 4 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.fm = or disjoint i64 %.089114.us.us.us.1, 1  ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = load ptr, ptr %i.bz, align 8
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.fm
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %i.fb
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.fo, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ft, ptr noundef nonnull align 4 dereferenceable(12) %i.fs, i64 12, i1 false)
  %i.fu = add nuw i64 %.089114.us.us.us.1, 2      ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %._crit_edge.us.us.us.1.unr-lcssa, label %._crit_edge.us.us.us.new, !llvm.loop !58

._crit_edge.us.us.us.1.unr-lcssa:                 ; preds = %._crit_edge.us.us.us.new
  br i1 %lcmp.mod195.not, label %._crit_edge.us.us.us.1, label %.epil.preheader193

.epil.preheader193:                               ; preds = %._crit_edge.us.us.us.1.unr-lcssa, %._crit_edge.us.us.us
  %.089114.us.us.us.1.epil.init = phi i64 [ 0, %._crit_edge.us.us.us ], [ %i.fu, %._crit_edge.us.us.us.1.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us.1.epil.init
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = load ptr, ptr %i.bz, align 8
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %.089114.us.us.us.1.epil.init
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.fb
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.fw, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gb, ptr noundef nonnull align 4 dereferenceable(12) %i.ga, i64 12, i1 false)
  br label %._crit_edge.us.us.us.1

._crit_edge.us.us.us.1:                           ; preds = %._crit_edge.us.us.us.1.unr-lcssa, %.epil.preheader193
  %i.gc = add nuw nsw i64 %i.dl, 2                ; 5 uses
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %i.ge = load ptr, ptr %i.dk, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %i.gd, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.dm, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i32, ptr %i.gh, align 4            ; 2 uses
  %i.gj = zext i32 %i.gi to i64                   ; 4 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.gi, i32 noundef %i.gd)
  %i.gk = load ptr, ptr %i.cz, align 8
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gm, ptr noundef nonnull align 4 dereferenceable(12) %i.gl, i64 12, i1 false)
  br i1 %11, label %.epil.preheader199, label %._crit_edge.us.us.us.1.new

._crit_edge.us.us.us.1.new:                       ; preds = %._crit_edge.us.us.us.1, %._crit_edge.us.us.us.1.new
  %.089114.us.us.us.2 = phi i64 [ %i.hc, %._crit_edge.us.us.us.1.new ], [ 0, %._crit_edge.us.us.us.1 ] ; 4 uses
  %niter204 = phi i64 [ %niter204.next.1, %._crit_edge.us.us.us.1.new ], [ 0, %._crit_edge.us.us.us.1 ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us.2
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.bz, align 8
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %.089114.us.us.us.2
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw [12 x i8], ptr %i.gr, i64 %i.gj
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gt, ptr noundef nonnull align 4 dereferenceable(12) %i.gs, i64 12, i1 false)
  %i.gu = or disjoint i64 %.089114.us.us.us.2, 1  ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = load ptr, ptr %i.bz, align 8
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gx, i64 %i.gu
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %i.gj
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %i.gw, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hb, ptr noundef nonnull align 4 dereferenceable(12) %i.ha, i64 12, i1 false)
  %i.hc = add nuw i64 %.089114.us.us.us.2, 2      ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %.split118.us.us.loopexit.unr-lcssa, label %._crit_edge.us.us.us.1.new, !llvm.loop !58

.lr.ph115.us.us.preheader.new:                    ; preds = %.lr.ph115.us.us.preheader, %.lr.ph115.us.us.preheader.new
  %.089114.us.us = phi i64 [ %i.hs, %.lr.ph115.us.us.preheader.new ], [ 0, %.lr.ph115.us.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph115.us.us.preheader.new ], [ 0, %.lr.ph115.us.us.preheader ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = load ptr, ptr %i.bz, align 8
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.089114.us.us
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.hh, i64 %i.dq
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hj, ptr noundef nonnull align 4 dereferenceable(12) %i.hi, i64 12, i1 false)
  %i.hk = or disjoint i64 %.089114.us.us, 1       ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.bz, align 8
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hk
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hp, i64 %i.dq
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hr, ptr noundef nonnull align 4 dereferenceable(12) %i.hq, i64 12, i1 false)
  %i.hs = add nuw i64 %.089114.us.us, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph115.us.us.preheader.new, !llvm.loop !58

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph115.us.us.preheader.new
  br i1 %lcmp.mod172.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph115.us.us.preheader
  %.089114.us.us.epil.init = phi i64 [ 0, %.lr.ph115.us.us.preheader ], [ %i.hs, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.epil.init
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = load ptr, ptr %i.bz, align 8
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %.089114.us.us.epil.init
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hx, i64 %i.dq
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.hu, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hz, ptr noundef nonnull align 4 dereferenceable(12) %i.hy, i64 12, i1 false)
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %i.ia = add nuw nsw i64 %i.dl, 1                ; 6 uses
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  %i.ic = load ptr, ptr %i.dk, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store i32 %i.ib, ptr %i.id, align 4
  %i.ie = load ptr, ptr %i.dm, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4            ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 5 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.ig, i32 noundef %i.ib)
  %i.ii = load ptr, ptr %i.cz, align 8
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ik, ptr noundef nonnull align 4 dereferenceable(12) %i.ij, i64 12, i1 false)
  %i.il = load ptr, ptr %i.bv, align 8
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %i.il, i64 %i.ih
  %i.in = load ptr, ptr %i.da, align 8            ; 4 uses
  %i.io = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.io, ptr noundef nonnull align 4 dereferenceable(12) %i.im, i64 12, i1 false)
  br i1 %7, label %.epil.preheader175, label %._crit_edge.us.us.new

._crit_edge.us.us.new:                            ; preds = %._crit_edge.us.us, %._crit_edge.us.us.new
  %.089114.us.us.1 = phi i64 [ %i.je, %._crit_edge.us.us.new ], [ 0, %._crit_edge.us.us ] ; 4 uses
  %niter180 = phi i64 [ %niter180.next.1, %._crit_edge.us.us.new ], [ 0, %._crit_edge.us.us ]
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.1
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = load ptr, ptr %i.bz, align 8
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ir, i64 %.089114.us.us.1
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %i.ih
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %i.iq, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iv, ptr noundef nonnull align 4 dereferenceable(12) %i.iu, i64 12, i1 false)
  %i.iw = or disjoint i64 %.089114.us.us.1, 1     ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = load ptr, ptr %i.bz, align 8
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %i.iw
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %i.jb, i64 %i.ih
  %i.jd = getelementptr inbounds nuw [12 x i8], ptr %i.iy, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jd, ptr noundef nonnull align 4 dereferenceable(12) %i.jc, i64 12, i1 false)
  %i.je = add nuw i64 %.089114.us.us.1, 2         ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge.us.us.1.unr-lcssa, label %._crit_edge.us.us.new, !llvm.loop !58

._crit_edge.us.us.1.unr-lcssa:                    ; preds = %._crit_edge.us.us.new
  br i1 %lcmp.mod177.not, label %._crit_edge.us.us.1, label %.epil.preheader175

.epil.preheader175:                               ; preds = %._crit_edge.us.us.1.unr-lcssa, %._crit_edge.us.us
  %.089114.us.us.1.epil.init = phi i64 [ 0, %._crit_edge.us.us ], [ %i.je, %._crit_edge.us.us.1.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.1.epil.init
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = load ptr, ptr %i.bz, align 8
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %.089114.us.us.1.epil.init
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.jj, i64 %i.ih
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %i.jg, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %i.jk, i64 12, i1 false)
  br label %._crit_edge.us.us.1

._crit_edge.us.us.1:                              ; preds = %._crit_edge.us.us.1.unr-lcssa, %.epil.preheader175
  %i.jm = add nuw nsw i64 %i.dl, 2                ; 6 uses
  %i.jn = trunc i64 %i.jm to i32                  ; 2 uses
  %i.jo = load ptr, ptr %i.dk, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i32 %i.jn, ptr %i.jp, align 4
  %i.jq = load ptr, ptr %i.dm, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = zext i32 %i.js to i64                   ; 5 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.js, i32 noundef %i.jn)
  %i.ju = load ptr, ptr %i.cz, align 8
  %i.jv = getelementptr inbounds nuw [12 x i8], ptr %i.ju, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jw, ptr noundef nonnull align 4 dereferenceable(12) %i.jv, i64 12, i1 false)
  %i.jx = load ptr, ptr %i.bv, align 8
  %i.jy = getelementptr inbounds nuw [12 x i8], ptr %i.jx, i64 %i.jt
  %i.jz = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jz, ptr noundef nonnull align 4 dereferenceable(12) %i.jy, i64 12, i1 false)
  br i1 %8, label %.epil.preheader181, label %._crit_edge.us.us.1.new

._crit_edge.us.us.1.new:                          ; preds = %._crit_edge.us.us.1, %._crit_edge.us.us.1.new
  %.089114.us.us.2 = phi i64 [ %i.kp, %._crit_edge.us.us.1.new ], [ 0, %._crit_edge.us.us.1 ] ; 4 uses
  %niter186 = phi i64 [ %niter186.next.1, %._crit_edge.us.us.1.new ], [ 0, %._crit_edge.us.us.1 ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.2
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = load ptr, ptr %i.bz, align 8
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.089114.us.us.2
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.jt
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kg, ptr noundef nonnull align 4 dereferenceable(12) %i.kf, i64 12, i1 false)
  %i.kh = or disjoint i64 %.089114.us.us.2, 1     ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = load ptr, ptr %i.bz, align 8
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %i.kh
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %i.km, i64 %i.jt
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ko, ptr noundef nonnull align 4 dereferenceable(12) %i.kn, i64 12, i1 false)
  %i.kp = add nuw i64 %.089114.us.us.2, 2         ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.split118.us.us.loopexit167.unr-lcssa, label %._crit_edge.us.us.1.new, !llvm.loop !58

.split118.us.us.loopexit.unr-lcssa:               ; preds = %._crit_edge.us.us.us.1.new
  br i1 %lcmp.mod201.not, label %.split118.us.us, label %.epil.preheader199

.epil.preheader199:                               ; preds = %.split118.us.us.loopexit.unr-lcssa, %._crit_edge.us.us.us.1
  %.089114.us.us.us.2.epil.init = phi i64 [ 0, %._crit_edge.us.us.us.1 ], [ %i.hc, %.split118.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.us.2.epil.init
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = load ptr, ptr %i.bz, align 8
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %.089114.us.us.us.2.epil.init
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %i.ku, i64 %i.gj
  %i.kw = getelementptr inbounds nuw [12 x i8], ptr %i.kr, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kw, ptr noundef nonnull align 4 dereferenceable(12) %i.kv, i64 12, i1 false)
  br label %.split118.us.us

.split118.us.us.loopexit167.unr-lcssa:            ; preds = %._crit_edge.us.us.1.new
  br i1 %lcmp.mod183.not, label %.split118.us.us, label %.epil.preheader181

.epil.preheader181:                               ; preds = %.split118.us.us.loopexit167.unr-lcssa, %._crit_edge.us.us.1
  %.089114.us.us.2.epil.init = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %i.kp, %.split118.us.us.loopexit167.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.089114.us.us.2.epil.init
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = load ptr, ptr %i.bz, align 8
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.089114.us.us.2.epil.init
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = getelementptr inbounds nuw [12 x i8], ptr %i.lb, i64 %i.jt
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.ky, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ld, ptr noundef nonnull align 4 dereferenceable(12) %i.lc, i64 12, i1 false)
  br label %.split118.us.us

.split118.us.us:                                  ; preds = %.epil.preheader181, %.split118.us.us.loopexit167.unr-lcssa, %.epil.preheader199, %.split118.us.us.loopexit.unr-lcssa
  %i.le = phi ptr [ %i.dd, %.epil.preheader199 ], [ %i.dd, %.split118.us.us.loopexit.unr-lcssa ], [ %i.in, %.split118.us.us.loopexit167.unr-lcssa ], [ %i.in, %.epil.preheader181 ]
  %i.lf = add nuw nsw i64 %.091121.us, 1          ; 2 uses
  %exitcond146.not = icmp eq i64 %i.lf, %i.w
  br i1 %exitcond146.not, label %._crit_edge, label %.split.us.us, !llvm.loop !59

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.092113 = phi i64 [ %i.lj, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.092113
  store i32 2, ptr %i.lg, align 4
  %i.lh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lh, i8 0, i64 %i.ct, i1 false)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.092113
  store ptr %i.lh, ptr %i.li, align 8
  %i.lj = add nuw i64 %.092113, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.lj, %i.cg
  br i1 %exitcond.not, label %.lr.ph122, label %.lr.ph.split, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.split118, %.split118.us.us, %.preheader
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = icmp ne ptr %i.ll, null
  %or.cond = and i1 %i.bu, %i.lm
  br i1 %or.cond, label %bb.h, label %bb.y

.split:                                           ; preds = %.lr.ph122, %.split118
  %i.ln = phi ptr [ %i.og, %.split118 ], [ %i.cn, %.lr.ph122 ] ; 2 uses
  %.091121 = phi i64 [ %i.oh, %.split118 ], [ 0, %.lr.ph122 ] ; 4 uses
  %i.lo = load ptr, ptr %i.t, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.091121
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.091121 ; 2 uses
  store i32 3, ptr %i.ls, align 8
  %i.lt = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #30 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  store ptr %i.lt, ptr %i.lu, align 8
  %i.lv = mul nuw nsw i64 %.091121, 3             ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 5 uses
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  store i32 %i.lx, ptr %i.lt, align 4
  %i.ly = load ptr, ptr %i.lw, align 8
  %i.lz = load i32, ptr %i.ly, align 4            ; 2 uses
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.lz, i32 noundef %i.lx)
  %i.mb = load ptr, ptr %i.cz, align 8
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.ma
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.lv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.md, ptr noundef nonnull align 4 dereferenceable(12) %i.mc, i64 12, i1 false)
  br i1 %.not106, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %i.me = load ptr, ptr %i.bv, align 8
  %i.mf = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.ma
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.ln, i64 %i.lv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mg, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.mh = add nuw nsw i64 %i.lv, 1                ; 3 uses
  %i.mi = trunc i64 %i.mh to i32                  ; 2 uses
  %i.mj = load ptr, ptr %i.lu, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 %i.mi, ptr %i.mk, align 4
  %i.ml = load ptr, ptr %i.lw, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = load i32, ptr %i.mm, align 4            ; 2 uses
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.mn, i32 noundef %i.mi)
  %i.mp = load ptr, ptr %i.cz, align 8
  %i.mq = getelementptr inbounds nuw [12 x i8], ptr %i.mp, i64 %i.mo
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.mh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mr, ptr noundef nonnull align 4 dereferenceable(12) %i.mq, i64 12, i1 false)
  %i.ms = load ptr, ptr %i.bv, align 8
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.ms, i64 %i.mo
  %i.mu = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.mv = getelementptr inbounds nuw [12 x i8], ptr %i.mu, i64 %i.mh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mv, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  %i.mw = add nuw nsw i64 %i.lv, 2                ; 3 uses
  %i.mx = trunc i64 %i.mw to i32                  ; 2 uses
  %i.my = load ptr, ptr %i.lu, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i32 %i.mx, ptr %i.mz, align 4
  %i.na = load ptr, ptr %i.lw, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i32, ptr %i.nb, align 4            ; 2 uses
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.nc, i32 noundef %i.mx)
  %i.ne = load ptr, ptr %i.cz, align 8
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.ne, i64 %i.nd
  %i.ng = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.mw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ng, ptr noundef nonnull align 4 dereferenceable(12) %i.nf, i64 12, i1 false)
  %i.nh = load ptr, ptr %i.bv, align 8
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %i.nd
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %i.mu, i64 %i.mw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nj, ptr noundef nonnull align 4 dereferenceable(12) %i.ni, i64 12, i1 false)
  br label %.split118

.split.split.us.preheader:                        ; preds = %.split
  %i.nk = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %i.nl = trunc i64 %i.nk to i32                  ; 2 uses
  %i.nm = load ptr, ptr %i.lu, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store i32 %i.nl, ptr %i.nn, align 4
  %i.no = load ptr, ptr %i.lw, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4            ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.nq, i32 noundef %i.nl)
  %i.ns = load ptr, ptr %i.cz, align 8
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %i.nr
  %i.nu = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nu, ptr noundef nonnull align 4 dereferenceable(12) %i.nt, i64 12, i1 false)
  %i.nv = add nuw nsw i64 %i.lv, 2                ; 2 uses
  %i.nw = trunc i64 %i.nv to i32                  ; 2 uses
  %i.nx = load ptr, ptr %i.lu, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i32 %i.nw, ptr %i.ny, align 4
  %i.nz = load ptr, ptr %i.lw, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i32, ptr %i.oa, align 4            ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  tail call void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %i.ob, i32 noundef %i.nw)
  %i.od = load ptr, ptr %i.cz, align 8
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.oc
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.of, ptr noundef nonnull align 4 dereferenceable(12) %i.oe, i64 12, i1 false)
  br label %.split118

.split118:                                        ; preds = %.split.split.preheader, %.split.split.us.preheader
  %i.og = phi ptr [ %i.mu, %.split.split.preheader ], [ %i.ln, %.split.split.us.preheader ]
  %i.oh = add nuw nsw i64 %.091121, 1             ; 2 uses
  %exitcond140.not = icmp eq i64 %i.oh, %i.w
  br i1 %exitcond140.not, label %._crit_edge, label %.split, !llvm.loop !59

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6Assimp4Ogre11IVertexData17AssimpBoneWeightsEm(ptr dead_on_unwind nonnull writable sret(%"class.std::map.16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i64 noundef %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK6Assimp4Ogre11IVertexData24ReferencedBonesByWeightsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.bp)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.oj = load i64, ptr %i.oi, align 8            ; 2 uses
end_hunk_0
