Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 43
begin_hunk_0_@Gia_ManPrintPath:bb.a
  %.5.i = phi i32 [ %.2.i, %.critedge.i ], [ %.2.i, %.preheader.i ], [ %.4.i, %bb.g ] ; 13 uses
  %i.ac = shl nsw i32 %.5.i, 2                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 100
  %i.ae = zext nneg i32 %.5.i to i64              ; 9 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 10 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 13 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 10 uses
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 6 uses
  %i.am = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 10 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 8 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 11 uses
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 10 uses
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %1, i32 16) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 8 uses
  store i32 0, ptr %i.as, align 4, !tbaa !61
  store i32 %spec.store.select.i, ptr %i.ar, align 8, !tbaa !64
  %i.at = zext nneg i32 %spec.store.select.i to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 2 uses
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 6 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !59
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !61
  store i32 %spec.store.select.i, ptr %i.ax, align 8, !tbaa !64
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.au) #40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 8 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !59
  %i.bb = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val433.a = load i32, ptr %i.bb, align 8, !tbaa !51 ; 13 uses
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.bd = add i32 %.val433.a, -1
  %or.cond.i.i = icmp ult i32 %i.bd, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val433.a ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.bc, align 8, !tbaa !64
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i489, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Gia_ManPrintPathNameBufferSize.exit
  %i.bf = sext i32 %spec.store.select.i.i to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 3 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.be, align 4, !tbaa !61
  %.not.i477 = icmp eq ptr %i.bh, null
  br i1 %.not.i477, label %Vec_IntAlloc.exit.i481, label %bb.h

bb.h:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.bj = sext i32 %.val433.a to i64
  %i.bk = shl nsw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 0, i64 %i.bk, i1 false)
  br label %Vec_IntAlloc.exit.i481

Vec_IntAlloc.exit.i481:                           ; preds = %Vec_IntAlloc.exit.i, %bb.h
  %i.bl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %spec.store.select.i.i, ptr %i.bl, align 8, !tbaa !64
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.bm, align 4, !tbaa !61
  %.not.i482 = icmp eq ptr %i.bn, null
  br i1 %.not.i482, label %Vec_IntAlloc.exit.i487, label %bb.i

bb.i:                                             ; preds = %Vec_IntAlloc.exit.i481
  %i.bp = sext i32 %.val433.a to i64
  %i.bq = shl nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 -1, i64 %i.bq, i1 false)
  br label %Vec_IntAlloc.exit.i487

Vec_IntAlloc.exit.thread.i489:                    ; preds = %Gia_ManPrintPathNameBufferSize.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.be, align 4, !tbaa !61
  %i.bs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %i.bs, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.bt, align 4, !tbaa !61
  %i.bv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bv, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.bw, align 4, !tbaa !61
  br label %Vec_IntStartFull.exit490

Vec_IntAlloc.exit.i487:                           ; preds = %Vec_IntAlloc.exit.i481, %bb.i
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %spec.store.select.i.i, ptr %i.by, align 8, !tbaa !64
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !59
  store i32 %.val433.a, ptr %i.bz, align 4, !tbaa !61
  %.not.i488 = icmp eq ptr %i.ca, null
  br i1 %.not.i488, label %Vec_IntStartFull.exit490, label %bb.j

bb.j:                                             ; preds = %Vec_IntAlloc.exit.i487
  %i.cc = sext i32 %.val433.a to i64
  %i.cd = shl nsw i64 %i.cc, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 -1, i64 %i.cd, i1 false)
  br label %Vec_IntStartFull.exit490

Vec_IntStartFull.exit490:                         ; preds = %Vec_IntAlloc.exit.thread.i489, %Vec_IntAlloc.exit.i487, %bb.j
  %.val459 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ null, %Vec_IntAlloc.exit.i487 ], [ %i.ca, %bb.j ]
  %.val448.a = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bn, %Vec_IntAlloc.exit.i487 ], [ %i.bn, %bb.j ] ; 8 uses
  %.val449 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bh, %Vec_IntAlloc.exit.i487 ], [ %i.bh, %bb.j ] ; 8 uses
  %i.ce = phi ptr [ %i.bv, %Vec_IntAlloc.exit.thread.i489 ], [ %i.by, %Vec_IntAlloc.exit.i487 ], [ %i.by, %bb.j ] ; 3 uses
  %i.cf = phi ptr [ %i.bs, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bl, %Vec_IntAlloc.exit.i487 ], [ %i.bl, %bb.j ] ; 2 uses
  %i.cg = icmp sgt i32 %.val433.a, 0
  br i1 %i.cg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit490
  %i.ch = getelementptr i8, ptr %0, i64 32
  %.val434 = load ptr, ptr %i.ch, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %.val434, null
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cj = getelementptr i8, ptr %0, i64 40        ; 2 uses
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.w
  %i.ck = phi i32 [ %i.fo, %bb.w ], [ %.val433.a, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.lr.ph ] ; 12 uses
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %.val434, i64 %indvars.iv ; 2 uses
  %.val440 = load i64, ptr %i.cl, align 4         ; 10 uses
  %i.cm = and i64 %.val440, 2684354559
  %narrow.i.not = icmp eq i64 %i.cm, 2684354559
  br i1 %narrow.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv
  store i32 0, ptr %i.cn, align 4, !tbaa !20
  %.val442.a = load i64, ptr %i.cl, align 4
  %i.co = lshr i64 %.val442.a, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = and i32 %i.cp, 536870911
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val448.a, i64 %indvars.iv
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !20
  br label %bb.w

bb.l:                                             ; preds = %.lr.ph.split
  %i.cs = and i64 %.val440, 2147483648
  %.not.i491 = icmp eq i64 %i.cs, 0
  %i.ct = and i64 %.val440, 536870911
  %i.cu = icmp ne i64 %i.ct, 536870911
  %narrow.i492 = and i1 %.not.i491, %i.cu
  br i1 %narrow.i492, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.cv = load i32, ptr %i.ci, align 8, !tbaa !66
  %.not427 = icmp eq i32 %i.cv, 0
  br i1 %.not427, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.val438.pre = load ptr, ptr %i.cj, align 8, !tbaa !58
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = trunc i64 %.val440 to i32
  %i.cx = and i32 %i.cw, 536870911                ; 2 uses
  %i.cy = lshr i64 %.val440, 32                   ; 2 uses
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = and i32 %i.cz, 536870911
  %i.db = icmp eq i32 %i.cx, %i.da
  %.not.i493 = icmp ne i32 %i.cx, 536870911
  %or.cond.not.i = and i1 %.not.i493, %i.db
  %.val438.pre869 = load ptr, ptr %i.cj, align 8, !tbaa !58 ; 2 uses
  br i1 %or.cond.not.i, label %Gia_ObjIsXor.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.val438 = phi ptr [ %.val438.pre, %._crit_edge ], [ %.val438.pre869, %bb.n ] ; 4 uses
  %.not.i.i495 = icmp eq ptr %.val438, null
  br i1 %.not.i.i495, label %Gia_ObjIsMux.exit.thread, label %Gia_ObjIsMux.exit

Gia_ObjIsMux.exit:                                ; preds = %bb.o
  %sext.i = shl nuw nsw i64 %indvars.iv, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.val438, i64 %sext.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !20
  %.not738 = icmp eq i32 %i.dd, 0
  br i1 %.not738, label %Gia_ObjIsMux.exit.thread, label %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge

Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge: ; preds = %Gia_ObjIsMux.exit
  %.pre871 = lshr i64 %.val440, 32
  br label %Gia_ObjIsXor.exit.thread

Gia_ObjIsMux.exit.thread:                         ; preds = %bb.o, %Gia_ObjIsMux.exit
  %i.de = trunc i64 %.val440 to i32
  %i.df = and i32 %i.de, 536870911
  %i.dg = lshr i64 %.val440, 32                   ; 2 uses
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = and i32 %i.dh, 536870911
  %4 = icmp samesign uge i32 %i.df, %i.di
  %cond.fr = freeze i1 %4
  %spec.select = select i1 %cond.fr, i32 1, i32 2
  br label %Gia_ObjIsXor.exit.thread

Gia_ObjIsXor.exit.thread:                         ; preds = %bb.n, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge, %Gia_ObjIsMux.exit.thread
  %.pre-phi = phi i64 [ %.pre871, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %i.dg, %Gia_ObjIsMux.exit.thread ], [ %i.cy, %bb.n ] ; 2 uses
  %.val472 = phi ptr [ %.val438, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %.val438, %Gia_ObjIsMux.exit.thread ], [ %.val438.pre869, %bb.n ]
  %i.dj = phi i32 [ 2, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %spec.select, %Gia_ObjIsMux.exit.thread ], [ 0, %bb.n ]
  %.val472.fr = freeze ptr %.val472               ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val472.fr, null
  br i1 %.not.i.i.i, label %.split.us.preheader, label %Gia_ObjFaninId2.exit.peel

.split.us.preheader:                              ; preds = %Gia_ObjIsXor.exit.thread
  %.pn.in.i.us = trunc i64 %.val440 to i32
  %.pn.i.us = and i32 %.pn.in.i.us, 536870911
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dl = sub nsw i32 %i.dk, %.pn.i.us            ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.val448.a, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !20 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.p, label %Gia_ManPrintPathFaninBetter.exit.us

bb.p:                                             ; preds = %.split.us.preheader
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.dm
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !20
  br label %Gia_ManPrintPathFaninBetter.exit.us

Gia_ManPrintPathFaninBetter.exit.us:              ; preds = %bb.p, %.split.us.preheader
  %.1.us = phi i32 [ %i.dl, %bb.p ], [ -1, %.split.us.preheader ] ; 3 uses
  %.1364.us = phi i32 [ %i.dr, %bb.p ], [ -1, %.split.us.preheader ] ; 5 uses
  %.1362.us = tail call i32 @llvm.smax.i32(i32 %i.do, i32 -1) ; 4 uses
  %.pn.in.i.us.1 = trunc nuw i64 %.pre-phi to i32
  %.pn.i.us.1 = and i32 %.pn.in.i.us.1, 536870911
  %i.ds = sub nsw i32 %i.dk, %.pn.i.us.1          ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !20 ; 3 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %.val448.a, i64 %i.dt
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !20 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.split766.us, label %bb.q

bb.q:                                             ; preds = %Gia_ManPrintPathFaninBetter.exit.us
  %i.dz = icmp slt i32 %i.do, 0
  br i1 %i.dz, label %.split1020.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i502.us.1 = icmp eq i32 %i.dv, %.1364.us
  br i1 %.not.i502.us.1, label %.split1009, label %Gia_ManPrintPathFaninBetter.exit.us.1

.split1009:                                       ; preds = %bb.r
  %i.ea = icmp samesign ult i32 %i.dx, %.1362.us
  %cond.fr10011010 = freeze i1 %i.ea
  br i1 %cond.fr10011010, label %.split1020.thread, label %.split766.us

Gia_ManPrintPathFaninBetter.exit.us.1:            ; preds = %bb.r
  %i.eb = icmp sgt i32 %i.dv, %.1364.us
  %cond.fr1001 = freeze i1 %i.eb
  br i1 %cond.fr1001, label %.split1020.thread, label %.split766.us

.split1020.thread:                                ; preds = %.split1009, %Gia_ManPrintPathFaninBetter.exit.us.1, %bb.q
  br label %.split766.us

Gia_ObjFaninId2.exit.peel:                        ; preds = %Gia_ObjIsXor.exit.thread
  %sext.i.i = shl nuw nsw i64 %indvars.iv, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.val472.fr, i64 %sext.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !20 ; 2 uses
  %.not2.i.not = icmp eq i32 %i.ed, 0             ; 2 uses
  %.pn.in.i.peel = trunc i64 %.val440 to i32
  %.pn.i.peel = and i32 %.pn.in.i.peel, 536870911
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32
  %i.ef = sub nsw i32 %i.ee, %.pn.i.peel          ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !20
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val448.a, i64 %i.eg
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, -1                  ; 2 uses
  %.1.peel = select i1 %i.el, i32 %i.ef, i32 -1   ; 3 uses
  %.1362.peel = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 -1) ; 4 uses
  %.1364.peel = select i1 %i.el, i32 %i.ei, i32 -1 ; 5 uses
  %.pn.in.i = trunc nuw i64 %.pre-phi to i32
  %.pn.i = and i32 %.pn.in.i, 536870911
  %i.em = trunc nuw nsw i64 %indvars.iv to i32
  %i.en = sub nsw i32 %i.em, %.pn.i               ; 2 uses
  %i.eo = ashr i32 %i.ed, 1
  %spec.select.i = select i1 %.not2.i.not, i32 -1, i32 %i.eo ; 2 uses
  %i.ep = sext i32 %i.en to i64                   ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !20 ; 3 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.val448.a, i64 %i.ep
  %i.et = load i32, ptr %i.es, align 4, !tbaa !20 ; 3 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.thread1042, label %bb.s

bb.s:                                             ; preds = %Gia_ObjFaninId2.exit.peel
  %i.ev = icmp slt i32 %i.ek, 0
  br i1 %i.ev, label %.split1045.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i502 = icmp eq i32 %i.er, %.1364.peel
  br i1 %.not.i502, label %.split1033, label %Gia_ManPrintPathFaninBetter.exit

.split1033:                                       ; preds = %bb.t
  %i.ew = icmp samesign ult i32 %i.et, %.1362.peel
  %cond.fr10251034 = freeze i1 %i.ew
  br i1 %cond.fr10251034, label %.split1045.thread, label %.thread1042

Gia_ManPrintPathFaninBetter.exit:                 ; preds = %bb.t
  %i.ex = icmp sgt i32 %i.er, %.1364.peel
  %cond.fr1025 = freeze i1 %i.ex
  br i1 %cond.fr1025, label %.split1045.thread, label %.thread1042

.split1045.thread:                                ; preds = %.split1033, %Gia_ManPrintPathFaninBetter.exit, %bb.s
  br label %.thread1042

.thread1042:                                      ; preds = %.split1033, %Gia_ManPrintPathFaninBetter.exit, %Gia_ObjFaninId2.exit.peel, %.split1045.thread
  %i.ey = phi i32 [ %i.et, %.split1045.thread ], [ %.1362.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1362.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1362.peel, %.split1033 ] ; 6 uses
  %i.ez = phi i32 [ %i.er, %.split1045.thread ], [ %.1364.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1364.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1364.peel, %.split1033 ] ; 6 uses
  %i.fa = phi i32 [ %i.en, %.split1045.thread ], [ %.1.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1.peel, %.split1033 ] ; 4 uses
  br i1 %.not2.i.not, label %.split766.us, label %Gia_ObjFaninId2.exit.1

Gia_ObjFaninId2.exit.1:                           ; preds = %.thread1042
  %i.fb = sext i32 %spec.select.i to i64          ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !20 ; 3 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %.val448.a, i64 %i.fb
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !20 ; 3 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %.split766.us, label %bb.u

bb.u:                                             ; preds = %Gia_ObjFaninId2.exit.1
  %i.fh = icmp slt i32 %i.ey, 0
  br i1 %i.fh, label %.split1045.thread.1, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i502.1 = icmp eq i32 %i.fd, %i.ez
  br i1 %.not.i502.1, label %.split1033.1, label %Gia_ManPrintPathFaninBetter.exit.1

Gia_ManPrintPathFaninBetter.exit.1:               ; preds = %bb.v
  %i.fi = icmp sgt i32 %i.fd, %i.ez
  %cond.fr1025.1 = freeze i1 %i.fi
  br i1 %cond.fr1025.1, label %.split1045.thread.1, label %.split766.us

.split1033.1:                                     ; preds = %bb.v
  %i.fj = icmp samesign ult i32 %i.ff, %i.ey
  %cond.fr10251034.1 = freeze i1 %i.fj
  br i1 %cond.fr10251034.1, label %.split1045.thread.1, label %.split766.us

.split1045.thread.1:                              ; preds = %.split1033.1, %Gia_ManPrintPathFaninBetter.exit.1, %bb.u
  br label %.split766.us

.split766.us:                                     ; preds = %.thread1042, %.split1045.thread.1, %.split1033.1, %Gia_ManPrintPathFaninBetter.exit.1, %Gia_ObjFaninId2.exit.1, %.split1009, %Gia_ManPrintPathFaninBetter.exit.us.1, %Gia_ManPrintPathFaninBetter.exit.us, %.split1020.thread
  %.us-phi = phi i32 [ %.1364.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.dv, %.split1020.thread ], [ %.1364.us, %.split1009 ], [ %.1364.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.ez, %.thread1042 ], [ %i.fd, %.split1045.thread.1 ], [ %i.ez, %Gia_ObjFaninId2.exit.1 ], [ %i.ez, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.ez, %.split1033.1 ]
  %.us-phi767 = phi i32 [ %.1362.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.dx, %.split1020.thread ], [ %.1362.us, %.split1009 ], [ %.1362.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.ey, %.thread1042 ], [ %i.ff, %.split1045.thread.1 ], [ %i.ey, %Gia_ObjFaninId2.exit.1 ], [ %i.ey, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.ey, %.split1033.1 ]
  %.us-phi768 = phi i32 [ %.1.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.ds, %.split1020.thread ], [ %.1.us, %.split1009 ], [ %.1.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.fa, %.thread1042 ], [ %spec.select.i, %.split1045.thread.1 ], [ %i.fa, %Gia_ObjFaninId2.exit.1 ], [ %i.fa, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.fa, %.split1033.1 ]
  %i.fk = add nsw i32 %.us-phi, %i.dj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !20
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val448.a, i64 %indvars.iv
  store i32 %.us-phi767, ptr %i.fm, align 4, !tbaa !20
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val459, i64 %indvars.iv
  store i32 %.us-phi768, ptr %i.fn, align 4, !tbaa !20
  %.pre = load i32, ptr %i.bb, align 8, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %.split766.us, %bb.k
  %i.fo = phi i32 [ %i.ck, %bb.l ], [ %.pre, %.split766.us ], [ %i.ck, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next, %i.fp
  br i1 %i.fq, label %.lr.ph.split, label %.critedge.loopexit, !llvm.loop !350

.critedge.loopexit:                               ; preds = %bb.w
  %.val455.pre = load i32, ptr %i.d, align 4, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %Vec_IntStartFull.exit490
  %.val455.a = phi i32 [ %.val455.pre, %.critedge.loopexit ], [ %.val464.val, %.lr.ph ], [ %.val464.val, %Vec_IntStartFull.exit490 ] ; 3 uses
  %i.fr = sext i32 %i.f to i64
  %i.fs = shl nsw i64 %i.fr, 2                    ; 4 uses
  %i.ft = tail call noalias ptr @malloc(i64 noundef %i.fs) #40 ; 11 uses
  %i.fu = tail call noalias ptr @malloc(i64 noundef %i.fs) #40 ; 13 uses
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fs) #40 ; 15 uses
  %i.fw = tail call noalias ptr @malloc(i64 noundef %i.fs) #40 ; 8 uses
  %i.fx = icmp sgt i32 %.val455.a, 0
  br i1 %i.fx, label %.lr.ph781, label %.critedge2..preheader_crit_edge

.lr.ph781:                                        ; preds = %.critedge
  %i.fy = getelementptr i8, ptr %0, i64 32
  %.val456 = load ptr, ptr %i.fy, align 8, !tbaa !54 ; 2 uses
  %.not393 = icmp eq ptr %.val456, null
  %i.fz = getelementptr i8, ptr %0, i64 16
  %i.ga = getelementptr i8, ptr %0, i64 64
  br i1 %.not393, label %.critedge2..preheader_crit_edge, label %.lr.ph781.split

.lr.ph781.split:                                  ; preds = %.lr.ph781
  %i.gb = getelementptr i8, ptr %.val464, i64 8
  %.val457.val = load ptr, ptr %i.gb, align 8, !tbaa !59
  %wide.trip.count = zext nneg i32 %.val455.a to i64
  br label %bb.x
end_hunk_0
