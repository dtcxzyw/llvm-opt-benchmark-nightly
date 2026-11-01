Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_demo?download=true
inline.NumInlined: 1163
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN17ExampleAppConsole11ExecCommandEPKc:bb.a
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !55 ; 4 uses
  %i.cd = icmp ne i32 %i.by, %i.cc
  %.not9.i23 = icmp eq i8 %i.bz, 0                ; 2 uses
  %or.cond10.i24 = or i1 %.not9.i23, %i.cd
  br i1 %or.cond10.i24, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25

toupper.exit.i25:                                 ; preds = %_ZN8ImVectorIPcE9push_backERKS0_.exit, %toupper.exit.i25
  %.012.i26 = phi ptr [ %i.cf, %toupper.exit.i25 ], [ @.str.2031, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %.0511.i27 = phi ptr [ %i.ce, %toupper.exit.i25 ], [ %1, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0511.i27, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i26, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !106
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !55 ; 2 uses
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !106 ; 2 uses
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !55 ; 2 uses
  %i.co = icmp ne i32 %i.cj, %i.cn
  %.not.i28 = icmp eq i8 %i.ck, 0
  %or.cond.i29 = or i1 %.not.i28, %i.co
  br i1 %or.cond.i29, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25, !llvm.loop !502

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32:     ; preds = %toupper.exit.i25, %_ZN8ImVectorIPcE9push_backERKS0_.exit
  %.lcssa8.i30 = phi i32 [ %i.by, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cj, %toupper.exit.i25 ]
  %.lcssa.i31 = phi i32 [ %i.cc, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cn, %toupper.exit.i25 ]
  %i.cp = icmp eq i32 %.lcssa8.i30, %.lcssa.i31
  br i1 %i.cp, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !215
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !216 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i33, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.cw, align 4, !tbaa !217
  store i32 0, ptr %i.cq, align 8, !tbaa !218
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cv) #26
  store ptr null, ptr %i.cu, align 8, !tbaa !216
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !216
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !88
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cz) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = load i32, ptr %i.cq, align 8, !tbaa !215
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.db
  br i1 %i.dc, label %bb.k, label %._crit_edge.i, !llvm.loop !4

bb.l:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !55 ; 2 uses
  %i.df = icmp ne i32 %i.de, %i.cc
  %or.cond10.i35 = or i1 %.not9.i23, %i.df
  br i1 %or.cond10.i35, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, label %toupper.exit.i36

toupper.exit.i36:                                 ; preds = %bb.l, %toupper.exit.i36
  %.012.i37 = phi ptr [ %i.dh, %toupper.exit.i36 ], [ @.str.2029, %bb.l ]
  %.0511.i38 = phi ptr [ %i.dg, %toupper.exit.i36 ], [ %1, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0511.i38, i64 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i37, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !106
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !55 ; 2 uses
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !106 ; 2 uses
  %i.dn = sext i8 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !55 ; 2 uses
  %i.dq = icmp ne i32 %i.dl, %i.dp
  %.not.i39 = icmp eq i8 %i.dm, 0
  %or.cond.i40 = or i1 %.not.i39, %i.dq
  br i1 %or.cond.i40, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, label %toupper.exit.i36, !llvm.loop !502

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43:     ; preds = %bb.l
  %i.dr = icmp eq i32 %i.de, %i.cc
  br i1 %i.dr, label %bb.m, label %.critedge

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread: ; preds = %toupper.exit.i36
  %i.ds = icmp eq i32 %i.dl, %i.dp
  br i1 %i.ds, label %bb.m, label %toupper.exit.i46

bb.m:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2054)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !225
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph67, label %_ZN17ExampleAppConsole8ClearLogEv.exit

.lr.ph67:                                         ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph67, %bb.n
  %indvars.iv83 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next84, %bb.n ] ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !220
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv83
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2055, ptr noundef %i.dz)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ea = load i32, ptr %i.dt, align 8, !tbaa !225
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next84, %i.eb
  br i1 %i.ec, label %bb.n, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !503

toupper.exit.i46:                                 ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %toupper.exit.i46
  %.012.i47 = phi ptr [ %i.ee, %toupper.exit.i46 ], [ @.str.2030, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %.0511.i48 = phi ptr [ %i.ed, %toupper.exit.i46 ], [ %1, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0511.i48, i64 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i47, i64 1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !106
  %i.eg = sext i8 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !55 ; 2 uses
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !106 ; 2 uses
  %i.ek = sext i8 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !55 ; 2 uses
  %i.en = icmp ne i32 %i.ei, %i.em
  %.not.i49 = icmp eq i8 %i.ej, 0
  %or.cond.i50 = or i1 %.not.i49, %i.en
  br i1 %or.cond.i50, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit, label %toupper.exit.i46, !llvm.loop !502

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
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !216
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !88
  %i.ew = trunc nuw nsw i64 %indvars.iv80 to i32
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2056, i32 noundef %i.ew, ptr noundef %i.ev)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ex = load i32, ptr %i.b, align 8, !tbaa !223
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next81, %i.ey
  br i1 %i.ez, label %bb.p, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !504

.critedge:                                        ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2057, ptr noundef nonnull %1)
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

_ZN17ExampleAppConsole8ClearLogEv.exit:           ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.j, %._crit_edge.i, %.critedge
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 593
  store i8 1, ptr %i.fa, align 1, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !200
  switch i32 %i.b, label %_ZN8ImVectorIPKcED2Ev.exit [
    i32 262144, label %bb.b
    i32 524288, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !201  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 6 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph177, label %.thread

bb.c:                                             ; preds = %.lr.ph177
  %indvars.iv.next150 = add i64 %indvars.iv149174, 1 ; 2 uses
  %i.j = icmp ugt ptr %i.k, %i.d
  br i1 %i.j, label %.lr.ph177, label %.thread

.lr.ph177:                                        ; preds = %bb.b, %bb.c
  %.083175 = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %indvars.iv149174 = phi i64 [ %indvars.iv.next150, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.083175, i64 -1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106
  switch i8 %i.l, label %bb.c [
    i8 59, label %.thread
    i8 44, label %.thread
    i8 32, label %.thread
    i8 9, label %.thread
  ]

.thread:                                          ; preds = %bb.c, %.lr.ph177, %.lr.ph177, %.lr.ph177, %.lr.ph177, %bb.b
  %indvars.iv149.lcssa = phi i64 [ 0, %bb.b ], [ %indvars.iv.next150, %bb.c ], [ %indvars.iv149174, %.lr.ph177 ], [ %indvars.iv149174, %.lr.ph177 ], [ %indvars.iv149174, %.lr.ph177 ], [ %indvars.iv149174, %.lr.ph177 ]
  %.083.lcssa = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %.083175, %.lr.ph177 ], [ %.083175, %.lr.ph177 ], [ %.083175, %.lr.ph177 ], [ %.083175, %.lr.ph177 ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !225  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %.083.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  switch i32 %.sroa.0.1, label %.lr.ph136.us.preheader [
    i32 0, label %._crit_edge.thread
    i32 1, label %.thread119
  ]

bb.d:                                             ; preds = %.lr.ph, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  %i.v = phi i32 [ %i.n, %.lr.ph ], [ %i.bd, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 2 uses
  %.sroa.13.0130 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 5 uses
  %.sroa.11.0129 = phi i32 [ 0, %.lr.ph ], [ %.sroa.11.1, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 8 uses
  %.sroa.0.0128 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  br i1 %i.u, label %toupper.exit.lr.ph.i, label %.loopexit127

toupper.exit.lr.ph.i:                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = tail call ptr @__ctype_toupper_loc() #28
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !224 ; 2 uses
  br label %toupper.exit.i

toupper.exit.i:                                   ; preds = %bb.e, %toupper.exit.lr.ph.i
  %.0716.i = phi i32 [ %i.t, %toupper.exit.lr.ph.i ], [ %i.am, %bb.e ] ; 2 uses
  %.0815.i = phi ptr [ %.083.lcssa, %toupper.exit.lr.ph.i ], [ %i.al, %bb.e ] ; 2 uses
  %.0914.i = phi ptr [ %i.y, %toupper.exit.lr.ph.i ], [ %i.ak, %bb.e ] ; 2 uses
  %i.ab = load i8, ptr %.0815.i, align 1, !tbaa !106
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55
  %i.af = load i8, ptr %.0914.i, align 1, !tbaa !106 ; 2 uses
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = icmp eq i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

bb.e:                                             ; preds = %toupper.exit.i
  %.not.i = icmp ne i8 %i.af, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0815.i, i64 1
  %i.am = add nsw i32 %.0716.i, -1
  %i.an = icmp sgt i32 %.0716.i, 1
  %or.cond.i = select i1 %.not.i, i1 %i.an, i1 false
  br i1 %or.cond.i, label %toupper.exit.i, label %.loopexit127, !llvm.loop !505

.loopexit127:                                     ; preds = %bb.e, %bb.d
  %i.ao = icmp eq i32 %.sroa.0.0128, %.sroa.11.0129
  br i1 %i.ao, label %bb.f, label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

bb.f:                                             ; preds = %.loopexit127
  %i.ap = add nsw i32 %.sroa.11.0129, 1
  %.not.i.i = icmp eq i32 %.sroa.11.0129, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = sdiv i32 %.sroa.11.0129, 2
  %i.ar = add nsw i32 %i.aq, %.sroa.11.0129
  br label %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i:      ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.ar, %bb.g ], [ 8, %bb.f ]
  %i.at = tail call noundef i32 @llvm.smax.i32(i32 %i.as, i32 %i.ap) ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3
  %i.aw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.av) #26 ; 3 uses
  %.not6.i.i = icmp eq ptr %.sroa.13.0130, null
  br i1 %.not6.i.i, label %_ZN8ImVectorIPKcE9push_backERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i
  %i.ax = sext i32 %.sroa.11.0129 to i64
  %i.ay = shl nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aw, ptr nonnull align 8 %.sroa.13.0130, i64 %i.ay, i1 false)
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.13.0130) #26
  br label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

_ZN8ImVectorIPKcE9push_backERKS1_.exit:           ; preds = %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i, %bb.h, %.loopexit127
  %.sroa.11.2 = phi i32 [ %.sroa.11.0129, %.loopexit127 ], [ %i.at, %bb.h ], [ %i.at, %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i ]
  %.sroa.13.2 = phi ptr [ %.sroa.13.0130, %.loopexit127 ], [ %i.aw, %bb.h ], [ %i.aw, %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i ] ; 2 uses
  %i.az = sext i32 %.sroa.0.0128 to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %.sroa.13.2, i64 %i.az
  %i.bb = load i64, ptr %i.x, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = add nsw i32 %.sroa.0.0128, 1
  %.pre = load i32, ptr %i.m, align 8, !tbaa !225
  br label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit:     ; preds = %toupper.exit.i, %_ZN8ImVectorIPKcE9push_backERKS1_.exit
  %i.bd = phi i32 [ %.pre, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.v, %toupper.exit.i ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.bc, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %.sroa.0.0128, %toupper.exit.i ] ; 6 uses
  %.sroa.11.1 = phi i32 [ %.sroa.11.2, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %.sroa.11.0129, %toupper.exit.i ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.2, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %.sroa.13.0130, %toupper.exit.i ] ; 9 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.d, label %._crit_edge, !llvm.loop !506

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %.sroa.13.0.lcssa167 = phi ptr [ %.sroa.13.1, %._crit_edge ], [ null, %.thread ]
  %i.bg = ptrtoint ptr %i.h to i64
  %i.bh = ptrtoint ptr %.083.lcssa to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2049, i32 noundef %i.bj, ptr noundef %.083.lcssa)
  br label %.loopexit

.thread119:                                       ; preds = %._crit_edge
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.bl = ptrtoint ptr %.083.lcssa to i64         ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = ptrtoint ptr %i.h to i64
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = trunc i64 %i.bq to i32
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bo, i32 noundef %i.br) #26
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !201
  %i.bt = load ptr, ptr %.sroa.13.1, align 8, !tbaa !88
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bs, ptr noundef %i.bt, ptr noundef null) #26
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !201
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bu, ptr noundef nonnull @.str.2050, ptr noundef null) #26
  br label %bb.k

.lr.ph136.us.preheader:                           ; preds = %._crit_edge
  %i.bv = ptrtoint ptr %i.h to i64
  %i.bw = ptrtoint ptr %.083.lcssa to i64         ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = icmp sgt i32 %.sroa.0.1, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = zext nneg i32 %.sroa.0.1 to i64
  %i.cb = load ptr, ptr %.sroa.13.1, align 8, !tbaa !88
  %i.cc = tail call ptr @__ctype_toupper_loc() #28
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !224
  %.not162 = icmp eq i32 %.sroa.0.1, 1
  br label %toupper.exit.us.peel

toupper.exit.us.peel:                             ; preds = %._crit_edge137.us, %.lr.ph136.us.preheader
  %indvars.iv151 = phi i64 [ %indvars.iv149.lcssa, %.lr.ph136.us.preheader ], [ %indvars.iv.next152, %._crit_edge137.us ] ; 5 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %indvars.iv151
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !106
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !55 ; 2 uses
  br i1 %.not162, label %._crit_edge137.us, label %.peel.next

.peel.next:                                       ; preds = %toupper.exit.us.peel
  %i.cj = icmp eq i32 %i.ci, 0
  br label %bb.i

bb.i:                                             ; preds = %toupper.exit.us, %.peel.next
  %indvars.iv145 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next146, %toupper.exit.us ] ; 2 uses
  br i1 %i.cj, label %.split140.us, label %toupper.exit95.us

toupper.exit95.us:                                ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13.1, i64 %indvars.iv145
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %indvars.iv151
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !106
  %i.co = tail call ptr @__ctype_toupper_loc() #28
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224
  %i.cq = sext i8 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55
  %.not92.us = icmp eq i32 %i.ci, %i.cs
  br i1 %.not92.us, label %toupper.exit.us, label %.split140.us

toupper.exit.us:                                  ; preds = %toupper.exit95.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next146, %i.ca
  br i1 %i.ct, label %bb.i, label %._crit_edge137.us, !llvm.loop !507

._crit_edge137.us:                                ; preds = %toupper.exit.us, %toupper.exit.us.peel
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, 1
  br label %toupper.exit.us.peel

.split140.us:                                     ; preds = %bb.i, %toupper.exit95.us
  %i.cu = icmp sgt i64 %indvars.iv151, 0
  br i1 %i.cu, label %bb.j, label %.lr.ph143.preheader

bb.j:                                             ; preds = %.split140.us
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.bw, %i.cw
  %i.cy = trunc i64 %i.cx to i32
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cy, i32 noundef %i.by) #26
end_hunk_0
