Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapnode?download=true
inline.NumInlined: 476
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z16transformNodeBoxRK7MapNodeRK7NodeBoxPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaISB_EEh:bb.a

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
  %i.bw = phi ptr [ %i.br, %.lr.ph ], [ %i.hj, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.bx = phi ptr [ %i.bs, %.lr.ph ], [ %i.hk, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.0562.0604 = phi ptr [ %i.bu, %.lr.ph ], [ %i.hl, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
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
  %i.ep = insertelement <2 x float> %i.bz, float %.sroa.79.0, i64 1 ; 6 uses
  switch i8 %i.ah, label %_ZN4core8aabbox3dIfE6repairEv.exit [
    i8 5, label %bb.ae
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.eq = fpext nsz <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.er = fpext nsz <2 x float> %i.eo to <2 x double> ; 2 uses
  %i.es = fneg nsz <2 x double> %i.er
  %i.et = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.es)
  %i.eu = fptrunc nsz <2 x double> %i.et to <2 x float>
  %i.ev = fmul nsz <2 x double> %i.er, splat (double f0x3C91A62633145C07)
  %i.ew = fadd nsz <2 x double> %i.ev, %i.eq
  %i.ex = fptrunc nsz <2 x double> %i.ew to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.ey = fpext nsz <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.ez = fpext nsz <2 x float> %i.eo to <2 x double> ; 2 uses
  %i.fa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ez)
  %i.fb = fptrunc nsz <2 x double> %i.fa to <2 x float>
  %i.fc = fmul nsz <2 x double> %i.ez, splat (double f0x3C91A62633145C07)
  %i.fd = fsub nsz <2 x double> %i.fc, %i.ey
  %i.fe = fptrunc nsz <2 x double> %i.fd to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ac:                                            ; preds = %bb.z
  %i.ff = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.fg = fpext nsz <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.fh = fmul nsz <2 x double> %i.fg, splat (double f0x3C91A62633145C07)
  %i.fi = fsub nsz <2 x double> %i.fh, %i.ff
  %i.fj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.fg)
  %i.fk = fptrunc nsz <2 x double> %i.fj to <2 x float>
  %i.fl = fptrunc nsz <2 x double> %i.fi to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ad:                                            ; preds = %bb.z
  %i.fm = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.fn = fpext nsz <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.fo = fmul nsz <2 x double> %i.fn, splat (double f0x3C91A62633145C07)
  %i.fp = fadd nsz <2 x double> %i.fo, %i.fm
  %i.fq = fneg nsz <2 x double> %i.fn
  %i.fr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.fq)
  %i.fs = fptrunc nsz <2 x double> %i.fr to <2 x float>
  %i.ft = fptrunc nsz <2 x double> %i.fp to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.ae:                                            ; preds = %bb.z
  %i.fu = fpext nsz <2 x float> %i.en to <2 x double> ; 2 uses
  %i.fv = fpext nsz <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.fw = fneg nsz <2 x double> %i.fv
  %i.fx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> splat (double f0xBCA1A62633145C07), <2 x double> %i.fw)
  %i.fy = fmul nsz <2 x double> %i.fv, splat (double f0x3CA1A62633145C07)
  %i.fz = fsub nsz <2 x double> %i.fy, %i.fu
  %i.ga = fptrunc nsz <2 x double> %i.fz to <2 x float>
  %i.gb = fptrunc nsz <2 x double> %i.fx to <2 x float>
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

_ZN4core8aabbox3dIfE6repairEv.exit:               ; preds = %bb.z, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.gc = phi <2 x float> [ %i.en, %bb.z ], [ %i.ga, %bb.ae ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ], [ %i.fk, %bb.ac ], [ %i.fs, %bb.ad ] ; 2 uses
  %i.gd = phi <2 x float> [ %i.eo, %bb.z ], [ %i.eo, %bb.ae ], [ %i.ex, %bb.aa ], [ %i.fe, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.eo, %bb.ad ] ; 2 uses
  %i.ge = phi <2 x float> [ %i.ep, %bb.z ], [ %i.gb, %bb.ae ], [ %i.eu, %bb.aa ], [ %i.fb, %bb.ab ], [ %i.fl, %bb.ac ], [ %i.ft, %bb.ad ] ; 2 uses
  %i.gf = extractelement <2 x float> %i.gc, i64 0 ; 3 uses
  %i.gg = extractelement <2 x float> %i.gc, i64 1 ; 3 uses
  %i.gh = fcmp nsz ogt float %i.gf, %i.gg         ; 2 uses
  %.sroa.0506.2 = select nsz i1 %i.gh, float %i.gg, float %i.gf ; 2 uses
  %.sroa.59.2 = select nsz i1 %i.gh, float %i.gf, float %i.gg ; 2 uses
  %i.gi = extractelement <2 x float> %i.ge, i64 0 ; 3 uses
  %i.gj = extractelement <2 x float> %i.ge, i64 1 ; 3 uses
  %i.gk = fcmp nsz ogt float %i.gi, %i.gj         ; 2 uses
  %.sroa.25.1 = select nsz i1 %i.gk, float %i.gj, float %i.gi ; 2 uses
  %.sroa.79.2 = select nsz i1 %i.gk, float %i.gi, float %i.gj ; 2 uses
  %i.gl = extractelement <2 x float> %i.gd, i64 0 ; 3 uses
  %i.gm = extractelement <2 x float> %i.gd, i64 1 ; 3 uses
  %i.gn = fcmp nsz ogt float %i.gl, %i.gm         ; 2 uses
  %.sroa.42.2 = select nsz i1 %i.gn, float %i.gm, float %i.gl ; 2 uses
  %.sroa.97.2 = select nsz i1 %i.gn, float %i.gl, float %i.gm ; 2 uses
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
  %i.go = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  store ptr %i.go, ptr %i.aj, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

bb.ag:                                            ; preds = %_ZN4core8aabbox3dIfE6repairEv.exit
  %i.gp = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.gq = ptrtoint ptr %i.bw to i64
  %i.gr = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gs = sub i64 %i.gq, %i.gr                    ; 3 uses
  %i.gt = icmp eq i64 %i.gs, 9223372036854775800
  br i1 %i.gt, label %bb.ah, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.gu = sdiv exact i64 %i.gs, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.gv = add nsw i64 %.sroa.speculated.i.i.i, %i.gu ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gu
  %i.gx = tail call i64 @llvm.umin.i64(i64 %i.gv, i64 384307168202282325)
  %i.gy = select i1 %i.gw, i64 384307168202282325, i64 %i.gx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gz = mul nuw nsw i64 %i.gy, 24
  %i.ha = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #19 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gs ; 6 uses
  store float %.sroa.0506.2, ptr %i.hb, align 4, !tbaa !71
  %.sroa.25.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %.sroa.25.1, ptr %.sroa.25.0..sroa_idx517, align 4, !tbaa !71
  %.sroa.42.0..sroa_idx526 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store float %.sroa.42.2, ptr %.sroa.42.0..sroa_idx526, align 4, !tbaa !71
  %.sroa.59.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store float %.sroa.59.2, ptr %.sroa.59.0..sroa_idx535, align 4, !tbaa !71
  %.sroa.79.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store float %.sroa.79.2, ptr %.sroa.79.0..sroa_idx545, align 4, !tbaa !71
  %.sroa.97.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  store float %.sroa.97.2, ptr %.sroa.97.0..sroa_idx554, align 4, !tbaa !71
  %.not10.i.i.i.i.i = icmp eq ptr %i.gp, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i ], [ %i.ha, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i ], [ %i.gp, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !122
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hc, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ha, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hd, %.lr.ph.i.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.hf = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.hh) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ha, ptr %3, align 8, !tbaa !69
  store ptr %i.he, ptr %i.aj, align 8, !tbaa !68
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.gy ; 2 uses
  store ptr %i.hi, ptr %i.az, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.af, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.hj = phi ptr [ %i.bw, %bb.af ], [ %i.hi, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.hk = phi ptr [ %i.go, %bb.af ], [ %i.he, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0562.0604, i64 24 ; 2 uses
  %.not585 = icmp eq ptr %i.hl, %i.bt
  br i1 %.not585, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226, label %bb.k

bb.aj:                                            ; preds = %bb.a
  %i.hm = load i16, ptr %0, align 4, !tbaa !11
  %i.hn = zext i16 %i.hm to i64                   ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !15
  %i.hq = load ptr, ptr %2, align 8, !tbaa !16    ; 5 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 2072
  %i.hv = icmp ugt i64 %i.hu, %i.hn               ; 2 uses
  br i1 %i.hv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hw = getelementptr inbounds nuw [2072 x i8], ptr %i.hq, i64 %i.hn ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !21
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.al, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i.i:     ; preds = %bb.al, %bb.ak
  %i.ib = phi ptr [ %i.ia, %bb.al ], [ %i.hw, %bb.ak ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 97
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !64
  switch i8 %i.id, label %bb.am [
    i8 4, label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
    i8 10, label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i
  ]

bb.am:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 98
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !67
  switch i8 %i.if, label %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit [
    i8 8, label %bb.ar
    i8 7, label %bb.ar
    i8 9, label %bb.ar
    i8 17, label %bb.ar
  ]

_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !65
  %i.ii = and i8 %i.ih, 7
  switch i8 %i.ii, label %default.unreachable [
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
  %i.ij = phi i1 [ true, %bb.ar ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ] ; 2 uses
  %.sroa.17.0.i = phi i16 [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ -1, %bb.aq ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %or.cond583 = phi i1 [ false, %bb.ar ], [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ] ; 2 uses
  %or.cond584 = phi i1 [ false, %bb.ar ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ false, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %.sroa.9.0.i = phi i16 [ -1, %bb.ar ], [ 1, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 1, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 1, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %i.ik = phi i1 [ true, %bb.ar ], [ true, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ true, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  %.sroa.0.0.i = phi i16 [ 0, %bb.ar ], [ 0, %bb.am ], [ 1, %bb.an ], [ -1, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ], [ 0, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit.i ]
  br i1 %i.hv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
  %i.il = getelementptr inbounds nuw [2072 x i8], ptr %i.hq, i64 %i.hn ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !21
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.at, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i197

bb.at:                                            ; preds = %bb.as, %_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i197

_ZNK14NodeDefManager3getERK7MapNode.exit.i197:    ; preds = %bb.at, %bb.as
  %i.iq = phi ptr [ %i.ip, %bb.at ], [ %i.il, %bb.as ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 97
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !64
  switch i8 %i.is, label %bb.av [
    i8 4, label %bb.au
    i8 10, label %bb.au
  ]

bb.au:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i197, %_ZNK14NodeDefManager3getERK7MapNode.exit.i197
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !65
  %i.iv = and i8 %i.iu, 7
  br label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit

bb.av:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i197
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 98
  %i.ix = load i8, ptr %i.iw, align 2, !tbaa !67
  %switch.tableidx = add i8 %i.ix, -7             ; 2 uses
  %i.iy = icmp ult i8 %switch.tableidx, 11
  br i1 %i.iy, label %switch.lookup, label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit

switch.lookup:                                    ; preds = %bb.av
  %i.iz = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z16transformNodeBoxRK7MapNodeRK7NodeBoxPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaISB_EEh, i64 %i.iz
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit

_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit: ; preds = %bb.av, %switch.lookup, %bb.au
  %.0.i198 = phi i8 [ %switch.load, %switch.lookup ], [ %i.iv, %bb.au ], [ 0, %bb.av ] ; 2 uses
  br i1 %i.ik, label %bb.aw, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread

bb.aw:                                            ; preds = %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit
  switch i16 %.sroa.9.0.i, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread [
    i16 1, label %_ZNK4core8vector3dIsEeqERKS1_.exit
    i16 -1, label %_ZNK4core8vector3dIsEeqERKS1_.exit227
  ]

_ZNK4core8vector3dIsEeqERKS1_.exit:               ; preds = %bb.aw
  br i1 %i.ij, label %bb.ax, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread

bb.ax:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit
  %i.ja = icmp eq i8 %.0.i198, 6
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br i1 %i.ja, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit, label %bb.bc

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit: ; preds = %bb.ax
  %.sroa.0633.0.copyload = load float, ptr %i.jb, align 8, !tbaa !71
  %.sroa.7634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.7634.0.copyload = load float, ptr %.sroa.7634.0..sroa_idx, align 4, !tbaa !71 ; 4 uses
  %.sroa.8635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.17638.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.17638.12.copyload = load float, ptr %.sroa.17638.12..sroa_idx, align 8, !tbaa !71 ; 4 uses
  %.sroa.18639.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.18639.12.copyload = load float, ptr %.sroa.18639.12..sroa_idx, align 4, !tbaa !71
  %i.jd = load <1 x float>, ptr %.sroa.8635.0..sroa_idx, align 8, !tbaa !71
  %i.je = load <2 x float>, ptr %i.jc, align 4
  %i.jf = shufflevector <1 x float> %i.jd, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jg = insertelement <2 x float> %i.jf, float %.sroa.18639.12.copyload, i64 0
  %i.jh = fpext nsz <2 x float> %i.jg to <2 x double> ; 2 uses
  %i.ji = fneg nsz <2 x double> %i.jh
  %i.jj = fcmp nsz ogt float %.sroa.17638.12.copyload, %.sroa.7634.0.copyload
  %.sroa.14397.0 = select nsz i1 %i.jj, float %.sroa.17638.12.copyload, float %.sroa.7634.0.copyload ; 2 uses
  %i.jk = fcmp nsz olt float %.sroa.17638.12.copyload, %.sroa.7634.0.copyload
  %.sroa.7384.0 = select nsz i1 %i.jk, float %.sroa.17638.12.copyload, float %.sroa.7634.0.copyload ; 2 uses
  %i.jl = insertelement <2 x float> %i.je, float %.sroa.0633.0.copyload, i64 1
  %i.jm = fpext nsz <2 x float> %i.jl to <2 x double> ; 2 uses
  %i.jn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ji)
  %i.jo = fptrunc nsz <2 x double> %i.jn to <2 x float> ; 2 uses
  %i.jp = fmul nsz <2 x double> %i.jh, splat (double f0x3C91A62633145C07)
  %i.jq = fadd nsz <2 x double> %i.jp, %i.jm
  %i.jr = fptrunc nsz <2 x double> %i.jq to <2 x float> ; 4 uses
  %i.js = extractelement <2 x float> %i.jo, i64 0 ; 4 uses
  %i.jt = extractelement <2 x float> %i.jo, i64 1 ; 4 uses
  %i.ju = fcmp nsz ogt float %i.js, %i.jt
  %.sroa.11394.0 = select nsz i1 %i.ju, float %i.js, float %i.jt ; 2 uses
  %i.jv = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jw = fcmp nsz ogt <2 x float> %i.jv, %i.jr   ; 2 uses
  %i.jx = extractelement <2 x i1> %i.jw, i64 1
  %i.jy = extractelement <2 x float> %i.jr, i64 0 ; 2 uses
  %i.jz = extractelement <2 x float> %i.jr, i64 1 ; 2 uses
  %.sroa.16400.0 = select nsz i1 %i.jx, float %i.jy, float %i.jz ; 2 uses
  %i.ka = fcmp nsz olt float %i.js, %i.jt
  %.sroa.0381.0 = select nsz i1 %i.ka, float %i.js, float %i.jt ; 2 uses
  %i.kb = extractelement <2 x i1> %i.jw, i64 0
  %.sroa.9389.0 = select nsz i1 %i.kb, float %i.jy, float %i.jz ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !68 ; 11 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !70
  %.not.i199 = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i199, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  store float %.sroa.0381.0, ptr %i.kd, align 4, !tbaa !71
  %.sroa.7384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store float %.sroa.7384.0, ptr %.sroa.7384.0..sroa_idx, align 4, !tbaa !71
  %.sroa.9389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store float %.sroa.9389.0, ptr %.sroa.9389.0..sroa_idx, align 4, !tbaa !71
  %.sroa.11394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store float %.sroa.11394.0, ptr %.sroa.11394.0..sroa_idx, align 4, !tbaa !71
  %.sroa.14397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store float %.sroa.14397.0, ptr %.sroa.14397.0..sroa_idx, align 4, !tbaa !71
  %.sroa.16400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  store float %.sroa.16400.0, ptr %.sroa.16400.0..sroa_idx, align 4, !tbaa !71
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kg, ptr %i.kc, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.az:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %i.kh = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.ki = ptrtoint ptr %i.kd to i64
  %i.kj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 3 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.ba, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.az
  %i.km = sdiv exact i64 %i.kk, 24                ; 3 uses
  %.sroa.speculated.i.i.i201 = tail call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i201, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = tail call i64 @llvm.umin.i64(i64 %i.kn, i64 384307168202282325)
  %i.kq = select i1 %i.ko, i64 384307168202282325, i64 %i.kp ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.kq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i202)
  %i.kr = mul nuw nsw i64 %i.kq, 24
  %i.ks = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #19 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk ; 6 uses
  store float %.sroa.0381.0, ptr %i.kt, align 4, !tbaa !71
  %.sroa.7384.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store float %.sroa.7384.0, ptr %.sroa.7384.0..sroa_idx385, align 4, !tbaa !71
  %.sroa.9389.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store float %.sroa.9389.0, ptr %.sroa.9389.0..sroa_idx390, align 4, !tbaa !71
  %.sroa.11394.0..sroa_idx395 = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store float %.sroa.11394.0, ptr %.sroa.11394.0..sroa_idx395, align 4, !tbaa !71
  %.sroa.14397.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store float %.sroa.14397.0, ptr %.sroa.14397.0..sroa_idx398, align 4, !tbaa !71
  %.sroa.16400.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  store float %.sroa.16400.0, ptr %.sroa.16400.0..sroa_idx401, align 4, !tbaa !71
  %.not10.i.i.i.i.i203 = icmp eq ptr %i.kh, %i.kd
  br i1 %.not10.i.i.i.i.i203, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204

.lr.ph.i.i.i.i.i204:                              ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200, %.lr.ph.i.i.i.i.i204
  %.012.i.i.i.i.i205 = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i204 ], [ %i.ks, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200 ] ; 2 uses
  %.0911.i.i.i.i.i206 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i204 ], [ %i.kh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i205, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i206, i64 24, i1 false), !tbaa.struct !72, !alias.scope !123
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i206, i64 24 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i205, i64 24 ; 2 uses
  %.not.i.i.i.i.i207 = icmp eq ptr %i.ku, %i.kd
  br i1 %.not.i.i.i.i.i207, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i208: ; preds = %.lr.ph.i.i.i.i.i204, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200
  %.0.lcssa.i.i.i.i.i209 = phi ptr [ %i.ks, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i200 ], [ %i.kv, %.lr.ph.i.i.i.i.i204 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209, i64 24
  %.not.i23.i.i210 = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i210, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i211, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i208
  %i.kx = load ptr, ptr %i.ke, align 8, !tbaa !70
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = sub i64 %i.ky, %i.kj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kz) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i211

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i211: ; preds = %bb.bb, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i208
  store ptr %i.ks, ptr %3, align 8, !tbaa !69
  store ptr %i.kw, ptr %i.kc, align 8, !tbaa !68
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %i.kq
  store ptr %i.la, ptr %i.ke, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.bc:                                            ; preds = %bb.ax
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !68 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !70
  %.not.i213 = icmp eq ptr %i.lc, %i.le
  br i1 %.not.i213, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 24, i1 false), !tbaa.struct !72
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !68
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store ptr %i.lg, ptr %i.lb, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.be:                                            ; preds = %bb.bc
  %i.lh = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.li = ptrtoint ptr %i.lc to i64
  %i.lj = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 3 uses
  %i.ll = icmp eq i64 %i.lk, 9223372036854775800
  br i1 %i.ll, label %bb.bf, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214: ; preds = %bb.be
  %i.lm = sdiv exact i64 %i.lk, 24                ; 3 uses
  %.sroa.speculated.i.i.i215 = tail call i64 @llvm.umax.i64(i64 %i.lm, i64 1)
  %i.ln = add nsw i64 %.sroa.speculated.i.i.i215, %i.lm ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.lm
  %i.lp = tail call i64 @llvm.umin.i64(i64 %i.ln, i64 384307168202282325)
  %i.lq = select i1 %i.lo, i64 384307168202282325, i64 %i.lp ; 3 uses
  %.not.i.i.i216 = icmp ne i64 %i.lq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i216)
  %i.lr = mul nuw nsw i64 %i.lq, 24
  %i.ls = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #19 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 24, i1 false), !tbaa.struct !72
  %.not10.i.i.i.i.i217 = icmp eq ptr %i.lh, %i.lc
  br i1 %.not10.i.i.i.i.i217, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i222, label %.lr.ph.i.i.i.i.i218

.lr.ph.i.i.i.i.i218:                              ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214, %.lr.ph.i.i.i.i.i218
  %.012.i.i.i.i.i219 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i218 ], [ %i.ls, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214 ] ; 2 uses
  %.0911.i.i.i.i.i220 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i218 ], [ %i.lh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i219, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i220, i64 24, i1 false), !tbaa.struct !72, !alias.scope !124
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i220, i64 24 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i219, i64 24 ; 2 uses
  %.not.i.i.i.i.i221 = icmp eq ptr %i.lu, %i.lc
  br i1 %.not.i.i.i.i.i221, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i222, label %.lr.ph.i.i.i.i.i218, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i222: ; preds = %.lr.ph.i.i.i.i.i218, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214
  %.0.lcssa.i.i.i.i.i223 = phi ptr [ %i.ls, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i214 ], [ %i.lv, %.lr.ph.i.i.i.i.i218 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i223, i64 24
  %.not.i23.i.i224 = icmp eq ptr %i.lh, null
  br i1 %.not.i23.i.i224, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i225, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i222
  %i.lx = load ptr, ptr %i.ld, align 8, !tbaa !70
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = sub i64 %i.ly, %i.lj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lz) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i225

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i225: ; preds = %bb.bg, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i222
  store ptr %i.ls, ptr %3, align 8, !tbaa !69
  store ptr %i.lw, ptr %i.lb, align 8, !tbaa !68
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %i.lq
  store ptr %i.ma, ptr %i.ld, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

_ZNK4core8vector3dIsEeqERKS1_.exit227:            ; preds = %bb.aw
  br i1 %i.ij, label %bb.bh, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread

bb.bh:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227
  %i.mb = icmp eq i8 %.0.i198, 7
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br i1 %i.mb, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit228, label %bb.bm

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit228: ; preds = %bb.bh
  %.sroa.0628.0.copyload = load float, ptr %i.mc, align 8, !tbaa !71
  %.sroa.7.0..sroa_idx629 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx629, align 4, !tbaa !71 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.17631.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.17631.12.copyload = load float, ptr %.sroa.17631.12..sroa_idx, align 8, !tbaa !71 ; 4 uses
  %.sroa.18.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.18.12.copyload = load float, ptr %.sroa.18.12..sroa_idx, align 4, !tbaa !71
  %i.me = load <1 x float>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  %i.mf = load <2 x float>, ptr %i.md, align 4
  %i.mg = shufflevector <1 x float> %i.me, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mh = insertelement <2 x float> %i.mg, float %.sroa.18.12.copyload, i64 0
  %i.mi = fpext nsz <2 x float> %i.mh to <2 x double> ; 2 uses
  %i.mj = fcmp nsz ogt float %.sroa.17631.12.copyload, %.sroa.7.0.copyload
  %.sroa.14367.0 = select nsz i1 %i.mj, float %.sroa.17631.12.copyload, float %.sroa.7.0.copyload ; 2 uses
  %i.mk = fcmp nsz olt float %.sroa.17631.12.copyload, %.sroa.7.0.copyload
  %.sroa.7354.0 = select nsz i1 %i.mk, float %.sroa.17631.12.copyload, float %.sroa.7.0.copyload ; 2 uses
  %i.ml = insertelement <2 x float> %i.mf, float %.sroa.0628.0.copyload, i64 1
  %i.mm = fpext nsz <2 x float> %i.ml to <2 x double> ; 2 uses
  %i.mn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.mi)
  %i.mo = fptrunc nsz <2 x double> %i.mn to <2 x float> ; 2 uses
  %i.mp = fmul nsz <2 x double> %i.mi, splat (double f0x3C91A62633145C07)
  %i.mq = fsub nsz <2 x double> %i.mp, %i.mm
  %i.mr = fptrunc nsz <2 x double> %i.mq to <2 x float> ; 4 uses
  %i.ms = extractelement <2 x float> %i.mo, i64 0 ; 4 uses
  %i.mt = extractelement <2 x float> %i.mo, i64 1 ; 4 uses
  %i.mu = fcmp nsz ogt float %i.ms, %i.mt
  %.sroa.11364.0 = select nsz i1 %i.mu, float %i.ms, float %i.mt ; 2 uses
  %i.mv = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = fcmp nsz ogt <2 x float> %i.mv, %i.mr   ; 2 uses
  %i.mx = extractelement <2 x i1> %i.mw, i64 1
  %i.my = extractelement <2 x float> %i.mr, i64 0 ; 2 uses
  %i.mz = extractelement <2 x float> %i.mr, i64 1 ; 2 uses
  %.sroa.16370.0 = select nsz i1 %i.mx, float %i.my, float %i.mz ; 2 uses
  %i.na = fcmp nsz olt float %i.ms, %i.mt
  %.sroa.0351.0 = select nsz i1 %i.na, float %i.ms, float %i.mt ; 2 uses
  %i.nb = extractelement <2 x i1> %i.mw, i64 0
  %.sroa.9359.0 = select nsz i1 %i.nb, float %i.my, float %i.mz ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !68 ; 11 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !70
  %.not.i229 = icmp eq ptr %i.nd, %i.nf
  br i1 %.not.i229, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit228
  store float %.sroa.0351.0, ptr %i.nd, align 4, !tbaa !71
  %.sroa.7354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  store float %.sroa.7354.0, ptr %.sroa.7354.0..sroa_idx, align 4, !tbaa !71
  %.sroa.9359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store float %.sroa.9359.0, ptr %.sroa.9359.0..sroa_idx, align 4, !tbaa !71
  %.sroa.11364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store float %.sroa.11364.0, ptr %.sroa.11364.0..sroa_idx, align 4, !tbaa !71
  %.sroa.14367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store float %.sroa.14367.0, ptr %.sroa.14367.0..sroa_idx, align 4, !tbaa !71
  %.sroa.16370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  store float %.sroa.16370.0, ptr %.sroa.16370.0..sroa_idx, align 4, !tbaa !71
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  store ptr %i.ng, ptr %i.nc, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.bj:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit228
  %i.nh = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.ni = ptrtoint ptr %i.nd to i64
  %i.nj = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nk = sub i64 %i.ni, %i.nj                    ; 3 uses
  %i.nl = icmp eq i64 %i.nk, 9223372036854775800
  br i1 %i.nl, label %bb.bk, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230: ; preds = %bb.bj
  %i.nm = sdiv exact i64 %i.nk, 24                ; 3 uses
  %.sroa.speculated.i.i.i231 = tail call i64 @llvm.umax.i64(i64 %i.nm, i64 1)
  %i.nn = add nsw i64 %.sroa.speculated.i.i.i231, %i.nm ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.nm
  %i.np = tail call i64 @llvm.umin.i64(i64 %i.nn, i64 384307168202282325)
  %i.nq = select i1 %i.no, i64 384307168202282325, i64 %i.np ; 3 uses
  %.not.i.i.i232 = icmp ne i64 %i.nq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i232)
  %i.nr = mul nuw nsw i64 %i.nq, 24
  %i.ns = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nr) #19 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nk ; 6 uses
  store float %.sroa.0351.0, ptr %i.nt, align 4, !tbaa !71
  %.sroa.7354.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store float %.sroa.7354.0, ptr %.sroa.7354.0..sroa_idx355, align 4, !tbaa !71
  %.sroa.9359.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store float %.sroa.9359.0, ptr %.sroa.9359.0..sroa_idx360, align 4, !tbaa !71
  %.sroa.11364.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store float %.sroa.11364.0, ptr %.sroa.11364.0..sroa_idx365, align 4, !tbaa !71
  %.sroa.14367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store float %.sroa.14367.0, ptr %.sroa.14367.0..sroa_idx368, align 4, !tbaa !71
  %.sroa.16370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  store float %.sroa.16370.0, ptr %.sroa.16370.0..sroa_idx371, align 4, !tbaa !71
  %.not10.i.i.i.i.i233 = icmp eq ptr %i.nh, %i.nd
  br i1 %.not10.i.i.i.i.i233, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i238, label %.lr.ph.i.i.i.i.i234

.lr.ph.i.i.i.i.i234:                              ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230, %.lr.ph.i.i.i.i.i234
  %.012.i.i.i.i.i235 = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i234 ], [ %i.ns, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230 ] ; 2 uses
  %.0911.i.i.i.i.i236 = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i234 ], [ %i.nh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i235, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i236, i64 24, i1 false), !tbaa.struct !72, !alias.scope !125
  %i.nu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i236, i64 24 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i235, i64 24 ; 2 uses
  %.not.i.i.i.i.i237 = icmp eq ptr %i.nu, %i.nd
  br i1 %.not.i.i.i.i.i237, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i238, label %.lr.ph.i.i.i.i.i234, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i238: ; preds = %.lr.ph.i.i.i.i.i234, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230
  %.0.lcssa.i.i.i.i.i239 = phi ptr [ %i.ns, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i230 ], [ %i.nv, %.lr.ph.i.i.i.i.i234 ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i239, i64 24
  %.not.i23.i.i240 = icmp eq ptr %i.nh, null
  br i1 %.not.i23.i.i240, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i241, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i238
  %i.nx = load ptr, ptr %i.ne, align 8, !tbaa !70
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.nj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef %i.nz) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i241

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i241: ; preds = %bb.bl, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i238
  store ptr %i.ns, ptr %3, align 8, !tbaa !69
  store ptr %i.nw, ptr %i.nc, align 8, !tbaa !68
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.nq
  store ptr %i.oa, ptr %i.ne, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.bm:                                            ; preds = %bb.bh
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !68 ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !70
  %.not.i243 = icmp eq ptr %i.oc, %i.oe
  br i1 %.not.i243, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false), !tbaa.struct !72
  %i.of = load ptr, ptr %i.ob, align 8, !tbaa !68
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  store ptr %i.og, ptr %i.ob, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.bo:                                            ; preds = %bb.bm
  %i.oh = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.oi = ptrtoint ptr %i.oc to i64
  %i.oj = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.ok = sub i64 %i.oi, %i.oj                    ; 3 uses
  %i.ol = icmp eq i64 %i.ok, 9223372036854775800
  br i1 %i.ol, label %bb.bp, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244: ; preds = %bb.bo
  %i.om = sdiv exact i64 %i.ok, 24                ; 3 uses
  %.sroa.speculated.i.i.i245 = tail call i64 @llvm.umax.i64(i64 %i.om, i64 1)
  %i.on = add nsw i64 %.sroa.speculated.i.i.i245, %i.om ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.om
  %i.op = tail call i64 @llvm.umin.i64(i64 %i.on, i64 384307168202282325)
  %i.oq = select i1 %i.oo, i64 384307168202282325, i64 %i.op ; 3 uses
  %.not.i.i.i246 = icmp ne i64 %i.oq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i246)
  %i.or = mul nuw nsw i64 %i.oq, 24
  %i.os = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #19 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ok
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ot, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false), !tbaa.struct !72
  %.not10.i.i.i.i.i247 = icmp eq ptr %i.oh, %i.oc
  br i1 %.not10.i.i.i.i.i247, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i252, label %.lr.ph.i.i.i.i.i248

.lr.ph.i.i.i.i.i248:                              ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244, %.lr.ph.i.i.i.i.i248
  %.012.i.i.i.i.i249 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i248 ], [ %i.os, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244 ] ; 2 uses
  %.0911.i.i.i.i.i250 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i.i248 ], [ %i.oh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i249, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i250, i64 24, i1 false), !tbaa.struct !72, !alias.scope !126
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i250, i64 24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i249, i64 24 ; 2 uses
  %.not.i.i.i.i.i251 = icmp eq ptr %i.ou, %i.oc
  br i1 %.not.i.i.i.i.i251, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i252, label %.lr.ph.i.i.i.i.i248, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i252: ; preds = %.lr.ph.i.i.i.i.i248, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244
  %.0.lcssa.i.i.i.i.i253 = phi ptr [ %i.os, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i244 ], [ %i.ov, %.lr.ph.i.i.i.i.i248 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i253, i64 24
  %.not.i23.i.i254 = icmp eq ptr %i.oh, null
  br i1 %.not.i23.i.i254, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i255, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i252
  %i.ox = load ptr, ptr %i.od, align 8, !tbaa !70
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.oy, %i.oj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.oz) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i255

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i255: ; preds = %bb.bq, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i252
  store ptr %i.os, ptr %3, align 8, !tbaa !69
  store ptr %i.ow, ptr %i.ob, align 8, !tbaa !68
  %i.pa = getelementptr inbounds nuw [24 x i8], ptr %i.os, i64 %i.oq
  store ptr %i.pa, ptr %i.od, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

_ZNK4core8vector3dIsEeqERKS1_.exit227.thread:     ; preds = %bb.aw, %_ZNK4core8vector3dIsEeqERKS1_.exit, %_ZNK7MapNode14getWallMountedEPK14NodeDefManager.exit, %_ZNK4core8vector3dIsEeqERKS1_.exit227
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load float, ptr %i.pb, align 8, !tbaa !71 ; 3 uses
  %.sroa.16.0..sroa_idx616 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx616, align 4, !tbaa !71 ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.pd = load <1 x float>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !71 ; 3 uses
  %.sroa.30.12.copyload = load float, ptr %i.pc, align 4, !tbaa !71 ; 3 uses
  %.sroa.44.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.44.12.copyload = load float, ptr %.sroa.44.12..sroa_idx, align 8, !tbaa !71 ; 4 uses
  %.sroa.45.12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.45.12.copyload = load float, ptr %.sroa.45.12..sroa_idx, align 4, !tbaa !71 ; 3 uses
  switch i16 %.sroa.0.0.i, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split [
    i16 -1, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us
    i16 1, label %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596
  ]

_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread
  %i.pe = shufflevector <1 x float> %i.pd, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pf = insertelement <2 x float> %i.pe, float %.sroa.45.12.copyload, i64 0 ; 2 uses
  %i.pg = insertelement <2 x float> poison, float %.sroa.30.12.copyload, i64 0
  %i.ph = insertelement <2 x float> %i.pg, float %.sroa.0.0.copyload, i64 1 ; 2 uses
  br i1 %or.cond583, label %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us.preheader, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us.preheader: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us
  %i.pi = fpext nsz <2 x float> %i.ph to <2 x double> ; 2 uses
  %i.pj = fpext nsz <2 x float> %i.pf to <2 x double> ; 2 uses
  %i.pk = fmul nsz <2 x double> %i.pj, zeroinitializer
  %i.pl = fsub nsz <2 x double> %i.pi, %i.pk
  %i.pm = fptrunc nsz <2 x double> %i.pl to <2 x float>
  %i.pn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> zeroinitializer, <2 x double> %i.pj)
  %i.po = fptrunc nsz <2 x double> %i.pn to <2 x float>
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread
  %i.pp = shufflevector <1 x float> %i.pd, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pq = insertelement <2 x float> %i.pp, float %.sroa.45.12.copyload, i64 0 ; 2 uses
  %i.pr = insertelement <2 x float> poison, float %.sroa.30.12.copyload, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %.sroa.0.0.copyload, i64 1 ; 2 uses
  br i1 %or.cond583, label %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us599.preheader, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us599.preheader: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596
  %i.pt = fpext nsz <2 x float> %i.ps to <2 x double> ; 2 uses
  %i.pu = fpext nsz <2 x float> %i.pq to <2 x double> ; 2 uses
  %i.pv = fmul nsz <2 x double> %i.pu, splat (double f0xBCA1A62633145C07)
  %i.pw = fsub nsz <2 x double> %i.pv, %i.pt
  %i.px = fptrunc nsz <2 x double> %i.pw to <2 x float>
  %i.py = fneg nsz <2 x double> %i.pu
  %i.pz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> splat (double f0x3CA1A62633145C07), <2 x double> %i.py)
  %i.qa = fptrunc nsz <2 x double> %i.pz to <2 x float>
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread
  %i.qb = shufflevector <1 x float> %i.pd, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qc = insertelement <2 x float> %i.qb, float %.sroa.45.12.copyload, i64 0 ; 4 uses
  %i.qd = insertelement <2 x float> poison, float %.sroa.30.12.copyload, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %.sroa.0.0.copyload, i64 1 ; 4 uses
  br i1 %or.cond584, label %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader:  ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split
  switch i16 %.sroa.17.0.i, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257 [
    i16 -1, label %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread
    i16 1, label %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread709
  ]

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread709, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us599.preheader, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us.preheader, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us
  %i.qf = phi <2 x float> [ %i.pq, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596 ], [ %i.qc, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split ], [ %i.po, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us.preheader ], [ %i.pf, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us ], [ %i.qa, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us599.preheader ], [ %i.se, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread709 ], [ %i.rx, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread ], [ %i.qc, %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader ] ; 2 uses
  %i.qg = phi <2 x float> [ %i.ps, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us596 ], [ %i.qe, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split ], [ %i.pm, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us.preheader ], [ %i.ph, %_ZNK4core8vector3dIsEeqERKS1_.exit227.thread.split.us ], [ %i.px, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.us599.preheader ], [ %i.sb, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread709 ], [ %i.ru, %_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread ], [ %i.qe, %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader ] ; 2 uses
  %i.qh = extractelement <2 x float> %i.qg, i64 0 ; 4 uses
  %i.qi = extractelement <2 x float> %i.qg, i64 1 ; 4 uses
  %i.qj = fcmp nsz ogt float %i.qh, %i.qi
  %.sroa.11.0 = select nsz i1 %i.qj, float %i.qh, float %i.qi ; 2 uses
  %i.qk = fcmp nsz ogt float %.sroa.44.12.copyload, %.sroa.16.0.copyload
  %.sroa.14.0 = select nsz i1 %i.qk, float %.sroa.44.12.copyload, float %.sroa.16.0.copyload ; 2 uses
  %i.ql = extractelement <2 x float> %i.qf, i64 0 ; 4 uses
  %i.qm = extractelement <2 x float> %i.qf, i64 1 ; 4 uses
  %i.qn = fcmp nsz ogt float %i.ql, %i.qm
  %.sroa.16.0 = select nsz i1 %i.qn, float %i.ql, float %i.qm ; 2 uses
  %i.qo = fcmp nsz olt float %i.qh, %i.qi
  %.sroa.0305.0 = select nsz i1 %i.qo, float %i.qh, float %i.qi ; 2 uses
  %i.qp = fcmp nsz olt float %.sroa.44.12.copyload, %.sroa.16.0.copyload
  %.sroa.7.0 = select nsz i1 %i.qp, float %.sroa.44.12.copyload, float %.sroa.16.0.copyload ; 2 uses
  %i.qq = fcmp nsz olt float %i.ql, %i.qm
  %.sroa.9.0 = select nsz i1 %i.qq, float %i.ql, float %i.qm ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !68 ; 11 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !70
  %.not.i258 = icmp eq ptr %i.qs, %i.qu
  br i1 %.not.i258, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257
  store float %.sroa.0305.0, ptr %i.qs, align 4, !tbaa !71
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !71
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !71
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !71
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store float %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !71
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  store float %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !71
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  store ptr %i.qv, ptr %i.qr, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

bb.bs:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257
  %i.qw = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.qx = ptrtoint ptr %i.qs to i64
  %i.qy = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 3 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775800
  br i1 %i.ra, label %bb.bt, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259: ; preds = %bb.bs
  %i.rb = sdiv exact i64 %i.qz, 24                ; 3 uses
  %.sroa.speculated.i.i.i260 = tail call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i260, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = tail call i64 @llvm.umin.i64(i64 %i.rc, i64 384307168202282325)
  %i.rf = select i1 %i.rd, i64 384307168202282325, i64 %i.re ; 3 uses
  %.not.i.i.i261 = icmp ne i64 %i.rf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i261)
  %i.rg = mul nuw nsw i64 %i.rf, 24
  %i.rh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #19 ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.qz ; 6 uses
  store float %.sroa.0305.0, ptr %i.ri, align 4, !tbaa !71
  %.sroa.7.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx308, align 4, !tbaa !71
  %.sroa.9.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx312, align 4, !tbaa !71
  %.sroa.11.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx316, align 4, !tbaa !71
  %.sroa.14.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store float %.sroa.14.0, ptr %.sroa.14.0..sroa_idx318, align 4, !tbaa !71
  %.sroa.16.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.ri, i64 20
  store float %.sroa.16.0, ptr %.sroa.16.0..sroa_idx320, align 4, !tbaa !71
  %.not10.i.i.i.i.i262 = icmp eq ptr %i.qw, %i.qs
  br i1 %.not10.i.i.i.i.i262, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i267, label %.lr.ph.i.i.i.i.i263

.lr.ph.i.i.i.i.i263:                              ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259, %.lr.ph.i.i.i.i.i263
  %.012.i.i.i.i.i264 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i263 ], [ %i.rh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259 ] ; 2 uses
  %.0911.i.i.i.i.i265 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i263 ], [ %i.qw, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i264, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i265, i64 24, i1 false), !tbaa.struct !72, !alias.scope !127
  %i.rj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i265, i64 24 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i264, i64 24 ; 2 uses
  %.not.i.i.i.i.i266 = icmp eq ptr %i.rj, %i.qs
  br i1 %.not.i.i.i.i.i266, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i267, label %.lr.ph.i.i.i.i.i263, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i267: ; preds = %.lr.ph.i.i.i.i.i263, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259
  %.0.lcssa.i.i.i.i.i268 = phi ptr [ %i.rh, %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i259 ], [ %i.rk, %.lr.ph.i.i.i.i.i263 ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i268, i64 24
  %.not.i23.i.i269 = icmp eq ptr %i.qw, null
  br i1 %.not.i23.i.i269, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i270, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i267
  %i.rm = load ptr, ptr %i.qt, align 8, !tbaa !70
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = sub i64 %i.rn, %i.qy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.ro) #20
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i270

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i270: ; preds = %bb.bu, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i267
  store ptr %i.rh, ptr %3, align 8, !tbaa !69
  store ptr %i.rl, ptr %i.qr, align 8, !tbaa !68
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.rh, i64 %i.rf
  store ptr %i.rp, ptr %i.qt, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit226

_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader
  %i.rq = fpext nsz <2 x float> %i.qe to <2 x double> ; 2 uses
  %i.rr = fpext nsz <2 x float> %i.qc to <2 x double> ; 2 uses
  %i.rs = fneg nsz <2 x double> %i.rr
  %i.rt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rq, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.rs)
  %i.ru = fptrunc nsz <2 x double> %i.rt to <2 x float>
  %i.rv = fmul nsz <2 x double> %i.rr, splat (double f0x3C91A62633145C07)
  %i.rw = fadd nsz <2 x double> %i.rv, %i.rq
  %i.rx = fptrunc nsz <2 x double> %i.rw to <2 x float>
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

_ZNK4core8vector3dIsEeqERKS1_.exit275.thread.thread709: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit274.preheader
  %i.ry = fpext nsz <2 x float> %i.qe to <2 x double> ; 2 uses
  %i.rz = fpext nsz <2 x float> %i.qc to <2 x double> ; 2 uses
  %i.sa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.rz)
  %i.sb = fptrunc nsz <2 x double> %i.sa to <2 x float>
  %i.sc = fmul nsz <2 x double> %i.rz, splat (double f0x3C91A62633145C07)
  %i.sd = fsub nsz <2 x double> %i.sc, %i.ry
  %i.se = fptrunc nsz <2 x double> %i.sd to <2 x float>
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit257

bb.bv:                                            ; preds = %bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !68
  %i.sh = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = ptrtoint ptr %i.sh to i64               ; 2 uses
  %i.sk = sub i64 %i.si, %i.sj                    ; 3 uses
  %i.sl = sdiv exact i64 %i.sk, 24
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !68 ; 2 uses
  %i.sp = load ptr, ptr %i.sm, align 8, !tbaa !69 ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = sdiv exact i64 %i.ss, 24
  %i.su = add nsw i64 %i.st, %i.sl
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !128 ; 32 uses
  %i.sx = zext i8 %4 to i32                       ; 6 uses
  %i.sy = and i32 %i.sx, 1
  %.not = icmp eq i32 %i.sy, 0                    ; 4 uses
  %.sink = select i1 %.not, i64 152, i64 8
  %.sink721.in.idx = select i1 %.not, i64 144, i64 0
  %.sink721.in = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink721.in.idx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink
  %.sink721 = load ptr, ptr %.sink721.in, align 8, !tbaa !69
  %.sink722 = load ptr, ptr %i.sz, align 8, !tbaa !68
  %i.ta = ptrtoint ptr %.sink722 to i64
  %i.tb = ptrtoint ptr %.sink721 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %.pn = sdiv exact i64 %i.tc, 24
  %.0 = add nsw i64 %i.su, %.pn
  %i.td = and i32 %i.sx, 2
  %.not138 = icmp eq i32 %i.td, 0                 ; 4 uses
  %. = select i1 %.not138, i64 168, i64 24
  %.794 = select i1 %.not138, i64 176, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.794
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !68
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !69
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = sub i64 %i.ti, %i.tj
  %.pn139 = sdiv exact i64 %i.tk, 24
  %.1 = add nsw i64 %.0, %.pn139
  %i.tl = and i32 %i.sx, 4
  %.not140 = icmp eq i32 %i.tl, 0                 ; 4 uses
  %.sink734 = select i1 %.not140, i64 192, i64 48
  %.sink733 = select i1 %.not140, i64 200, i64 56
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink734
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink733
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !68
  %i.tp = load ptr, ptr %i.tm, align 8, !tbaa !69
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %.pn141 = sdiv exact i64 %i.ts, 24
  %.2 = add nsw i64 %.1, %.pn141
  %i.tt = and i32 %i.sx, 8
  %.not142 = icmp eq i32 %i.tt, 0                 ; 4 uses
  %.sink740 = select i1 %.not142, i64 216, i64 72
  %.sink739 = select i1 %.not142, i64 224, i64 80
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink740
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink739
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !68
  %i.tx = load ptr, ptr %i.tu, align 8, !tbaa !69
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %.pn143 = sdiv exact i64 %i.ua, 24
  %.3 = add nsw i64 %.2, %.pn143
  %i.ub = and i32 %i.sx, 16
  %.not144 = icmp eq i32 %i.ub, 0                 ; 4 uses
  %.sink746 = select i1 %.not144, i64 240, i64 96
  %.sink745 = select i1 %.not144, i64 248, i64 104
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink746
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink745
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !68
  %i.uf = load ptr, ptr %i.uc, align 8, !tbaa !69
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = sub i64 %i.ug, %i.uh
  %.pn145 = sdiv exact i64 %i.ui, 24
  %.4 = add nsw i64 %.3, %.pn145
  %i.uj = and i32 %i.sx, 32
  %.not146 = icmp eq i32 %i.uj, 0                 ; 4 uses
  %.sink752 = select i1 %.not146, i64 264, i64 120
  %.sink751 = select i1 %.not146, i64 272, i64 128
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink752
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sink751
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !68
  %i.un = load ptr, ptr %i.uk, align 8, !tbaa !69
  %i.uo = ptrtoint ptr %i.um to i64
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = sub i64 %i.uo, %i.up
  %.pn147 = sdiv exact i64 %i.uq, 24
  %.5 = add nsw i64 %.4, %.pn147                  ; 3 uses
  %i.ur = icmp eq i8 %4, 0                        ; 2 uses
  br i1 %i.ur, label %.thread580, label %bb.bw

.thread580:                                       ; preds = %bb.bv
  %i.us = getelementptr inbounds nuw i8, ptr %i.sw, i64 288
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sw, i64 296
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !68
  %i.uv = load ptr, ptr %i.us, align 8, !tbaa !69
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = sdiv exact i64 %i.uy, 24
  %i.va = add nsw i64 %i.uz, %.5
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.vb = icmp ult i8 %4, 4
  br i1 %i.vb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread580, %bb.bw
  %.6582 = phi i64 [ %i.va, %.thread580 ], [ %.5, %bb.bw ]
  %i.vc = getelementptr inbounds nuw i8, ptr %i.sw, i64 312
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sw, i64 320
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !68
  %i.vf = load ptr, ptr %i.vc, align 8, !tbaa !69
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = sub i64 %i.vg, %i.vh
  %i.vj = sdiv exact i64 %i.vi, 24
  %i.vk = add nsw i64 %i.vj, %.6582
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.vl = phi i1 [ true, %bb.bx ], [ false, %bb.bw ]
  %.7 = phi i64 [ %i.vk, %bb.bx ], [ %.5, %bb.bw ] ; 4 uses
  %i.vm = icmp ugt i64 %.7, 384307168202282325
  br i1 %i.vm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.vn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !70
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = sub i64 %i.vp, %i.sj
  %i.vr = sdiv exact i64 %i.vq, 24
  %i.vs = icmp ult i64 %i.vr, %.7
  br i1 %i.vs, label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit285

_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276: ; preds = %bb.ca
  %i.vt = mul nuw nsw i64 %.7, 24
  %i.vu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vt) #19 ; 5 uses
  %i.vv = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.vw = load ptr, ptr %i.sf, align 8, !tbaa !68 ; 2 uses
  %.not10.i.i.i.i277 = icmp eq ptr %i.vv, %i.vw
  br i1 %.not10.i.i.i.i277, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i282, label %.lr.ph.i.i.i.i278

.lr.ph.i.i.i.i278:                                ; preds = %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276, %.lr.ph.i.i.i.i278
  %.012.i.i.i.i279 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i278 ], [ %i.vu, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276 ] ; 2 uses
  %.0911.i.i.i.i280 = phi ptr [ %i.vx, %.lr.ph.i.i.i.i278 ], [ %i.vv, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i279, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i280, i64 24, i1 false), !tbaa.struct !72, !alias.scope !129
  %i.vx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i280, i64 24 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i279, i64 24
  %.not.i.i.i.i281 = icmp eq ptr %i.vx, %i.vw
  br i1 %.not.i.i.i.i281, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i282, label %.lr.ph.i.i.i.i278, !llvm.loop !95

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i282: ; preds = %.lr.ph.i.i.i.i278, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE11_M_allocateEm.exit.i276
  %.not.i8.i283 = icmp eq ptr %i.vv, null
  br i1 %.not.i8.i283, label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i282
  %i.vz = load ptr, ptr %i.vn, align 8, !tbaa !70
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %i.vv to i64
  %i.wc = sub i64 %i.wa, %i.wb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.wc) #20
  br label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284

_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284: ; preds = %bb.cb, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i282
  store ptr %i.vu, ptr %3, align 8, !tbaa !69
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.sk
  store ptr %i.wd, ptr %i.sf, align 8, !tbaa !68
  %i.we = getelementptr inbounds nuw [24 x i8], ptr %i.vu, i64 %.7
  store ptr %i.we, ptr %i.vn, align 8, !tbaa !70
  %.val193.pre = load ptr, ptr %i.sm, align 8, !tbaa !74
  %.val194.pre = load ptr, ptr %i.sn, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit285

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE7reserveEm.exit285: ; preds = %bb.ca, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284
  %i.wf = phi ptr [ %i.sh, %bb.ca ], [ %i.vu, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284 ]
  %.val194 = phi ptr [ %i.so, %bb.ca ], [ %.val194.pre, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284 ]
  %.val193 = phi ptr [ %i.sp, %bb.ca ], [ %.val193.pre, %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit.i284 ]
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 %i.sk
  tail call void @_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.wg, ptr %.val193, ptr %.val194)
  %.sink758 = select i1 %.not, i64 152, i64 8
  %.val187.sink.in.idx = select i1 %.not, i64 144, i64 0
  %.val187.sink.in = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.val187.sink.in.idx
  %.val187.sink = load ptr, ptr %.val187.sink.in, align 8, !tbaa !74
end_hunk_0
