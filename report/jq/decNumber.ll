Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decNumberCompareTotalMag:bb.a
  %i.ag = zext nneg i32 %i.f to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = zext i8 %i.ai to i32
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.af, %.thread.i ], [ %i.aj, %bb.h ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64
  %i.ak = getelementptr i8, ptr %1, i64 12
  %i.al = add i64 %i.b, %.idx35.pn.i
  %i.am = add i64 %i.al, 10
  %i.an = add i64 %i.b, 14
  %umax = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = add i64 %umax, -13
  %i.ap = sub i64 %i.ao, %i.b
  %i.aq = and i64 %i.ap, -2
  %i.ar = add i64 %i.aq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.ak, i64 %i.ar, i1 false), !tbaa !21
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %.decNumberCopy.exit_crit_edge, %.lr.ph.preheader.i, %bb.f
  %i.as = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.e, %.lr.ph.preheader.i ], [ %i.e, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.au = and i8 %i.as, 127
  store i8 %i.au, ptr %i.at, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %decNumberCopy.exit, %bb.a
  %.039 = phi ptr [ %.034, %decNumberCopy.exit ], [ %1, %bb.a ]
  %.137 = phi ptr [ %.036, %decNumberCopy.exit ], [ null, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !17  ; 3 uses
  %.not52 = icmp sgt i8 %i.aw, -1
  br i1 %.not52, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %2, align 4, !tbaa !19    ; 7 uses
  %i.ay = icmp slt i32 %i.ax, 50                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %.thread94

.thread94:                                        ; preds = %bb.j
  %i.az = add nuw nsw i32 %i.ax, 2
  %i.ba = udiv i32 %i.az, 3
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = sext i32 %i.ax to i64                   ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr @d2utable, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i64 %i.bb, -40
  %i.bg = icmp ult i64 %i.bf, 10
  br i1 %i.bg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread94, %bb.k
  %i.bh = phi i32 [ %i.ba, %.thread94 ], [ %i.be, %bb.k ]
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.bi, 10
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #20 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16, ptr %i.c, align 4, !tbaa !23
  br label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.k
  %.035 = phi ptr [ null, %bb.k ], [ %i.bl, %bb.l ]
  %.0 = phi ptr [ %5, %bb.k ], [ %i.bl, %bb.l ]   ; 8 uses
  %i.bn = icmp eq ptr %.0, %2
  br i1 %i.bn, label %.decNumberCopy.exit64_crit_edge, label %bb.o

.decNumberCopy.exit64_crit_edge:                  ; preds = %bb.n
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.pre80 = load i8, ptr %.phi.trans.insert79, align 4, !tbaa !17
  br label %decNumberCopy.exit64

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !18
  store i32 %i.ax, ptr %.0, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 10
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !21
  %i.bu = icmp sgt i32 %i.ax, 3
  br i1 %i.bu, label %bb.p, label %decNumberCopy.exit64

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %.0, i64 12
  br i1 %i.ay, label %bb.q, label %.thread.i56

.thread.i56:                                      ; preds = %bb.p
  %i.bw = add nuw nsw i32 %i.ax, 2
  %i.bx = udiv i32 %i.bw, 3
  br label %.lr.ph.preheader.i57

bb.q:                                             ; preds = %bb.p
  %i.by = zext nneg i32 %i.ax to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = zext i8 %i.ca to i32
  br label %.lr.ph.preheader.i57

.lr.ph.preheader.i57:                             ; preds = %bb.q, %.thread.i56
  %.idx35.pn.in.in.i58 = phi i32 [ %i.bx, %.thread.i56 ], [ %i.cb, %bb.q ]
  %.idx35.pn.in.i59 = shl nuw nsw i32 %.idx35.pn.in.in.i58, 1
  %.idx35.pn.i60 = zext nneg i32 %.idx35.pn.in.i59 to i64
  %i.cc = getelementptr i8, ptr %2, i64 12
  %i.cd = add i64 %i.a, %.idx35.pn.i60
  %i.ce = add i64 %i.cd, 10
  %i.cf = add i64 %i.a, 14
  %umax78 = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.cg = add i64 %umax78, -13
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = and i64 %i.ch, -2
  %i.cj = add i64 %i.ci, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bv, ptr align 4 %i.cc, i64 %i.cj, i1 false), !tbaa !21
  br label %decNumberCopy.exit64

decNumberCopy.exit64:                             ; preds = %.decNumberCopy.exit64_crit_edge, %.lr.ph.preheader.i57, %bb.o
  %i.ck = phi i8 [ %.pre80, %.decNumberCopy.exit64_crit_edge ], [ %i.aw, %.lr.ph.preheader.i57 ], [ %i.aw, %bb.o ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cm = and i8 %i.ck, 127
  store i8 %i.cm, ptr %i.cl, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %decNumberCopy.exit64, %bb.i
  %.040 = phi ptr [ %.0, %decNumberCopy.exit64 ], [ %2, %bb.i ]
  %.1 = phi ptr [ %.035, %decNumberCopy.exit64 ], [ null, %bb.i ]
  %i.cn = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef nonnull %.039, ptr noundef nonnull %.040, ptr noundef %3, i8 noundef zeroext 4, ptr noundef %i.c) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.2 = phi ptr [ %.1, %bb.r ], [ null, %bb.m ]   ; 2 uses
  %.not53 = icmp eq ptr %.137, null
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %.137) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not54 = icmp eq ptr %.2, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %.2) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pr = load i32, ptr %i.c, align 4, !tbaa !23   ; 6 uses
  %.not55 = icmp eq i32 %.pr, 0
  br i1 %.not55, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = and i32 %.pr, 221
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.cp, 0
  br i1 %.not6.i, label %.thread76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %.pr, -1073741825
  br label %decStatus.exit

.thread76:                                        ; preds = %bb.d, %bb.y
  %i.cr = phi i32 [ %.pr, %bb.y ], [ 16, %bb.d ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ct, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cu, align 2, !tbaa !21
  store i8 32, ptr %i.cs, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.x, %bb.z, %.thread76
  %.0.i = phi i32 [ %i.cq, %bb.z ], [ %i.cr, %.thread76 ], [ %.pr, %bb.x ]
  %i.cv = call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %decStatus.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberCopy(ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !17
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.h = load i32, ptr %1, align 4, !tbaa !19     ; 5 uses
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.j, ptr %i.k, align 2, !tbaa !21
  %i.l = icmp sgt i32 %i.h, 3
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.n = icmp samesign ult i32 %i.h, 50
  br i1 %i.n, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.h, 2
  %i.p = udiv i32 %i.o, 3
  br label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.h to i64
  %i.r = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.h, -4
  %i.v = icmp ult i32 %i.u, 46
  br i1 %i.v, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.thread, %bb.d
  %.idx35.pn.in.in = phi i32 [ %i.p, %.thread ], [ %i.t, %bb.d ]
  %.idx35.pn.in = shl nuw nsw i32 %.idx35.pn.in.in, 1
  %.idx35.pn = zext nneg i32 %.idx35.pn.in to i64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx35.pn
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.y = add i64 %i.b, %.idx35.pn
  %i.z = add i64 %i.y, 10
  %i.aa = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ab = add i64 %umax, -13
  %i.ac = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  %i.af = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ah = shl i64 %n.vec, 1                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ak ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep37, align 2, !tbaa !21
  %wide.load38 = load <8 x i16>, ptr %i.al, align 2, !tbaa !21
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load38, ptr %i.am, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.ae, -4                    ; 3 uses
  %i.ao = shl i64 %n.vec40, 1                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.m, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index41, 1                     ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.m, i64 %i.ar
  %next.gep43 = getelementptr i8, ptr %i.x, i64 %i.ar
  %wide.load44 = load <4 x i16>, ptr %next.gep43, align 2, !tbaa !21
  store <4 x i16> %wide.load44, ptr %next.gep42, align 2, !tbaa !21
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.ae, %n.vec40
  br i1 %cmp.n46, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.ph = phi ptr [ %i.m, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.02631.ph = phi ptr [ %i.x, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.032 = phi ptr [ %i.av, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader ] ; 2 uses
  %.02631 = phi ptr [ %i.au, %.lr.ph ], [ %.02631.ph, %.lr.ph.preheader ] ; 2 uses
  %i.at = load i16, ptr %.02631, align 2, !tbaa !21
  store i16 %i.at, ptr %.032, align 2, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.02631, i64 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.032, i64 2
  %i.aw = icmp ult ptr %i.au, %i.w
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberDivide(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @decDivideOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 16, -127) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca [17 x i16], align 16              ; 3 uses
  %i.b = alloca [25 x i16], align 16              ; 3 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.d = load i32, ptr %3, align 4, !tbaa !27     ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 9 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !17    ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = xor i8 %i.i, %i.f
  %i.l = and i8 %i.k, -128                        ; 11 uses
  %i.m = or i32 %i.j, %i.g                        ; 2 uses
  %i.n = and i32 %i.m, 112
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.m, 48
  %.not585 = icmp eq i32 %i.o, 0
  br i1 %.not585, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) ; 0 uses
  br label %.thread644.thread

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.g, 64
  %.not586 = icmp eq i32 %i.q, 0
  br i1 %.not586, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %i.j, 64
  %.not589 = icmp eq i32 %i.r, 0
  %i.s = and i8 %4, 80
  %.not590 = icmp eq i8 %i.s, 0
  %or.cond593 = and i1 %.not590, %.not589
  br i1 %or.cond593, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %5, align 4, !tbaa !23
  %i.u = or i32 %i.t, 128
  store i32 %i.u, ptr %5, align 4, !tbaa !23
  br label %.thread644.thread

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.x, align 2, !tbaa !21
  %i.y = or disjoint i8 %i.l, 64
  store i8 %i.y, ptr %i.v, align 4, !tbaa !17
  br label %.thread644.thread

bb.h:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.z = and i8 %4, 80
  %.not587 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not587, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.f, ptr %i.aa, align 4, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
begin_hunk_1_@decDivideOp:bb.a

bb.cz:                                            ; preds = %.thread616
  %i.nm = add nuw nsw i32 %i.ng, 2
  %i.nn = udiv i32 %i.nm, 3
  br label %select.unfold

select.unfold:                                    ; preds = %bb.cy, %bb.cz
  %i.no = phi i32 [ %i.nl, %bb.cy ], [ %i.nn, %bb.cz ]
  %i.np = sext i32 %i.nf to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !23
  %i.ns = sub nsw i32 0, %i.nr
  %i.nt = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %.0485, i32 noundef %i.lo, ptr noundef nonnull %.ptr566, i32 noundef %i.no, i32 noundef %i.ne, ptr noundef nonnull %.0485, i32 noundef %i.ns)
  %i.nu = sub nsw i32 0, %i.nt
  %i.nv = call fastcc i32 @decGetDigits(ptr noundef nonnull %.0485, i32 noundef %i.nu)
  %i.nw = xor i8 %i.f, -128
  br label %.thread620

bb.da:                                            ; preds = %._crit_edge728
  %i.nx = load i32, ptr %5, align 4, !tbaa !23
  %i.ny = or i32 %i.nx, 4
  store i32 %i.ny, ptr %5, align 4, !tbaa !23
  br label %bb.db

.thread620:                                       ; preds = %select.unfold, %._crit_edge724, %bb.cp, %bb.cf, %bb.ch, %._crit_edge716, %bb.ck, %bb.ce
  %.5504 = phi ptr [ %.3502, %bb.ce ], [ %.3502, %bb.ck ], [ %.0485, %select.unfold ], [ %.3502, %._crit_edge716 ], [ %.3502, %bb.ch ], [ %.3502, %bb.cf ], [ %.0485, %bb.cp ], [ %.0485, %._crit_edge724 ]
  %.13 = phi i32 [ %.5491, %bb.ce ], [ %.5491, %bb.ck ], [ %i.nv, %select.unfold ], [ %.5491, %._crit_edge716 ], [ %i.kp, %bb.ch ], [ %.5491, %bb.cf ], [ %i.lg, %bb.cp ], [ %i.lg, %._crit_edge724 ]
  %.8 = phi i32 [ %.3455.lcssa, %bb.ce ], [ %.3455.lcssa, %bb.ck ], [ %spec.select605, %select.unfold ], [ %.4456.lcssa, %._crit_edge716 ], [ %.4456.lcssa, %bb.ch ], [ %.3455.lcssa, %bb.cf ], [ %spec.select605, %bb.cp ], [ %spec.select605, %._crit_edge724 ]
  %.5 = phi i8 [ %i.l, %bb.ce ], [ %i.l, %bb.ck ], [ %i.nw, %select.unfold ], [ %i.l, %._crit_edge716 ], [ %i.l, %bb.ch ], [ %i.l, %bb.cf ], [ %i.f, %bb.cp ], [ %i.f, %._crit_edge724 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.8, ptr %i.nz, align 4, !tbaa !18
  %i.oa = and i8 %.5, -128
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.oa, ptr %i.ob, align 4, !tbaa !17
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %.5504, i32 noundef %.13, ptr noundef %i.c, ptr noundef %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.thread638, %.thread626, %.thread620, %bb.cj
  %.not591 = icmp eq ptr %.0483, null
  br i1 %.not591, label %.thread644, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef nonnull %.0483) #19
  br label %.thread644

.thread644:                                       ; preds = %bb.as, %bb.dc, %bb.db
  %.not592 = icmp eq ptr %.0505, null
  br i1 %.not592, label %.thread644.thread, label %bb.dd

bb.dd:                                            ; preds = %.thread644
  call void @free(ptr noundef nonnull %.0505) #19
  br label %.thread644.thread

.thread644.thread:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.l, %bb.q, %bb.s, %bb.t, %bb.x, %bb.z, %bb.ab, %bb.aa, %bb.am, %bb.ad, %bb.ag, %bb.dd, %.thread644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberDivideInteger(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 32, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberExp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = load i32, ptr %2, align 4, !tbaa !27
  %i.c = icmp sgt i32 %i.b, 999999
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = icmp slt i32 %i.h, -999999
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !19     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 999999
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = add i32 %i.j, -1000001
  %i.o = add i32 %i.n, %i.m
  %or.cond.i = icmp ult i32 %i.o, -2999997
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !21
  %i.r = icmp eq i16 %i.q, 0
  %i.s = icmp eq i32 %i.j, 1
  %or.cond16.i = and i1 %i.s, %i.r
  br i1 %or.cond16.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i8, ptr %i.t, align 4, !tbaa !17
  %i.v = and i8 %i.u, 112
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = call fastcc ptr @decExpOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.a) ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not8 = icmp eq i32 %.pr, 0
  br i1 %.not8, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %i.y = phi i32 [ %.pr, %bb.h ], [ 64, %bb.a ], [ 64, %bb.c ], [ 64, %bb.b ], [ 128, %bb.d ], [ 128, %bb.g ], [ 128, %bb.f ] ; 5 uses
  %i.z = and i32 %i.y, 221
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.aa = and i32 %i.y, 1073741824
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.y, -1073741825
  br label %decStatus.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ae, align 2, !tbaa !21
  store i8 32, ptr %i.ac, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.ab, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %.thread ]
  %i.af = tail call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %decStatus.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @decExpOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.decContext, align 4         ; 12 uses
  %5 = alloca %struct.decContext, align 4         ; 8 uses
  %6 = alloca %struct.decContext, align 4         ; 4 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %8 = alloca [6 x %struct.decNumber], align 16   ; 5 uses
  %9 = alloca [10 x %struct.decNumber], align 16  ; 9 uses
  %10 = alloca [2 x %struct.decNumber], align 16  ; 11 uses
  %11 = alloca %struct.decNumber, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 4 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not221 = icmp eq i32 %i.i, 0
  br i1 %.not221, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not222 = icmp sgt i8 %i.f, -1
  br i1 %.not222, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.l, align 2, !tbaa !21
  br label %.thread277

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.thread277, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.n, align 4, !tbaa !17
  %i.o = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.p = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.o, ptr %0, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !21
  %i.t = icmp sgt i32 %i.p, 3
  br i1 %i.t, label %bb.g, label %.thread277

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.v = icmp samesign ult i32 %i.p, 50
  br i1 %i.v, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.w = add nuw nsw i32 %i.p, 2
  %i.x = udiv i32 %i.w, 3
  br label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.x, %.thread.i ], [ %i.ab, %bb.h ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx35.pn.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ae = add i64 %i.b, %.idx35.pn.i
  %i.af = add i64 %i.ae, 10
  %i.ag = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = add i64 %umax, -13
  %i.ai = sub i64 %i.ah, %i.b                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = add nuw i64 %i.aj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ai, 6
  %i.al = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond328 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond328, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check315 = icmp ult i64 %i.ai, 30
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.an = shl i64 %n.vec, 1                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aq ; 2 uses
  %next.gep316 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep316, align 2, !tbaa !21
  %wide.load317 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !21
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load317, ptr %i.as, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread277, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec319 = and i64 %i.ak, -4                   ; 3 uses
  %i.au = shl i64 %n.vec319, 1                    ; 2 uses
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next324, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = shl i64 %index320, 1                    ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.u, i64 %i.ax
  %next.gep322 = getelementptr i8, ptr %i.ad, i64 %i.ax
  %wide.load323 = load <4 x i16>, ptr %next.gep322, align 2, !tbaa !21
  store <4 x i16> %wide.load323, ptr %next.gep321, align 2, !tbaa !21
  %index.next324 = add nuw i64 %index320, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next324, %n.vec319
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n325 = icmp eq i64 %i.ak, %n.vec319
  br i1 %cmp.n325, label %.thread277, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.az = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.az, ptr %.032.i, align 2, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.bc = icmp ult ptr %i.ba, %i.ac
  br i1 %i.bc, label %.lr.ph.i, label %.thread277, !llvm.loop !73

bb.i:                                             ; preds = %bb.b
  %i.bd = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread277

bb.j:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !21
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bh = load i32, ptr %1, align 4, !tbaa !19
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bj, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 1, ptr %i.bl, align 2, !tbaa !21
  br label %.thread277

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %10, align 16, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 2 uses
  store i16 4, ptr %i.bo, align 2, !tbaa !21
  %i.bp = load i32, ptr %2, align 4, !tbaa !27
  %.lobit = ashr i8 %i.f, 7
  %i.bq = sext i8 %.lobit to i32
  %spec.select294 = sub i32 %i.bq, %i.bp
  store i32 %spec.select294, ptr %i.bn, align 4, !tbaa !18
  %i.br = call fastcc i32 @decCompare(ptr noundef nonnull %10, ptr noundef nonnull %1, i8 noundef zeroext 1) ; 2 uses
  %i.bs = icmp eq i32 %i.br, -2147483648
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = load i32, ptr %3, align 4, !tbaa !23
  %i.bu = or i32 %i.bt, 16
  store i32 %i.bu, ptr %3, align 4, !tbaa !23
  br label %.thread277

bb.o:                                             ; preds = %bb.m
  %i.bv = icmp sgt i32 %i.br, -1
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.by, align 4, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.bz, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 1, ptr %i.ca, align 2, !tbaa !21
  %i.cb = call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.ca, i32 noundef 1, i32 noundef %i.bx)
  store i32 %i.cb, ptr %0, align 4, !tbaa !19
  %i.cc = sub nsw i32 1, %i.bw
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !18
  %i.cd = load i32, ptr %3, align 4, !tbaa !23
  %i.ce = or i32 %i.cd, 2080
  store i32 %i.ce, ptr %3, align 4, !tbaa !23
  br label %.thread277

bb.q:                                             ; preds = %bb.o
  %i.cf = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 64) #19 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ci = load <2 x i32>, ptr %i.cg, align 4, !tbaa !23
  store <2 x i32> %i.ci, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.cj, align 4, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !18 ; 2 uses
  %i.cm = load i32, ptr %1, align 4, !tbaa !19    ; 7 uses
  %i.cn = add nsw i32 %i.cm, %i.cl                ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 8
  br i1 %i.co, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cp, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !18
  store i32 1, ptr %9, align 16, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 2, ptr %i.cr, align 2, !tbaa !21
  %i.cs = load i8, ptr %i.e, align 4, !tbaa !17
  %.not217 = icmp sgt i8 %i.cs, -1
  br i1 %.not217, label %.thread240, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 -2, ptr %i.cq, align 4, !tbaa !18
  br label %.thread240

bb.t:                                             ; preds = %bb.q
  %i.ct = icmp sgt i32 %i.cm, 8
  %i.cu = zext i1 %i.ct to i32
  %i.cv = sub nsw i32 8, %i.cn
  %i.cw = call i32 @llvm.umin.i32(i32 %i.cv, i32 %i.cu) ; 2 uses
  %i.cx = add i32 %i.cm, %i.cw
  %i.cy = sub i32 0, %i.cx                        ; 2 uses
  %i.cz = add nsw i32 %i.cw, %i.cn                ; 3 uses
  %i.da = icmp slt i32 %i.cz, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.cz, i32 0) ; 2 uses
  %.not214292 = icmp eq i32 %i.cl, %i.cy
  %.not214 = or i1 %i.da, %.not214292
  br i1 %.not214, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = icmp slt i32 %i.cm, 50
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = sext i32 %i.cm to i64
  %i.dd = getelementptr inbounds i8, ptr @d2utable, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
end_hunk_1
begin_hunk_2_@decNumberFMA:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cl, align 2, !tbaa !21
  store i8 32, ptr %i.cj, align 4, !tbaa !17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.cm, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !18
  store i32 1, ptr %7, align 4, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 0, ptr %i.co, align 2, !tbaa !21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.030 = phi ptr [ %7, %bb.aa ], [ %3, %bb.x ]
  %i.cp = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef nonnull %.030, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.not44 = icmp eq ptr %.029, null
  br i1 %.not44, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %.029) #19
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ac
  %.pr = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not45 = icmp eq i32 %.pr, 0
  br i1 %.not45, label %bb.ag, label %.thread.thread

.thread.thread:                                   ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %.thread
  %i.cq = phi i32 [ %.pr, %.thread ], [ 128, %bb.g ], [ 128, %bb.m ], [ 64, %bb.b ], [ 64, %bb.d ], [ 64, %bb.c ], [ 128, %bb.e ], [ 64, %bb.h ], [ 64, %bb.j ], [ 64, %bb.i ], [ 128, %bb.k ], [ 64, %bb.n ], [ 64, %bb.p ], [ 64, %bb.o ], [ 128, %bb.q ], [ 128, %bb.s ] ; 5 uses
  %i.cr = and i32 %i.cq, 221
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread.thread
  %i.cs = and i32 %i.cq, 1073741824
  %.not6.i = icmp eq i32 %i.cs, 0
  br i1 %.not6.i, label %.thread72, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = and i32 %i.cq, -1073741825
  br label %decStatus.exit

.thread72:                                        ; preds = %bb.w, %bb.ae
  %i.cu = phi i32 [ %i.cq, %bb.ae ], [ 16, %bb.w ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cw, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cx, align 2, !tbaa !21
  store i8 32, ptr %i.cv, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread.thread, %bb.af, %.thread72
  %.0.i = phi i32 [ %i.ct, %bb.af ], [ %i.cu, %.thread72 ], [ %i.cq, %.thread.thread ]
  %i.cy = call ptr @decContextSetStatus(ptr noundef nonnull %4, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %decStatus.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @decMultiplyOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [49 x i16], align 16              ; 3 uses
  %i.c = alloca [10 x i32], align 16              ; 3 uses
  %i.d = alloca [10 x i32], align 16              ; 3 uses
  %i.e = alloca [20 x i64], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !17    ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !17    ; 3 uses
  %i.k = xor i8 %i.j, %i.g
  %i.l = and i8 %i.k, -128                        ; 3 uses
  %i.m = or i8 %i.j, %i.g                         ; 2 uses
  %i.n = and i8 %i.m, 112
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i8 %i.m, 48
  %.not295 = icmp eq i8 %i.o, 0
  br i1 %.not295, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.h, 64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  %i.w = icmp eq i32 %i.v, 1
  %i.x = and i32 %i.h, 48
  %i.y = icmp eq i32 %i.x, 0
  %or.cond297 = and i1 %i.y, %i.w
  br i1 %or.cond297, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.z = zext i8 %i.j to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 64
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !21
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %2, align 4, !tbaa !19
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = and i32 %i.z, 48
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond299 = and i1 %i.ai, %i.ag
  br i1 %or.cond299, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !23
  %i.ak = or i32 %i.aj, 128
  store i32 %i.ak, ptr %4, align 4, !tbaa !23
  br label %bb.bc

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.an, align 2, !tbaa !21
  %i.ao = or disjoint i8 %i.l, 64
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !17
  br label %bb.bc

bb.l:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %i.aq = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq               ; 2 uses
  %spec.select = select i1 %i.ar, ptr %1, ptr %2  ; 3 uses
  %spec.select300 = select i1 %i.ar, ptr %2, ptr %1 ; 3 uses
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 6 uses
  %i.at = icmp sgt i32 %i.as, 6
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.aq) ; 9 uses
  br i1 %i.at, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i32 %i.au, 8
  %i.aw = sdiv i32 %i.av, 9                       ; 2 uses
  %i.ax = add nuw i32 %i.as, 8
  %i.ay = udiv i32 %i.ax, 9                       ; 2 uses
  %i.az = add nsw i32 %i.aw, %i.ay                ; 4 uses
  %i.ba = icmp sgt i32 %i.au, 90
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = shl nuw nsw i32 %i.aw, 2
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #20 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0250 = phi ptr [ %i.bd, %bb.n ], [ %i.c, %bb.m ] ; 8 uses
  %.0247 = phi ptr [ %i.bd, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.0250447 = ptrtoaddr ptr %.0250 to i64         ; 2 uses
  %i.be = icmp samesign ugt i32 %i.as, 90
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = shl nuw nsw i32 %i.ay, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #20 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0246 = phi ptr [ %i.bh, %bb.p ], [ %i.d, %bb.o ] ; 5 uses
  %.0243 = phi ptr [ %i.bh, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.bi = sext i32 %i.az to i64
  %i.bj = shl i32 %i.az, 3                        ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 160
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bl) #20 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0253 = phi ptr [ %i.bm, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.0242 = phi ptr [ %i.bm, %bb.r ], [ %i.e, %bb.q ] ; 11 uses
  %.0242394 = ptrtoaddr ptr %.0242 to i64         ; 3 uses
  %i.bn = icmp eq ptr %.0250, null
  %i.bo = icmp eq ptr %.0246, null
  %or.cond = or i1 %i.bn, %i.bo
  %i.bp = icmp eq ptr %.0242, null
  %or.cond3 = or i1 %or.cond, %i.bp
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %4, align 4, !tbaa !23
  %i.br = or i32 %i.bq, 16
  store i32 %i.br, ptr %4, align 4, !tbaa !23
  br label %bb.aw

bb.u:                                             ; preds = %bb.s
  %i.bs = icmp sgt i32 %i.au, 0
  br i1 %i.bs, label %.lr.ph332.preheader, label %.lr.ph342.preheader

.lr.ph332.preheader:                              ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %spec.select300, i64 10
  %i.bu = load i32, ptr @DECPOWERS, align 16, !tbaa !23
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 24), align 8
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.x
  %.0227331 = phi ptr [ %.lcssa461.a, %bb.x ], [ %i.bt, %.lr.ph332.preheader ] ; 4 uses
  %.0231330 = phi i32 [ %.lcssa460, %bb.x ], [ %i.au, %.lr.ph332.preheader ] ; 6 uses
  %.0240329 = phi ptr [ %i.cr, %bb.x ], [ %.0250, %.lr.ph332.preheader ] ; 2 uses
  %i.bx = load i16, ptr %.0227331, align 2, !tbaa !21
  %i.by = zext i16 %i.bx to i32
  %i.bz = mul i32 %i.bu, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0227331, i64 2 ; 2 uses
  %i.cb = add nsw i32 %.0231330, -3
  %i.cc = icmp samesign ugt i32 %.0231330, 3
  br i1 %i.cc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph332
  %i.cd = load i16, ptr %i.ca, align 2, !tbaa !21
  %i.ce = zext i16 %i.cd to i32
  %i.cf = mul i32 %i.bv, %i.ce
  %i.cg = add i32 %i.bz, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0227331, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.0231330, -6
  %i.cj = icmp sgt i32 %.0231330, 6
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i16, ptr %i.ch, align 2, !tbaa !21
  %i.cl = zext i16 %i.ck to i32
  %i.cm = mul i32 %i.bw, %i.cl
  %i.cn = add i32 %i.cg, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.0227331, i64 6
  %i.cp = add nsw i32 %.0231330, -9
  %i.cq = icmp sgt i32 %.0231330, 9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph332
  %.lcssa462.a = phi i32 [ %i.bz, %.lr.ph332 ], [ %i.cg, %bb.v ], [ %i.cn, %bb.w ]
  %.lcssa461.a = phi ptr [ %i.ca, %.lr.ph332 ], [ %i.ch, %bb.v ], [ %i.co, %bb.w ]
  %.lcssa460 = phi i32 [ %i.cb, %.lr.ph332 ], [ %i.ci, %bb.v ], [ %i.cp, %bb.w ]
  %.lcssa459 = phi i1 [ false, %.lr.ph332 ], [ false, %bb.v ], [ %i.cq, %bb.w ]
  store i32 %.lcssa462.a, ptr %.0240329, align 4, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.0240329, i64 4 ; 2 uses
  br i1 %.lcssa459, label %.lr.ph332, label %.lr.ph342.preheader, !llvm.loop !74

.lr.ph342.preheader:                              ; preds = %bb.x, %bb.u
  %.0240.lcssa = phi ptr [ %.0250, %bb.u ], [ %i.cr, %bb.x ] ; 2 uses
  %.0240.lcssa448 = ptrtoaddr ptr %.0240.lcssa to i64
  %i.cs = getelementptr inbounds i8, ptr %.0240.lcssa, i64 -4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select, i64 10
  %i.cu = load i32, ptr @DECPOWERS, align 16, !tbaa !23
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 24), align 8
  br label %.lr.ph342

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %bb.z
  %.2229340 = phi ptr [ %i.do, %bb.z ], [ %i.ct, %.lr.ph342.preheader ] ; 4 uses
  %.2233339 = phi i32 [ %i.dp, %bb.z ], [ %i.as, %.lr.ph342.preheader ] ; 6 uses
  %.0238338 = phi ptr [ %i.dr, %bb.z ], [ %.0246, %.lr.ph342.preheader ] ; 7 uses
  %i.cx = load i16, ptr %.2229340, align 2, !tbaa !21
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul i32 %i.cu, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2229340, i64 2 ; 2 uses
  %i.db = add nsw i32 %.2233339, -3
  %i.dc = icmp sgt i32 %.2233339, 3
  br i1 %i.dc, label %bb.y, label %._crit_edge343.critedge

bb.y:                                             ; preds = %.lr.ph342
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !21
  %i.de = zext i16 %i.dd to i32
  %i.df = mul i32 %i.cv, %i.de
  %i.dg = add i32 %i.cz, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.2229340, i64 4 ; 2 uses
  %i.di = add nsw i32 %.2233339, -6
  %i.dj = icmp sgt i32 %.2233339, 6
  br i1 %i.dj, label %bb.z, label %._crit_edge343.critedge

bb.z:                                             ; preds = %bb.y
  %i.dk = load i16, ptr %i.dh, align 2, !tbaa !21
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul i32 %i.cw, %i.dl
  %i.dn = add i32 %i.dg, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.2229340, i64 6
  %i.dp = add nsw i32 %.2233339, -9
  %i.dq = icmp sgt i32 %.2233339, 9
  store i32 %i.dn, ptr %.0238338, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %.0238338, i64 4
  br i1 %i.dq, label %.lr.ph342, label %._crit_edge343, !llvm.loop !75

._crit_edge343.critedge:                          ; preds = %bb.y, %.lr.ph342
  %.lcssa458.ph.a = phi i32 [ %i.dg, %bb.y ], [ %i.cz, %.lr.ph342 ]
  %.lcssa457.ph = phi ptr [ %i.dh, %bb.y ], [ %i.da, %.lr.ph342 ] ; 0 uses
  %.lcssa456.ph = phi i32 [ %i.di, %bb.y ], [ %i.db, %.lr.ph342 ] ; 0 uses
  store i32 %.lcssa458.ph.a, ptr %.0238338, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.0238338, i64 4 ; 0 uses
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %._crit_edge343.critedge, %bb.z
  %.idx371 = shl nsw i64 %i.bi, 3                 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.0242, i64 %.idx371 ; 2 uses
  %i.du = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.du, label %.lr.ph347.preheader, label %.preheader317

.lr.ph347.preheader:                              ; preds = %._crit_edge343
  %i.dv = add i64 %.idx371, %.0242394
  %i.dw = add i64 %.0242394, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dw)
  %i.dx = xor i64 %.0242394, -1
  %i.dy = add i64 %umax, %i.dx
  %i.dz = and i64 %i.dy, -8
  %i.ea = add i64 %i.dz, 8
  call void @llvm.memset.p0.i64(ptr align 8 %.0242, i8 0, i64 %i.ea, i1 false), !tbaa !83
  br label %.preheader317

.preheader317:                                    ; preds = %.lr.ph347.preheader, %._crit_edge343
  %.not286357 = icmp ugt ptr %.0246, %.0238338
  br i1 %.not286357, label %.preheader, label %.lr.ph360

.lr.ph360:                                        ; preds = %.preheader317
  %i.eb = ptrtoint ptr %.0246 to i64
  %.not287349 = icmp ugt ptr %.0250, %i.cs
  %i.ec = icmp slt i32 %i.az, 1
  %i.ed = add i64 %.0240.lcssa448, -3
  %i.ee = add i64 %.0250447, 4
  %i.ef = call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.ee)
  %i.eg = xor i64 %.0250447, -1
  %i.eh = add i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 12
  %n.vec = and i64 %i.ej, 9223372036854775804     ; 4 uses
  %i.ek = shl i64 %n.vec, 3
  %i.el = shl i64 %n.vec, 2
  %i.em = getelementptr i8, ptr %.0250, i64 %i.el
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br label %bb.aa

.preheader:                                       ; preds = %.loopexit, %.preheader317
  br i1 %i.du, label %.lr.ph366, label %._crit_edge367

bb.aa:                                            ; preds = %.lr.ph360, %.loopexit
  %.0236359 = phi i32 [ 18, %.lr.ph360 ], [ %.1237, %.loopexit ] ; 2 uses
  %.1239358 = phi ptr [ %.0246, %.lr.ph360 ], [ %i.gg, %.loopexit ] ; 4 uses
  br i1 %.not287349, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.aa
  %i.en = ptrtoint ptr %.1239358 to i64
  %i.eo = sub i64 %i.en, %i.eb
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %.1239358, align 4, !tbaa !23
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph353
  %i.et = getelementptr i8, ptr %i.eq, i64 %i.ek
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ev = shl i64 %index, 2
  %next.gep447 = getelementptr i8, ptr %.0250, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep447, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep447, align 4, !tbaa !23
  %wide.load448 = load <2 x i32>, ptr %i.ew, align 4, !tbaa !23
  %i.ex = zext <2 x i32> %wide.load to <2 x i64>
  %i.ey = zext <2 x i32> %wide.load448 to <2 x i64>
  %i.ez = mul nuw <2 x i64> %broadcast.splat, %i.ex
  %i.fa = mul nuw <2 x i64> %broadcast.splat, %i.ey
  %i.fb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load449 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !83
  %wide.load450 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !83
  %i.fc = add <2 x i64> %i.ez, %wide.load449
  %i.fd = add <2 x i64> %i.fa, %wide.load450
  store <2 x i64> %i.fc, ptr %next.gep, align 8, !tbaa !83
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge354, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph353, %middle.block
  %.1223351.ph = phi ptr [ %i.eq, %.lr.ph353 ], [ %i.et, %middle.block ]
  %.1241350.ph = phi ptr [ %.0250, %.lr.ph353 ], [ %i.em, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1223351 = phi ptr [ %i.fl, %scalar.ph ], [ %.1223351.ph, %scalar.ph.preheader ] ; 3 uses
  %.1241350 = phi ptr [ %i.fk, %scalar.ph ], [ %.1241350.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ff = load i32, ptr %.1241350, align 4, !tbaa !23
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw i64 %i.es, %i.fg
  %i.fi = load i64, ptr %.1223351, align 8, !tbaa !83
  %i.fj = add i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %.1223351, align 8, !tbaa !83
  %i.fk = getelementptr inbounds nuw i8, ptr %.1241350, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1223351, i64 8
  %.not287 = icmp ugt ptr %i.fk, %i.cs
  br i1 %.not287, label %._crit_edge354, label %scalar.ph, !llvm.loop !77

._crit_edge354:                                   ; preds = %scalar.ph, %middle.block, %bb.aa
  %i.fm = icmp sgt i32 %.0236359, 1
  %i.fn = add nsw i32 %.0236359, -1
  %.not288 = icmp ne ptr %.1239358, %.0238338
  %or.cond301.not373 = and i1 %i.fm, %.not288     ; 2 uses
  %brmerge = or i1 %or.cond301.not373, %i.ec
  %.mux = select i1 %or.cond301.not373, i32 %i.fn, i32 18
  br i1 %brmerge, label %.loopexit, label %.lr.ph356

.lr.ph356:                                        ; preds = %._crit_edge354, %bb.ae
  %.2224355 = phi ptr [ %i.ge, %bb.ae ], [ %.0242, %._crit_edge354 ] ; 5 uses
  %i.fo = load i64, ptr %.2224355, align 8, !tbaa !83 ; 6 uses
  %i.fp = icmp ult i64 %i.fo, 1000000000
  br i1 %i.fp, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph356
  %i.fq = udiv i64 %i.fo, 1000000000              ; 2 uses
  %i.fr = icmp ult i64 %i.fo, 1000000000000000000
  br i1 %i.fr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = udiv i64 %i.fo, 1000000000000000000     ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.2224355, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !83
  %i.fv = add i64 %i.fu, %i.fs
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !83
  %.neg289 = mul i64 %i.fs, -1000000000000000000
  %i.fw = add i64 %.neg289, %i.fo
  %.neg290 = mul nuw nsw i64 %i.fs, 3294967296
  %i.fx = add nuw nsw i64 %.neg290, %i.fq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fy = phi i64 [ %i.fw, %bb.ac ], [ %i.fo, %bb.ab ]
  %.0235.in = phi i64 [ %i.fx, %bb.ac ], [ %i.fq, %bb.ab ]
  %i.fz = and i64 %.0235.in, 4294967295           ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.2224355, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gc = add i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !83
  %.neg291 = mul nsw i64 %i.fz, -1000000000
  %i.gd = add i64 %i.fy, %.neg291
  store i64 %i.gd, ptr %.2224355, align 8, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph356, %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %.2224355, i64 8 ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.dt
  br i1 %i.gf, label %.lr.ph356, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %bb.ae, %._crit_edge354
  %.1237 = phi i32 [ %.mux, %._crit_edge354 ], [ 18, %bb.ae ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.1239358, i64 4 ; 2 uses
  %.not286 = icmp ugt ptr %i.gg, %.0238338
  br i1 %.not286, label %.preheader, label %bb.aa, !llvm.loop !79

.lr.ph366:                                        ; preds = %.preheader, %.lr.ph366
  %.3365 = phi ptr [ %i.gt, %.lr.ph366 ], [ %.0242, %.preheader ] ; 2 uses
  %.0225364 = phi ptr [ %i.gs, %.lr.ph366 ], [ %.0242, %.preheader ] ; 4 uses
  %i.gh = load i64, ptr %.3365, align 8, !tbaa !83
  %i.gi = trunc i64 %i.gh to i32                  ; 3 uses
  %i.gj = udiv i32 %i.gi, 1000                    ; 2 uses
  %.neg = mul i32 %i.gj, 64536
  %i.gk = add i32 %.neg, %i.gi
  %i.gl = trunc i32 %i.gk to i16
  store i16 %i.gl, ptr %.0225364, align 2, !tbaa !21
  %i.gm = getelementptr inbounds nuw i8, ptr %.0225364, i64 2
  %i.gn = udiv i32 %i.gi, 1000000                 ; 2 uses
  %.neg.1 = mul nuw nsw i32 %i.gn, 64536
  %i.go = add nuw nsw i32 %.neg.1, %i.gj
  %i.gp = trunc i32 %i.go to i16
  store i16 %i.gp, ptr %i.gm, align 2, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.0225364, i64 4
  %i.gr = trunc nuw nsw i32 %i.gn to i16
  store i16 %i.gr, ptr %i.gq, align 2, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %.0225364, i64 6 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.3365, i64 8 ; 2 uses
  %i.gu = icmp ult ptr %i.gt, %i.dt
  br i1 %i.gu, label %.lr.ph366, label %._crit_edge367, !llvm.loop !80

._crit_edge367:                                   ; preds = %.lr.ph366, %.preheader
  %.0225.lcssa = phi ptr [ %.0242, %.preheader ], [ %i.gs, %.lr.ph366 ]
  %i.gv = ptrtoint ptr %.0225.lcssa to i64
  %i.gw = ptrtoint ptr %.0242 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 1
  %i.gz = trunc i64 %i.gy to i32
  br label %.loopexit318

bb.af:                                            ; preds = %bb.l
  %i.ha = icmp slt i32 %i.au, 50                  ; 2 uses
  br i1 %i.ha, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hb = sext i32 %i.au to i64
  %i.hc = getelementptr inbounds i8, ptr @d2utable, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !24
  %i.he = zext i8 %i.hd to i32
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hf = add nuw nsw i32 %i.au, 2
  %i.hg = udiv i32 %i.hf, 3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = phi i32 [ %i.he, %bb.ag ], [ %i.hg, %bb.ah ]
  %i.hi = sext i32 %i.as to i64
  %i.hj = getelementptr inbounds i8, ptr @d2utable, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24  ; 2 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hh, %i.hl            ; 2 uses
  %i.hn = icmp samesign ugt i32 %i.hm, 49
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ho = shl nuw nsw i32 %i.hm, 1
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.hp) #20 ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
end_hunk_2
begin_hunk_3_@decNumberInvert:bb.a
bb.u:                                             ; preds = %.split.1
  %i.bt = add i16 %i.bo, %i.as                    ; 2 uses
  store i16 %i.bt, ptr %.05490, align 2, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.1
  %i.bu = phi i16 [ %i.bt, %bb.u ], [ %i.bo, %.split.1 ]
  %i.bv = urem i16 %i.bq, 10
  %i.bw = icmp samesign ugt i16 %i.bv, 1
  br i1 %i.bw, label %.split87.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = udiv i16 %.052, 100                     ; 2 uses
  br i1 %exitcond.not.1, label %.split85.us, label %.split.2

.split.2:                                         ; preds = %bb.w
  %i.by = and i16 %i.bx, 1
  %.not69.not.2 = icmp eq i16 %i.by, 0
  br i1 %.not69.not.2, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.split.2
  %i.bz = add i16 %i.bu, %i.au
  store i16 %i.bz, ptr %.05490, align 2, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.2
  %i.ca = urem i16 %i.bx, 10
  %i.cb = icmp samesign ugt i16 %i.ca, 1
  br i1 %i.cb, label %.split87.us, label %.split85.us

.split87.us:                                      ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.v, %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  store i16 0, ptr %.ptr77, align 2, !tbaa !21
  store i8 32, ptr %i.cc, align 4, !tbaa !17
  %i.ce = tail call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef 128) #19 ; 0 uses
  br label %bb.ad

.split85.us:                                      ; preds = %bb.t, %bb.w, %bb.y, %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.05589, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.05490, i64 2 ; 3 uses
  %.not68 = icmp ugt ptr %i.cg, %i.ag
  br i1 %.not68, label %._crit_edge, label %bb.i, !llvm.loop !84

._crit_edge:                                      ; preds = %.split85.us, %bb.h
  %.054.lcssa = phi ptr [ %.ptr77, %bb.h ], [ %i.cg, %.split85.us ]
  %i.ch = ptrtoint ptr %.054.lcssa to i64
  %i.ci = ptrtoint ptr %.ptr77 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = lshr exact i64 %i.cj, 1
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  %i.cn = mul nsw i32 %i.cm, 3
  %i.co = add nsw i32 %i.cn, 1                    ; 2 uses
  %.not16.i = icmp slt i32 %i.cl, 1
  br i1 %.not16.i, label %decGetDigits.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.cp = zext nneg i32 %i.cm to i64
  %.idx.i = shl nuw nsw i64 %i.cp, 1
  %.add = add nuw nsw i64 %.idx.i, 10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i
  %.018.i = phi i32 [ %i.ct, %bb.aa ], [ %i.co, %.lr.ph.preheader.i ] ; 4 uses
  %.01317.i.idx = phi i64 [ %.01317.i.add, %bb.aa ], [ %.add, %.lr.ph.preheader.i ] ; 3 uses
  %.01317.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.01317.i.idx
  %i.cq = load i16, ptr %.01317.i.ptr, align 2, !tbaa !21 ; 3 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i
  %i.cs = icmp eq i32 %.018.i, 1
  br i1 %i.cs, label %decGetDigits.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = add nsw i32 %.018.i, -3                 ; 2 uses
  %.01317.i.add = add nsw i64 %.01317.i.idx, -2
  %.not.i = icmp slt i64 %.01317.i.idx, 11
  br i1 %.not.i, label %decGetDigits.exit, label %.lr.ph.i, !llvm.loop !1

bb.ab:                                            ; preds = %.lr.ph.i
  %i.cu = icmp ult i16 %i.cq, 10
  br i1 %i.cu, label %decGetDigits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = icmp ult i16 %i.cq, 100
  %spec.select.v.i = select i1 %i.cv, i32 1, i32 2
  %spec.select.i = add nsw i32 %spec.select.v.i, %.018.i
  br label %decGetDigits.exit

decGetDigits.exit:                                ; preds = %bb.z, %bb.aa, %._crit_edge, %bb.ab, %bb.ac
  %.1.i = phi i32 [ %spec.select.i, %bb.ac ], [ %.018.i, %bb.ab ], [ %i.co, %._crit_edge ], [ 1, %bb.z ], [ %i.ct, %bb.aa ]
  store i32 %.1.i, ptr %0, align 4, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cw, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cx, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %.split87.us, %decGetDigits.exit, %bb.c
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberLn(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = load i32, ptr %2, align 4, !tbaa !27
  %i.c = icmp sgt i32 %i.b, 999999
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = icmp slt i32 %i.h, -999999
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !19     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 999999
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = add i32 %i.j, -1000001
  %i.o = add i32 %i.n, %i.m
  %or.cond.i = icmp ult i32 %i.o, -2999997
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !21
  %i.r = icmp eq i16 %i.q, 0
  %i.s = icmp eq i32 %i.j, 1
  %or.cond16.i = and i1 %i.s, %i.r
  br i1 %or.cond16.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i8, ptr %i.t, align 4, !tbaa !17
  %i.v = and i8 %i.u, 112
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = call fastcc ptr @decLnOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.a) ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not8 = icmp eq i32 %.pr, 0
  br i1 %.not8, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %i.y = phi i32 [ %.pr, %bb.h ], [ 64, %bb.a ], [ 64, %bb.c ], [ 64, %bb.b ], [ 128, %bb.d ], [ 128, %bb.g ], [ 128, %bb.f ] ; 5 uses
  %i.z = and i32 %i.y, 221
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.aa = and i32 %i.y, 1073741824
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.y, -1073741825
  br label %decStatus.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ae, align 2, !tbaa !21
  store i8 32, ptr %i.ac, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.ab, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %.thread ]
  %i.af = tail call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %decStatus.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @decLnOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %4 = alloca [4 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %6 = alloca %struct.decNumber, align 4          ; 9 uses
  %7 = alloca %struct.decNumber, align 4          ; 8 uses
  %8 = alloca %struct.decContext, align 4         ; 23 uses
  %9 = alloca %struct.decContext, align 4         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 4 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not174 = icmp eq i32 %i.i, 0
  br i1 %.not174, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not175 = icmp sgt i8 %i.f, -1
  br i1 %.not175, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %3, align 4, !tbaa !23
  %i.k = or i32 %i.j, 128
  store i32 %i.k, ptr %3, align 4, !tbaa !23
  br label %.thread229

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %0, %1
  br i1 %i.l, label %.thread229, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.m, align 4, !tbaa !17
  %i.n = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.o = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.n, ptr %0, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.q, ptr %i.r, align 2, !tbaa !21
  %i.s = icmp sgt i32 %i.o, 3
  br i1 %i.s, label %bb.g, label %.thread229

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.u = icmp samesign ult i32 %i.o, 50
  br i1 %i.u, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.v = add nuw nsw i32 %i.o, 2
  %i.w = udiv i32 %i.v, 3
  br label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.w, %.thread.i ], [ %i.aa, %bb.h ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx35.pn.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ad = add i64 %i.b, %.idx35.pn.i
  %i.ae = add i64 %i.ad, 10
  %i.af = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = add i64 %umax, -13
  %i.ah = sub i64 %i.ag, %i.b                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ah, 6
  %i.ak = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond308 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond308, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check295 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check295, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.aj, 12
  %n.vec = and i64 %i.aj, -16                     ; 4 uses
  %i.am = shl i64 %n.vec, 1                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.t, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ap ; 2 uses
  %next.gep296 = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep296, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep296, align 2, !tbaa !21
  %wide.load297 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !21
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load297, ptr %i.ar, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.thread229, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec299 = and i64 %i.aj, -4                   ; 3 uses
  %i.at = shl i64 %n.vec299, 1                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next304, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index300, 1                    ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.t, i64 %i.aw
  %next.gep302 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %wide.load303 = load <4 x i16>, ptr %next.gep302, align 2, !tbaa !21
  store <4 x i16> %wide.load303, ptr %next.gep301, align 2, !tbaa !21
  %index.next304 = add nuw i64 %index300, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n305 = icmp eq i64 %i.aj, %n.vec299
  br i1 %cmp.n305, label %.thread229, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.ay, ptr %.032.i, align 2, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.bb = icmp ult ptr %i.az, %i.ab
  br i1 %i.bb, label %.lr.ph.i, label %.thread229, !llvm.loop !87

bb.i:                                             ; preds = %bb.b
  %i.bc = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread229

bb.j:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !21 ; 2 uses
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %1, align 4, !tbaa !19
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.bk, align 2, !tbaa !21
  store i8 -64, ptr %i.bi, align 4, !tbaa !17
  br label %.thread229

bb.m:                                             ; preds = %bb.k, %bb.j
  %.not172 = icmp sgt i8 %i.f, -1
  br i1 %.not172, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %3, align 4, !tbaa !23
  %i.bm = or i32 %i.bl, 128
  store i32 %i.bm, ptr %3, align 4, !tbaa !23
  br label %.thread229

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = icmp eq i32 %i.bo, 0
  %.pre = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.bq = icmp slt i32 %.pre, 41
  %or.cond284 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond284, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  switch i16 %i.be, label %.thread [
    i16 10, label %bb.q
    i16 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %1, align 4, !tbaa !19
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bt, align 4, !tbaa !34
  %i.bu = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) ; 0 uses
  %i.bv = load i32, ptr %3, align 4, !tbaa !23
  %i.bw = or i32 %i.bv, 2080
  store i32 %i.bw, ptr %3, align 4, !tbaa !23
  br label %.thread229

bb.s:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %1, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bz, align 4, !tbaa !34
  %i.ca = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %8) ; 0 uses
  %i.cb = load i32, ptr %3, align 4, !tbaa !23
  %i.cc = or i32 %i.cb, 2080
  store i32 %i.cc, ptr %3, align 4, !tbaa !23
  br label %.thread229

.thread:                                          ; preds = %bb.p, %bb.q, %bb.s, %bb.o
  %i.cd = load i32, ptr %1, align 4, !tbaa !19    ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.pre, i32 %i.cd) ; 2 uses
  %spec.select232 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 7)
  %i.ce = add nuw nsw i32 %spec.select232, 2      ; 6 uses
  %i.cf = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 16) ; 2 uses
  %i.cg = icmp slt i32 %spec.select, 48
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !24
  %i.ck = zext i8 %i.cj to i32
  br label %bb.w

bb.v:                                             ; preds = %.thread
  %i.cl = add nuw nsw i32 %i.cf, 2
  %i.cm = udiv i32 %i.cl, 3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cn = phi i32 [ %i.ck, %bb.u ], [ %i.cm, %bb.v ] ; 2 uses
  %i.co = icmp samesign ugt i32 %i.cn, 19
  br i1 %i.co, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cp = shl nuw nsw i32 %i.cn, 1
  %i.cq = add nuw nsw i32 %i.cp, 10
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cr) #20 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cu = load i32, ptr %3, align 4, !tbaa !23
  %i.cv = or i32 %i.cu, 16
  store i32 %i.cv, ptr %3, align 4, !tbaa !23
  br label %.thread229

bb.z:                                             ; preds = %bb.x, %bb.w
  %.0148 = phi ptr [ null, %bb.w ], [ %i.cs, %bb.x ] ; 2 uses
  %.0147 = phi ptr [ %4, %bb.w ], [ %i.cs, %bb.x ] ; 17 uses
end_hunk_3
begin_hunk_4_@decLnOp:bb.a
  %i.gy = icmp eq i16 %i.gx, 0                    ; 2 uses
  %.pre255 = load i32, ptr %.0, align 4, !tbaa !19 ; 3 uses
  %i.gz = icmp eq i32 %.pre255, 1
  %or.cond286 = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond286, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ha = load i8, ptr %i.ep, align 4, !tbaa !17
  %i.hb = and i8 %i.ha, 112
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %._crit_edge, label %bb.at

._crit_edge:                                      ; preds = %bb.as
  %.pre256 = load i32, ptr %.0147, align 4, !tbaa !19
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hd = load i32, ptr %.0147, align 4, !tbaa !19 ; 2 uses
  %i.he = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.hf = add nsw i32 %i.he, %i.hd
  %i.hg = load i32, ptr %i.eq, align 4, !tbaa !18
  %i.hh = add nsw i32 %i.hg, %.pre255
  %i.hi = load i32, ptr %2, align 4, !tbaa !27
  %i.hj = add nsw i32 %i.hh, %i.hi
  %.not173.not = icmp sgt i32 %i.hf, %i.hj
  br i1 %.not173.not, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %._crit_edge, %bb.at
  %i.hk = phi i32 [ %.pre256, %._crit_edge ], [ %i.hd, %bb.at ] ; 2 uses
  %i.hl = icmp eq i32 %i.hk, %i.ce
  br i1 %i.hl, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hm = load i16, ptr %.ptr17.i.i, align 2, !tbaa !21
  %i.hn = icmp eq i16 %i.hm, 0
  %i.ho = icmp eq i32 %i.hk, 1
  %or.cond = and i1 %i.ho, %i.hn
  br i1 %or.cond, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.hp = load i8, ptr %i.ds, align 4, !tbaa !17
  %i.hq = and i8 %i.hp, 112
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.hs = load i8, ptr %i.e, align 4, !tbaa !17
  %i.ht = and i8 %i.hs, 48
  %.not116.i = icmp eq i8 %i.ht, 0
  br i1 %.not116.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hu = call fastcc ptr @decNaNs(ptr noundef nonnull %7, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, ptr noundef nonnull %i.c) ; 0 uses
  br label %decCompareOp.exit

bb.az:                                            ; preds = %bb.ax
  %i.hv = call fastcc i32 @decCompare(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, i8 noundef zeroext 0) ; 3 uses
  %i.hw = icmp eq i32 %i.hv, -2147483648
  br i1 %i.hw, label %bb.ba, label %.thread.i224

bb.ba:                                            ; preds = %bb.az
  %i.hx = load i32, ptr %i.c, align 4, !tbaa !23
  %i.hy = or i32 %i.hx, 16
  store i32 %i.hy, ptr %i.c, align 4, !tbaa !23
  br label %decCompareOp.exit

.thread.i224:                                     ; preds = %bb.az
  %i.hz = icmp eq i32 %i.hv, 0
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 0, ptr %i.ia, align 4, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ib, align 4, !tbaa !18
  store i32 1, ptr %7, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.ic, align 2, !tbaa !21
  br i1 %i.hz, label %decCompareOp.exit, label %bb.bb

bb.bb:                                            ; preds = %.thread.i224
  store i16 1, ptr %i.ic, align 2, !tbaa !21
  %i.id = icmp slt i32 %i.hv, 0
  br i1 %i.id, label %bb.bc, label %decCompareOp.exit

bb.bc:                                            ; preds = %bb.bb
  store i8 -128, ptr %i.ia, align 4, !tbaa !17
  br label %decCompareOp.exit

decCompareOp.exit:                                ; preds = %bb.ay, %bb.ba, %.thread.i224, %bb.bb, %bb.bc
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !21
  %i.ig = icmp eq i16 %i.if, 0
  br i1 %i.ig, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %decCompareOp.exit
  store i32 0, ptr %i.dt, align 4, !tbaa !18
  br label %.loopexit

bb.be:                                            ; preds = %decCompareOp.exit
  %i.ih = load i32, ptr %3, align 4, !tbaa !23
  %i.ii = or i32 %i.ih, 2080
  store i32 %i.ii, ptr %3, align 4, !tbaa !23
  br label %.loopexit

bb.bf:                                            ; preds = %bb.aw, %bb.av
  %i.ij = icmp eq i32 %.pre255, 1
  %or.cond287 = select i1 %i.gy, i1 %i.ij, i1 false
  br i1 %or.cond287, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ik = load i8, ptr %i.ep, align 4, !tbaa !17
  %i.il = and i8 %i.ik, 112
  %i.im = icmp eq i8 %i.il, 0
  br i1 %i.im, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.in = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.io = sub nsw i32 %i.in, %i.ce
  store i32 %i.io, ptr %i.eq, align 4, !tbaa !18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.at
  %i.ip = call fastcc ptr @decAddOp(ptr noundef nonnull %.0147, ptr noundef nonnull %.0147, ptr noundef nonnull %.0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  br i1 %i.gp, label %bb.ar, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iq = shl nsw i32 %spec.select180.sink285, 1
  %spec.select180 = call i32 @llvm.smin.i32(i32 %i.iq, i32 %i.ce)
  br label %.outer

.loopexit:                                        ; preds = %bb.au, %bb.bd, %bb.be
  store i32 1, ptr %i.d, align 4, !tbaa !23
  %i.ir = load i16, ptr %.ptr17.i.i, align 2, !tbaa !21
  %i.is = icmp eq i16 %i.ir, 0
  br i1 %i.is, label %bb.bk, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre257 = load i8, ptr %i.ds, align 4, !tbaa !17
  %.pre259 = load i32, ptr %.0147, align 4, !tbaa !19
  br label %bb.bn

bb.bk:                                            ; preds = %.loopexit
  %i.it = load i32, ptr %.0147, align 4, !tbaa !19 ; 2 uses
  %i.iu = icmp eq i32 %i.it, 1
  %.pre258 = load i8, ptr %i.ds, align 4, !tbaa !17 ; 4 uses
  br i1 %i.iu, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.iv = and i8 %.pre258, 112
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.d, align 4, !tbaa !23
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit._crit_edge, %bb.bm, %bb.bl, %bb.bk
  %i.ix = phi i32 [ %.pre259, %.loopexit._crit_edge ], [ 1, %bb.bm ], [ 1, %bb.bl ], [ %i.it, %bb.bk ]
  %i.iy = phi i8 [ %.pre257, %.loopexit._crit_edge ], [ %.pre258, %bb.bm ], [ %.pre258, %bb.bl ], [ %.pre258, %bb.bk ]
  %i.iz = load i32, ptr %2, align 4, !tbaa !27
  store i32 %i.iz, ptr %8, align 4, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.iy, ptr %i.ja, align 4, !tbaa !17
  %i.jb = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !18
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %.ptr17.i.i, i32 noundef %i.ix, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.d, ptr noundef %3)
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %bb.bn, %bb.ae
  %.1 = phi ptr [ null, %bb.ae ], [ %.0146, %bb.bn ] ; 2 uses
  %.not176 = icmp eq ptr %.0148, null
  br i1 %.not176, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %decNumberCopy.exit
  call void @free(ptr noundef nonnull %.0148) #19
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %decNumberCopy.exit
  %.not177 = icmp eq ptr %.1, null
  br i1 %.not177, label %.thread229, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef nonnull %.1) #19
  br label %.thread229

.thread229:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.i, %bb.l, %bb.n, %bb.r, %bb.t, %bb.y, %bb.e, %bb.f, %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberLogB(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca [2 x %struct.decNumber], align 16   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 48
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %decNumberFromInt32.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %0, %1
  br i1 %i.j, label %.decNumberCopy.exit_crit_edge.i, label %bb.d

.decNumberCopy.exit_crit_edge.i:                  ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %decNumberCopyAbs.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.l = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.k, ptr %0, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.n, ptr %i.o, align 2, !tbaa !21
  %i.p = icmp sgt i32 %i.l, 3
  br i1 %i.p, label %bb.e, label %decNumberCopyAbs.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.r = icmp samesign ult i32 %i.l, 50
  br i1 %i.r, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.l, 2
  %i.t = udiv i32 %i.s, 3
  br label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = zext i8 %i.w to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %.thread.i.i
  %.idx35.pn.in.in.i.i = phi i32 [ %i.t, %.thread.i.i ], [ %i.x, %bb.f ]
  %.idx35.pn.in.i.i = shl nuw nsw i32 %.idx35.pn.in.in.i.i, 1
  %.idx35.pn.i.i = zext nneg i32 %.idx35.pn.in.i.i to i64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx35.pn.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.aa = add i64 %i.b, %.idx35.pn.i.i
  %i.ab = add i64 %i.aa, 10
  %i.ac = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ad = add i64 %umax, -13
  %i.ae = sub i64 %i.ad, %i.b                     ; 3 uses
  %i.af = lshr i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  %i.ah = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond104 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond104, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i64 %i.ae, 30
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.aj = shl i64 %n.vec, 1                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.z, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.am ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !21
  %wide.load93 = load <8 x i16>, ptr %i.an, align 2, !tbaa !21
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load93, ptr %i.ao, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %decNumberCopyAbs.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.ag, -4                    ; 3 uses
  %i.aq = shl i64 %n.vec95, 1                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.q, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index96, 1                     ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.q, i64 %i.at
  %next.gep98 = getelementptr i8, ptr %i.z, i64 %i.at
  %wide.load99 = load <4 x i16>, ptr %next.gep98, align 2, !tbaa !21
  store <4 x i16> %wide.load99, ptr %next.gep97, align 2, !tbaa !21
  %index.next100 = add nuw i64 %index96, 4        ; 2 uses
  %i.au = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %i.ag, %n.vec95
  br i1 %cmp.n101, label %decNumberCopyAbs.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.02631.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.032.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.032.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02631.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.02631.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = load i16, ptr %.02631.i.i, align 2, !tbaa !21
  store i16 %i.av, ptr %.032.i.i, align 2, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.02631.i.i, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 2
  %i.ay = icmp ult ptr %i.aw, %i.y
  br i1 %i.ay, label %.lr.ph.i.i, label %decNumberCopyAbs.exit, !llvm.loop !90

decNumberCopyAbs.exit:                            ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge.i, %bb.d
  %i.az = phi i8 [ %.pre.i, %.decNumberCopy.exit_crit_edge.i ], [ %i.f, %bb.d ], [ %i.f, %middle.block ], [ %i.f, %vec.epilog.middle.block ], [ %i.f, %.lr.ph.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = and i8 %i.az, 127
  store i8 %i.bb, ptr %i.ba, align 4, !tbaa !17
  br label %decNumberFromInt32.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !21
  %i.be = icmp eq i16 %i.bd, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !19    ; 2 uses
  %i.bf = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.bi, align 2, !tbaa !21
  store i8 -64, ptr %i.bg, align 4, !tbaa !17
  br label %decStatus.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = add nsw i32 %.pre, %i.bk                ; 3 uses
  %i.bm = add nsw i32 %i.bl, -1                   ; 4 uses
  %i.bn = load i32, ptr %2, align 4, !tbaa !27
  %i.bo = icmp sgt i32 %i.bn, 9
  br i1 %i.bo, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bp, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bq, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %.ptr17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  store i16 0, ptr %.ptr17.i.i, align 2, !tbaa !21
  %i.br = icmp eq i32 %i.bm, 0
  br i1 %i.br, label %decNumberFromInt32.exit.thread, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.i
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.bm, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
  %.022.i.i = phi ptr [ %i.bv, %.preheader.i.i ], [ %.ptr17.i.i, %.preheader.i.preheader.i ] ; 2 uses
  %.01421.i.i = phi i32 [ %i.bu, %.preheader.i.i ], [ %.0.i, %.preheader.i.preheader.i ] ; 3 uses
  %i.bs = urem i32 %.01421.i.i, 1000
  %i.bt = trunc nuw nsw i32 %i.bs to i16
  store i16 %i.bt, ptr %.022.i.i, align 2, !tbaa !21
  %i.bu = udiv i32 %.01421.i.i, 1000
  %i.bv = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp ult i32 %.01421.i.i, 1000
  br i1 %.not.i.i, label %bb.j, label %.preheader.i.i, !llvm.loop !0

bb.j:                                             ; preds = %.preheader.i.i
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %.ptr17.i.i to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = lshr exact i64 %i.by, 1
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  %i.cc = mul nsw i32 %i.cb, 3
  %i.cd = add nsw i32 %i.cc, 1                    ; 2 uses
  %.not16.i.i.i = icmp slt i32 %i.ca, 1
  br i1 %.not16.i.i.i, label %decNumberFromUInt32.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %i.ce = zext nneg i32 %i.cb to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ce, 1
  %.add.i.i = add nuw nsw i64 %.idx.i.i.i, 10
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %.018.i.i.i = phi i32 [ %i.ci, %bb.l ], [ %i.cd, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.01317.i.idx.i.i = phi i64 [ %.01317.i.add.i.i, %bb.l ], [ %.add.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01317.i.ptr.i.i = getelementptr inbounds i8, ptr %0, i64 %.01317.i.idx.i.i
  %i.cf = load i16, ptr %.01317.i.ptr.i.i, align 2, !tbaa !21 ; 3 uses
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ch = icmp eq i32 %.018.i.i.i, 1
  br i1 %i.ch, label %decNumberFromUInt32.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = add nsw i32 %.018.i.i.i, -3             ; 2 uses
  %.01317.i.add.i.i = add nsw i64 %.01317.i.idx.i.i, -2
  %.not.i.i.i = icmp slt i64 %.01317.i.idx.i.i, 11
  br i1 %.not.i.i.i, label %decNumberFromUInt32.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cj = icmp ult i16 %i.cf, 10
  br i1 %i.cj, label %decNumberFromUInt32.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp ult i16 %i.cf, 100
  %spec.select.v.i.i.i = select i1 %i.ck, i32 1, i32 2
  %spec.select.i.i.i = add nsw i32 %spec.select.v.i.i.i, %.018.i.i.i
  br label %decNumberFromUInt32.exit.i

decNumberFromUInt32.exit.i:                       ; preds = %bb.l, %bb.k, %bb.n, %bb.m, %bb.j
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %.018.i.i.i, %bb.m ], [ %i.cd, %bb.j ], [ 1, %bb.k ], [ %i.ci, %bb.l ]
  store i32 %.1.i.i.i, ptr %0, align 4, !tbaa !19
  %i.cl = icmp slt i32 %i.bl, 1
  br i1 %i.cl, label %bb.o, label %decNumberFromInt32.exit.thread

bb.o:                                             ; preds = %decNumberFromUInt32.exit.i
  store i8 -128, ptr %i.bp, align 4, !tbaa !17
  br label %decNumberFromInt32.exit.thread

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !18
end_hunk_4
begin_hunk_5_@decNaNs:bb.a
  br i1 %min.iters.check87, label %vec.epilog.ph105, label %vector.ph88

vector.ph88:                                      ; preds = %vector.main.loop.iter.check86
  %i.bz = and i64 %i.bx, 12
  %n.vec89 = and i64 %i.bx, -16                   ; 4 uses
  %i.ca = shl i64 %n.vec89, 1                     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bh, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bq, i64 %i.ca
  br label %vector.body90

vector.body90:                                    ; preds = %vector.ph88, %vector.body90
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 2 uses
  %i.cd = shl i64 %index91, 1                     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.bh, i64 %i.cd ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.bq, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <8 x i16>, ptr %next.gep93, align 2, !tbaa !21
  %wide.load95 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !21
  %i.cf = getelementptr i8, ptr %next.gep92, i64 16
  store <8 x i16> %wide.load94, ptr %next.gep92, align 2, !tbaa !21
  store <8 x i16> %wide.load95, ptr %i.cf, align 2, !tbaa !21
  %index.next96 = add nuw i64 %index91, 16        ; 2 uses
  %i.cg = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.cg, label %middle.block97, label %vector.body90, !llvm.loop !94

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.bx, %n.vec89
  br i1 %cmp.n98, label %._crit_edge, label %vec.epilog.iter.check103

vec.epilog.iter.check103:                         ; preds = %middle.block97
  %min.epilog.iters.check104 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check104, label %.lr.ph.preheader, label %vec.epilog.ph105, !prof !33

vec.epilog.ph105:                                 ; preds = %vector.main.loop.iter.check86, %vec.epilog.iter.check103
  %vec.epilog.resume.val99 = phi i64 [ %n.vec89, %vec.epilog.iter.check103 ], [ 0, %vector.main.loop.iter.check86 ]
  %n.vec106 = and i64 %i.bx, -4                   ; 3 uses
  %i.ch = shl i64 %n.vec106, 1                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bh, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.bq, i64 %i.ch
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph105
  %index108 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph105 ], [ %index.next112, %vec.epilog.vector.body107 ] ; 2 uses
  %i.ck = shl i64 %index108, 1                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bh, i64 %i.ck
  %next.gep110 = getelementptr i8, ptr %i.bq, i64 %i.ck
  %wide.load111 = load <4 x i16>, ptr %next.gep110, align 2, !tbaa !21
  store <4 x i16> %wide.load111, ptr %next.gep109, align 2, !tbaa !21
  %index.next112 = add nuw i64 %index108, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next112, %n.vec106
  br i1 %i.cl, label %vec.epilog.middle.block113, label %vec.epilog.vector.body107, !llvm.loop !95

vec.epilog.middle.block113:                       ; preds = %vec.epilog.vector.body107
  %cmp.n114 = icmp eq i64 %i.bx, %n.vec106
  br i1 %cmp.n114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check101, %vec.epilog.iter.check103, %vec.epilog.middle.block113
  %.053.ph = phi ptr [ %i.bh, %iter.check101 ], [ %i.cb, %vec.epilog.iter.check103 ], [ %i.ci, %vec.epilog.middle.block113 ]
  %.03952.ph = phi ptr [ %i.bq, %iter.check101 ], [ %i.cc, %vec.epilog.iter.check103 ], [ %i.cj, %vec.epilog.middle.block113 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.053 = phi ptr [ %i.cn, %.lr.ph ], [ %.053.ph, %.lr.ph.preheader ] ; 2 uses
  %.03952 = phi ptr [ %i.co, %.lr.ph ], [ %.03952.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cm = load i16, ptr %.03952, align 2, !tbaa !21
  store i16 %i.cm, ptr %.053, align 2, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.053, i64 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.03952, i64 2
  %i.cp = icmp ult ptr %i.cn, %i.bp
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block113, %middle.block97
  br i1 %i.bi, label %._crit_edge.thread, label %bb.n

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.cq = sext i32 %i.r to i64
  %i.cr = getelementptr inbounds i8, ptr @d2utable, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !24
  %i.ct = zext i8 %i.cs to i32
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.cu = add nuw nsw i32 %i.r, 2
  %i.cv = udiv i32 %i.cu, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.thread
  %i.cw = phi i32 [ %i.ct, %._crit_edge.thread ], [ %i.cv, %bb.n ]
  %i.cx = mul nuw nsw i32 %i.cw, 3                ; 2 uses
  store i32 %i.cx, ptr %0, align 4, !tbaa !19
  %i.cy = icmp sgt i32 %i.cx, %i.r
  br i1 %i.cy, label %bb.p, label %decNumberCopy.exit

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp sgt i32 %i.r, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i16 0, ptr %i.bh, align 2, !tbaa !21
  br label %decDecap.exit

bb.r:                                             ; preds = %bb.p
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = zext nneg i32 %i.r to i64
  %i.da = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !24  ; 2 uses
  %i.dc = zext i8 %i.db to i32
  %i.dd = zext i8 %i.db to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.de = add nuw nsw i32 %i.r, 2
  %i.df = udiv i32 %i.de, 3                       ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn35.i = phi i64 [ %i.dd, %bb.s ], [ %i.dg, %bb.t ]
  %i.dh = phi i32 [ %i.dc, %bb.s ], [ %i.df, %bb.t ] ; 3 uses
  %.neg.i = mul nsw i32 %i.dh, -3
  %.neg33.i = add nuw i32 %i.r, 3
  %i.di = add i32 %.neg33.i, %.neg.i              ; 2 uses
  %.not34.i = icmp eq i32 %i.di, 3
  br i1 %.not34.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.pn.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn35.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23
  %i.dn = load i16, ptr %i.dj, align 2, !tbaa !21
  %i.do = zext i16 %i.dn to i32
  %i.dp = urem i32 %i.do, %i.dm
  %i.dq = trunc nuw i32 %i.dp to i16
  store i16 %i.dq, ptr %i.dj, align 2, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dr = add nsw i32 %i.dh, -1                   ; 2 uses
  %i.ds = mul nsw i32 %i.dr, 3
  %i.dt = add nsw i32 %i.ds, 1                    ; 2 uses
  %.not16.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not16.i.i, label %decDecap.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %i.du = zext nneg i32 %i.dr to i64
  %.idx.i.i = shl nuw nsw i64 %i.du, 1
  %.add.i = add nuw nsw i64 %.idx.i.i, 10
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.preheader.i.i
  %.018.i.i = phi i32 [ %i.dy, %bb.y ], [ %i.dt, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01317.i.idx.i = phi i64 [ %.01317.i.add.i, %bb.y ], [ %.add.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01317.i.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.01317.i.idx.i
  %i.dv = load i16, ptr %.01317.i.ptr.i, align 2, !tbaa !21 ; 3 uses
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.dx = icmp eq i32 %.018.i.i, 1
  br i1 %i.dx, label %decDecap.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = add nsw i32 %.018.i.i, -3               ; 2 uses
  %.01317.i.add.i = add nsw i64 %.01317.i.idx.i, -2
  %.not.i.i = icmp slt i64 %.01317.i.idx.i, 11
  br i1 %.not.i.i, label %decDecap.exit, label %.lr.ph.i.i, !llvm.loop !1

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dz = icmp ult i16 %i.dv, 10
  br i1 %i.dz, label %decDecap.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = icmp ult i16 %i.dv, 100
  %spec.select.v.i.i = select i1 %i.ea, i32 1, i32 2
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %.018.i.i
  br label %decDecap.exit

decDecap.exit:                                    ; preds = %bb.x, %bb.y, %bb.q, %bb.w, %bb.z, %bb.aa
  %storemerge.i = phi i32 [ 1, %bb.q ], [ %spec.select.i.i, %bb.aa ], [ %.018.i.i, %bb.z ], [ %i.dt, %bb.w ], [ %i.dy, %bb.y ], [ 1, %bb.x ]
  store i32 %storemerge.i, ptr %0, align 4, !tbaa !19
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge, %bb.i, %bb.o, %decDecap.exit
  %i.eb = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.p, %decDecap.exit ], [ %i.p, %bb.i ], [ %i.p, %bb.o ], [ %i.p, %middle.block ], [ %i.p, %vec.epilog.middle.block ], [ %i.p, %.lr.ph.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = and i8 %i.eb, -49
  %i.ee = or disjoint i8 %i.ed, 32
  store i8 %i.ee, ptr %i.ec, align 4, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ef, align 4, !tbaa !18
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberCopyAbs(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.decNumberCopy.exit_crit_edge, label %bb.b

.decNumberCopy.exit_crit_edge:                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %decNumberCopy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17    ; 4 uses
  %i.f = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.g = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.f, ptr %0, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.i, ptr %i.j, align 2, !tbaa !21
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %bb.c, label %decNumberCopy.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.m = icmp samesign ult i32 %i.g, 50
  br i1 %i.m, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 2
  %i.o = udiv i32 %i.n, 3
  br label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.g to i64
  %i.q = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.d, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.o, %.thread.i ], [ %i.s, %bb.d ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx35.pn.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.v = add i64 %i.b, %.idx35.pn.i
  %i.w = add i64 %i.v, 10
  %i.x = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.x)
  %i.y = add i64 %umax, -13
  %i.z = sub i64 %i.y, %i.b                       ; 3 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw i64 %i.aa, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 6
  %i.ac = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.z, 30
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, -16                     ; 4 uses
  %i.ae = shl i64 %n.vec, 1                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ah ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep7, align 2, !tbaa !21
  %wide.load8 = load <8 x i16>, ptr %i.ai, align 2, !tbaa !21
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load8, ptr %i.aj, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %decNumberCopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.ab, -4                    ; 3 uses
  %i.al = shl i64 %n.vec10, 1                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.u, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = shl i64 %index11, 1                     ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %i.ao
  %next.gep13 = getelementptr i8, ptr %i.u, i64 %i.ao
  %wide.load14 = load <4 x i16>, ptr %next.gep13, align 2, !tbaa !21
  store <4 x i16> %wide.load14, ptr %next.gep12, align 2, !tbaa !21
  %index.next15 = add nuw i64 %index11, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.ab, %n.vec10
  br i1 %cmp.n16, label %decNumberCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.aq, ptr %.032.i, align 2, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.at = icmp ult ptr %i.ar, %i.t
  br i1 %i.at, label %.lr.ph.i, label %decNumberCopy.exit, !llvm.loop !99

decNumberCopy.exit:                               ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge, %bb.b
  %i.au = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.e, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = and i8 %i.au, 127
  store i8 %i.aw, ptr %i.av, align 4, !tbaa !17
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberPlus(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  store i32 %i.f, ptr %i.c, align 4, !tbaa !18
  %i.g = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, 221
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 1073741824
  %.not6.i = icmp eq i32 %i.j, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !21
  store i8 32, ptr %i.l, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.b ]
  %i.o = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberLog10(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca [3 x %struct.decNumber], align 16   ; 3 uses
  %4 = alloca [3 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [2 x %struct.decNumber], align 16   ; 14 uses
  %6 = alloca %struct.decContext, align 4         ; 14 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.e = load i32, ptr %2, align 4, !tbaa !27
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread100.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = icmp sgt i32 %i.h, 999999
  br i1 %i.i, label %.thread100.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = icmp slt i32 %i.k, -999999
  br i1 %i.l, label %.thread100.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !19     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 999999
  br i1 %i.n, label %.thread100.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18
  %i.q = add i32 %i.m, -1000001
  %i.r = add i32 %i.q, %i.p
  %or.cond.i = icmp ult i32 %i.r, -2999997
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = icmp eq i16 %i.t, 0
  %i.v = icmp eq i32 %i.m, 1
  %or.cond16.i = and i1 %i.v, %i.u
  br i1 %or.cond16.i, label %bb.g, label %.thread100.thread

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_5
begin_hunk_6_@decSetMaxValue:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i32 [ %i.w, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %.01314 = phi ptr [ %i.x, %.lr.ph ], [ %.01314.ph, %.lr.ph.preheader ] ; 2 uses
  store i16 999, ptr %.01314, align 2, !tbaa !21
  %i.w = add nsw i32 %.015, -3                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01314, i64 2 ; 2 uses
  %i.y = icmp samesign ugt i32 %.015, 6
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.x, %.lr.ph ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.w, %.lr.ph ]
  %i.z = sext i32 %.0.lcssa to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = add i16 %i.ac, -1
  store i16 %i.ad, ptr %.013.lcssa, align 2, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ag, %i.a
  %i.ah = add i32 %reass.sub, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberNextPlus(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp ugt i8 %i.c, -65
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !27     ; 8 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.g = icmp sgt i32 %i.e, 3
  br i1 %i.g, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %bb.b
  %i.h = add nsw i32 %i.e, -4                     ; 3 uses
  %i.i = udiv i32 %i.h, 3
  %narrow = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow to i64             ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i32 %i.h, 45
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 2147483632               ; 5 uses
  %i.l = trunc nuw nsw i64 %n.vec to i32
  %i.m = mul i32 %i.l, -3
  %i.n = add i32 %i.e, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  %i.p = getelementptr i8, ptr %i.f, i64 %i.o     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.r, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.j, 2147483644             ; 4 uses
  %i.t = trunc nuw nsw i64 %n.vec19 to i32
  %i.u = mul i32 %i.t, -3
  %i.v = add i32 %i.e, %i.u                       ; 2 uses
  %i.w = shl nuw nsw i64 %n.vec19, 1
  %i.x = getelementptr i8, ptr %i.f, i64 %i.w     ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %i.y = shl i64 %index20, 1
  %next.gep21 = getelementptr i8, ptr %i.f, i64 %i.y
  store <4 x i16> splat (i16 999), ptr %next.gep21, align 2, !tbaa !21
  %index.next22 = add nuw i64 %index20, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next22, %n.vec19
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %n.vec19, %i.j
  br i1 %cmp.n23, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.e, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.aa = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.ac = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.ac, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !108

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.013.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.x, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.ab, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.v, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.ad = sext i32 %.0.lcssa.i to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = trunc i32 %i.af to i16
  %i.ah = add i16 %i.ag, -1
  store i16 %i.ah, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ak, %i.e
  %i.al = add i32 %reass.sub, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !18
  store i8 -128, ptr %i.ai, align 4, !tbaa !17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.an, align 4, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.ap, align 2, !tbaa !21
  store i32 -1000000000, ptr %i.ao, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34
  %i.ar = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.at = and i32 %i.as, 1073741952               ; 3 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = and i32 %i.as, 128
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = and i32 %i.as, 1073741824
  %.not6.i = icmp eq i32 %i.av, 0
  br i1 %.not6.i, label %bb.f, label %decStatus.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ay, align 2, !tbaa !21
  store i8 32, ptr %i.aw, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.at, %bb.d ], [ %i.at, %bb.f ], [ 128, %bb.e ]
  %i.az = call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %decStatus.exit, %decSetMaxValue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberNextToward(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %4 = alloca %struct.decNumber, align 4          ; 7 uses
  %5 = alloca %struct.decContext, align 4         ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17
  %i.f = and i8 %i.e, 48
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %i.i = and i8 %i.h, 48
  %.not37 = icmp eq i8 %i.i, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.c) ; 0 uses
  br label %decNumberIsNormal.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = tail call fastcc i32 @decCompare(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) ; 2 uses
  switch i32 %i.k, label %bb.i [
    i32 -2147483648, label %.thread50
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.g, align 4, !tbaa !17
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.decNumberCopy.exit_crit_edge.i, label %bb.f

.decNumberCopy.exit_crit_edge.i:                  ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %decNumberCopySign.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.d, align 4, !tbaa !17    ; 4 uses
  %i.o = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.p = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.o, ptr %0, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !21
  %i.t = icmp sgt i32 %i.p, 3
  br i1 %i.t, label %bb.g, label %decNumberCopySign.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.v = icmp samesign ult i32 %i.p, 50
  br i1 %i.v, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.w = add nuw nsw i32 %i.p, 2
  %i.x = udiv i32 %i.w, 3
  br label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %.thread.i.i
  %.idx35.pn.in.in.i.i = phi i32 [ %i.x, %.thread.i.i ], [ %i.ab, %bb.h ]
  %.idx35.pn.in.i.i = shl nuw nsw i32 %.idx35.pn.in.in.i.i, 1
  %.idx35.pn.i.i = zext nneg i32 %.idx35.pn.in.i.i to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx35.pn.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ae = add i64 %i.b, %.idx35.pn.i.i
  %i.af = add i64 %i.ae, 10
  %i.ag = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = add i64 %umax, -13
  %i.ai = sub i64 %i.ah, %i.b                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = add nuw i64 %i.aj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ai, 6
  %i.al = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.ai, 30
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.an = shl i64 %n.vec, 1                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aq ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep56, align 2, !tbaa !21
  %wide.load57 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !21
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load57, ptr %i.as, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %decNumberCopySign.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.ak, -4                    ; 3 uses
  %i.au = shl i64 %n.vec59, 1                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = shl i64 %index60, 1                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.u, i64 %i.ax
  %next.gep62 = getelementptr i8, ptr %i.ad, i64 %i.ax
  %wide.load63 = load <4 x i16>, ptr %next.gep62, align 2, !tbaa !21
  store <4 x i16> %wide.load63, ptr %next.gep61, align 2, !tbaa !21
  %index.next64 = add nuw i64 %index60, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.ak, %n.vec59
  br i1 %cmp.n65, label %decNumberCopySign.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.02631.i.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.032.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.032.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02631.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.02631.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load i16, ptr %.02631.i.i, align 2, !tbaa !21
  store i16 %i.az, ptr %.032.i.i, align 2, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631.i.i, i64 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 2
  %i.bc = icmp ult ptr %i.ba, %i.ac
  br i1 %i.bc, label %.lr.ph.i.i, label %decNumberCopySign.exit, !llvm.loop !111

decNumberCopySign.exit:                           ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge.i, %bb.f
  %i.bd = phi i8 [ %.pre.i, %.decNumberCopy.exit_crit_edge.i ], [ %i.n, %bb.f ], [ %i.n, %middle.block ], [ %i.n, %vec.epilog.middle.block ], [ %i.n, %.lr.ph.i.i ]
  %i.be = and i8 %i.l, -128
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = and i8 %i.bd, 127
  %i.bh = or disjoint i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.bf, align 4, !tbaa !17
  br label %decNumberIsNormal.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.bi = icmp slt i32 %i.k, 0
  %i.bj = load i8, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp ugt i8 %i.bj, -65
  br i1 %i.bk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -128, ptr %i.bl, align 4, !tbaa !17
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.bm = and i8 %i.bj, -64
  %i.bn = icmp eq i8 %i.bm, 64
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %3)
  br label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sink = phi i32 [ 0, %bb.j ], [ 6, %bb.l ]
  %.033 = phi i8 [ 0, %bb.j ], [ -128, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sink, ptr %i.bo, align 4, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bp, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %4, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.br, align 2, !tbaa !21
  store i32 -1000000000, ptr %i.bq, align 4, !tbaa !18
  %i.bs = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %.033, ptr noundef %i.c) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !17
  %i.bv = and i8 %i.bu, 112
  %.not.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i, label %bb.o, label %decNumberIsNormal.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !21
  %i.by = icmp eq i16 %i.bx, 0
  %.pre.i40 = load i32, ptr %0, align 4, !tbaa !19 ; 2 uses
  %i.bz = icmp eq i32 %.pre.i40, 1
  %or.cond.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i, label %decNumberIsNormal.exit.thread, label %decNumberIsNormal.exit

decNumberIsNormal.exit:                           ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !18
  %i.cc = add nsw i32 %i.cb, %.pre.i40
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  %.not9.i.not = icmp sgt i32 %i.cc, %i.ce
  br i1 %.not9.i.not, label %.critedge, label %decNumberIsNormal.exit.thread

decNumberIsNormal.exit.thread:                    ; preds = %bb.n, %bb.o, %decNumberIsNormal.exit, %decNumberCopySign.exit, %bb.c
  %.pr = load i32, ptr %i.c, align 4, !tbaa !23   ; 6 uses
  %.not39 = icmp eq i32 %.pr, 0
  br i1 %.not39, label %.critedge, label %bb.p

bb.p:                                             ; preds = %decNumberIsNormal.exit.thread
  %i.cf = and i32 %.pr, 221
  %.not.i41 = icmp eq i32 %i.cf, 0
  br i1 %.not.i41, label %decStatus.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.cg, 0
  br i1 %.not6.i, label %.thread50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = and i32 %.pr, -1073741825
  br label %decStatus.exit

.thread50:                                        ; preds = %bb.d, %bb.q
  %i.ci = phi i32 [ %.pr, %bb.q ], [ 16, %bb.d ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cl, align 2, !tbaa !21
  store i8 32, ptr %i.cj, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.p, %bb.r, %.thread50
  %.0.i42 = phi i32 [ %i.ch, %bb.r ], [ %i.ci, %.thread50 ], [ %.pr, %bb.p ]
  %i.cm = call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef %.0.i42) #19 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %decNumberIsNormal.exit, %bb.k, %bb.m, %decNumberIsNormal.exit.thread, %decStatus.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @decCompare(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !21
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !17
  %i.h = and i8 %i.g, 112
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %not. = xor i1 %i.i, true
  %spec.select64 = zext i1 %not. to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not57 = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ] ; 4 uses
  %.048 = phi i32 [ 1, %bb.a ], [ %spec.select64, %bb.c ], [ 1, %bb.b ]
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !21
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %1, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 4, !tbaa !17    ; 2 uses
  %i.q = and i8 %i.p, 112
  %i.r = icmp eq i8 %i.q, 0                       ; 2 uses
  %brmerge = select i1 %i.r, i1 true, i1 %.not57
  %.048.mux = select i1 %i.r, i32 %.048, i32 -1
  br i1 %brmerge, label %bb.aa, label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %.not57, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i8, ptr %i.s, align 4, !tbaa !17
  %.not58 = icmp sgt i8 %i.t, -1
  %spec.select65 = select i1 %.not58, i32 1, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ 0, %bb.i ], [ %spec.select65, %bb.j ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !21
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %1, align 4, !tbaa !19
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !17   ; 2 uses
  %i.ab = and i8 %i.aa, 112
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !17  ; 2 uses
  %.not59 = icmp sgt i8 %i.ae, -1
  %spec.select66 = select i1 %.not59, i32 1, i32 -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = phi i8 [ %i.ae, %bb.n ], [ %i.aa, %bb.m ]
  %.047 = phi i32 [ %spec.select66, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ag = icmp sgt i32 %.1, %.047
  br i1 %i.ag, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp slt i32 %.1, %.047                 ; 2 uses
  %brmerge68 = select i1 %i.ah, i1 true, i1 %.not57
  %.mux = sext i1 %i.ah to i32
  br i1 %brmerge68, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p, %bb.g
  %i.ai = phi i8 [ %.pre, %._crit_edge ], [ %i.af, %bb.p ], [ %i.p, %bb.g ]
  %.2 = phi i32 [ 1, %._crit_edge ], [ %.1, %bb.p ], [ 1, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !17
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = zext i8 %i.ai to i32                    ; 2 uses
  %i.an = or i32 %i.am, %i.al
  %i.ao = and i32 %i.an, 64
  %.not60 = icmp eq i32 %i.ao, 0
  br i1 %.not60, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = and i32 %i.am, 64
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = and i32 %i.al, 64
  %.not63 = icmp eq i32 %i.aq, 0
  %i.ar = sub nsw i32 0, %.2
  %spec.select69 = select i1 %.not63, i32 %i.ar, i32 0
  br label %bb.aa

bb.t:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = icmp sgt i32 %i.at, %i.av               ; 3 uses
  %i.ax = sub nsw i32 0, %.2
  %.050 = select i1 %i.aw, ptr %0, ptr %1         ; 3 uses
  %.049 = select i1 %i.aw, ptr %1, ptr %0         ; 3 uses
  %.4 = select i1 %i.aw, i32 %i.ax, i32 %.2
  %i.ay = getelementptr inbounds nuw i8, ptr %.049, i64 10
  %i.az = load i32, ptr %.049, align 4, !tbaa !19 ; 3 uses
  %i.ba = icmp slt i32 %i.az, 50
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr @d2utable, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bf = add nuw nsw i32 %i.az, 2
  %i.bg = udiv i32 %i.bf, 3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = phi i32 [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.050, i64 10
  %i.bj = load i32, ptr %.050, align 4, !tbaa !19 ; 3 uses
  %i.bk = icmp slt i32 %i.bj, 50
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds i8, ptr @d2utable, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !24
  %i.bo = zext i8 %i.bn to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bp = add nuw nsw i32 %i.bj, 2
  %i.bq = udiv i32 %i.bp, 3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = phi i32 [ %i.bo, %bb.x ], [ %i.bq, %bb.y ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = sub nsw i32 %i.bt, %i.bv
  %i.bx = tail call fastcc i32 @decUnitCompare(ptr noundef nonnull %i.ay, i32 noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.br, i32 noundef %i.bw) ; 2 uses
  %.not61 = icmp eq i32 %i.bx, -2147483648
  %i.by = mul nsw i32 %i.bx, %.4
  %spec.select67 = select i1 %.not61, i32 -2147483648, i32 %i.by
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.p, %bb.g, %bb.r, %bb.o, %bb.h, %bb.z
  %.0 = phi i32 [ %.mux, %bb.p ], [ %.048.mux, %bb.g ], [ %spec.select69, %bb.s ], [ %spec.select67, %bb.z ], [ -1, %bb.h ], [ 1, %bb.o ], [ %.2, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberCopySign(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !17
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %.decNumberCopy.exit_crit_edge, label %bb.b

.decNumberCopy.exit_crit_edge:                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %decNumberCopy.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !17    ; 4 uses
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.i = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.h, ptr %0, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.k, ptr %i.l, align 2, !tbaa !21
  %i.m = icmp sgt i32 %i.i, 3
  br i1 %i.m, label %bb.c, label %decNumberCopy.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.o = icmp samesign ult i32 %i.i, 50
  br i1 %i.o, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.i, 2
  %i.q = udiv i32 %i.p, 3
  br label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.r = zext nneg i32 %i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.d, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.q, %.thread.i ], [ %i.u, %bb.d ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx35.pn.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.x = add i64 %i.b, %.idx35.pn.i
  %i.y = add i64 %i.x, 10
  %i.z = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = add i64 %umax, -13
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 6
  %i.ae = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.ab, 30
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  %i.ag = shl i64 %n.vec, 1                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.aj ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep9, align 2, !tbaa !21
  %wide.load10 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !21
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load10, ptr %i.al, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %decNumberCopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.ad, -4                    ; 3 uses
  %i.an = shl i64 %n.vec12, 1                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.n, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.w, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index13, 1                     ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.n, i64 %i.aq
  %next.gep15 = getelementptr i8, ptr %i.w, i64 %i.aq
  %wide.load16 = load <4 x i16>, ptr %next.gep15, align 2, !tbaa !21
  store <4 x i16> %wide.load16, ptr %next.gep14, align 2, !tbaa !21
  %index.next17 = add nuw i64 %index13, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.ad, %n.vec12
  br i1 %cmp.n18, label %decNumberCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.as = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.as, ptr %.032.i, align 2, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.av = icmp ult ptr %i.at, %i.v
  br i1 %i.av, label %.lr.ph.i, label %decNumberCopy.exit, !llvm.loop !114

decNumberCopy.exit:                               ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge, %bb.b
  %i.aw = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.g, %bb.b ], [ %i.g, %middle.block ], [ %i.g, %vec.epilog.middle.block ], [ %i.g, %.lr.ph.i ]
  %i.ax = and i8 %i.d, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = and i8 %i.aw, 127
  %i.ba = or disjoint i8 %i.az, %i.ax
  store i8 %i.ba, ptr %i.ay, align 4, !tbaa !17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @decNumberIsNormal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17
  %i.c = and i8 %i.b, 112
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = icmp eq i16 %i.e, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.g = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = add nsw i32 %.pre, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.not9 = icmp sgt i32 %i.j, %i.l
  %. = zext i1 %.not9 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberOr(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !17
  %or.cond = icmp ult i8 %i.d, 16
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %.not93 = icmp eq i32 %i.f, 0
  br i1 %.not93, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %or.cond100 = icmp ult i8 %i.h, 16
  br i1 %or.cond100, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.k, align 2, !tbaa !21
  store i8 32, ptr %i.i, align 4, !tbaa !17
  %i.l = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef 128) #19 ; 0 uses
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !19     ; 3 uses
  %i.q = icmp slt i32 %i.p, 50
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr @d2utable, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %i.p, 2
  %i.w = udiv i32 %i.v, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi i32 [ %i.u, %bb.g ], [ %i.w, %bb.h ]
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -2
  %i.ab = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 50
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr @d2utable, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %i.ag = zext i8 %i.af to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = add nuw nsw i32 %i.ab, 2
  %i.ai = udiv i32 %i.ah, 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ag, %bb.j ], [ %i.ai, %bb.k ]
end_hunk_6
begin_hunk_7_@decGetInt:bb.a
  %i.d = add nsw i32 %i.c, %i.a                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !21   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = icmp eq i32 %i.a, 1
  %or.cond89 = select i1 %i.i, i1 %i.j, i1 false
  %i.k = and i8 %i.f, 112
  %i.l = icmp eq i8 %i.k, 0
  %or.cond91 = select i1 %or.cond89, i1 %i.l, i1 false
  br i1 %or.cond91, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.c, -1
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sub nsw i32 0, %i.c                      ; 3 uses
  %i.o = icmp samesign ugt i32 %i.n, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0126 = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.064125 = phi ptr [ %i.r, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = load i16, ptr %.064125, align 2, !tbaa !21
  %.not85 = icmp eq i16 %i.p, 0
  br i1 %.not85, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.q = add nsw i32 %.0126, -3                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.064125, i64 2 ; 4 uses
  %i.s = icmp sgt i32 %.0126, 5
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.d
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %._crit_edge..thread_crit_edge, label %._crit_edge.thread

._crit_edge..thread_crit_edge:                    ; preds = %._crit_edge
  %.pre = load i16, ptr %i.r, align 2, !tbaa !21
  br label %.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.0.lcssa147 = phi i32 [ %i.q, %._crit_edge ], [ %i.n, %bb.c ] ; 3 uses
  %.064.lcssa146 = phi ptr [ %i.r, %._crit_edge ], [ %i.g, %bb.c ] ; 2 uses
  %i.u = load i16, ptr %.064.lcssa146, align 2, !tbaa !21
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = lshr i32 %i.v, %.0.lcssa147
  %i.x = zext nneg i32 %.0.lcssa147 to i64        ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = mul i32 %i.w, %i.z
  %i.ab = lshr i32 %i.aa, 17                      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.x
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = mul i32 %i.ab, %i.ad
  %.not = icmp eq i32 %i.ae, %i.v
  %i.af = sub nuw nsw i32 3, %.0.lcssa147
  %i.ag = getelementptr inbounds nuw i8, ptr %.064.lcssa146, i64 2
  br i1 %.not, label %.thread99, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.ah = icmp eq i32 %i.c, 0
  br i1 %i.ah, label %.thread, label %.thread99

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %bb.e
  %i.ai = phi i16 [ %i.h, %bb.e ], [ %.pre, %._crit_edge..thread_crit_edge ]
  %.46898 = phi ptr [ %i.g, %bb.e ], [ %i.r, %._crit_edge..thread_crit_edge ]
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.46898, i64 2
  br label %.thread99

.thread99:                                        ; preds = %._crit_edge.thread, %.thread, %bb.e
  %.373 = phi i32 [ %i.aj, %.thread ], [ 0, %bb.e ], [ %i.ab, %._crit_edge.thread ] ; 3 uses
  %.569 = phi ptr [ %i.ak, %.thread ], [ %i.g, %bb.e ], [ %i.ag, %._crit_edge.thread ] ; 2 uses
  %.4 = phi i32 [ 3, %.thread ], [ %i.c, %bb.e ], [ %i.af, %._crit_edge.thread ] ; 3 uses
  %i.al = icmp slt i32 %i.d, 11
  br i1 %i.al, label %.preheader, label %.thread110

.preheader:                                       ; preds = %.thread99
  %i.am = icmp slt i32 %.4, %i.d
  br i1 %i.am, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.an = zext nneg i32 %.4 to i64
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv = phi i64 [ %i.an, %.lr.ph131.preheader ], [ %indvars.iv.next, %.lr.ph131 ] ; 2 uses
  %.6129 = phi ptr [ %.569, %.lr.ph131.preheader ], [ %i.au, %.lr.ph131 ] ; 2 uses
  %.474128 = phi i32 [ %.373, %.lr.ph131.preheader ], [ %i.at, %.lr.ph131 ]
  %i.ao = load i16, ptr %.6129, align 2, !tbaa !21
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23
  %i.as = mul i32 %i.ar, %i.ap
  %i.at = add i32 %i.as, %.474128                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.6129, i64 2 ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.aw = icmp sgt i32 %i.d, %i.av
  br i1 %i.aw, label %.lr.ph131, label %._crit_edge132, !llvm.loop !120

._crit_edge132:                                   ; preds = %.lr.ph131, %.preheader
  %.474.lcssa = phi i32 [ %.373, %.preheader ], [ %i.at, %.lr.ph131 ] ; 5 uses
  %.6.lcssa = phi ptr [ %.569, %.preheader ], [ %i.au, %.lr.ph131 ]
  %.5.lcssa = phi i32 [ %.4, %.preheader ], [ %i.av, %.lr.ph131 ]
  %i.ax = icmp eq i32 %i.d, 10
  br i1 %i.ax, label %bb.f, label %.thread115

bb.f:                                             ; preds = %._crit_edge132
  %i.ay = zext nneg i32 %.5.lcssa to i64
  %i.az = getelementptr [4 x i8], ptr @DECPOWERS, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bc = sdiv i32 %.474.lcssa, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %.6.lcssa, i64 -2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !21
  %i.bf = zext i16 %i.be to i32
  %.not86 = icmp eq i32 %i.bc, %i.bf
  br i1 %.not86, label %bb.g, label %.thread110

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp slt i8 %i.f, 0
  %i.bh = icmp sgt i32 %.474.lcssa, 1999999997
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %.thread110, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i8 %i.f, -1
  %i.bj = icmp sgt i32 %.474.lcssa, 999999999
  %or.cond4 = select i1 %i.bi, i1 %i.bj, i1 false
  %cond.fr103 = freeze i1 %or.cond4
  br i1 %cond.fr103, label %.thread110, label %.thread115

.thread110:                                       ; preds = %bb.h, %bb.f, %bb.g, %.thread99
  %i.bk = and i32 %.373, 1
  %. = or disjoint i32 %i.bk, -2147483646
  br label %.critedge

.thread115:                                       ; preds = %._crit_edge132, %bb.h
  %i.bl = sub nsw i32 0, %.474.lcssa
  %.not87122 = icmp slt i8 %i.f, 0
  %spec.select94 = select i1 %.not87122, i32 %i.bl, i32 %.474.lcssa
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %._crit_edge.thread, %.thread110, %bb.a, %.thread115
  %.380 = phi i32 [ %spec.select94, %.thread115 ], [ %., %.thread110 ], [ 0, %bb.a ], [ -2147483648, %._crit_edge.thread ], [ -2147483648, %.lr.ph ]
  ret i32 %.380
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberQuantize(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @decQuantizeOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 0, 2) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %struct.decContext, align 4         ; 7 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !27     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %reass.sub = sub i32 %i.f, %i.d
  %i.g = add i32 %reass.sub, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !17    ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i8, ptr %i.k, align 4, !tbaa !17
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = or i32 %i.m, %i.j                        ; 2 uses
  %i.o = and i32 %i.n, 112
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.n, 48
  %.not90 = icmp eq i32 %i.p, 0
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) ; 0 uses
  br label %decNumberCopy.exit

bb.d:                                             ; preds = %bb.b
  %i.r = xor i32 %i.m, %i.j
  %i.s = and i32 %i.r, 64
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %5, align 4, !tbaa !23
  %i.u = or i32 %i.t, 128
  store i32 %i.u, ptr %5, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq ptr %0, %1
  br i1 %i.v, label %decNumberCopy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.w, align 4, !tbaa !17
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.y = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.x, ptr %0, align 4, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !21
  %i.ac = icmp sgt i32 %i.y, 3
  br i1 %i.ac, label %bb.h, label %decNumberCopy.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.ae = icmp samesign ult i32 %i.y, 50
  br i1 %i.ae, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.af = add nuw nsw i32 %i.y, 2
  %i.ag = udiv i32 %i.af, 3
  br label %iter.check

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.i, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.ag, %.thread.i ], [ %i.ak, %bb.i ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx35.pn.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.an = add i64 %i.b, %.idx35.pn.i
  %i.ao = add i64 %i.an, 10
  %i.ap = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ap)
  %i.aq = add i64 %umax, -13
  %i.ar = sub i64 %i.aq, %i.b                     ; 3 uses
  %i.as = lshr i64 %i.ar, 1
  %i.at = add nuw i64 %i.as, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ar, 6
  %i.au = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond121 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond121, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.ar, 30
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.at, 12
  %n.vec = and i64 %i.at, -16                     ; 4 uses
  %i.aw = shl i64 %n.vec, 1                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ad, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.az ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep109, align 2, !tbaa !21
  %wide.load110 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !21
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load110, ptr %i.bb, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %decNumberCopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %i.at, -4                   ; 3 uses
  %i.bd = shl i64 %n.vec112, 1                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.ad, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.am, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index113, 1                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.ad, i64 %i.bg
  %next.gep115 = getelementptr i8, ptr %i.am, i64 %i.bg
  %wide.load116 = load <4 x i16>, ptr %next.gep115, align 2, !tbaa !21
  store <4 x i16> %wide.load116, ptr %next.gep114, align 2, !tbaa !21
  %index.next117 = add nuw i64 %index113, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.at, %n.vec112
  br i1 %cmp.n118, label %decNumberCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bi = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.bi, ptr %.032.i, align 2, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.bl = icmp ult ptr %i.bj, %i.al
  br i1 %i.bl, label %.lr.ph.i, label %decNumberCopy.exit, !llvm.loop !123

bb.j:                                             ; preds = %bb.a
  %.not89 = icmp eq i8 %4, 0
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bo = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.083 = phi i32 [ %i.bn, %bb.k ], [ %i.bo, %bb.l ] ; 7 uses
  switch i32 %.083, label %bb.n [
    i32 -2147483645, label %bb.p
    i32 -2147483646, label %bb.p
    i32 -2147483648, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp slt i32 %.083, %i.g
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = icmp sgt i32 %.083, %i.br
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.o, %bb.n
  %i.bt = load i32, ptr %5, align 4, !tbaa !23
  %i.bu = or i32 %i.bt, 128
  store i32 %i.bu, ptr %5, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !21
  %i.bx = icmp eq i16 %i.bw, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i32 %.pre, 1
  %i.bz = and i8 %i.i, 112
  %i.ca = icmp eq i8 %i.bz, 0
  %or.cond = and i1 %i.ca, %i.by
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.083, ptr %i.cc, align 4, !tbaa !18
  br label %.thread95

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !18 ; 2 uses
  %i.cf = sub nsw i32 %.083, %i.ce                ; 5 uses
  %i.cg = sub nsw i32 %.pre, %i.cf                ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, %i.d
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load i32, ptr %5, align 4, !tbaa !23
  %i.cj = or i32 %i.ci, 128
  store i32 %i.cj, ptr %5, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.v:                                             ; preds = %bb.t
  %i.ck = icmp sgt i32 %i.cf, 0
  br i1 %i.ck, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !35
  store i32 %i.cg, ptr %6, align 4, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.cl, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %i.ce, ptr %i.cm, align 4, !tbaa !18
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.bv, i32 noundef %.pre, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  %i.cn = load i32, ptr %i.c, align 4, !tbaa !23
  call fastcc void @decApplyRound(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %i.cn, ptr noundef %5)
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !18 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, %.083
  br i1 %i.cp, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cq = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.d
  br i1 %i.cr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ct = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.cs, i32 noundef %i.cq, i32 noundef 1)
  store i32 %i.ct, ptr %0, align 4, !tbaa !19
  %i.cu = load i32, ptr %i.cm, align 4, !tbaa !18
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.w
  %i.cw = phi i32 [ %i.cv, %bb.y ], [ %i.co, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.thread95

bb.z:                                             ; preds = %bb.x
  %i.cx = load i32, ptr %5, align 4, !tbaa !23
  %i.cy = and i32 %i.cx, -2209
  %i.cz = or disjoint i32 %i.cy, 128
  store i32 %i.cz, ptr %5, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %decNumberCopy.exit

bb.aa:                                            ; preds = %bb.v
  %i.da = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.db = icmp slt i32 %i.cf, 0
  br i1 %i.db, label %bb.ab, label %..thread95_crit_edge

end_hunk_7
begin_hunk_8_@decNumberSquareRoot:bb.a
  %i.mm = phi i32 [ %i.ml, %bb.bt ], [ %i.kq, %bb.bb ] ; 3 uses
  %i.mn = and i32 %i.mm, 8192
  %.not226 = icmp eq i32 %i.mn, 0
  br i1 %.not226, label %bb.bw, label %condstore.split

condstore.split:                                  ; preds = %bb.bu
  %i.mo = load i32, ptr %i.be, align 4, !tbaa !18
  %i.mp = load i32, ptr %1, align 4, !tbaa !19
  %i.mq = add nsw i32 %i.mp, %i.mo
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !29
  %i.mt = shl nsw i32 %i.ms, 1
  %.not227.not = icmp sgt i32 %i.mq, %i.mt        ; 2 uses
  %i.mu = and i32 %i.mm, -12289
  %i.mv = select i1 %.not227.not, i32 %i.mu, i32 %i.mm ; 3 uses
  %i.mw = and i32 %i.mv, 32
  %.not228 = icmp eq i32 %i.mw, 0                 ; 2 uses
  %i.mx = or i1 %.not227.not, %.not228
  br i1 %i.mx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %condstore.split
  %i.my = and i32 %i.mv, -8225
  %simplifycfg.merge = select i1 %.not228, i32 %i.my, i32 %i.mv
  store i32 %simplifycfg.merge, ptr %i.d, align 4, !tbaa !23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %condstore.split, %bb.bu
  %i.mz = icmp eq ptr %0, %.0191
  br i1 %i.mz, label %decNumberCopy.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.na = load i8, ptr %i.eb, align 4, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.na, ptr %i.nb, align 4, !tbaa !17
  %i.nc = load <2 x i32>, ptr %.0191, align 4, !tbaa !23
  %i.nd = load i32, ptr %.0191, align 4, !tbaa !19 ; 4 uses
  store <2 x i32> %i.nc, ptr %0, align 4, !tbaa !23
  %i.ne = load i16, ptr %i.ek, align 2, !tbaa !21
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !21
  %i.ng = icmp sgt i32 %i.nd, 3
  br i1 %i.ng, label %bb.by, label %decNumberCopy.exit

bb.by:                                            ; preds = %bb.bx
  %i.nh = getelementptr i8, ptr %0, i64 12
  %i.ni = icmp samesign ult i32 %i.nd, 50
  br i1 %i.ni, label %bb.bz, label %.thread.i279

.thread.i279:                                     ; preds = %bb.by
  %i.nj = add nuw nsw i32 %i.nd, 2
  %i.nk = udiv i32 %i.nj, 3
  br label %.lr.ph.preheader.i280

bb.bz:                                            ; preds = %bb.by
  %i.nl = zext nneg i32 %i.nd to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !24
  %i.no = zext i8 %i.nn to i32
  br label %.lr.ph.preheader.i280

.lr.ph.preheader.i280:                            ; preds = %bb.bz, %.thread.i279
  %.idx35.pn.in.in.i281 = phi i32 [ %i.nk, %.thread.i279 ], [ %i.no, %bb.bz ]
  %.idx35.pn.in.i282 = shl nuw nsw i32 %.idx35.pn.in.in.i281, 1
  %.idx35.pn.i283 = zext nneg i32 %.idx35.pn.in.i282 to i64
  %i.np = getelementptr i8, ptr %.0191, i64 12
  %i.nq = add i64 %.0191317, %.idx35.pn.i283
  %i.nr = add i64 %i.nq, 10
  %i.ns = add i64 %.0191317, 14
  %umax320 = call i64 @llvm.umax.i64(i64 %i.nr, i64 %i.ns)
  %i.nt = add i64 %umax320, -13
  %i.nu = sub i64 %i.nt, %.0191317
  %i.nv = and i64 %i.nu, -2
  %i.nw = add i64 %i.nv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nh, ptr align 4 %i.np, i64 %i.nw, i1 false), !tbaa !21
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %.lr.ph.preheader.i256, %.lr.ph.preheader.i280, %bb.bx, %bb.bw, %bb.ac, %bb.ab, %bb.v
  %.1196 = phi ptr [ %.0195, %bb.bw ], [ %.0195, %.lr.ph.preheader.i280 ], [ %.0195, %bb.bx ], [ %i.cw, %bb.v ], [ %.0195, %bb.ab ], [ %.0195, %bb.ac ], [ %.0195, %.lr.ph.preheader.i256 ] ; 2 uses
  %.1194 = phi ptr [ %.0193, %bb.bw ], [ %.0193, %.lr.ph.preheader.i280 ], [ %.0193, %bb.bx ], [ %i.cx, %bb.v ], [ %.0193, %bb.ab ], [ %.0193, %bb.ac ], [ %.0193, %.lr.ph.preheader.i256 ] ; 2 uses
  %.not231 = icmp eq ptr %.0197, null
  br i1 %.not231, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %decNumberCopy.exit
  call void @free(ptr noundef nonnull %.0197) #19
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %decNumberCopy.exit
  %.not232 = icmp eq ptr %.1196, null
  br i1 %.not232, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef nonnull %.1196) #19
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not233 = icmp eq ptr %.1194, null
  br i1 %.not233, label %.thread304, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef nonnull %.1194) #19
  br label %.thread304

.thread304:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %decNumberCopy.exit245, %bb.h, %bb.ce, %bb.cd
  %.pr307 = load i32, ptr %i.d, align 4, !tbaa !23 ; 6 uses
  %.not234 = icmp eq i32 %.pr307, 0
  br i1 %.not234, label %bb.cg, label %.thread304.thread

.thread304.thread:                                ; preds = %.thread304
  %i.nx = and i32 %.pr307, 221
  %.not.i288 = icmp eq i32 %i.nx, 0
  br i1 %.not.i288, label %decStatus.exit, label %.thread304.thread.thread

.thread304.thread.thread:                         ; preds = %.thread304.thread
  %i.ny = and i32 %.pr307, 1073741824
  %.not6.i = icmp eq i32 %i.ny, 0
  br i1 %.not6.i, label %.thread304.thread.thread.thread, label %bb.cf

bb.cf:                                            ; preds = %.thread304.thread.thread
  %i.nz = and i32 %.pr307, -1073741825
  br label %decStatus.exit

.thread304.thread.thread.thread:                  ; preds = %bb.p, %bb.m, %bb.c, %.thread304.thread.thread
  %i.oa = phi i32 [ %.pr307, %.thread304.thread.thread ], [ 128, %bb.m ], [ 128, %bb.c ], [ 16, %bb.p ]
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.oc, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.od, align 2, !tbaa !21
  store i8 32, ptr %i.ob, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread304.thread, %bb.cf, %.thread304.thread.thread.thread
  %.0.i = phi i32 [ %i.nz, %bb.cf ], [ %i.oa, %.thread304.thread.thread.thread ], [ %.pr307, %.thread304.thread ]
  %i.oe = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %decStatus.exit, %.thread304
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberSubtract(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberToIntegralExact(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !17    ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %0, %1
  br i1 %i.j, label %decNumberCopy.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.k, align 4, !tbaa !17
  %i.l = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.m = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.l, ptr %0, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.o, ptr %i.p, align 2, !tbaa !21
  %i.q = icmp sgt i32 %i.m, 3
  br i1 %i.q, label %bb.e, label %decNumberCopy.exit29

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.s = icmp samesign ult i32 %i.m, 50
  br i1 %i.s, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.t = add nuw nsw i32 %i.m, 2
  %i.u = udiv i32 %i.t, 3
  br label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.v = zext nneg i32 %i.m to i64
  %i.w = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.u, %.thread.i ], [ %i.y, %bb.f ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx35.pn.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ab = add i64 %i.b, %.idx35.pn.i
  %i.ac = add i64 %i.ab, 10
  %i.ad = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.ad)
  %i.ae = add i64 %umax, -13
  %i.af = sub i64 %i.ae, %i.b                     ; 3 uses
  %i.ag = lshr i64 %i.af, 1
  %i.ah = add nuw i64 %i.ag, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 6
  %i.ai = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i64 %i.af, 30
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, -16                     ; 4 uses
  %i.ak = shl i64 %n.vec, 1                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.an ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep43, align 2, !tbaa !21
  %wide.load44 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !21
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load44, ptr %i.ap, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %decNumberCopy.exit29, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ah, -4                    ; 3 uses
  %i.ar = shl i64 %n.vec46, 1                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index47, 1                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.r, i64 %i.au
  %next.gep49 = getelementptr i8, ptr %i.aa, i64 %i.au
  %wide.load50 = load <4 x i16>, ptr %next.gep49, align 2, !tbaa !21
  store <4 x i16> %wide.load50, ptr %next.gep48, align 2, !tbaa !21
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !133

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ah, %n.vec46
  br i1 %cmp.n52, label %decNumberCopy.exit29, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.aw, ptr %.032.i, align 2, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.az = icmp ult ptr %i.ax, %i.z
  br i1 %i.az, label %.lr.ph.i, label %decNumberCopy.exit29, !llvm.loop !134

bb.g:                                             ; preds = %bb.b
  %i.ba = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %i.d) ; 0 uses
  %.pr.pre = load i32, ptr %i.d, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.h:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.be = icmp eq ptr %0, %1
  br i1 %i.be, label %decNumberCopy.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !18
  %i.bh = load i32, ptr %1, align 4, !tbaa !19    ; 5 uses
  store i32 %i.bh, ptr %0, align 4, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !21
  %i.bl = icmp sgt i32 %i.bh, 3
  br i1 %i.bl, label %bb.k, label %decNumberCopy.exit29

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.bn = icmp samesign ult i32 %i.bh, 50
  br i1 %i.bn, label %bb.l, label %.thread.i21

.thread.i21:                                      ; preds = %bb.k
  %i.bo = add nuw nsw i32 %i.bh, 2
  %i.bp = udiv i32 %i.bo, 3
  br label %iter.check74

bb.l:                                             ; preds = %bb.k
  %i.bq = zext nneg i32 %i.bh to i64
  %i.br = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = zext i8 %i.bs to i32
  br label %iter.check74

iter.check74:                                     ; preds = %bb.l, %.thread.i21
  %.idx35.pn.in.in.i23 = phi i32 [ %i.bp, %.thread.i21 ], [ %i.bt, %bb.l ]
  %.idx35.pn.in.i24 = shl nuw nsw i32 %.idx35.pn.in.in.i23, 1
  %.idx35.pn.i25 = zext nneg i32 %.idx35.pn.in.i24 to i64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx35.pn.i25
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.bw = add i64 %i.b, %.idx35.pn.i25
  %i.bx = add i64 %i.bw, 10
  %i.by = add i64 %i.b, 14
  %umax57 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.by)
  %i.bz = add i64 %umax57, -13
  %i.ca = sub i64 %i.bz, %i.b                     ; 3 uses
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add nuw i64 %i.cb, 1                    ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.ca, 6
  %i.cd = sub i64 %i.b, %i.a
  %diff.check56 = icmp ugt i64 %i.cd, -32
  %or.cond90 = or i1 %min.iters.check58, %diff.check56
  br i1 %or.cond90, label %.lr.ph.i26.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check74
  %min.iters.check60 = icmp ult i64 %i.ca, 30
  br i1 %min.iters.check60, label %vec.epilog.ph78, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ce = and i64 %i.cc, 12
  %n.vec62 = and i64 %i.cc, -16                   ; 4 uses
  %i.cf = shl i64 %n.vec62, 1                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bm, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cf
  br label %vector.body63

vector.body63:                                    ; preds = %vector.ph61, %vector.body63
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.ci = shl i64 %index64, 1                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.bv, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <8 x i16>, ptr %next.gep66, align 2, !tbaa !21
  %wide.load68 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !21
  %i.ck = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load67, ptr %next.gep65, align 2, !tbaa !21
  store <8 x i16> %wide.load68, ptr %i.ck, align 2, !tbaa !21
  %index.next69 = add nuw i64 %index64, 16        ; 2 uses
  %i.cl = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.cl, label %middle.block70, label %vector.body63, !llvm.loop !135

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.cc, %n.vec62
  br i1 %cmp.n71, label %decNumberCopy.exit29, label %vec.epilog.iter.check76

vec.epilog.iter.check76:                          ; preds = %middle.block70
  %min.epilog.iters.check77 = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check77, label %.lr.ph.i26.preheader, label %vec.epilog.ph78, !prof !33

vec.epilog.ph78:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check76
  %vec.epilog.resume.val72 = phi i64 [ %n.vec62, %vec.epilog.iter.check76 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec79 = and i64 %i.cc, -4                    ; 3 uses
  %i.cm = shl i64 %n.vec79, 1                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bm, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bv, i64 %i.cm
  br label %vec.epilog.vector.body80

vec.epilog.vector.body80:                         ; preds = %vec.epilog.vector.body80, %vec.epilog.ph78
  %index81 = phi i64 [ %vec.epilog.resume.val72, %vec.epilog.ph78 ], [ %index.next85, %vec.epilog.vector.body80 ] ; 2 uses
  %i.cp = shl i64 %index81, 1                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.bm, i64 %i.cp
  %next.gep83 = getelementptr i8, ptr %i.bv, i64 %i.cp
  %wide.load84 = load <4 x i16>, ptr %next.gep83, align 2, !tbaa !21
  store <4 x i16> %wide.load84, ptr %next.gep82, align 2, !tbaa !21
  %index.next85 = add nuw i64 %index81, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next85, %n.vec79
  br i1 %i.cq, label %vec.epilog.middle.block86, label %vec.epilog.vector.body80, !llvm.loop !136

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body80
  %cmp.n87 = icmp eq i64 %i.cc, %n.vec79
  br i1 %cmp.n87, label %decNumberCopy.exit29, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %iter.check74, %vec.epilog.iter.check76, %vec.epilog.middle.block86
  %.032.i27.ph = phi ptr [ %i.bm, %iter.check74 ], [ %i.cg, %vec.epilog.iter.check76 ], [ %i.cn, %vec.epilog.middle.block86 ]
  %.02631.i28.ph = phi ptr [ %i.bv, %iter.check74 ], [ %i.ch, %vec.epilog.iter.check76 ], [ %i.co, %vec.epilog.middle.block86 ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %.032.i27 = phi ptr [ %i.ct, %.lr.ph.i26 ], [ %.032.i27.ph, %.lr.ph.i26.preheader ] ; 2 uses
  %.02631.i28 = phi ptr [ %i.cs, %.lr.ph.i26 ], [ %.02631.i28.ph, %.lr.ph.i26.preheader ] ; 2 uses
  %i.cr = load i16, ptr %.02631.i28, align 2, !tbaa !21
  store i16 %i.cr, ptr %.032.i27, align 2, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %.02631.i28, i64 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.032.i27, i64 2
  %i.cu = icmp ult ptr %i.cs, %i.bu
  br i1 %i.cu, label %.lr.ph.i26, label %decNumberCopy.exit29, !llvm.loop !137

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  %i.cv = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.cv, ptr %4, align 4, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cw, align 4, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.cx, align 4, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !18
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 0, ptr %i.cz, align 2, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.da = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef %i.c) ; 0 uses
  %i.db = load i32, ptr %i.c, align 4, !tbaa !23  ; 6 uses
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %decNumberQuantize.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = and i32 %i.db, 221
  %.not.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i, label %decStatus.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = and i32 %i.db, 1073741824
  %.not6.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = and i32 %i.db, -1073741825
  br label %decStatus.exit.i

bb.q:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.dh, align 2, !tbaa !21
  store i8 32, ptr %i.df, align 4, !tbaa !17
  br label %decStatus.exit.i

decStatus.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.n
  %.0.i.i = phi i32 [ %i.de, %bb.p ], [ %i.db, %bb.q ], [ %i.db, %bb.n ]
  %i.di = call ptr @decContextSetStatus(ptr noundef nonnull %4, i32 noundef %.0.i.i) #19 ; 0 uses
  br label %decNumberQuantize.exit

decNumberQuantize.exit:                           ; preds = %bb.m, %decStatus.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !37
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %bb.g, %decNumberQuantize.exit
  %i.dl = phi i32 [ %i.dk, %decNumberQuantize.exit ], [ %.pr.pre, %bb.g ] ; 6 uses
  %.not20 = icmp eq i32 %i.dl, 0
  br i1 %.not20, label %decNumberCopy.exit29, label %bb.r

bb.r:                                             ; preds = %decNumberCopy.exit
  %i.dm = and i32 %i.dl, 221
  %.not.i30 = icmp eq i32 %i.dm, 0
  br i1 %.not.i30, label %decStatus.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = and i32 %i.dl, 1073741824
  %.not6.i = icmp eq i32 %i.dn, 0
  br i1 %.not6.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = and i32 %i.dl, -1073741825
  br label %decStatus.exit

bb.u:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dq, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.dr, align 2, !tbaa !21
  store i8 32, ptr %i.dp, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.r, %bb.t, %bb.u
  %.0.i = phi i32 [ %i.do, %bb.t ], [ %i.dl, %bb.u ], [ %i.dl, %bb.r ]
  %i.ds = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %decNumberCopy.exit29

decNumberCopy.exit29:                             ; preds = %.lr.ph.i, %.lr.ph.i26, %middle.block, %vec.epilog.middle.block, %middle.block70, %vec.epilog.middle.block86, %bb.c, %bb.d, %bb.j, %bb.i, %decNumberCopy.exit, %decStatus.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberToIntegralValue(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decContext, align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.b = call ptr @decNumberToIntegralExact(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = and i32 %i.d, 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = or i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberXor(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e
end_hunk_8
begin_hunk_9_@decNumberXor:bb.a
bb.y:                                             ; preds = %.preheader.split
  store i16 %i.bi, ptr %.077117, align 2, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.split
  %i.ct = phi i16 [ %i.bi, %bb.y ], [ 0, %.preheader.split ] ; 2 uses
  %.frozen = freeze <2 x i16> %i.bu               ; 2 uses
  %i.cu = udiv <2 x i16> %.frozen, splat (i16 10) ; 4 uses
  %i.cv = mul <2 x i16> %i.cu, splat (i16 10)
  %.decomposed = sub <2 x i16> %.frozen, %i.cv    ; 2 uses
  %shift146 = shufflevector <2 x i16> %.decomposed, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = or <2 x i16> %.decomposed, %shift146
  %i.cw = extractelement <2 x i16> %foldExtExtBinop147, i64 0
  %i.cx = icmp samesign ugt i16 %i.cw, 1
  br i1 %i.cx, label %.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %exitcond.not, label %.loopexit, label %.preheader.split.1

.preheader.split.1:                               ; preds = %bb.aa
  %shift143.1 = shufflevector <2 x i16> %i.cu, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144.1 = xor <2 x i16> %i.cu, %shift143.1
  %i.cy = extractelement <2 x i16> %foldExtExtBinop144.1, i64 0
  %i.cz = and i16 %i.cy, 1
  %.not99.1 = icmp eq i16 %i.cz, 0
  br i1 %.not99.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.1
  %i.da = add i16 %i.ct, %i.bk                    ; 2 uses
  store i16 %i.da, ptr %.077117, align 2, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader.split.1
  %i.db = phi i16 [ %i.da, %bb.ab ], [ %i.ct, %.preheader.split.1 ]
  %i.dc = urem <2 x i16> %i.cu, splat (i16 10)    ; 2 uses
  %shift146.1 = shufflevector <2 x i16> %i.dc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147.1 = or <2 x i16> %i.dc, %shift146.1
  %i.dd = extractelement <2 x i16> %foldExtExtBinop147.1, i64 0
  %i.de = icmp samesign ugt i16 %i.dd, 1
  br i1 %i.de, label %.split.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = udiv <2 x i16> %i.bu, splat (i16 100)   ; 3 uses
  br i1 %exitcond.not.1, label %.loopexit, label %.preheader.split.2

.preheader.split.2:                               ; preds = %bb.ad
  %shift143.2 = shufflevector <2 x i16> %i.df, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144.2 = xor <2 x i16> %i.df, %shift143.2
  %i.dg = extractelement <2 x i16> %foldExtExtBinop144.2, i64 0
  %i.dh = and i16 %i.dg, 1
  %.not99.2 = icmp eq i16 %i.dh, 0
  br i1 %.not99.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.split.2
  %i.di = add i16 %i.db, %i.bm
  store i16 %i.di, ptr %.077117, align 2, !tbaa !21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.split.2
  %i.dj = urem <2 x i16> %i.df, splat (i16 10)    ; 2 uses
  %shift146.2 = shufflevector <2 x i16> %i.dj, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147.2 = or <2 x i16> %i.dj, %shift146.2
  %i.dk = extractelement <2 x i16> %foldExtExtBinop147.2, i64 0
  %i.dl = icmp samesign ugt i16 %i.dk, 1
  br i1 %i.dl, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.ac, %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dn, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  store i16 0, ptr %i.o, align 2, !tbaa !21
  store i8 32, ptr %i.dm, align 4, !tbaa !17
  %i.do = tail call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef 128) #19 ; 0 uses
  br label %bb.ag

.loopexit:                                        ; preds = %bb.aa, %bb.ad, %bb.af, %bb.x, %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.079115, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.078116, i64 2
  %i.dr = getelementptr inbounds nuw i8, ptr %.077117, i64 2 ; 3 uses
  %.not97 = icmp ugt ptr %i.dr, %i.ay
  br i1 %.not97, label %._crit_edge, label %bb.n, !llvm.loop !138

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  %.077.lcssa = phi ptr [ %i.o, %bb.m ], [ %i.dr, %.loopexit ]
  %i.ds = ptrtoint ptr %.077.lcssa to i64
  %i.dt = ptrtoint ptr %i.o to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = lshr exact i64 %i.du, 1
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %i.o, i32 noundef %i.dw)
  store i32 %i.dx, ptr %0, align 4, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dy, align 4, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dz, align 4, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %.split.us, %._crit_edge, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 10) i32 @decNumberClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17    ; 6 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 112
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 32
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 16
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp sgt i8 %i.b, -1
  %. = select i1 %.not18, i32 9, i32 2
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = and i8 %i.b, 112
  %.not.i = icmp ne i8 %i.g, 0                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !21 ; 2 uses
  br i1 %.not.i, label %decNumberIsNormal.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i16 %.pre, 0
  %.pre.i = load i32, ptr %0, align 4, !tbaa !19  ; 2 uses
  %i.i = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %decNumberIsNormal.exit.thread.thread, label %decNumberIsNormal.exit

decNumberIsNormal.exit:                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = add nsw i32 %i.k, %.pre.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29
  %.not9.i.not = icmp sgt i32 %i.l, %i.n
  br i1 %.not9.i.not, label %bb.g, label %decNumberIsNormal.exit.thread

bb.g:                                             ; preds = %decNumberIsNormal.exit
  %.not15 = icmp sgt i8 %i.b, -1
  %.19 = select i1 %.not15, i32 8, i32 3
  br label %bb.j

decNumberIsNormal.exit.thread:                    ; preds = %bb.e, %decNumberIsNormal.exit
  %i.o = icmp eq i16 %.pre, 0
  br i1 %i.o, label %decNumberIsNormal.exit.thread.thread, label %bb.i

decNumberIsNormal.exit.thread.thread:             ; preds = %bb.f, %decNumberIsNormal.exit.thread
  %i.p = load i32, ptr %0, align 4, !tbaa !19
  %i.q = icmp ne i32 %i.p, 1
  %brmerge = or i1 %.not.i, %i.q
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %decNumberIsNormal.exit.thread.thread
  %.not14 = icmp sgt i8 %i.b, -1
  %.20 = select i1 %.not14, i32 6, i32 5
  br label %bb.j

bb.i:                                             ; preds = %decNumberIsNormal.exit.thread.thread, %decNumberIsNormal.exit.thread
  %.not13 = icmp sgt i8 %i.b, -1
  %.21 = select i1 %.not13, i32 7, i32 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.20, %bb.h ], [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ], [ %.19, %bb.g ], [ %.21, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @decNumberClassToString(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decNumberClassToString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberCopyNegate(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.decNumberCopy.exit_crit_edge, label %bb.b

.decNumberCopy.exit_crit_edge:                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %decNumberCopy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17    ; 4 uses
  %i.f = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.g = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.f, ptr %0, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.i, ptr %i.j, align 2, !tbaa !21
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %bb.c, label %decNumberCopy.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.m = icmp samesign ult i32 %i.g, 50
  br i1 %i.m, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 2
  %i.o = udiv i32 %i.n, 3
  br label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.g to i64
  %i.q = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.d, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.o, %.thread.i ], [ %i.s, %bb.d ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx35.pn.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.v = add i64 %i.b, %.idx35.pn.i
  %i.w = add i64 %i.v, 10
  %i.x = add i64 %i.b, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.x)
  %i.y = add i64 %umax, -13
  %i.z = sub i64 %i.y, %i.b                       ; 3 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw i64 %i.aa, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 6
  %i.ac = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.z, 30
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, -16                     ; 4 uses
  %i.ae = shl i64 %n.vec, 1                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ah ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep7, align 2, !tbaa !21
  %wide.load8 = load <8 x i16>, ptr %i.ai, align 2, !tbaa !21
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load8, ptr %i.aj, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %decNumberCopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.ab, -4                    ; 3 uses
  %i.al = shl i64 %n.vec10, 1                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.u, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = shl i64 %index11, 1                     ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %i.ao
  %next.gep13 = getelementptr i8, ptr %i.u, i64 %i.ao
  %wide.load14 = load <4 x i16>, ptr %next.gep13, align 2, !tbaa !21
  store <4 x i16> %wide.load14, ptr %next.gep12, align 2, !tbaa !21
  %index.next15 = add nuw i64 %index11, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.ab, %n.vec10
  br i1 %cmp.n16, label %decNumberCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.aq, ptr %.032.i, align 2, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.at = icmp ult ptr %i.ar, %i.t
  br i1 %i.at, label %.lr.ph.i, label %decNumberCopy.exit, !llvm.loop !141

decNumberCopy.exit:                               ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.decNumberCopy.exit_crit_edge, %bb.b
  %i.au = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.e, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = xor i8 %i.au, -128
  store i8 %i.aw, ptr %i.av, align 4, !tbaa !17
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberGetBCD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  %.not23 = icmp slt i32 %i.a, 1
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %.01822 = getelementptr i8, ptr %i.c, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = zext i16 %i.e to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.01827 = phi ptr [ %.018, %bb.c ], [ %.01822, %.lr.ph.preheader ] ; 2 uses
  %.026 = phi i32 [ %.1, %bb.c ], [ 3, %.lr.ph.preheader ]
  %.01425 = phi i32 [ %.115, %bb.c ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.01624 = phi ptr [ %.117, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.g = urem i32 %.01425, 10
  %i.h = trunc nuw nsw i32 %i.g to i8
  store i8 %i.h, ptr %.01827, align 1, !tbaa !24
  %i.i = udiv i32 %.01425, 10
  %i.j = add nsw i32 %.026, -1                    ; 2 uses
  %.not21 = icmp eq i32 %i.j, 0
  br i1 %.not21, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.01624, i64 2 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !21
  %i.m = zext i16 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.117 = phi ptr [ %.01624, %.lr.ph ], [ %i.k, %bb.b ]
  %.115 = phi i32 [ %i.i, %.lr.ph ], [ %i.m, %bb.b ]
  %.1 = phi i32 [ %i.j, %.lr.ph ], [ 3, %bb.b ]
  %.018 = getelementptr inbounds i8, ptr %.01827, i64 -1 ; 2 uses
  %.not = icmp ult ptr %.018, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberSetBCD(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.b = icmp slt i32 %i.a, 50
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds i8, ptr @d2utable, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = zext i8 %i.e to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.a, 2
  %i.h = udiv i32 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 1
  %narrow = add nuw nsw i32 %i.j, 8
  %.add30 = zext nneg i32 %narrow to i64
  %i.k = icmp ult i32 %2, 50
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = add i32 %2, 2
  %i.q = udiv i32 %i.p, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %._crit_edge44, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %bb.g
  %.neg29 = add i32 %2, 3
  %.neg = mul i32 %i.r, -3
  %i.s = add i32 %.neg29, %.neg
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge
  %.040 = phi i32 [ 3, %._crit_edge ], [ %i.s, %.lr.ph43.preheader ] ; 4 uses
  %.02239 = phi ptr [ %.123.lcssa, %._crit_edge ], [ %1, %.lr.ph43.preheader ] ; 3 uses
  %.024.idx38 = phi i64 [ %.024.add, %._crit_edge ], [ %.add30, %.lr.ph43.preheader ] ; 3 uses
  %.024.ptr41 = getelementptr inbounds i8, ptr %0, i64 %.024.idx38 ; 6 uses
  store i16 0, ptr %.024.ptr41, align 2, !tbaa !21
  %i.t = icmp sgt i32 %.040, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %xtraiter = and i32 %.040, 3                    ; 3 uses
  %i.u = icmp ult i32 %.040, 4
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %.040, 2147483644
  br label %.lr.ph

end_hunk_9
