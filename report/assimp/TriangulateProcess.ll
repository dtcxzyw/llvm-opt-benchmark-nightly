Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TriangulateProcess?download=true
inline.NumInlined: 605
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6mapbox6detail6EarcutIjEclISt6vectorIS4_I10aiVector2tIfESaIS6_EESaIS8_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.o, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  br label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = mul i64 %i.bv, 3
  %i.o = lshr i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.q, %i.s
  br i1 %.not10.i, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.pre12.i = load ptr, ptr %i.r, align 8
  %i.u = icmp eq ptr %.pre12.i, %.pre.i
  br i1 %i.u, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit, label %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr %i.r, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.011.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.05.011.i, align 8
  %i.w = load i64, ptr %i.t, align 8
  %i.x = mul i64 %i.w, 72
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #18
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit: ; preds = %.critedge, %._crit_edge.i, %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i64 %.sroa.speculated.i, ptr %i.z, align 8
  store ptr null, ptr %i.m, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %1, align 8               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ab, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add i64 %i.ai, %i.bv                    ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 2305843009213693951
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

bb.d:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5resetEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %0, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ap
  %i.aw = shl nuw nsw i64 %i.aj, 2
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #16 ; 4 uses
  %i.ay = load ptr, ptr %0, align 8               ; 4 uses
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.ay, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ay, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.be = load ptr, ptr %i.al, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bg) #18
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.ax, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store ptr %i.bh, ptr %i.b, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aj
  store ptr %i.bi, ptr %i.al, align 8
  %.pre = load ptr, ptr %1, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.d, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.bj = phi ptr [ %i.ab, %bb.d ], [ %.pre, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.bk = tail call noundef ptr @_ZN6mapbox6detail6EarcutIjE10linkedListISt6vectorI10aiVector2tIfESaIS6_EEEEPNS2_4NodeERKT_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i1 noundef zeroext true) ; 5 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.o, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03260 = phi i64 [ %i.bw, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03359 = phi i64 [ %i.bv, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.03458 = phi i32 [ %i.bu, %.lr.ph ], [ 80, %.lr.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.03260 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = sub nsw i32 %.03458, %i.bt              ; 4 uses
  %i.bv = add i64 %i.bs, %.03359                  ; 3 uses
  %i.bw = add nuw i64 %.03260, 1                  ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, -1
  %i.by = icmp ult i64 %i.bw, %i.l
  %or.cond = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !37

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %i.f, align 8
  %i.cf = load ptr, ptr %1, align 8
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 24
  %i.ck = icmp ugt i64 %i.cj, 1
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cl = tail call noundef ptr @_ZN6mapbox6detail6EarcutIjE14eliminateHolesISt6vectorIS4_I10aiVector2tIfESaIS6_EESaIS8_EEEEPNS2_4NodeERKT_SC_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.031 = phi ptr [ %i.cl, %bb.i ], [ %i.bk, %bb.h ] ; 5 uses
  %i.cm = icmp slt i32 %i.bu, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.034.lobit = lshr i32 %i.bu, 31
  %i.co = trunc nuw nsw i32 %.034.lobit to i8
  store i8 %i.co, ptr %i.cn, align 8
  br i1 %i.cm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.cv = load double, ptr %i.cr, align 8         ; 3 uses
  store double %i.cv, ptr %i.cs, align 8
  store double %i.cv, ptr %i.ct, align 8
  %i.cw = load double, ptr %i.cu, align 8         ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.cw, ptr %i.cy, align 8
  %i.cz = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cw, i64 1 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0 = phi ptr [ %i.cq, %bb.k ], [ %i.dk, %bb.l ] ; 2 uses
  %i.db = phi <2 x double> [ %i.da, %bb.k ], [ %i.di, %bb.l ] ; 2 uses
  %i.dc = phi <2 x double> [ %i.da, %bb.k ], [ %i.dg, %bb.l ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.de = load <2 x double>, ptr %i.dd, align 8   ; 4 uses
  %i.df = fcmp olt <2 x double> %i.de, %i.dc
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.de, <2 x double> %i.dc ; 4 uses
  %2 = extractelement <2 x double> %i.dg, i64 0
  store double %2, ptr %i.ct, align 8
  %i.dh = fcmp olt <2 x double> %i.db, %i.de
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.de, <2 x double> %i.db ; 4 uses
  %3 = shufflevector <2 x double> %i.di, <2 x double> %i.dg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %3, ptr %i.cs, align 8
  %4 = extractelement <2 x double> %i.di, i64 1
  store double %4, ptr %i.cx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.dk, %.031
  br i1 %.not37, label %bb.m, label %bb.l, !llvm.loop !38

bb.m:                                             ; preds = %bb.l
  %i.dl = fsub <2 x double> %i.di, %i.dg          ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.dn = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.do = fcmp olt double %i.dm, %i.dn
  %.sroa.speculated = select i1 %i.do, double %i.dn, double %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = fcmp une double %.sroa.speculated, 0.000000e+00
  %i.dr = fdiv double 3.276700e+04, %.sroa.speculated
  %i.ds = select i1 %i.dq, double %i.dr, double 0.000000e+00
  store double %i.ds, ptr %i.dp, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  tail call void @_ZN6mapbox6detail6EarcutIjE12earcutLinkedEPNS2_4NodeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %.031, i32 noundef 0)
  %i.dt = load i64, ptr %i.z, align 8
  %i.du = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dv = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not10.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not10.i.i, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.p, align 8         ; 2 uses
  %.pre12.i.i = load ptr, ptr %i.r, align 8
  %i.dw = icmp eq ptr %.pre12.i.i, %.pre.i.i
  br i1 %i.dw, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr %.pre.i.i, ptr %i.r, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.05.011.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.05.011.i.i, align 8
  %i.dy = load i64, ptr %i.z, align 8
  %i.dz = mul i64 %i.dy, 72
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.dz) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i, i64 8 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ea, %i.dv
  br i1 %.not.i.i42, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit: ; preds = %bb.n, %._crit_edge.i.i, %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.z, align 8
  store ptr null, ptr %i.m, align 8
  store i64 %.sroa.speculated.i.i, ptr %i.aa, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, %bb.g, %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6mapbox6detail6EarcutIjED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not10.i.i.i, label %bb.b, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8       ; 4 uses
  %.pre12.i.i.i = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %.pre12.i.i.i, %.pre.i.i.i
  br i1 %i.h, label %bb.b, label %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr %.pre.i.i.i, ptr %i.f, align 8
  br label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.05.011.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.05.011.i.i.i, align 8
  %i.j = load i64, ptr %i.b, align 8
  %i.k = mul i64 %i.j, 72
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %._crit_edge.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  store i64 %.sroa.speculated.i.i.i, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.speculated.i.i.i, ptr %i.n, align 8
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #18
  br label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit

_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6mapbox6detail6EarcutIjE10linkedListISt6vectorI10aiVector2tIfESaIS6_EEEEPNS2_4NodeERKT_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %1, align 8                ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 6 uses
  %.not65 = icmp eq ptr %i.h, %i.i
  br i1 %.not65, label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 1)
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre73 = load float, ptr %.phi.trans.insert72, align 4 ; 2 uses
  %i.o = icmp eq i64 %i.l, 8
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.p = phi float [ %.pre73, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %i.q = phi float [ %.pre, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ]
  %.055 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %.04154 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04154 ; 2 uses
  %i.s = fpext float %i.q to double
  %i.t = load float, ptr %i.r, align 4            ; 2 uses
  %i.u = fpext float %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load float, ptr %i.v, align 4            ; 2 uses
  %i.x = fpext float %i.w to double
  %i.y = fpext float %i.p to double
  %i.z = fsub double %i.s, %i.u
  %i.aa = fadd double %i.x, %i.y
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %.055)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04154 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = fpext float %i.t to double
  %i.af = load float, ptr %i.ad, align 4          ; 3 uses
  %i.ag = fpext float %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ai = load float, ptr %i.ah, align 4          ; 3 uses
  %i.aj = fpext float %i.ai to double
  %i.ak = fpext float %i.w to double
  %i.al = fsub double %i.ae, %i.ag
  %i.am = fadd double %i.aj, %i.ak
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ab) ; 3 uses
  %i.ao = add nuw i64 %.04154, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !39

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.ap = and i64 %i.l, 8
  %lcmp.mod.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi float [ %.pre73, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
end_hunk_0
