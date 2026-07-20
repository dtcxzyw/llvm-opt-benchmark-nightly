inline.NumInlined: 2394
inline.NumDeleted: 987
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvh2cl26TokenizeWindowsCommandLineENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
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
  %.01857 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.01956 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !178
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
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit

_ZN4llvh11SmallStringILj128EE6appendEmc.exit:     ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ %i.q, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.af = add i32 %i.ae, %i.k                     ; 3 uses
  store i32 %i.af, ptr %i.p, align 8, !tbaa !155
  %i.ag = and i32 %.01857, 1
  %.not21 = icmp eq i32 %i.ag, 0
  br i1 %.not21, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvh11SmallStringILj128EE6appendEmc.exit
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !178
  %.not.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.g, !prof !180

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 1) #28
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !155
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.f, %bb.g
  %i.aj = phi i32 [ %.pre.i, %bb.g ], [ %i.af, %bb.f ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !177
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 34, ptr %i.am, align 1
  %i.an = load i32, ptr %i.p, align 8, !tbaa !155
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !155
  br label %bb.i

.critedge23:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.019.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %.01956, %.lr.ph ]
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.ap = zext nneg i32 %.lcssa to i64            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !178
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !155
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.ap
  br i1 %i.ax, label %.thread.i.i25, label %bb.h

.thread.i.i25:                                    ; preds = %.critedge23
  %i.ay = add nuw nsw i64 %i.av, %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.az, i64 noundef %i.ay, i64 noundef 1) #28
  %i.ba = load ptr, ptr %3, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !155
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26

bb.h:                                             ; preds = %.critedge23
  %i.be = load ptr, ptr %3, align 8, !tbaa !177
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av
  br label %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26

_ZN4llvh11SmallStringILj128EE6appendEmc.exit26:   ; preds = %.thread.i.i25, %bb.h
  %i.bg = phi ptr [ %i.bd, %.thread.i.i25 ], [ %i.bf, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 92, i64 %i.ap, i1 false)
  %.pre.i.i24 = load i32, ptr %i.at, align 8, !tbaa !155
  %i.bh = add i32 %.pre.i.i24, %.lcssa
  store i32 %i.bh, ptr %i.at, align 8, !tbaa !155
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11SmallStringILj128EE6appendEmc.exit, %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %.0 = phi i64 [ %.019.lcssa, %_ZN4llvh11SmallStringILj128EE6appendEmc.exit26 ], [ %i.g, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %.01956, %_ZN4llvh11SmallStringILj128EE6appendEmc.exit ]
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
  %6 = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.e = add i64 %1, %6                           ; 2 uses
  br label %bb.b

._crit_edge85:                                    ; preds = %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph84, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit
  %.082 = phi ptr [ %0, %.lr.ph84 ], [ %.6109, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit ] ; 13 uses
  %.08289 = ptrtoaddr ptr %.082 to i64            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.b, ptr %5, align 8, !tbaa !177
  store i32 0, ptr %i.c, align 8, !tbaa !155
  store i32 128, ptr %i.d, align 4, !tbaa !178
  %i.f = load i8, ptr %.082, align 1, !tbaa !18   ; 2 uses
  %.not4172 = icmp eq ptr %.082, %i.a             ; 3 uses
  switch i8 %i.f, label %.preheader [
    i8 32, label %_ZL12isWhitespacec.exit
    i8 13, label %_ZL12isWhitespacec.exit
    i8 9, label %_ZL12isWhitespacec.exit
    i8 10, label %_ZL12isWhitespacec.exit
    i8 35, label %.preheader60
  ]

.preheader60:                                     ; preds = %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph, !llvm.loop !184

.lr.ph:                                           ; preds = %.preheader60
  %scevgep = getelementptr i8, ptr %.082, i64 %i.e
  %i.g = sub i64 0, %.08289
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.g
  br label %bb.e, !llvm.loop !184

.preheader:                                       ; preds = %bb.b
  br i1 %.not4172, label %._crit_edge, label %.lr.ph75

_ZL12isWhitespacec.exit:                          ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph68, !llvm.loop !184

.lr.ph68:                                         ; preds = %_ZL12isWhitespacec.exit
  %scevgep91 = getelementptr i8, ptr %.082, i64 %i.e
  %i.h = sub i64 0, %.08289
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.h
  br label %bb.c, !llvm.loop !184

bb.c:                                             ; preds = %.lr.ph68, %bb.d
  %.167 = phi ptr [ %.082, %.lr.ph68 ], [ %i.j, %bb.d ] ; 3 uses
  %i.i = load i8, ptr %.167, align 1, !tbaa !18
  switch i8 %i.i, label %..critedge.loopexit_crit_edge70 [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 9, label %bb.d
    i8 10, label %bb.d
  ], !llvm.loop !184

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.167, i64 1 ; 2 uses
  %.not46 = icmp eq ptr %i.j, %i.a
  br i1 %.not46, label %..critedge.loopexit_crit_edge, label %bb.c, !llvm.loop !185

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.263 = phi ptr [ %.082, %.lr.ph ], [ %i.l, %bb.f ] ; 3 uses
  %i.k = load i8, ptr %.263, align 1, !tbaa !18
  %.not45 = icmp eq i8 %i.k, 10
  br i1 %.not45, label %..critedge.loopexit61_crit_edge64, label %bb.f, !llvm.loop !184

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.263, i64 1 ; 2 uses
  %.not44 = icmp eq ptr %i.l, %i.a
  br i1 %.not44, label %..critedge.loopexit61_crit_edge, label %bb.e, !llvm.loop !186

.lr.ph75thread-pre-split:                         ; preds = %bb.o
  %.pr = load i8, ptr %i.an, align 1, !tbaa !18
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader, %.lr.ph75thread-pre-split
  %i.m = phi i8 [ %.pr, %.lr.ph75thread-pre-split ], [ %i.f, %.preheader ]
  %i.n = phi i32 [ %i.am, %.lr.ph75thread-pre-split ], [ 0, %.preheader ] ; 8 uses
  %.374 = phi ptr [ %i.an, %.lr.ph75thread-pre-split ], [ %.082, %.preheader ] ; 8 uses
  %.03473 = phi ptr [ %.135, %.lr.ph75thread-pre-split ], [ %.082, %.preheader ] ; 9 uses
  switch i8 %i.m, label %bb.o [
    i8 92, label %bb.g
    i8 10, label %._crit_edge.loopexit
  ]

bb.g:                                             ; preds = %.lr.ph75
  %i.o = getelementptr inbounds nuw i8, ptr %.374, i64 1 ; 7 uses
  %.not42 = icmp eq ptr %i.o, %i.a
  br i1 %.not42, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  switch i8 %i.p, label %bb.o [
    i8 10, label %bb.k
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.374, i64 2 ; 2 uses
  %.not43 = icmp eq ptr %i.q, %i.a
  br i1 %.not43, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.t = ptrtoint ptr %.374 to i64
  %i.u = ptrtoint ptr %.03473 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !178
  %i.x = zext i32 %i.w to i64
  %i.y = zext i32 %i.n to i64                     ; 2 uses
  %i.z = sub nsw i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.v, %i.z
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = add i64 %i.v, %i.y
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.b, i64 noundef %i.ab, i64 noundef 1) #28
  %.pre7.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre7.i.i = phi i32 [ %.pre7.pre.i.i, %bb.l ], [ %i.n, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.03473, %.374
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %5, align 8, !tbaa !177
  %i.ad = zext i32 %.pre7.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %.03473, i64 %i.v, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !155
  br label %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit

_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit: ; preds = %bb.m, %bb.n
  %i.af = phi i32 [ %.pre7.i.i, %bb.m ], [ %.pre.i.i, %bb.n ]
  %i.ag = trunc i64 %i.v to i32
  %i.ah = add i32 %i.af, %i.ag                    ; 2 uses
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !155
  %i.ai = load i8, ptr %i.o, align 1, !tbaa !18
  %i.aj = icmp eq i8 %i.ai, 13
  %i.ak = getelementptr inbounds nuw i8, ptr %.374, i64 2
  %spec.select = select i1 %i.aj, ptr %i.ak, ptr %i.o ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph75, %bb.h, %bb.i, %bb.j, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit, %bb.g
  %i.am = phi i32 [ %i.ah, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %i.n, %bb.j ], [ %i.n, %bb.i ], [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %.135 = phi ptr [ %i.al, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %.03473, %bb.j ], [ %.03473, %bb.i ], [ %.03473, %bb.h ], [ %.03473, %bb.g ], [ %.03473, %.lr.ph75 ] ; 2 uses
  %.5 = phi ptr [ %spec.select, %_ZN4llvh11SmallStringILj128EE6appendIPKcEEvT_S5_.exit ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %bb.h ], [ %.374, %bb.g ], [ %.374, %.lr.ph75 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %.not41 = icmp eq ptr %i.an, %i.a
  br i1 %.not41, label %._crit_edge.loopexit, label %.lr.ph75thread-pre-split, !llvm.loop !187

._crit_edge.loopexit:                             ; preds = %.lr.ph75, %bb.o
  %i.ao = phi i32 [ %i.am, %bb.o ], [ %i.n, %.lr.ph75 ]
  %.034.lcssa.ph = phi ptr [ %.135, %bb.o ], [ %.03473, %.lr.ph75 ]
  %.3.lcssa.ph = phi ptr [ %i.an, %bb.o ], [ %.374, %.lr.ph75 ]
  %.pre = load i32, ptr %i.d, align 4, !tbaa !178
  %i.ap = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %7 = phi i32 [ 0, %.preheader ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %.pre-phi = phi i64 [ 128, %.preheader ], [ %i.ap, %._crit_edge.loopexit ]
  %.034.lcssa = phi ptr [ %.082, %.preheader ], [ %.034.lcssa.ph, %._crit_edge.loopexit ] ; 3 uses
  %.3.lcssa = phi ptr [ %.082, %.preheader ], [ %.3.lcssa.ph, %._crit_edge.loopexit ] ; 4 uses
  %8 = ptrtoint ptr %.3.lcssa to i64
  %9 = ptrtoint ptr %.034.lcssa to i64
  %i.aq = sub i64 %8, %9                          ; 4 uses
  %i.ar = zext i32 %7 to i64                      ; 2 uses
  %i.as = sub nsw i64 %.pre-phi, %i.ar
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.au = add i64 %i.aq, %i.ar
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.b, i64 noundef %i.au, i64 noundef 1) #28
  %.pre7.pre.i.i51 = load i32, ptr %i.c, align 8, !tbaa !155
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.pre7.i.i48 = phi i32 [ %.pre7.pre.i.i51, %bb.p ], [ %7, %._crit_edge ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.034.lcssa, %.3.lcssa
  %.pre94 = load ptr, ptr %5, align 8, !tbaa !177 ; 2 uses
  br i1 %.not.i.i.i49, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = zext i32 %.pre7.i.i48 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre94, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %.034.lcssa, i64 %i.aq, i1 false)
  %.pre.i.i50 = load i32, ptr %i.c, align 8, !tbaa !155
  %.pre93 = load ptr, ptr %5, align 8, !tbaa !177
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %bb.d
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !184

..critedge.loopexit_crit_edge70:                  ; preds = %bb.c
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !184

..critedge.loopexit61_crit_edge:                  ; preds = %bb.f
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !184

..critedge.loopexit61_crit_edge64:                ; preds = %bb.e
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !184

.critedge:                                        ; preds = %bb.r, %bb.q
  %i.ax = phi ptr [ %.pre94, %bb.q ], [ %.pre93, %bb.r ]
  %i.ay = phi i32 [ %.pre7.i.i48, %bb.q ], [ %.pre.i.i50, %bb.r ]
  %i.az = trunc i64 %i.aq to i32
  %i.ba = add i32 %i.ay, %i.az                    ; 2 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !155
  %i.bb = zext i32 %i.ba to i64
  call void @_ZN4llvh2cl22TokenizeGNUCommandLineENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb(ptr %i.ax, i64 %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4)
  %.pre95 = load ptr, ptr %5, align 8, !tbaa !177 ; 2 uses
  %i.bc = icmp eq ptr %.pre95, %i.b
  br i1 %i.bc, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  call void @free(ptr noundef %.pre95) #28
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %.preheader60, %..critedge.loopexit61_crit_edge64, %..critedge.loopexit61_crit_edge, %..critedge.loopexit_crit_edge70, %..critedge.loopexit_crit_edge, %_ZL12isWhitespacec.exit, %.critedge, %bb.s
  %.6109 = phi ptr [ %.3.lcssa, %bb.s ], [ %.3.lcssa, %.critedge ], [ %.082, %.preheader60 ], [ %.263, %..critedge.loopexit61_crit_edge64 ], [ %scevgep90, %..critedge.loopexit61_crit_edge ], [ %.167, %..critedge.loopexit_crit_edge70 ], [ %scevgep92, %..critedge.loopexit_crit_edge ], [ %.082, %_ZL12isWhitespacec.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.not = icmp eq ptr %.6109, %i.a
  br i1 %.not, label %._crit_edge85, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh2cl19ExpandResponseFilesERNS_11StringSaverEPFvNS_9StringRefES2_RNS_15SmallVectorImplIPKcEEbES8_bb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvh::SmallVector.62", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.ao, %bb.o ] ; 2 uses
  %i.g = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.o ] ; 4 uses
  %.02747 = phi i32 [ 0, %.lr.ph ], [ %.229, %bb.o ] ; 4 uses
  %.03046 = phi i1 [ true, %.lr.ph ], [ %.232, %bb.o ] ; 3 uses
  %.03445 = phi i32 [ 0, %.lr.ph ], [ %.135, %bb.o ] ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.02747, 1
  br label %bb.o, !llvm.loop !188

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !18
  %.not38 = icmp eq i8 %i.m, 64
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %.02747, 1
  br label %bb.o, !llvm.loop !188

bb.f:                                             ; preds = %bb.d
  %i.o = add i32 %.03445, 1
  %i.p = icmp ugt i32 %.03445, 20
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.c, ptr %5, align 8, !tbaa !177
  store i32 0, ptr %i.d, align 8, !tbaa !155
  store i32 0, ptr %i.e, align 4, !tbaa !178
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #32
  %i.s = call fastcc noundef zeroext i1 @_ZL18ExpandResponseFileN4llvh9StringRefERNS_11StringSaverEPFvS0_S2_RNS_15SmallVectorImplIPKcEEbES7_bb(ptr nonnull %i.q, i64 %i.r, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add i32 %.02747, 1
  br label %bb.m, !llvm.loop !188

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %2, align 8, !tbaa !177    ; 3 uses
  %.idx43 = shl nuw nsw i64 %i.g, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx43 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.a, align 8, !tbaa !155  ; 3 uses
  %i.y = zext i32 %i.x to i64
  %i.z = sub nsw i64 %i.y, %i.g                   ; 2 uses
  %reass.sub = shl nsw i64 %i.z, 3
  %gepdiff = add nsw i64 %reass.sub, -8           ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 2
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !180

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.v, ptr nonnull align 8 %i.w, i64 %gepdiff, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !155
  %.pre = load ptr, ptr %2, align 8, !tbaa !177
  br label %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %gepdiff, 8
  br i1 %i.ab, label %bb.l, label %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !56
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !56
  br label %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit

_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit:  ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.u, %bb.k ], [ %i.u, %bb.l ]
  %i.ae = phi i32 [ %.pre.i, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !155
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.g
  %i.ah = load ptr, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !155
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = call noundef ptr @_ZN4llvh15SmallVectorImplIPKcE6insertIPS2_vEES5_S5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ak) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit, %bb.h
  %.131 = phi i1 [ %.03046, %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit ], [ false, %bb.h ]
  %.128 = phi i32 [ %.02747, %_ZN4llvh15SmallVectorImplIPKcE5eraseEPKS2_.exit ], [ %i.t, %bb.h ]
  %i.am = load ptr, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.am) #28
  br label %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit

_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pre53 = load i32, ptr %i.a, align 8, !tbaa !155
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit, %bb.e, %bb.c
  %i.ao = phi i32 [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %.pre53, %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit ] ; 2 uses
  %.135 = phi i32 [ %.03445, %bb.c ], [ %.03445, %bb.e ], [ %i.o, %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit ]
  %.232 = phi i1 [ %.03046, %bb.c ], [ %.03046, %bb.e ], [ %.131, %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit ] ; 2 uses
  %.229 = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.e ], [ %.128, %_ZN4llvh11SmallVectorIPKcLj0EED2Ev.exit ] ; 3 uses
  %i.ap = zext i32 %.229 to i64
  %.not = icmp eq i32 %i.ao, %.229
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.o, %bb.f, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.f ], [ %.232, %bb.o ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18ExpandResponseFileN4llvh9StringRefERNS_11StringSaverEPFvS0_S2_RNS_15SmallVectorImplIPKcEEbES7_bb(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvh::ErrorOr", align 8     ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 6 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvh::SmallString", align 8 ; 13 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
end_hunk_0
