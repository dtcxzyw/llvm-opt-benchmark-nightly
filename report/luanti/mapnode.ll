Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapnode?download=true
inline.NumInlined: 476
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7MapNode16rotateAlongYAxisEPK14NodeDefManager8Rotation:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZL18rot_to_wallmounted, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !66
  %i.be = or i8 %i.bd, %i.ay
  store i8 %i.be, ptr %i.aq, align 1, !tbaa !65
  br label %.critedge

bb.h:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nsw i32 %2, 60
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = srem i32 %i.bj, 240
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !65
  br label %.critedge

bb.i:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = and i32 %i.bo, 31
  %i.bq = and i32 %i.bo, 224
  %i.br = mul nsw i32 %2, 6
  %i.bs = add nsw i32 %i.bp, %i.br
  %i.bt = srem i32 %i.bs, 24
  %i.bu = or i32 %i.bt, %i.bq
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bm, align 1, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.f, %bb.e, %bb.d, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16transformNodeBoxRK7MapNodeRK7NodeBoxPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaISB_EEh(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !120
  switch i8 %i.a, label %bb.cf [
    i8 1, label %bb.b
    i8 3, label %bb.b
    i8 2, label %bb.aj
    i8 4, label %bb.bv
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %0, align 4, !tbaa !11
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 2072
  %i.l = icmp ugt i64 %i.k, %i.d
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2072 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i:       ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 97
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64
  switch i8 %i.t, label %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit [
    i8 3, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.f
    i8 14, label %bb.f
    i8 4, label %bb.g
    i8 10, label %bb.g
  ]

bb.e:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !65
  %.fr.i = freeze i8 %i.v
  %i.w = and i8 %.fr.i, 31                        ; 3 uses
  %.urem.i = add nsw i8 %i.w, -24
  %.cmp.i = icmp samesign ult i8 %i.w, 24
  %i.x = select i1 %.cmp.i, i8 %i.w, i8 %.urem.i
  br label %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65
  %i.aa = and i8 %i.z, 3
  br label %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !65
  %i.ad = and i8 %i.ac, 7
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @wallmounted_to_facedir, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !66
  br label %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit

_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i, %bb.e, %bb.f, %bb.g
  %.0.i = phi i8 [ %i.x, %bb.e ], [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], [ 0, %_ZNK14NodeDefManager3getERK7MapNode.exit.i ] ; 2 uses
  %i.ah = lshr i8 %.0.i, 2
  %i.ai = and i8 %.0.i, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !69
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = sdiv exact i64 %i.av, 24
  %i.ax = add nsw i64 %i.aw, %i.ap                ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 384307168202282325
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.i:                                             ; preds = %_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.an
  %i.bd = sdiv exact i64 %i.bc, 24
  %i.be = icmp ult i64 %i.bd, %i.ax
  br i1 %i.be, label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.bf = add i64 %i.av, %i.ao
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #19 ; 4 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !121
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bh to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bo) #20
  br label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ao ; 2 uses
  store ptr %i.bp, ptr %i.aj, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ax ; 2 uses
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !70
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !74
  %.pre643 = load ptr, ptr %i.aq, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.br = phi ptr [ %i.ba, %bb.i ], [ %i.bq, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.bs = phi ptr [ %i.ak, %bb.i ], [ %i.bp, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.bt = phi ptr [ %i.ar, %bb.i ], [ %.pre643, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.bu = phi ptr [ %i.as, %bb.i ], [ %.pre, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %.not585603 = icmp eq ptr %i.bu, %i.bt
  br i1 %.not585603, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit
  %i.bw = phi ptr [ %i.br, %.lr.ph ], [ %i.gp, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.bx = phi ptr [ %i.bs, %.lr.ph ], [ %i.gq, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.0562.0604 = phi ptr [ %i.bu, %.lr.ph ], [ %i.gr, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0562.0604, i64 4
  %i.by = load <4 x float>, ptr %.sroa.0562.0604, align 4, !tbaa !71
  %i.bz = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0562.0604, i64 16
  %.sroa.79.0.copyload = load float, ptr %.sroa.79.0..sroa_idx, align 4, !tbaa !71
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0562.0604, i64 20
  %.sroa.97.0.copyload = load float, ptr %.sroa.97.0..sroa_idx, align 4, !tbaa !71
  %i.ca = load i8, ptr %1, align 8, !tbaa !120
  %i.cb = icmp eq i8 %i.ca, 3
  br i1 %i.cb, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.cc = load i16, ptr %0, align 4, !tbaa !11
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.cf = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 2072
  %i.ck = icmp ugt i64 %i.cj, %i.cd
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw [2072 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !21
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.n, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i195

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i195

_ZNK14NodeDefManager3getERK7MapNode.exit.i195:    ; preds = %bb.n, %bb.m
  %i.cq = phi ptr [ %i.cp, %bb.n ], [ %i.cl, %bb.m ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1449
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !75  ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 2
  br i1 %i.ct, label %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i195
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 97
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !64  ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 2
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = load i8, ptr %i.bv, align 1, !tbaa !65
  %i.cy = and i8 %i.cx, 7
  br label %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i8 %i.cs, 1
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = load i8, ptr %i.bv, align 1, !tbaa !65
  %i.db = and i8 %i.da, 7
  br label %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit

bb.s:                                             ; preds = %bb.q
  %i.dc = icmp eq i8 %i.cv, 5
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dd = load i8, ptr %i.bv, align 1, !tbaa !65
  %i.de = and i8 %i.dd, 127                       ; 2 uses
  %.not.i = icmp eq i8 %i.de, 0
  br i1 %.not.i, label %bb.u, label %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 1397
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 1398
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !77
  %..i = tail call i8 @llvm.umin.i8(i8 %i.dg, i8 %i.di)
  br label %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit

_ZNK7MapNode8getLevelEPK14NodeDefManager.exit:    ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i195, %bb.p, %bb.r, %bb.t, %bb.u
  %.1.i = phi i8 [ %i.de, %bb.t ], [ %i.cy, %bb.p ], [ %i.db, %bb.r ], [ %..i, %bb.u ], [ 8, %_ZNK14NodeDefManager3getERK7MapNode.exit.i195 ]
  %i.dj = uitofp i8 %.1.i to float
  %i.dk = fmul nnan nsz float %i.dj, 1.562500e-02
  %i.dl = fadd nnan nsz float %i.dk, -5.000000e-01
  %i.dm = fmul nnan nsz float %i.dl, 1.000000e+01
  br label %bb.v

bb.v:                                             ; preds = %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit, %bb.k
  %.sroa.79.0 = phi nsz float [ %i.dm, %_ZNK7MapNode8getLevelEPK14NodeDefManager.exit ], [ %.sroa.79.0.copyload, %bb.k ]
  %i.dn = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.do = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dp = insertelement <2 x float> %i.do, float %.sroa.97.0.copyload, i64 1 ; 4 uses
  switch i8 %i.ai, label %.unreachabledefault [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 0, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dq = fpext nsz <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.dr = fpext nsz <2 x float> %i.dp to <2 x double> ; 2 uses
  %i.ds = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.dr)
  %i.dt = fptrunc nsz <2 x double> %i.ds to <2 x float>
  %i.du = fmul nsz <2 x double> %i.dr, splat (double f0x3C91A62633145C07)
  %i.dv = fsub nsz <2 x double> %i.du, %i.dq
  %i.dw = fptrunc nsz <2 x double> %i.dv to <2 x float>
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dx = fpext nsz <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.dy = fpext nsz <2 x float> %i.dp to <2 x double> ; 2 uses
  %i.dz = fmul nsz <2 x double> %i.dy, splat (double f0xBCA1A62633145C07)
  %i.ea = fsub nsz <2 x double> %i.dz, %i.dx
  %i.eb = fptrunc nsz <2 x double> %i.ea to <2 x float>
  %i.ec = fneg nsz <2 x double> %i.dy
  %i.ed = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> splat (double f0x3CA1A62633145C07), <2 x double> %i.ec)
  %i.ee = fptrunc nsz <2 x double> %i.ed to <2 x float>
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ef = fpext nsz <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.eg = fpext nsz <2 x float> %i.dp to <2 x double> ; 2 uses
  %i.eh = fneg nsz <2 x double> %i.eg
  %i.ei = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.eh)
  %i.ej = fptrunc nsz <2 x double> %i.ei to <2 x float>
  %i.ek = fmul nsz <2 x double> %i.eg, splat (double f0x3C91A62633145C07)
  %i.el = fadd nsz <2 x double> %i.ek, %i.ef
  %i.em = fptrunc nsz <2 x double> %i.el to <2 x float>
  br label %bb.z

.unreachabledefault:                              ; preds = %bb.v
  unreachable

default.unreachable:                              ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  unreachable

bb.z:                                             ; preds = %bb.v, %bb.x, %bb.y, %bb.w
  %i.en = phi <2 x float> [ %i.dt, %bb.w ], [ %i.eb, %bb.x ], [ %i.ej, %bb.y ], [ %i.dn, %bb.v ] ; 6 uses
  %i.eo = phi <2 x float> [ %i.dw, %bb.w ], [ %i.ee, %bb.x ], [ %i.em, %bb.y ], [ %i.dp, %bb.v ] ; 6 uses
  %5 = insertelement <2 x float> %i.bz, float %.sroa.79.0, i64 1 ; 6 uses
  switch i8 %i.ah, label %_ZN4core8aabbox3dIfE6repairEv.exit [
    i8 5, label %bb.ae
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ep = fpext nsz <2 x float> %5 to <2 x double> ; 2 uses
  %i.eq = fpext nsz <2 x float> %i.eo to <2 x double> ; 2 uses
  %i.er = fneg nsz <2 x double> %i.eq
  %i.es = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.er)
  %i.et = fptrunc nsz <2 x double> %i.es to <2 x float>
  %i.eu = fmul nsz <2 x double> %i.eq, splat (double f0x3C91A62633145C07)
  %i.ev = fadd nsz <2 x double> %i.eu, %i.ep
  %i.ew = fptrunc nsz <2 x double> %i.ev to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.ex = fpext nsz <2 x float> %5 to <2 x double> ; 2 uses
  %i.ey = fpext nsz <2 x float> %i.eo to <2 x double> ; 2 uses
  %i.ez = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ey)
  %i.fa = fptrunc nsz <2 x double> %i.ez to <2 x float>
  %i.fb = fmul nsz <2 x double> %i.ey, splat (double f0x3C91A62633145C07)
  %i.fc = fsub nsz <2 x double> %i.fb, %i.ex
  %i.fd = fptrunc nsz <2 x double> %i.fc to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ac:                                            ; preds = %bb.z
  %i.fe = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.ff = fpext nsz <2 x float> %5 to <2 x double> ; 2 uses
  %6 = fmul nsz <2 x double> %i.ff, splat (double f0x3C91A62633145C07)
  %7 = fsub nsz <2 x double> %6, %i.fe
  %8 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ff)
  %9 = fptrunc nsz <2 x double> %8 to <2 x float>
  %10 = fptrunc nsz <2 x double> %7 to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ad:                                            ; preds = %bb.z
  %i.fg = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.fh = fpext nsz <2 x float> %5 to <2 x double> ; 2 uses
  %11 = fmul nsz <2 x double> %i.fh, splat (double f0x3C91A62633145C07)
  %12 = fadd nsz <2 x double> %11, %i.fg
  %13 = fneg nsz <2 x double> %i.fh
  %14 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %13)
  %15 = fptrunc nsz <2 x double> %14 to <2 x float>
  %16 = fptrunc nsz <2 x double> %12 to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ae:                                            ; preds = %bb.z
  %i.fi = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.fj = fpext nsz <2 x float> %5 to <2 x double> ; 2 uses
  %17 = fneg nsz <2 x double> %i.fj
  %18 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> splat (double f0xBCA1A62633145C07), <2 x double> %17)
  %19 = fmul nsz <2 x double> %i.fj, splat (double f0x3CA1A62633145C07)
  %20 = fsub nsz <2 x double> %19, %i.fi
  %21 = fptrunc nsz <2 x double> %20 to <2 x float>
  %22 = fptrunc nsz <2 x double> %18 to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

_ZN4core8aabbox3dIfE6repairEv.exit:               ; preds = %bb.z, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %23 = phi <2 x float> [ %i.en, %bb.z ], [ %21, %bb.ae ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ], [ %9, %bb.ac ], [ %15, %bb.ad ] ; 2 uses
  %i.fk = phi <2 x float> [ %i.eo, %bb.z ], [ %i.eo, %bb.ae ], [ %i.ew, %bb.aa ], [ %i.fd, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.eo, %bb.ad ] ; 2 uses
  %24 = phi <2 x float> [ %5, %bb.z ], [ %22, %bb.ae ], [ %i.et, %bb.aa ], [ %i.fa, %bb.ab ], [ %10, %bb.ac ], [ %16, %bb.ad ] ; 2 uses
  %i.fl = extractelement <2 x float> %23, i64 0   ; 3 uses
  %i.fm = extractelement <2 x float> %23, i64 1   ; 3 uses
  %i.fn = fcmp nsz ogt float %i.fl, %i.fm         ; 2 uses
  %.sroa.0506.2 = select nsz i1 %i.fn, float %i.fm, float %i.fl ; 2 uses
  %.sroa.59.2 = select nsz i1 %i.fn, float %i.fl, float %i.fm ; 2 uses
  %i.fo = extractelement <2 x float> %24, i64 0   ; 3 uses
  %i.fp = extractelement <2 x float> %24, i64 1   ; 3 uses
  %i.fq = fcmp nsz ogt float %i.fo, %i.fp         ; 2 uses
  %.sroa.25.1 = select nsz i1 %i.fq, float %i.fp, float %i.fo ; 2 uses
  %.sroa.79.2 = select nsz i1 %i.fq, float %i.fo, float %i.fp ; 2 uses
  %i.fr = extractelement <2 x float> %i.fk, i64 0 ; 3 uses
  %i.fs = extractelement <2 x float> %i.fk, i64 1 ; 3 uses
  %i.ft = fcmp nsz ogt float %i.fr, %i.fs         ; 2 uses
  %.sroa.42.2 = select nsz i1 %i.ft, float %i.fs, float %i.fr ; 2 uses
  %.sroa.97.2 = select nsz i1 %i.ft, float %i.fr, float %i.fs ; 2 uses
  %.not.i196 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i196, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4core8aabbox3dIfE6repairEv.exit
  store float %.sroa.0506.2, ptr %i.bx, align 4, !tbaa !71
  %.sroa.25.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store float %.sroa.25.1, ptr %.sroa.25.0..sroa_idx515, align 4, !tbaa !71
  %.sroa.42.0..sroa_idx524 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %.sroa.42.2, ptr %.sroa.42.0..sroa_idx524, align 4, !tbaa !71
  %.sroa.59.0..sroa_idx533 = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store float %.sroa.59.2, ptr %.sroa.59.0..sroa_idx533, align 4, !tbaa !71
  %.sroa.79.0..sroa_idx543 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store float %.sroa.79.2, ptr %.sroa.79.0..sroa_idx543, align 4, !tbaa !71
  %.sroa.97.0..sroa_idx552 = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store float %.sroa.97.2, ptr %.sroa.97.0..sroa_idx552, align 4, !tbaa !71
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  store ptr %i.fu, ptr %i.aj, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

bb.ag:                                            ; preds = %_ZN4core8aabbox3dIfE6repairEv.exit
  %i.fv = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.fw = ptrtoint ptr %i.bw to i64
  %i.fx = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.ah, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.ga = sdiv exact i64 %i.fy, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 384307168202282325)
  %i.ge = select i1 %i.gc, i64 384307168202282325, i64 %i.gd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ge, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gf = mul nuw nsw i64 %i.ge, 24
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #19 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 6 uses
  store float %.sroa.0506.2, ptr %i.gh, align 4, !tbaa !71
  %.sroa.25.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store float %.sroa.25.1, ptr %.sroa.25.0..sroa_idx517, align 4, !tbaa !71
  %.sroa.42.0..sroa_idx526 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store float %.sroa.42.2, ptr %.sroa.42.0..sroa_idx526, align 4, !tbaa !71
  %.sroa.59.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store float %.sroa.59.2, ptr %.sroa.59.0..sroa_idx535, align 4, !tbaa !71
  %.sroa.79.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store float %.sroa.79.2, ptr %.sroa.79.0..sroa_idx545, align 4, !tbaa !71
  %.sroa.97.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  store float %.sroa.97.2, ptr %.sroa.97.0..sroa_idx554, align 4, !tbaa !71
  %.not10.i.i.i.i.i = icmp eq ptr %i.fv, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i ], [ %i.fv, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !122
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gi, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gj, %.lr.ph.i.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.gl = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %i.gm, %i.fx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.gn) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.gg, ptr %3, align 8, !tbaa !69
  store ptr %i.gk, ptr %i.aj, align 8, !tbaa !68
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.ge ; 2 uses
  store ptr %i.go, ptr %i.az, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.af, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.gp = phi ptr [ %i.bw, %bb.af ], [ %i.go, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.gq = phi ptr [ %i.fu, %bb.af ], [ %i.gk, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0562.0604, i64 24 ; 2 uses
  %.not585 = icmp eq ptr %i.gr, %i.bt
  br i1 %.not585, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226, label %bb.k

bb.aj:                                            ; preds = %bb.a
  %i.gs = load i16, ptr %0, align 4, !tbaa !11
  %i.gt = zext i16 %i.gs to i64                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15
  %i.gw = load ptr, ptr %2, align 8, !tbaa !16    ; 5 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 2072
  %i.hb = icmp ugt i64 %i.ha, %i.gt               ; 2 uses
  br i1 %i.hb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds nuw [2072 x i8], ptr %i.gw, i64 %i.gt ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !21
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.al, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i.i:     ; preds = %bb.al, %bb.ak
  %i.hh = phi ptr [ %i.hg, %bb.al ], [ %i.hc, %bb.ak ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 97
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !64
  switch i8 %i.hj, label %bb.am [
    i8 4, label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
    i8 10, label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  ]

bb.am:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 98
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !67
  switch i8 %i.hl, label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit [
    i8 8, label %bb.ar
    i8 7, label %bb.ar
    i8 9, label %bb.ar
    i8 17, label %bb.ar
  ]

_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !65
  %i.ho = and i8 %i.hn, 7
  switch i8 %i.ho, label %default.unreachable [
    i8 7, label %bb.ar
    i8 1, label %bb.ar
    i8 2, label %bb.an
    i8 3, label %bb.ao
    i8 4, label %bb.ap
    i8 5, label %bb.aq
    i8 6, label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
    i8 0, label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
  ]

bb.an:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  br label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit

bb.ao:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  br label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit

bb.ap:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  br label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit

bb.aq:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  br label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit

bb.ar:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i, %bb.am, %bb.am, %bb.am, %bb.am
  br label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit

_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit: ; preds = %bb.am, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.hp = phi i1 [ true, %bb.ar ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ] ; 2 uses
  %.sroa.17.0.i = phi i16 [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ -1, %bb.aq ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %or.cond583 = phi i1 [ false, %bb.ar ], [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ] ; 2 uses
  %or.cond584 = phi i1 [ false, %bb.ar ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %.sroa.9.0.i = phi i16 [ -1, %bb.ar ], [ 1, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 1, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 1, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %i.hq = phi i1 [ true, %bb.ar ], [ true, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %.sroa.0.0.i = phi i16 [ 0, %bb.ar ], [ 0, %bb.am ], [ 1, %bb.an ], [ -1, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
  %i.hr = getelementptr inbounds nuw [2072 x i8], ptr %i.gw, i64 %i.gt ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !21
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.at, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i197

bb.at:                                            ; preds = %bb.as, %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i197

_ZNK14NodeDefManager3getERK7MapNode.exit.i197:    ; preds = %bb.at, %bb.as
  %i.hw = phi ptr [ %i.hv, %bb.at ], [ %i.hr, %bb.as ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 97
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !64
  switch i8 %i.hy, label %bb.av [
end_hunk_0
