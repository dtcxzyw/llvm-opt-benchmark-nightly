inline.NumInlined: 252
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Rnm_ManSensitize:bb.a
  %i.hf = and i32 %i.he, 1
  %.not91.not = icmp eq i32 %i.hf, 0
  br i1 %.not91.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %.pre = load i32, ptr %i.hd, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.hg = phi i32 [ %.pre, %bb.q ], [ %i.he, %._crit_edge ]
  %i.hh = lshr i32 %i.hg, 4
  %i.hi = and i32 %i.hh, 16777215
  ret i32 %i.hi
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Rnm_ManJustifyPropFanout_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val116.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val117.pre = load i32, ptr %i.b, align 8, !tbaa !82
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 8
  %.val118.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %tailrecurse

tailrecurse:                                      ; preds = %Gia_ObjIsRi.exit, %bb.a
  %.val118 = phi i32 [ %.val118.pre, %bb.a ], [ %.val106, %Gia_ObjIsRi.exit ]
  %.val117 = phi i32 [ %.val117.pre, %bb.a ], [ %.val105, %Gia_ObjIsRi.exit ]
  %.val116 = phi ptr [ %.val116.pre, %bb.a ], [ %.val104, %Gia_ObjIsRi.exit ]
  %.tr152 = phi ptr [ %1, %bb.a ], [ %i.cq, %Gia_ObjIsRi.exit ] ; 6 uses
  %.tr153 = phi i32 [ %2, %bb.a ], [ %i.cr, %Gia_ObjIsRi.exit ] ; 5 uses
  %i.e = getelementptr i8, ptr %.tr152, i64 8
  %i.f = mul nsw i32 %.val117, %.tr153
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %.val116, i64 %i.g
  %i.i = zext i32 %.val118 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 2                           ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %.val113 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val115 = load i32, ptr %i.e, align 4, !tbaa !64
  %i.m = zext i32 %.val115 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val113, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.r = or disjoint i32 %i.o, 4
  store i32 %i.r, ptr %i.n, align 4
  %i.s = load i32, ptr %i.c, align 4, !tbaa !87
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 4, !tbaa !87
  %.pre = load i32, ptr %i.j, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %i.u = phi i32 [ %.pre, %bb.b ], [ %i.l, %tailrecurse ]
  %i.v = and i32 %i.u, 8
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %.tr152, i64 8
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.078170 = phi i32 [ %i.ai, %bb.f ], [ %i.z, %bb.d ] ; 4 uses
  %.val107 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val108 = load i32, ptr %i.b, align 8, !tbaa !82
  %.val109 = load i32, ptr %i.w, align 4, !tbaa !64
  %i.ab = mul nsw i32 %.val108, %.078170
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val107, i64 %i.ac
  %i.ae = zext i32 %.val109 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 2
  %.not92 = icmp eq i32 %i.ah, 0
  br i1 %.not92, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void @Rnm_ManJustifyPropFanout_rec(ptr noundef nonnull %0, ptr noundef nonnull %.tr152, i32 noundef %.078170, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ai = add nsw i32 %.078170, -1
  %i.aj = icmp sgt i32 %.078170, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !8
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %.val = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.am = ptrtoint ptr %.tr152 to i64
  %i.an = ptrtoint ptr %.val to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 12
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17 ; 7 uses
  %i.at = load i32, ptr %3, align 8, !tbaa !20
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %._crit_edge
  %i.av = icmp slt i32 %i.as, 16
  br i1 %i.av, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ax, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.az = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.ay, %bb.i ], [ %i.az, %bb.j ]
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i32 %i.as, 1073741823
  %i.bc = shl nuw nsw i32 %i.as, 1
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.as, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.be, null
  %i.bf = zext nneg i32 %spec.select.i to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call ptr @realloc(ptr noundef nonnull %i.be, i64 noundef %i.bg) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bg) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = phi ptr [ %i.bh, %bb.m ], [ %i.bi, %bb.n ]
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.o, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !20
  %.pre186 = load i32, ptr %i.ar, align 4, !tbaa !17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.bk = phi i32 [ %i.as, %._crit_edge ], [ %i.as, %bb.k ], [ %.pre186, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bn = add nsw i32 %i.bk, 1
  store i32 %i.bn, ptr %i.ar, align 4, !tbaa !17
  %i.bo = sext i32 %i.bk to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 %i.aq, ptr %i.bp, align 4, !tbaa !54
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %.val94 = load i64, ptr %.tr152, align 4        ; 3 uses
  %i.bq = and i64 %.val94, 2147483648
  %.not.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %.val94, 536870911
  %i.bs = icmp eq i64 %i.br, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bs
  br i1 %narrow.i.not, label %.critedge155.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !79
  %i.bw = icmp eq i32 %.tr153, %i.bv
  br i1 %i.bw, label %.critedge, label %Gia_ObjIsPo.exit

.critedge155.preheader:                           ; preds = %bb.p
  %i.bx = ptrtoint ptr %.tr152 to i64
  br label %.critedge155

Gia_ObjIsPo.exit:                                 ; preds = %bb.q
  %i.by = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.bz = lshr i64 %.val94, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 536870911                ; 2 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 16
  %.val4.i = load i32, ptr %i.cc, align 8, !tbaa !70
  %i.cd = getelementptr i8, ptr %i.by, i64 72
  %.val5.i = load ptr, ptr %i.cd, align 8, !tbaa !69
  %i.ce = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.ce, align 4, !tbaa !17 ; 2 uses
  %i.cf = sub nsw i32 %.val5.val.i, %.val4.i
  %.not149 = icmp slt i32 %i.cb, %i.cf
  br i1 %.not149, label %.critedge, label %Gia_ObjIsRi.exit

Gia_ObjIsRi.exit:                                 ; preds = %Gia_ObjIsPo.exit
  %i.cg = getelementptr i8, ptr %i.by, i64 64
  %.val5.i135 = load ptr, ptr %i.cg, align 8, !tbaa !71 ; 2 uses
  %i.ch = getelementptr i8, ptr %.val5.i135, i64 4
  %.val5.val.i136 = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.ci = add i32 %.val5.val.i136, %i.cb
  %i.cj = sub i32 %i.ci, %.val5.val.i
  %i.ck = getelementptr i8, ptr %i.by, i64 32
  %.val6.i = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cl = getelementptr i8, ptr %.val5.i135, i64 8
  %.val7.val.i = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.val7.val.i, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !54
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [12 x i8], ptr %.val6.i, i64 %i.cp ; 2 uses
  %i.cr = add nsw i32 %.tr153, 1                  ; 2 uses
  %.val104 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.val105 = load i32, ptr %i.b, align 8, !tbaa !82 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  %.val106 = load i32, ptr %i.cs, align 4, !tbaa !64 ; 2 uses
  %i.ct = mul nsw i32 %.val105, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val104, i64 %i.cu
  %i.cw = zext i32 %.val106 to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cy, 2
  %.not91 = icmp eq i32 %i.cz, 0
  br i1 %.not91, label %tailrecurse, label %.critedge

.critedge155:                                     ; preds = %.critedge155.preheader, %.critedge155.a
  %.0 = phi i32 [ %i.fb, %.critedge155.a ], [ 0, %.critedge155.preheader ] ; 3 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !8        ; 3 uses
  %5 = getelementptr i8, ptr %4, i64 32
  %.val126 = load ptr, ptr %5, align 8, !tbaa !62 ; 2 uses
  %6 = getelementptr i8, ptr %4, i64 248
  %.val127 = load ptr, ptr %6, align 8, !tbaa !89
  %7 = getelementptr i8, ptr %.val127, i64 8
  %.val127.val = load ptr, ptr %7, align 8, !tbaa !21
  %8 = ptrtoint ptr %.val126 to i64
  %9 = sub i64 %i.bx, %8
  %10 = sdiv exact i64 %9, 12
  %sext.i = shl i64 %10, 32
  %11 = ashr exact i64 %sext.i, 30                ; 2 uses
  %12 = getelementptr inbounds i8, ptr %.val127.val, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !54
  %14 = icmp slt i32 %.0, %13
  br i1 %14, label %.lr.ph177, label %.critedge

.lr.ph177:                                        ; preds = %.critedge155
  %i.da = getelementptr i8, ptr %4, i64 256
  %.val129 = load ptr, ptr %i.da, align 8, !tbaa !45
  %i.db = getelementptr i8, ptr %.val129, i64 8
  %.val129.val = load ptr, ptr %i.db, align 8, !tbaa !21 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.val129.val, i64 %11
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !54
  %i.de = add nsw i32 %i.dd, %.0
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val129.val, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !54
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [12 x i8], ptr %.val126, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !64 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.critedge155.a, label %bb.r

bb.r:                                             ; preds = %.lr.ph177
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val102 = load i32, ptr %i.b, align 8, !tbaa !82
  %i.dn = mul nsw i32 %.val102, %.tr153
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.do ; 3 uses
  %i.dq = zext i32 %i.dl to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = and i32 %i.ds, 10
  %or.cond = icmp eq i32 %i.dt, 0
  br i1 %or.cond, label %bb.s, label %.critedge155.a

bb.s:                                             ; preds = %bb.r
  %.val93 = load i64, ptr %i.dj, align 4          ; 5 uses
  %i.du = and i64 %.val93, 2147483648
  %.not.i139 = icmp eq i64 %i.du, 0
  %i.dv = and i64 %.val93, 536870911              ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 536870911
  %narrow.i140.not = or i1 %.not.i139, %i.dw
  br i1 %narrow.i140.not, label %bb.t, label %.critedge155.sink.split

bb.t:                                             ; preds = %bb.s
  %i.dx = sub nsw i64 0, %i.dv
  %i.dy = getelementptr inbounds [12 x i8], ptr %i.dj, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.val100 = load i32, ptr %i.dz, align 4, !tbaa !64
  %i.ea = zext i32 %.val100 to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = trunc i64 %.val93 to i32
  %i.ee = lshr i32 %i.ed, 29
  %i.ef = xor i32 %i.ec, %i.ee
  %i.eg = and i32 %i.ef, 1                        ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = and i32 %i.ec, 2                        ; 2 uses
  %.not85 = icmp ne i32 %i.ei, 0
  %or.cond143.not = and i1 %.not85, %i.eh
  br i1 %or.cond143.not, label %.critedge155.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = lshr i64 %.val93, 32
  %i.ek = and i64 %i.ej, 536870911
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [12 x i8], ptr %i.dj, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %.val97 = load i32, ptr %i.en, align 4, !tbaa !64
  %i.eo = zext i32 %.val97 to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4            ; 3 uses
  %i.er = lshr i64 %.val93, 61
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = xor i32 %i.eq, %i.es                    ; 2 uses
  %i.eu = and i32 %i.et, 1
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = and i32 %i.eq, 2
  %.not86 = icmp ne i32 %i.ew, 0
  %or.cond145.not = and i1 %.not86, %i.ev
  br i1 %or.cond145.not, label %.critedge155.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = and i32 %i.eg, %i.et
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = and i32 %i.ei, %i.eq
  %i.fa = icmp eq i32 %i.ez, 0
  %or.cond147 = or i1 %i.fa, %i.ey
  br i1 %or.cond147, label %.critedge155.a, label %.critedge155.sink.split

.critedge155.sink.split:                          ; preds = %bb.t, %bb.u, %bb.v, %bb.s
  tail call void @Rnm_ManJustifyPropFanout_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.dj, i32 noundef %.tr153, ptr noundef %3)
  br label %.critedge155.a

.critedge155.a:                                   ; preds = %.critedge155.sink.split, %bb.v, %bb.r, %.lr.ph177
  %i.fb = add nuw nsw i32 %.0, 1
  br label %.critedge155, !llvm.loop !90

.critedge:                                        ; preds = %Gia_ObjIsRi.exit, %bb.q, %Gia_ObjIsPo.exit, %.critedge155, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Rnm_ManJustify_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 5 uses
  %.val125169178 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val126170179 = load i32, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val127171180 = load i32, ptr %i.c, align 4, !tbaa !64
  %i.d = mul nsw i32 %.val126170179, %2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %.val125169178, i64 %i.e
  %i.g = zext i32 %.val127171180 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = and i32 %i.i, 2
  %.not172181 = icmp eq i32 %i.j, 0
  br i1 %.not172181, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.outer
  %i.m = phi i32 [ %i.i, %.lr.ph.lr.ph ], [ %i.dh, %tailrecurse.outer ]
  %i.n = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %i.dg, %tailrecurse.outer ]
  %i.o = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %i.db, %tailrecurse.outer ]
  %.tr151.ph183 = phi i32 [ %2, %.lr.ph.lr.ph ], [ %i.da, %tailrecurse.outer ] ; 6 uses
  %.tr150.ph182 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.cz, %tailrecurse.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.p = phi i32 [ %i.m, %.lr.ph ], [ %i.ep, %tailrecurse.backedge ]
  %i.q = phi ptr [ %i.n, %.lr.ph ], [ %i.eo, %tailrecurse.backedge ] ; 2 uses
  %i.r = phi ptr [ %i.o, %.lr.ph ], [ %i.el, %tailrecurse.backedge ] ; 2 uses
  %.tr150173 = phi ptr [ %.tr150.ph182, %.lr.ph ], [ %.tr150.be, %tailrecurse.backedge ] ; 8 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !91
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Rnm_ManJustifyPropFanout_rec(ptr noundef nonnull %0, ptr noundef nonnull %.tr150173, i32 noundef %.tr151.ph183, ptr noundef %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i32 %i.p, 2
  store i32 %i.t, ptr %i.q, align 4
  %.val122 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val124 = load i32, ptr %i.r, align 4, !tbaa !64
  %i.u = zext i32 %.val124 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val122, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = and i32 %i.w, 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or disjoint i32 %i.w, 4
  store i32 %i.z, ptr %i.v, align 4
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !87
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ac = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ad = and i32 %i.ac, 8
  %.not92 = icmp eq i32 %i.ad, 0
  br i1 %.not92, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !91
  %.not105 = icmp eq i32 %i.ae, 0
  br i1 %.not105, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !79 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %bb.h, %bb.j
  %.0184 = phi i32 [ %i.ar, %bb.j ], [ %i.ai, %bb.h ] ; 4 uses
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val117 = load i32, ptr %i.b, align 8, !tbaa !82
  %.val118 = load i32, ptr %i.r, align 4, !tbaa !64
  %i.ak = mul nsw i32 %.val117, %.0184
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val116, i64 %i.al
  %i.an = zext i32 %.val118 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 2
  %.not106 = icmp eq i32 %i.aq, 0
  br i1 %.not106, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph185
  tail call void @Rnm_ManJustifyPropFanout_rec(ptr noundef nonnull %0, ptr noundef nonnull %.tr150173, i32 noundef %.0184, ptr noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph185, %bb.i
  %i.ar = add nsw i32 %.0184, -1
  %i.as = icmp sgt i32 %.0184, 0
  br i1 %i.as, label %.lr.ph185, label %.loopexit, !llvm.loop !92

bb.k:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %0, align 8, !tbaa !8
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %.val = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.av = ptrtoint ptr %.tr150173 to i64
  %i.aw = ptrtoint ptr %.val to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 12
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !17 ; 7 uses
  %i.bc = load i32, ptr %3, align 8, !tbaa !20
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %i.be = icmp slt i32 %i.bb, 16
  br i1 %i.be, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.o, %bb.n
  %i.bj = phi ptr [ %i.bh, %bb.n ], [ %i.bi, %bb.o ]
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.bk = icmp samesign ult i32 %i.bb, 1073741823
  %i.bl = shl nuw nsw i32 %i.bb, 1
  %spec.select.i = select i1 %i.bk, i32 %i.bl, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bb, %spec.select.i
  br i1 %.not.i9.i, label %bb.q, label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bn, null
  %i.bo = zext nneg i32 %spec.select.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bp) #26
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = phi ptr [ %i.bq, %bb.r ], [ %i.br, %bb.s ]
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.t, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !20
  %.pre = load i32, ptr %i.ba, align 4, !tbaa !17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.p, %Vec_IntGrow.exit11.sink.split.i
  %i.bt = phi i32 [ %i.bb, %bb.k ], [ %i.bb, %bb.p ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.bw = add nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.ba, align 4, !tbaa !17
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bx
  store i32 %i.az, ptr %i.by, align 4, !tbaa !54
  br label %.loopexit

bb.u:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %.val128 = load i64, ptr %.tr150173, align 4    ; 9 uses
  %i.ca = and i64 %.val128, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.ca, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsPi.exit, label %.thread
end_hunk_0
