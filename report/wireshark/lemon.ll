Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@State_insert:bb.a
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  store ptr %1, ptr %i.cy, align 8
  store ptr %0, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.ba, align 8
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %.pre-phi109
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not67 = icmp eq ptr %i.db, null
  br i1 %.not67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr i8, ptr %i.cx, i64 16
  %i.dd = getelementptr i8, ptr %i.db, i64 24
  store ptr %i.dc, ptr %i.dd, align 8
  %.pre102 = load ptr, ptr %i.ba, align 8
  %.phi.trans.insert103 = getelementptr [8 x i8], ptr %.pre102, i64 %.pre-phi109
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.de = phi ptr [ %.pre104, %bb.j ], [ null, %bb.i ]
  %i.df = getelementptr i8, ptr %i.cx, i64 16
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ba, align 8
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %.pre-phi109
  store ptr %i.cx, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.ba, align 8
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %.pre-phi109
  %i.dk = getelementptr i8, ptr %i.cx, i64 24
  store ptr %i.dj, ptr %i.dk, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i, %.critedge.thread.i.us, %bb.e, %bb.a, %bb.k
  %.157 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %.critedge.thread.i.us ], [ 0, %.critedge.i ]
  ret i32 %.157
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @buildshifts(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.03958 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not59 = icmp eq ptr %.03958, null
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.preheader57:                                     ; preds = %.lr.ph
  %.164.pre = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not4165 = icmp eq ptr %.164.pre, null
  br i1 %.not4165, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader57
  %i.b = getelementptr i8, ptr %1, i64 24         ; 4 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03960 = phi ptr [ %.039, %.lr.ph ], [ %.03958, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.03960, i64 48
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.03960, i64 56
  %.039 = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not = icmp eq ptr %.039, null
  br i1 %.not, label %.preheader57, label %.lr.ph, !llvm.loop !76

bb.b:                                             ; preds = %.lr.ph67, %.loopexit
  %.166 = phi ptr [ %.164.pre, %.lr.ph67 ], [ %.1, %.loopexit ] ; 6 uses
  %i.e = getelementptr i8, ptr %.166, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.166, i64 8       ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load ptr, ptr %.166, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %.not42 = icmp slt i32 %i.i, %i.l
  br i1 %.not42, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @current, align 8
  store ptr @current, ptr @currentend, align 8
  store ptr null, ptr @basis, align 8
  store ptr @basis, ptr @basisend, align 8
  %i.m = load ptr, ptr @x4a, align 8              ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %Configlist_reset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Configlist_reset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.m, align 8
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph11.i.i, label %._crit_edge.i.i

.lr.ph11.i.i:                                     ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.m, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph11.i.i
  %indvars.iv13.i.i = phi i64 [ 0, %.lr.ph11.i.i ], [ %indvars.iv.next14.i.i, %bb.g ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv13.i.i
  store ptr null, ptr %i.v, align 8
  %indvars.iv.next14.i.i = add nuw nsw i64 %indvars.iv13.i.i, 1 ; 2 uses
  %i.w = load i32, ptr %i.m, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next14.i.i, %i.x
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.o, align 4
  br label %Configlist_reset.exit

Configlist_reset.exit:                            ; preds = %bb.d, %bb.e, %._crit_edge.i.i
  %i.z = load ptr, ptr %.166, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i32, ptr %i.h, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 12     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 88     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 96     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %Configlist_reset.exit, %same_symbol.exit.thread
  %.03861 = phi ptr [ %.166, %Configlist_reset.exit ], [ %i.cj, %same_symbol.exit.thread ] ; 5 uses
  %i.aj = getelementptr i8, ptr %.03861, i64 48   ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %same_symbol.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %.03861, i64 8
  %i.an = load i32, ptr %i.am, align 8            ; 3 uses
  %i.ao = load ptr, ptr %.03861, align 8          ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8
  %.not44 = icmp slt i32 %i.an, %i.aq
  br i1 %.not44, label %bb.j, label %same_symbol.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.ao, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = sext i32 %i.an to i64
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %same_symbol.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.av, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %.not.i = icmp eq i32 %i.ay, 2
  br i1 %.not.i, label %bb.l, label %same_symbol.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.az = load i32, ptr %i.ag, align 4
  %.not16.i = icmp eq i32 %i.az, 2
  br i1 %.not16.i, label %bb.m, label %same_symbol.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr i8, ptr %i.av, i64 88
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load i32, ptr %i.ah, align 8
  %.not17.i = icmp eq i32 %i.bb, %i.bc
  br i1 %.not17.i, label %.preheader.i, label %same_symbol.exit.thread

.preheader.i:                                     ; preds = %bb.m
  %i.bd = icmp sgt i32 %i.bb, 0
  br i1 %i.bd, label %.lr.ph.i, label %same_symbol.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.be = getelementptr i8, ptr %i.av, i64 96
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.ai, align 8
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %same_symbol.exit, label %bb.o, !llvm.loop !22

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not18.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not18.i, label %bb.n, label %same_symbol.exit.thread

same_symbol.exit:                                 ; preds = %bb.n, %.preheader.i, %bb.j
  store i32 0, ptr %i.aj, align 8
  %i.bl = add i32 %i.an, 1
  %i.bm = tail call ptr @Configlist_addbasis(ptr noundef %i.ao, i32 noundef %i.bl)
  %i.bn = getelementptr i8, ptr %i.bm, i64 32     ; 2 uses
  %i.bo = load ptr, ptr @plink_freelist, align 8  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.p, label %Plink_add.exit

bb.p:                                             ; preds = %same_symbol.exit
  %i.bq = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #40 ; 10 uses
  store ptr %i.bq, ptr @plink_freelist, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.q, label %.preheader.i.i

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr @stderr, align 8
  %i.bt = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bs, i32 noundef 2, ptr noundef nonnull @.str.80) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.2, %.preheader.i.i ], [ 0, %bb.p ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bu = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i
  %i.bv = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.bu, ptr %i.bw, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bx = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.1
  %i.by = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bx, ptr %i.bz, align 8
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.ca = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.2
  %i.cb = getelementptr [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.1
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store ptr %i.ca, ptr %i.cc, align 8
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 99
  br i1 %exitcond.not.i.i.2, label %bb.r, label %.preheader.i.i, !llvm.loop !20

bb.r:                                             ; preds = %.preheader.i.i
  %i.cd = getelementptr i8, ptr %i.bq, i64 1592
  store ptr null, ptr %i.cd, align 8
  br label %Plink_add.exit

Plink_add.exit:                                   ; preds = %same_symbol.exit, %bb.r
  %i.ce = phi ptr [ %i.bq, %bb.r ], [ %i.bo, %same_symbol.exit ] ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  store ptr %i.cg, ptr @plink_freelist, align 8
  %i.ch = load ptr, ptr %i.bn, align 8
  store ptr %i.ch, ptr %i.cf, align 8
  store ptr %i.ce, ptr %i.bn, align 8
  store ptr %.03861, ptr %i.ce, align 8
  br label %same_symbol.exit.thread

same_symbol.exit.thread:                          ; preds = %bb.o, %bb.l, %bb.k, %bb.m, %bb.i, %bb.h, %Plink_add.exit
  %i.ci = getelementptr i8, ptr %.03861, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.cj, null
  br i1 %.not43, label %bb.s, label %bb.h, !llvm.loop !77

bb.s:                                             ; preds = %same_symbol.exit.thread
  %i.ck = tail call ptr @getstate(ptr noundef %0) ; 2 uses
  %i.cl = load i32, ptr %i.ag, align 4
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.s
  %i.cn = load i32, ptr %i.ah, align 8
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %.preheader
  %.pre = load ptr, ptr @Action_new.actionfreelist, align 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph63, %Action_add.exit
  %i.cp = phi ptr [ %.pre, %.lr.ph63 ], [ %i.dk, %Action_add.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next, %Action_add.exit ] ; 2 uses
  %i.cq = load ptr, ptr %i.ai, align 8
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp eq ptr %i.cp, null
  br i1 %i.ct, label %bb.u, label %Action_add.exit

bb.u:                                             ; preds = %bb.t
  %i.cu = tail call noalias dereferenceable_or_null(4800) ptr @calloc(i64 noundef 100, i64 noundef 48) #40 ; 10 uses
  store ptr %i.cu, ptr @Action_new.actionfreelist, align 8
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.v, label %.preheader.i.i46

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr @stderr, align 8
  %i.cx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cw, i32 noundef 2, ptr noundef nonnull @.str.260) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i.i46:                                 ; preds = %bb.u, %.preheader.i.i46
  %indvars.iv.i.i47 = phi i64 [ %indvars.iv.next.i.i48.2, %.preheader.i.i46 ], [ 0, %bb.u ] ; 4 uses
  %indvars.iv.next.i.i48 = add nuw nsw i64 %indvars.iv.i.i47, 1 ; 2 uses
  %i.cy = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i48
  %i.cz = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.i.i47
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  store ptr %i.cy, ptr %i.da, align 8
  %indvars.iv.next.i.i48.1 = add nuw nsw i64 %indvars.iv.i.i47, 2 ; 2 uses
  %i.db = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i48.1
  %i.dc = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i48
  %i.dd = getelementptr i8, ptr %i.dc, i64 32
  store ptr %i.db, ptr %i.dd, align 8
  %indvars.iv.next.i.i48.2 = add nuw nsw i64 %indvars.iv.i.i47, 3 ; 3 uses
  %i.de = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i48.2
  %i.df = getelementptr [48 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i48.1
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store ptr %i.de, ptr %i.dg, align 8
  %exitcond.not.i.i49.2 = icmp eq i64 %indvars.iv.next.i.i48.2, 99
  br i1 %exitcond.not.i.i49.2, label %bb.w, label %.preheader.i.i46, !llvm.loop !0

bb.w:                                             ; preds = %.preheader.i.i46
  %i.dh = getelementptr i8, ptr %i.cu, i64 4784
  store ptr null, ptr %i.dh, align 8
  br label %Action_add.exit

Action_add.exit:                                  ; preds = %bb.t, %bb.w
  %i.di = phi ptr [ %i.cu, %bb.w ], [ %i.cp, %bb.t ] ; 6 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32     ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  store ptr %i.dk, ptr @Action_new.actionfreelist, align 8
  %i.dl = load ptr, ptr %i.b, align 8
  store ptr %i.dl, ptr %i.dj, align 8
  store ptr %i.di, ptr %i.b, align 8
  %i.dm = getelementptr i8, ptr %i.di, i64 8
  store i32 0, ptr %i.dm, align 8
  store ptr %i.cs, ptr %i.di, align 8
  %i.dn = getelementptr i8, ptr %i.di, i64 24
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr i8, ptr %i.di, i64 16
  store ptr %i.ck, ptr %i.do, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.ah, align 8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.t, label %.loopexit, !llvm.loop !78

bb.x:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr @Action_new.actionfreelist, align 8 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %Action_add.exit54

bb.y:                                             ; preds = %bb.x
  %i.du = tail call noalias dereferenceable_or_null(4800) ptr @calloc(i64 noundef 100, i64 noundef 48) #40 ; 10 uses
  store ptr %i.du, ptr @Action_new.actionfreelist, align 8
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.z, label %.preheader.i.i50

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr @stderr, align 8
  %i.dx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dw, i32 noundef 2, ptr noundef nonnull @.str.260) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i.i50:                                 ; preds = %bb.y, %.preheader.i.i50
  %indvars.iv.i.i51 = phi i64 [ %indvars.iv.next.i.i52.2, %.preheader.i.i50 ], [ 0, %bb.y ] ; 4 uses
  %indvars.iv.next.i.i52 = add nuw nsw i64 %indvars.iv.i.i51, 1 ; 2 uses
  %i.dy = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.next.i.i52
  %i.dz = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.i.i51
  %i.ea = getelementptr i8, ptr %i.dz, i64 32
  store ptr %i.dy, ptr %i.ea, align 8
  %indvars.iv.next.i.i52.1 = add nuw nsw i64 %indvars.iv.i.i51, 2 ; 2 uses
  %i.eb = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.next.i.i52.1
  %i.ec = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.next.i.i52
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  store ptr %i.eb, ptr %i.ed, align 8
  %indvars.iv.next.i.i52.2 = add nuw nsw i64 %indvars.iv.i.i51, 3 ; 3 uses
  %i.ee = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.next.i.i52.2
  %i.ef = getelementptr [48 x i8], ptr %i.du, i64 %indvars.iv.next.i.i52.1
  %i.eg = getelementptr i8, ptr %i.ef, i64 32
  store ptr %i.ee, ptr %i.eg, align 8
  %exitcond.not.i.i53.2 = icmp eq i64 %indvars.iv.next.i.i52.2, 99
  br i1 %exitcond.not.i.i53.2, label %bb.aa, label %.preheader.i.i50, !llvm.loop !0

bb.aa:                                            ; preds = %.preheader.i.i50
  %i.eh = getelementptr i8, ptr %i.du, i64 4784
  store ptr null, ptr %i.eh, align 8
  br label %Action_add.exit54

Action_add.exit54:                                ; preds = %bb.x, %bb.aa
  %i.ei = phi ptr [ %i.du, %bb.aa ], [ %i.ds, %bb.x ] ; 6 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 32     ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  store ptr %i.ek, ptr @Action_new.actionfreelist, align 8
  %i.el = load ptr, ptr %i.b, align 8
  store ptr %i.el, ptr %i.ej, align 8
  store ptr %i.ei, ptr %i.b, align 8
  %i.em = getelementptr i8, ptr %i.ei, i64 8
  store i32 0, ptr %i.em, align 8
  store ptr %i.af, ptr %i.ei, align 8
  %i.en = getelementptr i8, ptr %i.ei, i64 24
  store ptr null, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %i.ei, i64 16
  store ptr %i.ck, ptr %i.eo, align 8
  br label %.loopexit
end_hunk_0
begin_hunk_1_@translate_code:bb.a
  %.not193 = icmp eq i32 %i.ba, %i.bf
  br i1 %.not193, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %0, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %1, i64 20
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = load ptr, ptr %i.bd, align 8
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.bh, i32 noundef %i.bj, ptr noundef nonnull @.str.140, ptr noundef %i.bk, ptr noundef nonnull %i.au, ptr noundef %i.bl, ptr noundef nonnull %i.r)
  %i.bm = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.l
  call void (ptr, ptr, ...) @lemon_sprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.au, ptr noundef nonnull %i.r)
  %i.bp = load ptr, ptr %i.h, align 8
  %i.bq = call ptr @strstr(ptr noundef %i.bp, ptr noundef nonnull dereferenceable(1) %i.c) #44 ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.c, %has_destructor.exit, %append_str.exit219, %bb.k, %bb.o
  %.0165245 = phi i8 [ 0, %bb.o ], [ 1, %bb.m ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %has_destructor.exit ], [ 0, %append_str.exit219 ], [ 0, %bb.k ]
  %.0166243 = phi ptr [ %i.bq, %bb.o ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.c ], [ null, %has_destructor.exit ], [ null, %append_str.exit219 ], [ null, %bb.k ]
  %i.br = load i32, ptr %i.d, align 8
  %i.bs = sub i32 1, %i.br
  %i.bt = load ptr, ptr %1, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 80
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %i.b, i32 noundef 2, i64 noundef 50, ptr noundef nonnull @.str.142, i32 noundef %i.bs, i32 noundef %i.bv) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %1, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 80
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %i.b, i32 noundef 2, i64 noundef 50, ptr noundef nonnull @.str.143, i32 noundef %i.bz) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %.not195246 = phi i1 [ false, %.thread ], [ true, %bb.p ]
  %.0165244 = phi i8 [ %.0165245, %.thread ], [ 0, %bb.p ] ; 2 uses
  %.0166242 = phi ptr [ %.0166243, %.thread ], [ null, %bb.p ]
  %.0169 = phi i32 [ 0, %.thread ], [ 1, %bb.p ]
  %i.cb = load i32, ptr @append_str.used, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = load ptr, ptr @append_str.z, align 8    ; 3 uses
  %i.ce = icmp ne ptr %i.cd, null
  %or.cond.i220 = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.i220, label %bb.r, label %append_str.exit222

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.cd, align 1
  br label %append_str.exit222

append_str.exit222:                               ; preds = %bb.q, %bb.r
  store i32 0, ptr @append_str.used, align 4
  %i.cf = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  %.not196274 = icmp eq i8 %i.cg, 0
  br i1 %.not196274, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %append_str.exit222
  %i.ch = getelementptr i8, ptr %1, i64 8
  %i.ci = getelementptr i8, ptr %1, i64 40
  %i.cj = getelementptr i8, ptr %1, i64 32
  %i.ck = getelementptr i8, ptr %0, i64 224
  %i.cl = getelementptr i8, ptr %1, i64 20
  %i.cm = getelementptr i8, ptr %0, i64 80        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph280, %bb.ao
  %i.cn = phi i8 [ %i.cg, %.lr.ph280 ], [ %i.fd, %bb.ao ]
  %.1279 = phi i8 [ %.0165244, %.lr.ph280 ], [ %.4, %bb.ao ] ; 6 uses
  %.0167276 = phi i32 [ 0, %.lr.ph280 ], [ %.1168, %bb.ao ] ; 2 uses
  %.0174275 = phi ptr [ %i.cf, %.lr.ph280 ], [ %i.fc, %bb.ao ] ; 13 uses
  %i.co = icmp eq ptr %.0174275, %.0166242
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cp = call ptr @append_str(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #44
  %i.cr = shl i64 %i.cq, 32
  %sext = add i64 %i.cr, -4294967296
  %i.cs = ashr exact i64 %sext, 32
  %i.ct = getelementptr i8, ptr %.0174275, i64 %i.cs
  br label %bb.ao

bb.u:                                             ; preds = %bb.s
  %i.cu = tail call ptr @__ctype_b_loc() #47
  %i.cv = load ptr, ptr %i.cu, align 8            ; 3 uses
  %i.cw = zext i8 %i.cn to i64
  %i.cx = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = and i16 %i.cy, 1024
  %.not206 = icmp eq i16 %i.cz, 0
  br i1 %.not206, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.h, align 8
  %i.db = icmp eq ptr %.0174275, %i.da
  br i1 %i.db, label %.critedge.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr i8, ptr %.0174275, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr [2 x i8], ptr %i.cv, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 8
  %.not207 = icmp ne i16 %i.dh, 0
  %.not208 = icmp eq i8 %i.dd, 95
  %or.cond214 = or i1 %.not208, %.not207
  br i1 %or.cond214, label %bb.an, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.w, %bb.v
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.0174.pn = phi ptr [ %.0173, %.critedge ], [ %.0174275, %.critedge.preheader ]
  %.0173 = getelementptr i8, ptr %.0174.pn, i64 1 ; 6 uses
  %i.di = load i8, ptr %.0173, align 1            ; 3 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr [2 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = and i16 %i.dl, 8
  %.not209 = icmp ne i16 %i.dm, 0
  %i.dn = icmp eq i8 %i.di, 95
  %or.cond215 = or i1 %i.dn, %.not209
  br i1 %or.cond215, label %.critedge, label %bb.x, !llvm.loop !296

bb.x:                                             ; preds = %.critedge
  store i8 0, ptr %.0173, align 1
  %i.do = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not210 = icmp eq ptr %i.do, null
  br i1 %.not210, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = call i32 @strcmp(ptr noundef %.0174275, ptr noundef nonnull dereferenceable(1) %i.do) #44
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dr = call ptr @append_str(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.loopexit260

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ds = load i32, ptr %i.d, align 8             ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph273, label %.loopexit260

.lr.ph273:                                        ; preds = %bb.aa
  %i.du = load ptr, ptr %i.ci, align 8            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ds to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph273, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %bb.am ] ; 6 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not211 = icmp eq ptr %i.dw, null
  br i1 %.not211, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = call i32 @strcmp(ptr noundef %.0174275, ptr noundef nonnull dereferenceable(1) %i.dw) #44
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ea = icmp eq i64 %indvars.iv, 0
  %i.eb = icmp ne i32 %.0167276, 0
  %or.cond = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.ck, align 8
  %i.ed = load i32, ptr %i.cl, align 4
  %i.ee = load ptr, ptr %i.du, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.ec, i32 noundef %i.ed, ptr noundef nonnull @.str.144, ptr noundef %i.ee, ptr noundef nonnull %i.c)
  %i.ef = load i32, ptr %i.cm, align 8
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.cm, align 8
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.h, align 8
  %.not212 = icmp eq ptr %.0174275, %i.eh
  br i1 %.not212, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr i8, ptr %.0174275, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 64
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.el = add i32 %i.dz, 1
  %i.em = sub i32 %i.el, %i.ds
  %i.en = call ptr @append_str(ptr noundef nonnull @.str.145, i32 noundef -1, i32 noundef %i.em, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.eo = load ptr, ptr %i.cj, align 8
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr i8, ptr %i.eq, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.pn = phi ptr [ %i.ew, %bb.aj ], [ %i.eq, %bb.ai ]
  %.0163.in = getelementptr i8, ptr %.pn, i64 80
  %.0163 = load i32, ptr %.0163.in, align 8
  %i.ex = add i32 %i.dz, 1
  %i.ey = sub i32 %i.ex, %i.ds
  %i.ez = call ptr @append_str(ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %i.ey, i32 noundef %.0163) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.ae
  %i.fa = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.fa, align 1
  br label %.loopexit260

bb.am:                                            ; preds = %bb.ab, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit260, label %bb.ab, !llvm.loop !297

.loopexit260:                                     ; preds = %bb.am, %bb.aa, %bb.al, %bb.z
  %.1175 = phi ptr [ %.0173, %bb.z ], [ %.0173, %bb.al ], [ %.0174275, %bb.aa ], [ %.0174275, %bb.am ]
  %.2 = phi i8 [ 1, %bb.z ], [ %.1279, %bb.al ], [ %.1279, %bb.aa ], [ %.1279, %bb.am ]
  store i8 %i.di, ptr %.0173, align 1
  br label %bb.an

bb.an:                                            ; preds = %.loopexit260, %bb.w, %bb.u
  %.2176 = phi ptr [ %.1175, %.loopexit260 ], [ %.0174275, %bb.w ], [ %.0174275, %bb.u ] ; 2 uses
  %.3 = phi i8 [ %.2, %.loopexit260 ], [ %.1279, %bb.w ], [ %.1279, %bb.u ]
  %i.fb = call ptr @append_str(ptr noundef %.2176, i32 noundef 1, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.t
  %.3177 = phi ptr [ %i.ct, %bb.t ], [ %.2176, %bb.an ]
  %.1168 = phi i32 [ 1, %bb.t ], [ %.0167276, %bb.an ]
  %.4 = phi i8 [ %.1279, %bb.t ], [ %.3, %bb.an ] ; 2 uses
  %i.fc = getelementptr i8, ptr %.3177, i64 1     ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1             ; 2 uses
  %.not196 = icmp eq i8 %i.fd, 0
  br i1 %.not196, label %._crit_edge281.loopexit, label %bb.s, !llvm.loop !298

._crit_edge281.loopexit:                          ; preds = %bb.ao
  %.pre310.a = load i32, ptr @append_str.used, align 4
  %.pre311.a = load ptr, ptr @append_str.z, align 8
  %i.fe = icmp eq i32 %.pre310.a, 0
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %append_str.exit222
  %i.ff = phi ptr [ %i.cd, %append_str.exit222 ], [ %.pre311.a, %._crit_edge281.loopexit ] ; 7 uses
  %i.fg = phi i1 [ true, %append_str.exit222 ], [ %i.fe, %._crit_edge281.loopexit ]
  %.1.lcssa = phi i8 [ %.0165244, %append_str.exit222 ], [ %.4, %._crit_edge281.loopexit ]
  %i.fh = icmp ne ptr %i.ff, null
  %or.cond.i223 = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i223, label %.thread249, label %append_str.exit225

.thread249:                                       ; preds = %._crit_edge281
  store i8 0, ptr %i.ff, align 1
  br label %bb.ar

append_str.exit225:                               ; preds = %._crit_edge281
  store i32 0, ptr @append_str.used, align 4
  %.not197 = icmp eq ptr %i.ff, null
  br i1 %.not197, label %append_str.exit228, label %bb.ap

bb.ap:                                            ; preds = %append_str.exit225
  %.pr = load i8, ptr %i.ff, align 1
  %.not198 = icmp eq i8 %.pr, 0
  br i1 %.not198, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = call ptr @Strsafe(ptr noundef nonnull %i.ff)
  store ptr %i.fi, ptr %i.h, align 8
  %.pre312 = load i32, ptr @append_str.used, align 4
  %.pre313 = load ptr, ptr @append_str.z, align 8
  %i.fj = icmp eq i32 %.pre312, 0
  br label %bb.ar

bb.ar:                                            ; preds = %.thread249, %bb.aq, %bb.ap
  %i.fk = phi ptr [ %i.ff, %.thread249 ], [ %.pre313, %bb.aq ], [ %i.ff, %bb.ap ] ; 2 uses
  %i.fl = phi i1 [ true, %.thread249 ], [ %i.fj, %bb.aq ], [ true, %bb.ap ]
  %i.fm = icmp ne ptr %i.fk, null
  %or.cond.i226 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i226, label %bb.as, label %append_str.exit228

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %i.fk, align 1
  br label %append_str.exit228

append_str.exit228:                               ; preds = %append_str.exit225, %bb.ar, %bb.as
  store i32 0, ptr @append_str.used, align 4
  %i.fn = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  %i.fq = icmp ne i8 %.1.lcssa, 0
  %or.cond3 = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond3, label %bb.au, label %bb.at

bb.at:                                            ; preds = %append_str.exit228
  %i.fr = getelementptr i8, ptr %0, i64 224
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr i8, ptr %1, i64 20
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = load ptr, ptr %1, align 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.fs, i32 noundef %i.fu, ptr noundef nonnull @.str.146, ptr noundef nonnull %i.fo, ptr noundef %i.fw, ptr noundef nonnull %i.fo)
  %i.fx = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %append_str.exit228
  %i.ga = load i32, ptr %i.d, align 8             ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph290, label %._crit_edge291

.lr.ph290:                                        ; preds = %bb.au
  %i.gc = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.gd = getelementptr i8, ptr %0, i64 224       ; 3 uses
  %i.ge = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %i.gf = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.gg = getelementptr i8, ptr %0, i64 80        ; 6 uses
  %i.gh = getelementptr i8, ptr %0, i64 216
  %i.gi = getelementptr i8, ptr %0, i64 208
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph290, %bb.bj
  %indvars.iv305 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next306, %bb.bj ] ; 11 uses
  %i.gj = phi i32 [ %i.ga, %.lr.ph290 ], [ %i.ij, %bb.bj ]
  %i.gk = load ptr, ptr %i.gc, align 8
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %indvars.iv305
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not201 = icmp eq ptr %i.gm, null
  %.not338 = icmp eq i64 %indvars.iv305, 0        ; 2 uses
  br i1 %.not201, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not338, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not203 = icmp eq ptr %i.gn, null
  br i1 %.not203, label %.lr.ph285, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gn, ptr noundef nonnull dereferenceable(1) %i.gm) #44
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.az, label %.lr.ph285

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.gd, align 8
  %i.gr = load i32, ptr %i.ge, align 4
  %i.gs = load ptr, ptr %i.gf, align 8
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv305
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.gq, i32 noundef %i.gr, ptr noundef nonnull @.str.147, ptr noundef %i.gv, ptr noundef nonnull %i.gm)
  %i.gw = load i32, ptr %i.gg, align 8
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gg, align 8
  br label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.ax, %bb.ay, %bb.az
  %2 = load ptr, ptr %i.gc, align 8               ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %2, i64 %indvars.iv305
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph285, %bb.bd
  %indvars.iv300 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next301, %bb.bd ] ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %2, i64 %indvars.iv300
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not204 = icmp eq ptr %i.ha, null
  br i1 %.not204, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.hc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef %i.hb) #44
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.he = load ptr, ptr %i.gd, align 8
  %i.hf = load i32, ptr %i.ge, align 4
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.he, i32 noundef %i.hf, ptr noundef nonnull @.str.148, ptr noundef %i.hb)
  %i.hg = load i32, ptr %i.gg, align 8
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.gg, align 8
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ba, %bb.bb
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %indvars.iv305
  br i1 %exitcond304.not, label %.loopexit, label %bb.ba, !llvm.loop !299

.loopexit:                                        ; preds = %bb.bd, %bb.bc, %bb.aw
  %i.hi = getelementptr i8, ptr %i.a, i64 %indvars.iv305
  %i.hj = load i8, ptr %i.hi, align 1
  %.not205 = icmp eq i8 %i.hj, 0
  br i1 %.not205, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.loopexit
  %i.hk = load ptr, ptr %i.gd, align 8
  %i.hl = load i32, ptr %i.ge, align 4
  %i.hm = load ptr, ptr %i.gc, align 8
  %i.hn = getelementptr [8 x i8], ptr %i.hm, i64 %indvars.iv305
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = load ptr, ptr %i.gf, align 8
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %indvars.iv305
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.hk, i32 noundef %i.hl, ptr noundef nonnull @.str.149, ptr noundef %i.ho, ptr noundef %i.hs, ptr noundef %i.ho)
  %i.ht = load i32, ptr %i.gg, align 8
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.gg, align 8
  br label %bb.bj

bb.bf:                                            ; preds = %bb.av
  br i1 %.not338, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load ptr, ptr %i.gf, align 8
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %indvars.iv305
  %i.hx = load ptr, ptr %i.hw, align 8            ; 3 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %has_destructor.exit232, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ib = load ptr, ptr %i.gh, align 8
  %.not.i229 = icmp eq ptr %i.ib, null
  br i1 %.not.i229, label %bb.bi, label %has_destructor.exit232.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ic = getelementptr i8, ptr %i.hx, i64 56
  br label %has_destructor.exit232

has_destructor.exit232:                           ; preds = %bb.bg, %bb.bi
  %.0.shrunk.i230.in.in = phi ptr [ %i.ic, %bb.bi ], [ %i.gi, %bb.bg ]
  %.0.shrunk.i230.in = load ptr, ptr %.0.shrunk.i230.in.in, align 8
  %.0.shrunk.i230.not = icmp eq ptr %.0.shrunk.i230.in, null
  br i1 %.0.shrunk.i230.not, label %bb.bj, label %has_destructor.exit232.thread

has_destructor.exit232.thread:                    ; preds = %bb.bh, %has_destructor.exit232
  %i.id = getelementptr i8, ptr %i.hx, i64 8
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = trunc i64 %indvars.iv305 to i32
  %i.ig = add i32 %i.if, 1
  %i.ih = sub i32 %i.ig, %i.gj
  %i.ii = call ptr @append_str(ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef %i.ie, i32 noundef %i.ih) ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %.loopexit, %has_destructor.exit232.thread, %has_destructor.exit232, %bb.bf
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.ij = load i32, ptr %i.d, align 8             ; 3 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next306, %i.ik
  br i1 %i.il, label %bb.av, label %._crit_edge291, !llvm.loop !300

._crit_edge291:                                   ; preds = %bb.bj, %bb.au
  %.lcssa261 = phi i32 [ %i.ga, %bb.au ], [ %i.ij, %bb.bj ]
  br i1 %.not195246, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %._crit_edge291
  %i.im = sub i32 1, %.lcssa261
  %i.in = load ptr, ptr %1, align 8
  %i.io = getelementptr i8, ptr %i.in, i64 80
  %i.ip = load i32, ptr %i.io, align 8
  %i.iq = call ptr @append_str(ptr noundef nonnull @.str.150, i32 noundef 0, i32 noundef %i.im, i32 noundef %i.ip) ; 0 uses
  %i.ir = call ptr @append_str(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.is = call ptr @append_str(ptr noundef nonnull @.str.151, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge291
  %i.it = load i32, ptr @append_str.used, align 4
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = load ptr, ptr @append_str.z, align 8    ; 5 uses
  %i.iw = icmp ne ptr %i.iv, null
  %or.cond.i233 = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %or.cond.i233, label %.thread257, label %append_str.exit235

.thread257:                                       ; preds = %bb.bl
  store i8 0, ptr %i.iv, align 1
  store i32 0, ptr @append_str.used, align 4
  br label %bb.bo

append_str.exit235:                               ; preds = %bb.bl
  store i32 0, ptr @append_str.used, align 4
  %.not199 = icmp eq ptr %i.iv, null
  br i1 %.not199, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %append_str.exit235
  %.pr256 = load i8, ptr %i.iv, align 1
  %.not200 = icmp eq i8 %.pr256, 0
  br i1 %.not200, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ix = call ptr @Strsafe(ptr noundef nonnull %i.iv)
  %i.iy = getelementptr i8, ptr %1, i64 72
  store ptr %i.ix, ptr %i.iy, align 8
  store i32 0, ptr %i.n, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.thread257, %bb.bn, %bb.bm, %append_str.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret i32 %.0169
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @Strsafe(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @x1a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Strsafe_find.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %.not5.i.i = icmp eq i8 %i.d, 0
  br i1 %.not5.i.i, label %strhash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.e = phi i8 [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.c ]
  %.07.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.036.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %0, %bb.c ]
  %i.f = mul i32 %.07.i.i, 13
  %i.g = getelementptr i8, ptr %.036.i.i, i64 1   ; 2 uses
  %i.h = sext i8 %i.e to i32
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  %i.j = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %strhash.exit.i, label %.lr.ph.i.i, !llvm.loop !6

strhash.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %i.k = load i32, ptr %i.b, align 8
  %i.l = add i32 %i.k, -1
  %i.m = and i32 %i.l, %.0.lcssa.i.i
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %.09.i = load ptr, ptr %i.q, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %Strsafe_find.exit.thread, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.011.i, i64 8
  %.0.i = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %Strsafe_find.exit.thread, label %.lr.ph.i, !llvm.loop !33

.lr.ph.i:                                         ; preds = %strhash.exit.i, %bb.d
  %.011.i = phi ptr [ %.0.i, %bb.d ], [ %.09.i, %strhash.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %.011.i, align 8           ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef %i.s, ptr noundef nonnull readonly dereferenceable(1) %0) #44
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Strsafe_find.exit, label %bb.d

end_hunk_1
