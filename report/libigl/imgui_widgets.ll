inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN19ImGuiInputTextState12OnKeyPressedEi:bb.a
  %.val376.i = load i32, ptr %i.rh, align 4, !tbaa !305 ; 8 uses
  %i.ri = icmp sgt i32 %i.qz, %.val376.i
  br i1 %i.ri, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 %.val376.i, ptr %i.qy, align 8, !tbaa !316
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.rj = phi i32 [ %.val376.i, %bb.ea ], [ %i.qz, %bb.dz ] ; 6 uses
  %i.rk = icmp sgt i32 %i.rb, %.val376.i
  br i1 %i.rk, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 %.val376.i, ptr %i.ra, align 4, !tbaa !317
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.rl = phi i32 [ %.val376.i, %bb.ec ], [ %i.rb, %bb.eb ] ; 2 uses
  %i.rm = icmp eq i32 %i.rj, %i.rl
  br i1 %i.rm, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.rj, ptr %i.c, align 4, !tbaa !318
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i
  %i.rn = phi i32 [ %i.rj, %bb.ee ], [ %i.rb, %bb.ed ], [ %.pre, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ] ; 2 uses
  %.val376894.i = phi i32 [ %.val376.i, %bb.ee ], [ %.val376.i, %bb.ed ], [ %.val376892.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ] ; 14 uses
  %i.ro = phi i32 [ %i.rj, %bb.ee ], [ %i.rl, %bb.ed ], [ %.ph890.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ]
  %i.rp = phi i32 [ %i.rj, %bb.ee ], [ %i.rj, %bb.ed ], [ %.ph890.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ]
  %i.rq = icmp sgt i32 %i.rn, %.val376894.i
  br i1 %i.rq, label %bb.eg, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i

bb.eg:                                            ; preds = %bb.ef
  store i32 %.val376894.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i: ; preds = %bb.eg, %bb.ef
  %i.rr = phi i32 [ %i.rn, %bb.ef ], [ %.val376894.i, %bb.eg ]
  %i.rs = zext i8 %i.e to i32
  call fastcc void @_ZN5ImStbL25stb_textedit_find_charposEPNS_12StbFindStateEP19ImGuiInputTextStateii(ptr noundef %3, ptr noundef nonnull %0, i32 noundef %i.rr, i32 noundef %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.ru = icmp sgt i32 %i.qx, 0
  br i1 %i.ru, label %.lr.ph622.i, label %.thread560.i

.lr.ph622.i:                                      ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.rx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rz = sext i32 %.val376894.i to i64
  %i.sa = load ptr, ptr @GImGui, align 8          ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 6520
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 6528
  %.promoted624.i = load i8, ptr %i.rt, align 2, !tbaa !319
  %.promoted625.i = load i32, ptr %i.rw, align 4, !tbaa !421
  %.promoted627.i = load i32, ptr %i.rx, align 4, !tbaa !416
  %i.sd = icmp eq i8 %.promoted624.i, 0
  %i.se = select i1 %i.sd, ptr %3, ptr %i.rv
  %.pre.i = load float, ptr %i.se, align 4, !tbaa !130 ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge307, %.lr.ph622.i
  %i.sf = phi i32 [ %i.ro, %.lr.ph622.i ], [ %i.ue, %._crit_edge307 ] ; 5 uses
  %i.sg = phi i32 [ %i.rp, %.lr.ph622.i ], [ %i.ub, %._crit_edge307 ] ; 3 uses
  %i.sh = phi i32 [ %.promoted627.i, %.lr.ph622.i ], [ %i.si, %._crit_edge307 ]
  %i.si = phi i32 [ %.promoted625.i, %.lr.ph622.i ], [ %.0300.lcssa.i, %._crit_edge307 ] ; 9 uses
  %.0301621.i = phi i32 [ 0, %.lr.ph622.i ], [ %i.uk, %._crit_edge307 ]
  %i.sj = icmp eq i32 %i.si, %i.sh
  br i1 %i.sj, label %.thread560.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 %i.si, ptr %i.c, align 4, !tbaa !318
  %.val387.i = load ptr, ptr %i.ry, align 8, !tbaa !304 ; 3 uses
  %i.sk = sext i32 %i.si to i64
  %i.sl = getelementptr [2 x i8], ptr %.val387.i, i64 %i.sk ; 4 uses
  %i.sm = getelementptr inbounds [2 x i8], ptr %.val387.i, i64 %i.rz
  %i.sn = load ptr, ptr %i.sb, align 8, !tbaa !331 ; 4 uses
  %i.so = load float, ptr %i.sc, align 8, !tbaa !145
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 20
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !332
  %i.sr = fdiv float %i.so, %i.sq
  %i.ss = icmp slt i32 %i.si, %.val376894.i
  br i1 %i.ss, label %.lr.ph.split.us.i.i484.i, label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i

.lr.ph.split.us.i.i484.i:                         ; preds = %bb.ei, %.lr.ph.split.us.i.i484.i
  %.03121.us.i.i485.i = phi ptr [ %i.st, %.lr.ph.split.us.i.i484.i ], [ %i.sl, %bb.ei ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.03121.us.i.i485.i, i64 2 ; 3 uses
  %i.su = load i16, ptr %.03121.us.i.i485.i, align 2, !tbaa !258
  %cond.i = icmp ne i16 %i.su, 10
  %i.sv = icmp ult ptr %i.st, %i.sm
  %or.cond941.i = select i1 %cond.i, i1 %i.sv, i1 false
  br i1 %or.cond941.i, label %.lr.ph.split.us.i.i484.i, label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i

_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i: ; preds = %.lr.ph.split.us.i.i484.i, %bb.ei
  %.1.i.i473.i = phi ptr [ %i.sl, %bb.ei ], [ %i.st, %.lr.ph.split.us.i.i484.i ]
  %i.sw = ptrtoint ptr %.1.i.i473.i to i64
  %i.sx = ptrtoint ptr %i.sl to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = lshr exact i64 %i.sy, 1                 ; 2 uses
  %i.ta = trunc i64 %i.sz to i32
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.lr.ph618.i, label %.thread554.i

.lr.ph618.i:                                      ; preds = %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %wide.trip.count.i = and i64 %i.sz, 2147483647
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %.lr.ph618.i
  %i.te = phi i32 [ %i.si, %.lr.ph618.i ], [ %i.ts, %bb.el ] ; 4 uses
  %indvars.iv708.i = phi i64 [ 0, %.lr.ph618.i ], [ %indvars.iv.next709.i, %bb.el ] ; 2 uses
  %.0617.i = phi float [ 0.000000e+00, %.lr.ph618.i ], [ %i.tq, %bb.el ]
  %gep.i = getelementptr [2 x i8], ptr %i.sl, i64 %indvars.iv708.i
  %i.tf = load i16, ptr %gep.i, align 2, !tbaa !258 ; 3 uses
  %i.tg = icmp eq i16 %i.tf, 10
  br i1 %i.tg, label %.thread554.i, label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i

_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i: ; preds = %bb.ej
  %i.th = zext i16 %i.tf to i32
  %i.ti = load i32, ptr %i.sn, align 8, !tbaa !386
  %i.tj = icmp sgt i32 %i.ti, %i.th
  %i.tk = load ptr, ptr %i.tc, align 8
  %i.tl = zext i16 %i.tf to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.tl
  %.in.i.i493.i = select i1 %i.tj, ptr %i.tm, ptr %i.td
  %i.tn = load float, ptr %.in.i.i493.i, align 4, !tbaa !130
  %i.to = fmul float %i.sr, %i.tn                 ; 2 uses
  %i.tp = fcmp oeq float %i.to, -1.000000e+00
  br i1 %i.tp, label %.thread554.i, label %bb.ek

bb.ek:                                            ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i
  %i.tq = fadd float %.0617.i, %i.to              ; 2 uses
  %i.tr = fcmp ogt float %i.tq, %.pre.i
  br i1 %i.tr, label %.thread554.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ts = add nsw i32 %i.te, 1                    ; 3 uses
  store i32 %i.ts, ptr %i.c, align 4, !tbaa !318
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count.i
  br i1 %exitcond711.not.i, label %.thread554.i, label %bb.ej, !llvm.loop !422

.thread554.i:                                     ; preds = %bb.el, %bb.ek, %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i, %bb.ej, %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i
  %i.tt = phi i32 [ %i.si, %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i ], [ %i.te, %bb.ej ], [ %i.te, %bb.ek ], [ %i.te, %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i ], [ %i.ts, %bb.el ] ; 2 uses
  %.not.i496.i = icmp eq i32 %i.sg, %i.sf
  br i1 %.not.i496.i, label %bb.es, label %bb.em

bb.em:                                            ; preds = %.thread554.i
  %i.tu = icmp sgt i32 %i.sg, %.val376894.i
  br i1 %i.tu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 %.val376894.i, ptr %i.qy, align 8, !tbaa !316
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.tv = phi i32 [ %.val376894.i, %bb.en ], [ %i.sg, %bb.em ] ; 6 uses
  %i.tw = icmp sgt i32 %i.sf, %.val376894.i
  br i1 %i.tw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 %.val376894.i, ptr %i.ra, align 4, !tbaa !317
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.tx = phi i32 [ %.val376894.i, %bb.ep ], [ %i.sf, %bb.eo ] ; 2 uses
  %i.ty = icmp eq i32 %i.tv, %i.tx
  br i1 %i.ty, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 %i.tv, ptr %i.c, align 4, !tbaa !318
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %.thread554.i
  %i.tz = phi i32 [ %i.tv, %bb.er ], [ %i.tt, %bb.eq ], [ %i.tt, %.thread554.i ] ; 2 uses
  %i.ua = phi i32 [ %i.tv, %bb.er ], [ %i.tx, %bb.eq ], [ %i.sf, %.thread554.i ]
  %i.ub = phi i32 [ %i.tv, %bb.er ], [ %i.tv, %bb.eq ], [ %i.sf, %.thread554.i ]
  %i.uc = icmp sgt i32 %i.tz, %.val376894.i
  br i1 %i.uc, label %bb.et, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i

bb.et:                                            ; preds = %bb.es
  store i32 %.val376894.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i: ; preds = %bb.et, %bb.es
  %i.ud = phi i32 [ %i.tz, %bb.es ], [ %.val376894.i, %bb.et ] ; 2 uses
  store i8 1, ptr %i.rt, align 2, !tbaa !319
  store float %.pre.i, ptr %i.rv, align 8, !tbaa !320
  br i1 %.not337575.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i
  store i32 %i.ud, ptr %i.ra, align 4, !tbaa !317
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i
  %i.ue = phi i32 [ %i.ud, %bb.eu ], [ %i.ua, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i ]
  %i.uf = icmp sgt i32 %i.si, 1
  br i1 %i.uf, label %.lr.ph305.a, label %._crit_edge307

bb.ew:                                            ; preds = %.lr.ph305.a
  %i.ug = icmp sgt i32 %.0300.in.i303, 2
  br i1 %i.ug, label %.lr.ph305.a, label %._crit_edge307, !llvm.loop !423

.lr.ph305.a:                                      ; preds = %bb.ev, %bb.ew
  %.0300.in.i303 = phi i32 [ %.0300.i, %bb.ew ], [ %i.si, %bb.ev ] ; 3 uses
  %.0300.i = add nsw i32 %.0300.in.i303, -1       ; 2 uses
  %4 = zext nneg i32 %.0300.in.i303 to i64
  %i.uh = getelementptr [2 x i8], ptr %.val387.i, i64 %4
  %i.ui = getelementptr i8, ptr %i.uh, i64 -4
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !258
  %.not341.i = icmp eq i16 %i.uj, 10
  br i1 %.not341.i, label %._crit_edge306, label %bb.ew, !llvm.loop !423

._crit_edge306:                                   ; preds = %.lr.ph305.a
  br label %._crit_edge307, !llvm.loop !423

._crit_edge307:                                   ; preds = %bb.ew, %._crit_edge306, %bb.ev
  %.0300.lcssa.i = phi i32 [ %.0300.i, %._crit_edge306 ], [ 0, %bb.ev ], [ 0, %bb.ew ]
  %i.uk = add nuw nsw i32 %.0301621.i, 1          ; 2 uses
  %exitcond712.not.i = icmp eq i32 %i.uk, %i.qx
  br i1 %exitcond712.not.i, label %.thread560.i, label %bb.eh, !llvm.loop !424

.thread560.i:                                     ; preds = %._crit_edge307, %bb.eh, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.ex:                                            ; preds = %bb.dt
  %i.ul = or disjoint i32 %i.qs, 2097152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.ex, %bb.dr
  %.0309.i.be = phi i32 [ %i.qr, %bb.dr ], [ %i.ul, %bb.ex ]
  br label %.backedge.i

bb.ey:                                            ; preds = %.backedge.i, %.backedge.i
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.un = load i32, ptr %i.um, align 8, !tbaa !316
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !317
  %.not336.i = icmp eq i32 %i.un, %i.up
  br i1 %.not336.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ey
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val362.i = load i32, ptr %i.uq, align 4, !tbaa !305
  %i.ur = load i32, ptr %i.c, align 4, !tbaa !318 ; 2 uses
  %i.us = icmp slt i32 %i.ur, %.val362.i
  br i1 %i.us, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  tail call fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %i.ur, i32 noundef 1)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.ut, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fd:                                            ; preds = %.backedge.i, %.backedge.i
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !316
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !317
  %.not335.i = icmp eq i32 %i.uv, %i.ux
  br i1 %.not335.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.fi

bb.ff:                                            ; preds = %bb.fd
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.val374.i = load i32, ptr %i.uy, align 4, !tbaa !305 ; 3 uses
  %i.uz = load i32, ptr %i.c, align 4, !tbaa !318 ; 2 uses
  %i.va = icmp sgt i32 %i.uz, %.val374.i
  br i1 %i.va, label %bb.fg, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i

bb.fg:                                            ; preds = %bb.ff
  store i32 %.val374.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i: ; preds = %bb.fg, %bb.ff
  %i.vb = phi i32 [ %i.uz, %bb.ff ], [ %.val374.i, %bb.fg ] ; 2 uses
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i
  %i.vd = add nsw i32 %i.vb, -1                   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.vf = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.ve, i32 noundef %i.vd, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i.i500.not.i = icmp eq ptr %i.vf, null
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.vg, align 8, !tbaa !301 ; 2 uses
  %i.vh = zext nneg i32 %i.vd to i64              ; 3 uses
  br i1 %.not.i.i500.not.i, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i, label %.lr.ph.i.i507.i

.lr.ph.i.i507.i:                                  ; preds = %bb.fh
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %.val.i.i.i, i64 %i.vh
  %i.vi = load i16, ptr %invariant.gep.i.i.i, align 2, !tbaa !258
  store i16 %i.vi, ptr %i.vf, align 2, !tbaa !258
  br label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i: ; preds = %.lr.ph.i.i507.i, %bb.fh
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.vh ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 1, ptr %i.vk, align 2, !tbaa !339
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vm = tail call noundef i32 @_Z27ImTextCountUtf8BytesFromStrPKtS0_(ptr noundef %i.vj, ptr noundef nonnull %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !306
  %i.vp = sub nsw i32 %i.vo, %i.vm
  store i32 %i.vp, ptr %i.vn, align 8, !tbaa !306
  %i.vq = load i32, ptr %i.uy, align 4, !tbaa !305
  %i.vr = add nsw i32 %i.vq, -1
  store i32 %i.vr, ptr %i.uy, align 4, !tbaa !305
  %i.vs = load ptr, ptr %i.vg, align 8, !tbaa !304
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %i.vh
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 2 ; 2 uses
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !258 ; 2 uses
  %.not23.i.i502.i = icmp eq i16 %i.vv, 0
  br i1 %.not23.i.i502.i, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %.lr.ph.i7.i.i

.lr.ph.i7.i.i:                                    ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i, %.lr.ph.i7.i.i
  %i.vw = phi i16 [ %i.vz, %.lr.ph.i7.i.i ], [ %i.vv, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ]
  %.01725.i.i503.i = phi ptr [ %i.vx, %.lr.ph.i7.i.i ], [ %i.vu, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ]
  %.01824.i.i504.i = phi ptr [ %i.vy, %.lr.ph.i7.i.i ], [ %i.vj, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ] ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.01725.i.i503.i, i64 2 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.01824.i.i504.i, i64 2 ; 2 uses
  store i16 %i.vw, ptr %.01824.i.i504.i, align 2, !tbaa !258
  %i.vz = load i16, ptr %i.vx, align 2, !tbaa !258 ; 2 uses
  %.not.i8.i.i = icmp eq i16 %i.vz, 0
  br i1 %.not.i8.i.i, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %.lr.ph.i7.i.i

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i: ; preds = %.lr.ph.i7.i.i, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i
  %.018.lcssa.i.i506.i = phi ptr [ %i.vj, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ], [ %i.vy, %.lr.ph.i7.i.i ]
  store i16 0, ptr %.018.lcssa.i.i506.i, align 2, !tbaa !258
  %i.wa = load i32, ptr %i.c, align 4, !tbaa !318
  %i.wb = add nsw i32 %i.wa, -1
  store i32 %i.wb, ptr %i.c, align 4, !tbaa !318
  br label %bb.fi

bb.fi:                                            ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i, %bb.fe
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wc, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fj:                                            ; preds = %.backedge.i
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.wd, align 4, !tbaa !317
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.we, align 8, !tbaa !316
  store i32 0, ptr %i.c, align 4, !tbaa !318
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wf, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fk:                                            ; preds = %.backedge.i
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val361.i = load i32, ptr %i.wg, align 4, !tbaa !305
  store i32 %.val361.i, ptr %i.c, align 4, !tbaa !318
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.wh, align 4, !tbaa !317
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.wi, align 8, !tbaa !316
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wj, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fl:                                            ; preds = %.backedge.i
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !316
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !317
  %.not.i511.i = icmp eq i32 %i.wl, %i.wn
  br i1 %.not.i511.i, label %bb.fm, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i

bb.fm:                                            ; preds = %bb.fl
  %i.wo = load i32, ptr %i.c, align 4, !tbaa !318
  store i32 %i.wo, ptr %i.wk, align 8, !tbaa !316
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i: ; preds = %bb.fm, %bb.fl
  store i32 0, ptr %i.wm, align 4, !tbaa !317
  store i32 0, ptr %i.c, align 4, !tbaa !318
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wp, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fn:                                            ; preds = %.backedge.i
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !316
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !317
  %.not.i513.i = icmp eq i32 %i.wr, %i.wt
  br i1 %.not.i513.i, label %bb.fo, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i

bb.fo:                                            ; preds = %bb.fn
  %i.wu = load i32, ptr %i.c, align 4, !tbaa !318
  store i32 %i.wu, ptr %i.wq, align 8, !tbaa !316
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i: ; preds = %bb.fo, %bb.fn
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val360.i = load i32, ptr %i.wv, align 4, !tbaa !305 ; 2 uses
  store i32 %.val360.i, ptr %i.ws, align 4, !tbaa !317
  store i32 %.val360.i, ptr %i.c, align 4, !tbaa !318
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.ww, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fp:                                            ; preds = %.backedge.i
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val373.i = load i32, ptr %i.wx, align 4, !tbaa !305 ; 9 uses
end_hunk_0
