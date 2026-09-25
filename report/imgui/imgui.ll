Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN8ImVectorI15ImGuiInputEventE6resizeEi:bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.ba = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = sext i16 %i.aw to i32
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = srem i32 %i.bc, 6                       ; 2 uses
  %i.be = trunc nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.av, align 4, !tbaa !229
  %i.bf = sext i32 %i.bd to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bf ; 3 uses
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !231
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 0, ptr %i.bh, align 2, !tbaa !233
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bj = phi i16 [ 1, %bb.j ], [ %i.ba, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bk = phi i64 [ %i.bf, %bb.j ], [ %i.ax, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  store i16 %i.bj, ptr %i.bm, align 2, !tbaa !233
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 10600 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !235
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bq = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.br = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bq(ptr noundef %i.aq, ptr noundef %i.br), !inline_history !1
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.l, ptr %i.al, align 8, !tbaa !225
  store i32 %i.g, ptr %i.a, align 4, !tbaa !224
  br label %_ZN8ImVectorI15ImGuiInputEventE7reserveEi.exit

_ZN8ImVectorI15ImGuiInputEventE7reserveEi.exit:   ; preds = %bb.k, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17UpdateInputEventsEb(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 4                 ; 12 uses
  %1 = alloca %struct.ImBitArray.59, align 4      ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 43 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 10916
  %i.f = load i32, ptr %i.e, align 4, !tbaa !588
  %i.g = icmp eq i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5176 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge..loopexit_crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3036
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 3040
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.p = ptrtoint ptr %i.o to i64
  %.not = xor i1 %i.h, true
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 292 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 227
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ad
  %i.w = phi i32 [ %i.j, %.lr.ph ], [ %i.ez, %bb.ad ] ; 9 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 4 uses
  %.0144224 = phi i32 [ 0, %.lr.ph ], [ %i.fa, %bb.ad ]
  %.0145223 = phi i32 [ 0, %.lr.ph ], [ %.3148.ph, %bb.ad ] ; 15 uses
  %.0149222 = phi i8 [ 0, %.lr.ph ], [ %.3152.ph, %bb.ad ] ; 12 uses
  %.0153221 = phi i8 [ 0, %.lr.ph ], [ %.5.ph, %bb.ad ] ; 13 uses
  %.0158220 = phi i1 [ false, %.lr.ph ], [ %.5163.ph, %bb.ad ] ; 11 uses
  %.0164219 = phi i8 [ 0, %.lr.ph ], [ %.2166.ph, %bb.ad ] ; 12 uses
  %.0167218 = phi i8 [ 0, %.lr.ph ], [ %.3170.ph, %bb.ad ] ; 12 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !225
  %i.y = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv ; 16 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !104
  switch i32 %i.z, label %bb.ad [
    i32 1, label %bb.e
    i32 3, label %bb.h
    i32 2, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.x
    i32 6, label %bb.ac
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !836, !range !99, !noundef !236
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !tbaa !222
  br i1 %0, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ne i32 %.0145223, 0
  %i.af = trunc nuw i8 %.0164219 to i1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  %or.cond5 = select i1 %or.cond, i1 true, i1 %.0158220
  %i.ag = trunc nuw i8 %.0149222 to i1
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.ag
  br i1 %or.cond7, label %.thread193, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  store <2 x i32> %i.ad, ptr %i.v, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !222
  store i32 %i.ai, ptr %i.s, align 8, !tbaa !837
  br label %bb.ad

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !222 ; 2 uses
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  br i1 %0, label %bb.i, label %._crit_edge254

bb.i:                                             ; preds = %bb.h
  %i.am = and i32 %i.al, %.0145223
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = trunc nuw i8 %.0164219 to i1
  %or.cond9 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond9, label %.thread193, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !222
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = trunc nuw i8 %.0167218 to i1
  %or.cond11 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond11, label %.thread193, label %._crit_edge254

._crit_edge254:                                   ; preds = %bb.h, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.au = load i8, ptr %i.at, align 4, !tbaa !222, !range !99, !noundef !236
  %i.av = sext i32 %i.ak to i64
  %i.aw = getelementptr inbounds i8, ptr %i.t, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !243
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !222
  store i32 %i.ay, ptr %i.s, align 8, !tbaa !837
  %i.az = or i32 %i.al, %.0145223
  br label %bb.ad

bb.k:                                             ; preds = %bb.d
  %i.ba = trunc nuw i8 %.0167218 to i1
  %i.bb = icmp ne i32 %.0145223, 0
  %or.cond13 = select i1 %i.ba, i1 true, i1 %i.bb
  %or.cond179 = select i1 %0, i1 %or.cond13, i1 false
  br i1 %or.cond179, label %.thread193, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !222
  %i.be = load float, ptr %i.q, align 4, !tbaa !765
  %i.bf = fadd float %i.bd, %i.be
  store float %i.bf, ptr %i.q, align 4, !tbaa !765
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !222
  %i.bi = load float, ptr %i.r, align 8, !tbaa !766
  %i.bj = fadd float %i.bh, %i.bi
  store float %i.bj, ptr %i.r, align 8, !tbaa !766
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !222
  store i32 %i.bl, ptr %i.s, align 8, !tbaa !837
  br label %bb.ad

bb.m:                                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !731
  %i.bn = and i32 %i.bm, 64
  %.not173 = icmp eq i32 %i.bn, 0
  br i1 %.not173, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !222 ; 8 uses
  %i.bq = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %i.br = and i32 %i.bp, 61440
  %.not.i.i = icmp ne i32 %i.br, 0
  %i.bs = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bp)
  %i.bt = icmp eq i32 %i.bs, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.bt, i1 false
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
  %i.db = or disjoint i32 %spec.select.i, %i.cw
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = or i32 %i.dc, %i.bp                     ; 2 uses
  %i.de = and i32 %i.dd, 20480
  %or.cond.i = icmp eq i32 %i.de, 4096
  br i1 %or.cond.i, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = and i32 %i.dd, 4096
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !244, !range !99, !noundef !236
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = and i1 %i.dg, %i.dj
  br i1 %i.dk, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = and i32 %i.bp, -61441                   ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZL30IsKeyChordPotentiallyCharInputi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bq, i64 5544
  %i.do = add nsw i32 %i.dl, -512
  %i.dp = ashr i32 %i.do, 5
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !237
  %i.dt = and i32 %i.bp, 31
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = and i32 %i.ds, %i.du
  %i.dw = icmp ne i32 %i.dv, 0
  br label %_ZL30IsKeyChordPotentiallyCharInputi.exit

_ZL30IsKeyChordPotentiallyCharInputi.exit:        ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.1.i182 = phi i1 [ false, %bb.r ], [ false, %bb.s ], [ %i.dw, %bb.t ], [ false, %bb.q ] ; 2 uses
  %i.dx = trunc nuw i8 %.0149222 to i1
  %or.cond17 = select i1 %i.h, i1 %i.dx, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = or i1 %.1.i182, %or.cond17.not
  br i1 %or.cond19, label %bb.u, label %.thread193

bb.u:                                             ; preds = %_ZL30IsKeyChordPotentiallyCharInputi.exit
  %i.dy = load i8, ptr %i.bz, align 4, !tbaa !239, !range !99, !noundef !236
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !222, !range !99, !noundef !236 ; 2 uses
  %.not175 = icmp eq i8 %i.dy, %i.ea
  br i1 %.not175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = and i32 %i.cd, 31
  %i.ec = shl nuw i32 1, %i.eb
  %i.ed = ashr i32 %i.cd, 5
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !237
  %i.eh = or i32 %i.eg, %i.ec
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !237
  %or.cond21 = or i1 %.1.i182, %.not
  %spec.select = select i1 %or.cond21, i8 %.0153221, i8 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1159 = phi i1 [ true, %bb.v ], [ %.0158220, %bb.u ]
  %.1154 = phi i8 [ %spec.select, %bb.v ], [ %.0153221, %bb.u ]
  store i8 %i.ea, ptr %i.bz, align 4, !tbaa !239
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !222
  %i.ek = getelementptr i8, ptr %i.by, i64 -7872
  store float %i.ej, ptr %i.ek, align 4, !tbaa !764
  br label %bb.ad

bb.x:                                             ; preds = %bb.d
  %i.el = load i32, ptr %i.d, align 8, !tbaa !731
  %i.em = and i32 %i.el, 64
  %.not172 = icmp eq i32 %i.em, 0
  br i1 %.not172, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %0, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = icmp ne i32 %.0145223, 0
  %i.eo = trunc nuw i8 %.0167218 to i1
  %or.cond23 = select i1 %i.en, i1 true, i1 %i.eo
  %i.ep = trunc nuw i8 %.0164219 to i1
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.ep
  %i.eq = trunc nuw i8 %.0153221 to i1
  %or.cond27 = select i1 %i.h, i1 %i.eq, i1 false
  %or.cond181 = select i1 %or.cond25, i1 true, i1 %or.cond27
  br i1 %or.cond181, label %.thread193, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.old = trunc nuw i8 %.0153221 to i1
  %or.cond27.old = select i1 %i.h, i1 %.old, i1 false
  br i1 %or.cond27.old, label %.thread193, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !222 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.et = icmp ult i32 %i.es, 65536
  %i.eu = trunc i32 %i.es to i16
  %i.ev = select i1 %i.et, i16 %i.eu, i16 -3
  store i16 %i.ev, ptr %i.b, align 2, !tbaa !255
  call void @_ZN8ImVectorItE9push_backERKt(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %spec.select180 = select i1 %i.h, i8 1, i8 %.0149222
  %.pre = load i32, ptr %i.i, align 8, !tbaa !245
  br label %bb.ad

bb.ac:                                            ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !222, !range !99, !noundef !236
  %i.ey = xor i8 %i.ex, 1
  store i8 %i.ey, ptr %i.m, align 4, !tbaa !1420
  br label %bb.ad

bb.ad:                                            ; preds = %bb.e, %bb.m, %bb.x, %bb.w, %._crit_edge254, %.thread, %bb.d, %bb.ac, %bb.ab, %bb.l
  %i.ez = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.ac ], [ %.pre, %bb.ab ], [ %i.w, %bb.w ], [ %i.w, %bb.l ], [ %i.w, %._crit_edge254 ], [ %i.w, %.thread ], [ %i.w, %bb.x ], [ %i.w, %bb.m ], [ %i.w, %bb.e ] ; 2 uses
  %.3170.ph = phi i8 [ %.0167218, %bb.d ], [ %.0167218, %bb.ac ], [ %.0167218, %bb.ab ], [ %.0167218, %bb.w ], [ %.0167218, %bb.l ], [ %.0167218, %._crit_edge254 ], [ 1, %.thread ], [ %.0167218, %bb.x ], [ %.0167218, %bb.m ], [ %.0167218, %bb.e ]
  %.2166.ph = phi i8 [ %.0164219, %bb.d ], [ %.0164219, %bb.ac ], [ %.0164219, %bb.ab ], [ %.0164219, %bb.w ], [ 1, %bb.l ], [ %.0164219, %._crit_edge254 ], [ %.0164219, %.thread ], [ %.0164219, %bb.x ], [ %.0164219, %bb.m ], [ %.0164219, %bb.e ]
  %.5163.ph = phi i1 [ %.0158220, %bb.d ], [ %.0158220, %bb.ac ], [ %.0158220, %bb.ab ], [ %.1159, %bb.w ], [ %.0158220, %bb.l ], [ %.0158220, %._crit_edge254 ], [ %.0158220, %.thread ], [ %.0158220, %bb.x ], [ %.0158220, %bb.m ], [ %.0158220, %bb.e ]
  %.5.ph = phi i8 [ %.0153221, %bb.d ], [ %.0153221, %bb.ac ], [ %.0153221, %bb.ab ], [ %.1154, %bb.w ], [ %.0153221, %bb.l ], [ %.0153221, %._crit_edge254 ], [ %.0153221, %.thread ], [ %.0153221, %bb.x ], [ %.0153221, %bb.m ], [ %.0153221, %bb.e ]
  %.3152.ph = phi i8 [ %.0149222, %bb.d ], [ %.0149222, %bb.ac ], [ %spec.select180, %bb.ab ], [ %.0149222, %bb.w ], [ %.0149222, %bb.l ], [ %.0149222, %._crit_edge254 ], [ %.0149222, %.thread ], [ %.0149222, %bb.x ], [ %.0149222, %bb.m ], [ %.0149222, %bb.e ]
  %.3148.ph = phi i32 [ %.0145223, %bb.d ], [ %.0145223, %bb.ac ], [ %.0145223, %bb.ab ], [ %.0145223, %bb.w ], [ %.0145223, %bb.l ], [ %i.az, %._crit_edge254 ], [ %.0145223, %.thread ], [ %.0145223, %bb.x ], [ %.0145223, %bb.m ], [ %.0145223, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = add nuw nsw i32 %.0144224, 1            ; 2 uses
  %i.fb = sext i32 %i.ez to i64
  %i.fc = icmp slt i64 %indvars.iv.next, %i.fb
  br i1 %i.fc, label %bb.d, label %.lr.ph242, !llvm.loop !1417

.thread193:                                       ; preds = %bb.g, %bb.aa, %bb.z, %bb.k, %bb.i, %bb.j, %bb.p, %_ZL30IsKeyChordPotentiallyCharInputi.exit
  %i.fd = trunc nuw nsw i64 %indvars.iv to i32
  %.not245 = icmp eq i64 %indvars.iv, 0
  br i1 %.not245, label %._crit_edge..loopexit_crit_edge, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.ad, %.thread193
  %.0144.lcssa270 = phi i32 [ %i.fd, %.thread193 ], [ %i.fa, %bb.ad ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 5192
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %wide.trip.count = zext i32 %.0144.lcssa270 to i64
  br label %bb.ae

._crit_edge..loopexit_crit_edge:                  ; preds = %bb.c, %.thread193
  %.pre252 = load i32, ptr %i.i, align 8, !tbaa !245
  br label %.loopexit

bb.ae:                                            ; preds = %.lr.ph242, %bb.ae
  %indvars.iv246 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next247, %bb.ae ] ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !225
  %i.fh = getelementptr inbounds nuw [28 x i8], ptr %i.fg, i64 %indvars.iv246
  call void @_ZN8ImVectorI15ImGuiInputEventE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 4 dereferenceable(25) %i.fh)
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !1418

._crit_edge:                                      ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 10404
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !247
  %i.fk = and i32 %i.fj, 128
  %.not177 = icmp ne i32 %i.fk, 0
  %.pre253 = load i32, ptr %i.i, align 8, !tbaa !245 ; 2 uses
  %i.fl = icmp sgt i32 %.pre253, 0
  %or.cond280 = select i1 %.not177, i1 %i.fl, i1 false
  br i1 %or.cond280, label %.lr.ph244, label %.loopexit

.lr.ph244:                                        ; preds = %._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %.0.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %.0.i.i.sroa.gep51.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %.0.i.i.sroa.gep52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.i.i.sroa.gep53.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.fn = zext i32 %.0144.lcssa270 to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph244, %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit
  %indvars.iv249 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next250, %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit ] ; 3 uses
  %i.fo = icmp samesign ult i64 %indvars.iv249, %i.fn
  %.str.122..str.123 = select i1 %i.fo, ptr @.str.122, ptr @.str.123 ; 7 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !225
  %i.fq = getelementptr inbounds nuw [28 x i8], ptr %i.fp, i64 %indvars.iv249 ; 14 uses
  %i.fr = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !104
  switch i32 %i.fs, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit [
    i32 1, label %bb.ag
    i32 3, label %bb.an
    i32 2, label %bb.aq
    i32 4, label %bb.at
    i32 5, label %bb.ax
    i32 6, label %bb.bg
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !222 ; 2 uses
  %i.fv = fcmp oeq float %i.fu, f0xFF7FFFFF
  br i1 %i.fv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !222
  %i.fy = fcmp oeq float %i.fx, f0xFF7FFFFF
  br i1 %i.fy, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 10404
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !247
  %i.gb = and i32 %i.ga, 128
  %.not41.i = icmp eq i32 %i.gb, 0
  br i1 %.not41.i, label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.748, ptr noundef nonnull %.str.122..str.123)
  br label %_ZL20DebugPrintInputEventPKcPK15ImGuiInputEvent.exit

bb.ak:                                            ; preds = %bb.ah, %bb.ag
end_hunk_0
