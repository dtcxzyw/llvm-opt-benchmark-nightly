Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heaptuple?download=true
inline.NumInlined: 132
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@heap_attisnull:bb.a
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = and i32 %i.p, 7
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = and i32 %i.x, %i.v
  %.not.i = icmp eq i32 %i.y, 0
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %switch = icmp ugt i32 %1, -7
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %1) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 491, ptr noundef nonnull @__func__.heap_attisnull) #12
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.c, %bb.g, %bb.d
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.d ], [ false, %bb.c ], [ %.not.i, %bb.g ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @nocachegetattr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 23 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 20
  %.val.val = load i16, ptr %i.d, align 4         ; 2 uses
  %i.e = trunc i16 %.val.val to i1
  %i.f = add i32 %1, -1                           ; 8 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %i.f, 3                         ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %first_null_attr.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.c, label %._crit_edge.loopexit.split.loop.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %first_null_attr.exit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.k = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %first_null_attr.exit

first_null_attr.exit:                             ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = shl i32 %.0.lcssa.i, 3
  %i.m = zext nneg i32 %.0.lcssa.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, -1
  %i.r = tail call range(i32 0, 9) i32 @llvm.cttz.i32(i32 range(i32 -256, 0) %i.q, i1 true)
  %i.s = add i32 %i.r, %i.l
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %first_null_attr.exit
  %.0104 = phi i32 [ %i.t, %first_null_attr.exit ], [ %i.f, %bb.a ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = icmp sgt i32 %.0104, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %..0104 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.0104)
  %i.y = add nsw i32 %..0104, -1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sext i16 %i.ac to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0106 = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %.0105 = phi i32 [ %i.y, %bb.e ], [ 0, %bb.d ]  ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ag ; 10 uses
  %i.ai = and i16 %.val.val, 2
  %.not134 = icmp eq i16 %i.ai, 0
  %i.aj = icmp slt i32 %.0105, %.0104             ; 2 uses
  br i1 %.not134, label %.preheader135, label %.preheader138

.preheader138:                                    ; preds = %bb.f
  br i1 %i.aj, label %.lr.ph, label %.preheader136

.lr.ph:                                           ; preds = %.preheader138
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = zext nneg i32 %.0105 to i64
  %wide.trip.count = zext nneg i32 %.0104 to i64
  br label %bb.j

.preheader135:                                    ; preds = %bb.f
  br i1 %i.aj, label %.lr.ph149, label %.preheader

.lr.ph149:                                        ; preds = %.preheader135
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.an = zext i32 %.0105 to i64                  ; 5 uses
  %wide.trip.count170 = zext nneg i32 %.0104 to i64 ; 3 uses
  %i.ao = sub nsw i64 %wide.trip.count170, %i.an
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph149
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = add nsw i32 %.0106, -1
  %i.au = add nsw i32 %i.at, %i.as
  %i.av = sub nsw i32 0, %i.as
  %i.aw = and i32 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sext i16 %i.ay to i32
  %i.ba = add nsw i32 %i.aw, %i.az                ; 2 uses
  %indvars.iv.next168.prol = add nuw nsw i64 %i.an, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph149
  %.lcssa.unr = phi i32 [ poison, %.lr.ph149 ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %indvars.iv167.unr = phi i64 [ %i.an, %.lr.ph149 ], [ %indvars.iv.next168.prol, %.prol.loopexit.unr-lcssa ]
  %.1107147.unr = phi i32 [ %.0106, %.lr.ph149 ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %i.bb = add nsw i64 %wide.trip.count170, -1
  %i.bc = icmp eq i64 %i.bb, %i.an
  br i1 %i.bc, label %.preheader, label %.lr.ph149.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph149.new, %.preheader135
  %.1107.lcssa = phi i32 [ %.0106, %.preheader135 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.cd, %.lr.ph149.new ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0105, %.preheader135 ], [ %.0104, %.lr.ph149.new ], [ %.0104, %.prol.loopexit ] ; 2 uses
  %i.bd = icmp slt i32 %.0.lcssa, %i.f
  br i1 %i.bd, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = zext nneg i32 %.0.lcssa to i64
  %wide.trip.count175 = zext nneg i32 %i.f to i64
  br label %bb.g

.lr.ph149.new:                                    ; preds = %.prol.loopexit, %.lr.ph149.new
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %.lr.ph149.new ], [ %indvars.iv167.unr, %.prol.loopexit ] ; 3 uses
  %.1107147 = phi i32 [ %i.cd, %.lr.ph149.new ], [ %.1107147.unr, %.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv167 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = add i32 %.1107147, -1
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = sub nsw i32 0, %i.bj
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = sext i16 %i.bp to i32
  %i.br = add i32 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv167 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 13
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = add i32 %i.br, -1
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = sub nsw i32 0, %i.bv
  %i.bz = and i32 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = sext i16 %i.cb to i32
  %i.cd = add i32 %i.bz, %i.cc                    ; 2 uses
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %exitcond171.not.1 = icmp eq i64 %indvars.iv.next168.1, %wide.trip.count170
  br i1 %exitcond171.not.1, label %.preheader, label %.lr.ph149.new, !llvm.loop !10

bb.g:                                             ; preds = %.lr.ph154, %bb.i
  %indvars.iv172 = phi i64 [ %i.bf, %.lr.ph154 ], [ %indvars.iv.next173, %bb.i ] ; 3 uses
  %.2108152 = phi i32 [ %.1107.lcssa, %.lr.ph154 ], [ %.3109, %bb.i ] ; 2 uses
  %i.ce = trunc nsw i64 %indvars.iv172 to i32     ; 2 uses
  %3 = ashr i32 %i.ce, 3
  %4 = sext i32 %3 to i64
  %i.cf = getelementptr inbounds i8, ptr %i.c, i64 %4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = and i32 %i.ce, 7
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = and i32 %i.cj, %i.ch
  %.not.i118 = icmp eq i32 %i.ck, 0
  br i1 %.not.i118, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv172 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = add i32 %.2108152, -1
  %i.cq = add i32 %i.cp, %i.co
  %i.cr = sub nsw i32 0, %i.co
  %i.cs = and i32 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i32
  %i.cw = add i32 %i.cs, %i.cv
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.3109 = phi i32 [ %.2108152, %bb.g ], [ %i.cw, %bb.h ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %.loopexit, label %bb.g, !llvm.loop !11

.preheader136:                                    ; preds = %bb.s, %.preheader138
  %.4.lcssa = phi i32 [ %.0106, %.preheader138 ], [ %i.ev, %bb.s ] ; 2 uses
  %.2.lcssa = phi i32 [ %.0105, %.preheader138 ], [ %.0104, %bb.s ] ; 2 uses
  %i.cx = icmp slt i32 %.2.lcssa, %i.f
  br i1 %i.cx, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader136
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cz = zext nneg i32 %.2.lcssa to i64
  %wide.trip.count165 = zext nneg i32 %i.f to i64
  br label %bb.t

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.4140 = phi i32 [ %.0106, %.lr.ph ], [ %i.ev, %bb.s ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dc = load i16, ptr %i.db, align 2            ; 3 uses
  %i.dd = zext nneg i16 %i.dc to i32
  %i.de = icmp eq i16 %i.dc, -1
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.df = sext i32 %.4140 to i64                  ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.ah, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %.not116 = icmp eq i8 %i.dh, 0
  br i1 %.not116, label %.thread127, label %.thread

.thread127:                                       ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = add i32 %.4140, -1
  %i.dm = add i32 %i.dl, %i.dk
  %i.dn = sub nsw i32 0, %i.dk
  %i.do = and i32 %i.dm, %i.dn
  %.pre = sext i32 %i.do to i64                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ah, i64 %.pre
  %.pre177 = load i8, ptr %.phi.trans.insert, align 1
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = add i32 %.4140, -1
  %i.dt = add i32 %i.ds, %i.dr
  %i.du = sub nsw i32 0, %i.dr
  %i.dv = and i32 %i.dt, %i.du                    ; 2 uses
  %i.dw = icmp sgt i16 %i.dc, 0
  br i1 %i.dw, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.dx = add i32 %i.dv, %i.dd
  %i.dy = zext i32 %i.dx to i64
  br label %bb.s

.thread:                                          ; preds = %bb.k, %.thread127
  %i.dz = phi i8 [ %i.dh, %bb.k ], [ %.pre177, %.thread127 ] ; 2 uses
  %.pre-phi = phi i64 [ %i.df, %bb.k ], [ %.pre, %.thread127 ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.ah, i64 %.pre-phi ; 2 uses
  %i.eb = zext i8 %i.dz to i32                    ; 2 uses
  %i.ec = icmp eq i8 %i.dz, 1
  br i1 %i.ec, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.ed = getelementptr i8, ptr %i.ea, i64 1
  %.val.i = load i8, ptr %i.ed, align 1           ; 2 uses
  %i.ee = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.ee, 3
  %i.ef = icmp eq i8 %.val.i, 18
  %i.eg = select i1 %i.ef, i64 18, i64 2
  %i.eh = select i1 %or.cond.i.i.i, i64 10, i64 %i.eg
  br label %VARSIZE_ANY.exit

bb.o:                                             ; preds = %.thread
  %i.ei = and i32 %i.eb, 1
  %.not.i119 = icmp eq i32 %i.ei, 0
  br i1 %.not.i119, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ej = lshr i32 %i.eb, 1
  %i.ek = zext nneg i32 %i.ej to i64
  br label %VARSIZE_ANY.exit

bb.q:                                             ; preds = %bb.o
  %i.el = load i32, ptr %i.ea, align 4
  %i.em = lshr i32 %i.el, 2
  %i.en = zext nneg i32 %i.em to i64
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.n, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.eh, %bb.n ], [ %i.ek, %bb.p ], [ %i.en, %bb.q ]
  %i.eo = add nsw i64 %.0.i, %.pre-phi
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ep = sext i32 %i.dv to i64                   ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ah, i64 %i.ep
  %i.er = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #13
  %i.es = add nsw i64 %i.ep, 1
  %i.et = add i64 %i.es, %i.er
  br label %bb.s

bb.s:                                             ; preds = %VARSIZE_ANY.exit, %bb.r, %bb.m
  %i.eu = phi i64 [ %i.dy, %bb.m ], [ %i.eo, %VARSIZE_ANY.exit ], [ %i.et, %bb.r ]
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader136, label %bb.j, !llvm.loop !12

bb.t:                                             ; preds = %.lr.ph145, %bb.ae
  %indvars.iv162 = phi i64 [ %i.cz, %.lr.ph145 ], [ %indvars.iv.next163, %bb.ae ] ; 3 uses
  %.5143 = phi i32 [ %.4.lcssa, %.lr.ph145 ], [ %.6, %bb.ae ] ; 4 uses
  %i.ew = trunc nsw i64 %indvars.iv162 to i32     ; 2 uses
  %5 = ashr i32 %i.ew, 3
  %6 = sext i32 %5 to i64
  %i.ex = getelementptr inbounds i8, ptr %i.c, i64 %6
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = and i32 %i.ew, 7
  %i.fb = shl nuw nsw i32 1, %i.fa
  %i.fc = and i32 %i.fb, %i.ez
  %.not.i120 = icmp eq i32 %i.fc, 0
  br i1 %.not.i120, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv162 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.ff = load i16, ptr %i.fe, align 2            ; 3 uses
  %i.fg = zext nneg i16 %i.ff to i32
  %i.fh = icmp eq i16 %i.ff, -1
  br i1 %i.fh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fi = sext i32 %.5143 to i64                  ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ah, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %.not115 = icmp eq i8 %i.fk, 0
  br i1 %.not115, label %.thread130, label %.thread129

.thread130:                                       ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 5
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = add i32 %.5143, -1
  %i.fp = add i32 %i.fo, %i.fn
  %i.fq = sub nsw i32 0, %i.fn
  %i.fr = and i32 %i.fp, %i.fq
  %.pre178 = sext i32 %i.fr to i64                ; 2 uses
  %.phi.trans.insert180 = getelementptr inbounds i8, ptr %i.ah, i64 %.pre178
  %.pre181 = load i8, ptr %.phi.trans.insert180, align 1
  br label %.thread129

bb.w:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 5
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32                    ; 2 uses
  %i.fv = add i32 %.5143, -1
  %i.fw = add i32 %i.fv, %i.fu
  %i.fx = sub nsw i32 0, %i.fu
  %i.fy = and i32 %i.fw, %i.fx                    ; 2 uses
  %i.fz = icmp sgt i16 %i.ff, 0
  br i1 %i.fz, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ga = add i32 %i.fy, %i.fg
  %i.gb = zext i32 %i.ga to i64
  br label %bb.ad

.thread129:                                       ; preds = %bb.v, %.thread130
  %i.gc = phi i8 [ %i.fk, %bb.v ], [ %.pre181, %.thread130 ] ; 2 uses
  %.pre-phi179 = phi i64 [ %i.fi, %bb.v ], [ %.pre178, %.thread130 ] ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.ah, i64 %.pre-phi179 ; 2 uses
  %i.ge = zext i8 %i.gc to i32                    ; 2 uses
  %i.gf = icmp eq i8 %i.gc, 1
  br i1 %i.gf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread129
  %i.gg = getelementptr i8, ptr %i.gd, i64 1
  %.val.i123 = load i8, ptr %i.gg, align 1        ; 2 uses
  %i.gh = add i8 %.val.i123, -1
  %or.cond.i.i.i124 = icmp ult i8 %i.gh, 3
  %i.gi = icmp eq i8 %.val.i123, 18
  %i.gj = select i1 %i.gi, i64 18, i64 2
  %i.gk = select i1 %or.cond.i.i.i124, i64 10, i64 %i.gj
  br label %VARSIZE_ANY.exit125

bb.z:                                             ; preds = %.thread129
  %i.gl = and i32 %i.ge, 1
  %.not.i121 = icmp eq i32 %i.gl, 0
  br i1 %.not.i121, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = lshr i32 %i.ge, 1
  %i.gn = zext nneg i32 %i.gm to i64
  br label %VARSIZE_ANY.exit125

bb.ab:                                            ; preds = %bb.z
  %i.go = load i32, ptr %i.gd, align 4
  %i.gp = lshr i32 %i.go, 2
  %i.gq = zext nneg i32 %i.gp to i64
  br label %VARSIZE_ANY.exit125

VARSIZE_ANY.exit125:                              ; preds = %bb.y, %bb.aa, %bb.ab
  %.0.i122 = phi i64 [ %i.gk, %bb.y ], [ %i.gn, %bb.aa ], [ %i.gq, %bb.ab ]
  %i.gr = add nsw i64 %.0.i122, %.pre-phi179
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.gs = sext i32 %i.fy to i64                   ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.ah, i64 %i.gs
  %i.gu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #13
  %i.gv = add nsw i64 %i.gs, 1
  %i.gw = add i64 %i.gv, %i.gu
  br label %bb.ad

bb.ad:                                            ; preds = %VARSIZE_ANY.exit125, %bb.ac, %bb.x
  %i.gx = phi i64 [ %i.gb, %bb.x ], [ %i.gr, %VARSIZE_ANY.exit125 ], [ %i.gw, %bb.ac ]
  %i.gy = trunc i64 %i.gx to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.ad
  %.6 = phi i32 [ %i.gy, %bb.ad ], [ %.5143, %bb.t ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %.loopexit, label %bb.t, !llvm.loop !13

.loopexit:                                        ; preds = %bb.ae, %bb.i, %.preheader136, %.preheader
  %.7 = phi i32 [ %.3109, %bb.i ], [ %.1107.lcssa, %.preheader ], [ %.4.lcssa, %.preheader136 ], [ %.6, %bb.ae ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ha = sext i32 %i.f to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hd = load i16, ptr %i.hc, align 2            ; 2 uses
  %i.he = icmp eq i16 %i.hd, -1
  br i1 %i.he, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.hf = sext i32 %.7 to i64                     ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.ah, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1
  %.not = icmp eq i8 %i.hh, 0
  br i1 %.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %.loopexit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 5
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %i.hl = add i32 %.7, -1
  %i.hm = add i32 %i.hl, %i.hk
  %i.hn = sub nsw i32 0, %i.hk
  %i.ho = and i32 %i.hm, %i.hn
  %.pre182 = sext i32 %i.ho to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.pre-phi183 = phi i64 [ %i.hf, %bb.af ], [ %.pre182, %bb.ag ]
  %i.hp = getelementptr inbounds i8, ptr %i.ah, i64 %.pre-phi183 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hr = load i8, ptr %i.hq, align 2, !range !5, !noundef !6
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = sext i16 %i.hd to i32                   ; 3 uses
  br i1 %i.hs, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.hu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.ht)
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %.split.i, label %bb.an

.split.i:                                         ; preds = %bb.ai
  %i.hw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.ht, i1 true)
  switch i32 %i.hw, label %bb.an [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
  ]

bb.aj:                                            ; preds = %.split.i
  %i.hx = load i8, ptr %i.hp, align 1
  %i.hy = sext i8 %i.hx to i64
  br label %fetch_att.exit

bb.ak:                                            ; preds = %.split.i
  %i.hz = load i16, ptr %i.hp, align 2
  %i.ia = sext i16 %i.hz to i64
  br label %fetch_att.exit

bb.al:                                            ; preds = %.split.i
  %i.ib = load i32, ptr %i.hp, align 4
  %i.ic = sext i32 %i.ib to i64
  br label %fetch_att.exit

bb.am:                                            ; preds = %.split.i
  %i.id = load i64, ptr %i.hp, align 8
  br label %fetch_att.exit

bb.an:                                            ; preds = %.split.i, %bb.ai
  %i.ie = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.if = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef range(i32 -32768, 32768) %i.ht) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.6, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #12
  unreachable

bb.ao:                                            ; preds = %bb.ah
  %i.ig = ptrtoint ptr %i.hp to i64
  br label %fetch_att.exit

fetch_att.exit:                                   ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ao
  %.0.i126 = phi i64 [ %i.hy, %bb.aj ], [ %i.ia, %bb.ak ], [ %i.ic, %bb.al ], [ %i.id, %bb.am ], [ %i.ig, %bb.ao ]
  ret i64 %.0.i126
}

; Function Attrs: nounwind uwtable
define dso_local i64 @heap_getsysattr(ptr noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr %3, align 1
  switch i32 %1, label %bb.g [
end_hunk_0
begin_hunk_1_@heap_deform_tuple:bb.a
  %i.ba = ptrtoint ptr %i.an to i64
  br label %fetch_att_noerr.exit

fetch_att_noerr.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.az, %bb.j ], [ %i.au, %bb.g ], [ %i.aw, %bb.h ], [ %i.ay, %bb.i ], [ %i.ba, %bb.k ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %.0.i, ptr %i.bb, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.l, label %bb.e, !llvm.loop !20

bb.l:                                             ; preds = %fetch_att_noerr.exit
  %i.bc = add nsw i32 %.077, -1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bf, i64 34
  %i.bg = load i16, ptr %scevgep, align 2
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l
  %storemerge = phi i32 [ %i.bi, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.077, %bb.l ], [ 0, %bb.d ]    ; 3 uses
  %i.bj = icmp slt i32 %.1, %.0
  br i1 %i.bj, label %.lr.ph, label %.preheader104

.lr.ph:                                           ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = zext nneg i32 %.1 to i64
  %wide.trip.count128 = zext nneg i32 %.0 to i64
  br label %bb.n

.preheader104:                                    ; preds = %align_fetch_then_add.exit, %bb.m
  %.099.lcssa = phi i32 [ %storemerge, %bb.m ], [ %.3102, %align_fetch_then_add.exit ]
  %.2.lcssa = phi i32 [ %.1, %bb.m ], [ %.0, %align_fetch_then_add.exit ] ; 3 uses
  %i.bm = icmp slt i32 %.2.lcssa, %i.k
  br i1 %i.bm, label %.lr.ph114, label %.preheader

.lr.ph114:                                        ; preds = %.preheader104
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = zext nneg i32 %.2.lcssa to i64
  %wide.trip.count133 = zext nneg i32 %i.k to i64
  br label %bb.ae

bb.n:                                             ; preds = %.lr.ph, %align_fetch_then_add.exit
  %indvars.iv125 = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next126, %align_fetch_then_add.exit ] ; 4 uses
  %.099109 = phi i32 [ %storemerge, %.lr.ph ], [ %.3102, %align_fetch_then_add.exit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv125
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv125 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i16, ptr %i.br, align 2            ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.bu = load i8, ptr %i.bt, align 1             ; 3 uses
  %i.bv = icmp sgt i16 %i.bs, 0
  br i1 %i.bv, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bw = zext nneg i16 %i.bs to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.by = load i8, ptr %i.bx, align 2, !range !5, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = zext i8 %i.bu to i32                    ; 2 uses
  %i.cb = add i32 %.099109, -1
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = sub nsw i32 0, %i.ca
  %i.ce = and i32 %i.cc, %i.cd                    ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cf ; 5 uses
  %i.ch = add i32 %i.ce, %i.bw                    ; 5 uses
  br i1 %i.bz, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  switch i16 %i.bs, label %bb.t [
    i16 1, label %bb.q
    i16 2, label %bb.r
    i16 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = sext i8 %i.ci to i64
  br label %align_fetch_then_add.exit

bb.r:                                             ; preds = %bb.p
  %i.ck = load i16, ptr %i.cg, align 2
  %i.cl = sext i16 %i.ck to i64
  br label %align_fetch_then_add.exit

bb.s:                                             ; preds = %bb.p
  %i.cm = load i32, ptr %i.cg, align 4
  %i.cn = sext i32 %i.cm to i64
  br label %align_fetch_then_add.exit

bb.t:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.cg, align 8
  br label %align_fetch_then_add.exit

bb.u:                                             ; preds = %bb.o
  %i.cp = ptrtoint ptr %i.cg to i64
  br label %align_fetch_then_add.exit

bb.v:                                             ; preds = %bb.n
  %i.cq = icmp eq i16 %i.bs, -1
  br i1 %i.cq, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cr = zext i32 %.099109 to i64                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cr
  %.val.i = load i8, ptr %i.cs, align 1           ; 2 uses
  %i.ct = trunc i8 %.val.i to i1
  br i1 %i.ct, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = zext i8 %i.bu to i32                    ; 2 uses
  %i.cv = add i32 %.099109, -1
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = sub nsw i32 0, %i.cu
  %i.cy = and i32 %i.cw, %i.cx                    ; 2 uses
  %.pre.i = zext i32 %i.cy to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre.i
  %.pre40.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cz = phi i8 [ %.pre40.i, %bb.x ], [ %.val.i, %bb.w ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.x ], [ %i.cr, %bb.w ]
  %i.da = phi i32 [ %i.cy, %bb.x ], [ %.099109, %bb.w ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi.i ; 3 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = zext i8 %i.cz to i32                    ; 2 uses
  %i.de = icmp eq i8 %i.cz, 1
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr i8, ptr %i.db, i64 1
  %.val.i.i = load i8, ptr %i.df, align 1         ; 2 uses
  %i.dg = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.dg, 3
  %i.dh = icmp eq i8 %.val.i.i, 18
  %i.di = select i1 %i.dh, i32 18, i32 2
  %i.dj = select i1 %or.cond.i.i.i.i, i32 10, i32 %i.di
  br label %VARSIZE_ANY.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dk = and i32 %i.dd, 1
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = lshr i32 %i.dd, 1
  br label %VARSIZE_ANY.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dm = load i32, ptr %i.db, align 4
  %i.dn = lshr i32 %i.dm, 2
  br label %VARSIZE_ANY.exit.i

VARSIZE_ANY.exit.i:                               ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i = phi i32 [ %i.dj, %bb.z ], [ %i.dl, %bb.ab ], [ %i.dn, %bb.ac ]
  %i.do = add i32 %.0.i.i, %i.da
  br label %align_fetch_then_add.exit

bb.ad:                                            ; preds = %bb.v
  %i.dp = zext i8 %i.bu to i32                    ; 2 uses
  %i.dq = add i32 %.099109, -1
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = sub nsw i32 0, %i.dp
  %i.dt = and i32 %i.dr, %i.ds                    ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.du ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dv) #13
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = add i32 %i.dt, 1
  %i.ea = add i32 %i.dz, %i.dy
  br label %align_fetch_then_add.exit

align_fetch_then_add.exit:                        ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %VARSIZE_ANY.exit.i, %bb.ad
  %.3102 = phi i32 [ %i.ch, %bb.t ], [ %i.ch, %bb.q ], [ %i.ch, %bb.r ], [ %i.ch, %bb.s ], [ %i.ch, %bb.u ], [ %i.do, %VARSIZE_ANY.exit.i ], [ %i.ea, %bb.ad ] ; 2 uses
  %.1.i = phi i64 [ %i.co, %bb.t ], [ %i.cj, %bb.q ], [ %i.cl, %bb.r ], [ %i.cn, %bb.s ], [ %i.cp, %bb.u ], [ %i.dc, %VARSIZE_ANY.exit.i ], [ %i.dw, %bb.ad ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv125
  store i64 %.1.i, ptr %i.eb, align 8
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader104, label %bb.n, !llvm.loop !21

.preheader:                                       ; preds = %bb.ax, %.preheader104
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader104 ], [ %i.k, %bb.ax ] ; 2 uses
  %i.ec = icmp slt i32 %.3.lcssa, %i.e
  br i1 %i.ec, label %.lr.ph117.preheader, label %._crit_edge

.lr.ph117.preheader:                              ; preds = %.preheader
  %i.ed = zext nneg i32 %.3.lcssa to i64
  %wide.trip.count138 = zext nneg i32 %i.e to i64
  br label %.lr.ph117

bb.ae:                                            ; preds = %.lr.ph114, %bb.ax
  %indvars.iv130 = phi i64 [ %i.bo, %.lr.ph114 ], [ %indvars.iv.next131, %bb.ax ] ; 7 uses
  %.1100112 = phi i32 [ %.099.lcssa, %.lr.ph114 ], [ %.2101, %bb.ax ] ; 6 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %4 = ashr i32 %i.ee, 3
  %5 = sext i32 %4 to i64
  %i.ef = getelementptr inbounds i8, ptr %i.f, i64 %5
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i32
  %i.ei = and i32 %i.ee, 7
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not.i82 = icmp eq i32 %i.ek, 0
  br i1 %.not.i82, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv130
  store i64 0, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv130
  store i8 1, ptr %i.em, align 1
  br label %bb.ax

bb.ag:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv130
  store i8 0, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv130 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2            ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  %i.es = load i8, ptr %i.er, align 1             ; 3 uses
  %i.et = icmp sgt i16 %i.eq, 0
  br i1 %i.et, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.eu = zext nneg i16 %i.eq to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i8, ptr %i.ev, align 2, !range !5, !noundef !6
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = zext i8 %i.es to i32                    ; 2 uses
  %i.ez = add i32 %.1100112, -1
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = sub nsw i32 0, %i.ey
  %i.fc = and i32 %i.fa, %i.fb                    ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.fd ; 5 uses
  %i.ff = add i32 %i.fc, %i.eu                    ; 5 uses
  br i1 %i.ex, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.eq, label %bb.am [
    i16 1, label %bb.aj
    i16 2, label %bb.ak
    i16 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i8, ptr %i.fe, align 1
  %i.fh = sext i8 %i.fg to i64
  br label %align_fetch_then_add.exit94

bb.ak:                                            ; preds = %bb.ai
  %i.fi = load i16, ptr %i.fe, align 2
  %i.fj = sext i16 %i.fi to i64
  br label %align_fetch_then_add.exit94

bb.al:                                            ; preds = %bb.ai
  %i.fk = load i32, ptr %i.fe, align 4
  %i.fl = sext i32 %i.fk to i64
  br label %align_fetch_then_add.exit94

bb.am:                                            ; preds = %bb.ai
  %i.fm = load i64, ptr %i.fe, align 8
  br label %align_fetch_then_add.exit94

bb.an:                                            ; preds = %bb.ah
  %i.fn = ptrtoint ptr %i.fe to i64
  br label %align_fetch_then_add.exit94

bb.ao:                                            ; preds = %bb.ag
  %i.fo = icmp eq i16 %i.eq, -1
  br i1 %i.fo, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.fp = zext i32 %.1100112 to i64               ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.fp
  %.val.i84 = load i8, ptr %i.fq, align 1         ; 2 uses
  %i.fr = trunc i8 %.val.i84 to i1
  br i1 %i.fr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = zext i8 %i.es to i32                    ; 2 uses
  %i.ft = add i32 %.1100112, -1
  %i.fu = add i32 %i.ft, %i.fs
  %i.fv = sub nsw i32 0, %i.fs
  %i.fw = and i32 %i.fu, %i.fv                    ; 2 uses
  %.pre.i85 = zext i32 %i.fw to i64               ; 2 uses
  %.phi.trans.insert.i86 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre.i85
  %.pre40.i87 = load i8, ptr %.phi.trans.insert.i86, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fx = phi i8 [ %.pre40.i87, %bb.aq ], [ %.val.i84, %bb.ap ] ; 2 uses
  %.pre-phi.i88 = phi i64 [ %.pre.i85, %bb.aq ], [ %i.fp, %bb.ap ]
  %i.fy = phi i32 [ %i.fw, %bb.aq ], [ %.1100112, %bb.ap ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi.i88 ; 3 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = zext i8 %i.fx to i32                    ; 2 uses
  %i.gc = icmp eq i8 %i.fx, 1
  br i1 %i.gc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gd = getelementptr i8, ptr %i.fz, i64 1
  %.val.i.i92 = load i8, ptr %i.gd, align 1       ; 2 uses
  %i.ge = add i8 %.val.i.i92, -1
  %or.cond.i.i.i.i93 = icmp ult i8 %i.ge, 3
  %i.gf = icmp eq i8 %.val.i.i92, 18
  %i.gg = select i1 %i.gf, i32 18, i32 2
  %i.gh = select i1 %or.cond.i.i.i.i93, i32 10, i32 %i.gg
  br label %VARSIZE_ANY.exit.i90

bb.at:                                            ; preds = %bb.ar
  %i.gi = and i32 %i.gb, 1
  %.not.i.i89 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i89, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = lshr i32 %i.gb, 1
  br label %VARSIZE_ANY.exit.i90

bb.av:                                            ; preds = %bb.at
  %i.gk = load i32, ptr %i.fz, align 4
  %i.gl = lshr i32 %i.gk, 2
  br label %VARSIZE_ANY.exit.i90

VARSIZE_ANY.exit.i90:                             ; preds = %bb.av, %bb.au, %bb.as
  %.0.i.i91 = phi i32 [ %i.gh, %bb.as ], [ %i.gj, %bb.au ], [ %i.gl, %bb.av ]
  %i.gm = add i32 %.0.i.i91, %i.fy
  br label %align_fetch_then_add.exit94

bb.aw:                                            ; preds = %bb.ao
  %i.gn = zext i8 %i.es to i32                    ; 2 uses
  %i.go = add i32 %.1100112, -1
  %i.gp = add i32 %i.go, %i.gn
  %i.gq = sub nsw i32 0, %i.gn
  %i.gr = and i32 %i.gp, %i.gq                    ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.gs ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #13
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = add i32 %i.gr, 1
  %i.gy = add i32 %i.gx, %i.gw
  br label %align_fetch_then_add.exit94

align_fetch_then_add.exit94:                      ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %VARSIZE_ANY.exit.i90, %bb.aw
  %.4103 = phi i32 [ %i.ff, %bb.am ], [ %i.ff, %bb.aj ], [ %i.ff, %bb.ak ], [ %i.ff, %bb.al ], [ %i.ff, %bb.an ], [ %i.gm, %VARSIZE_ANY.exit.i90 ], [ %i.gy, %bb.aw ]
  %.1.i83 = phi i64 [ %i.fm, %bb.am ], [ %i.fh, %bb.aj ], [ %i.fj, %bb.ak ], [ %i.fl, %bb.al ], [ %i.fn, %bb.an ], [ %i.ga, %VARSIZE_ANY.exit.i90 ], [ %i.gu, %bb.aw ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv130
  store i64 %.1.i83, ptr %i.gz, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %align_fetch_then_add.exit94, %bb.af
  %.2101 = phi i32 [ %.1100112, %bb.af ], [ %.4103, %align_fetch_then_add.exit94 ]
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %.preheader, label %bb.ae, !llvm.loop !22

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv135 = phi i64 [ %i.ed, %.lr.ph117.preheader ], [ %indvars.iv.next136, %.lr.ph117 ] ; 3 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv135
  %i.hb = trunc nuw nsw i64 %indvars.iv.next136 to i32
  %i.hc = tail call i64 @getmissingattr(ptr noundef nonnull %1, i32 noundef %i.hb, ptr noundef %i.ha)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv135
  store i64 %i.hc, ptr %i.hd, align 8
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph117, %.preheader
  ret void
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @heap_modify_tuple_by_cols(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.b) #12 ; 4 uses
  %i.d = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %i.b) #12 ; 4 uses
  tail call void @heap_deform_tuple(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = icmp slt i32 %i.g, 1
  %i.i = icmp sgt i32 %i.g, %i.a
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c
end_hunk_1
