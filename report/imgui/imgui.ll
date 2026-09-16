Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui17UpdateInputEventsEb:bb.a
  br i1 %or.cond.i.i, label %.split.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

.split.i.i.i:                                     ; preds = %bb.n
  %i.bu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bp, i1 true) ; 2 uses
  %i.bv = and i32 %i.bu, 28
  %i.bw = icmp eq i32 %i.bv, 12
  %switch.offset.i.i.i = add nuw nsw i32 %i.bu, 651
  %spec.select.i.i.i = select i1 %i.bw, i32 %switch.offset.i.i.i, i32 %i.bp
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.n, %.split.i.i.i
  %.0.i.i = phi i32 [ %i.bp, %bb.n ], [ %spec.select.i.i.i, %.split.i.i.i ]
  %i.bx = sext i32 %.0.i.i to i64
  %i.by = getelementptr [16 x i8], ptr %i.bq, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -7884  ; 4 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.p
  %i.cc = lshr exact i64 %i.cb, 4
  %i.cd = trunc i64 %i.cc to i32                  ; 4 uses
  br i1 %0, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.ce = load i8, ptr %i.bz, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !222, !range !99, !noundef !236
  %.not174 = icmp eq i8 %i.ce, %i.cg
  br i1 %.not174, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = ashr i32 %i.cd, 5
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !237
  %i.cl = and i32 %i.cd, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = and i32 %i.ck, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = icmp ne i32 %.0145223, 0
  %or.cond15 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond15, label %.thread193, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.cq = getelementptr i8, ptr %i.bq, i64 2724
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cs = zext nneg i8 %i.cr to i32
  %spec.select.i = shl nuw nsw i32 %i.cs, 12
  %i.ct = getelementptr i8, ptr %i.bq, i64 2740
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 13
  %i.cx = getelementptr i8, ptr %i.bq, i64 2756
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 14
  %i.db = getelementptr i8, ptr %i.bq, i64 2772
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !239, !range !99, !noundef !236
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 15
  %i.df = or disjoint i32 %spec.select.i, %i.cw
  %i.dg = or disjoint i32 %i.df, %i.da
  %i.dh = or disjoint i32 %i.dg, %i.de
  %i.di = or i32 %i.dh, %i.bp                     ; 3 uses
  %i.dj = and i32 %i.di, 20480
  %or.cond.i = icmp eq i32 %i.dj, 4096
  br i1 %or.cond.i, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = and i32 %i.di, 4096
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !244, !range !99, !noundef !236
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = and i1 %i.dl, %i.do
  br i1 %i.dp, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = and i32 %i.di, -61441                   ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bq, i64 5544
  %i.dt = add nsw i32 %i.dq, -512
  %i.du = ashr i32 %i.dt, 5
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !237
  %i.dy = and i32 %i.bp, 31
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dx, %i.dz
  %i.eb = icmp ne i32 %i.ea, 0
  br label %_ZL30IsKeyChordPotentiallyCharInputi.exit

_ZL30IsKeyChordPotentiallyCharInputi.exit:        ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.1.i182 = phi i1 [ false, %bb.r ], [ false, %bb.s ], [ %i.eb, %bb.t ], [ false, %bb.q ] ; 2 uses
  %i.ec = trunc nuw i8 %.0149222 to i1
  %or.cond17 = select i1 %i.h, i1 %i.ec, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = or i1 %.1.i182, %or.cond17.not
  br i1 %or.cond19, label %bb.u, label %.thread193

bb.u:                                             ; preds = %_ZL30IsKeyChordPotentiallyCharInputi.exit
  %i.ed = load i8, ptr %i.bz, align 4, !tbaa !239, !range !99, !noundef !236
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !222, !range !99, !noundef !236 ; 2 uses
  %.not175 = icmp eq i8 %i.ed, %i.ef
  br i1 %.not175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = and i32 %i.cd, 31
  %i.eh = shl nuw i32 1, %i.eg
  %i.ei = ashr i32 %i.cd, 5
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !237
  %i.em = or i32 %i.el, %i.eh
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !237
  %or.cond21 = or i1 %.1.i182, %.not
  %spec.select = select i1 %or.cond21, i8 %.0153221, i8 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1159 = phi i1 [ true, %bb.v ], [ %.0158220, %bb.u ]
  %.1154 = phi i8 [ %spec.select, %bb.v ], [ %.0153221, %bb.u ]
  store i8 %i.ef, ptr %i.bz, align 4, !tbaa !239
  %i.en = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.eo = load float, ptr %i.en, align 4, !tbaa !222
  %i.ep = getelementptr i8, ptr %i.by, i64 -7872
  store float %i.eo, ptr %i.ep, align 4, !tbaa !764
  br label %bb.ad

bb.x:                                             ; preds = %bb.d
  %i.eq = load i32, ptr %i.d, align 8, !tbaa !731
  %i.er = and i32 %i.eq, 64
  %.not172 = icmp eq i32 %i.er, 0
  br i1 %.not172, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %0, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.es = icmp ne i32 %.0145223, 0
  %i.et = trunc nuw i8 %.0167218 to i1
  %or.cond23 = select i1 %i.es, i1 true, i1 %i.et
  %i.eu = trunc nuw i8 %.0164219 to i1
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.eu
  %i.ev = trunc nuw i8 %.0153221 to i1
  %or.cond27 = select i1 %i.h, i1 %i.ev, i1 false
  %or.cond181 = select i1 %or.cond25, i1 true, i1 %or.cond27
  br i1 %or.cond181, label %.thread193, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.old = trunc nuw i8 %.0153221 to i1
  %or.cond27.old = select i1 %i.h, i1 %.old, i1 false
  br i1 %or.cond27.old, label %.thread193, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !222 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ey = icmp ult i32 %i.ex, 65536
  %i.ez = trunc i32 %i.ex to i16
  %i.fa = select i1 %i.ey, i16 %i.ez, i16 -3
  store i16 %i.fa, ptr %i.b, align 2, !tbaa !255
  call void @_ZN8ImVectorItE9push_backERKt(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %spec.select180 = select i1 %i.h, i8 1, i8 %.0149222
  %.pre = load i32, ptr %i.i, align 8, !tbaa !245
  br label %bb.ad

bb.ac:                                            ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !222, !range !99, !noundef !236
  %i.fd = xor i8 %i.fc, 1
  store i8 %i.fd, ptr %i.m, align 4, !tbaa !1420
  br label %bb.ad

bb.ad:                                            ; preds = %bb.e, %bb.m, %bb.x, %bb.w, %._crit_edge254, %.thread, %bb.d, %bb.ac, %bb.ab, %bb.l
  %i.fe = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.ac ], [ %.pre, %bb.ab ], [ %i.w, %bb.w ], [ %i.w, %bb.l ], [ %i.w, %._crit_edge254 ], [ %i.w, %.thread ], [ %i.w, %bb.x ], [ %i.w, %bb.m ], [ %i.w, %bb.e ] ; 2 uses
  %.3170.ph = phi i8 [ %.0167218, %bb.d ], [ %.0167218, %bb.ac ], [ %.0167218, %bb.ab ], [ %.0167218, %bb.w ], [ %.0167218, %bb.l ], [ %.0167218, %._crit_edge254 ], [ 1, %.thread ], [ %.0167218, %bb.x ], [ %.0167218, %bb.m ], [ %.0167218, %bb.e ]
  %.2166.ph = phi i8 [ %.0164219, %bb.d ], [ %.0164219, %bb.ac ], [ %.0164219, %bb.ab ], [ %.0164219, %bb.w ], [ 1, %bb.l ], [ %.0164219, %._crit_edge254 ], [ %.0164219, %.thread ], [ %.0164219, %bb.x ], [ %.0164219, %bb.m ], [ %.0164219, %bb.e ]
  %.5163.ph = phi i1 [ %.0158220, %bb.d ], [ %.0158220, %bb.ac ], [ %.0158220, %bb.ab ], [ %.1159, %bb.w ], [ %.0158220, %bb.l ], [ %.0158220, %._crit_edge254 ], [ %.0158220, %.thread ], [ %.0158220, %bb.x ], [ %.0158220, %bb.m ], [ %.0158220, %bb.e ]
  %.5.ph = phi i8 [ %.0153221, %bb.d ], [ %.0153221, %bb.ac ], [ %.0153221, %bb.ab ], [ %.1154, %bb.w ], [ %.0153221, %bb.l ], [ %.0153221, %._crit_edge254 ], [ %.0153221, %.thread ], [ %.0153221, %bb.x ], [ %.0153221, %bb.m ], [ %.0153221, %bb.e ]
  %.3152.ph = phi i8 [ %.0149222, %bb.d ], [ %.0149222, %bb.ac ], [ %spec.select180, %bb.ab ], [ %.0149222, %bb.w ], [ %.0149222, %bb.l ], [ %.0149222, %._crit_edge254 ], [ %.0149222, %.thread ], [ %.0149222, %bb.x ], [ %.0149222, %bb.m ], [ %.0149222, %bb.e ]
  %.3148.ph = phi i32 [ %.0145223, %bb.d ], [ %.0145223, %bb.ac ], [ %.0145223, %bb.ab ], [ %.0145223, %bb.w ], [ %.0145223, %bb.l ], [ %i.az, %._crit_edge254 ], [ %.0145223, %.thread ], [ %.0145223, %bb.x ], [ %.0145223, %bb.m ], [ %.0145223, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = add nuw nsw i32 %.0144224, 1            ; 2 uses
  %i.fg = sext i32 %i.fe to i64
  %i.fh = icmp slt i64 %indvars.iv.next, %i.fg
  br i1 %i.fh, label %bb.d, label %.lr.ph242, !llvm.loop !1417

.thread193:                                       ; preds = %bb.g, %bb.aa, %bb.z, %bb.k, %bb.i, %bb.j, %bb.p, %_ZL30IsKeyChordPotentiallyCharInputi.exit
  %i.fi = trunc nuw nsw i64 %indvars.iv to i32
  %.not245 = icmp eq i64 %indvars.iv, 0
  br i1 %.not245, label %._crit_edge..loopexit_crit_edge, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.ad, %.thread193
  %.0144.lcssa270 = phi i32 [ %i.fi, %.thread193 ], [ %i.ff, %bb.ad ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 5192
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %wide.trip.count = zext i32 %.0144.lcssa270 to i64
  br label %bb.ae

._crit_edge..loopexit_crit_edge:                  ; preds = %bb.c, %.thread193
  %.pre252 = load i32, ptr %i.i, align 8, !tbaa !245
  br label %.loopexit

bb.ae:                                            ; preds = %.lr.ph242, %bb.ae
  %indvars.iv246 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next247, %bb.ae ] ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !225
  %i.fm = getelementptr inbounds nuw [28 x i8], ptr %i.fl, i64 %indvars.iv246
  call void @_ZN8ImVectorI15ImGuiInputEventE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 4 dereferenceable(25) %i.fm)
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !1418

._crit_edge:                                      ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 10404
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !247
  %i.fp = and i32 %i.fo, 128
  %.not177 = icmp ne i32 %i.fp, 0
  %.pre253 = load i32, ptr %i.i, align 8, !tbaa !245 ; 2 uses
  %i.fq = icmp sgt i32 %.pre253, 0
  %or.cond280 = select i1 %.not177, i1 %i.fq, i1 false
  br i1 %or.cond280, label %.lr.ph244, label %.loopexit

.lr.ph244:                                        ; preds = %._crit_edge
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %.0.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %.0.i.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %.0.i.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.i.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.fs = zext i32 %.0144.lcssa270 to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph244, %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit
  %indvars.iv249 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next250, %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit ] ; 3 uses
  %i.ft = icmp samesign ult i64 %indvars.iv249, %i.fs
  %.str.122..str.123 = select i1 %i.ft, ptr @.str.122, ptr @.str.123 ; 7 uses
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !225
  %i.fv = getelementptr inbounds nuw [28 x i8], ptr %i.fu, i64 %indvars.iv249 ; 14 uses
  %i.fw = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !104
  switch i32 %i.fx, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit [
    i32 1, label %bb.ag
    i32 3, label %bb.an
    i32 2, label %bb.aq
    i32 4, label %bb.at
    i32 5, label %bb.ax
    i32 6, label %bb.bg
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !222 ; 2 uses
  %i.ga = fcmp oeq float %i.fz, f0xFF7FFFFF
  br i1 %i.ga, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !222
  %i.gd = fcmp oeq float %i.gc, f0xFF7FFFFF
  br i1 %i.gd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 10404
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !247
  %i.gg = and i32 %i.gf, 128
  %.not41.i = icmp eq i32 %i.gg, 0
  br i1 %.not41.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.748, ptr noundef nonnull %.str.122..str.123)
  br label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 10404
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !247
  %i.gj = and i32 %i.gi, 128
  %.not40.i = icmp eq i32 %i.gj, 0
  br i1 %.not40.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gk = fpext float %i.fz to double
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !222
  %i.gn = fpext float %i.gm to double
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !222 ; 2 uses
  %or.cond.i.i187 = icmp ugt i32 %i.gp, 2
  br i1 %or.cond.i.i187, label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL18GetMouseSourceName16ImGuiMouseSource.mouse_source_names, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !256
  br label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit.i

_ZL18GetMouseSourceName16ImGuiMouseSource.exit.i: ; preds = %bb.am, %bb.al
  %.0.i.i188 = phi ptr [ %i.gs, %bb.am ], [ @.str.75, %bb.al ]
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.749, ptr noundef nonnull %.str.122..str.123, double noundef %i.gk, double noundef %i.gn, ptr noundef %.0.i.i188)
  br label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit

bb.an:                                            ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 10404
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !247
  %i.gv = and i32 %i.gu, 128
  %.not39.i = icmp eq i32 %i.gv, 0
  br i1 %.not39.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !222
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !222, !range !99, !noundef !236
  %i.ha = trunc nuw i8 %i.gz to i1
  %i.hb = select i1 %i.ha, ptr @.str.751, ptr @.str.752
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !222 ; 2 uses
  %or.cond.i42.i = icmp ugt i32 %i.hd, 2
  br i1 %or.cond.i42.i, label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit44.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL18GetMouseSourceName16ImGuiMouseSource.mouse_source_names, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !256
  br label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit44.i

_ZL18GetMouseSourceName16ImGuiMouseSource.exit44.i: ; preds = %bb.ap, %bb.ao
  %.0.i43.i = phi ptr [ %i.hg, %bb.ap ], [ @.str.75, %bb.ao ]
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.750, ptr noundef nonnull %.str.122..str.123, i32 noundef %i.gx, ptr noundef nonnull %i.hb, ptr noundef %.0.i43.i)
  br label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit

bb.aq:                                            ; preds = %bb.af
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fw, i64 10404
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !247
  %i.hj = and i32 %i.hi, 128
  %.not38.i = icmp eq i32 %i.hj, 0
  br i1 %.not38.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.hl = load <2 x float>, ptr %i.hk, align 4, !tbaa !222
  %i.hm = fpext <2 x float> %i.hl to <2 x double> ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !222 ; 2 uses
  %or.cond.i45.i = icmp ugt i32 %i.ho, 2
  br i1 %or.cond.i45.i, label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit47.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL18GetMouseSourceName16ImGuiMouseSource.mouse_source_names, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !256
  br label %_ZL18GetMouseSourceName16ImGuiMouseSource.exit47.i

_ZL18GetMouseSourceName16ImGuiMouseSource.exit47.i: ; preds = %bb.as, %bb.ar
  %.0.i46.i = phi ptr [ %i.hr, %bb.as ], [ @.str.75, %bb.ar ]
  %i.hs = extractelement <2 x double> %i.hm, i64 0
  %i.ht = extractelement <2 x double> %i.hm, i64 1
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.753, ptr noundef nonnull %.str.122..str.123, double noundef %i.hs, double noundef %i.ht, ptr noundef %.0.i46.i)
  br label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit

bb.at:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fw, i64 10404
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !247
  %i.hw = and i32 %i.hv, 128
  %.not37.i = icmp eq i32 %i.hw, 0
  br i1 %.not37.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !222 ; 6 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = and i32 %i.hy, 61440
  %.not.i.i183 = icmp ne i32 %i.ia, 0
  %i.ib = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.hy)
  %i.ic = icmp eq i32 %i.ib, 1
  %or.cond.i48.i = select i1 %.not.i.i183, i1 %i.ic, i1 false
  br i1 %or.cond.i48.i, label %.split.i.i.i184, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i.i

.split.i.i.i184:                                  ; preds = %bb.av
  %i.id = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hy, i1 true) ; 2 uses
  %i.ie = and i32 %i.id, 28
  %i.if = icmp eq i32 %i.ie, 12
  %switch.offset.i.i.i185 = add nuw nsw i32 %i.id, 651
  %spec.select.i.i.i186 = select i1 %i.if, i32 %switch.offset.i.i.i185, i32 %i.hy
  br label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i.i

_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i.i: ; preds = %.split.i.i.i184, %bb.av
  %.0.i49.i = phi i32 [ %i.hy, %bb.av ], [ %spec.select.i.i.i186, %.split.i.i.i184 ] ; 2 uses
  %i.ig = add i32 %.0.i49.i, -512
  %i.ih = icmp ult i32 %i.ig, 155
  br i1 %i.ih, label %bb.aw, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i

bb.aw:                                            ; preds = %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i.i
  %i.ii = zext nneg i32 %.0.i49.i to i64
  %i.ij = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %i.ii
end_hunk_0
