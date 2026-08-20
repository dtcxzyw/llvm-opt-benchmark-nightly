inline.NumInlined: 570
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL8Internal14block_scheduleERNS_7BlockerE:bb.a
  %i.aa = and i8 %i.z, 3
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = and i32 %i.w, %i.ab
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.e, label %_ZN7CaDiCaL8Internal9mark_skipEi.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i32 %i.w to i8
  %i.ae = or i8 %i.z, %i.ad
  %i.af = shl nuw i8 %i.ae, 2
  %i.ag = and i8 %i.af, 12
  %i.ah = and i8 %i.y, -13
  %i.ai = or disjoint i8 %i.ag, %i.ah
  store i8 %i.ai, ptr %i.x, align 1
  br label %_ZN7CaDiCaL8Internal9mark_skipEi.exit

_ZN7CaDiCaL8Internal9mark_skipEi.exit:            ; preds = %.lr.ph, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.04683, i64 4 ; 2 uses
  %.not52 = icmp eq ptr %i.aj, %i.q
  br i1 %.not52, label %.loopexit81, label %.lr.ph

.loopexit81:                                      ; preds = %_ZN7CaDiCaL8Internal9mark_skipEi.exit, %bb.d, %bb.c, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.ak, %i.d
  br i1 %.not73, label %._crit_edge, label %bb.b

._crit_edge95:                                    ; preds = %.loopexit80, %bb.a, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7288
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !186, !nonnull !187, !align !188
  %i.an = load i32, ptr %i.am, align 4, !tbaa !173 ; 2 uses
  %i.ao = xor i32 %i.an, -1
  %i.ap = lshr i32 %i.an, 31
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %.not7596 = icmp eq i32 %i.aq, -1
  br i1 %.not7596, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %._crit_edge95
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !185
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 904
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph94, %.loopexit80
  %.sroa.066.092 = phi ptr [ %.pre, %.lr.ph94 ], [ %i.ci, %.loopexit80 ] ; 4 uses
  %i.av = load ptr, ptr %.sroa.066.092, align 8, !tbaa !172 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 33280
  %or.cond53 = icmp eq i32 %i.ay, 0
  br i1 %or.cond53, label %bb.g, label %.loopexit80

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !173 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %.idx107 = shl nsw i64 %i.bc, 2
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %.idx107
  %.not4887 = icmp eq i32 %i.bb, 0
  br i1 %.not4887, label %.loopexit80, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.g, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.04588 = phi ptr [ %i.ch, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.az, %bb.g ] ; 2 uses
  %i.be = load i32, ptr %.04588, align 4, !tbaa !173 ; 2 uses
  %i.bf = tail call noundef i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.be, i32 1)
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !190
  %.not.i54 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph90
  %i.bo = load ptr, ptr %.sroa.066.092, align 8, !tbaa !172
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !172
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !189
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %.lr.ph90
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !191 ; 4 uses
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.j, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #12 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  %i.cd = load ptr, ptr %.sroa.066.092, align 8, !tbaa !172
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !172
  %i.ce = icmp sgt i64 %i.bt, 0
  br i1 %i.ce, label %bb.k, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !191
  store ptr %i.cf, ptr %i.bk, align 8, !tbaa !189
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cg, ptr %i.bm, align 8, !tbaa !190
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.04588, i64 4 ; 2 uses
  %.not48 = icmp eq ptr %i.ch, %i.bd
  br i1 %.not48, label %.loopexit80, label %.lr.ph90

.loopexit80:                                      ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.g, %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.ci, %.pre108
  br i1 %.not74, label %._crit_edge95, label %bb.f

._crit_edge100:                                   ; preds = %bb.o, %._crit_edge95
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !192, !nonnull !187, !align !188
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !173 ; 2 uses
  %.not76102 = icmp eq i32 %i.cl, 0
  br i1 %.not76102, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge100
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph99, %bb.o
  %.sroa.062.097 = phi i32 [ -1, %.lr.ph99 ], [ %i.dp, %bb.o ] ; 4 uses
  %i.cu = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.062.097, i1 true) ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [6 x i8], ptr %i.as, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 5
  %i.cy = load i8, ptr %i.cx, align 1
  %.mask.i.i = and i8 %i.cy, -32
  %i.cz = icmp eq i8 %.mask.i.i, 32
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %.sroa.062.097, i32 1)
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !189
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !191
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = load ptr, ptr %i.au, align 8, !tbaa !193
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.db
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !194
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.dn = xor i32 %.sroa.062.097, -1
  %i.do = lshr i32 %.sroa.062.097, 31
  %i.dp = add i32 %i.do, %i.dn                    ; 2 uses
  %.not75 = icmp eq i32 %i.dp, %i.aq
  br i1 %.not75, label %._crit_edge100, label %bb.m

._crit_edge106:                                   ; preds = %.loopexit, %._crit_edge100
  ret void

bb.p:                                             ; preds = %.lr.ph105, %.loopexit
  %.sroa.058.0103 = phi i32 [ 1, %.lr.ph105 ], [ %i.hw, %.loopexit ] ; 9 uses
  %i.dq = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.058.0103, i1 true) ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64              ; 4 uses
  %i.ds = load ptr, ptr %i.cm, align 8, !tbaa !185 ; 4 uses
  %i.dt = getelementptr inbounds nuw [6 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 5
  %i.dv = load i8, ptr %i.du, align 1
  %.mask.i.i55 = and i8 %i.dv, -32
  %i.dw = icmp eq i8 %.mask.i.i55, 32
  br i1 %i.dw, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.dx = load ptr, ptr %i.co, align 8, !tbaa !195
  %i.dy = load ptr, ptr %i.cn, align 8, !tbaa !196 ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 2
  %i.ed = icmp ugt i64 %i.ec, %i.dr
  br i1 %i.ed, label %.split, label %_ZN7CaDiCaL8Internal6frozenEi.exit.preheader

.split:                                           ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dr
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !173
  %.not77 = icmp eq i32 %i.ef, 0
  br i1 %.not77, label %_ZN7CaDiCaL8Internal6frozenEi.exit.preheader, label %.loopexit

_ZN7CaDiCaL8Internal6frozenEi.exit.preheader:     ; preds = %.split, %bb.q
  %i.eg = sub nsw i32 0, %.sroa.058.0103          ; 2 uses
  %i.eh = tail call i32 @llvm.abs.i32(i32 %.sroa.058.0103, i1 true) ; 2 uses
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [6 x i8], ptr %i.ds, i64 %i.ei
  %.lobit.i.i56 = lshr i32 %i.eg, 31
  %i.ek = add nuw nsw i32 %.lobit.i.i56, 1        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1             ; 3 uses
  %i.en = lshr i8 %i.em, 2
  %i.eo = and i8 %i.en, 3
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = and i32 %i.ek, %i.ep
  %.not78 = icmp eq i32 %i.eq, 0
  br i1 %.not78, label %bb.r, label %_ZN7CaDiCaL8Internal6frozenEi.exit

bb.r:                                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.preheader
  %i.er = and i8 %i.em, 3
  %i.es = zext nneg i8 %i.er to i32
  %i.et = and i32 %i.ek, %i.es
  %.not79 = icmp eq i32 %i.et, 0
  br i1 %.not79, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %2 = icmp slt i32 %.sroa.058.0103, 1
  %3 = select i1 %2, i8 -2, i8 -3
  %i.eu = and i8 %i.em, %3
  store i8 %i.eu, ptr %i.el, align 1
  %i.ev = tail call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eg, i32 1) ; 5 uses
  %i.ew = load ptr, ptr %i.cq, align 8, !tbaa !195 ; 4 uses
  %i.ex = load ptr, ptr %i.cp, align 8, !tbaa !196 ; 4 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 6 uses
  %i.fb = ashr exact i64 %i.fa, 2                 ; 4 uses
  %i.fc = load ptr, ptr %i.cr, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %i.ew, %i.fc
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !173
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.fd, ptr %i.cq, align 8, !tbaa !195
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i

bb.u:                                             ; preds = %bb.s
  %i.fe = icmp eq i64 %i.fa, 9223372036854775804
  br i1 %i.fe, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.ac, %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fb ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fb
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 2305843009213693951)
  %i.fi = select i1 %i.fg, i64 2305843009213693951, i64 %i.fh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #12 ; 4 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fa ; 2 uses
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !173
  %i.fm = icmp sgt i64 %i.fa, 0
  br i1 %i.fm, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %i.ex, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fk, ptr %i.cp, align 8, !tbaa !196
  store ptr %i.fn, ptr %i.cq, align 8, !tbaa !195
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  store ptr %i.fo, ptr %i.cr, align 8, !tbaa !197
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.t
  %i.fp = zext i32 %i.ev to i64                   ; 3 uses
  %i.fq = load ptr, ptr %i.ct, align 8, !tbaa !195 ; 2 uses
  %i.fr = load ptr, ptr %i.cs, align 8, !tbaa !196 ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2                 ; 2 uses
  %.not.i1.i = icmp ugt i64 %i.fv, %i.fp
  br i1 %.not.i1.i, label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i
  %i.fw = add nuw nsw i64 %i.fp, 1
  %i.fx = sub nuw nsw i64 %i.fw, %i.fv
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.fq, i64 noundef %i.fx, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i = load ptr, ptr %i.cs, align 8, !tbaa !196
  br label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit

_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i, %bb.y
  %i.fy = phi ptr [ %.pre.i.i, %bb.y ], [ %i.fr, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i ]
  %i.fz = trunc i64 %i.fb to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fp
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !173
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE2upEj(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i32 noundef %i.ev)
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i32 noundef %i.ev)
  %.pre109 = load ptr, ptr %i.cm, align 8, !tbaa !185
  br label %_ZN7CaDiCaL8Internal6frozenEi.exit

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.r, %_ZN7CaDiCaL8Internal6frozenEi.exit.preheader, %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit
  %i.gb = phi ptr [ %i.ds, %bb.r ], [ %i.ds, %_ZN7CaDiCaL8Internal6frozenEi.exit.preheader ], [ %.pre109, %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit ]
  %i.gc = getelementptr inbounds nuw [6 x i8], ptr %i.gb, i64 %i.dr
  %.lobit.i.i56.1 = lshr i32 %.sroa.058.0103, 31
  %i.gd = add nuw nsw i32 %.lobit.i.i56.1, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1             ; 3 uses
  %i.gg = lshr i8 %i.gf, 2
  %i.gh = and i8 %i.gg, 3
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = and i32 %i.gd, %i.gi
  %.not78.1 = icmp eq i32 %i.gj, 0
  br i1 %.not78.1, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.gk = and i8 %i.gf, 3
  %i.gl = zext nneg i8 %i.gk to i32
  %i.gm = and i32 %i.gd, %i.gl
  %.not79.1 = icmp eq i32 %i.gm, 0
  br i1 %.not79.1, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = icmp sgt i32 %.sroa.058.0103, -1
  %i.go = select i1 %i.gn, i8 -2, i8 -3
  %i.gp = and i8 %i.gf, %i.go
  store i8 %i.gp, ptr %i.ge, align 1
  %i.gq = tail call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %.sroa.058.0103, i32 1) ; 5 uses
  %i.gr = load ptr, ptr %i.cq, align 8, !tbaa !195 ; 4 uses
  %i.gs = load ptr, ptr %i.cp, align 8, !tbaa !196 ; 4 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 6 uses
  %i.gw = ashr exact i64 %i.gv, 2                 ; 4 uses
  %i.gx = load ptr, ptr %i.cr, align 8, !tbaa !197
  %.not.i.i.1 = icmp eq ptr %i.gr, %i.gx
  br i1 %.not.i.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !173
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store ptr %i.gy, ptr %i.cq, align 8, !tbaa !195
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1

bb.ac:                                            ; preds = %bb.aa
  %i.gz = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gz, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.ha = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.gw ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gw
  %i.hc = tail call i64 @llvm.umin.i64(i64 %i.ha, i64 2305843009213693951)
  %i.hd = select i1 %i.hb, i64 2305843009213693951, i64 %i.hc ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.hd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #12 ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.gv ; 2 uses
  store i32 %i.gq, ptr %i.hg, align 4, !tbaa !173
  %i.hh = icmp sgt i64 %i.gv, 0
  br i1 %i.hh, label %bb.ad, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.1

bb.ad:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hf, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.1

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.1: ; preds = %bb.ad, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %.not.i17.i.i.i.1 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i.i.1, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.1, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.1

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.1: ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.1
  store ptr %i.hf, ptr %i.cp, align 8, !tbaa !196
  store ptr %i.hi, ptr %i.cq, align 8, !tbaa !195
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hd
  store ptr %i.hj, ptr %i.cr, align 8, !tbaa !197
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1:      ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.1, %bb.ab
  %i.hk = zext i32 %i.gq to i64                   ; 3 uses
  %i.hl = load ptr, ptr %i.ct, align 8, !tbaa !195 ; 2 uses
  %i.hm = load ptr, ptr %i.cs, align 8, !tbaa !196 ; 2 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = ashr exact i64 %i.hp, 2                 ; 2 uses
  %.not.i1.i.1 = icmp ugt i64 %i.hq, %i.hk
  br i1 %.not.i1.i.1, label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit.1, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1
  %i.hr = add nuw nsw i64 %i.hk, 1
  %i.hs = sub nuw nsw i64 %i.hr, %i.hq
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.hl, i64 noundef %i.hs, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i.1 = load ptr, ptr %i.cs, align 8, !tbaa !196
  br label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit.1

_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit.1: ; preds = %bb.af, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1
  %i.ht = phi ptr [ %.pre.i.i.1, %bb.af ], [ %i.hm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.1 ]
  %i.hu = trunc i64 %i.gw to i32
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hk
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !173
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE2upEj(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i32 noundef %i.gq)
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i32 noundef %i.gq)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit, %bb.z, %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj.exit.1, %.split, %bb.p
  %i.hw = add i32 %.sroa.058.0103, 1
  %.not76 = icmp eq i32 %.sroa.058.0103, %i.cl
  br i1 %.not76, label %._crit_edge106, label %bb.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !196    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  %.not.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 4, !tbaa !173
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.j, ptr %i.a, align 8, !tbaa !195
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i, %i.g ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.g
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #12 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.f ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !173
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.not.i17.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !196
  store ptr %i.t, ptr %i.a, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.h, align 8, !tbaa !197
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.v = zext i32 %1 to i64                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !196  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %.not.i1 = icmp ugt i64 %i.ad, %i.v
  br i1 %.not.i1, label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE5indexEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ae = add nuw nsw i64 %i.v, 1
  %i.af = sub nuw nsw i64 %i.ae, %i.ad
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.y, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !196
  br label %_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE5indexEj.exit

_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE5indexEj.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.g
  %i.ag = phi ptr [ %.pre.i, %bb.g ], [ %i.z, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.ah = trunc i64 %i.g to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.v
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !173
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE2upEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  tail call void @_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal18block_pure_literalERNS_7BlockerEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 3 uses
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp ugt i64 %i.j, %i.b
  br i1 %i.k, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.m = load i32, ptr %i.l, align 4, !tbaa !173
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, label %bb.p

_ZN7CaDiCaL8Internal6frozenEi.exit.thread:        ; preds = %bb.a, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.o = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %2, i32 1)
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %i.s = sub nsw i32 0, %2
  %i.t = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %i.s, i32 1)
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6616 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !198
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !198
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !12   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not2526 = icmp eq ptr %i.z, %i.ab
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6608 ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre29 = load ptr, ptr %i.r, align 8, !tbaa !191
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread
  %i.ai = phi ptr [ %.pre29, %._crit_edge.loopexit ], [ %i.z, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !190 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %.not.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #13
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %._crit_edge, %bb.b, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !190 ; 2 uses
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !191 ; 4 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %.not.i17 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i17, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit19, label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %.not.i.i.i.i18 = icmp eq ptr %i.aq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i18, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #13
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit19

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit19: ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, %bb.d, %bb.e
  tail call void @_ZN7CaDiCaL8Internal9mark_pureEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %2) #10
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6608 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !199
  %i.aw = add nsw i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !199
  br label %bb.p

bb.f:                                             ; preds = %.lr.ph, %bb.o
end_hunk_0
