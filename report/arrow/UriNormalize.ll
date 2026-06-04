inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@uriNormalizeSyntaxExMmW:bb.a
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ @defaultMemoryManager, %bb.a ]
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriPreventLeakageA(ptr noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  tail call void %i.g(ptr noundef %2, ptr noundef %i.i) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %1, 4
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  tail call void %i.y(ptr noundef %2, ptr noundef nonnull %i.r) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h, %bb.e
  %i.z = and i32 %1, 8
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !48 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #7
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  tail call void %i.as(ptr noundef %2, ptr noundef %i.au) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %0, ptr noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.az, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.c ], [ %.2.i, %bb.h ] ; 8 uses
  %.0.lcssa.i18 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.i = icmp slt i32 %.039.lcssa.i, %i.g
  br i1 %i.i, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.j = sext i32 %.039.lcssa.i to i64            ; 8 uses
  %sext.i = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.l = sub nsw i64 %i.k, %i.j                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add i64 %i.e, %i.j
  %i.n = sub i64 %.0.lcssa.i18, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = add nsw i64 %n.vec, %i.j
  %i.p = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load20 = load <16 x i8>, ptr %i.q, align 1, !tbaa !17
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load20, ptr %i.r, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.l, -4                     ; 4 uses
  %i.t = add nsw i64 %n.vec23, %i.j
  %i.u = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec23 ; 2 uses
  %invariant.gep35 = getelementptr i8, ptr %0, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep25 = getelementptr i8, ptr %.0.lcssa.i, i64 %index24
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %index24
  %wide.load26 = load <4 x i8>, ptr %gep36, align 1, !tbaa !17
  store <4 x i8> %wide.load26, ptr %next.gep25, align 1, !tbaa !17
  %index.next27 = add nuw i64 %index24, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.l, %n.vec23
  br i1 %cmp.n28, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %i.w = sub i64 %i.f, %indvars.iv.i.ph
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.z, %.lr.ph49.i.prol ], [ %.348.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  store i8 %i.y, ptr %.348.i.prol, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !121

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.z, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph49.i.preheader ], [ %i.z, %.lr.ph49.i.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %i.k
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.ac = phi i32 [ %i.ba, %bb.h ], [ 2, %bb.c ]  ; 3 uses
  %.045.i = phi ptr [ %.2.i, %bb.h ], [ %0, %bb.c ] ; 7 uses
  %.03944.i = phi i32 [ %i.az, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.ad = sext i32 %.03944.i to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.af, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.af, ptr %.045.i, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr i8, ptr %i.ae, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = sext i32 %i.ac to i64
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ai) #7
  %i.an = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.al) #7
  %i.ao = zext i8 %i.am to i32                    ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 4
  %i.aq = zext i8 %i.an to i32                    ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, %i.aq            ; 2 uses
  %i.as = tail call i32 @uriIsUnreserved(i32 noundef %i.ar) #7
  %.not43.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.045.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = trunc i32 %i.ar to i8
  store i8 %i.au, ptr %.045.i, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.av = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ao) #7
  store i8 %i.av, ptr %i.at, align 1, !tbaa !17
  %i.aw = tail call signext i8 @uriHexToLetterA(i32 noundef %i.aq) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %.045.i, i64 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.140.i = phi i32 [ %.03944.i, %bb.d ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.2.i = phi ptr [ %i.ag, %bb.d ], [ %i.ay, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.az = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ba = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.g
  br i1 %i.bb, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.cg, %.lr.ph49.i ], [ %.348.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  store i8 %i.bd, ptr %.348.i, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.348.i, i64 1
  %i.bf = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.bj = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.348.i, i64 3
  %i.bn = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.br = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.348.i, i64 5
  %i.bv = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.348.i, i64 6
  %i.bz = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.348.i, i64 7
  %i.cd = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.k
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !124

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.u, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cg, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocA(ptr noundef nonnull captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %2, align 8, !tbaa !31
  %i.l = and i64 %i.g, 2147483647
  %i.m = tail call ptr %i.k(ptr noundef nonnull %2, i64 noundef %i.l) #7 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !24     ; 14 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !24
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 2
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bm, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.2.i, %bb.k ] ; 8 uses
  %.0.lcssa.i36 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.v = icmp slt i32 %.039.lcssa.i, %i.t
  br i1 %i.v, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.w = sext i32 %.039.lcssa.i to i64            ; 8 uses
  %sext.i = shl i64 %i.s, 32
  %i.x = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.y = sub nsw i64 %i.x, %i.w                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %i.r, %i.w
  %i.aa = sub i64 %.0.lcssa.i36, %i.z
  %diff.check = icmp ult i64 %i.aa, 32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 28
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = add nsw i64 %n.vec, %i.w
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load38 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !17
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load38, ptr %i.ae, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.y, -4                     ; 4 uses
  %i.ag = add nsw i64 %n.vec41, %i.w
  %i.ah = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec41 ; 2 uses
  %invariant.gep53 = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep43 = getelementptr i8, ptr %.0.lcssa.i, i64 %index42
  %gep54 = getelementptr i8, ptr %invariant.gep53, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %gep54, align 1, !tbaa !17
  store <4 x i8> %wide.load44, ptr %next.gep43, align 1, !tbaa !17
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.y, %n.vec41
  br i1 %cmp.n46, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 2 uses
  %i.aj = sub i64 %i.s, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.am, %.lr.ph49.i.prol ], [ %.348.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  store i8 %i.al, ptr %.348.i.prol, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !127

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.am, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph49.i.preheader ], [ %i.am, %.lr.ph49.i.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.ph, %i.x
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.ap = phi i32 [ %i.bn, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.045.i = phi ptr [ %.2.i, %bb.k ], [ %i.m, %bb.f ] ; 7 uses
  %.03944.i = phi i32 [ %i.bm, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %i.aq = sext i32 %.03944.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.o, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.as, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i8 %i.as, ptr %.045.i, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.av) #7
  %i.ba = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ay) #7
  %i.bb = zext i8 %i.az to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 4
  %i.bd = zext i8 %i.ba to i32                    ; 2 uses
  %i.be = add nuw nsw i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = tail call i32 @uriIsUnreserved(i32 noundef %i.be) #7
  %.not43.i = icmp eq i32 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.045.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = trunc i32 %i.be to i8
  store i8 %i.bh, ptr %.045.i, align 1, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.bi = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bb) #7
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !17
  %i.bj = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bd) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.045.i, i64 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.140.i = phi i32 [ %.03944.i, %bb.g ], [ %i.ap, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %.2.i = phi ptr [ %i.at, %bb.g ], [ %i.bl, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bm = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bn = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.t
  br i1 %i.bo, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.ct, %.lr.ph49.i ], [ %.348.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  store i8 %i.bq, ptr %.348.i, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.348.i, i64 1
  %i.bs = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.bw = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.348.i, i64 3
  %i.ca = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.ce = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.348.i, i64 5
  %i.ci = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.348.i, i64 6
  %i.cm = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.348.i, i64 7
  %i.cq = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !128

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.ah, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.ct, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  %.0 = phi i32 [ 1, %uriFixPercentEncodingEngineA.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentA(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntA(i8 noundef signext) local_unnamed_addr #3

declare i32 @uriIsUnreserved(i32 noundef) local_unnamed_addr #3

declare signext i8 @uriHexToLetterA(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerA(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !31
  %i.m = tail call ptr %i.l(ptr noundef nonnull %3, i64 noundef %i.k) #7 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.o, i64 %i.k, i1 false)
  store ptr %i.m, ptr %2, align 8, !tbaa !60
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.k
  store ptr %i.p, ptr %i.e, align 8, !tbaa !61
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = or i32 %i.q, %1
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.d
end_hunk_0
begin_hunk_1_@uriFixPercentEncodingMallocW:bb.a
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExW(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentW(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntW(i32 noundef) local_unnamed_addr #3

declare i32 @uriHexToLetterW(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerW(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 30
  %i.k = ashr i64 %sext, 32                       ; 2 uses
  %i.l = shl i64 %i.k, 34
  %i.m = load ptr, ptr %3, align 8, !tbaa !31
  %i.n = ashr exact i64 %i.l, 32                  ; 2 uses
  %i.o = tail call ptr %i.m(ptr noundef nonnull %3, i64 noundef %i.n) #7 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.n, i1 false)
  store ptr %i.o, ptr %2, align 8, !tbaa !110
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.k
  store ptr %i.r, ptr %i.e, align 8, !tbaa !111
  %i.s = load i32, ptr %0, align 4, !tbaa !3
  %i.t = or i32 %i.s, %1
  store i32 %i.t, ptr %0, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"UriUriStructA", !9, i64 0, !9, i64 16, !9, i64 32, !12, i64 48, !9, i64 80, !15, i64 96, !15, i64 104, !9, i64 112, !9, i64 128, !4, i64 144, !4, i64 148, !11, i64 152}
!9 = !{!"UriTextRangeStructA", !10, i64 0, !10, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"UriHostDataStructA", !13, i64 0, !14, i64 8, !9, i64 16}
!13 = !{!"p1 _ZTS12UriIp4Struct", !11, i64 0}
!14 = !{!"p1 _ZTS12UriIp6Struct", !11, i64 0}
!15 = !{!"p1 _ZTS21UriPathSegmentStructA", !11, i64 0}
!16 = !{!8, !10, i64 8}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !10, i64 32}
!21 = !{!8, !10, i64 40}
!22 = distinct !{!22, !19}
!23 = !{!8, !4, i64 148}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !19, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !19, !26, !27}
!30 = distinct !{!30, !19, !27, !26}
!31 = !{!32, !11, i64 0}
!32 = !{!"UriMemoryManagerStruct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!33 = distinct !{null}
!34 = distinct !{!34, !19}
!35 = !{!8, !10, i64 64}
!36 = distinct !{!36, !19, !26, !27}
!37 = distinct !{!37, !19, !26, !27}
!38 = distinct !{!38, !19, !27, !26}
!39 = !{!8, !10, i64 72}
!40 = !{!8, !13, i64 48}
!41 = !{!8, !14, i64 56}
!42 = distinct !{!42, !19, !26, !27}
!43 = distinct !{!43, !19, !26, !27}
!44 = distinct !{!44, !19, !27, !26}
!45 = !{!8, !10, i64 16}
!46 = !{!8, !10, i64 24}
!47 = !{!15, !15, i64 0}
!48 = !{!49, !10, i64 0}
!49 = !{!"UriPathSegmentStructA", !9, i64 0, !15, i64 16, !11, i64 24}
!50 = !{!49, !10, i64 8}
!51 = !{!8, !4, i64 144}
!52 = !{!8, !15, i64 96}
!53 = !{!49, !15, i64 16}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!8, !10, i64 112}
!57 = !{!8, !10, i64 120}
!58 = !{!8, !10, i64 128}
!59 = !{!8, !10, i64 136}
!60 = !{!9, !10, i64 0}
!61 = !{!9, !10, i64 8}
!62 = distinct !{null, ptr @uriMakeRangeOwnerA}
!63 = !{!32, !11, i64 32}
!64 = distinct !{null}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = !{!69, !71, i64 0}
!69 = !{!"UriUriStructW", !70, i64 0, !70, i64 16, !70, i64 32, !72, i64 48, !70, i64 80, !73, i64 96, !73, i64 104, !70, i64 112, !70, i64 128, !4, i64 144, !4, i64 148, !11, i64 152}
!70 = !{!"UriTextRangeStructW", !71, i64 0, !71, i64 8}
!71 = !{!"p1 int", !11, i64 0}
!72 = !{!"UriHostDataStructW", !13, i64 0, !14, i64 8, !70, i64 16}
!73 = !{!"p1 _ZTS21UriPathSegmentStructW", !11, i64 0}
!74 = !{!69, !71, i64 8}
!75 = distinct !{!75, !19}
!76 = !{!69, !71, i64 32}
!77 = !{!69, !71, i64 40}
!78 = distinct !{!78, !19}
!79 = !{!69, !4, i64 148}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !19, !26, !27}
!82 = distinct !{!82, !19, !27, !26}
!83 = distinct !{null}
!84 = distinct !{!84, !19, !26, !27}
!85 = distinct !{!85, !19, !26}
!86 = !{!69, !71, i64 64}
!87 = distinct !{!87, !19, !26, !27}
!88 = distinct !{!88, !19, !27, !26}
!89 = distinct !{!89, !19, !26, !27}
!90 = distinct !{!90, !19, !26}
!91 = !{!69, !13, i64 48}
!92 = !{!69, !14, i64 56}
!93 = distinct !{!93, !19, !26, !27}
!94 = distinct !{!94, !19, !27, !26}
!95 = !{!69, !71, i64 16}
!96 = !{!69, !71, i64 24}
!97 = !{!73, !73, i64 0}
!98 = !{!99, !71, i64 0}
!99 = !{!"UriPathSegmentStructW", !70, i64 0, !73, i64 16, !11, i64 24}
!100 = !{!99, !71, i64 8}
!101 = !{!69, !4, i64 144}
!102 = !{!69, !73, i64 96}
!103 = !{!99, !73, i64 16}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!69, !71, i64 112}
!107 = !{!69, !71, i64 120}
!108 = !{!69, !71, i64 128}
!109 = !{!69, !71, i64 136}
!110 = !{!70, !71, i64 0}
!111 = !{!70, !71, i64 8}
!112 = distinct !{null, ptr @uriMakeRangeOwnerW}
!113 = distinct !{null}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19, !26, !27}
!119 = !{!"branch_weights", i32 4, i32 28}
!120 = distinct !{!120, !19, !26, !27}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19, !26}
!125 = distinct !{!125, !19, !26, !27}
!126 = distinct !{!126, !19, !26, !27}
!127 = distinct !{!127, !122}
!128 = distinct !{!128, !19, !26}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19, !26, !27}
!131 = distinct !{!131, !122}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19, !26}
!134 = distinct !{!134, !19, !26, !27}
!135 = distinct !{!135, !122}
!136 = distinct !{!136, !19, !26}
end_hunk_1
