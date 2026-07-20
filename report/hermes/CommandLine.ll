inline.NumInlined: 2394
inline.NumDeleted: 987
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvh2cl26TokenizeWindowsCommandLineENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  %i.an = load i32, ptr %i.e, align 4, !tbaa !178
  %.not.i44 = icmp ult i32 %i.al, %i.an
  br i1 %.not.i44, label %.thread.jt0.sink.split, label %.thread.jt0.sink.split.sink.split, !prof !180

bb.k:                                             ; preds = %bb.h
  %i.ao = call fastcc noundef i64 @_ZL14parseBackslashN4llvh9StringRefEmRNS_11SmallStringILj128EEE(ptr nonnull %0, i64 %1, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(144) %5)
  br label %.thread.jt1.backedge

.thread.jt1.backedge:                             ; preds = %bb.k, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit49
  %.133.jt1.be = phi i64 [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit49 ], [ %i.ao, %bb.k ]
  %i.ap = add i64 %.133.jt1.be, 1                 ; 2 uses
  %.not.jt1 = icmp eq i64 %i.ap, %1
  br i1 %.not.jt1, label %._crit_edge, label %bb.h, !llvm.loop !183

bb.l:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !178
  %.not.i47 = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i47, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit49, label %bb.m, !prof !180

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 1) #28
  %.pre.i48 = load i32, ptr %i.b, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit49

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit49: ; preds = %bb.l, %bb.m
  %i.as = phi i32 [ %.pre.i48, %bb.m ], [ %i.aq, %bb.l ]
  %i.at = load ptr, ptr %5, align 8, !tbaa !177
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 %i.x, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !155
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !155
  br label %.thread.jt1.backedge

bb.n:                                             ; preds = %.lr.ph118, %.thread.jt2.backedge
  %i.ay = phi i64 [ %i.i, %.lr.ph118 ], [ %i.bk, %.thread.jt2.backedge ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18  ; 2 uses
  switch i8 %i.ba, label %bb.p [
    i8 34, label %.thread.jt1.preheader
    i8 92, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bb = call fastcc noundef i64 @_ZL14parseBackslashN4llvh9StringRefEmRNS_11SmallStringILj128EEE(ptr nonnull %0, i64 %1, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(144) %5)
  br label %.thread.jt2.backedge

bb.p:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !178
  %.not.i50 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52, label %bb.q, !prof !180

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 1) #28
  %.pre.i51 = load i32, ptr %i.b, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52: ; preds = %bb.p, %bb.q
  %i.be = phi i32 [ %.pre.i51, %bb.q ], [ %i.bc, %bb.p ]
  %i.bf = load ptr, ptr %5, align 8, !tbaa !177
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  store i8 %i.ba, ptr %i.bh, align 1
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !155
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !155
  br label %.thread.jt2.backedge

.thread.jt2.backedge:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52, %bb.o
  %.133.jt2.be = phi i64 [ %i.ay, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52 ], [ %i.bb, %bb.o ]
  %i.bk = add i64 %.133.jt2.be, 1                 ; 2 uses
  %.not.jt2 = icmp eq i64 %i.bk, %1
  br i1 %.not.jt2, label %._crit_edge, label %bb.n, !llvm.loop !183

.thread.jt1.preheader:                            ; preds = %bb.n, %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %.133.jt1.ph = phi i64 [ %i.m, %bb.e ], [ %.sink104, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %i.ay, %bb.n ]
  %i.bl = add i64 %.133.jt1.ph, 1                 ; 2 uses
  %.not.jt1115 = icmp eq i64 %i.bl, %1
  br i1 %.not.jt1115, label %._crit_edge, label %.lr.ph116, !llvm.loop !183

.lr.ph116:                                        ; preds = %.thread.jt1.preheader
  br label %bb.h, !llvm.loop !183

.thread.jt0.sink.split.sink.split:                ; preds = %bb.j, %bb.d
  %.133.jt0.ph.ph = phi i64 [ %.sink104, %bb.d ], [ %i.v, %bb.j ]
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 8) #28
  %.pre.i45 = load i32, ptr %i.d, align 8, !tbaa !155
  br label %.thread.jt0.sink.split

.thread.jt0.sink.split:                           ; preds = %.thread.jt0.sink.split.sink.split, %bb.j, %bb.d
  %.sink = phi i32 [ %i.k, %bb.d ], [ %i.al, %bb.j ], [ %.pre.i45, %.thread.jt0.sink.split.sink.split ]
  %.133.jt0.ph = phi i64 [ %.sink104, %bb.d ], [ %i.v, %bb.j ], [ %.133.jt0.ph.ph, %.thread.jt0.sink.split.sink.split ]
  %i.bm = load ptr, ptr %3, align 8, !tbaa !177
  %i.bn = zext i32 %.sink to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 0, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !155
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.d, align 8, !tbaa !155
  br label %.thread.jt0

.thread.jt0:                                      ; preds = %.thread.jt0.sink.split, %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit43, %bb.b, %bb.c
  %.133.jt0 = phi i64 [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit43 ], [ %.sink104, %bb.c ], [ %.sink104, %bb.b ], [ %.133.jt0.ph, %.thread.jt0.sink.split ]
  %i.br = add i64 %.133.jt0, 1                    ; 2 uses
  %.not.jt0 = icmp eq i64 %i.br, %1
  br i1 %.not.jt0, label %._crit_edge, label %bb.b, !llvm.loop !183

bb.r:                                             ; preds = %._crit_edge
  %i.bs = load ptr, ptr %5, align 8, !tbaa !177
  %i.bt = zext i32 %.pre to i64
  %i.bu = call { ptr, i64 } @_ZN4llvh11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %i.bs, i64 %i.bt) #28
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !155 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !178
  %.not.i55 = icmp ult i32 %i.bx, %i.bz
  br i1 %.not.i55, label %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit57, label %bb.s, !prof !180

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 8) #28
  %.pre.i56 = load i32, ptr %i.bw, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit57

_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit57: ; preds = %bb.r, %bb.s
  %i.cb = phi i32 [ %.pre.i56, %bb.s ], [ %i.bx, %bb.r ]
  %i.cc = load ptr, ptr %3, align 8, !tbaa !177
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = ptrtoint ptr %i.bv to i64
  store i64 %i.cf, ptr %i.ce, align 1
  %i.cg = load i32, ptr %i.bw, align 8, !tbaa !155
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bw, align 8, !tbaa !155
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit57, %._crit_edge
  br i1 %4, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !178
  %.not.i58 = icmp ult i32 %i.cj, %i.cl
  br i1 %.not.i58, label %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit60, label %bb.u, !prof !180

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.cm, i64 noundef 0, i64 noundef 8) #28
  %.pre.i59 = load i32, ptr %i.ci, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit60

_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit60: ; preds = %bb.t, %bb.u
  %i.cn = phi i32 [ %.pre.i59, %bb.u ], [ %i.cj, %bb.t ]
  %i.co = load ptr, ptr %3, align 8, !tbaa !177
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  store i64 0, ptr %i.cq, align 1
  %i.cr = load i32, ptr %i.ci, align 8, !tbaa !155
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ci, align 8, !tbaa !155
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPKcLb1EE9push_backERKS2_.exit60, %._crit_edge.thread
  %i.ct = load ptr, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.a
  br i1 %i.cu, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ct) #28
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZL14parseBackslashN4llvh9StringRefEmRNS_11SmallStringILj128EEE(ptr nofree readonly captures(none) %0, i64 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = trunc i64 %1 to i32
  %i.c = trunc i64 %2 to i32
  %i.d = sub i32 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %2, 1                            ; 2 uses
  %.not55 = icmp eq i64 %i.e, %1
  br i1 %.not55, label %.critedge23, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %i.g, 1                          ; 2 uses
  %.not = icmp eq i64 %i.f, %1
  br i1 %.not, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %.01857 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.01956 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]
  %i.h = add nuw nsw i32 %.01857, 1               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  switch i8 %i.j, label %.critedge23 [
    i8 92, label %bb.b
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.k = lshr i32 %i.h, 1                         ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !178  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = sub nsw i64 %i.o, %i.r
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.u = add nuw nsw i64 %i.r, %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 1) #28
  %i.w = load ptr, ptr %3, align 8, !tbaa !177
  %i.x = load i32, ptr %i.p, align 8, !tbaa !155
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %3, align 8, !tbaa !177
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  %i.ac = icmp eq i32 %i.k, 0
  br i1 %i.ac, label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.ad = phi ptr [ %i.z, %.thread.i.i ], [ %i.ab, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 92, i64 %i.l, i1 false)
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !155
  %.pre = load i32, ptr %i.m, align 4, !tbaa !178
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit

_ZN4llvh11SmallStringILj128EE6appendEmc.exit:     ; preds = %bb.d, %bb.e
  %4 = phi i32 [ %i.n, %bb.d ], [ %.pre, %bb.e ]
  %i.ae = phi i32 [ %i.q, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.af = add i32 %i.ae, %i.k                     ; 3 uses
  store i32 %i.af, ptr %i.p, align 8, !tbaa !155
  %.not.i = icmp ult i32 %i.af, %4
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.f, !prof !180

bb.f:                                             ; preds = %_ZN4llvh11SmallStringILj128EE6appendEmc.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 1) #28
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %_ZN4llvh11SmallStringILj128EE6appendEmc.exit, %bb.f
  %i.ah = phi i32 [ %.pre.i, %bb.f ], [ %i.af, %_ZN4llvh11SmallStringILj128EE6appendEmc.exit ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !177
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 34, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.p, align 8, !tbaa !155
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.p, align 8, !tbaa !155
  br label %bb.h

.critedge23:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.019.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %.01956, %.lr.ph ]
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.an = zext nneg i32 %.lcssa to i64            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !178
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !155
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %i.au = sub nsw i64 %i.aq, %i.at
  %i.av = icmp ult i64 %i.au, %i.an
  br i1 %i.av, label %.thread.i.i25, label %bb.g

.thread.i.i25:                                    ; preds = %.critedge23
  %i.aw = add nuw nsw i64 %i.at, %i.an
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.ax, i64 noundef %i.aw, i64 noundef 1) #28
  %i.ay = load ptr, ptr %3, align 8, !tbaa !177
  %i.az = load i32, ptr %i.ar, align 8, !tbaa !155
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26

bb.g:                                             ; preds = %.critedge23
  %i.bc = load ptr, ptr %3, align 8, !tbaa !177
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26

_ZN4llvh11SmallStringILj128EE6appendEmc.exit26:   ; preds = %.thread.i.i25, %bb.g
  %i.be = phi ptr [ %i.bb, %.thread.i.i25 ], [ %i.bd, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.be, i8 92, i64 %i.an, i1 false)
  %.pre.i.i24 = load i32, ptr %i.ar, align 8, !tbaa !155
  %i.bf = add i32 %.pre.i.i24, %.lcssa
  store i32 %i.bf, ptr %i.ar, align 8, !tbaa !155
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %.0 = phi i64 [ %.019.lcssa, %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26 ], [ %i.g, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) #0 {
bb.a:
  %5 = alloca %"class.llvh::SmallString", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  %.not81 = icmp samesign eq i64 %1, 0
  br i1 %.not81, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.f = add i64 %1, %i.b                         ; 2 uses
  br label %bb.b

._crit_edge85:                                    ; preds = %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph84, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit
  %.082 = phi ptr [ %0, %.lr.ph84 ], [ %.6109, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit ] ; 13 uses
  %.08289 = ptrtoint ptr %.082 to i64             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.c, ptr %5, align 8, !tbaa !177
  store i32 0, ptr %i.d, align 8, !tbaa !155
  store i32 128, ptr %i.e, align 4, !tbaa !178
  %i.g = load i8, ptr %.082, align 1, !tbaa !18   ; 2 uses
  %.not4172 = icmp eq ptr %.082, %i.a             ; 3 uses
  switch i8 %i.g, label %.preheader [
    i8 32, label %_ZL12isWhitespacec.exit
    i8 13, label %_ZL12isWhitespacec.exit
    i8 9, label %_ZL12isWhitespacec.exit
    i8 10, label %_ZL12isWhitespacec.exit
    i8 35, label %.preheader60
  ]

.preheader60:                                     ; preds = %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph, !llvm.loop !184

.lr.ph:                                           ; preds = %.preheader60
  %scevgep = getelementptr i8, ptr %.082, i64 %i.f
  %i.h = sub i64 0, %.08289
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.h
  br label %bb.e, !llvm.loop !184

.preheader:                                       ; preds = %bb.b
  br i1 %.not4172, label %._crit_edge, label %.lr.ph75

_ZL12isWhitespacec.exit:                          ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph68, !llvm.loop !184

.lr.ph68:                                         ; preds = %_ZL12isWhitespacec.exit
  %scevgep91 = getelementptr i8, ptr %.082, i64 %i.f
  %i.i = sub i64 0, %.08289
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.i
  br label %bb.c, !llvm.loop !184

bb.c:                                             ; preds = %.lr.ph68, %bb.d
  %.167 = phi ptr [ %.082, %.lr.ph68 ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.167, align 1, !tbaa !18
  switch i8 %i.j, label %..critedge.loopexit_crit_edge70 [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 9, label %bb.d
    i8 10, label %bb.d
  ], !llvm.loop !184

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.167, i64 1 ; 2 uses
  %.not46 = icmp eq ptr %i.k, %i.a
  br i1 %.not46, label %..critedge.loopexit_crit_edge, label %bb.c, !llvm.loop !185

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.263 = phi ptr [ %.082, %.lr.ph ], [ %i.m, %bb.f ] ; 3 uses
  %i.l = load i8, ptr %.263, align 1, !tbaa !18
  %.not45 = icmp eq i8 %i.l, 10
  br i1 %.not45, label %..critedge.loopexit61_crit_edge64, label %bb.f, !llvm.loop !184

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.263, i64 1 ; 2 uses
  %.not44 = icmp eq ptr %i.m, %i.a
  br i1 %.not44, label %..critedge.loopexit61_crit_edge, label %bb.e, !llvm.loop !186

.lr.ph75thread-pre-split:                         ; preds = %bb.o
  %.pr = load i8, ptr %i.ao, align 1, !tbaa !18
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader, %.lr.ph75thread-pre-split
  %i.n = phi i8 [ %.pr, %.lr.ph75thread-pre-split ], [ %i.g, %.preheader ]
  %i.o = phi i32 [ %i.an, %.lr.ph75thread-pre-split ], [ 0, %.preheader ] ; 8 uses
  %.374 = phi ptr [ %i.ao, %.lr.ph75thread-pre-split ], [ %.082, %.preheader ] ; 8 uses
  %.03473 = phi ptr [ %.135, %.lr.ph75thread-pre-split ], [ %.082, %.preheader ] ; 9 uses
  switch i8 %i.n, label %bb.o [
    i8 92, label %bb.g
    i8 10, label %._crit_edge.loopexit
  ]

bb.g:                                             ; preds = %.lr.ph75
  %i.p = getelementptr inbounds nuw i8, ptr %.374, i64 1 ; 7 uses
  %.not42 = icmp eq ptr %i.p, %i.a
  br i1 %.not42, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  switch i8 %i.q, label %bb.o [
    i8 10, label %bb.k
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.374, i64 2 ; 2 uses
  %.not43 = icmp eq ptr %i.r, %i.a
  br i1 %.not43, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.u = ptrtoint ptr %.374 to i64
  %i.v = ptrtoint ptr %.03473 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = load i32, ptr %i.e, align 4, !tbaa !178
  %i.y = zext i32 %i.x to i64
  %i.z = zext i32 %i.o to i64                     ; 2 uses
  %i.aa = sub nsw i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = add i64 %i.w, %i.z
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.c, i64 noundef %i.ac, i64 noundef 1) #28
  %.pre7.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre7.i.i = phi i32 [ %.pre7.pre.i.i, %bb.l ], [ %i.o, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.03473, %.374
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %5, align 8, !tbaa !177
  %i.ae = zext i32 %.pre7.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.03473, i64 %i.w, i1 false)
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !155
  br label %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit

_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit: ; preds = %bb.m, %bb.n
  %i.ag = phi i32 [ %.pre7.i.i, %bb.m ], [ %.pre.i.i, %bb.n ]
  %i.ah = trunc i64 %i.w to i32
  %i.ai = add i32 %i.ag, %i.ah                    ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !155
  %i.aj = load i8, ptr %i.p, align 1, !tbaa !18
  %i.ak = icmp eq i8 %i.aj, 13
  %i.al = getelementptr inbounds nuw i8, ptr %.374, i64 2
  %spec.select = select i1 %i.ak, ptr %i.al, ptr %i.p ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph75, %bb.h, %bb.i, %bb.j, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit, %bb.g
  %i.an = phi i32 [ %i.ai, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %.lr.ph75 ] ; 2 uses
  %.135 = phi ptr [ %i.am, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %.03473, %bb.j ], [ %.03473, %bb.i ], [ %.03473, %bb.h ], [ %.03473, %bb.g ], [ %.03473, %.lr.ph75 ] ; 2 uses
  %.5 = phi ptr [ %spec.select, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %.374, %bb.g ], [ %.374, %.lr.ph75 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %.not41 = icmp eq ptr %i.ao, %i.a
  br i1 %.not41, label %._crit_edge.loopexit, label %.lr.ph75thread-pre-split, !llvm.loop !187

._crit_edge.loopexit:                             ; preds = %.lr.ph75, %bb.o
  %i.ap = phi i32 [ %i.an, %bb.o ], [ %i.o, %.lr.ph75 ]
  %.034.lcssa.ph = phi ptr [ %.135, %bb.o ], [ %.03473, %.lr.ph75 ] ; 2 uses
  %.3.lcssa.ph = phi ptr [ %i.ao, %bb.o ], [ %.374, %.lr.ph75 ] ; 2 uses
  %.pre = load i32, ptr %i.e, align 4, !tbaa !178
  %.pre96 = ptrtoint ptr %.3.lcssa.ph to i64
  %.pre97 = ptrtoint ptr %.034.lcssa.ph to i64
  %i.aq = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi98 = phi i64 [ %.pre97, %._crit_edge.loopexit ], [ %.08289, %.preheader ]
  %.pre-phi = phi i64 [ %.pre96, %._crit_edge.loopexit ], [ %.08289, %.preheader ]
  %i.ar = phi i32 [ %i.ap, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.as = phi i64 [ %i.aq, %._crit_edge.loopexit ], [ 128, %.preheader ]
  %.034.lcssa = phi ptr [ %.034.lcssa.ph, %._crit_edge.loopexit ], [ %.082, %.preheader ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3.lcssa.ph, %._crit_edge.loopexit ], [ %.082, %.preheader ] ; 3 uses
  %i.at = sub i64 %.pre-phi, %.pre-phi98          ; 4 uses
  %i.au = zext i32 %i.ar to i64                   ; 2 uses
  %i.av = sub nsw i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ax = add i64 %i.at, %i.au
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.c, i64 noundef %i.ax, i64 noundef 1) #28
  %.pre7.pre.i.i51 = load i32, ptr %i.d, align 8, !tbaa !155
  br label %bb.q
end_hunk_0
