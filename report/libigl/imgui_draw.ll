Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 282
begin_hunk_0_@_ZN6ImFont16BuildLookupTableEv:bb.a

bb.g:                                             ; preds = %_ZNK6ImFont9FindGlyphEt.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !251 ; 3 uses
  %i.cr = sext i32 %i.ba to i64                   ; 2 uses
  %i.cs = getelementptr [40 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -40
  %i.cu = load i32, ptr %i.ct, align 4
  %.mask = and i32 %i.cu, -4
  %.not30 = icmp eq i32 %.mask, 36
  br i1 %.not30, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = add nsw i32 %i.ba, 1                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !252 ; 4 uses
  %.not74 = icmp slt i32 %i.ba, %i.cx
  br i1 %.not74, label %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = sdiv i32 %i.cx, 2
  %i.cz = add nsw i32 %i.cy, %i.cx
  br label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i

_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i: ; preds = %bb.j, %bb.i
  %i.da = phi i32 [ %i.cz, %bb.j ], [ 8, %bb.i ]
  %i.db = tail call noundef i32 @llvm.smax.i32(i32 %i.da, i32 %i.cv) ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, 40
  %i.de = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dd) ; 3 uses
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !251 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.df, null
  br i1 %.not6.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i
  %i.dg = load i32, ptr %i.a, align 8, !tbaa !253
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dh, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.de, ptr nonnull align 4 %i.df, i64 %i.di, i1 false)
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !251
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !251
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !252
  %.pre.pre = load i32, ptr %i.au, align 8, !tbaa !113
  br label %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit

_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit:        ; preds = %bb.h, %bb.l
  %.pre = phi i32 [ %i.bk, %bb.h ], [ %.pre.pre, %bb.l ]
  %i.dk = phi ptr [ %i.cq, %bb.h ], [ %i.de, %bb.l ]
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !253
  %.pre103 = sext i32 %i.cv to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit, %bb.g
  %.pre-phi = phi i64 [ %.pre103, %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit ], [ %i.cr, %bb.g ]
  %i.dl = phi i32 [ %.pre, %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit ], [ %i.bk, %bb.g ]
  %i.dm = phi ptr [ %i.dk, %_ZN8ImVectorI11ImFontGlyphE6resizeEi.exit ], [ %i.cq, %bb.g ] ; 2 uses
  %i.dn = getelementptr [40 x i8], ptr %i.dm, i64 %.pre-phi ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -40    ; 4 uses
  %.not.i34 = icmp ugt i32 %i.dl, 32
  br i1 %.not.i34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !114
  br label %_ZNK6ImFont9FindGlyphEt.exit37

bb.o:                                             ; preds = %bb.m
  %i.dr = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !92 ; 2 uses
  %i.du = icmp eq i16 %i.dt, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = zext i16 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %i.dx
  %.0.i36 = select i1 %i.du, ptr %i.dw, ptr %i.dy
  br label %_ZNK6ImFont9FindGlyphEt.exit37

_ZNK6ImFont9FindGlyphEt.exit37:                   ; preds = %bb.n, %bb.o
  %.1.i35 = phi ptr [ %i.dq, %bb.n ], [ %.0.i36, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.do, ptr noundef nonnull align 4 dereferenceable(40) %.1.i35, i64 40, i1 false), !tbaa.struct !563
  %i.dz = load i32, ptr %i.do, align 4
  %i.ea = and i32 %i.dz, 3
  %i.eb = or disjoint i32 %i.ea, 36
  store i32 %i.eb, ptr %i.do, align 4
  %i.ec = getelementptr i8, ptr %i.dn, i64 -36    ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !117
  %i.ee = fmul float %i.ed, 4.000000e+00          ; 2 uses
  store float %i.ee, ptr %i.ec, align 4, !tbaa !117
  %i.ef = load ptr, ptr %i.ar, align 8, !tbaa !254
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  store float %i.ee, ptr %i.eg, align 4, !tbaa !15
  %i.eh = load i32, ptr %i.a, align 8, !tbaa !261
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = add i16 %i.ei, -1
  %i.ek = load i32, ptr %i.do, align 4
  %i.el = lshr i32 %i.ek, 2
  %i.em = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  store i16 %i.ej, ptr %i.eo, align 2, !tbaa !92
  %.pre95 = load i32, ptr %i.au, align 8, !tbaa !113
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6ImFont9FindGlyphEt.exit37, %_ZNK6ImFont9FindGlyphEt.exit
  %i.ep = phi i32 [ %.pre95, %_ZNK6ImFont9FindGlyphEt.exit37 ], [ %i.bk, %_ZNK6ImFont9FindGlyphEt.exit ] ; 2 uses
  %.not.i.i38 = icmp ugt i32 %i.ep, 32
  br i1 %.not.i.i38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !114
  br label %_ZNK6ImFont9FindGlyphEt.exit.i

bb.r:                                             ; preds = %bb.p
  %i.es = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !92 ; 2 uses
  %i.ev = icmp eq i16 %i.eu, -1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = zext i16 %i.eu to i64
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.fa
  %.0.i.i = select i1 %i.ev, ptr %i.ex, ptr %i.fb
  br label %_ZNK6ImFont9FindGlyphEt.exit.i

_ZNK6ImFont9FindGlyphEt.exit.i:                   ; preds = %bb.r, %bb.q
  %.1.i.i = phi ptr [ %i.er, %bb.q ], [ %.0.i.i, %bb.r ] ; 3 uses
  %.not.i39 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i39, label %_ZN6ImFont15SetGlyphVisibleEtb.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImFont9FindGlyphEt.exit.i
  %i.fc = load i32, ptr %.1.i.i, align 4
  %i.fd = and i32 %i.fc, -3
  store i32 %i.fd, ptr %.1.i.i, align 4
  %.pre96 = load i32, ptr %i.au, align 8, !tbaa !113
  br label %_ZN6ImFont15SetGlyphVisibleEtb.exit

_ZN6ImFont15SetGlyphVisibleEtb.exit:              ; preds = %_ZNK6ImFont9FindGlyphEt.exit.i, %bb.s
  %i.fe = phi i32 [ %i.ep, %_ZNK6ImFont9FindGlyphEt.exit.i ], [ %.pre96, %bb.s ] ; 2 uses
  %.not.i.i40 = icmp ugt i32 %i.fe, 9
  br i1 %.not.i.i40, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6ImFont15SetGlyphVisibleEtb.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !114
  br label %_ZNK6ImFont9FindGlyphEt.exit.i41

bb.u:                                             ; preds = %_ZN6ImFont15SetGlyphVisibleEtb.exit
  %i.fh = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 18
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !92 ; 2 uses
  %i.fk = icmp eq i16 %i.fj, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = zext i16 %i.fj to i64
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.fo, i64 %i.fp
  %.0.i.i44 = select i1 %i.fk, ptr %i.fm, ptr %i.fq
  br label %_ZNK6ImFont9FindGlyphEt.exit.i41

_ZNK6ImFont9FindGlyphEt.exit.i41:                 ; preds = %bb.u, %bb.t
  %.1.i.i42 = phi ptr [ %i.fg, %bb.t ], [ %.0.i.i44, %bb.u ] ; 3 uses
  %.not.i43 = icmp eq ptr %.1.i.i42, null
  br i1 %.not.i43, label %_ZN6ImFont15SetGlyphVisibleEtb.exit45, label %bb.v

bb.v:                                             ; preds = %_ZNK6ImFont9FindGlyphEt.exit.i41
  %i.fr = load i32, ptr %.1.i.i42, align 4
  %i.fs = and i32 %i.fr, -3
  store i32 %i.fs, ptr %.1.i.i42, align 4
  %.pre97.pre.pre = load i32, ptr %i.au, align 8, !tbaa !113
  br label %_ZN6ImFont15SetGlyphVisibleEtb.exit45

_ZN6ImFont15SetGlyphVisibleEtb.exit45:            ; preds = %_ZNK6ImFont9FindGlyphEt.exit.i41, %bb.v
  %.pre97.pre = phi i32 [ %i.fe, %_ZNK6ImFont9FindGlyphEt.exit.i41 ], [ %.pre97.pre.pre, %bb.v ] ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !182
  %i.fv = icmp eq i16 %i.fu, -1
  br i1 %i.fv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN6ImFont15SetGlyphVisibleEtb.exit45
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not.i.i46.a = icmp ugt i32 %.pre97.pre, 8230
  br i1 %.not.i.i46.a, label %bb.x, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.fx = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16460
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !92
  %1 = icmp ne i16 %i.fz, -1
  %i.ga = load ptr, ptr %i.fw, align 8
  %.not.i47.peel = icmp ne ptr %i.ga, null
  %or.cond.i = select i1 %1, i1 %.not.i47.peel, i1 false
  br i1 %or.cond.i, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i.thread

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i: ; preds = %bb.w
  %.not.i.i46.1 = icmp samesign ugt i32 %.pre97.pre, 133
  br i1 %.not.i.i46.1, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i.thread, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i.thread: ; preds = %bb.x, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i
  %i.gb = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 266
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !92
  %2 = icmp ne i16 %i.gd, -1
  %i.ge = load ptr, ptr %i.fw, align 8
  %.not.i47 = icmp ne ptr %i.ge, null
  %or.cond.i.1 = select i1 %2, i1 %.not.i47, i1 false
  %3 = select i1 %or.cond.i.1, i16 133, i16 -1
  br label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit

_ZL22FindFirstExistingGlyphP6ImFontPKti.exit:     ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i, %bb.x, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i.thread
  %i.gf = phi i16 [ %3, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i.thread ], [ 8230, %bb.x ], [ -1, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i ]
  store i16 %i.gf, ptr %i.ft, align 4, !tbaa !182
  br label %bb.y

bb.y:                                             ; preds = %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit, %_ZN6ImFont15SetGlyphVisibleEtb.exit45
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !183
  %i.gi = icmp eq i16 %i.gh, -1
  br i1 %i.gi, label %bb.z, label %._crit_edge104

bb.z:                                             ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not.i.i49.a = icmp ugt i32 %.pre97.pre, 46
  br i1 %.not.i.i49.a, label %bb.aa, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55

bb.aa:                                            ; preds = %bb.z
  %i.gk = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 92
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !92
  %4 = icmp ne i16 %i.gm, -1
  %i.gn = load ptr, ptr %i.gj, align 8
  %.not.i53.peel = icmp ne ptr %i.gn, null
  %or.cond.i54 = select i1 %4, i1 %.not.i53.peel, i1 false
  br i1 %or.cond.i54, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i50

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i50: ; preds = %bb.aa
  %.not.i.i49.1 = icmp ugt i32 %.pre97.pre, 65294
  br i1 %.not.i.i49.1, label %bb.ab, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55

bb.ab:                                            ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i50
  %i.go = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 130588
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !92
  %5 = icmp ne i16 %i.gq, -1
  %i.gr = load ptr, ptr %i.gj, align 8
  %.not.i53 = icmp ne ptr %i.gr, null
  %or.cond.i54.1 = select i1 %5, i1 %.not.i53, i1 false
  %6 = select i1 %or.cond.i54.1, i16 -242, i16 -1
  br label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55

_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55:   ; preds = %bb.z, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i50, %bb.aa, %bb.ab
  %7 = phi i16 [ %6, %bb.ab ], [ 46, %bb.aa ], [ -1, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i50 ], [ -1, %bb.z ]
  store i16 %7, ptr %i.gg, align 2, !tbaa !183
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %bb.y, %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit55
  %.pre-phi106 = sext i32 %.pre97.pre to i64      ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 3 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !181
  %i.gu = zext i16 %i.gt to i64                   ; 2 uses
  %.not.i56 = icmp ult i64 %i.gu, %.pre-phi106
  br i1 %.not.i56, label %bb.ac, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread

bb.ac:                                            ; preds = %._crit_edge104
  %i.gv = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !92 ; 2 uses
  %i.gy = icmp eq i16 %i.gx, -1
  br i1 %i.gy, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread:   ; preds = %._crit_edge104, %bb.ac
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.gz, align 8, !tbaa !114
  br label %bb.ad

_ZNK6ImFont19FindGlyphNoFallbackEt.exit:          ; preds = %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %i.hc = zext i16 %i.gx to i64
  %i.hd = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !114
  %i.hf = icmp eq ptr %i.hb, null
  br i1 %i.hf, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit
  %i.hg = phi ptr [ %i.gz, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread ], [ %i.he, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not.i.i60 = icmp ugt i32 %.pre97.pre, 65533
  br i1 %.not.i.i60, label %bb.ae, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61

bb.ae:                                            ; preds = %bb.ad
  %i.hi = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 131066
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !92
  %i.hl = icmp eq i16 %i.hk, -1
  %i.hm = load ptr, ptr %i.hh, align 8
  %.not.i64 = icmp eq ptr %i.hm, null
  %or.cond.i65 = select i1 %i.hl, i1 true, i1 %.not.i64
  br i1 %or.cond.i65, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61: ; preds = %bb.ad
  %.not.i.i60.1 = icmp samesign ugt i32 %.pre97.pre, 63
  br i1 %.not.i.i60.1, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread: ; preds = %bb.ae, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 126
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !92
  %i.hq = icmp eq i16 %i.hp, -1
  %i.hr = load ptr, ptr %i.hh, align 8
  %.not.i64.1 = icmp eq ptr %i.hr, null
  %or.cond.i65.1 = select i1 %i.hq, i1 true, i1 %.not.i64.1
  br i1 %or.cond.i65.1, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1: ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61
  %.not.i.i60.2 = icmp samesign ugt i32 %.pre97.pre, 32
  br i1 %.not.i.i60.2, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.2

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread: ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1
  %i.hs = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !92
  %i.hv = icmp eq i16 %i.hu, -1
  %i.hw = load ptr, ptr %i.hh, align 8
  %.not.i64.2 = icmp eq ptr %i.hw, null
  %or.cond.i65.2 = select i1 %i.hv, i1 true, i1 %.not.i64.2
  br i1 %or.cond.i65.2, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.2, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66

_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.2: ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1
  br label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66

_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66:   ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.2, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread, %bb.ae
  %i.hx = phi i16 [ -3, %bb.ae ], [ -1, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.2 ], [ 63, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.thread ], [ 32, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit.thread.i61.1.thread ] ; 2 uses
  store i16 %i.hx, ptr %i.gs, align 2, !tbaa !181
  %i.hy = zext i16 %i.hx to i64                   ; 2 uses
  %.not.i67 = icmp ult i64 %i.hy, %.pre-phi106
  br i1 %.not.i67, label %bb.af, label %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66._ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread_crit_edge

_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66._ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread_crit_edge: ; preds = %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66
  %.pre98.pre = load ptr, ptr %i.hh, align 8, !tbaa !251
  br label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread

bb.af:                                            ; preds = %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66
  %i.hz = load ptr, ptr %i.av, align 8, !tbaa !115
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !92 ; 2 uses
  %i.ic = icmp eq i16 %i.ib, -1
  %.pre98.pre100 = load ptr, ptr %i.hh, align 8   ; 3 uses
  br i1 %i.ic, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70

_ZNK6ImFont19FindGlyphNoFallbackEt.exit70:        ; preds = %bb.af
  %i.id = zext i16 %i.ib to i64
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %.pre98.pre100, i64 %i.id ; 2 uses
  store ptr %i.ie, ptr %i.hg, align 8, !tbaa !114
  %i.if = icmp eq ptr %.pre98.pre100, null
  br i1 %i.if, label %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread, label %bb.ag

_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread: ; preds = %bb.af, %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66._ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread_crit_edge, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70
  %i.ig = phi ptr [ null, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70 ], [ %.pre98.pre, %_ZL22FindFirstExistingGlyphP6ImFontPKti.exit66._ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread_crit_edge ], [ %.pre98.pre100, %bb.af ]
  %i.ih = load i32, ptr %i.a, align 8, !tbaa !253
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr [40 x i8], ptr %i.ig, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -40    ; 3 uses
  store ptr %i.ik, ptr %i.hg, align 8, !tbaa !114
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = lshr i32 %i.il, 2
  %i.in = trunc i32 %i.im to i16
  store i16 %i.in, ptr %i.gs, align 2, !tbaa !181
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit
  %i.io = phi ptr [ %i.ie, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70 ], [ %i.ik, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit70.thread ], [ %i.hd, %_ZNK6ImFont19FindGlyphNoFallbackEt.exit ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !117 ; 10 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.iq, ptr %i.ir, align 8, !tbaa !564
  %i.is = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 9 uses
  %wide.trip.count91 = zext i32 %.026.lcssa to i64 ; 3 uses
  %min.iters.check122 = icmp ult i32 %.026.lcssa, 8
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %bb.ag
  %n.vec124 = and i64 %wide.trip.count91, 4294967288 ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %pred.store.continue141, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next142, %pred.store.continue141 ] ; 9 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !15
  %wide.load127 = load <4 x float>, ptr %i.iu, align 4, !tbaa !15
  %i.iv = fcmp olt <4 x float> %wide.load, zeroinitializer ; 4 uses
  %i.iw = fcmp olt <4 x float> %wide.load127, zeroinitializer ; 4 uses
  %i.ix = extractelement <4 x i1> %i.iv, i64 0
  br i1 %i.ix, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body125
  store float %i.iq, ptr %i.it, align 4, !tbaa !15
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body125
  %i.iy = extractelement <4 x i1> %i.iv, i64 1
  br i1 %i.iy, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store float %i.iq, ptr %i.ja, align 4, !tbaa !15
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue
  %i.jb = extractelement <4 x i1> %i.iv, i64 2
  br i1 %i.jb, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store float %i.iq, ptr %i.jd, align 4, !tbaa !15
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.je = extractelement <4 x i1> %i.iv, i64 3
  br i1 %i.je, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store float %i.iq, ptr %i.jg, align 4, !tbaa !15
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.jh = extractelement <4 x i1> %i.iw, i64 0
  br i1 %i.jh, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store float %i.iq, ptr %i.jj, align 4, !tbaa !15
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.jk = extractelement <4 x i1> %i.iw, i64 1
  br i1 %i.jk, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index126
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  store float %i.iq, ptr %i.jm, align 4, !tbaa !15
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %i.jn = extractelement <4 x i1> %i.iw, i64 2
end_hunk_0
