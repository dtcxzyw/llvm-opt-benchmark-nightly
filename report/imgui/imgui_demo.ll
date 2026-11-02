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
  %indvars.iv.next140 = add i64 %indvars.iv139173, 1 ; 2 uses
  %i.j = icmp ugt ptr %i.k, %i.d
  br i1 %i.j, label %.lr.ph176, label %.thread

.lr.ph176:                                        ; preds = %bb.b, %bb.c
  %.089174 = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %indvars.iv139173 = phi i64 [ %indvars.iv.next140, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.089174, i64 -1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !120
  switch i8 %i.l, label %bb.c [
    i8 59, label %.thread
    i8 44, label %.thread
    i8 32, label %.thread
    i8 9, label %.thread
  ]

.thread:                                          ; preds = %bb.c, %.lr.ph176, %.lr.ph176, %.lr.ph176, %.lr.ph176, %bb.b
  %indvars.iv139.lcssa = phi i64 [ 0, %bb.b ], [ %indvars.iv.next140, %bb.c ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ], [ %indvars.iv139173, %.lr.ph176 ]
  %.089.lcssa = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ], [ %.089174, %.lr.ph176 ] ; 6 uses
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
end_hunk_0
