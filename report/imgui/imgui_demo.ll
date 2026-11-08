Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN17ExampleAppConsole11ExecCommandEPKc:bb.a
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !51 ; 4 uses
  %i.cd = icmp ne i32 %i.by, %i.cc
  %.not9.i23 = icmp eq i8 %i.bz, 0                ; 2 uses
  %or.cond10.i24 = or i1 %.not9.i23, %i.cd
  br i1 %or.cond10.i24, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25

toupper.exit.i25:                                 ; preds = %_ZN8ImVectorIPcE9push_backERKS0_.exit, %toupper.exit.i25
  %.012.i26 = phi ptr [ %i.cf, %toupper.exit.i25 ], [ @.str.2127, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %.0511.i27 = phi ptr [ %i.ce, %toupper.exit.i25 ], [ %1, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0511.i27, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i26, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !120
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !120 ; 2 uses
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51 ; 2 uses
  %i.co = icmp ne i32 %i.cj, %i.cn
  %.not.i28 = icmp eq i8 %i.ck, 0
  %or.cond.i29 = or i1 %.not.i28, %i.co
  br i1 %or.cond.i29, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25, !llvm.loop !491

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32:     ; preds = %toupper.exit.i25, %_ZN8ImVectorIPcE9push_backERKS0_.exit
  %.lcssa8.i30 = phi i32 [ %i.by, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cj, %toupper.exit.i25 ]
  %.lcssa.i31 = phi i32 [ %i.cc, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cn, %toupper.exit.i25 ]
  %i.cp = icmp eq i32 %.lcssa8.i30, %.lcssa.i31
  br i1 %i.cp, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !218
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !219 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i33, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.cw, align 4, !tbaa !220
  store i32 0, ptr %i.cq, align 8, !tbaa !221
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cv)
  store ptr null, ptr %i.cu, align 8, !tbaa !219
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !219
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !101
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cz)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = load i32, ptr %i.cq, align 8, !tbaa !218
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.db
  br i1 %i.dc, label %bb.k, label %._crit_edge.i, !llvm.loop !4

bb.l:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !51 ; 2 uses
  %i.df = icmp ne i32 %i.de, %i.cc
  %or.cond10.i35 = or i1 %.not9.i23, %i.df
  br i1 %or.cond10.i35, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, label %toupper.exit.i36

toupper.exit.i36:                                 ; preds = %bb.l, %toupper.exit.i36
  %.012.i37 = phi ptr [ %i.dh, %toupper.exit.i36 ], [ @.str.2125, %bb.l ]
  %.0511.i38 = phi ptr [ %i.dg, %toupper.exit.i36 ], [ %1, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0511.i38, i64 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i37, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !120
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !51 ; 2 uses
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !120 ; 2 uses
  %i.dn = sext i8 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51 ; 2 uses
  %i.dq = icmp ne i32 %i.dl, %i.dp
  %.not.i39 = icmp eq i8 %i.dm, 0
  %or.cond.i40 = or i1 %.not.i39, %i.dq
  br i1 %or.cond.i40, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, label %toupper.exit.i36, !llvm.loop !491

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43:     ; preds = %bb.l
  %i.dr = icmp eq i32 %i.de, %i.cc
  br i1 %i.dr, label %bb.m, label %.critedge

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread: ; preds = %toupper.exit.i36
  %i.ds = icmp eq i32 %i.dl, %i.dp
  br i1 %i.ds, label %bb.m, label %toupper.exit.i46

bb.m:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2151)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !230
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph67, label %_ZN17ExampleAppConsole8ClearLogEv.exit

.lr.ph67:                                         ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph67, %bb.n
  %indvars.iv83 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next84, %bb.n ] ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !225
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv83
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2152, ptr noundef %i.dz)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ea = load i32, ptr %i.dt, align 8, !tbaa !230
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next84, %i.eb
  br i1 %i.ec, label %bb.n, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !492

toupper.exit.i46:                                 ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %toupper.exit.i46
  %.012.i47 = phi ptr [ %i.ee, %toupper.exit.i46 ], [ @.str.2126, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %.0511.i48 = phi ptr [ %i.ed, %toupper.exit.i46 ], [ %1, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0511.i48, i64 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i47, i64 1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !120
  %i.eg = sext i8 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !51 ; 2 uses
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !120 ; 2 uses
  %i.ek = sext i8 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !51 ; 2 uses
  %i.en = icmp ne i32 %i.ei, %i.em
  %.not.i49 = icmp eq i8 %i.ej, 0
  %or.cond.i50 = or i1 %.not.i49, %i.en
  br i1 %or.cond.i50, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit, label %toupper.exit.i46, !llvm.loop !491

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit: ; preds = %toupper.exit.i46
  %i.eo = icmp eq i32 %i.ei, %i.em
  br i1 %i.eo, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit
  %i.ep = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 10) ; 2 uses
  %i.eq = add nsw i32 %i.ep, -10
  %.not = icmp sgt i32 %i.eq, %i.bt
  br i1 %.not, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = add nsw i64 %i.er, -10
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv80 = phi i64 [ %i.es, %.lr.ph ], [ %indvars.iv.next81, %bb.p ] ; 3 uses
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !101
  %i.ew = trunc nuw nsw i64 %indvars.iv80 to i32
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2153, i32 noundef %i.ew, ptr noundef %i.ev)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ex = load i32, ptr %i.b, align 8, !tbaa !228
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next81, %i.ey
  br i1 %i.ez, label %bb.p, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !493

.critedge:                                        ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2154, ptr noundef nonnull %1)
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

_ZN17ExampleAppConsole8ClearLogEv.exit:           ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.j, %._crit_edge.i, %.critedge
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 593
  store i8 1, ptr %i.fa, align 1, !tbaa !227
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ImVector.27, align 8        ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203
  switch i32 %i.b, label %.thread111 [
    i32 262144, label %bb.b
    i32 524288, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !204  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 6 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph176, label %.thread

bb.c:                                             ; preds = %.lr.ph176
  %indvars.iv.next140 = add i32 %indvars.iv139173, 1 ; 2 uses
  %i.j = icmp ugt ptr %i.k, %i.d
  br i1 %i.j, label %.lr.ph176, label %.thread.loopexit

.lr.ph176:                                        ; preds = %bb.b, %bb.c
  %.089174 = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %indvars.iv139173 = phi i32 [ %indvars.iv.next140, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.089174, i64 -1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !120
  switch i8 %i.l, label %bb.c [
    i8 59, label %.thread.loopexit
    i8 44, label %.thread.loopexit
    i8 32, label %.thread.loopexit
    i8 9, label %.thread.loopexit
  ]

.thread.loopexit:                                 ; preds = %.lr.ph176, %.lr.ph176, %.lr.ph176, %.lr.ph176, %bb.c
  %indvars.iv139.lcssa.ph = phi i32 [ %indvars.iv.next140, %bb.c ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ]
  %.089.lcssa.ph = phi ptr [ %i.k, %bb.c ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ]
  %3 = sext i32 %indvars.iv139.lcssa.ph to i64
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b
  %indvars.iv139.lcssa = phi i64 [ 0, %bb.b ], [ %3, %.thread.loopexit ]
  %.089.lcssa = phi ptr [ %i.h, %bb.b ], [ %.089.lcssa.ph, %.thread.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !230  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %.089.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  switch i32 %i.bm, label %.lr.ph125.us.preheader [
    i32 0, label %._crit_edge.thread
    i32 1, label %bb.i
  ]

bb.d:                                             ; preds = %.lr.ph, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  %i.w = phi i32 [ %i.n, %.lr.ph ], [ %i.bk, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ]
  %i.x = phi ptr [ null, %.lr.ph ], [ %.pre.i148, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 5 uses
  %i.y = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 9 uses
  %i.z = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !225
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  br i1 %i.u, label %toupper.exit.lr.ph.i, label %.loopexit117

toupper.exit.lr.ph.i:                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101
  %i.ad = tail call ptr @__ctype_toupper_loc() #33
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !229 ; 2 uses
  br label %toupper.exit.i

toupper.exit.i:                                   ; preds = %bb.e, %toupper.exit.lr.ph.i
  %.0716.i = phi i32 [ %i.t, %toupper.exit.lr.ph.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.0815.i = phi ptr [ %.089.lcssa, %toupper.exit.lr.ph.i ], [ %i.ap, %bb.e ] ; 2 uses
  %.0914.i = phi ptr [ %i.ac, %toupper.exit.lr.ph.i ], [ %i.ao, %bb.e ] ; 2 uses
  %i.af = load i8, ptr %.0815.i, align 1, !tbaa !120
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = load i8, ptr %.0914.i, align 1, !tbaa !120 ; 2 uses
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = icmp eq i32 %i.ai, %i.am
  br i1 %i.an, label %bb.e, label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

bb.e:                                             ; preds = %toupper.exit.i
  %.not.i = icmp ne i8 %i.aj, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0815.i, i64 1
  %i.aq = add nsw i32 %.0716.i, -1
  %i.ar = icmp sgt i32 %.0716.i, 1
  %or.cond.i = select i1 %.not.i, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %toupper.exit.i, label %.loopexit117, !llvm.loop !494

.loopexit117:                                     ; preds = %bb.e, %bb.d
  %i.as = icmp eq i32 %i.z, %i.y
  br i1 %i.as, label %bb.f, label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

bb.f:                                             ; preds = %.loopexit117
  %i.at = add nsw i32 %i.y, 1
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sdiv i32 %i.y, 2
  %i.av = add nsw i32 %i.au, %i.y
  br label %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i:      ; preds = %bb.g, %bb.f
  %i.aw = phi i32 [ %i.av, %bb.g ], [ 8, %bb.f ]
  %i.ax = tail call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 %i.at) ; 3 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.az)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %.noexc102, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.bb = sext i32 %i.y to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ba, ptr nonnull align 8 %i.x, i64 %i.bc, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.x)
          to label %..noexc102_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc102_crit_edge:                             ; preds = %bb.h
  %.pre3.i.pre = load i32, ptr %2, align 8, !tbaa !223
  br label %.noexc102

.noexc102:                                        ; preds = %..noexc102_crit_edge, %.noexc
  %.pre3.i = phi i32 [ %.pre3.i.pre, %..noexc102_crit_edge ], [ %i.y, %.noexc ]
  store ptr %i.ba, ptr %.phi.trans.insert.i, align 8, !tbaa !225
  store i32 %i.ax, ptr %i.v, align 4, !tbaa !224
  br label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

_ZN8ImVectorIPKcE9push_backERKS1_.exit:           ; preds = %.loopexit117, %.noexc102
  %.pre.i149 = phi ptr [ %i.ba, %.noexc102 ], [ %i.x, %.loopexit117 ] ; 2 uses
  %i.bd = phi i32 [ %i.ax, %.noexc102 ], [ %i.y, %.loopexit117 ]
  %i.be = phi i32 [ %.pre3.i, %.noexc102 ], [ %i.z, %.loopexit117 ]
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.pre.i149, i64 %i.bf
  %i.bh = load i64, ptr %i.ab, align 8
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bi = load i32, ptr %2, align 8, !tbaa !223
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr %2, align 8, !tbaa !223
  %.pre = load i32, ptr %i.m, align 8, !tbaa !230
  br label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit:     ; preds = %toupper.exit.i, %_ZN8ImVectorIPKcE9push_backERKS1_.exit
  %i.bk = phi i32 [ %.pre, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.w, %toupper.exit.i ] ; 2 uses
  %.pre.i148 = phi ptr [ %.pre.i149, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.x, %toupper.exit.i ]
  %i.bl = phi i32 [ %i.bd, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.y, %toupper.exit.i ]
  %i.bm = phi i32 [ %i.bj, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.z, %toupper.exit.i ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bk to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.d, label %._crit_edge, !llvm.loop !495

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.bp = ptrtoint ptr %i.h to i64
  %i.bq = ptrtoint ptr %.089.lcssa to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2146, i32 noundef %i.bs, ptr noundef %.089.lcssa)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.bu = ptrtoint ptr %.089.lcssa to i64         ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = ptrtoint ptr %i.h to i64
  %i.bz = sub i64 %i.by, %i.bu
  %i.ca = trunc i64 %i.bz to i32
  invoke void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.bx, i32 noundef %i.ca)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.e, align 8, !tbaa !204
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !225 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.cb, ptr noundef %i.ce, ptr noundef null)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.cf = load i32, ptr %i.e, align 8, !tbaa !204
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.cf, ptr noundef nonnull @.str.2147, ptr noundef null)
          to label %.loopexit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph125.us.preheader:                           ; preds = %._crit_edge
  %i.cg = ptrtoint ptr %i.h to i64
  %i.ch = ptrtoint ptr %.089.lcssa to i64         ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp sgt i32 %i.bm, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 5 uses
  tail call void @llvm.assume(i1 %i.ck)
  %i.cn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !101
  %i.cp = tail call ptr @__ctype_toupper_loc() #33
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !229
  %.not162 = icmp eq i32 %i.bm, 1
  br label %toupper.exit.us.peel

toupper.exit.us.peel:                             ; preds = %._crit_edge126.us, %.lr.ph125.us.preheader
  %indvars.iv141 = phi i64 [ %indvars.iv139.lcssa, %.lr.ph125.us.preheader ], [ %indvars.iv.next142, %._crit_edge126.us ] ; 5 uses
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %indvars.iv141
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !120
  %i.ct = sext i8 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !51 ; 2 uses
  br i1 %.not162, label %._crit_edge126.us, label %.peel.next

.peel.next:                                       ; preds = %toupper.exit.us.peel
  %i.cw = icmp eq i32 %i.cv, 0
  br label %bb.l

bb.l:                                             ; preds = %toupper.exit.us, %.peel.next
  %indvars.iv135 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next136, %toupper.exit.us ] ; 2 uses
  br i1 %i.cw, label %.split128.us, label %toupper.exit105.us

toupper.exit105.us:                               ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv135
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !101
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %indvars.iv141
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !120
  %i.db = tail call ptr @__ctype_toupper_loc() #33
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !229
  %i.dd = sext i8 %i.da to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51
  %.not99.us = icmp eq i32 %i.cv, %i.df
  br i1 %.not99.us, label %toupper.exit.us, label %.split128.us

toupper.exit.us:                                  ; preds = %toupper.exit105.us
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next136, %i.cn
  br i1 %i.dg, label %bb.l, label %._crit_edge126.us, !llvm.loop !496

._crit_edge126.us:                                ; preds = %toupper.exit.us, %toupper.exit.us.peel
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1
  br label %toupper.exit.us.peel

.split128.us:                                     ; preds = %bb.l, %toupper.exit105.us
  %i.dh = icmp sgt i64 %indvars.iv141, 0
  br i1 %i.dh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.split128.us
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.ch, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  invoke void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.dl, i32 noundef %i.cj)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.dm = load i32, ptr %i.e, align 8, !tbaa !204
  %i.dn = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 2 uses
  %i.do = and i64 %indvars.iv141, 4294967295
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dp)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n, %.split128.us
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2148)
          to label %.lr.ph130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph130:                                        ; preds = %bb.o, %bb.p
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv144
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !101
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2149, ptr noundef %i.dr)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph130
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next145, %i.cn
  br i1 %i.ds, label %.lr.ph130, label %.loopexit.thread, !llvm.loop !497

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph130, %bb.h, %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i, %._crit_edge.thread, %bb.i, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ImVectorIPKcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp191

.loopexit:                                        ; preds = %._crit_edge.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre151 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !225 ; 2 uses
  %.not.i106 = icmp eq ptr %.pre151, null
  br i1 %.not.i106, label %_ZN8ImVectorIPKcED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.p, %bb.k, %.loopexit
  %i.dt = phi ptr [ %.pre151, %.loopexit ], [ %i.cd, %bb.k ], [ %i.cm, %bb.p ]
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dt)
          to label %_ZN8ImVectorIPKcED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #31
  unreachable

_ZN8ImVectorIPKcED2Ev.exit:                       ; preds = %.loopexit, %.loopexit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread111

bb.r:                                             ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !222 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !205
  switch i32 %i.dz, label %.thread111 [
    i32 515, label %bb.s
    i32 516, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp eq i32 %i.dx, -1
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !228
  %i.ed = add nsw i32 %i.ec, -1
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.dx, 0
  br i1 %i.ee, label %.thread115, label %.thread111

.thread115:                                       ; preds = %bb.u
  %i.ef = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.dw, align 8, !tbaa !222
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %.not = icmp eq i32 %i.dx, -1
  br i1 %.not, label %.thread111, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = add nuw nsw i32 %i.dx, 1                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !228
  %.not96 = icmp slt i32 %i.eg, %i.ei
  %spec.store.select = select i1 %.not96, i32 %i.eg, i32 -1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.t
  %spec.store.select.sink = phi i32 [ %spec.store.select, %bb.w ], [ %i.ed, %bb.t ] ; 4 uses
  store i32 %spec.store.select.sink, ptr %i.dw, align 8, !tbaa !222
  %.not97 = icmp eq i32 %i.dx, %spec.store.select.sink
  br i1 %.not97, label %.thread111, label %bb.x

bb.x:                                             ; preds = %thread-pre-split
  %i.ej = icmp sgt i32 %spec.store.select.sink, -1
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread115, %bb.x
  %i.ek = phi i32 [ %i.ef, %.thread115 ], [ %spec.store.select.sink, %bb.x ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !219
  %i.en = zext nneg i32 %i.ek to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !101
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.eq = phi ptr [ %i.ep, %bb.y ], [ @.str.157, %bb.x ]
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.es = load i32, ptr %i.er, align 8, !tbaa !206
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef 0, i32 noundef %i.es)
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef 0, ptr noundef %i.eq, ptr noundef null)
  br label %.thread111

.thread111:                                       ; preds = %bb.u, %bb.v, %bb.r, %thread-pre-split, %bb.z, %_ZN8ImVectorIPKcED2Ev.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13ExampleAppLogC2Ev(ptr noundef nonnull align 8 dereferenceable(313) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN15ImGuiTextFilterC1EPKc(ptr noundef nonnull align 8 dereferenceable(276) %i.a, ptr noundef nonnull @.str.157)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %i.c, align 8, !tbaa !232
  invoke void @_ZN13ExampleAppLog5ClearEv(ptr noundef nonnull align 8 dereferenceable(313) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.f
end_hunk_0
begin_hunk_1_@_ZN20ExampleAssetsBrowser4DrawEPKcPb:bb.a
  br i1 %i.cz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.da = fmul nnan float %i.cw, 5.000000e-01
  %i.db = call float @llvm.floor.f32(float %i.da)
  %i.dc = fadd float %.sroa.063.0.vec.extract, %i.db
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i = phi float [ %i.dc, %bb.am ], [ %.sroa.063.0.vec.extract, %bb.al ] ; 2 uses
  %i.dd = load float, ptr %i.d, align 8, !tbaa !243
  %i.de = call float @llvm.floor.f32(float %i.dd) ; 5 uses
  store float %i.de, ptr %i.cg, align 4, !tbaa !46
  store float %i.de, ptr %i.ch, align 8, !tbaa !46
  %i.df = fadd float %i.de, %i.cw
  %i.dg = fdiv float %.0.i, %i.df
  %i.dh = fptosi float %i.dg to i32               ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.dh, i32 1) ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store i32 %spec.select.i, ptr %i.di, align 8, !tbaa !258
  %i.dj = trunc nuw i8 %i.cy to i1
  %i.dk = icmp sgt i32 %i.dh, 1
  %or.cond.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dl = uitofp nneg i32 %spec.select.i to float ; 2 uses
  %i.dm = fneg float %i.de
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float %i.dl, float %.0.i)
  %i.do = call float @llvm.floor.f32(float %i.dn)
  %i.dp = fdiv float %i.do, %i.dl                 ; 2 uses
  store float %i.dp, ptr %i.cj, align 4, !tbaa !257
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dq = phi float [ %i.dp, %bb.ao ], [ %i.cw, %bb.an ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !247, !range !19, !noundef !20
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.aq, label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

bb.aq:                                            ; preds = %bb.ap
  %i.du = shl nuw nsw i32 %spec.select.i, 1       ; 2 uses
  store i32 %i.du, ptr %i.di, align 8, !tbaa !258
  br label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit: ; preds = %bb.ap, %bb.aq
  %i.dv = phi i32 [ %i.du, %bb.aq ], [ %spec.select.i, %bb.ap ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !254
  %i.dy = add nsw i32 %i.dv, -1
  %i.dz = add i32 %i.dy, %i.dx
  %i.ea = sdiv i32 %i.dz, %i.dv
  store i32 %i.ea, ptr %i.cd, align 4, !tbaa !256
  %i.eb = fadd float %i.de, %i.dq                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store float %i.eb, ptr %i.ec, align 4, !tbaa !46
  %.sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store float %i.eb, ptr %.sroa_idx8.i, align 8, !tbaa !46
  %i.ed = call float @llvm.floor.f32(float %i.dq)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !245
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fsub float %i.ed, %i.eg                 ; 2 uses
  %.inv.i = fcmp oge float %i.eh, 0.000000e+00
  %i.ei = select i1 %.inv.i, float %i.eh, float 0.000000e+00
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store float %i.ei, ptr %i.ej, align 8, !tbaa !259
  %i.ek = fmul float %i.dq, 5.000000e-01
  %i.el = call float @llvm.floor.f32(float %i.ek)
  store float %i.el, ptr %i.cb, align 4, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.em = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  %i.en = load float, ptr %i.cb, align 4, !tbaa !255
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fadd <2 x float> %i.ep, %i.em
  store <2 x float> %i.eq, ptr %8, align 8, !tbaa !46
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.es = load i8, ptr %i.er, align 2, !tbaa !515, !range !19, !noundef !20
  %i.et = trunc nuw i8 %i.es to i1
  %spec.select = select i1 %i.et, i32 1664, i32 1536 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !242, !range !19, !noundef !20
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ex = or disjoint i32 %spec.select, 32768
  br label %bb.at

bb.as:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !511, !range !19, !noundef !20
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 14
  %spec.select125 = or disjoint i32 %i.fb, %spec.select
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1100 = phi i32 [ %i.ex, %bb.ar ], [ %spec.select125, %bb.as ]
  %i.fc = or i32 %.1100, 65536
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !166
  %i.ff = load i32, ptr %i.dw, align 8, !tbaa !254
  %i.fg = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.fc, i32 noundef %i.fe, i32 noundef %i.ff) ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %i.fh, align 8, !tbaa !171
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr @_ZZN20ExampleAssetsBrowser4DrawEPKcPbENUlP26ImGuiSelectionBasicStorageiE_8__invokeES4_i, ptr %i.fi, align 8, !tbaa !172
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef %i.fg)
  %i.fj = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  br i1 %i.fj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fk = load i32, ptr %i.fd, align 8, !tbaa !166
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.thread170, label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !249, !range !19, !noundef !20
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.aw:                                            ; preds = %bb.av
  %.pr = load i32, ptr %i.fd, align 8, !tbaa !166
  %i.fp = icmp eq i32 %.pr, 0
  br i1 %i.fp, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.thread170

.thread170:                                       ; preds = %bb.au, %bb.aw
  %i.fq = load i32, ptr %i.dw, align 8, !tbaa !254 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !177
  %i.ft = trunc i64 %i.fs to i32                  ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !178, !range !19, !noundef !20
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.ax, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.thread170
  %.022.i266 = add nsw i32 %i.ft, 1               ; 2 uses
  %.not.i267 = icmp slt i32 %.022.i266, %i.fq
  br i1 %.not.i267, label %.lr.ph269, label %.critedge.i

bb.ax:                                            ; preds = %.thread170
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 33
  store i8 1, ptr %i.fx, align 1, !tbaa !179
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph269
  %.022.i = add nsw i32 %.022.i268, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.fq
  br i1 %.not.i, label %.lr.ph269, label %.critedge.i, !llvm.loop !0

.lr.ph269:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i268 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i266, %.preheader.i.preheader ] ; 3 uses
  %i.fy = load ptr, ptr %i.fi, align 8, !tbaa !172
  %i.fz = call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %.022.i268), !inline_history !1
  %i.ga = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %i.fz)
  br i1 %i.ga, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.gb = call i32 @llvm.smin.i32(i32 %i.fq, i32 %i.ft) ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph271

bb.ay:                                            ; preds = %.lr.ph271
  %i.gd = icmp slt i32 %.0.in.i270, 2
  br i1 %i.gd, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph271, !llvm.loop !2

.lr.ph271:                                        ; preds = %.critedge.i, %bb.ay
  %.0.in.i270 = phi i32 [ %.0.i127, %bb.ay ], [ %i.gb, %.critedge.i ] ; 2 uses
  %.0.i127 = add nsw i32 %.0.in.i270, -1          ; 3 uses
  %i.ge = load ptr, ptr %i.fi, align 8, !tbaa !172
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %.0.i127), !inline_history !1
  %i.gg = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %i.gf)
  br i1 %i.gg, label %bb.ay, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272: ; preds = %.lr.ph271
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph269, %bb.ay, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272, %bb.ax, %bb.aw, %bb.av
  %i.gh = phi i1 [ false, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %.critedge.i ], [ true, %bb.ay ], [ true, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272 ], [ true, %.lr.ph269 ]
  %i.gi = phi i32 [ -1, %bb.av ], [ -1, %bb.aw ], [ %i.ft, %bb.ax ], [ -1, %.critedge.i ], [ -1, %bb.ay ], [ %.0.i127, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272 ], [ %.022.i268, %.lr.ph269 ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i8 0, ptr %i.gj, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.gk = load float, ptr %i.ej, align 8, !tbaa !259 ; 2 uses
  store float %i.gk, ptr %9, align 4, !tbaa !44
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.gk, ptr %i.gl, align 4, !tbaa !45
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.gm = call noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef -601677021, float noundef 1.000000e+00)
  %i.gn = load float, ptr %i.cg, align 4, !tbaa !516
  %i.go = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.2346, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.043.0.vec.extract = extractelement <2 x float> %i.go, i64 0
  %i.gp = fcmp ult float %i.gn, %.sroa.043.0.vec.extract
  %i.gq = load i32, ptr %i.di, align 8, !tbaa !258 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %i.gr = load i32, ptr %i.cd, align 4, !tbaa !256
  %i.gs = load float, ptr %.sroa_idx8.i, align 8, !tbaa !517
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gr, float noundef %i.gs)
          to label %bb.az unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %.not108 = icmp eq i32 %i.gi, -1
  br i1 %.not108, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gt = sdiv i32 %i.gi, %i.gq                   ; 2 uses
  %i.gu = add nsw i32 %i.gt, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gt, i32 noundef %i.gu)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit: ; preds = %bb.ba, %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !170 ; 2 uses
  %.not109 = icmp eq i64 %i.gw, -1
  br i1 %.not109, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128, label %bb.bb

bb.bb:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = sdiv i32 %i.gx, %i.gq                   ; 2 uses
  %i.gz = add nsw i32 %i.gy, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gy, i32 noundef %i.gz)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128 unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128: ; preds = %bb.bb, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 4
  %sext = sext i32 %i.gi to i64
  br label %bb.bc

.loopexit185:                                     ; preds = %.loopexit179, %bb.be
  br label %bb.bc, !llvm.loop !507

bb.bc:                                            ; preds = %.loopexit185, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128
  %i.hh = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.bd unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.hh, label %bb.be, label %bb.cx

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i32, ptr %10, align 8, !tbaa !118  ; 3 uses
  %i.hj = load i32, ptr %i.ha, align 4, !tbaa !119 ; 2 uses
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %.lr.ph198.preheader, label %.loopexit185

.lr.ph198.preheader:                              ; preds = %bb.be
  %18 = mul i32 %i.gq, %i.hi
  br label %.lr.ph198

.loopexit179.loopexit:                            ; preds = %bb.cw
  %.pre = load i32, ptr %i.ha, align 4, !tbaa !119
  br label %.loopexit179

.loopexit179:                                     ; preds = %.loopexit179.loopexit, %.lr.ph198
  %i.hl = phi i32 [ %.pre, %.loopexit179.loopexit ], [ %i.hm, %.lr.ph198 ] ; 2 uses
  %19 = icmp slt i32 %21, %i.hl
  %indvars.iv.next222 = add i32 %indvars.iv221, %i.gq
  br i1 %19, label %.lr.ph198, label %.loopexit185, !llvm.loop !508

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.loopexit179
  %i.hm = phi i32 [ %i.hj, %.lr.ph198.preheader ], [ %i.hl, %.loopexit179 ]
  %indvars.iv221 = phi i32 [ %18, %.lr.ph198.preheader ], [ %indvars.iv.next222, %.loopexit179 ] ; 2 uses
  %.086197 = phi i32 [ %i.hi, %.lr.ph198.preheader ], [ %21, %.loopexit179 ] ; 3 uses
  %20 = mul nsw i32 %.086197, %i.gq
  %21 = add nsw i32 %.086197, 1                   ; 3 uses
  %i.hn = mul nsw i32 %21, %i.gq
  %22 = load i32, ptr %i.dw, align 8, !tbaa !254
  %. = call i32 @llvm.smin.i32(i32 %i.hn, i32 %22) ; 2 uses
  %i.ho = icmp slt i32 %20, %.
  br i1 %i.ho, label %.lr.ph, label %.loopexit179

.lr.ph:                                           ; preds = %.lr.ph198
  %23 = sext i32 %indvars.iv221 to i64
  %i.hp = sitofp i32 %.086197 to float
  %24 = sext i32 %. to i64
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.cw
  %indvars.iv223 = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next224, %bb.cw ] ; 5 uses
  %i.hr = load ptr, ptr %i.hb, align 8, !tbaa !251
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %indvars.iv223 ; 5 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !261
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.ht)
          to label %bb.bg unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hu = trunc nsw i64 %indvars.iv223 to i32
  %i.hv = srem i32 %i.hu, %i.gq
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = load <2 x float>, ptr %8, align 8, !tbaa !46
  %i.hy = load <2 x float>, ptr %i.ec, align 4, !tbaa !46
  %i.hz = insertelement <2 x float> %i.hq, float %i.hw, i64 0
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.hy, <2 x float> %i.hx)
  store <2 x float> %i.ia, ptr %11, align 8, !tbaa !46
  invoke void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.bh unwind label %bb.ce

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv223)
          to label %bb.bi unwind label %bb.ce

bb.bi:                                            ; preds = %bb.bh
  %i.ib = load i32, ptr %i.hs, align 4, !tbaa !261
  %i.ic = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %i.ib)
          to label %bb.bj unwind label %bb.ce     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.id = invoke noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bk unwind label %bb.ce

bb.bk:                                            ; preds = %bb.bj
  %i.ie = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.157, i1 noundef zeroext %i.ic, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bl unwind label %bb.ce     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.if = invoke noundef zeroext i1 @_ZN5ImGui22IsItemToggledSelectionEv()
          to label %bb.bm unwind label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  %spec.select126 = xor i1 %i.ic, %i.if           ; 2 uses
  %i.ig = icmp eq i64 %indvars.iv223, %sext
  br i1 %i.ig, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
          to label %bb.bo unwind label %bb.ce

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ih = invoke noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
          to label %bb.bp unwind label %bb.ce

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ih, label %bb.bq, label %bb.cf

bb.bq:                                            ; preds = %bb.bp
  %i.ii = invoke noundef ptr @_ZN5ImGui18GetDragDropPayloadEv()
          to label %bb.br unwind label %bb.ce

bb.br:                                            ; preds = %bb.bq
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.bs, label %_ZN8ImVectorIjED2Ev.exit143

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !51
  br i1 %spec.select126, label %.preheader.preheader, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i

.preheader.preheader:                             ; preds = %bb.bs
  %i.ik = invoke noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.bt unwind label %.loopexit.thread

bb.bt:                                            ; preds = %.preheader.preheader
  br i1 %i.ik, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136.peel, label %.loopexit178

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136.peel: ; preds = %bb.bt
  %i.il = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32)
          to label %_ZN8ImVectorIjE9push_backERKj.exit141.peel unwind label %.loopexit.thread ; 2 uses

_ZN8ImVectorIjE9push_backERKj.exit141.peel:       ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136.peel
  %i.im = load i32, ptr %i.b, align 4
  store i32 %i.im, ptr %i.il, align 4
  br label %.preheader

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.bs
  %i.in = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32)
          to label %_ZN8ImVectorIjE9push_backERKj.exit unwind label %.thread171 ; 2 uses

.thread171:                                       ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN8ImVectorIjED2Ev.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.ip = load i32, ptr %i.hs, align 4
  store i32 %i.ip, ptr %i.in, align 4
  br label %.loopexit178

.loopexit.loopexit:                               ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136, %.preheader
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.thread:                                 ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136.peel, %.preheader.preheader
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN8ImVectorIjED2Ev.exit

.loopexit.split-lp:                               ; preds = %.loopexit178
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.split-lp
  %.sroa.19.0 = phi ptr [ %.sroa.19.2, %.loopexit.split-lp ], [ %.sroa.19.1, %.loopexit.loopexit ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit215, %.loopexit.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i131 = icmp eq ptr %.sroa.19.0, null
  br i1 %.not.i131, label %_ZN8ImVectorIjED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %.thread174, %.loopexit
  %i.iq = phi { ptr, i32 } [ %lpad.loopexit, %.thread174 ], [ %lpad.phi, %.loopexit ]
  %.sroa.19.0177 = phi ptr [ %.sroa.19.1, %.thread174 ], [ %.sroa.19.0, %.loopexit ]
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.19.0177)
          to label %_ZN8ImVectorIjED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #31
  unreachable

.preheader:                                       ; preds = %_ZN8ImVectorIjE9push_backERKj.exit141.peel, %_ZN8ImVectorIjE9push_backERKj.exit141
  %indvars.iv = phi i64 [ 1, %_ZN8ImVectorIjE9push_backERKj.exit141.peel ], [ %i.iw, %_ZN8ImVectorIjE9push_backERKj.exit141 ] ; 6 uses
  %.sroa.15.0 = phi i32 [ 8, %_ZN8ImVectorIjE9push_backERKj.exit141.peel ], [ %.sroa.15.1, %_ZN8ImVectorIjE9push_backERKj.exit141 ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %i.il, %_ZN8ImVectorIjE9push_backERKj.exit141.peel ], [ %.sroa.19.4, %_ZN8ImVectorIjE9push_backERKj.exit141 ] ; 7 uses
  %i.it = invoke noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.bw unwind label %.loopexit.loopexit

bb.bw:                                            ; preds = %.preheader
  br i1 %i.it, label %bb.bx, label %.loopexit178.loopexit.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.iu = zext i32 %.sroa.15.0 to i64
  %i.iv = icmp eq i64 %indvars.iv, %i.iu
  %i.iw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  br i1 %i.iv, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136, label %_ZN8ImVectorIjE9push_backERKj.exit141

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136:     ; preds = %bb.bx
  %i.ix = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.iy = lshr i32 %i.ix, 1
  %i.iz = add nuw nsw i32 %i.iy, %i.ix
  %i.ja = trunc nuw i64 %i.iw to i32
  %i.jb = call noundef i32 @llvm.smax.i32(i32 %i.iz, i32 %i.ja) ; 3 uses
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 2
  %i.je = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.jd)
          to label %.noexc139 unwind label %.loopexit.loopexit ; 3 uses

.noexc139:                                        ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i136
  %.not6.i.i137 = icmp eq ptr %.sroa.19.1, null
  br i1 %.not6.i.i137, label %_ZN8ImVectorIjE9push_backERKj.exit141, label %bb.by

bb.by:                                            ; preds = %.noexc139
  %i.jf = shl nuw nsw i64 %indvars.iv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.je, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.19.1, i64 %i.jf, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.19.1)
          to label %_ZN8ImVectorIjE9push_backERKj.exit141 unwind label %.thread174

.thread174:                                       ; preds = %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bu

_ZN8ImVectorIjE9push_backERKj.exit141:            ; preds = %bb.bx, %.noexc139, %bb.by
  %.sroa.15.1 = phi i32 [ %i.jb, %bb.by ], [ %i.jb, %.noexc139 ], [ %.sroa.15.0, %bb.bx ]
  %.sroa.19.4 = phi ptr [ %i.je, %bb.by ], [ %i.je, %.noexc139 ], [ %.sroa.19.1, %bb.bx ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.19.4, i64 %indvars.iv
  %i.jh = load i32, ptr %i.b, align 4
  store i32 %i.jh, ptr %i.jg, align 4
  br label %.preheader, !llvm.loop !509

.loopexit178.loopexit.loopexit:                   ; preds = %bb.bw
  %i.ji = shl i64 %indvars.iv, 2
  %i.jj = and i64 %i.ji, 4294967292
  br label %.loopexit178

.loopexit178:                                     ; preds = %bb.bt, %.loopexit178.loopexit.loopexit, %_ZN8ImVectorIjE9push_backERKj.exit
  %.sroa.0.1 = phi i64 [ 4, %_ZN8ImVectorIjE9push_backERKj.exit ], [ 0, %bb.bt ], [ %i.jj, %.loopexit178.loopexit.loopexit ]
  %.sroa.19.2 = phi ptr [ %i.in, %_ZN8ImVectorIjE9push_backERKj.exit ], [ null, %bb.bt ], [ %.sroa.19.1, %.loopexit178.loopexit.loopexit ] ; 4 uses
  %i.jk = invoke noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.2347, ptr noundef %.sroa.19.2, i64 noundef %.sroa.0.1, i32 noundef 0)
          to label %bb.bz unwind label %.loopexit.split-lp ; 0 uses

bb.bz:                                            ; preds = %.loopexit178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i142 = icmp eq ptr %.sroa.19.2, null
  br i1 %.not.i142, label %_ZN8ImVectorIjED2Ev.exit143, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.19.2)
          to label %_ZN8ImVectorIjED2Ev.exit143 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #31
  unreachable

_ZN8ImVectorIjED2Ev.exit143:                      ; preds = %bb.ca, %bb.bz, %bb.br
  %i.jn = invoke noundef ptr @_ZN5ImGui18GetDragDropPayloadEv()
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %_ZN8ImVectorIjED2Ev.exit143
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !183
  %i.jq = sdiv i32 %i.jp, 4
  invoke void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2348, i32 noundef %i.jq)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5ImGui17EndDragDropSourceEv()
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bq, %bb.cv, %bb.bi, %bb.bh, %bb.bg, %_ZN8ImVectorIjED2Ev.exit143, %bb.cd, %bb.cc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8ImVectorIjED2Ev.exit

bb.cf:                                            ; preds = %bb.cd, %bb.bp
  br i1 %i.id, label %bb.cg, label %bb.cv

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.js = load <2 x float>, ptr %11, align 8, !tbaa !46
  %i.jt = fadd <2 x float> %i.js, splat (float -1.000000e+00) ; 2 uses
  store <2 x float> %i.jt, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ju = load <2 x float>, ptr %i.cg, align 4, !tbaa !46
  %i.jv = fadd <2 x float> %i.jt, %i.ju
  %i.jw = fadd <2 x float> %i.jv, splat (float 2.000000e+00)
  store <2 x float> %i.jw, ptr %13, align 8, !tbaa !46
  invoke void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cs, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %i.gm, float noundef 0.000000e+00, i32 noundef 0)
          to label %bb.ch unwind label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  %i.jx = load i8, ptr %0, align 8, !tbaa !518, !range !19, !noundef !20
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !262 ; 2 uses
  %.not115 = icmp eq i32 %i.ka, 0
  br i1 %.not115, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kb = srem i32 %i.ka, 3
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr @__const._ZN20ExampleAssetsBrowser4DrawEPKcPb.icon_type_overlay_colors, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.kf = load float, ptr %13, align 8, !tbaa !44
  %i.kg = fadd float %i.kf, -2.000000e+00         ; 2 uses
  %i.kh = fadd float %i.kg, -4.000000e+00
  %i.ki = load float, ptr %i.hc, align 4, !tbaa !45
  %i.kj = fadd float %i.ki, 2.000000e+00          ; 2 uses
  store float %i.kh, ptr %14, align 4, !tbaa !44
  store float %i.kj, ptr %i.he, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.kk = fadd float %i.kj, 4.000000e+00
  store float %i.kg, ptr %15, align 4, !tbaa !44
  store float %i.kk, ptr %i.hf, align 4, !tbaa !45
  invoke void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cs, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.ke, float noundef 0.000000e+00, i32 noundef 0)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cu

bb.cm:                                            ; preds = %bb.ck, %bb.ci, %bb.ch
  br i1 %i.gp, label %bb.ct, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %not..0.in = xor i1 %spec.select126, true
  %i.km = zext i1 %not..0.in to i32
  %i.kn = invoke noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.km, float noundef 1.000000e+00)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.ko = load i32, ptr %i.hs, align 4, !tbaa !261
  %i.kp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef %i.ko) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.kq = load float, ptr %12, align 8, !tbaa !44
  %i.kr = load float, ptr %i.hd, align 4, !tbaa !45
  %i.ks = invoke noundef float @_ZN5ImGui11GetFontSizeEv()
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.kt = fsub float %i.kr, %i.ks
  store float %i.kq, ptr %16, align 4, !tbaa !44
  store float %i.kt, ptr %i.hg, align 4, !tbaa !45
  invoke void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.cs, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.kn, ptr noundef nonnull %i.c, ptr noundef null)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cg, %bb.cn
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cp, %bb.co
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cr, %bb.cs, %bb.cl
  %.pn116.pn = phi { ptr, i32 } [ %i.ku, %bb.cr ], [ %i.kl, %bb.cl ], [ %i.kv, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZN8ImVectorIjED2Ev.exit

bb.cv:                                            ; preds = %bb.ct, %bb.cf
  invoke void @_ZN5ImGui5PopIDEv()
          to label %bb.cw unwind label %bb.ce

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.kw = icmp slt i64 %indvars.iv.next224, %24
  br i1 %i.kw, label %bb.bf, label %.loopexit179.loopexit, !llvm.loop !510

_ZN8ImVectorIjED2Ev.exit:                         ; preds = %.loopexit.thread, %bb.bu, %.loopexit, %.thread171, %bb.cu, %bb.ce
  %.pn119.pn.pn = phi { ptr, i32 } [ %i.jr, %bb.ce ], [ %.pn116.pn, %bb.cu ], [ %i.io, %.thread171 ], [ %lpad.phi, %.loopexit ], [ %i.iq, %bb.bu ], [ %lpad.loopexit.split-lp216, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.loopexit.split-lp181.loopexit.split-lp

bb.cx:                                            ; preds = %bb.bd
  invoke void @_ZN16ImGuiListClipper3EndEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.cy unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.kx = load i32, ptr %i.dw, align 8, !tbaa !254
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  store <2 x float> zeroinitializer, ptr %17, align 8, !tbaa !46
  invoke void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.loopexit.split-lp181.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da, %bb.cy
  invoke void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
          to label %bb.dd unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  %i.la = invoke noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef null, i32 noundef 0)
          to label %bb.de unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  br i1 %i.la, label %bb.df, label %bb.dl

bb.df:                                            ; preds = %bb.de
  %i.lb = load i32, ptr %i.fd, align 8, !tbaa !166
  invoke void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2349, i32 noundef %i.lb)
          to label %bb.dg unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN5ImGui9SeparatorEv()
          to label %bb.dh unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.lc = load i32, ptr %i.fd, align 8, !tbaa !166
  %i.ld = icmp sgt i32 %i.lc, 0
  %i.le = invoke noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2328, ptr noundef nonnull @.str.2329, i1 noundef zeroext false, i1 noundef zeroext %i.ld)
          to label %bb.di unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  br i1 %i.le, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i8 1, ptr %i.gj, align 4, !tbaa !249
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  invoke void @_ZN5ImGui8EndPopupEv()
          to label %bb.dl unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk, %bb.de
  %i.lf = invoke noundef ptr @_ZN5ImGui14EndMultiSelectEv()
          to label %bb.dm unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef %i.lf)
          to label %bb.dn unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.gh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopI12ExampleAssetEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i32 noundef %i.gi)
          to label %bb.dp unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.lg = invoke noundef zeroext i1 @_ZN5ImGui17IsWindowAppearingEv()
          to label %bb.dq unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.lg, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float 0.000000e+00, ptr %i.lh, align 8, !tbaa !519
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.li = invoke noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef 0)
          to label %bb.dt unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.li, label %bb.du, label %bb.eh

bb.du:                                            ; preds = %bb.dt
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ca, i64 248 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 8, !tbaa !122
  %i.ll = fcmp une float %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.dv, label %bb.eh

bb.dv:                                            ; preds = %bb.du
  %i.lm = invoke noundef zeroext i1 @_ZN5ImGui9IsKeyDownE8ImGuiKey(i32 noundef 4096)
          to label %bb.dw unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.lm, label %bb.dx, label %bb.eh

bb.dx:                                            ; preds = %bb.dw
  %i.ln = invoke noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
          to label %bb.dy unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.ln, label %bb.eh, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.lo = load float, ptr %i.lj, align 8, !tbaa !122
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.lq = load float, ptr %i.lp, align 8, !tbaa !519
  %i.lr = fadd float %i.lo, %i.lq                 ; 4 uses
  store float %i.lr, ptr %i.lp, align 8, !tbaa !519
  %i.ls = call float @llvm.fabs.f32(float %i.lr)
  %i.lt = fcmp ult float %i.ls, 1.000000e+00
  br i1 %i.lt, label %bb.eh, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ca, i64 232
  %i.lv = load <1 x float>, ptr %i.cj, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ca, i64 236
  %i.lx = load <2 x float>, ptr %i.lu, align 8, !tbaa !46
  %i.ly = load <2 x float>, ptr %8, align 8, !tbaa !46
  %i.lz = fsub <2 x float> %i.lx, %i.ly
  %i.ma = shufflevector <1 x float> %i.lv, <1 x float> poison, <2 x i32> zeroinitializer
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> splat (float 5.000000e-01), <2 x float> %i.lz)
  %i.mc = load <2 x float>, ptr %i.ec, align 4, !tbaa !46
  %i.md = fdiv <2 x float> %i.mb, %i.mc           ; 2 uses
  %i.me = extractelement <2 x float> %i.md, i64 1 ; 2 uses
  %i.mf = fptosi float %i.me to i32
  %i.mg = load i32, ptr %i.di, align 8, !tbaa !258
  %i.mh = mul nsw i32 %i.mg, %i.mf
  %i.mi = extractelement <2 x float> %i.md, i64 0
  %i.mj = fptosi float %i.mi to i32
  %i.mk = add nsw i32 %i.mh, %i.mj
  %i.ml = fptosi float %i.lr to i32
  %i.mm = sitofp i32 %i.ml to float               ; 2 uses
  %i.mn = call float @powf(float noundef 1.100000e+00, float noundef %i.mm) #30
  %i.mo = load float, ptr %i.d, align 8, !tbaa !243
  %i.mp = fmul float %i.mn, %i.mo                 ; 4 uses
  store float %i.mp, ptr %i.d, align 8, !tbaa !243
  %i.mq = fcmp olt float %i.mp, 1.600000e+01
  br i1 %i.mq, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mr = fcmp ogt float %i.mp, 1.280000e+02
  br i1 %i.mr, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.ms = phi float [ 1.600000e+01, %bb.ea ], [ %i.mp, %bb.ec ], [ 1.280000e+02, %bb.eb ]
  store float %i.ms, ptr %i.d, align 8, !tbaa !243
  %i.mt = fsub float %i.lr, %i.mm
  store float %i.mt, ptr %i.lp, align 8, !tbaa !519
  invoke void @_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf(ptr noundef nonnull align 8 dereferenceable(136) %0, float noundef %.sroa.063.0.vec.extract)
          to label %bb.ee unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  %i.mu = load i32, ptr %i.di, align 8, !tbaa !258
  %i.mv = call float @fmodf(float noundef %i.me, float noundef 1.000000e+00) #30
  %i.mw = load float, ptr %.sroa_idx8.i, align 8, !tbaa !517
  %i.mx = invoke noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
          to label %bb.ef unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %bb.ee
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load float, ptr %i.my, align 4, !tbaa !126
  %i.na = load float, ptr %i.lw, align 4, !tbaa !520
  %i.nb = invoke <2 x float> @_ZN5ImGui12GetWindowPosEv()
          to label %bb.eg unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef
  %i.nc = sdiv i32 %i.mk, %i.mu
  %i.nd = sitofp i32 %i.nc to float
  %i.ne = fadd float %i.mv, %i.nd
  %i.nf = fmul float %i.mw, %i.ne
  %i.ng = fadd float %i.mz, %i.nf
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.nb, i64 1
  %i.nh = fsub float %i.na, %.sroa.0.4.vec.extract
  %i.ni = fsub float %i.ng, %i.nh
  invoke void @_ZN5ImGui10SetScrollYEf(float noundef %i.ni)
          to label %bb.eh unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_1
