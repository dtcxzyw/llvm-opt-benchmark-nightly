inline.NumInlined: 820
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 110
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !317  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %.0.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  switch i32 %i.bn, label %.lr.ph121.us.preheader [
    i32 0, label %._crit_edge.thread
    i32 1, label %bb.k
  ]

bb.d:                                             ; preds = %.lr.ph, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit
  %i.w = phi i32 [ %i.n, %.lr.ph ], [ %i.bl, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ]
  %i.x = phi ptr [ null, %.lr.ph ], [ %.pre.i141, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 5 uses
  %i.y = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 9 uses
  %i.z = phi i32 [ 0, %.lr.ph ], [ %i.bn, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !307
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  br i1 %i.u, label %toupper.exit.lr.ph.i, label %.loopexit116

toupper.exit.lr.ph.i:                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.ad = tail call ptr @__ctype_toupper_loc() #31
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !314 ; 2 uses
  br label %toupper.exit.i

toupper.exit.i:                                   ; preds = %bb.e, %toupper.exit.lr.ph.i
  %.0716.i = phi i32 [ %i.t, %toupper.exit.lr.ph.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.0815.i = phi ptr [ %.0.lcssa, %toupper.exit.lr.ph.i ], [ %i.ap, %bb.e ] ; 2 uses
  %.0914.i = phi ptr [ %i.ac, %toupper.exit.lr.ph.i ], [ %i.ao, %bb.e ] ; 2 uses
  %i.af = load i8, ptr %.0815.i, align 1, !tbaa !86
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  %i.aj = load i8, ptr %.0914.i, align 1, !tbaa !86 ; 2 uses
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !67
  %i.an = icmp eq i32 %i.ai, %i.am
  br i1 %i.an, label %bb.e, label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

bb.e:                                             ; preds = %toupper.exit.i
  %.not.i = icmp ne i8 %i.aj, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0815.i, i64 1
  %i.aq = add nsw i32 %.0716.i, -1
  %i.ar = icmp sgt i32 %.0716.i, 1
  %or.cond.i = select i1 %.not.i, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %toupper.exit.i, label %.loopexit116, !llvm.loop !320

.loopexit116:                                     ; preds = %bb.e, %bb.d
  %i.as = icmp eq i32 %i.z, %i.y
  br i1 %i.as, label %bb.f, label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

bb.f:                                             ; preds = %.loopexit116
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
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %.noexc102, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.bb = sext i32 %i.y to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ba, ptr nonnull align 8 %i.x, i64 %i.bc, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.x)
          to label %..noexc102_crit_edge unwind label %bb.i

..noexc102_crit_edge:                             ; preds = %bb.h
  %.pre3.i.pre = load i32, ptr %2, align 8, !tbaa !305
  br label %.noexc102

.noexc102:                                        ; preds = %..noexc102_crit_edge, %.noexc
  %.pre3.i = phi i32 [ %.pre3.i.pre, %..noexc102_crit_edge ], [ %i.y, %.noexc ]
  store ptr %i.ba, ptr %.phi.trans.insert.i, align 8, !tbaa !307
  store i32 %i.ax, ptr %i.v, align 4, !tbaa !306
  br label %_ZN8ImVectorIPKcE9push_backERKS1_.exit

_ZN8ImVectorIPKcE9push_backERKS1_.exit:           ; preds = %.loopexit116, %.noexc102
  %.pre.i142 = phi ptr [ %i.ba, %.noexc102 ], [ %i.x, %.loopexit116 ] ; 2 uses
  %i.bd = phi i32 [ %i.ax, %.noexc102 ], [ %i.y, %.loopexit116 ]
  %i.be = phi i32 [ %.pre3.i, %.noexc102 ], [ %i.z, %.loopexit116 ]
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.pre.i142, i64 %i.bf
  %i.bh = load i64, ptr %i.ab, align 8
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bi = load i32, ptr %2, align 8, !tbaa !305
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr %2, align 8, !tbaa !305
  %.pre = load i32, ptr %i.m, align 8, !tbaa !317
  br label %_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorIPKcE14_grow_capacityEi.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN17ExampleAppConsole8StrnicmpEPKcS1_i.exit:     ; preds = %toupper.exit.i, %_ZN8ImVectorIPKcE9push_backERKS1_.exit
  %i.bl = phi i32 [ %.pre, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.w, %toupper.exit.i ] ; 2 uses
  %.pre.i141 = phi ptr [ %.pre.i142, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.x, %toupper.exit.i ]
  %i.bm = phi i32 [ %i.bd, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.y, %toupper.exit.i ]
  %i.bn = phi i32 [ %i.bj, %_ZN8ImVectorIPKcE9push_backERKS1_.exit ], [ %i.z, %toupper.exit.i ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = sext i32 %i.bl to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge, !llvm.loop !321

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.bq = ptrtoint ptr %i.g to i64
  %i.br = ptrtoint ptr %.0.lcssa to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.1485, i32 noundef %i.bt, ptr noundef %.0.lcssa)
          to label %.loopexit unwind label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.k, %._crit_edge.thread
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %._crit_edge
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.bw = ptrtoint ptr %.0.lcssa to i64           ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32
  %i.ca = ptrtoint ptr %i.g to i64
  %i.cb = sub i64 %i.ca, %i.bw
  %i.cc = trunc i64 %i.cb to i32
  invoke void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.bz, i32 noundef %i.cc)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !270
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !307 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !68
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.cd, ptr noundef %i.cg, ptr noundef null)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %i.d, align 4, !tbaa !270
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.ch, ptr noundef nonnull @.str.1486, ptr noundef null)
          to label %.loopexit.thread unwind label %bb.j

.lr.ph121.us.preheader:                           ; preds = %._crit_edge
  %i.ci = ptrtoint ptr %i.g to i64
  %i.cj = ptrtoint ptr %.0.lcssa to i64           ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.bn, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 5 uses
  tail call void @llvm.assume(i1 %i.cm)
  %i.cp = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !68
  %i.cr = tail call ptr @__ctype_toupper_loc() #31
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !314
  %.not156 = icmp eq i32 %i.bn, 1
  br label %toupper.exit.us.peel

toupper.exit.us.peel:                             ; preds = %._crit_edge122.us, %.lr.ph121.us.preheader
  %indvars.iv134 = phi i64 [ %indvars.iv132.lcssa, %.lr.ph121.us.preheader ], [ %indvars.iv.next135, %._crit_edge122.us ] ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %indvars.iv134
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !86
  %i.cv = sext i8 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67 ; 2 uses
  br i1 %.not156, label %._crit_edge122.us, label %.peel.next

.peel.next:                                       ; preds = %toupper.exit.us.peel
  %i.cy = icmp eq i32 %i.cx, 0
  br label %bb.n

bb.n:                                             ; preds = %toupper.exit.us, %.peel.next
  %indvars.iv128 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next129, %toupper.exit.us ] ; 2 uses
  br i1 %i.cy, label %.split124.us, label %toupper.exit105.us

toupper.exit105.us:                               ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv128
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !68
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv134
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !86
  %3 = tail call ptr @__ctype_toupper_loc() #31
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %i.dd = sext i8 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !67
  %.not99.us = icmp eq i32 %i.cx, %i.df
  br i1 %.not99.us, label %toupper.exit.us, label %.split124.us

toupper.exit.us:                                  ; preds = %toupper.exit105.us
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next129, %i.cp
  br i1 %i.dg, label %bb.n, label %._crit_edge122.us, !llvm.loop !322

._crit_edge122.us:                                ; preds = %toupper.exit.us, %toupper.exit.us.peel
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1
  br label %toupper.exit.us.peel

.split124.us:                                     ; preds = %bb.n, %toupper.exit105.us
  %i.dh = icmp sgt i64 %indvars.iv134, 0
  br i1 %i.dh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.split124.us
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.cj, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  invoke void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.dl, i32 noundef %i.cl)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr %i.d, align 4, !tbaa !270
  %i.dn = load ptr, ptr %i.co, align 8, !tbaa !68 ; 2 uses
  %i.do = and i64 %indvars.iv134, 4294967295
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  invoke void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dp)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p, %bb.o
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.p, %.split124.us
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.1487)
          to label %.lr.ph126 unwind label %bb.q

.lr.ph126:                                        ; preds = %bb.r, %bb.s
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv137
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !68
  invoke void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.1488, ptr noundef %i.ds)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph126
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next138, %i.cp
  br i1 %i.dt, label %.lr.ph126, label %.loopexit.thread, !llvm.loop !323

bb.t:                                             ; preds = %.lr.ph126
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %._crit_edge.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre144 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !307 ; 2 uses
  %.not.i106 = icmp eq ptr %.pre144, null
  br i1 %.not.i106, label %_ZN8ImVectorIPKcED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.s, %bb.m, %.loopexit
  %i.dv = phi ptr [ %.pre144, %.loopexit ], [ %i.cf, %bb.m ], [ %i.co, %bb.s ]
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dv)
          to label %_ZN8ImVectorIPKcED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %.loopexit.thread
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #29
  unreachable

_ZN8ImVectorIPKcED2Ev.exit:                       ; preds = %.loopexit, %.loopexit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.thread111

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.j, %bb.i
  %.pn100 = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.bu, %bb.j ], [ %i.du, %bb.t ], [ %i.dq, %bb.q ]
  call void @_ZN8ImVectorIPKcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn100

bb.w:                                             ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !304 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !271
  switch i32 %i.eb, label %.thread111 [
    i32 3, label %bb.x
    i32 4, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.ec = icmp eq i32 %i.dz, -1
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !310
  %i.ef = add nsw i32 %i.ee, -1
  br label %thread-pre-split

bb.z:                                             ; preds = %bb.x
  %i.eg = icmp sgt i32 %i.dz, 0
  br i1 %i.eg, label %.thread115, label %.thread111

.thread115:                                       ; preds = %bb.z
  %i.eh = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.dy, align 8, !tbaa !304
  br label %bb.ad

bb.aa:                                            ; preds = %bb.w
  %.not = icmp eq i32 %i.dz, -1
  br i1 %.not, label %.thread111, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = add nuw nsw i32 %i.dz, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !310
  %.not96 = icmp slt i32 %i.ei, %i.ek
  %spec.store.select = select i1 %.not96, i32 %i.ei, i32 -1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ab, %bb.y
  %spec.store.select.sink = phi i32 [ %spec.store.select, %bb.ab ], [ %i.ef, %bb.y ] ; 4 uses
  store i32 %spec.store.select.sink, ptr %i.dy, align 8
  %.not97 = icmp eq i32 %i.dz, %spec.store.select.sink
  br i1 %.not97, label %.thread111, label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split
  %i.el = icmp sgt i32 %spec.store.select.sink, -1
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread115, %bb.ac
  %i.em = phi i32 [ %i.eh, %.thread115 ], [ %spec.store.select.sink, %bb.ac ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !300
  %i.ep = zext nneg i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !68
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.es = phi ptr [ %i.er, %bb.ad ], [ @.str.203, %bb.ac ]
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !272
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0, i32 noundef %i.eu)
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0, ptr noundef %i.es, ptr noundef null)
  br label %.thread111

.thread111:                                       ; preds = %bb.z, %bb.aa, %bb.w, %thread-pre-split, %bb.ae, %_ZN8ImVectorIPKcED2Ev.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13ExampleAppLogC2Ev(ptr noundef nonnull align 8 dereferenceable(313) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN15ImGuiTextFilterC1EPKc(ptr noundef nonnull align 8 dereferenceable(276) %i.a, ptr noundef nonnull @.str.203)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %i.c, align 8, !tbaa !324
  invoke void @_ZN13ExampleAppLog5ClearEv(ptr noundef nonnull align 8 dereferenceable(313) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8ImVectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #27
  tail call void @_ZN15ImGuiTextFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(276) dereferenceable(276) %i.a) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  tail call void @_ZN15ImGuiTextBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ExampleAppLogD2Ev(ptr noundef nonnull align 8 dead_on_return(313) dereferenceable(313) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN8ImVectorIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
