Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@TextReplaceBetween:bb.a
  br i1 %.not4.i, label %TextFindIndex.exit47, label %.preheader.i

TextFindIndex.exit47:                             ; preds = %.preheader.i
  %i.n = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = sext i32 %.0.i41 to i64                  ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %2) #41 ; 2 uses
  %.not8.i44 = icmp eq ptr %i.r, null
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %.0.i45 = select i1 %.not8.i44, i32 -1, i32 %i.v ; 2 uses
  %i.w = icmp sgt i32 %.0.i45, -1
  br i1 %i.w, label %.preheader.i49, label %bb.d

.preheader.i49:                                   ; preds = %TextFindIndex.exit47, %.preheader.i49
  %.0.i50 = phi i32 [ %i.aa, %.preheader.i49 ], [ 0, %TextFindIndex.exit47 ] ; 3 uses
  %i.x = zext i32 %.0.i50 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %.not4.i51 = icmp eq i8 %i.z, 0
  %i.aa = add i32 %.0.i50, 1
  br i1 %.not4.i51, label %TextLength.exit53, label %.preheader.i49

TextLength.exit53:                                ; preds = %.preheader.i49
  %i.ab = add nsw i32 %.0.i41, %.0.i              ; 3 uses
  %i.ac = add nsw i32 %.0.i45, %i.ab              ; 2 uses
  %i.ad = icmp eq ptr %3, null
  br i1 %i.ad, label %.thread, label %.preheader.i55

.thread:                                          ; preds = %TextLength.exit53
  %i.ae = sext i32 %i.ab to i64
  %i.af = tail call ptr @strncpy(ptr noundef nonnull @TextReplaceBetween.buffer, ptr noundef nonnull %0, i64 noundef %i.ae) #39 ; 0 uses
  br label %bb.c

.preheader.i55:                                   ; preds = %TextLength.exit53, %.preheader.i55
  %.0.i56 = phi i32 [ %i.aj, %.preheader.i55 ], [ 0, %TextLength.exit53 ] ; 3 uses
  %i.ag = zext i32 %.0.i56 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %.not4.i57 = icmp eq i8 %i.ai, 0
  %i.aj = add i32 %.0.i56, 1
  br i1 %.not4.i57, label %bb.b, label %.preheader.i55

bb.b:                                             ; preds = %.preheader.i55
  %i.ak = sext i32 %.0.i56 to i64                 ; 2 uses
  %i.al = sext i32 %i.ab to i64
  %i.am = tail call ptr @strncpy(ptr noundef nonnull @TextReplaceBetween.buffer, ptr noundef nonnull %0, i64 noundef %i.al) #39 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr @TextReplaceBetween.buffer, i64 %i.n
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.p
  %i.ap = tail call ptr @strncpy(ptr noundef nonnull %i.ao, ptr noundef nonnull %3, i64 noundef %i.ak) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.aq = phi i64 [ 0, %.thread ], [ %i.ak, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr @TextReplaceBetween.buffer, i64 %i.n
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.p
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.aq
  %i.au = sext i32 %i.ac to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = sub nsw i32 %.0.i50, %i.ac
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call ptr @strncpy(ptr noundef nonnull %i.at, ptr noundef nonnull %i.av, i64 noundef %i.ax) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %TextFindIndex.exit, %bb.c, %TextFindIndex.exit47, %bb.a
  ret ptr @TextReplaceBetween.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @TextReplaceBetweenAlloc(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %TextFindIndex.exit, label %bb.d

TextFindIndex.exit:                               ; preds = %bb.a
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #41 ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.0.i = select i1 %.not8.i, i32 -1, i32 %i.h    ; 3 uses
  %i.i = icmp sgt i32 %.0.i, -1
  br i1 %i.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %TextFindIndex.exit, %.preheader.i
  %.0.i53 = phi i32 [ %i.m, %.preheader.i ], [ 0, %TextFindIndex.exit ] ; 4 uses
  %i.j = zext i32 %.0.i53 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %.not4.i = icmp eq i8 %i.l, 0
  %i.m = add i32 %.0.i53, 1
  br i1 %.not4.i, label %TextFindIndex.exit59, label %.preheader.i

TextFindIndex.exit59:                             ; preds = %.preheader.i
  %i.n = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = sext i32 %.0.i53 to i64                  ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %2) #41 ; 2 uses
  %.not8.i56 = icmp eq ptr %i.r, null
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %.0.i57 = select i1 %.not8.i56, i32 -1, i32 %i.v ; 3 uses
  %i.w = icmp sgt i32 %.0.i57, -1
  br i1 %i.w, label %.preheader.i61, label %bb.d

.preheader.i61:                                   ; preds = %TextFindIndex.exit59, %.preheader.i61
  %.0.i62 = phi i32 [ %i.aa, %.preheader.i61 ], [ 0, %TextFindIndex.exit59 ] ; 4 uses
  %i.x = zext i32 %.0.i62 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %.not4.i63 = icmp eq i8 %i.z, 0
  %i.aa = add i32 %.0.i62, 1
  br i1 %.not4.i63, label %TextLength.exit65, label %.preheader.i61

TextLength.exit65:                                ; preds = %.preheader.i61
  %i.ab = add nsw i32 %.0.i53, %.0.i              ; 2 uses
  %i.ac = add nsw i32 %.0.i57, %i.ab              ; 2 uses
  %i.ad = icmp eq ptr %3, null                    ; 2 uses
  br i1 %i.ad, label %TextLength.exit71, label %.preheader.i67

.preheader.i67:                                   ; preds = %TextLength.exit65, %.preheader.i67
  %.0.i68 = phi i32 [ %i.ah, %.preheader.i67 ], [ 0, %TextLength.exit65 ] ; 3 uses
  %i.ae = zext i32 %.0.i68 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %.not4.i69 = icmp eq i8 %i.ag, 0
  %i.ah = add i32 %.0.i68, 1
  br i1 %.not4.i69, label %TextLength.exit71, label %.preheader.i67

TextLength.exit71:                                ; preds = %.preheader.i67, %TextLength.exit65
  %i.ai = phi i32 [ 0, %TextLength.exit65 ], [ %.0.i68, %.preheader.i67 ] ; 3 uses
  %reass.sub = sub i32 %.0.i62, %.0.i57
  %i.aj = add i32 %reass.sub, 1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 1) #40 ; 4 uses
  %i.an = sext i32 %i.ab to i64
  %i.ao = tail call ptr @strncpy(ptr noundef %i.am, ptr noundef nonnull %0, i64 noundef %i.an) #39 ; 0 uses
  br i1 %i.ad, label %TextLength.exit71._crit_edge, label %bb.b

TextLength.exit71._crit_edge:                     ; preds = %TextLength.exit71
  %.pre = sext i32 %i.ai to i64
  br label %bb.c

bb.b:                                             ; preds = %TextLength.exit71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.p
  %i.ar = sext i32 %i.ai to i64                   ; 2 uses
  %i.as = tail call ptr @strncpy(ptr noundef %i.aq, ptr noundef nonnull %3, i64 noundef %i.ar) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %TextLength.exit71._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %TextLength.exit71._crit_edge ], [ %i.ar, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.p
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %.pre-phi
  %i.aw = sext i32 %i.ac to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = sub nsw i32 %.0.i62, %i.ac
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @strncpy(ptr noundef %i.av, ptr noundef nonnull %i.ax, i64 noundef %i.az) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %TextFindIndex.exit, %bb.c, %TextFindIndex.exit59, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %TextFindIndex.exit ], [ %i.am, %bb.c ], [ null, %TextFindIndex.exit59 ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @TextInsert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextInsert.buffer, i8 0, i64 1024, i1 false)
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.h, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.e = zext i32 %.0.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %.not4.i = icmp eq i8 %i.g, 0
  %i.h = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i40, label %.preheader.i

.preheader.i40:                                   ; preds = %.preheader.i, %.preheader.i40
  %.0.i41 = phi i32 [ %indvars.iv.next58.a, %.preheader.i40 ], [ 0, %.preheader.i ] ; 5 uses
  %i.i = zext i32 %.0.i41 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %.not4.i42 = icmp eq i8 %i.k, 0
  %indvars.iv.next58.a = add i32 %.0.i41, 1
  br i1 %.not4.i42, label %TextLength.exit44, label %.preheader.i40

TextLength.exit44:                                ; preds = %.preheader.i40
  %i.l = add nsw i32 %.0.i41, %.0.i               ; 3 uses
  %i.m = icmp slt i32 %i.l, 1023
  br i1 %i.m, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %TextLength.exit44
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %iter.check, label %.preheader45

iter.check:                                       ; preds = %.preheader46
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.o = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.b
  %diff.check = icmp ult i64 %i.o, 31
  %or.cond134 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond134, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i32 %2, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1
  %wide.load67 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 16
  store <16 x i8> %wide.load67, ptr %i.t, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader45, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index69
  %wide.load70 = load <4 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index69
  store <4 x i8> %wide.load70, ptr %i.w, align 4
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next71, %n.vec68
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %n.vec68, %wide.trip.count
  br i1 %cmp.n72, label %.preheader45, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.preheader45, label %.lr.ph

.preheader45:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader46
  %3 = add i32 %.0.i41, %2                        ; 2 uses
  %i.ad = icmp sgt i32 %.0.i41, 0
  br i1 %i.ad, label %iter.check89, label %.preheader

iter.check89:                                     ; preds = %.preheader45
  %i.ae = sext i32 %2 to i64                      ; 10 uses
  %i.af = sext i32 %3 to i64                      ; 2 uses
  %i.ag = add nsw i64 %i.ae, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.af)
  %i.ah = sub i64 %smax, %i.ae                    ; 7 uses
  %min.iters.check75 = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check75, label %.lr.ph49.preheader, label %vector.memcheck76

vector.memcheck76:                                ; preds = %iter.check89
  %i.ai = add i64 %i.ae, ptrtoaddr (ptr @TextInsert.buffer to i64)
  %i.aj = sub i64 %i.a, %i.ai
  %diff.check77 = icmp ugt i64 %i.aj, -32
  br i1 %diff.check77, label %.lr.ph49.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %vector.memcheck76
  %min.iters.check79 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check79, label %vec.epilog.ph93, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %i.ak = and i64 %i.ah, 24
  %n.vec81 = and i64 %i.ah, -32                   ; 4 uses
  %i.al = add i64 %n.vec81, %i.ae
  %invariant.gep = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ae
  br label %vector.body82

vector.body82:                                    ; preds = %vector.ph80, %vector.body82
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next86, %vector.body82 ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %index83 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.am, align 1
  %wide.load85 = load <16 x i8>, ptr %i.an, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index83 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load84, ptr %gep, align 1
  store <16 x i8> %wide.load85, ptr %i.ao, align 1
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.ap = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.ap, label %middle.block87, label %vector.body82, !llvm.loop !69

middle.block87:                                   ; preds = %vector.body82
  %cmp.n88 = icmp eq i64 %i.ah, %n.vec81
  br i1 %cmp.n88, label %.preheader, label %vec.epilog.iter.check90

vec.epilog.iter.check90:                          ; preds = %middle.block87
  %min.epilog.iters.check92 = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph49.preheader, label %vec.epilog.ph93, !prof !7

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check90
  %vec.epilog.resume.val94 = phi i64 [ %n.vec81, %vec.epilog.iter.check90 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec95 = and i64 %i.ah, -8                    ; 3 uses
  %i.aq = add i64 %n.vec95, %i.ae
  %invariant.gep136 = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ae
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph93
  %index97 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph93 ], [ %index.next99, %vec.epilog.vector.body96 ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %index97
  %wide.load98 = load <8 x i8>, ptr %i.ar, align 1
  %gep137 = getelementptr i8, ptr %invariant.gep136, i64 %index97
  store <8 x i8> %wide.load98, ptr %gep137, align 1
  %index.next99 = add nuw i64 %index97, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.as, label %vec.epilog.middle.block100, label %vec.epilog.vector.body96, !llvm.loop !70

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body96
  %cmp.n101 = icmp eq i64 %i.ah, %n.vec95
  br i1 %cmp.n101, label %.preheader, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %iter.check89, %vector.memcheck76, %vec.epilog.iter.check90, %vec.epilog.middle.block100
  %indvars.iv53.ph = phi i64 [ %i.ae, %iter.check89 ], [ %i.ae, %vector.memcheck76 ], [ %i.al, %vec.epilog.iter.check90 ], [ %i.aq, %vec.epilog.middle.block100 ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next
  store i8 %i.ax, ptr %i.ay, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.1
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.2
  store i8 %i.bd, ptr %i.be, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader45, label %.lr.ph, !llvm.loop !71

.preheader:                                       ; preds = %.lr.ph49, %middle.block87, %vec.epilog.middle.block100, %.preheader45
  %i.bf = icmp slt i32 %2, %.0.i
  br i1 %i.bf, label %iter.check120, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.l to i64
  br label %._crit_edge

iter.check120:                                    ; preds = %.preheader
  %i.bg = sext i32 %3 to i64                      ; 7 uses
  %i.bh = sext i32 %i.l to i64                    ; 5 uses
  %i.bi = add nsw i64 %i.bg, 1
  %smax105 = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 %i.bh)
  %i.bj = sub i64 %smax105, %i.bg                 ; 7 uses
  %min.iters.check106 = icmp ult i64 %i.bj, 8
  %i.bk = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.b
  %diff.check108 = icmp ult i64 %i.bk, 31
  %or.cond135 = or i1 %min.iters.check106, %diff.check108
  br i1 %or.cond135, label %.lr.ph51.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check120
  %min.iters.check110 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check110, label %vec.epilog.ph124, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %i.bl = and i64 %i.bj, 24
  %n.vec112 = and i64 %i.bj, -32                  ; 4 uses
  %i.bm = add i64 %n.vec112, %i.bg
  br label %vector.body113

vector.body113:                                   ; preds = %vector.ph111, %vector.body113
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next117, %vector.body113 ] ; 2 uses
  %i.bn = add i64 %index114, %i.bg                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load115 = load <16 x i8>, ptr %i.bo, align 1
  %wide.load116 = load <16 x i8>, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bn ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load115, ptr %i.bq, align 1
  store <16 x i8> %wide.load116, ptr %i.br, align 1
  %index.next117 = add nuw i64 %index114, 32      ; 2 uses
  %i.bs = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.bs, label %middle.block118, label %vector.body113, !llvm.loop !72

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %i.bj, %n.vec112
  br i1 %cmp.n119, label %._crit_edge, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block118
  %min.epilog.iters.check123 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check123, label %.lr.ph51.preheader, label %vec.epilog.ph124, !prof !7

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check121
  %vec.epilog.resume.val125 = phi i64 [ %n.vec112, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec126 = and i64 %i.bj, -8                   ; 3 uses
  %i.bt = add i64 %n.vec126, %i.bg
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph124
  %index128 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph124 ], [ %index.next130, %vec.epilog.vector.body127 ] ; 2 uses
  %i.bu = add i64 %index128, %i.bg                ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu
  %wide.load129 = load <8 x i8>, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bu
  store <8 x i8> %wide.load129, ptr %i.bw, align 1
  %index.next130 = add nuw i64 %index128, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.bx, label %vec.epilog.middle.block131, label %vec.epilog.vector.body127, !llvm.loop !73

vec.epilog.middle.block131:                       ; preds = %vec.epilog.vector.body127
  %cmp.n132 = icmp eq i64 %i.bj, %n.vec126
  br i1 %cmp.n132, label %._crit_edge, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %iter.check120, %vec.epilog.iter.check121, %vec.epilog.middle.block131
  %indvars.iv59.ph = phi i64 [ %i.bg, %iter.check120 ], [ %i.bm, %vec.epilog.iter.check121 ], [ %i.bt, %vec.epilog.middle.block131 ]
  br label %.lr.ph51

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.lr.ph49 ], [ %indvars.iv53.ph, %.lr.ph49.preheader ] ; 3 uses
  %i.by = sub nsw i64 %indvars.iv53, %i.ae
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv53
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.cc = icmp slt i64 %indvars.iv.next54, %i.af
  br i1 %i.cc, label %.lr.ph49, label %.preheader, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph51, %middle.block118, %vec.epilog.middle.block131, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.bh, %middle.block118 ], [ %i.bh, %vec.epilog.middle.block131 ], [ %i.bh, %.lr.ph51 ]
  %i.cd = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %.pre-phi
  store i8 0, ptr %i.cd, align 1
  br label %bb.c

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph51 ], [ %indvars.iv59.ph, %.lr.ph51.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %indvars.iv59
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv59
  store i8 %i.cf, ptr %i.cg, align 1
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ch = icmp slt i64 %indvars.iv.next60, %i.bh
  br i1 %i.ch, label %.lr.ph51, label %._crit_edge, !llvm.loop !75

bb.b:                                             ; preds = %TextLength.exit44
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.67) #39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr @TextInsert.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @TextInsertAlloc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.c = zext i32 %.0.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %.not4.i = icmp eq i8 %i.e, 0
  %i.f = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i46, label %.preheader.i

.preheader.i46:                                   ; preds = %.preheader.i, %.preheader.i46
  %.0.i47 = phi i32 [ %i.j, %.preheader.i46 ], [ 0, %.preheader.i ] ; 7 uses
  %i.g = zext i32 %.0.i47 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %.not4.i48 = icmp eq i8 %i.i, 0
  %i.j = add i32 %.0.i47, 1
  br i1 %.not4.i48, label %TextLength.exit50, label %.preheader.i46

TextLength.exit50:                                ; preds = %.preheader.i46
  %i.k = add nsw i32 %.0.i47, %.0.i               ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #42 ; 5 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader51

.lr.ph.preheader:                                 ; preds = %TextLength.exit50
  %i.p = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %0, i64 %i.p, i1 false)
  br label %.preheader51

.preheader51:                                     ; preds = %.lr.ph.preheader, %TextLength.exit50
  %i.q = add i32 %.0.i47, %2                      ; 2 uses
  %i.r = icmp sgt i32 %.0.i47, 0
  br i1 %i.r, label %.lr.ph54.preheader, label %.preheader

.lr.ph54.preheader:                               ; preds = %.preheader51
  %i.s = sext i32 %2 to i64
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.s
  %i.t = xor i32 %2, -1
  %i.u = add i32 %2, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.u)
  %i.v = add i32 %smax, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.x, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph54.preheader, %.preheader51
  %i.y = icmp slt i32 %2, %.0.i
  br i1 %i.y, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.z = sext i32 %i.q to i64                     ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.n, i64 %i.z
  %scevgep60 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = add nsw i32 %2, 1
  %i.ab = add i32 %.0.i47, %i.aa
  %smax61 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.ab)
  %i.ac = xor i32 %2, -1
  %i.ad = sub i32 %i.ac, %.0.i47
  %i.ae = add i32 %smax61, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep59, ptr noundef nonnull align 1 dereferenceable(1) %scevgep60, i64 %i.ag, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph56.preheader, %.preheader
  %i.ah = sext i32 %i.k to i64
  %i.ai = getelementptr inbounds i8, ptr %i.n, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.039 = phi ptr [ %i.n, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextJoin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #23 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextJoin.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %TextLength.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
end_hunk_0
