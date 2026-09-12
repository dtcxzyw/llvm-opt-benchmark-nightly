Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decFinalize:bb.a
  %.pre = load i32, ptr %2, align 4, !tbaa !23
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not59 = icmp sgt i32 %i.g, %i.d
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %4, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.j, align 2, !tbaa !21
  store i32 %i.b, ptr %i.i, align 4, !tbaa !18
  %i.k = call fastcc i32 @decCompare(ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 1) ; 2 uses
  %i.l = icmp eq i32 %i.k, -2147483648
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !23
  %i.n = or i32 %i.m, 16
  store i32 %i.n, ptr %3, align 4, !tbaa !23
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %2, align 4, !tbaa !23     ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = icmp eq i32 %i.k, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.o, ptr noundef %3)
  call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.r = phi i32 [ %.pre, %._crit_edge ], [ %i.o, %bb.h ] ; 2 uses
  %.not60 = icmp eq i32 %i.r, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.r, ptr noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load i32, ptr %i.f, align 4, !tbaa !18   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30   ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !27
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  %.not61 = icmp sgt i32 %i.s, %i.x
  br i1 %.not61, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.z = add i32 %i.u, 1
  %i.aa = sub i32 %i.z, %i.y
  %i.ab = icmp sgt i32 %i.s, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !28
  %.not62 = icmp eq i8 %i.ad, 0
  br i1 %.not62, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = sub nsw i32 %i.s, %i.x                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !21
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = icmp eq i32 %i.y, 1
  %or.cond63 = and i1 %i.ai, %i.ah
  br i1 %or.cond63, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !17
  %i.al = and i8 %i.ak, 112
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.af, i32 noundef %i.y, i32 noundef %i.ae)
  store i32 %i.an, ptr %0, align 4, !tbaa !19
  %.pre64 = load i32, ptr %i.f, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = phi i32 [ %.pre64, %bb.q ], [ %i.s, %bb.p ]
  %i.ap = sub nsw i32 %i.ao, %i.ae
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !18
  %i.aq = load i32, ptr %3, align 4, !tbaa !23
  %i.ar = or i32 %i.aq, 1024
  store i32 %i.ar, ptr %3, align 4, !tbaa !23
  br label %bb.s

.critedge:                                        ; preds = %bb.g, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.k, %.critedge, %bb.r, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberAbs(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %i.i = and i8 %i.h, -128
  %i.j = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.i, ptr noundef %i.a) ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.k, 221
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 1073741824
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.k, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.q, align 2, !tbaa !21
  store i8 32, ptr %i.o, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.b ]
  %i.r = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @decAddOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 0, -127) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca [31 x i16], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = load i32, ptr %3, align 4, !tbaa !27     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17    ; 6 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17    ; 4 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = xor i8 %i.h, %4                          ; 3 uses
  %i.k = xor i8 %i.j, %i.e
  %i.l = and i8 %i.k, -128                        ; 6 uses
  %i.m = or i32 %i.i, %i.f                        ; 2 uses
  %i.n = and i32 %i.m, 112
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.m, 48
  %.not326 = icmp eq i32 %i.o, 0
  br i1 %.not326, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) ; 0 uses
  br label %.thread363

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.f, 64
  %.not327 = icmp eq i32 %i.q, 0
  br i1 %.not327, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %i.i, 64
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp ne i8 %i.l, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %5, align 4, !tbaa !23
  %i.v = or i32 %i.u, 128
  store i32 %i.v, ptr %5, align 4, !tbaa !23
  br label %.thread363

bb.g:                                             ; preds = %bb.d, %bb.e
  %.0265.in = phi i8 [ %i.e, %bb.e ], [ %i.j, %bb.d ]
  %.0265 = and i8 %.0265.in, -128
  %i.w = or disjoint i8 %.0265, 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.z, align 2, !tbaa !21
  store i8 %i.w, ptr %i.x, align 4, !tbaa !17
  br label %.thread363

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !21 ; 2 uses
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %1, align 4, !tbaa !19
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = and i32 %i.f, 112
  %i.ag = icmp eq i32 %i.af, 0
  %or.cond330 = and i1 %i.ag, %i.ae
  br i1 %or.cond330, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i8 %i.h, ptr %i.aj, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ao = load i32, ptr %2, align 4, !tbaa !19
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.an, i32 noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
  %i.ap = load i8, ptr %i.aj, align 4, !tbaa !17
  %i.aq = xor i8 %i.ap, %4                        ; 2 uses
  store i8 %i.aq, ptr %i.aj, align 4, !tbaa !17
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !18
  %i.as = sub nsw i32 %i.ai, %i.ar                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !21
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %0, align 4, !tbaa !19
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = and i8 %i.aq, 112
  %i.az = icmp eq i8 %i.ay, 0
  %or.cond332 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond332, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp slt i32 %i.as, 0
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not324 = icmp eq i8 %i.l, 0
  br i1 %.not324, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34
  %.not325 = icmp eq i32 %i.bc, 6
  br i1 %.not325, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.aj, align 4, !tbaa !17
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  store i8 -128, ptr %i.aj, align 4, !tbaa !17
  br label %bb.v

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bd = icmp slt i32 %i.as, 0
  br i1 %i.bd, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %0, align 4, !tbaa !19    ; 3 uses
  %i.bf = sub nsw i32 %i.be, %i.as
  %i.bg = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = sub nsw i32 %i.be, %i.bg
  %i.bj = load i32, ptr %5, align 4, !tbaa !23
  %i.bk = or i32 %i.bj, 2048
  store i32 %i.bk, ptr %5, align 4, !tbaa !23
  %.pre383 = load i32, ptr %0, align 4, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bl = phi i32 [ %.pre383, %bb.t ], [ %i.be, %bb.s ]
  %.0256 = phi i32 [ %i.bi, %bb.t ], [ %i.as, %bb.s ] ; 2 uses
  %i.bm = sub nsw i32 0, %.0256
  %i.bn = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.at, i32 noundef %i.bl, i32 noundef %i.bm)
  store i32 %i.bn, ptr %0, align 4, !tbaa !19
  %i.bo = load i32, ptr %i.am, align 4, !tbaa !18
  %i.bp = add nsw i32 %i.bo, %.0256
  store i32 %i.bp, ptr %i.am, align 4, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.n, %bb.q, %bb.p
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.a, ptr noundef %5)
  br label %.thread363

bb.w:                                             ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !21 ; 2 uses
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bt = load i32, ptr %2, align 4, !tbaa !19
  %i.bu = icmp eq i32 %i.bt, 1
  %i.bv = and i8 %i.h, 112
  %i.bw = icmp eq i8 %i.bv, 0
  %or.cond367 = and i1 %i.bw, %i.bu
  br i1 %or.cond367, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !18
  %i.cd = load i32, ptr %1, align 4, !tbaa !19
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.aa, i32 noundef %i.cd, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.cf = sub nsw i32 %i.by, %i.ce                ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ch = load i32, ptr %0, align 4, !tbaa !19    ; 3 uses
  %i.ci = sub nsw i32 %i.ch, %i.cf
  %i.cj = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.ck = icmp sgt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = sub nsw i32 %i.ch, %i.cj
  %i.cm = load i32, ptr %5, align 4, !tbaa !23
  %i.cn = or i32 %i.cm, 2048
  store i32 %i.cn, ptr %5, align 4, !tbaa !23
  %.pre382 = load i32, ptr %0, align 4, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.co = phi i32 [ %.pre382, %bb.aa ], [ %i.ch, %bb.z ]
  %.0255 = phi i32 [ %i.cl, %bb.aa ], [ %i.cf, %bb.z ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 10
end_hunk_0
begin_hunk_1_@decAddOp:bb.a
  br i1 %i.db, label %bb.af, label %.thread348

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29
  %.not311 = icmp slt i32 %i.cv, %i.dd
  br i1 %.not311, label %.thread348, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !30
  %reass.sub = sub i32 %i.df, %i.c
  %i.dg = add i32 %reass.sub, 1
  %.not312 = icmp sgt i32 %i.cv, %i.dg
  %.not313 = icmp sgt i32 %i.da, %i.c
  %or.cond333 = select i1 %.not312, i1 true, i1 %.not313
  br i1 %or.cond333, label %.thread348, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %.not314 = icmp sgt i32 %i.dh, %i.c
  br i1 %.not314, label %.thread348, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = zext i16 %i.ab to i32                   ; 2 uses
  %.not315 = icmp eq i8 %i.l, 0
  %i.dj = zext i16 %i.br to i32                   ; 2 uses
  br i1 %.not315, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.dk = add nuw nsw i32 %i.dj, %i.di            ; 3 uses
  %i.dl = icmp samesign ult i32 %i.dk, 1000
  br i1 %i.dl, label %bb.ak, label %.thread348

bb.ak:                                            ; preds = %bb.aj
  %i.dm = icmp sgt i32 %i.dh, 2
  br i1 %i.dm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = sext i32 %i.dh to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !23
  %i.dq = icmp slt i32 %i.dk, %i.dp
  br i1 %i.dq, label %bb.am, label %.thread348

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not316 = icmp eq ptr %0, %1
  br i1 %.not316, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ds = trunc nuw nsw i32 %i.dk to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !21
  br label %.thread363

bb.ap:                                            ; preds = %bb.ai
  %i.du = sub nsw i32 %i.di, %i.dj                ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.aq, label %.thread348

bb.aq:                                            ; preds = %bb.ap
  %.not317 = icmp eq ptr %0, %1
  br i1 %.not317, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dx = trunc nuw i32 %i.du to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !21
  %i.dz = load i32, ptr %0, align 4, !tbaa !19    ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 50
  br i1 %i.ea, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eb = sext i32 %i.dz to i64
  %i.ec = getelementptr inbounds i8, ptr @d2utable, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !24
  %i.ee = zext i8 %i.ed to i32
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ef = add nuw nsw i32 %i.dz, 2
  %i.eg = udiv i32 %i.ef, 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eh = phi i32 [ %i.ee, %bb.at ], [ %i.eg, %bb.au ]
  %i.ei = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %i.dy, i32 noundef %i.eh)
  store i32 %i.ei, ptr %0, align 4, !tbaa !19
  br label %.thread363

.thread348:                                       ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ap, %bb.aj, %bb.al
  %.pre = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.bh

bb.aw:                                            ; preds = %bb.ad
  %i.ej = icmp sgt i32 %i.cy, -1                  ; 2 uses
  br i1 %i.ej, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ek = sub nsw i32 0, %i.cy
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0274 = phi ptr [ %1, %bb.ax ], [ %2, %bb.aw ] ; 5 uses
  %.1266 = phi i8 [ %i.j, %bb.ax ], [ %i.e, %bb.aw ]
  %.0257 = phi i32 [ %i.ek, %bb.ax ], [ %i.cy, %bb.aw ] ; 6 uses
  %.0 = phi ptr [ %2, %bb.ax ], [ %1, %bb.aw ]    ; 2 uses
  %i.el = load i32, ptr %.0274, align 4, !tbaa !19 ; 4 uses
  %i.em = add nsw i32 %i.el, %.0257
  %i.en = load i32, ptr %.0, align 4, !tbaa !19   ; 2 uses
  %i.eo = add i32 %i.c, 1
  %i.ep = add i32 %i.eo, %i.en
  %i.eq = icmp sgt i32 %i.em, %i.ep
  br i1 %i.eq, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.er = sub nsw i32 %i.c, %i.el                 ; 3 uses
  %.not319 = icmp eq i8 %i.l, 0
  %spec.select = select i1 %.not319, i32 1, i32 -1
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %.0274, i64 8
  %i.et = load i8, ptr %i.es, align 4, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 %i.et, ptr %i.eu, align 4, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %.0274, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.0274, i64 10
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ey, i32 noundef %i.el, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
  %i.ez = icmp sgt i32 %i.er, 0
  br i1 %i.ez, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fb = load i32, ptr %0, align 4, !tbaa !19
  %i.fc = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.fa, i32 noundef %i.fb, i32 noundef %i.er)
  store i32 %i.fc, ptr %0, align 4, !tbaa !19
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !18
  %i.fe = sub nsw i32 %i.fd, %i.er
  store i32 %i.fe, ptr %i.ex, align 4, !tbaa !18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.ej, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ff = load i8, ptr %i.eu, align 4, !tbaa !17
  %i.fg = xor i8 %i.ff, %4
  store i8 %i.fg, ptr %i.eu, align 4, !tbaa !17
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ay
  %i.fh = icmp samesign ult i32 %.0257, 49
  br i1 %i.fh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fi = zext nneg i32 %.0257 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %i.fm = zext i8 %i.fl to i32
  br label %.thread349

bb.bf:                                            ; preds = %bb.bd
  %i.fn = add nuw nsw i32 %.0257, 3
  %i.fo = udiv i32 %i.fn, 3
  br label %.thread349

.thread349:                                       ; preds = %bb.be, %bb.bf
  %i.fp = phi i32 [ %i.fm, %bb.be ], [ %i.fo, %bb.bf ]
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  %.neg = mul nsw i32 %i.fq, -3
  %i.fr = add i32 %.neg, %.0257
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !23
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb, %bb.bc
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.a, ptr noundef %5)
  br label %.thread363

bb.bh:                                            ; preds = %.thread349, %.thread348
  %i.fv = phi i32 [ %i.en, %.thread349 ], [ %.pre, %.thread348 ] ; 4 uses
  %i.fw = phi i32 [ %i.el, %.thread349 ], [ %i.da, %.thread348 ] ; 4 uses
  %.1275 = phi ptr [ %.0274, %.thread349 ], [ %2, %.thread348 ] ; 2 uses
  %.1273 = phi i32 [ %i.fq, %.thread349 ], [ 0, %.thread348 ] ; 2 uses
  %.1269 = phi i32 [ %i.fu, %.thread349 ], [ 1, %.thread348 ] ; 2 uses
  %.2267 = phi i8 [ %.1266, %.thread349 ], [ %i.e, %.thread348 ]
  %.1258 = phi i32 [ %.0257, %.thread349 ], [ 0, %.thread348 ]
  %.1 = phi ptr [ %.0, %.thread349 ], [ %1, %.thread348 ] ; 2 uses
  %.not321 = icmp eq i8 %i.l, 0
  %i.fx = sub nsw i32 0, %.1269
  %spec.select334 = select i1 %.not321, i32 %.1269, i32 %i.fx
  %i.fy = add nsw i32 %i.fw, %.1258
  %.0271 = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 %i.fy) ; 4 uses
  %.ptr368 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %.not322 = icmp slt i32 %.0271, %i.c
  br i1 %.not322, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fz = icmp eq ptr %0, %.1275
  %i.ga = icmp sgt i32 %.1273, 0
  %or.cond4 = and i1 %i.fz, %i.ga
  br i1 %or.cond4, label %bb.bj, label %.thread354

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gb = icmp slt i32 %.0271, 50
  br i1 %i.gb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gc = sext i32 %.0271 to i64
  %i.gd = getelementptr inbounds i8, ptr @d2utable, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !24
  %i.gf = zext i8 %i.ge to i32
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gg = add nuw nsw i32 %.0271, 2
  %i.gh = udiv i32 %i.gg, 3
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gi = phi i32 [ %i.gf, %bb.bk ], [ %i.gh, %bb.bl ] ; 2 uses
  %i.gj = icmp samesign ugt i32 %i.gi, 30
  br i1 %i.gj, label %bb.bn, label %.thread354

bb.bn:                                            ; preds = %bb.bm
  %i.gk = shl nuw nsw i32 %i.gi, 1
  %i.gl = add nuw nsw i32 %i.gk, 2
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = tail call noalias ptr @malloc(i64 noundef %i.gm) #20 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.bo, label %.thread354

bb.bo:                                            ; preds = %bb.bn
  %i.gp = load i32, ptr %5, align 4, !tbaa !23
  %i.gq = or i32 %i.gp, 16
  store i32 %i.gq, ptr %5, align 4, !tbaa !23
  br label %.thread363

.thread354:                                       ; preds = %bb.bm, %bb.bn, %bb.bi
  %.2264 = phi ptr [ %.ptr368, %bb.bi ], [ %i.gn, %bb.bn ], [ %i.b, %bb.bm ] ; 5 uses
  %.2261 = phi ptr [ null, %bb.bi ], [ %i.gn, %bb.bn ], [ null, %bb.bm ] ; 2 uses
  %i.gr = and i8 %.2267, -128
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i8 %i.gr, ptr %i.gs, align 4, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.1, i64 10
  %i.gx = icmp slt i32 %i.fv, 50
  br i1 %i.gx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.thread354
  %i.gy = sext i32 %i.fv to i64
  %i.gz = getelementptr inbounds i8, ptr @d2utable, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !24
  %i.hb = zext i8 %i.ha to i32
  br label %bb.br

bb.bq:                                            ; preds = %.thread354
  %i.hc = add nuw nsw i32 %i.fv, 2
  %i.hd = udiv i32 %i.hc, 3
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.he = phi i32 [ %i.hb, %bb.bp ], [ %i.hd, %bb.bq ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.1275, i64 10
  %i.hg = icmp slt i32 %i.fw, 50
  br i1 %i.hg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hh = sext i32 %i.fw to i64
  %i.hi = getelementptr inbounds i8, ptr @d2utable, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !24
  %i.hk = zext i8 %i.hj to i32
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.hl = add nuw nsw i32 %i.fw, 2
  %i.hm = udiv i32 %i.hl, 3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hn = phi i32 [ %i.hk, %bb.bs ], [ %i.hm, %bb.bt ]
  %i.ho = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %i.gw, i32 noundef %i.he, ptr noundef nonnull %i.hf, i32 noundef %i.hn, i32 noundef %.1273, ptr noundef nonnull %.2264, i32 noundef %spec.select334) ; 2 uses
  %i.hp = mul nsw i32 %i.ho, 3                    ; 3 uses
  store i32 %i.hp, ptr %0, align 4, !tbaa !19
  %i.hq = icmp slt i32 %i.ho, 0
  br i1 %i.hq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hr = sub nsw i32 0, %i.hp                    ; 2 uses
  store i32 %i.hr, ptr %0, align 4, !tbaa !19
  %i.hs = load i8, ptr %i.gs, align 4, !tbaa !17
  %i.ht = xor i8 %i.hs, -128
  store i8 %i.ht, ptr %i.gs, align 4, !tbaa !17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.hu = phi i32 [ %i.hr, %bb.bv ], [ %i.hp, %bb.bu ] ; 7 uses
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %.not323 = icmp eq ptr %.2264, %.ptr368
  br i1 %.not323, label %bb.cf, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = icmp sgt i32 %i.hu, %i.c
  br i1 %i.hv, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.hw = icmp slt i32 %i.hu, 50
  br i1 %i.hw, label %bb.bz, label %.thread358

.thread358:                                       ; preds = %bb.by
  %i.hx = add nuw nsw i32 %i.hu, 2
  %i.hy = udiv i32 %i.hx, 3
  %i.hz = add nsw i32 %i.hy, -1                   ; 2 uses
  %i.ia = mul nuw nsw i32 %i.hz, 3
  %i.ib = add nuw nsw i32 %i.ia, 1
  br label %.lr.ph.preheader.i

bb.bz:                                            ; preds = %bb.by
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds i8, ptr @d2utable, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24
  %i.if = zext i8 %i.ie to i32
  %i.ig = add nsw i32 %i.if, -1                   ; 2 uses
  %i.ih = mul nsw i32 %i.ig, 3
  %i.ii = add nsw i32 %i.ih, 1                    ; 2 uses
  %.not16.i = icmp eq i32 %i.hu, 0
  br i1 %.not16.i, label %decGetDigits.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread358, %bb.bz
  %i.ij = phi i32 [ %i.ib, %.thread358 ], [ %i.ii, %bb.bz ]
  %i.ik = phi i32 [ %i.hz, %.thread358 ], [ %i.ig, %bb.bz ]
  %i.il = zext nneg i32 %i.ik to i64
  %.idx.i = shl nuw nsw i64 %i.il, 1
  %i.im = getelementptr inbounds nuw i8, ptr %.2264, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cb, %.lr.ph.preheader.i
  %.018.i = phi i32 [ %i.iq, %bb.cb ], [ %i.ij, %.lr.ph.preheader.i ] ; 4 uses
  %.01317.i = phi ptr [ %i.ir, %bb.cb ], [ %i.im, %.lr.ph.preheader.i ] ; 2 uses
  %i.in = load i16, ptr %.01317.i, align 2, !tbaa !21 ; 3 uses
  %i.io = icmp eq i16 %i.in, 0
  br i1 %i.io, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %.lr.ph.i
  %i.ip = icmp eq i32 %.018.i, 1
  br i1 %i.ip, label %decGetDigits.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iq = add nsw i32 %.018.i, -3                 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.01317.i, i64 -2 ; 2 uses
  %.not.i = icmp ult ptr %i.ir, %.2264
  br i1 %.not.i, label %decGetDigits.exit, label %.lr.ph.i, !llvm.loop !1

bb.cc:                                            ; preds = %.lr.ph.i
  %i.is = icmp ult i16 %i.in, 10
  br i1 %i.is, label %decGetDigits.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.it = icmp ult i16 %i.in, 100
  %spec.select.v.i = select i1 %i.it, i32 1, i32 2
  %spec.select.i = add nsw i32 %spec.select.v.i, %.018.i
  br label %decGetDigits.exit

decGetDigits.exit:                                ; preds = %bb.ca, %bb.cb, %bb.bz, %bb.cc, %bb.cd
  %.1.i = phi i32 [ %spec.select.i, %bb.cd ], [ %.018.i, %bb.cc ], [ %i.ii, %bb.bz ], [ 1, %bb.ca ], [ %i.iq, %bb.cb ] ; 2 uses
  store i32 %.1.i, ptr %0, align 4, !tbaa !19
  br label %bb.ce

bb.ce:                                            ; preds = %decGetDigits.exit, %bb.bx
  %i.iu = phi i32 [ %.1.i, %decGetDigits.exit ], [ %i.hu, %bb.bx ]
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %.2264, i32 noundef %i.iu, ptr noundef %i.a, ptr noundef %5)
  %.pre381 = load i32, ptr %0, align 4, !tbaa !19
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bw
  %i.iv = phi i32 [ %.pre381, %bb.ce ], [ %i.hu, %bb.bw ] ; 4 uses
  %i.iw = icmp slt i32 %i.iv, 50
  br i1 %i.iw, label %bb.cg, label %.thread360

.thread360:                                       ; preds = %bb.cf
  %i.ix = add nuw nsw i32 %i.iv, 2
  %i.iy = udiv i32 %i.ix, 3
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  %i.ja = mul nuw nsw i32 %i.iz, 3
  %i.jb = add nuw nsw i32 %i.ja, 1
  br label %.lr.ph.preheader.i336

bb.cg:                                            ; preds = %bb.cf
  %i.jc = sext i32 %i.iv to i64
  %i.jd = getelementptr inbounds i8, ptr @d2utable, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !24
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nsw i32 %i.jf, -1                   ; 2 uses
  %i.jh = mul nsw i32 %i.jg, 3
  %i.ji = add nsw i32 %i.jh, 1                    ; 2 uses
  %.not16.i335 = icmp eq i32 %i.iv, 0
  br i1 %.not16.i335, label %decGetDigits.exit345, label %.lr.ph.preheader.i336

.lr.ph.preheader.i336:                            ; preds = %.thread360, %bb.cg
  %i.jj = phi i32 [ %i.jb, %.thread360 ], [ %i.ji, %bb.cg ]
  %i.jk = phi i32 [ %i.iz, %.thread360 ], [ %i.jg, %bb.cg ]
  %i.jl = zext nneg i32 %i.jk to i64
  %.idx.i337 = shl nuw nsw i64 %i.jl, 1
  %.add = add nuw nsw i64 %.idx.i337, 10
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %bb.ci, %.lr.ph.preheader.i336
  %.018.i339 = phi i32 [ %i.jp, %bb.ci ], [ %i.jj, %.lr.ph.preheader.i336 ] ; 4 uses
  %.01317.i340.idx = phi i64 [ %.01317.i340.add, %bb.ci ], [ %.add, %.lr.ph.preheader.i336 ] ; 3 uses
  %.01317.i340.ptr = getelementptr inbounds i8, ptr %0, i64 %.01317.i340.idx
  %i.jm = load i16, ptr %.01317.i340.ptr, align 2, !tbaa !21 ; 3 uses
  %i.jn = icmp eq i16 %i.jm, 0
  br i1 %i.jn, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %.lr.ph.i338
  %i.jo = icmp eq i32 %.018.i339, 1
  br i1 %i.jo, label %decGetDigits.exit345, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jp = add nsw i32 %.018.i339, -3              ; 2 uses
  %.01317.i340.add = add nsw i64 %.01317.i340.idx, -2
  %.not.i344 = icmp slt i64 %.01317.i340.idx, 11
  br i1 %.not.i344, label %decGetDigits.exit345, label %.lr.ph.i338, !llvm.loop !1

bb.cj:                                            ; preds = %.lr.ph.i338
  %i.jq = icmp ult i16 %i.jm, 10
  br i1 %i.jq, label %decGetDigits.exit345, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jr = icmp ult i16 %i.jm, 100
  %spec.select.v.i341 = select i1 %i.jr, i32 1, i32 2
  %spec.select.i342 = add nsw i32 %spec.select.v.i341, %.018.i339
  br label %decGetDigits.exit345

decGetDigits.exit345:                             ; preds = %bb.ch, %bb.ci, %bb.cg, %bb.cj, %bb.ck
  %.1.i343 = phi i32 [ %spec.select.i342, %bb.ck ], [ %.018.i339, %bb.cj ], [ %i.ji, %bb.cg ], [ 1, %bb.ch ], [ %i.jp, %bb.ci ]
  store i32 %.1.i343, ptr %0, align 4, !tbaa !19
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.a, ptr noundef %5)
  %i.js = load i16, ptr %.ptr368, align 2, !tbaa !21
  %i.jt = icmp eq i16 %i.js, 0
  br i1 %i.jt, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %decGetDigits.exit345
  %i.ju = load i32, ptr %0, align 4, !tbaa !19
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.jw = load i8, ptr %i.gs, align 4, !tbaa !17  ; 3 uses
  %i.jx = and i8 %i.jw, 112
  %i.jy = icmp eq i8 %i.jx, 0
  %6 = icmp ne i8 %i.l, 0
  %or.cond7 = and i1 %6, %i.jy
  br i1 %or.cond7, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jz = load i32, ptr %5, align 4, !tbaa !23
  %i.ka = and i32 %i.jz, 32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.sink.split, label %bb.co

.sink.split:                                      ; preds = %bb.cn
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !34
  %i.ke = icmp eq i32 %i.kd, 6
  %i.kf = or i8 %i.jw, -128
  %i.kg = and i8 %i.jw, 15
  %.sink = select i1 %i.ke, i8 %i.kf, i8 %i.kg
  store i8 %.sink, ptr %i.gs, align 4, !tbaa !17
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %bb.cn, %bb.cm, %bb.cl, %decGetDigits.exit345
  %.not328 = icmp eq ptr %.2261, null
  br i1 %.not328, label %.thread363, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @free(ptr noundef nonnull %.2261) #19
  br label %.thread363

.thread363:                                       ; preds = %bb.ao, %bb.av, %bb.bg, %bb.bo, %bb.ac, %bb.v, %bb.g, %bb.f, %bb.c, %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberAdd(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
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
define dso_local noundef ptr @decNumberAnd(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
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
  %.not94 = icmp eq i32 %i.f, 0
  br i1 %.not94, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %or.cond101 = icmp ult i8 %i.h, 16
  br i1 %or.cond101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.k, align 2, !tbaa !21
  store i8 32, ptr %i.i, align 4, !tbaa !17
  %i.l = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef 128) #19 ; 0 uses
  br label %bb.ah

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
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -2
  %i.an = load i32, ptr %3, align 4, !tbaa !27    ; 5 uses
  %i.ao = icmp slt i32 %i.an, 50
  br i1 %i.ao, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  %i.ap = add nuw nsw i32 %i.an, 2
  %i.aq = udiv i32 %i.ap, 3                       ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %.pn.idx132 = zext nneg i32 %i.ar to i64
  br label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds i8, ptr @d2utable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = zext i8 %i.au to i32
  %.pn.idx = shl nuw nsw i64 %i.av, 1
  %.not98117 = icmp eq i32 %i.an, 0
  br i1 %.not98117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.m
  %.pn.idx132.pn = phi i64 [ %.pn.idx132, %.thread ], [ %.pn.idx, %bb.m ]
  %i.ax = phi i32 [ %i.aq, %.thread ], [ %i.aw, %bb.m ]
  %.pn = getelementptr i8, ptr %i.o, i64 %.pn.idx132.pn
  %i.ay = getelementptr i8, ptr %.pn, i64 -2      ; 2 uses
  %.neg = mul nsw i32 %i.ax, -3
  %i.az = add i32 %i.an, 2
  %i.ba = add i32 %i.az, %.neg                    ; 2 uses
  %i.bb = load i32, ptr @DECPOWERS, align 16
  %i.bc = trunc i32 %i.bb to i16                  ; 2 uses
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), align 4
  %i.be = trunc i32 %i.bd to i16
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 8), align 8
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = load i32, ptr @DECPOWERS, align 16
  %i.bi = trunc i32 %i.bh to i16                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 0
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), align 4
  %i.bk = trunc i32 %i.bj to i16
end_hunk_1
begin_hunk_2_@decDivideOp:bb.a
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -2 ; 3 uses
  %i.es = icmp slt i32 %i.cl, 50                  ; 2 uses
  br i1 %i.es, label %bb.au, label %.thread779

.thread779:                                       ; preds = %bb.at
  %i.et = add nuw nsw i32 %i.cl, 2
  %i.eu = udiv i32 %i.et, 3
  br label %.lr.ph.preheader

bb.au:                                            ; preds = %bb.at
  %i.ev = sext i32 %i.cl to i64
  %i.ew = getelementptr inbounds i8, ptr @d2utable, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !24
  %i.ey = zext i8 %i.ex to i32
  %.not554680 = icmp eq i32 %i.cl, 0
  br i1 %.not554680, label %.preheader671, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread779, %bb.au
  %i.ez = phi i32 [ %i.eu, %.thread779 ], [ %i.ey, %bb.au ]
  %i.fa = shl nuw nsw i64 %i.ep, 1                ; 2 uses
  %i.fb = shl nuw nsw i32 %i.ez, 1
  %i.fc = zext nneg i32 %i.fb to i64              ; 3 uses
  %i.fd = sub nsw i64 %i.fa, %i.fc
  %scevgep = getelementptr i8, ptr %.0485, i64 %i.fd
  %scevgep743 = getelementptr i8, ptr %1, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %scevgep743, i64 %i.fc, i1 false), !tbaa !21
  %i.fe = sub nsw i64 %i.fa, %i.fc
  %i.ff = getelementptr i8, ptr %.0485, i64 %i.fe
  %scevgep745 = getelementptr i8, ptr %i.ff, i64 -2
  br label %.preheader671

.preheader671:                                    ; preds = %.lr.ph.preheader, %bb.au
  %.0445.lcssa = phi ptr [ %i.er, %bb.au ], [ %scevgep745, %.lr.ph.preheader ] ; 2 uses
  %.not559683 = icmp ult ptr %.0445.lcssa, %.0485
  br i1 %.not559683, label %._crit_edge, label %.lr.ph685

.lr.ph685:                                        ; preds = %.preheader671, %.lr.ph685
  %.1446684 = phi ptr [ %i.fg, %.lr.ph685 ], [ %.0445.lcssa, %.preheader671 ] ; 2 uses
  store i16 0, ptr %.1446684, align 2, !tbaa !21
  %i.fg = getelementptr inbounds i8, ptr %.1446684, i64 -2 ; 2 uses
  %.not559 = icmp ult ptr %i.fg, %.0485
  br i1 %.not559, label %._crit_edge, label %.lr.ph685, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph685, %.preheader671
  %i.fh = icmp slt i32 %i.cq, 50                  ; 2 uses
  br i1 %i.fh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  %i.fi = sext i32 %i.cq to i64
  %i.fj = getelementptr inbounds i8, ptr @d2utable, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !24
  %i.fl = zext i8 %i.fk to i32
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %i.fm = add nuw nsw i32 %i.cq, 2
  %i.fn = udiv i32 %i.fm, 3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fo = phi i32 [ %i.fl, %bb.av ], [ %i.fn, %bb.aw ] ; 5 uses
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %.idx564 = zext nneg i32 %i.fp to i64           ; 2 uses
  %.add565 = add nuw nsw i64 %.idx564, 8          ; 2 uses
  %.ptr568 = getelementptr inbounds nuw i8, ptr %2, i64 %.add565
  %i.fq = load i16, ptr %.ptr568, align 2, !tbaa !21 ; 2 uses
  %i.fr = zext i16 %i.fq to i32                   ; 4 uses
  %i.fs = icmp samesign ugt i32 %i.fo, 1          ; 2 uses
  %i.ft = zext i1 %i.fs to i32
  %spec.select599 = add nuw nsw i32 %i.fr, %i.ft
  %i.fu = mul nuw nsw i32 %i.fr, 1000             ; 2 uses
  br i1 %i.fs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx564
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !21
  %i.fy = zext i16 %i.fx to i32
  %.not560 = icmp ne i32 %i.fo, 2
  %i.fz = zext i1 %.not560 to i32
  %i.ga = or disjoint i32 %i.fu, %i.fz
  %spec.select600 = add nuw nsw i32 %i.ga, %i.fy
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0478 = phi i32 [ %i.fu, %bb.ax ], [ %spec.select600, %bb.ay ]
  %i.gb = load i16, ptr %i.er, align 2, !tbaa !21 ; 2 uses
  %i.gc = zext i16 %i.gb to i32                   ; 2 uses
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), align 4, !tbaa !23 ; 2 uses
  %.not561686 = icmp ugt i32 %i.gd, %i.gc
  br i1 %.not561686, label %.preheader670, label %.lr.ph690

.preheader670:                                    ; preds = %.lr.ph690, %bb.az
  %.0452.lcssa = phi i32 [ %i.cs, %bb.az ], [ %i.ge, %.lr.ph690 ] ; 2 uses
  %.not562693 = icmp ugt i32 %i.gd, %i.fr
  br i1 %.not562693, label %._crit_edge697, label %.lr.ph696

.lr.ph690:                                        ; preds = %bb.az, %.lr.ph690
  %.0441688 = phi ptr [ %i.gf, %.lr.ph690 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %bb.az ]
  %.0452687 = phi i32 [ %i.ge, %.lr.ph690 ], [ %i.cs, %bb.az ]
  %i.ge = add nsw i32 %.0452687, -1               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0441688, i64 4 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !23
  %.not561 = icmp ugt i32 %i.gg, %i.gc
  br i1 %.not561, label %.preheader670, label %.lr.ph690, !llvm.loop !66

.lr.ph696:                                        ; preds = %.preheader670, %.lr.ph696
  %.1442695 = phi ptr [ %i.gi, %.lr.ph696 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %.preheader670 ]
  %.1453694 = phi i32 [ %i.gh, %.lr.ph696 ], [ %.0452.lcssa, %.preheader670 ]
  %i.gh = add nsw i32 %.1453694, 1                ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1442695, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  %.not562 = icmp ugt i32 %i.gj, %i.fr
  br i1 %.not562, label %._crit_edge697, label %.lr.ph696, !llvm.loop !67

._crit_edge697:                                   ; preds = %.lr.ph696, %.preheader670
  %.1453.lcssa = phi i32 [ %.0452.lcssa, %.preheader670 ], [ %i.gh, %.lr.ph696 ] ; 6 uses
  br i1 %.not553, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %._crit_edge697
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gk = sext i32 %i.cl to i64
  %i.gl = getelementptr inbounds i8, ptr @d2utable, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24
  %i.gn = zext i8 %i.gm to i32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.go = add nuw nsw i32 %i.cl, 2
  %i.gp = udiv i32 %i.go, 3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gq = phi i32 [ %i.gn, %bb.bb ], [ %i.gp, %bb.bc ]
  %i.gr = sub nsw i32 %i.eg, %i.gq
  %i.gs = mul nsw i32 %i.gr, 3
  %i.gt = icmp slt i32 %.1453.lcssa, 0
  br i1 %i.gt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gu = sub nsw i32 0, %.1453.lcssa
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gv = urem i32 %.1453.lcssa, 3
  %i.gw = xor i32 %i.gv, 3
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0439 = phi i32 [ %i.gu, %bb.be ], [ %i.gw, %bb.bf ] ; 5 uses
  %i.gx = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %.0485, i32 noundef %i.eg, i32 noundef %.0439) ; 0 uses
  %i.gy = add nsw i32 %.0439, %.1453.lcssa        ; 2 uses
  %i.gz = sub nsw i32 %i.gs, %.0439               ; 2 uses
  %i.ha = icmp samesign ugt i32 %.0439, 2
  br i1 %i.ha, label %.lr.ph702.preheader, label %.loopexit669

.lr.ph702.preheader:                              ; preds = %bb.bg
  %i.hb = shl nuw nsw i64 %i.ep, 1
  %i.hc = add nsw i64 %i.hb, -2
  %i.hd = call i32 @llvm.usub.sat.i32(i32 %.0439, i32 5)
  %i.he = add nuw i32 %i.hd, 2
  %i.hf = udiv i32 %i.he, 3
  %i.hg = shl nuw nsw i32 %i.hf, 1
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = sub nsw i64 %i.hc, %i.hh
  %scevgep747 = getelementptr i8, ptr %.0485, i64 %i.hi
  %i.hj = add nuw nsw i64 %i.hh, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep747, i8 0, i64 %i.hj, i1 false), !tbaa !21
  br label %.loopexit669

bb.bh:                                            ; preds = %._crit_edge697
  %i.hk = sub nsw i32 %i.cn, %i.cp                ; 2 uses
  %i.hl = icmp ult i16 %i.gb, %i.fq
  br i1 %i.hl, label %bb.bi, label %.loopexit669

bb.bi:                                            ; preds = %bb.bh
  %i.hm = add nuw nsw i32 %i.ee, 1
  %i.hn = add nsw i32 %.1453.lcssa, -3
  br label %.loopexit669

.loopexit669:                                     ; preds = %.lr.ph702.preheader, %bb.bg, %bb.bh, %bb.bi
  %.0469 = phi i32 [ %i.hm, %bb.bi ], [ %i.ef, %bb.bh ], [ %i.eg, %bb.bg ], [ %i.eg, %.lr.ph702.preheader ]
  %.0468 = phi i32 [ 0, %bb.bi ], [ 0, %bb.bh ], [ %i.gz, %bb.bg ], [ %i.gz, %.lr.ph702.preheader ] ; 2 uses
  %.2454 = phi i32 [ %i.hn, %bb.bi ], [ %.1453.lcssa, %bb.bh ], [ %i.gy, %bb.bg ], [ %i.gy, %.lr.ph702.preheader ] ; 2 uses
  %.0451 = phi i32 [ %i.hk, %bb.bi ], [ %i.hk, %bb.bh ], [ 0, %bb.bg ], [ 0, %.lr.ph702.preheader ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.0507, i64 %i.do
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -2
  %i.hq = and i32 %i.cu, 80
  %.not571 = icmp eq i32 %i.hq, 0                 ; 2 uses
  %i.hr = zext nneg i32 %.0469 to i64
  %i.hs = zext nneg i32 %i.fo to i64
  %i.ht = sub i32 %.0451, %.2454
  br label %bb.bj

bb.bj:                                            ; preds = %bb.by, %.loopexit669
  %indvars.iv751 = phi i32 [ %indvars.iv.next752, %bb.by ], [ %i.ht, %.loopexit669 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.by ], [ %i.hr, %.loopexit669 ] ; 4 uses
  %.0499 = phi ptr [ %.1500, %bb.by ], [ %i.hp, %.loopexit669 ] ; 3 uses
  %.0495 = phi i32 [ %.1496, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0486 = phi i32 [ %.3489, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0480 = phi ptr [ %.2482.lcssa, %bb.by ], [ %i.er, %.loopexit669 ]
  %.1472 = phi i32 [ %.6477, %bb.by ], [ %spec.select598, %.loopexit669 ]
  %.3455 = phi i32 [ %i.js, %bb.by ], [ %.2454, %.loopexit669 ] ; 6 uses
  %i.hu = sub nsw i64 %indvars.iv, %i.hs          ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr %.0485, i64 %i.hu ; 2 uses
  %i.hw = trunc nsw i64 %indvars.iv to i32
  %i.hx = trunc nsw i64 %i.hu to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bs, %bb.bj
  %.1481 = phi ptr [ %.0480, %bb.bj ], [ %.2482.lcssa, %bb.bs ] ; 4 uses
  %.2473 = phi i32 [ %.1472, %bb.bj ], [ %.3474.lcssa, %bb.bs ] ; 2 uses
  %.0458 = phi i16 [ 0, %bb.bj ], [ %i.jb, %bb.bs ] ; 4 uses
  %i.hy = load i16, ptr %.1481, align 2, !tbaa !21 ; 2 uses
  %i.hz = icmp eq i16 %i.hy, 0
  %i.ia = icmp ugt ptr %.1481, %.0485
  %i.ib = and i1 %i.ia, %i.hz
  br i1 %i.ib, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %bb.bk, %.lr.ph707
  %.3474705 = phi i32 [ %i.ic, %.lr.ph707 ], [ %.2473, %bb.bk ]
  %.2482704 = phi ptr [ %i.id, %.lr.ph707 ], [ %.1481, %bb.bk ]
  %i.ic = add nsw i32 %.3474705, -1               ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.2482704, i64 -2 ; 4 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !21 ; 2 uses
  %i.if = icmp eq i16 %i.ie, 0
  %i.ig = icmp ugt ptr %i.id, %.0485
  %i.ih = and i1 %i.ig, %i.if
  br i1 %i.ih, label %.lr.ph707, label %._crit_edge708, !llvm.loop !68

._crit_edge708:                                   ; preds = %.lr.ph707, %bb.bk
  %.lcssa703 = phi i16 [ %i.hy, %bb.bk ], [ %i.ie, %.lr.ph707 ]
  %.2482.lcssa = phi ptr [ %.1481, %bb.bk ], [ %i.id, %.lr.ph707 ] ; 4 uses
  %.3474.lcssa = phi i32 [ %.2473, %bb.bk ], [ %i.ic, %.lr.ph707 ] ; 6 uses
  %i.ii = zext i16 %.lcssa703 to i32
  %i.ij = sext i32 %.3474.lcssa to i64
  %i.ik = icmp sgt i64 %indvars.iv, %i.ij
  br i1 %i.ik, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge708
  %i.il = icmp eq i32 %.3474.lcssa, %i.hw
  br i1 %i.il, label %.preheader667, label %bb.bs

.preheader667:                                    ; preds = %bb.bl, %bb.bo
  %.0437 = phi ptr [ %i.ir, %bb.bo ], [ %.2482.lcssa, %bb.bl ] ; 3 uses
  %.0436.idx = phi i64 [ %.0436.add, %bb.bo ], [ %.add565, %bb.bl ] ; 3 uses
  %.not563 = icmp slt i64 %.0436.idx, 10
  br i1 %.not563, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.preheader667
  %.0436.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.0436.idx
  %i.im = load i16, ptr %.0436.ptr, align 2, !tbaa !21
  %i.in = zext i16 %i.im to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.preheader667
  %.0435 = phi i32 [ %i.in, %bb.bm ], [ 0, %.preheader667 ] ; 3 uses
  %i.io = load i16, ptr %.0437, align 2, !tbaa !21
  %i.ip = zext i16 %i.io to i32                   ; 3 uses
  %.not569 = icmp ne i32 %.0435, %i.ip
  %i.iq = icmp eq ptr %.0437, %.0485
  %or.cond601 = select i1 %.not569, i1 true, i1 %i.iq
  br i1 %or.cond601, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ir = getelementptr inbounds i8, ptr %.0437, i64 -2
  %.0436.add = add nsw i64 %.0436.idx, -2
  br label %.preheader667

bb.bp:                                            ; preds = %bb.bn
  %i.is = icmp samesign ugt i32 %.0435, %i.ip
  br i1 %i.is, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %6 = icmp eq i32 %.0435, %i.ip
  br i1 %6, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.it = add i16 %.0458, 1
  store i16 0, ptr %.0485, align 2, !tbaa !21
  br label %.thread

bb.bs:                                            ; preds = %bb.bl, %bb.bq
  %.0478.sink = phi i32 [ %.0478, %bb.bq ], [ %spec.select599, %bb.bl ]
  %i.iu = mul nuw nsw i32 %i.ii, 1000
  %i.iv = getelementptr inbounds i8, ptr %.2482.lcssa, i64 -2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !21
  %i.ix = zext i16 %i.iw to i32
  %i.iy = add nuw nsw i32 %i.iu, %i.ix
  %i.iz = udiv i32 %i.iy, %.0478.sink
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.iz, i32 1) ; 2 uses
  %i.ja = trunc i32 %spec.store.select to i16
  %i.jb = add i16 %.0458, %i.ja
  %i.jc = sub nsw i32 %.3474.lcssa, %i.hx
  %i.jd = sub nsw i32 0, %spec.store.select
  %i.je = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %i.hv, i32 noundef %i.jc, ptr noundef nonnull %.ptr566, i32 noundef %i.fo, i32 noundef 0, ptr noundef nonnull %i.hv, i32 noundef %i.jd) ; 0 uses
  br label %bb.bk

.thread:                                          ; preds = %bb.bp, %._crit_edge708, %bb.br
  %.6477 = phi i32 [ 1, %bb.br ], [ %.3474.lcssa, %._crit_edge708 ], [ %.3474.lcssa, %bb.bp ] ; 5 uses
  %.3461 = phi i16 [ %i.it, %bb.br ], [ %.0458, %._crit_edge708 ], [ %.0458, %bb.bp ] ; 3 uses
  %i.jf = icmp ne i32 %.0495, 0
  %i.jg = zext i16 %.3461 to i32
  %i.jh = icmp ne i16 %.3461, 0
  %or.cond8 = select i1 %i.jf, i1 true, i1 %i.jh
  br i1 %or.cond8, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.thread
  store i16 %.3461, ptr %.0499, align 2, !tbaa !21
  %7 = icmp eq i32 %.0495, 0
  br i1 %7, label %.preheader668, label %bb.bu

.preheader668:                                    ; preds = %bb.bt, %.preheader668
  %.1487.in = phi i32 [ %.1487, %.preheader668 ], [ %.0486, %bb.bt ]
  %.2443 = phi ptr [ %i.jj, %.preheader668 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %bb.bt ] ; 2 uses
  %.1487 = add nsw i32 %.1487.in, 1               ; 2 uses
  %i.ji = load i32, ptr %.2443, align 4, !tbaa !23
  %.not570 = icmp ugt i32 %i.ji, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %.2443, i64 4
  br i1 %.not570, label %.loopexit, label %.preheader668, !llvm.loop !69

bb.bu:                                            ; preds = %bb.bt
  %i.jk = add nsw i32 %.0486, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader668, %bb.bu
  %.2488 = phi i32 [ %i.jk, %bb.bu ], [ %.1487, %.preheader668 ] ; 3 uses
  %i.jl = add nsw i32 %.0495, 1                   ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %.0499, i64 -2 ; 2 uses
  %i.jn = icmp sgt i32 %.2488, %i.d
  br i1 %i.jn, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %.loopexit, %.thread
  %.1500 = phi ptr [ %i.jm, %.loopexit ], [ %.0499, %.thread ] ; 3 uses
  %.1496 = phi i32 [ %i.jl, %.loopexit ], [ 0, %.thread ] ; 3 uses
  %.3489 = phi i32 [ %.2488, %.loopexit ], [ %.0486, %.thread ] ; 3 uses
  %i.jo = load i16, ptr %.0485, align 2, !tbaa !21
  %i.jp = icmp eq i16 %i.jo, 0
  %i.jq = icmp eq i32 %.6477, 1
  %or.cond10 = and i1 %i.jp, %i.jq
  br i1 %or.cond10, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.not572 = icmp sgt i32 %.3455, %.0451
  %or.cond602 = select i1 %.not553, i1 true, i1 %.not572
  %or.cond608 = select i1 %.not571, i1 %or.cond602, i1 false
  %or.cond608.not = xor i1 %or.cond608, true
  %i.jr = icmp eq i32 %.3455, 0
  %brmerge.not = and i1 %.not553, %i.jr
  %or.cond660 = select i1 %or.cond608.not, i1 true, i1 %brmerge.not
  br i1 %or.cond660, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.old = icmp eq i32 %.3455, 0
  %brmerge.not.old = and i1 %.not553, %.old
  br i1 %brmerge.not.old, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.js = add nsw i32 %.3455, -3
  %indvars.iv.next752 = add i32 %indvars.iv751, 3
  br label %bb.bj

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %.loopexit
  %.3455.lcssa = phi i32 [ 0, %bb.bx ], [ %.3455, %bb.bw ], [ %.3455, %.loopexit ] ; 7 uses
  %.2501 = phi ptr [ %.1500, %bb.bx ], [ %.1500, %bb.bw ], [ %i.jm, %.loopexit ] ; 3 uses
  %.2497 = phi i32 [ %.1496, %bb.bx ], [ %.1496, %bb.bw ], [ %i.jl, %.loopexit ] ; 2 uses
  %.4490 = phi i32 [ %.3489, %bb.bx ], [ %.3489, %bb.bw ], [ %.2488, %.loopexit ]
  %i.jt = icmp eq i32 %.2497, 0
  br i1 %i.jt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i16 0, ptr %.2501, align 2, !tbaa !21
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ju = getelementptr inbounds nuw i8, ptr %.2501, i64 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.3502 = phi ptr [ %.2501, %bb.ca ], [ %i.ju, %bb.cb ] ; 11 uses
  %.3498 = phi i32 [ 1, %bb.ca ], [ %.2497, %bb.cb ]
  %.5491 = phi i32 [ 1, %bb.ca ], [ %.4490, %bb.cb ] ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !23
  br i1 %.not553, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jv = load i16, ptr %.0485, align 2, !tbaa !21
  %i.jw = icmp ne i16 %i.jv, 0
  %i.jx = icmp sgt i32 %.6477, 1
  %or.cond12 = or i1 %i.jw, %i.jx
  br i1 %or.cond12, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 1, ptr %i.c, align 4, !tbaa !23
  br label %.thread620

bb.cf:                                            ; preds = %bb.cd
  %i.jy = load i16, ptr %.3502, align 2, !tbaa !21 ; 2 uses
  %i.jz = zext i16 %i.jy to i32                   ; 3 uses
  %i.ka = and i32 %i.jz, 1
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = icmp ne i16 %i.jy, 0
  %or.cond15 = and i1 %i.kc, %i.kb
  %.not579712 = icmp slt i32 %.3455.lcssa, %.0451
  %or.cond801 = select i1 %or.cond15, i1 %.not579712, i1 false
  br i1 %or.cond801, label %.lr.ph715.preheader, label %.thread620

.lr.ph715.preheader:                              ; preds = %bb.cf
  %wide.trip.count = zext i32 %indvars.iv751 to i64
  br label %.lr.ph715

.lr.ph715:                                        ; preds = %.lr.ph715.preheader, %bb.cg
  %indvars.iv749 = phi i64 [ 0, %.lr.ph715.preheader ], [ %indvars.iv.next750, %bb.cg ] ; 2 uses
  %.4456713 = phi i32 [ %.3455.lcssa, %.lr.ph715.preheader ], [ %i.km, %bb.cg ] ; 2 uses
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 5 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv.next750 to i32
  %i.ke = lshr i32 %i.jz, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %indvars.iv.next750
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !23
  %i.kh = mul i32 %i.kg, %i.ke
  %i.ki = lshr i32 %i.kh, 17
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %indvars.iv.next750
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !23
  %i.kl = mul i32 %i.ki, %i.kk
  %.not580 = icmp eq i32 %i.kl, %i.jz
  br i1 %.not580, label %bb.cg, label %._crit_edge716.split.loop.exit795

bb.cg:                                            ; preds = %.lr.ph715
  %i.km = add nsw i32 %.4456713, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge716, label %.lr.ph715

._crit_edge716.split.loop.exit795:                ; preds = %.lr.ph715
  %i.kn = trunc nuw nsw i64 %indvars.iv749 to i32
  br label %._crit_edge716

._crit_edge716:                                   ; preds = %bb.cg, %._crit_edge716.split.loop.exit795
  %.4456.lcssa = phi i32 [ %.4456713, %._crit_edge716.split.loop.exit795 ], [ %.0451, %bb.cg ] ; 2 uses
  %.0432.lcssa = phi i32 [ %i.kn, %._crit_edge716.split.loop.exit795 ], [ %indvars.iv751, %bb.cg ] ; 2 uses
  %.not581 = icmp eq i32 %.0432.lcssa, 0
  br i1 %.not581, label %.thread620, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge716
  %i.ko = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %.3502, i32 noundef %.3498, i32 noundef %.0432.lcssa)
  %i.kp = call fastcc i32 @decGetDigits(ptr noundef nonnull %.3502, i32 noundef %i.ko)
  br label %.thread620

bb.ci:                                            ; preds = %bb.cc
  %i.kq = add nsw i32 %.5491, %.3455.lcssa
  %i.kr = icmp sgt i32 %i.kq, %i.d
  br i1 %i.kr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ks = load i32, ptr %5, align 4, !tbaa !23
  %i.kt = or i32 %i.ks, 4
  store i32 %i.kt, ptr %5, align 4, !tbaa !23
  br label %bb.db

bb.ck:                                            ; preds = %bb.ci
  br i1 %.not571, label %.thread620, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ku = load i16, ptr %.0485, align 2, !tbaa !21
  %i.kv = icmp eq i16 %i.ku, 0
  %i.kw = icmp eq i32 %.6477, 1
  %or.cond17 = and i1 %i.kv, %i.kw
  br i1 %or.cond17, label %.thread626, label %bb.cm

.thread626:                                       ; preds = %bb.cl
  %spec.select604 = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cn)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.kz, align 2, !tbaa !21
  store i32 %spec.select604, ptr %i.ky, align 4, !tbaa !18
  %i.la = and i8 %i.f, -128
  store i8 %i.la, ptr %i.kx, align 4, !tbaa !17
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %bb.db

bb.cm:                                            ; preds = %bb.cl
  %i.lb = load i16, ptr %.3502, align 2, !tbaa !21
  %.not574 = trunc i16 %i.lb to i1
  %i.lc = sub i32 %i.cp, %i.cn
  %i.ld = add i32 %i.lc, %.0468
  %i.le = add i32 %i.ld, %.3455.lcssa
  %.0431 = call i32 @llvm.smin.i32(i32 %.0468, i32 %i.le)
  %i.lf = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %.0485, i32 noundef %.6477, i32 noundef %.0431)
  %i.lg = call fastcc i32 @decGetDigits(ptr noundef nonnull %.0485, i32 noundef %i.lf) ; 5 uses
  %i.lh = icmp slt i32 %i.lg, 50
  br i1 %i.lh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.li = sext i32 %i.lg to i64
  %i.lj = getelementptr inbounds i8, ptr @d2utable, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !24
  %i.ll = zext i8 %i.lk to i32
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.lm = add nuw nsw i32 %i.lg, 2
  %i.ln = udiv i32 %i.lm, 3
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.lo = phi i32 [ %i.ll, %bb.cn ], [ %i.ln, %bb.co ] ; 3 uses
  %spec.select605 = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cn) ; 5 uses
  %i.lp = and i32 %i.cu, 16
  %.not575 = icmp eq i32 %i.lp, 0
end_hunk_2
