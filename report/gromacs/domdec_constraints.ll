Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_constraints?download=true
inline.NumInlined: 1057
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z25dd_make_local_constraintsP12gmx_domdec_tiRK10gmx_mtop_tN3gmx8ArrayRefIKiEEPNS4_11ConstraintsEiRNS4_16EnumerationArrayI19InteractionFunction15InteractionListLSB_95EEE:bb.a
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !102
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !251

bb.l:                                             ; preds = %._crit_edge
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !20
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 2
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = sdiv i32 %i.cw, 4
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.4, i32 noundef %i.cx) #8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %.pre130 = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN15InteractionList5clearEv.exit68.thread
  %i.cz = phi ptr [ %.pre130, %bb.m ], [ %0, %_ZN15InteractionList5clearEv.exit68.thread ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 880
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15 ; 2 uses
  %.not83 = icmp eq ptr %i.db, null
  br i1 %.not83, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 872
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28
  %i.dh = call noundef i32 @_Z26setup_specat_communicationP12gmx_domdec_tPSt6vectorIiSaIiEEP24gmx_domdec_specat_comm_tPN3gmx9HashedMapIiEEiiPKcSC_(ptr noundef nonnull %i.cz, ptr noundef %i.dc, ptr noundef nonnull %i.db, ptr noundef %i.dg, i32 noundef %1, i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) ; 3 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 872
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28 ; 4 uses
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2000), align 8, !tbaa !109 ; 2 uses
  %i.do = add nuw i32 %i.dn, 1
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !77  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !21
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = lshr exact i64 %i.dv, 2
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.o
  %.not6588 = icmp slt i32 %i.dn, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  br i1 %.not6588, label %._crit_edge96, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.lr.ph95
  %i.ea = zext i32 %i.do to i64                   ; 2 uses
  br label %.lr.ph91

._crit_edge96:                                    ; preds = %._crit_edge92, %.lr.ph95, %bb.o
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !109 ; 2 uses
  %i.ec = add nuw i32 %i.eb, 1
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !21
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = lshr exact i64 %i.ej, 2
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %._crit_edge96
  %.not64100 = icmp slt i32 %i.eb, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  br i1 %.not64100, label %.loopexit, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %.lr.ph107
  %i.eo = zext i32 %i.ec to i64                   ; 2 uses
  br label %.lr.ph103

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %._crit_edge92
  %indvars.iv115 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvars.iv.next116, %._crit_edge92 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv115
  br label %bb.p

._crit_edge92:                                    ; preds = %bb.r
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, %i.ea ; 2 uses
  %i.eq = trunc nuw i64 %indvars.iv.next116 to i32
  %i.er = icmp slt i32 %i.eq, %i.dx
  br i1 %i.er, label %.lr.ph91, label %._crit_edge96, !llvm.loop !252

bb.p:                                             ; preds = %.lr.ph91, %bb.r
  %indvars.iv112 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next113, %bb.r ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv112 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !44 ; 2 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ev = xor i32 %i.et, -1                       ; 3 uses
  %i.ew = load i32, ptr %i.dz, align 8, !tbaa !40
  %i.ex = and i32 %i.ew, %i.ev
  %i.ey = load ptr, ptr %i.dm, align 8, !tbaa !43 ; 4 uses
  %i.ez = zext nneg i32 %i.ex to i64              ; 3 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !38
  %i.fc = icmp eq i32 %i.fb, %i.ev
  br i1 %i.fc, label %_ZN3gmx9HashedMapIiE4findEi.exit, label %.lr.ph87

_ZN3gmx9HashedMapIiE4findEi.exit:                 ; preds = %.lr.ph87, %bb.q
  %i.fd = phi i64 [ %i.ez, %bb.q ], [ %i.fm, %.lr.ph87 ]
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !44
  store i32 %i.fg, ptr %i.es, align 4, !tbaa !44
  br label %bb.r

.lr.ph87:                                         ; preds = %bb.q, %.lr.ph87
  %i.fh = phi i64 [ %i.fm, %.lr.ph87 ], [ %i.ez, %bb.q ]
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !39 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = zext nneg i32 %i.fk to i64              ; 3 uses
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !38
  %i.fp = icmp eq i32 %i.fo, %i.ev
  br i1 %i.fp, label %_ZN3gmx9HashedMapIiE4findEi.exit, label %.lr.ph87

bb.r:                                             ; preds = %bb.p, %_ZN3gmx9HashedMapIiE4findEi.exit
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %i.ea
  br i1 %exitcond.not, label %._crit_edge92, label %bb.p, !llvm.loop !253

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %._crit_edge104
  %indvars.iv123 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next124, %._crit_edge104 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv123
  br label %bb.s

._crit_edge104:                                   ; preds = %bb.u
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, %i.eo ; 2 uses
  %i.fr = trunc nuw i64 %indvars.iv.next124 to i32
  %i.fs = icmp slt i32 %i.fr, %i.el
  br i1 %i.fs, label %.lr.ph103, label %.loopexit, !llvm.loop !254

bb.s:                                             ; preds = %.lr.ph103, %bb.u
  %indvars.iv118 = phi i64 [ 1, %.lr.ph103 ], [ %indvars.iv.next119, %bb.u ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv118 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !44 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fw = xor i32 %i.fu, -1                       ; 3 uses
  %i.fx = load i32, ptr %i.en, align 8, !tbaa !40
  %i.fy = and i32 %i.fx, %i.fw
  %i.fz = load ptr, ptr %i.dm, align 8, !tbaa !43 ; 4 uses
  %i.ga = zext nneg i32 %i.fy to i64              ; 3 uses
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.gd = icmp eq i32 %i.gc, %i.fw
  br i1 %i.gd, label %_ZN3gmx9HashedMapIiE4findEi.exit73, label %.lr.ph98

_ZN3gmx9HashedMapIiE4findEi.exit73:               ; preds = %.lr.ph98, %bb.t
  %i.ge = phi i64 [ %i.ga, %bb.t ], [ %i.gn, %.lr.ph98 ]
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !44
  store i32 %i.gh, ptr %i.ft, align 4, !tbaa !44
  br label %bb.u

.lr.ph98:                                         ; preds = %bb.t, %.lr.ph98
  %i.gi = phi i64 [ %i.gn, %.lr.ph98 ], [ %i.ga, %bb.t ]
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !39 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %i.gl to i64              ; 3 uses
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !38
  %i.gq = icmp eq i32 %i.gp, %i.fw
  br i1 %i.gq, label %_ZN3gmx9HashedMapIiE4findEi.exit73, label %.lr.ph98

bb.u:                                             ; preds = %bb.s, %_ZN3gmx9HashedMapIiE4findEi.exit73
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %i.eo
  br i1 %exitcond122.not, label %._crit_edge104, label %bb.s, !llvm.loop !255

.loopexit:                                        ; preds = %._crit_edge104, %._crit_edge96, %.lr.ph107, %bb.n
  %.054 = phi i32 [ %1, %bb.n ], [ %i.dh, %.lr.ph107 ], [ %i.dh, %._crit_edge96 ], [ %i.dh, %._crit_edge104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.054
}

declare { ptr, ptr } @_ZNK3gmx11Constraints24atom2constraints_moltypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare { ptr, ptr } @_ZNK3gmx11Constraints19atom2settle_moltypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20atoms_to_constraintsP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKNS4_11ListOfListsIiEEEEiP15InteractionListPSt6vectorIiSaIiEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.gmx::ArrayRef.96", align 8  ; 3 uses
  %8 = alloca %"class.gmx::ArrayRef.96", align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %.not.i.i76 = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i76, label %_ZNSt6vectorIiSaIiEE5clearEv.exit78, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i77

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i77:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.k, ptr %i.l, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit78

_ZNSt6vectorIiSaIiEE5clearEv.exit78:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !188  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph147, label %._crit_edge

.lr.ph147:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit78
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit130, %_ZNSt6vectorIiSaIiEE5clearEv.exit78
  %.069.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit78 ], [ %.3, %.loopexit130 ] ; 2 uses
  %i.af = load ptr, ptr @debug, align 8, !tbaa !104 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.ak, label %bb.ah

bb.b:                                             ; preds = %.lr.ph147, %.loopexit130
  %i.ag = phi i32 [ %i.o, %.lr.ph147 ], [ %i.hv, %.loopexit130 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next, %.loopexit130 ] ; 4 uses
  %.069146 = phi i32 [ 0, %.lr.ph147 ], [ %.3, %.loopexit130 ] ; 3 uses
  %.0124143 = phi i32 [ 0, %.lr.ph147 ], [ %.1125, %.loopexit130 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !44
  %i.aj = and i32 %i.ai, 2048
  %.not74 = icmp eq i32 %i.aj, 0
  br i1 %.not74, label %.loopexit130, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !189
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44 ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !192
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !193 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 56
  %i.at = trunc i64 %i.as to i32
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !196
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.2126 = phi i32 [ %.0124143, %bb.c ], [ %i.be, %bb.f ] ; 5 uses
  %.026.i = phi i32 [ -1, %bb.c ], [ %.127.i, %bb.f ]
  %.0.i = phi i32 [ %i.at, %bb.c ], [ %.1.i, %bb.f ]
  %i.av = sext i32 %.2126 to i64                  ; 4 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 2 uses
  %i.az = icmp slt i32 %i.am, %i.ay
  br i1 %i.az, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !199
  %.not.i = icmp slt i32 %i.am, %i.bb
  br i1 %.not.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.127.i = phi i32 [ %.026.i, %bb.d ], [ %.2126, %bb.e ] ; 2 uses
  %.1.i = phi i32 [ %.2126, %bb.d ], [ %.0.i, %bb.e ] ; 2 uses
  %i.bc = add nsw i32 %.127.i, 1
  %i.bd = add i32 %i.bc, %.1.i
  %i.be = ashr i32 %i.bd, 1
  br label %bb.d, !llvm.loop !0

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit: ; preds = %bb.e
  %i.bf = sub nsw i32 %i.am, %i.ay                ; 2 uses
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !200 ; 3 uses
  %i.bh = sdiv i32 %i.bf, %i.bg                   ; 2 uses
  %i.bi = mul nsw i32 %i.bg, %i.bh                ; 0 uses
  %.recomposed = srem i32 %i.bf, %i.bg            ; 4 uses
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.av
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !206
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !209
  %i.bn = getelementptr inbounds nuw [2408 x i8], ptr %i.bm, i64 %i.bl ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1568
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1576
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 1592
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 1600
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.av
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.av
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = mul nsw i32 %i.cj, %i.bh
  %i.cl = add nsw i32 %i.ck, %i.cg                ; 2 uses
  %i.cm = sub nsw i32 %i.am, %.recomposed         ; 2 uses
  %i.cn = getelementptr inbounds [48 x i8], ptr %3, i64 %i.bl ; 3 uses
  %i.co = sext i32 %.recomposed to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20 ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.co ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !44 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cw
  %.not129140 = icmp eq i32 %i.ct, %i.cv
  br i1 %.not129140, label %.loopexit130, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cy
  %i.da = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.db = sub nsw i64 0, %i.da
  %invariant.gep = getelementptr [4 x i8], ptr %i.bx, i64 %i.db
  %i.dc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ag
  %.1142 = phi i32 [ %.069146, %.lr.ph ], [ %.2, %bb.ag ] ; 3 uses
  %.sroa.099.0141 = phi ptr [ %i.cz, %.lr.ph ], [ %i.hu, %bb.ag ] ; 2 uses
  %i.dd = load i32, ptr %.sroa.099.0141, align 4, !tbaa !44 ; 3 uses
  %i.de = mul nsw i32 %i.dd, 3
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp sgt i64 %i.da, %i.df
  %.0.i80.v = select i1 %i.dg, ptr %i.bp, ptr %invariant.gep
  %.0.i80 = getelementptr [4 x i8], ptr %.0.i80.v, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i80, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !44 ; 2 uses
  %i.dj = icmp eq i32 %.recomposed, %i.di
  br i1 %i.dj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
