Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genion?download=true
inline.NumInlined: 841
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL9sort_ionsiiPKiN3gmx8ArrayRefIS_EEP7t_atomsPA3_fPPcS9_S9_S9_:bb.a
  %.0105135 = phi i32 [ %.1106, %.preheader ], [ %.0105135.ph, %.lr.ph137.split.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph137.split
  %i.dg = icmp sgt i32 %i.de, 0
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dh = add nsw i32 %.0105135, 1
  br label %.preheader

bb.h:                                             ; preds = %bb.f
  %i.di = add nsw i32 %.0103136, 1
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph137.split, %bb.h, %bb.g
  %.1106 = phi i32 [ %.0105135, %bb.h ], [ %i.dh, %bb.g ], [ %.0105135, %.lr.ph137.split ] ; 2 uses
  %.1104 = phi i32 [ %i.di, %bb.h ], [ %.0103136, %bb.g ], [ %.0103136, %.lr.ph137.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph137.split, !llvm.loop !152

._crit_edge:                                      ; preds = %.preheader, %..loopexit_crit_edge.us, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0105.lcssa = phi i32 [ 0, %bb.a ], [ %.1106.us, %..loopexit_crit_edge.us ], [ %i.ah, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %.1106, %.preheader ] ; 3 uses
  %.0103.lcssa = phi i32 [ 0, %bb.a ], [ %.1104.us, %..loopexit_crit_edge.us ], [ %i.ag, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %.1104, %.preheader ]
  %i.dj = add nsw i32 %.0103.lcssa, %.0105.lcssa  ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.p

bb.i:                                             ; preds = %._crit_edge
  %i.dl = sub i32 %1, %i.dj
  %i.dm = mul nsw i32 %i.dl, %0
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !12 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 3 uses
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [36 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !56 ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge145

.lr.ph:                                           ; preds = %bb.i
  %i.dw = add nsw i32 %i.dp, %.0105.lcssa
  %i.dx = add nsw i32 %i.dv, %.0105.lcssa
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ea = sext i32 %0 to i64                      ; 2 uses
  %wide.trip.count176 = zext nneg i32 %1 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv173 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next174, %bb.n ] ; 4 uses
  %.0143 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 5 uses
  %.0101142 = phi i32 [ 0, %.lr.ph ], [ %.1102, %bb.n ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv173
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ee = add nsw i32 %.0101142, %i.dp
  %i.ef = add nsw i32 %.0101142, %i.dv            ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv173, %i.ea
  %i.eh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ej ; 3 uses
  %i.el = sext i32 %i.ee to i64                   ; 3 uses
  %i.em = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.el ; 3 uses
  %i.en = load float, ptr %i.ek, align 4, !tbaa !17
  store float %i.en, ptr %i.em, align 4, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store float %i.es, ptr %i.et, align 4, !tbaa !17
  %i.eu = load ptr, ptr %i.dy, align 8, !tbaa !160
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.el
  store ptr %8, ptr %i.ev, align 8, !tbaa !161
  %i.ew = getelementptr inbounds [36 x i8], ptr %i.dr, i64 %i.el
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i32 %i.ef, ptr %i.ex, align 4, !tbaa !56
  %i.ey = load ptr, ptr %i.dz, align 8, !tbaa !162
  %i.ez = sext i32 %i.ef to i64
  %i.fa = getelementptr inbounds [32 x i8], ptr %i.ey, i64 %i.ez
  store ptr %6, ptr %i.fa, align 8, !tbaa !164
  %i.fb = add nsw i32 %.0101142, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.fc = icmp slt i32 %i.ec, 0
  br i1 %i.fc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fd = add nsw i32 %i.dw, %.0143
  %i.fe = add nsw i32 %i.dx, %.0143               ; 2 uses
  %i.ff = mul nsw i64 %indvars.iv173, %i.ea
  %i.fg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !12
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [12 x i8], ptr %5, i64 %i.fi ; 3 uses
  %i.fk = sext i32 %i.fd to i64                   ; 3 uses
  %i.fl = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.fk ; 3 uses
  %i.fm = load float, ptr %i.fj, align 4, !tbaa !17
  store float %i.fm, ptr %i.fl, align 4, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store float %i.fo, ptr %i.fp, align 4, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store float %i.fr, ptr %i.fs, align 4, !tbaa !17
  %i.ft = load ptr, ptr %i.dy, align 8, !tbaa !160
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fk
  store ptr %9, ptr %i.fu, align 8, !tbaa !161
  %i.fv = getelementptr inbounds [36 x i8], ptr %i.dr, i64 %i.fk
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store i32 %i.fe, ptr %i.fw, align 4, !tbaa !56
  %i.fx = load ptr, ptr %i.dz, align 8, !tbaa !162
  %i.fy = sext i32 %i.fe to i64
  %i.fz = getelementptr inbounds [32 x i8], ptr %i.fx, i64 %i.fy
  store ptr %7, ptr %i.fz, align 8, !tbaa !164
  %i.ga = add nsw i32 %.0143, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1102 = phi i32 [ %i.fb, %bb.k ], [ %.0101142, %bb.m ], [ %.0101142, %bb.l ]
  %.1 = phi i32 [ %.0143, %bb.k ], [ %i.ga, %bb.m ], [ %.0143, %bb.l ]
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge145, label %bb.j, !llvm.loop !153

._crit_edge145:                                   ; preds = %bb.n, %bb.i
  %i.gb = mul nsw i32 %1, %0
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr [4 x i8], ptr %3, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !12 ; 2 uses
  %.2112146 = add nsw i32 %i.gf, 1
  %i.gg = load i32, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.gh = icmp slt i32 %.2112146, %i.gg
  %i.gi = add nsw i32 %0, -1
  %i.gj = mul nsw i32 %i.dj, %i.gi                ; 2 uses
  br i1 %i.gh, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %._crit_edge145
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gl = sext i32 %i.gf to i64
  %i.gm = add nsw i64 %i.gl, 1
  %i.gn = sext i32 %i.gj to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph149, %bb.o
  %indvars.iv178 = phi i64 [ %i.gm, %.lr.ph149 ], [ %indvars.iv.next179, %bb.o ] ; 5 uses
  %i.go = sub nsw i64 %indvars.iv178, %i.gn       ; 3 uses
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !160 ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %indvars.iv178
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !161
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.go
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !161
  %i.gt = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  %i.gu = getelementptr inbounds [36 x i8], ptr %i.gt, i64 %indvars.iv178
  %i.gv = getelementptr inbounds [36 x i8], ptr %i.gt, i64 %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.gv, ptr noundef nonnull align 4 dereferenceable(36) %i.gu, i64 36, i1 false), !tbaa.struct !167
  %i.gw = getelementptr inbounds [12 x i8], ptr %5, i64 %indvars.iv178 ; 3 uses
  %i.gx = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.go ; 3 uses
  %i.gy = load float, ptr %i.gw, align 4, !tbaa !17
  store float %i.gy, ptr %i.gx, align 4, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store float %i.ha, ptr %i.hb, align 4, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store float %i.hd, ptr %i.he, align 4, !tbaa !17
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.hf = load i32, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next179, %i.hg
  br i1 %i.hh, label %bb.o, label %._crit_edge150, !llvm.loop !154

._crit_edge150:                                   ; preds = %bb.o, %._crit_edge145
  %.lcssa = phi i32 [ %i.gg, %._crit_edge145 ], [ %i.hf, %bb.o ]
  %i.hi = sub nsw i32 %.lcssa, %i.gj              ; 3 uses
  store i32 %i.hi, ptr %4, align 8, !tbaa !37
  %i.hj = load i32, ptr %3, align 4, !tbaa !12    ; 2 uses
  %i.hk = icmp slt i32 %i.hj, %i.hi
  br i1 %i.hk, label %.lr.ph153.preheader, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %._crit_edge150
  %i.hl = sext i32 %i.hj to i64                   ; 7 uses
  %i.hm = sext i32 %i.hi to i64                   ; 2 uses
  %i.hn = add nsw i64 %i.hl, 1
  %i.ho = tail call i64 @llvm.smax.i64(i64 %i.hm, i64 %i.hn) ; 2 uses
  %i.hp = sub i64 %i.ho, %i.hl                    ; 3 uses
  %min.iters.check41 = icmp ult i64 %i.hp, 16
  br i1 %min.iters.check41, label %.lr.ph153.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph153.preheader
  %i.hq = mul nsw i64 %i.hl, 12                   ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.hq
  %i.hr = mul nsw i64 %i.ho, 12                   ; 2 uses
  %scevgep38 = getelementptr i8, ptr %5, i64 %i.hr
  %scevgep39 = getelementptr i8, ptr %i.c, i64 %i.hq
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.hr
  %bound0 = icmp ult ptr %scevgep, %scevgep40
  %bound1 = icmp ult ptr %scevgep39, %scevgep38
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph153.preheader52, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck
  %n.vec43 = and i64 %i.hp, -8                    ; 3 uses
  %i.hs = add i64 %n.vec43, %i.hl
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body44 ] ; 2 uses
  %i.ht = add i64 %index45, %i.hl                 ; 2 uses
  %i.hu = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.ht
  %i.hv = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ht
  %wide.vec = load <24 x float>, ptr %i.hu, align 4, !tbaa !17, !alias.scope !168
  store <24 x float> %wide.vec, ptr %i.hv, align 4, !tbaa !17, !alias.scope !169, !noalias !168
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.hw = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.hw, label %middle.block49, label %vector.body44, !llvm.loop !158

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %i.hp, %n.vec43
  br i1 %cmp.n50, label %._crit_edge154, label %.lr.ph153.preheader52

.lr.ph153.preheader52:                            ; preds = %vector.memcheck, %.lr.ph153.preheader, %middle.block49
  %indvars.iv181.ph = phi i64 [ %i.hl, %vector.memcheck ], [ %i.hl, %.lr.ph153.preheader ], [ %i.hs, %middle.block49 ]
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader52, %.lr.ph153
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph153 ], [ %indvars.iv181.ph, %.lr.ph153.preheader52 ] ; 3 uses
  %i.hx = getelementptr inbounds [12 x i8], ptr %i.c, i64 %indvars.iv181 ; 3 uses
  %i.hy = getelementptr inbounds [12 x i8], ptr %5, i64 %indvars.iv181 ; 3 uses
  %i.hz = load float, ptr %i.hx, align 4, !tbaa !17
  store float %i.hz, ptr %i.hy, align 4, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store float %i.ib, ptr %i.ic, align 4, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store float %i.ie, ptr %i.if, align 4, !tbaa !17
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ig = icmp slt i64 %indvars.iv.next182, %i.hm
  br i1 %i.ig, label %.lr.ph153, label %._crit_edge154, !llvm.loop !159

._crit_edge154:                                   ; preds = %.lr.ph153, %middle.block49, %._crit_edge150
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.39, i32 noundef 295, ptr noundef %i.c)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge154, %._crit_edge
  ret void
}

declare void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z8done_topP10t_topology(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = load ptr, ptr %0, align 8, !tbaa !55     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #23
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %1, align 4, !tbaa !12
  store i32 %i.o, ptr %i.l, align 4, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !54
  store ptr %i.v, ptr %i.d, align 8, !tbaa !59
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit
end_hunk_0
