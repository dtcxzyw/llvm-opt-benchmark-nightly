Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/ternary?download=true
inline.NumInlined: 260
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal21hyper_ternary_resolveEPNS_6ClauseEiS2_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !202
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !161  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx60 = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx60
  %.not3656 = icmp eq i32 %i.n, 0
  br i1 %.not3656, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge
  %i.q = sub nsw i32 0, %2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.03155 = phi ptr [ %i.d, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.u = load i32, ptr %.03155, align 4, !tbaa !161 ; 2 uses
  %.not37 = icmp eq i32 %i.u, %2
  br i1 %.not37, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !162  ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !203
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.u, ptr %i.v, align 4, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.x, ptr %i.j, align 8, !tbaa !162
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !163  ; 4 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #11 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %i.al = load i32, ptr %.03155, align 4, !tbaa !161
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !161
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.not.i17.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !163
  store ptr %i.an, ptr %i.j, align 8, !tbaa !162
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !203
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.03155, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %.lr.ph59, %bb.s
  %.03057 = phi ptr [ %i.l, %.lr.ph59 ], [ %i.bv, %bb.s ] ; 3 uses
  %i.aq = load i32, ptr %.03057, align 4, !tbaa !161 ; 6 uses
  %i.ar = icmp eq i32 %i.aq, %i.q
  br i1 %i.ar, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !163 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !161 ; 2 uses
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = sub nsw i32 0, %i.at
  %i.aw = icmp eq i32 %i.aq, %i.av
  br i1 %i.aw, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !161 ; 2 uses
  %i.az = icmp eq i32 %i.aq, %i.ay
  br i1 %i.az, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = sub nsw i32 0, %i.ay
  %i.bb = icmp eq i32 %i.aq, %i.ba
  br i1 %i.bb, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !162 ; 4 uses
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !203
  %.not.i38 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.be, ptr %i.s, align 8, !tbaa !162
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.as to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775804
  br i1 %i.bi, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i39

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i39: ; preds = %bb.p
  %i.bj = ashr exact i64 %i.bh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i40, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 2305843009213693951)
  %i.bn = select i1 %i.bl, i64 2305843009213693951, i64 %i.bm ; 3 uses
  %.not.i.i.i41 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i41)
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #11 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
  %i.br = load i32, ptr %.03057, align 4, !tbaa !161
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !161
  %i.bs = icmp sgt i64 %i.bh, 0
  br i1 %i.bs, label %bb.r, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i44

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %i.as, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i44

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i44: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #12
  store ptr %i.bp, ptr %i.r, align 8, !tbaa !163
  store ptr %i.bt, ptr %i.s, align 8, !tbaa !162
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bu, ptr %i.t, align 8, !tbaa !203
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.j, %bb.l, %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i44
  %i.bv = getelementptr inbounds nuw i8, ptr %.03057, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %i.bv, %i.p
  br i1 %.not36, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45, label %bb.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit45:        ; preds = %bb.s, %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !162
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !163 ; 6 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 2                 ; 2 uses
  %i.ce = icmp ugt i64 %i.cd, 3
  br i1 %i.ce, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45
  switch i64 %i.cd, label %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52 [
    i64 2, label %bb.u
    i64 3, label %._crit_edge62
  ]

._crit_edge62:                                    ; preds = %bb.t
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !161
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.pre63 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !161
  br label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !161 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !161 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cj = tail call noundef i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cf, i32 1)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !12 ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !16
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !17
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = tail call noundef i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cv = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.ch, i32 1)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !17
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ult i64 %i.ct, %i.dd
  %i.df = select i1 %i.de, i32 %i.cf, i32 %i.ch   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !159
  %i.di = tail call noundef i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.di, i32 %i.df, i32 1)
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !16 ; 3 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !17 ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 3
  %i.dt = trunc i64 %i.ds to i32
  %i.du = icmp slt i32 %i.dh, %i.dt
  br i1 %i.du, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %.not3233.i = icmp eq ptr %i.do, %i.dn
  br i1 %.not3233.i, label %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.z
  %.sroa.028.034.i = phi ptr [ %i.ei, %bb.z ], [ %i.do, %.preheader.i ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.028.034.i, align 8, !tbaa !160 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !161
  %.not.i46 = icmp eq i32 %i.dx, 2
  br i1 %.not.i46, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !161 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, %i.cf
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !161
  %i.ed = icmp eq i32 %i.ec, %i.ch
  br i1 %i.ed, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ee = icmp eq i32 %i.dz, %i.ch
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !161
  %i.eh = icmp eq i32 %i.eg, %i.cf
  br i1 %i.eh, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.028.034.i, i64 8 ; 2 uses
  %.not32.i = icmp eq ptr %i.ei, %i.dn
  br i1 %.not32.i, label %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit, label %.lr.ph.i

_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit: ; preds = %bb.z
  %4 = icmp eq i64 %i.cc, 12
  br i1 %4, label %bb.aa, label %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52

bb.aa:                                            ; preds = %._crit_edge62, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit
  %5 = phi i32 [ %.pre63, %._crit_edge62 ], [ %i.ch, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit ]
  %6 = phi i32 [ %.pre, %._crit_edge62 ], [ %i.cf, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !161
  %i.el = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal27ternary_find_ternary_clauseEiii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %6, i32 noundef %5, i32 noundef %i.ek)
  br i1 %i.el, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49, label %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52

_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52: ; preds = %.preheader.i, %bb.t, %bb.aa, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49

_ZNSt6vectorIiSaIiEE9push_backERKi.exit45.thread49: ; preds = %bb.k, %bb.m, %bb.y, %bb.w, %bb.u, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45, %bb.aa
  %.4 = phi i1 [ false, %bb.aa ], [ true, %_ZN7CaDiCaL8Internal26ternary_find_binary_clauseEii.exit.thread52 ], [ false, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit45 ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.m ], [ false, %bb.k ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal11ternary_litEiRlS1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.c = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %1, i32 1)
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  %.not112134 = icmp eq ptr %i.g, %i.i
  br i1 %.not112134, label %_ZNSt6vectorIiSaIiEE5clearEv.exit95, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.k = sub nsw i32 0, %1
  %i.l = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.k, i32 1)
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5008 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5000 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph137, %.loopexit
  %.sroa.0102.0135 = phi ptr [ %i.g, %.lr.ph137 ], [ %i.gh, %.loopexit ] ; 6 uses
  %i.w = load i64, ptr %3, align 8, !tbaa !165
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %_ZNSt6vectorIiSaIiEE5clearEv.exit95, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %.sroa.0102.0135, align 8, !tbaa !160 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 16
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !161
  %.not70 = icmp eq i32 %i.ad, 3
  br i1 %.not70, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %2, align 8, !tbaa !165   ; 2 uses
  %i.af = add nsw i64 %i.ae, -1
  store i64 %i.af, ptr %2, align 8, !tbaa !165
  %i.ag = icmp slt i64 %i.ae, 1
  br i1 %i.ag, label %_ZNSt6vectorIiSaIiEE5clearEv.exit95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !166 ; 3 uses
  %.062119.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = load i32, ptr %.062119.ptr, align 8, !tbaa !161
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !167
  %.not72 = icmp eq i8 %i.al, 0
  br i1 %.not72, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %.062119.ptr.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.am = load i32, ptr %.062119.ptr.1, align 4, !tbaa !161
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !167
  %.not72.1 = icmp eq i8 %i.ap, 0
  br i1 %.not72.1, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.062119.ptr.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aq = load i32, ptr %.062119.ptr.2, align 8, !tbaa !161
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !167
  %.not72.2 = icmp eq i8 %i.at, 0
  br i1 %.not72.2, label %.critedge.loopexit, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.g
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.m ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !164 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !164 ; 2 uses
  %.not113129 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not113129, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.critedge.loopexit, %._crit_edge.thread
  %.3131 = phi i1 [ %.7.ph, %._crit_edge.thread ], [ false, %.critedge.loopexit ] ; 3 uses
  %.sroa.098.0130 = phi ptr [ %i.gg, %._crit_edge.thread ], [ %i.aw, %.critedge.loopexit ] ; 5 uses
  %i.az = load i64, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph132
  %i.bb = load ptr, ptr %.sroa.098.0130, align 8, !tbaa !160 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = and i32 %i.bd, 16
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !161
  %.not74 = icmp eq i32 %i.bg, 3
  br i1 %.not74, label %.lr.ph122, label %._crit_edge.thread

.lr.ph122:                                        ; preds = %bb.i
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !166 ; 3 uses
  %.061121.ptr = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load i32, ptr %.061121.ptr, align 8, !tbaa !161
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !167
  %.not76 = icmp eq i8 %i.bl, 0
  br i1 %.not76, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %.lr.ph122
  %.061121.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bm = load i32, ptr %.061121.ptr.1, align 4, !tbaa !161
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bh, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !167
  %.not76.1 = icmp eq i8 %i.bp, 0
  br i1 %.not76.1, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %.061121.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bq = load i32, ptr %.061121.ptr.2, align 8, !tbaa !161
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bh, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !167
  %.not76.2 = icmp ne i8 %i.bt, 0
  %brmerge = select i1 %.not76.2, i1 true, i1 %.3131
  br i1 %brmerge, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i64 %i.az, -1
  store i64 %i.bu, ptr %3, align 8, !tbaa !165
  %i.bv = load ptr, ptr %.sroa.0102.0135, align 8, !tbaa !160
  %i.bw = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal21hyper_ternary_resolveEPNS_6ClauseEiS2_(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.bv, i32 noundef %1, ptr noundef nonnull %i.bb)
  br i1 %i.bw, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !163
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 12
  br i1 %i.cc, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %.sroa.0102.0135, align 8, !tbaa !160
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, 2048
  %.not77 = icmp eq i32 %i.cg, 0
  br i1 %.not77, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = load ptr, ptr %.sroa.098.0130, align 8, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = and i32 %i.cj, 2048
  %i.cl = icmp ne i32 %i.ck, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cm = phi i1 [ true, %bb.m ], [ false, %bb.n ], [ %i.cl, %bb.o ] ; 2 uses
  %i.cn = load i8, ptr %i.p, align 8, !tbaa !204, !range !168, !noundef !169
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %_ZNSt6vectorImSaImEE9push_backERKm.exit87

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %.sroa.0102.0135, align 8, !tbaa !160 ; 2 uses
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !205 ; 4 uses
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !206 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !165
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !165
end_hunk_0
