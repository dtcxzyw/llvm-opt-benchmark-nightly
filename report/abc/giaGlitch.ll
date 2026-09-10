Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaGlitch?download=true
inline.NumInlined: 137
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Gli_ManCreateCo:bb.a
Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.av, align 8, !tbaa !19
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.bq = phi i32 [ %i.ay, %bb.a ], [ %i.ay, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bt = add nsw i32 %i.bq, 1
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !18
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !32
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !31
  ret i32 %i.bw
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gli_ManCreateNode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val18 = load i32, ptr %i.a, align 4, !tbaa !18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.e ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 %i.c, ptr %i.g, align 4, !tbaa !31
  %i.h = load i32, ptr %i.f, align 8
  %i.i = shl i32 %.val18, 4
  %i.j = and i32 %i.h, 15
  %i.k = shl i32 %2, 7
  %.masked.i = and i32 %i.i, 112
  %i.l = or disjoint i32 %.masked.i, %i.j
  %i.m = or disjoint i32 %i.l, %i.k
  store i32 %i.m, ptr %i.f, align 8
  %i.n = and i32 %.val18, 7
  %i.o = and i32 %2, 33554431
  %i.p = load i32, ptr %i.b, align 4, !tbaa !35
  %i.q = add nuw nsw i32 %i.o, 8
  %narrow.i.i = add nuw nsw i32 %i.q, %i.n
  %i.r = add nsw i32 %narrow.i.i, %i.p
  store i32 %i.r, ptr %i.b, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !36
  %.val1720 = load i32, ptr %i.a, align 4, !tbaa !18
  %i.v = icmp sgt i32 %.val1720, 0
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val19 = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ab ; 4 uses
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = sub i32 %i.ad, %i.af                    ; 2 uses
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !34  ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !34
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.am = load i32, ptr %i.ac, align 8
  %i.an = lshr i32 %i.am, 4
  %i.ao = and i32 %i.an, 7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !34
  %i.as = add nsw i32 %i.ao, %i.aq
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at
  store i32 %i.ag, ptr %i.au, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val17 = load i32, ptr %i.a, align 4, !tbaa !18
  %i.av = sext i32 %.val17 to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.b, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.ax, align 8, !tbaa !37
  %i.ay = load i32, ptr %i.f, align 8             ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = and i32 %i.az, 7                        ; 7 uses
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %Gli_NodeComputeValue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = and i32 %i.bh, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !32
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = and i32 %i.bo, 2
  %i.bq = or disjoint i32 %i.bp, %i.bi            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ba, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = shl i32 %i.bw, 1
  %i.by = and i32 %i.bx, 4
  %i.bz = or disjoint i32 %i.by, %i.bq            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.ba, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = shl i32 %i.cf, 2
  %i.ch = and i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.bz            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.ba, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32
  %i.cl = sext i32 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = shl i32 %i.co, 3
  %i.cq = and i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, %i.ci            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.ba, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !32
  %i.cu = sext i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = shl i32 %i.cx, 4
  %i.cz = and i32 %i.cy, 32
  %i.da = or disjoint i32 %i.cz, %i.cr            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.ba, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32
  %i.dd = sext i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = shl i32 %i.dg, 5
  %i.di = and i32 %i.dh, 64
  %i.dj = or i32 %i.di, %i.da
  br label %Gli_NodeComputeValue.exit

Gli_NodeComputeValue.exit:                        ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %.critedge
  %.0.lcssa.i = phi i32 [ 0, %.critedge ], [ %i.bi, %.lr.ph.i ], [ %i.bq, %bb.d ], [ %i.bz, %bb.e ], [ %i.ci, %bb.f ], [ %i.cr, %bb.g ], [ %i.da, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %4 = lshr i32 %.0.lcssa.i, 5
  %5 = zext nneg i32 %4 to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = and i32 %.0.lcssa.i, 31
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = and i32 %i.dn, 1                        ; 2 uses
  %i.dp = shl nuw nsw i32 %i.do, 2
  %i.dq = and i32 %i.ay, -7
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = shl nuw nsw i32 %i.do, 1
  %i.dt = or disjoint i32 %i.dr, %i.ds
  store i32 %i.dt, ptr %i.f, align 8
  %i.du = load i32, ptr %i.g, align 4, !tbaa !31
  ret i32 %i.du
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gli_ObjNumSwitches(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gli_ObjNumGlitches(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define void @Gli_ManSetPiRandom(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val1517 = load i32, ptr %i.e, align 4, !tbaa !18
  %i.f = icmp sgt i32 %.val1517, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.az, %bb.n ]
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16 = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.l ; 4 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @Gia_ManRandom(i32 noundef 0) #26
  %i.o = and i32 %i.n, 65535
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = fmul nnan float %i.p, f0x37800000
  %i.r = fcmp olt float %i.q, %1
  br i1 %i.r, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18   ; 7 uses
  %i.x = load i32, ptr %i.s, align 8, !tbaa !19
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.af = icmp samesign ult i32 %i.w, 1073741823
  %i.ag = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.al, %bb.k ], [ %i.am, %bb.l ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.s, align 8, !tbaa !19
  %.pre = load i32, ptr %i.v, align 4, !tbaa !18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.ao = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.i ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !18
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %i.u, ptr %i.at, align 4, !tbaa !32
  %i.au = load i32, ptr %i.m, align 8
  %i.av = xor i32 %i.au, 6
  store i32 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !34
  %i.ay = add nsw <2 x i32> %i.ax, splat (i32 1)
  store <2 x i32> %i.ay, ptr %i.aw, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val15 = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bb = sext i32 %.val15 to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.b, label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %bb.b, %bb.n, %bb.a
  ret void
}

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gli_ManSetPiFromSaved(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val1820 = load i32, ptr %i.e, align 4, !tbaa !18
  %i.f = icmp sgt i32 %.val1820, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = shl nuw i32 1, %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val19 = load ptr, ptr %i.k, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@Gli_ManSetPiFromSaved:bb.a
  br label %Vec_IntGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %bb.h ]
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.aj = icmp samesign ult i32 %i.aa, 1073741823
  %i.ak = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.am, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ao) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ %i.ap, %bb.k ], [ %i.aq, %bb.l ]
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.w, align 8, !tbaa !19
  %.pre = load i32, ptr %i.z, align 4, !tbaa !18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.as = phi i32 [ %i.aa, %bb.d ], [ %i.aa, %bb.i ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = add nsw i32 %i.as, 1
  store i32 %i.av, ptr %i.z, align 4, !tbaa !18
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.y, ptr %i.ax, align 4, !tbaa !32
  %i.ay = load i32, ptr %i.o, align 8
  %i.az = xor i32 %i.ay, 6
  store i32 %i.az, ptr %i.o, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.ba, align 4, !tbaa !34
  %i.bc = add nsw <2 x i32> %i.bb, splat (i32 1)
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !34
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %i.bd = phi ptr [ %i.j, %bb.c ], [ %.pre24, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val18 = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bf = sext i32 %.val18 to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.b, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %bb.b, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gli_ManSwitching(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.e = phi i32 [ %i.ch, %bb.k ], [ %i.c, %bb.a ] ; 2 uses
  %.014 = phi i32 [ %i.cm, %bb.k ], [ 0, %bb.a ]  ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.f = zext nneg i32 %.014 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.f ; 18 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val13 = load i32, ptr %i.g, align 8           ; 6 uses
  %i.h = and i32 %.val13, 1
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = lshr exact i32 %.val13, 1
  %i.j = lshr i32 %.val13, 4
  %i.k = and i32 %i.j, 7                          ; 7 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %Gli_NodeComputeValue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 1
  %i.s = and i32 %i.r, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.w
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, %i.s              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.k, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = shl i32 %i.ag, 1
  %i.ai = and i32 %i.ah, 4
  %i.aj = or disjoint i32 %i.ai, %i.aa            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.k, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !32
  %i.am = sext i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = shl i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.aj            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.k, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = shl i32 %i.ay, 3
  %i.ba = and i32 %i.az, 16
  %i.bb = or disjoint i32 %i.ba, %i.as            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.k, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !32
  %i.be = sext i32 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = shl i32 %i.bh, 4
  %i.bj = and i32 %i.bi, 32
  %i.bk = or disjoint i32 %i.bj, %i.bb            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.k, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = shl i32 %i.bq, 5
  %i.bs = and i32 %i.br, 64
  %i.bt = or i32 %i.bs, %i.bk
  br label %Gli_NodeComputeValue.exit

Gli_NodeComputeValue.exit:                        ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.s, %.lr.ph.i ], [ %i.aa, %bb.d ], [ %i.aj, %bb.e ], [ %i.as, %bb.f ], [ %i.bb, %bb.g ], [ %i.bk, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37
  %1 = lshr i32 %.0.lcssa.i, 5
  %2 = zext nneg i32 %1 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = and i32 %.0.lcssa.i, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = xor i32 %i.bz, %i.i
  %i.cb = and i32 %i.ca, 1
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Gli_NodeComputeValue.exit
  %i.cd = xor i32 %.val13, 2                      ; 2 uses
  store i32 %i.cd, ptr %i.g, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !34
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !34
  %.pre = load i32, ptr %i.b, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %Gli_NodeComputeValue.exit
  %i.ch = phi i32 [ %.pre, %bb.j ], [ %i.e, %bb.b ], [ %i.e, %Gli_NodeComputeValue.exit ] ; 2 uses
  %.val12 = phi i32 [ %i.cd, %bb.j ], [ %.val13, %bb.b ], [ %.val13, %Gli_NodeComputeValue.exit ] ; 2 uses
  %i.ci = lshr i32 %.val12, 4
  %i.cj = and i32 %i.ci, 7
  %i.ck = lshr i32 %.val12, 7
  %i.cl = add nuw nsw i32 %.014, 8
  %narrow.i = add nuw nsw i32 %i.cl, %i.ck
  %i.cm = add nuw nsw i32 %narrow.i, %i.cj        ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ch
  br i1 %i.cn, label %.lr.ph, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gli_ManGlitching(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val5678 = load i32, ptr %i.f, align 4, !tbaa !18
  %i.g = icmp sgt i32 %.val5678, 0
  br i1 %i.g, label %.lr.ph, label %.critedge._crit_edge

.critedge.preheader:                              ; preds = %Vec_IntPush.exit
  %.pre103 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre103, i64 4
  %.val5592.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  %i.h = icmp sgt i32 %.val5592.pre, 0
  br i1 %i.h, label %.lr.ph93, label %.critedge._crit_edge

.lr.ph93:                                         ; preds = %.critedge.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.pre105 = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a, %Vec_IntPush.exit
  %i.k = phi ptr [ %i.ai, %Vec_IntPush.exit ], [ %i.e, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val59 = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18   ; 7 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !19
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.w, %bb.d ], [ %i.x, %bb.e ]
  store ptr %i.y, ptr %i.u, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i32 %i.q, 1073741823
  %i.aa = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.o, align 8, !tbaa !19
  %.pre = load i32, ptr %i.p, align 4, !tbaa !18
  %.pre102 = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.ai = phi ptr [ %i.k, %.lr.ph ], [ %i.k, %bb.f ], [ %.pre102, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aj = phi i32 [ %i.q, %.lr.ph ], [ %i.q, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.p, align 4, !tbaa !18
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.n, ptr %i.ao, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ai, i64 4
  %.val56 = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.aq = sext i32 %.val56 to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge.preheader, !llvm.loop !45

bb.k:                                             ; preds = %.lr.ph93, %.critedge6
  %i.as = phi ptr [ %.pre103, %.lr.ph93 ], [ %i.hx, %.critedge6 ] ; 5 uses
  %i.at = phi ptr [ %.pre105, %.lr.ph93 ], [ %i.hy, %.critedge6 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !18
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %.val5483 = load i32, ptr %i.av, align 4, !tbaa !18
  %i.aw = icmp sgt i32 %.val5483, 0
  br i1 %i.aw, label %.lr.ph85, label %.critedge2

.lr.ph85:                                         ; preds = %bb.k, %.critedge4
  %i.ax = phi ptr [ %i.cy, %.critedge4 ], [ %i.as, %bb.k ] ; 2 uses
  %i.ay = phi ptr [ %i.cz, %.critedge4 ], [ %i.as, %bb.k ] ; 3 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.critedge4 ], [ 0, %bb.k ] ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val58 = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val58, i64 %indvars.iv96
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.val52 = load ptr, ptr %i.j, align 8, !tbaa !27 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val52, i64 %i.bc ; 4 uses
  %.not = icmp eq ptr %.val52, null
  br i1 %.not, label %.critedge2.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph85
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %.not94 = icmp ult i32 %i.be, 128
  br i1 %.not94, label %.critedge4, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph81, %bb.w
  %i.bg = phi i32 [ %i.be, %.lr.ph81 ], [ %i.cu, %bb.w ] ; 2 uses
  %.080 = phi i32 [ 0, %.lr.ph81 ], [ %i.cv, %bb.w ] ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = and i32 %i.bh, 7
  %i.bj = add nuw nsw i32 %i.bi, %.080
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bn ; 3 uses
  %.val60 = load i32, ptr %i.bo, align 8          ; 3 uses
  %i.bp = and i32 %.val60, 113
  %narrow.i = icmp ne i32 %i.bp, 17
  %i.bq = and i32 %.val60, 8
  %.not51 = icmp eq i32 %i.bq, 0
  %or.cond = and i1 %narrow.i, %.not51
end_hunk_1
begin_hunk_2_@Gli_ManGlitching:bb.a

bb.r:                                             ; preds = %bb.n
  %i.cf = icmp samesign ult i32 %i.bw, 1073741823
  %i.cg = shl nuw nsw i32 %i.bw, 1
  %spec.select.i61 = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 3 uses
  %.not.i9.i62 = icmp samesign ult i32 %i.bw, %spec.select.i61
  br i1 %.not.i9.i62, label %bb.s, label %Vec_IntPush.exit68

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i63 = icmp eq ptr %i.ci, null
  %i.cj = zext nneg i32 %spec.select.i61 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  br i1 %.not9.i10.i63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef %i.ck) #27
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = phi ptr [ %i.cl, %bb.t ], [ %i.cm, %bb.u ]
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i64

Vec_IntGrow.exit11.sink.split.i64:                ; preds = %bb.v, %Vec_IntGrow.exit.i67
  %spec.select.sink.i65 = phi i32 [ %spec.select.i61, %bb.v ], [ 16, %Vec_IntGrow.exit.i67 ]
  store i32 %spec.select.sink.i65, ptr %i.bs, align 8, !tbaa !19
  %.pre106 = load i32, ptr %i.bv, align 4, !tbaa !18
  br label %Vec_IntPush.exit68

Vec_IntPush.exit68:                               ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i64
  %i.co = phi i32 [ %i.bw, %bb.m ], [ %i.bw, %bb.r ], [ %.pre106, %Vec_IntGrow.exit11.sink.split.i64 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = add nsw i32 %i.co, 1
  store i32 %i.cr, ptr %i.bv, align 4, !tbaa !18
  %i.cs = sext i32 %i.co to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs
  store i32 %i.bu, ptr %i.ct, align 4, !tbaa !32
  %.pre107 = load i32, ptr %i.bd, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %Vec_IntPush.exit68
  %i.cu = phi i32 [ %i.bg, %bb.l ], [ %.pre107, %Vec_IntPush.exit68 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.080, 1                ; 2 uses
  %i.cw = lshr i32 %i.cu, 7
  %i.cx = icmp samesign ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.l, label %.critedge4.loopexit, !llvm.loop !46

.critedge4.loopexit:                              ; preds = %bb.w
  %.pre108 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader
  %i.cy = phi ptr [ %.pre108, %.critedge4.loopexit ], [ %i.ax, %.preheader ] ; 2 uses
  %i.cz = phi ptr [ %.pre108, %.critedge4.loopexit ], [ %i.ay, %.preheader ] ; 3 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %.val54 = load i32, ptr %i.da, align 4, !tbaa !18
  %i.db = sext i32 %.val54 to i64
  %i.dc = icmp slt i64 %indvars.iv.next97, %i.db
  br i1 %i.dc, label %.lr.ph85, label %.critedge2.loopexit, !llvm.loop !47

.critedge2.loopexit:                              ; preds = %.critedge4, %.lr.ph85
  %i.dd = phi ptr [ %i.ax, %.lr.ph85 ], [ %i.cy, %.critedge4 ]
  %.lcssa82.ph = phi ptr [ %i.ay, %.lr.ph85 ], [ %i.cz, %.critedge4 ]
  %.pre109 = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.k
  %i.de = phi ptr [ %i.as, %bb.k ], [ %i.dd, %.critedge2.loopexit ]
  %i.df = phi ptr [ %i.at, %bb.k ], [ %.pre109, %.critedge2.loopexit ] ; 3 uses
  %.lcssa82 = phi ptr [ %i.as, %bb.k ], [ %.lcssa82.ph, %.critedge2.loopexit ]
  %i.dg = getelementptr i8, ptr %.lcssa82, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !18
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %.val5388 = load i32, ptr %i.dh, align 4, !tbaa !18
  %i.di = icmp sgt i32 %.val5388, 0
  br i1 %i.di, label %.lr.ph90, label %.critedge6

.lr.ph90:                                         ; preds = %.critedge2, %bb.ao
  %i.dj = phi ptr [ %i.hs, %bb.ao ], [ %i.df, %.critedge2 ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.ao ], [ 0, %.critedge2 ] ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val57 = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv99
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %.val = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.dn ; 20 uses
  %.not49 = icmp eq ptr %.val, null
  br i1 %.not49, label %.critedge6.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph90
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, -9                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8
  %i.dr = lshr i32 %i.dp, 2
  %i.ds = lshr i32 %i.dp, 4
  %i.dt = and i32 %i.ds, 7                        ; 7 uses
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %Gli_NodeComputeValue2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  %i.dw = sext i32 %i.dv to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = lshr i32 %i.dz, 2
  %i.eb = and i32 %i.ea, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dt, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue2.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !32
  %i.ee = sext i32 %i.ed to i64
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = and i32 %i.ei, 2
  %i.ek = or disjoint i32 %i.ej, %i.eb            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.dt, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue2.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32
  %i.en = sext i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = and i32 %i.eq, 4
  %i.es = or disjoint i32 %i.er, %i.ek            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.dt, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue2.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !32
  %i.ev = sext i32 %i.eu to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = shl i32 %i.ey, 1
  %i.fa = and i32 %i.ez, 8
  %i.fb = or disjoint i32 %i.fa, %i.es            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.dt, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue2.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !32
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = shl i32 %i.fh, 2
  %i.fj = and i32 %i.fi, 16
  %i.fk = or disjoint i32 %i.fj, %i.fb            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.dt, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue2.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !32
  %i.fn = sext i32 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = shl i32 %i.fq, 3
  %i.fs = and i32 %i.fr, 32
  %i.ft = or disjoint i32 %i.fs, %i.fk            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.dt, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue2.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32
  %i.fw = sext i32 %i.fv to i64
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = shl i32 %i.fz, 4
  %i.gb = and i32 %i.ga, 64
  %i.gc = or i32 %i.gb, %i.ft
  br label %Gli_NodeComputeValue2.exit

Gli_NodeComputeValue2.exit:                       ; preds = %.lr.ph.i, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.x
  %.0.lcssa.i = phi i32 [ 0, %bb.x ], [ %i.eb, %.lr.ph.i ], [ %i.ek, %bb.y ], [ %i.es, %bb.z ], [ %i.fb, %bb.aa ], [ %i.fk, %bb.ab ], [ %i.ft, %bb.ac ], [ %i.gc, %bb.ad ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !37
  %1 = lshr i32 %.0.lcssa.i, 5
  %2 = zext nneg i32 %1 to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %2
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !32
  %i.gh = and i32 %.0.lcssa.i, 31
  %i.gi = lshr i32 %i.gg, %i.gh
  %i.gj = xor i32 %i.gi, %i.dr
  %i.gk = and i32 %i.gj, 1
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %Gli_NodeComputeValue2.exit
  %i.gm = xor i32 %i.dq, 4
  store i32 %i.gm, ptr %i.do, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !34
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !34
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !24  ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !18 ; 7 uses
  %i.gv = load i32, ptr %i.gq, align 8, !tbaa !19
  %i.gw = icmp eq i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.af, label %Vec_IntPush.exit76

bb.af:                                            ; preds = %bb.ae
  %i.gx = icmp slt i32 %i.gu, 16
  br i1 %i.gx, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i74 = icmp eq ptr %i.gz, null
  br i1 %.not9.i.i74, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ha = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gz, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i75

bb.ai:                                            ; preds = %bb.ag
  %i.hb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i75

Vec_IntGrow.exit.i75:                             ; preds = %bb.ai, %bb.ah
  %i.hc = phi ptr [ %i.ha, %bb.ah ], [ %i.hb, %bb.ai ]
  store ptr %i.hc, ptr %i.gy, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i72

bb.aj:                                            ; preds = %bb.af
  %i.hd = icmp samesign ult i32 %i.gu, 1073741823
  %i.he = shl nuw nsw i32 %i.gu, 1
  %spec.select.i69 = select i1 %i.hd, i32 %i.he, i32 2147483647 ; 3 uses
  %.not.i9.i70 = icmp samesign ult i32 %i.gu, %spec.select.i69
  br i1 %.not.i9.i70, label %bb.ak, label %Vec_IntPush.exit76

bb.ak:                                            ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i71 = icmp eq ptr %i.hg, null
  %i.hh = zext nneg i32 %spec.select.i69 to i64
  %i.hi = shl nuw nsw i64 %i.hh, 2                ; 2 uses
  br i1 %.not9.i10.i71, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hj = tail call ptr @realloc(ptr noundef nonnull %i.hg, i64 noundef %i.hi) #27
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.hi) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hl = phi ptr [ %i.hj, %bb.al ], [ %i.hk, %bb.am ]
  store ptr %i.hl, ptr %i.hf, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i72

Vec_IntGrow.exit11.sink.split.i72:                ; preds = %bb.an, %Vec_IntGrow.exit.i75
  %spec.select.sink.i73 = phi i32 [ %spec.select.i69, %bb.an ], [ 16, %Vec_IntGrow.exit.i75 ]
  store i32 %spec.select.sink.i73, ptr %i.gq, align 8, !tbaa !19
  %.pre110 = load i32, ptr %i.gt, align 4, !tbaa !18
  br label %Vec_IntPush.exit76

Vec_IntPush.exit76:                               ; preds = %bb.ae, %bb.aj, %Vec_IntGrow.exit11.sink.split.i72
  %i.hm = phi i32 [ %i.gu, %bb.ae ], [ %i.gu, %bb.aj ], [ %.pre110, %Vec_IntGrow.exit11.sink.split.i72 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !20
  %i.hp = add nsw i32 %i.hm, 1
  store i32 %i.hp, ptr %i.gt, align 4, !tbaa !18
  %i.hq = sext i32 %i.hm to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hq
  store i32 %i.gs, ptr %i.hr, align 4, !tbaa !32
  br label %bb.ao

bb.ao:                                            ; preds = %Gli_NodeComputeValue2.exit, %Vec_IntPush.exit76
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.hs = load ptr, ptr %i.i, align 8, !tbaa !25  ; 3 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %.val53 = load i32, ptr %i.ht, align 4, !tbaa !18
  %i.hu = sext i32 %.val53 to i64
  %i.hv = icmp slt i64 %indvars.iv.next100, %i.hu
  br i1 %i.hv, label %.lr.ph90, label %.critedge6.loopexit, !llvm.loop !48

.critedge6.loopexit:                              ; preds = %bb.ao, %.lr.ph90
  %i.hw = phi ptr [ %i.hs, %bb.ao ], [ %i.dj, %.lr.ph90 ]
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge2
  %i.hx = phi ptr [ %.pre111, %.critedge6.loopexit ], [ %i.de, %.critedge2 ] ; 2 uses
  %i.hy = phi ptr [ %i.hw, %.critedge6.loopexit ], [ %i.df, %.critedge2 ]
  %i.hz = getelementptr i8, ptr %i.hx, i64 4
  %.val55 = load i32, ptr %i.hz, align 4, !tbaa !18
  %i.ia = icmp sgt i32 %.val55, 0
  br i1 %i.ia, label %bb.k, label %.critedge._crit_edge, !llvm.loop !49

.critedge._crit_edge:                             ; preds = %.critedge6, %bb.a, %.critedge.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @Gli_ManVerify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
.critedge:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gli_ManSimulateSeqNode(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val = load i32, ptr %1, align 8
  %i.b = lshr i32 %.val, 4                        ; 2 uses
  %i.c = and i32 %i.b, 7                          ; 9 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge.preheader.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  store i32 %i.j, ptr %i.a, align 16, !tbaa !32
  %exitcond.not = icmp eq i32 %i.c, 1
  br i1 %exitcond.not, label %.preheader.us.preheader, label %bb.b

.preheader.us.preheader:                          ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.c, 1
  %unroll_iter = and i64 %wide.trip.count, 6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = trunc i32 %i.b to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.12334.us = phi i32 [ %i.ao, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.02433.us = phi i32 [ %.125.us, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %i.n = shl nuw i32 1, %.12334.us                ; 4 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.031.us = phi i32 [ %.1.us.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv46
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %i.q = and i32 %i.p, %i.n
  %.not28.us = icmp eq i32 %i.q, 0
  %i.r = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = select i1 %.not28.us, i32 0, i32 %i.s
  %.1.us = or i32 %i.t, %.031.us
  %indvars.iv.next47 = or disjoint i64 %indvars.iv46, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next47
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = and i32 %i.v, %i.n
  %.not28.us.1 = icmp eq i32 %i.w, 0
  %i.x = trunc nuw nsw i64 %indvars.iv.next47 to i32
  %i.y = shl nuw nsw i32 1, %i.x
  %i.z = select i1 %.not28.us.1, i32 0, i32 %i.y
  %.1.us.1 = or i32 %i.z, %.1.us                  ; 3 uses
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !2

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv46.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next47.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.031.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv46.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = and i32 %i.ab, %i.n
end_hunk_2
begin_hunk_3_@Gli_ManSimulateSeqPref:bb.a
.lr.ph172:                                        ; preds = %._crit_edge._crit_edge
  %.val = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not86 = icmp eq ptr %.val, null
  br i1 %.not86, label %.critedge12, label %.lr.ph172.split

.lr.ph172.split:                                  ; preds = %.lr.ph172
  %i.jy = getelementptr i8, ptr %i.jn, i64 8
  %.val96 = load ptr, ptr %i.jy, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph172.split, %bb.o
  %indvars.iv192 = phi i64 [ 0, %.lr.ph172.split ], [ %indvars.iv.next193, %bb.o ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv192
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !32
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !38
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv192
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !32
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %.val95 = load i32, ptr %i.jw, align 4, !tbaa !18
  %i.kg = sext i32 %.val95 to i64
  %i.kh = icmp slt i64 %indvars.iv.next193, %i.kg
  br i1 %i.kh, label %bb.o, label %.critedge12, !llvm.loop !58

.critedge12:                                      ; preds = %bb.o, %.lr.ph172, %._crit_edge._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gli_ManSetDataSaved(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val2831 = load i32, ptr %i.c, align 4, !tbaa !18
  %i.d = icmp sgt i32 %.val2831, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.c ]
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %.val26, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val29 = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %.val26, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = lshr i32 %i.n, %1
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = load i32, ptr %i.k, align 8
  %i.r = shl nuw nsw i32 %i.p, 2
  %i.s = and i32 %i.q, -7
  %i.t = or disjoint i32 %i.r, %i.s
  %i.u = shl nuw nsw i32 %i.p, 1
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.k, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val28 = load i32, ptr %i.x, align 4, !tbaa !18
  %i.y = sext i32 %.val28 to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %.critedge, !llvm.loop !60

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph35, label %.critedge2

.lr.ph35:                                         ; preds = %.critedge, %bb.l
  %i.ad = phi i32 [ %i.de, %bb.l ], [ %i.ab, %.critedge ]
  %.134 = phi i32 [ %i.dj, %bb.l ], [ 0, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ae = zext nneg i32 %.134 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ae ; 17 uses
  %.not24 = icmp eq ptr %.val, null
  br i1 %.not24, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph35
  %.val30 = load i32, ptr %i.af, align 8          ; 4 uses
  %i.ag = and i32 %.val30, 1
  %.not25 = icmp eq i32 %i.ag, 0
  br i1 %.not25, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i32 %.val30, 4
  %i.ai = and i32 %i.ah, 7                        ; 7 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %Gli_NodeComputeValue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, 2
  %i.ay = or disjoint i32 %i.ax, %i.aq            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ai, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = shl i32 %i.be, 1
  %i.bg = and i32 %i.bf, 4
  %i.bh = or disjoint i32 %i.bg, %i.ay            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.ai, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = shl i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 8
  %i.bq = or disjoint i32 %i.bp, %i.bh            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.ai, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = shl i32 %i.bw, 3
  %i.by = and i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bq            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.ai, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = shl i32 %i.cf, 4
  %i.ch = and i32 %i.cg, 32
  %i.ci = or disjoint i32 %i.ch, %i.bz            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.ai, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32
  %i.cl = sext i32 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = shl i32 %i.co, 5
  %i.cq = and i32 %i.cp, 64
  %i.cr = or i32 %i.cq, %i.ci
  br label %Gli_NodeComputeValue.exit

Gli_NodeComputeValue.exit:                        ; preds = %.lr.ph.i, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.e
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.aq, %.lr.ph.i ], [ %i.ay, %bb.f ], [ %i.bh, %bb.g ], [ %i.bq, %bb.h ], [ %i.bz, %bb.i ], [ %i.ci, %bb.j ], [ %i.cr, %bb.k ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !37
  %2 = lshr i32 %.0.lcssa.i, 5
  %3 = zext nneg i32 %2 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %3
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = and i32 %.0.lcssa.i, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = and i32 %i.cx, 1                        ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cy, 2
  %i.da = and i32 %.val30, -8
  %i.db = or disjoint i32 %i.cz, %i.da
  %i.dc = shl nuw nsw i32 %i.cy, 1
  %i.dd = or disjoint i32 %i.db, %i.dc            ; 2 uses
  store i32 %i.dd, ptr %i.af, align 8
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %Gli_NodeComputeValue.exit, %bb.d
  %i.de = phi i32 [ %.pre, %Gli_NodeComputeValue.exit ], [ %i.ad, %bb.d ] ; 2 uses
  %.val27 = phi i32 [ %i.dd, %Gli_NodeComputeValue.exit ], [ %.val30, %bb.d ] ; 2 uses
  %i.df = lshr i32 %.val27, 4
  %i.dg = and i32 %i.df, 7
  %i.dh = lshr i32 %.val27, 7
  %i.di = add nuw nsw i32 %.134, 8
  %narrow.i = add nuw nsw i32 %i.di, %i.dh
  %i.dj = add nuw nsw i32 %narrow.i, %i.dg        ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.de
  br i1 %i.dk, label %.lr.ph35, label %.critedge2, !llvm.loop !61

.critedge2:                                       ; preds = %.lr.ph35, %bb.l, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gli_ManSetPiRandomSeq(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val5175 = load i32, ptr %i.d, align 4, !tbaa !18
  %i.e = icmp sgt i32 %.val5175, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.z, %bb.b ], [ %i.c, %bb.a ]
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val52 = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 1
  %i.s = and i32 %i.r, 1                          ; 2 uses
  %i.t = load i32, ptr %i.k, align 8
  %i.u = shl nuw nsw i32 %i.s, 2
  %i.v = and i32 %i.t, -7
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = shl nuw nsw i32 %i.s, 1
  %i.y = or disjoint i32 %i.w, %i.x
  store i32 %i.y, ptr %i.k, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val51 = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ab = sext i32 %.val51 to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !18
  %i.ag = getelementptr i8, ptr %0, i64 44        ; 3 uses
  %.val5578 = load ptr, ptr %0, align 8, !tbaa !21 ; 2 uses
  %.val5679 = load i32, ptr %i.ag, align 4, !tbaa !16 ; 3 uses
  %i.ah = getelementptr i8, ptr %.val5578, i64 4
  %.val55.val80 = load i32, ptr %i.ah, align 4, !tbaa !18
  %i.ai = icmp sgt i32 %.val55.val80, %.val5679
  br i1 %i.ai, label %.lr.ph83.preheader, label %.critedge2

.lr.ph83.preheader:                               ; preds = %.critedge
  %.val60108 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.not47110 = icmp eq ptr %.val60108, null
  br i1 %.not47110, label %.critedge2, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph83.preheader
  %i.aj = getelementptr i8, ptr %.val5578, i64 8
  %.val59.val109 = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.ak = load i32, ptr %.val59.val109, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val60108, i64 %i.al
  br label %bb.c

.lr.ph83:                                         ; preds = %bb.n
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.an = getelementptr i8, ptr %.val55, i64 8
  %.val59.val = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val59.val, i64 %indvars.iv.next93
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.aq
  %.not47 = icmp eq ptr %.val60, null
  br i1 %.not47, label %.critedge2, label %bb.c, !llvm.loop !63

bb.c:                                             ; preds = %.lr.ph112, %.lr.ph83
  %i.as = phi ptr [ %i.am, %.lr.ph112 ], [ %i.ar, %.lr.ph83 ] ; 4 uses
  %indvars.iv92111 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next93, %.lr.ph83 ]
  %i.at = tail call i32 @Gia_ManRandom(i32 noundef 0) #26
  %i.au = and i32 %i.at, 65535
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x37800000
  %i.ax = fcmp olt float %i.aw, %1
  br i1 %i.ax, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18 ; 7 uses
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !19
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bf = icmp slt i32 %i.bc, 16
  br i1 %i.bf, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.bk = phi ptr [ %i.bi, %bb.g ], [ %i.bj, %bb.h ]
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bl = icmp samesign ult i32 %i.bc, 1073741823
  %i.bm = shl nuw nsw i32 %i.bc, 1
  %spec.select.i = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bc, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %spec.select.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = tail call ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef %i.bq) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bt = phi ptr [ %i.br, %bb.k ], [ %i.bs, %bb.l ]
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ay, align 8, !tbaa !19
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.bu = phi i32 [ %i.bc, %bb.d ], [ %i.bc, %bb.i ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.bx = add nsw i32 %i.bu, 1
  store i32 %i.bx, ptr %i.bb, align 4, !tbaa !18
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by
  store i32 %i.ba, ptr %i.bz, align 4, !tbaa !32
end_hunk_3
begin_hunk_4_@Gli_ManSetPiRandomSeq:bb.a
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !34
  %i.el = add nsw <2 x i32> %i.ek, splat (i32 1)
  store <2 x i32> %i.el, ptr %i.ej, align 4, !tbaa !34
  %.val61.pre = load i32, ptr %i.ag, align 4, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %Vec_IntPush.exit73
  %.val61 = phi i32 [ %.val6199, %bb.o ], [ %.val61.pre, %Vec_IntPush.exit73 ] ; 2 uses
  %i.em = add nuw nsw i32 %.287, 1                ; 2 uses
  %i.en = icmp slt i32 %i.em, %.val61
  br i1 %i.en, label %.lr.ph89, label %.critedge4, !llvm.loop !64

.critedge4:                                       ; preds = %bb.z, %.lr.ph89, %.critedge2
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gli_ManSwitchesAndGlitches(ptr nofree noundef captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #26
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !70
  %.neg52 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71
  %.neg = sdiv i64 %i.e, -1000
  %.neg53 = add i64 %.neg, %.neg52
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg53, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.f = call i32 @Gia_ManRandom(i32 noundef 1) #26 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %Gli_ManFinalize.exit

.lr.ph.i:                                         ; preds = %Abc_Clock.exit, %bb.c
  %.09.i = phi i32 [ %i.s, %bb.c ], [ 0, %Abc_Clock.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %Gli_ManFinalize.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = zext nneg i32 %.09.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !34
  %.val8.i = load i32, ptr %i.l, align 8          ; 2 uses
  %i.o = lshr i32 %.val8.i, 4
  %i.p = and i32 %i.o, 7
  %i.q = lshr i32 %.val8.i, 7
  %i.r = add nuw nsw i32 %.09.i, 8
  %narrow.i.i = add nuw nsw i32 %i.r, %i.q
  %i.s = add nuw nsw i32 %narrow.i.i, %i.p        ; 2 uses
  %i.t = load i32, ptr %i.h, align 8, !tbaa !26
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.i, label %Gli_ManFinalize.exit, !llvm.loop !0

Gli_ManFinalize.exit:                             ; preds = %.lr.ph.i, %bb.c, %Abc_Clock.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.preheader, label %bb.n

.preheader:                                       ; preds = %Gli_ManFinalize.exit
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %Gli_ManSwitching.exit
  %.02658 = phi i32 [ %i.dl, %Gli_ManSwitching.exit ], [ 0, %.preheader ]
  call void @Gli_ManSetPiRandom(ptr noundef %0, float noundef %2)
  %i.z = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i27, label %Gli_ManSwitching.exit

.lr.ph.i27:                                       ; preds = %.lr.ph, %bb.m
  %i.ab = phi i32 [ %i.de, %bb.m ], [ %i.z, %.lr.ph ] ; 2 uses
  %.014.i = phi i32 [ %i.dj, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.val.i28 = load ptr, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.ac = zext nneg i32 %.014.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val.i28, i64 %i.ac ; 18 uses
  %.not.i29 = icmp eq ptr %.val.i28, null
  br i1 %.not.i29, label %Gli_ManSwitching.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i27
  %.val13.i = load i32, ptr %i.ad, align 8        ; 6 uses
  %i.ae = and i32 %.val13.i, 1
  %.not11.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.af = lshr exact i32 %.val13.i, 1
  %i.ag = lshr i32 %.val13.i, 4
  %i.ah = and i32 %i.ag, 7                        ; 7 uses
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %Gli_NodeComputeValue.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.ao, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, 1
  br i1 %exitcond.not.i.i, label %Gli_NodeComputeValue.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !32
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.at
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = and i32 %i.av, 2
  %i.ax = or disjoint i32 %i.aw, %i.ap            ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.ah, 2
  br i1 %exitcond.not.i.i.1, label %Gli_NodeComputeValue.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %i.ba = sext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = shl i32 %i.bd, 1
  %i.bf = and i32 %i.be, 4
  %i.bg = or disjoint i32 %i.bf, %i.ax            ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i32 %i.ah, 3
  br i1 %exitcond.not.i.i.2, label %Gli_NodeComputeValue.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = shl i32 %i.bm, 2
  %i.bo = and i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bo, %i.bg            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.ah, 4
  br i1 %exitcond.not.i.i.3, label %Gli_NodeComputeValue.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.bs = sext i32 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = shl i32 %i.bv, 3
  %i.bx = and i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bp            ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i32 %i.ah, 5
  br i1 %exitcond.not.i.i.4, label %Gli_NodeComputeValue.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = shl i32 %i.ce, 4
  %i.cg = and i32 %i.cf, 32
  %i.ch = or disjoint i32 %i.cg, %i.by            ; 2 uses
  %exitcond.not.i.i.5 = icmp eq i32 %i.ah, 6
  br i1 %exitcond.not.i.i.5, label %Gli_NodeComputeValue.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32
  %i.ck = sext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = shl i32 %i.cn, 5
  %i.cp = and i32 %i.co, 64
  %i.cq = or i32 %i.cp, %i.ch
  br label %Gli_NodeComputeValue.exit.i

Gli_NodeComputeValue.exit.i:                      ; preds = %.lr.ph.i.i, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.e
  %.0.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.ap, %.lr.ph.i.i ], [ %i.ax, %bb.f ], [ %i.bg, %bb.g ], [ %i.bp, %bb.h ], [ %i.by, %bb.i ], [ %i.ch, %bb.j ], [ %i.cq, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %6 = lshr i32 %.0.lcssa.i.i, 5
  %7 = zext nneg i32 %6 to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %7
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cv = and i32 %.0.lcssa.i.i, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = xor i32 %i.cw, %i.af
  %i.cy = and i32 %i.cx, 1
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %Gli_NodeComputeValue.exit.i
  %i.da = xor i32 %.val13.i, 2                    ; 2 uses
  store i32 %i.da, ptr %i.ad, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !34
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !34
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Gli_NodeComputeValue.exit.i, %bb.d
  %i.de = phi i32 [ %.pre.i, %bb.l ], [ %i.ab, %bb.d ], [ %i.ab, %Gli_NodeComputeValue.exit.i ] ; 2 uses
  %.val12.i = phi i32 [ %i.da, %bb.l ], [ %.val13.i, %bb.d ], [ %.val13.i, %Gli_NodeComputeValue.exit.i ] ; 2 uses
  %i.df = lshr i32 %.val12.i, 4
  %i.dg = and i32 %i.df, 7
  %i.dh = lshr i32 %.val12.i, 7
  %i.di = add nuw nsw i32 %.014.i, 8
  %narrow.i.i30 = add nuw nsw i32 %i.di, %i.dh
  %i.dj = add nuw nsw i32 %narrow.i.i30, %i.dg    ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.de
  br i1 %i.dk, label %.lr.ph.i27, label %Gli_ManSwitching.exit, !llvm.loop !1

Gli_ManSwitching.exit:                            ; preds = %.lr.ph.i27, %bb.m, %.lr.ph
  call void @Gli_ManGlitching(ptr noundef %0)
  %i.dl = add nuw nsw i32 %.02658, 1              ; 2 uses
  %exitcond64.not = icmp eq i32 %i.dl, %1
  br i1 %exitcond64.not, label %.loopexit, label %.lr.ph, !llvm.loop !65

bb.n:                                             ; preds = %Gli_ManFinalize.exit
  %i.dm = ashr i32 %1, 5
  %i.dn = and i32 %1, 31
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = add nsw i32 %i.dm, %i.dp                ; 2 uses
  call void @Gli_ManSimulateSeqPref(ptr noundef nonnull %0, i32 noundef 16)
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.n
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 0)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 1)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 2)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 3)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 4)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 5)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 6)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 7)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 8)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 9)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 10)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 11)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 12)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 13)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 14)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 15)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 16)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 17)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 18)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 19)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 20)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 21)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 22)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 23)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 24)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 25)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 26)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 27)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 28)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 29)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 30)
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef 31)
  br label %.loopexit

.lr.ph.us:                                        ; preds = %bb.n, %._crit_edge.us
  %.157.us = phi i32 [ %i.hf, %._crit_edge.us ], [ 0, %bb.n ] ; 2 uses
  call void @Gli_ManSetDataSaved(ptr noundef nonnull %0, i32 noundef %.157.us)
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.us, %Gli_ManSwitching.exit49.us
  %.056.us = phi i32 [ 0, %.lr.ph.us ], [ %i.he, %Gli_ManSwitching.exit49.us ]
  call void @Gli_ManSetPiRandomSeq(ptr noundef nonnull %0, float noundef %2)
  %i.ds = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i31.us, label %Gli_ManSwitching.exit49.us

.lr.ph.i31.us:                                    ; preds = %bb.o, %bb.y
  %i.du = phi i32 [ %i.gx, %bb.y ], [ %i.ds, %bb.o ] ; 2 uses
  %.014.i32.us = phi i32 [ %i.hc, %bb.y ], [ 0, %bb.o ] ; 2 uses
  %.val.i33.us = load ptr, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.dv = zext nneg i32 %.014.i32.us to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val.i33.us, i64 %i.dv ; 18 uses
  %.not.i34.us = icmp eq ptr %.val.i33.us, null
  br i1 %.not.i34.us, label %Gli_ManSwitching.exit49.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i31.us
  %.val13.i35.us = load i32, ptr %i.dw, align 8   ; 6 uses
  %i.dx = and i32 %.val13.i35.us, 1
  %.not11.i36.us = icmp eq i32 %i.dx, 0
  br i1 %.not11.i36.us, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.dy = lshr exact i32 %.val13.i35.us, 1
  %i.dz = lshr i32 %.val13.i35.us, 4
  %i.ea = and i32 %i.dz, 7                        ; 7 uses
  %.not.i.i39.us = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i39.us, label %Gli_NodeComputeValue.exit.i46.us, label %.lr.ph.i.i40.us

.lr.ph.i.i40.us:                                  ; preds = %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32
  %i.ed = sext i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = and i32 %i.eh, 1                        ; 2 uses
  %exitcond.not.i.i45.us = icmp eq i32 %i.ea, 1
  br i1 %exitcond.not.i.i45.us, label %Gli_NodeComputeValue.exit.i46.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i40.us
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !32
  %i.el = sext i32 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, 2
  %i.eq = or disjoint i32 %i.ep, %i.ei            ; 2 uses
  %exitcond.not.i.i45.us.1 = icmp eq i32 %i.ea, 2
  br i1 %exitcond.not.i.i45.us.1, label %Gli_NodeComputeValue.exit.i46.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = shl i32 %i.ew, 1
  %i.ey = and i32 %i.ex, 4
  %i.ez = or disjoint i32 %i.ey, %i.eq            ; 2 uses
  %exitcond.not.i.i45.us.2 = icmp eq i32 %i.ea, 3
  br i1 %exitcond.not.i.i45.us.2, label %Gli_NodeComputeValue.exit.i46.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !32
  %i.fc = sext i32 %i.fb to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = shl i32 %i.ff, 2
  %i.fh = and i32 %i.fg, 8
  %i.fi = or disjoint i32 %i.fh, %i.ez            ; 2 uses
  %exitcond.not.i.i45.us.3 = icmp eq i32 %i.ea, 4
  br i1 %exitcond.not.i.i45.us.3, label %Gli_NodeComputeValue.exit.i46.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dw, i64 44
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !32
  %i.fl = sext i32 %i.fk to i64
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = shl i32 %i.fo, 3
  %i.fq = and i32 %i.fp, 16
  %i.fr = or disjoint i32 %i.fq, %i.fi            ; 2 uses
  %exitcond.not.i.i45.us.4 = icmp eq i32 %i.ea, 5
  br i1 %exitcond.not.i.i45.us.4, label %Gli_NodeComputeValue.exit.i46.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !32
  %i.fu = sext i32 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = shl i32 %i.fx, 4
  %i.fz = and i32 %i.fy, 32
  %i.ga = or disjoint i32 %i.fz, %i.fr            ; 2 uses
  %exitcond.not.i.i45.us.5 = icmp eq i32 %i.ea, 6
  br i1 %exitcond.not.i.i45.us.5, label %Gli_NodeComputeValue.exit.i46.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !32
  %i.gd = sext i32 %i.gc to i64
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 8
  %i.gh = shl i32 %i.gg, 5
  %i.gi = and i32 %i.gh, 64
  %i.gj = or i32 %i.gi, %i.ga
  br label %Gli_NodeComputeValue.exit.i46.us

Gli_NodeComputeValue.exit.i46.us:                 ; preds = %.lr.ph.i.i40.us, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.q
  %.0.lcssa.i.i47.us = phi i32 [ 0, %bb.q ], [ %i.ei, %.lr.ph.i.i40.us ], [ %i.eq, %bb.r ], [ %i.ez, %bb.s ], [ %i.fi, %bb.t ], [ %i.fr, %bb.u ], [ %i.ga, %bb.v ], [ %i.gj, %bb.w ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37
  %8 = lshr i32 %.0.lcssa.i.i47.us, 5
  %9 = zext nneg i32 %8 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %9
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !32
  %i.go = and i32 %.0.lcssa.i.i47.us, 31
  %i.gp = lshr i32 %i.gn, %i.go
  %i.gq = xor i32 %i.gp, %i.dy
  %i.gr = and i32 %i.gq, 1
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Gli_NodeComputeValue.exit.i46.us
  %i.gt = xor i32 %.val13.i35.us, 2               ; 2 uses
  store i32 %i.gt, ptr %i.dw, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !34
  %i.gw = add nsw i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !34
  %.pre.i48.us = load i32, ptr %i.h, align 8, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %Gli_NodeComputeValue.exit.i46.us, %bb.p
  %i.gx = phi i32 [ %.pre.i48.us, %bb.x ], [ %i.du, %bb.p ], [ %i.du, %Gli_NodeComputeValue.exit.i46.us ] ; 2 uses
  %.val12.i37.us = phi i32 [ %i.gt, %bb.x ], [ %.val13.i35.us, %bb.p ], [ %.val13.i35.us, %Gli_NodeComputeValue.exit.i46.us ] ; 2 uses
  %i.gy = lshr i32 %.val12.i37.us, 4
  %i.gz = and i32 %i.gy, 7
  %i.ha = lshr i32 %.val12.i37.us, 7
  %i.hb = add nuw nsw i32 %.014.i32.us, 8
  %narrow.i.i38.us = add nuw nsw i32 %i.hb, %i.ha
  %i.hc = add nuw nsw i32 %narrow.i.i38.us, %i.gz ; 2 uses
  %i.hd = icmp slt i32 %i.hc, %i.gx
  br i1 %i.hd, label %.lr.ph.i31.us, label %Gli_ManSwitching.exit49.us, !llvm.loop !1

Gli_ManSwitching.exit49.us:                       ; preds = %.lr.ph.i31.us, %bb.y, %bb.o
  call void @Gli_ManGlitching(ptr noundef nonnull %0)
  %i.he = add nuw nsw i32 %.056.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, %i.dq
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.o, !llvm.loop !66

._crit_edge.us:                                   ; preds = %Gli_ManSwitching.exit49.us
  %i.hf = add nuw nsw i32 %.157.us, 1             ; 2 uses
  %exitcond63.not = icmp eq i32 %i.hf, 32
  br i1 %exitcond63.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !67

.loopexit:                                        ; preds = %._crit_edge.us, %Gli_ManSwitching.exit, %.split.preheader, %.preheader
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.hg = fpext float %2 to double
  %i.hh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %1, double noundef %i.hg) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %i.hi = load i32, ptr %i.h, align 8, !tbaa !26
  %i.hj = shl nsw i32 %i.hi, 2
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = fmul nnan double %i.hk, f0x3EB0000000000000
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, double noundef %i.hl)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.hm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #26
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %Abc_Clock.exit51, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ho = load i64, ptr %4, align 8, !tbaa !70
  %i.hp = mul nsw i64 %i.ho, 1000000
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !71
  %i.hs = sdiv i64 %i.hr, 1000
  %i.ht = add nsw i64 %i.hs, %i.hp
  br label %Abc_Clock.exit51

Abc_Clock.exit51:                                 ; preds = %bb.z, %bb.aa
  %.0.i50 = phi i64 [ %i.ht, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.hu = add i64 %.0.i50, %.0.i.neg
  %i.hv = sitofp i64 %i.hu to double
  %i.hw = fdiv double %i.hv, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.10, double noundef %i.hw)
  br label %bb.ab

bb.ab:                                            ; preds = %Abc_Clock.exit51, %.loopexit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #17 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !76, !noalias !77
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !74 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #19

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #12

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
end_hunk_4
