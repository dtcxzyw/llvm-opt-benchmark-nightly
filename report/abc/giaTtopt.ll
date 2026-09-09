Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTtopt?download=true
inline.NumInlined: 1562
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Ttopt10TruthTable8BDDBuildEv:bb.a
  %.04 = phi i32 [ %i.dh, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.04) #22
  %i.dh = add nuw nsw i32 %.04, 1                 ; 2 uses
  %i.di = load i32, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt10TruthTable10BDDRebuildEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.h = add nsw i32 %1, 1
  %i.i = sext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %.not.i.i26 = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i26, label %_ZNSt6vectorIiSaIiEE5clearEv.exit27, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.k, ptr %i.l, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit27

_ZNSt6vectorIiSaIiEE5clearEv.exit27:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.c
  %i.n = add nsw i32 %1, 2                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.q = sext i32 %i.n to i64
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %.preheader, label %bb.d

.loopexit.1:                                      ; preds = %.lr.ph.1, %_ZNSt6vectorIiSaIiEE5clearEv.exit29.1, %.preheader.1, %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !94   ; 3 uses
  %i.u = add nsw i32 %i.t, -2
  %i.v = icmp slt i32 %1, %i.u
  br i1 %i.v, label %bb.i, label %thread-pre-split

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit27
  %i.w = load i32, ptr %i.p, align 4, !tbaa !95
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02145 = phi i32 [ %i.ac, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.02145, i32 noundef 0) #22 ; 0 uses
  %i.ac = add nuw nsw i32 %.02145, 1              ; 2 uses
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !95
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !204

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit27
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.ag = getelementptr [24 x i8], ptr %i.af, i64 %i.b ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 -16    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86
  %.not.i.i28 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i28, label %_ZNSt6vectorIiSaIiEE5clearEv.exit29, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit29

_ZNSt6vectorIiSaIiEE5clearEv.exit29:              ; preds = %bb.d, %bb.e
  %i.al = load ptr, ptr %0, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_ZNSt6vectorIiSaIiEE5clearEv.exit29
  %indvars.iv.next = add nsw i64 %i.b, 1          ; 4 uses
  %i.ao = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.ao, label %bb.f, label %.loopexit.1

bb.f:                                             ; preds = %.loopexit
  %i.ap = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ap, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.ar = getelementptr [24 x i8], ptr %i.aq, i64 %indvars.iv.next ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -16    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86
  %.not.i.i28.1 = icmp eq ptr %i.av, %i.at
  br i1 %.not.i.i28.1, label %_ZNSt6vectorIiSaIiEE5clearEv.exit29.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.at, ptr %i.au, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit29.1

_ZNSt6vectorIiSaIiEE5clearEv.exit29.1:            ; preds = %bb.h, %bb.g
  %i.aw = load ptr, ptr %0, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = trunc nsw i64 %indvars.iv.next to i32
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.az) #22
  br label %.loopexit.1

.preheader.1:                                     ; preds = %bb.f
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !95
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.preheader.1, %.lr.ph.1
  %.02145.1 = phi i32 [ %i.bg, %.lr.ph.1 ], [ 0, %.preheader.1 ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.02145.1, i32 noundef 0) #22 ; 0 uses
  %i.bg = add nuw nsw i32 %.02145.1, 1            ; 2 uses
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !95
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !204

bb.i:                                             ; preds = %.loopexit.1
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.i ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !87 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.not.i.i30 = icmp eq ptr %i.bn, %i.bl
  br i1 %.not.i.i30, label %_ZNSt6vectorIiSaIiEE5clearEv.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit31

_ZNSt6vectorIiSaIiEE5clearEv.exit31:              ; preds = %bb.i, %bb.j
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !86
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !87 ; 2 uses
  %.not49 = icmp eq ptr %i.br, %i.bs
  br i1 %.not49, label %thread-pre-split, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit31
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph48, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bu = phi ptr [ %i.bo, %.lr.ph48 ], [ %i.eo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.bv = phi ptr [ %i.bs, %.lr.ph48 ], [ %i.eu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bw = phi i64 [ 0, %.lr.ph48 ], [ %i.eq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.047 = phi i32 [ 0, %.lr.ph48 ], [ %i.ep, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !80 ; 3 uses
  %i.bz = shl i32 %i.by, 1                        ; 4 uses
  %i.ca = or disjoint i32 %i.bz, 1                ; 3 uses
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !94
  %i.cc = sub nsw i32 %i.cb, %i.n                 ; 6 uses
  %i.cd = icmp sgt i32 %i.cc, 6
  br i1 %i.cd, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k
  %i.ce = add nsw i32 %i.cc, -6                   ; 4 uses
  %.not44.i = icmp eq i32 %i.ce, 31
  br i1 %.not44.i, label %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = shl i32 %i.bz, %i.ce
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !84 ; 2 uses
  %i.ci = shl i32 %i.ca, %i.ce
  %i.cj = sext i32 %i.cg to i64
  %i.ck = sext i32 %i.ci to i64
  %i.cl = sext i32 %i.cf to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ch, i64 %i.cj
  %invariant.gep48.i = getelementptr [8 x i8], ptr %i.ch, i64 %i.ck
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cm = load i64, ptr %gep.i, align 8, !tbaa !82
  %gep49.i = getelementptr [8 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i
  %i.cn = load i64, ptr %gep49.i, align 8, !tbaa !82
  %i.co = icmp eq i64 %i.cm, %i.cn                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next.i, %i.cl
  %or.cond.i = select i1 %i.cp, i1 %i.co, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread, !llvm.loop !205

.split:                                           ; preds = %bb.k
  %i.cq = sub nsw i32 6, %i.cc                    ; 3 uses
  %i.cr = ashr i32 %i.bz, %i.cq
  %i.cs = shl nuw i32 1, %i.cq                    ; 2 uses
  %i.ct = srem i32 %i.bz, %i.cs
  %i.cu = shl i32 %i.ct, %i.cc
  %i.cv = sext i32 %i.cr to i64
  %i.cw = load ptr, ptr %i.bt, align 8, !tbaa !84 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !82
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = lshr i64 %i.cy, %i.cz
  %i.db = sext i32 %i.cc to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !82
  %i.de = ashr i32 %i.ca, %i.cq
  %i.df = srem i32 %i.ca, %i.cs
  %i.dg = shl i32 %i.df, %i.cc
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !82
  %i.dk = zext nneg i32 %i.dg to i64
  %i.dl = lshr i64 %i.dj, %i.dk
  %i.dm = xor i64 %i.dl, %i.da
  %i.dn = and i64 %i.dm, %i.dd
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread:      ; preds = %bb.m
  br i1 %i.co, label %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread: ; preds = %.split, %bb.l, %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.i ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !86 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !90
  %.not.i32 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread
  store i32 %i.by, ptr %i.dr, align 4, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread.thread
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !87 ; 4 uses
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #26 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store i32 %i.by, ptr %i.eh, align 4, !tbaa !80
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ek = load ptr, ptr %i.ds, align 8, !tbaa !90
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.eg, ptr %i.dp, align 8, !tbaa !87
  store ptr %i.ej, ptr %i.dq, align 8, !tbaa !86
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.en, ptr %i.ds, align 8, !tbaa !90
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.split, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n, %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread
  %i.eo = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bu, %bb.n ], [ %i.bu, %_ZN5Ttopt10TruthTable4IsEqEiiib.exit.thread ], [ %i.bu, %.split ] ; 2 uses
  %i.ep = add i32 %.047, 1                        ; 2 uses
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !87 ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = icmp ugt i64 %i.ey, %i.eq
  br i1 %i.ez, label %bb.k, label %thread-pre-split.loopexit, !llvm.loop !206

thread-pre-split.loopexit:                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pr.pre = load i32, ptr %i.s, align 8, !tbaa !94
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit31, %thread-pre-split.loopexit, %.loopexit.1
  %i.fa = phi i32 [ %i.t, %.loopexit.1 ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %i.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit31 ] ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i33, label %_ZN5Ttopt10TruthTable12BDDNodeCountEv.exit

.lr.ph.i33:                                       ; preds = %thread-pre-split
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !99  ; 5 uses
  %i.fd = load ptr, ptr %i.o, align 8, !tbaa !99  ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.fa to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fa, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i33
  %i.fe = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = select i1 %i.ff, i64 4, i64 %i.fe
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.fg  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ <i32 1, i32 0>, %vector.ph ], [ %i.ia, %vector.body ]
  %vec.phi71 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ib, %vector.body ]
  %i.fh = or disjoint i64 %index, 1               ; 2 uses
  %i.fi = or disjoint i64 %index, 2               ; 2 uses
  %i.fj = or disjoint i64 %index, 3               ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fh ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fi ; 2 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fj ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !86
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !86
  %i.fu = insertelement <2 x ptr> poison, ptr %i.fs, i64 0
  %i.fv = insertelement <2 x ptr> %i.fu, ptr %i.ft, i64 1
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !86
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !86
  %i.fy = insertelement <2 x ptr> poison, ptr %i.fw, i64 0
  %i.fz = insertelement <2 x ptr> %i.fy, ptr %i.fx, i64 1
  %i.ga = load ptr, ptr %i.fk, align 8, !tbaa !87
  %i.gb = load ptr, ptr %i.fl, align 8, !tbaa !87
  %i.gc = insertelement <2 x ptr> poison, ptr %i.ga, i64 0
  %i.gd = insertelement <2 x ptr> %i.gc, ptr %i.gb, i64 1
  %i.ge = load ptr, ptr %i.fm, align 8, !tbaa !87
  %i.gf = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.gg = insertelement <2 x ptr> poison, ptr %i.ge, i64 0
  %i.gh = insertelement <2 x ptr> %i.gg, ptr %i.gf, i64 1
  %i.gi = ptrtoint <2 x ptr> %i.fv to <2 x i64>
  %i.gj = ptrtoint <2 x ptr> %i.fz to <2 x i64>
  %i.gk = ptrtoint <2 x ptr> %i.gd to <2 x i64>
  %i.gl = ptrtoint <2 x ptr> %i.gh to <2 x i64>
  %i.gm = sub <2 x i64> %i.gi, %i.gk
  %i.gn = sub <2 x i64> %i.gj, %i.gl
  %i.go = lshr exact <2 x i64> %i.gm, splat (i64 2)
  %i.gp = lshr exact <2 x i64> %i.gn, splat (i64 2)
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fh ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fi ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fj ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !86
  %i.gz = load ptr, ptr %i.gv, align 8, !tbaa !86
  %i.ha = insertelement <2 x ptr> poison, ptr %i.gy, i64 0
  %i.hb = insertelement <2 x ptr> %i.ha, ptr %i.gz, i64 1
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !86
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !86
  %i.he = insertelement <2 x ptr> poison, ptr %i.hc, i64 0
  %i.hf = insertelement <2 x ptr> %i.he, ptr %i.hd, i64 1
  %i.hg = load ptr, ptr %i.gq, align 8, !tbaa !87
  %i.hh = load ptr, ptr %i.gr, align 8, !tbaa !87
  %i.hi = insertelement <2 x ptr> poison, ptr %i.hg, i64 0
  %i.hj = insertelement <2 x ptr> %i.hi, ptr %i.hh, i64 1
  %i.hk = load ptr, ptr %i.gs, align 8, !tbaa !87
  %i.hl = load ptr, ptr %i.gt, align 8, !tbaa !87
  %i.hm = insertelement <2 x ptr> poison, ptr %i.hk, i64 0
  %i.hn = insertelement <2 x ptr> %i.hm, ptr %i.hl, i64 1
  %i.ho = ptrtoint <2 x ptr> %i.hb to <2 x i64>
  %i.hp = ptrtoint <2 x ptr> %i.hf to <2 x i64>
  %i.hq = ptrtoint <2 x ptr> %i.hj to <2 x i64>
  %i.hr = ptrtoint <2 x ptr> %i.hn to <2 x i64>
  %i.hs = sub <2 x i64> %i.ho, %i.hq
  %i.ht = sub <2 x i64> %i.hp, %i.hr
  %i.hu = lshr exact <2 x i64> %i.hs, splat (i64 2)
  %i.hv = lshr exact <2 x i64> %i.ht, splat (i64 2)
  %i.hw = sub nsw <2 x i64> %i.go, %i.hu
  %i.hx = sub nsw <2 x i64> %i.gp, %i.hv
  %i.hy = trunc <2 x i64> %i.hw to <2 x i32>
  %i.hz = trunc <2 x i64> %i.hx to <2 x i32>
  %i.ia = add <2 x i32> %vec.phi, %i.hy           ; 2 uses
  %i.ib = add <2 x i32> %vec.phi71, %i.hz         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ib, %i.ia
  %i.id = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i33, %middle.block
  %indvars.iv.i34.ph = phi i64 [ 0, %.lr.ph.i33 ], [ %n.vec, %middle.block ]
  %.056.i.ph = phi i32 [ 1, %.lr.ph.i33 ], [ %i.id, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i35, %scalar.ph ], [ %indvars.iv.i34.ph, %scalar.ph.preheader ] ; 3 uses
  %.056.i = phi i32 [ %i.iw, %scalar.ph ], [ %.056.i.ph, %scalar.ph.preheader ]
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.i34 ; 2 uses
end_hunk_0
