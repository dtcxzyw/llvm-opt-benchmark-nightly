Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxIteratorAddChars:bb.a
bb.f:                                             ; preds = %bb.c
  %i.p = select i1 %.not, ptr %i.j, ptr %spec.select
  store ptr %i.p, ptr %i.h, align 8, !tbaa !45
  %i.q = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.q, align 4, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.b
  %i.r = phi i64 [ %.pre, %.thread ], [ %i.e, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %1, i64 %2, i1 false)
  %i.v = load i64, ptr %i.d, align 8, !tbaa !44
  %i.w = add i64 %i.v, %2
  store i64 %i.w, ptr %i.d, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @raxIteratorDelChars(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %i.c = sub i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxIteratorNextStep(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread161

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 1
  %.not104 = icmp eq i32 %i.c, 0
  br i1 %.not104, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, -4
  store i32 %i.d, ptr %0, align 8, !tbaa !39
  br label %.thread161

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 13 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.pre = load i32, ptr %i.k, align 4
  %i.t = icmp eq i32 %1, 0
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.u = phi i32 [ %.pre, %bb.d ], [ %.be, %.backedge ] ; 2 uses
  %i.v = phi ptr [ %i.k, %bb.d ], [ %.be245, %.backedge ] ; 2 uses
  %.090 = phi i1 [ %i.t, %bb.d ], [ true, %.backedge ] ; 2 uses
  %spec.select = icmp ugt i32 %i.u, 3
  %or.cond = and i1 %.090, %spec.select
  br i1 %or.cond, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.x = load i64, ptr %i.p, align 8, !tbaa !33
  %i.y = icmp eq i64 %i.w, %i.x
  %.pre31.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.y, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %.pre31.i, %i.q
  %i.aa = shl i64 %i.w, 4                         ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noalias ptr @zmalloc(i64 noundef %i.aa) #27 ; 4 uses
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.g, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.ad, align 8, !tbaa !35
  %i.ae = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ae, align 4, !tbaa !9
  br label %.thread161

bb.j:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.p, align 8, !tbaa !33  ; 2 uses
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.q, i64 %i.ag, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ah = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.aa) #28 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !34
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !33
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.aj, align 8, !tbaa !35
  %i.ak = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ak, align 4, !tbaa !9
  br label %.thread161

bb.m:                                             ; preds = %.thread.i, %bb.j
  %i.al = phi ptr [ %i.ah, %.thread.i ], [ %i.ab, %bb.j ]
  %i.am = phi i64 [ %.pre.i, %.thread.i ], [ %i.af, %bb.j ]
  %i.an = shl i64 %i.am, 1
  store i64 %i.an, ptr %i.p, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.h, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.ao = phi i64 [ %.pre32.i, %bb.m ], [ %i.w, %bb.f ] ; 2 uses
  %i.ap = phi ptr [ %i.al, %bb.m ], [ %.pre31.i, %bb.f ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store ptr %i.v, ptr %i.aq, align 8, !tbaa !29
  %i.ar = add i64 %i.ao, 1
  store i64 %i.ar, ptr %i.h, align 8, !tbaa !31
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4            ; 2 uses
  %i.av = lshr i32 %i.au, 3                       ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = xor i32 %i.av, 3
  %.neg115 = add nuw nsw i32 %i.ay, 1
  %i.az = and i32 %.neg115, 7
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba ; 2 uses
  %i.bc = and i32 %i.au, 4
  %.not116 = icmp eq i32 %i.bc, 0
  %spec.select121 = select i1 %.not116, i64 1, i64 %i.aw ; 4 uses
  %i.bd = icmp eq i64 %spec.select121, 0
  br i1 %i.bd, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.n, align 8, !tbaa !46
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.bg = add i64 %i.bf, %spec.select121          ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  %.pre204 = load ptr, ptr %i.l, align 8, !tbaa !45 ; 3 uses
  br i1 %i.bh, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp eq ptr %.pre204, %i.o
  %spec.select.i = select i1 %i.bi, ptr null, ptr %.pre204 ; 3 uses
  %i.bj = shl i64 %i.bg, 1                        ; 2 uses
  %i.bk = tail call ptr @zrealloc(ptr noundef %spec.select.i, i64 noundef %i.bj) #28 ; 4 uses
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !45
  %i.bl = icmp eq ptr %i.bk, null
  %.not.i = icmp eq ptr %spec.select.i, null      ; 2 uses
  br i1 %i.bl, label %raxIteratorAddChars.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.r, label %.thread.i124

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 8 %i.o, i64 %i.bm, i1 false)
  %.pre203.pre = load ptr, ptr %i.l, align 8, !tbaa !45
  br label %.thread.i124

.thread.i124:                                     ; preds = %bb.r, %bb.q
  %.pre203 = phi ptr [ %.pre203.pre, %bb.r ], [ %i.bk, %bb.q ]
  store i64 %i.bj, ptr %i.n, align 8, !tbaa !46
  %.pre.i125 = load i64, ptr %i.e, align 8, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %.thread.i124, %bb.o
  %i.bn = phi ptr [ %.pre203, %.thread.i124 ], [ %.pre204, %bb.o ]
  %i.bo = phi i64 [ %.pre.i125, %.thread.i124 ], [ %i.bf, %bb.o ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull readonly align 4 %i.at, i64 %spec.select121, i1 false)
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !44
  %i.br = add i64 %i.bq, %spec.select121
  store i64 %i.br, ptr %i.e, align 8, !tbaa !44
  br label %bb.t

raxIteratorAddChars.exit:                         ; preds = %bb.p
  %i.bs = select i1 %.not.i, ptr %i.o, ptr %spec.select.i
  store ptr %i.bs, ptr %i.l, align 8, !tbaa !45
  %i.bt = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.bt, align 4, !tbaa !9
  br label %.thread161

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.bu = load i64, ptr %i.bb, align 8            ; 2 uses
  store i64 %i.bu, ptr %i.j, align 8
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !50  ; 2 uses
  %.not118 = icmp eq ptr %i.bv, null
  %i.bw = inttoptr i64 %i.bu to ptr
  br i1 %.not118, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.by = tail call i32 %i.bv(ptr noundef nonnull %i.j, ptr noundef %i.bx) #24
  %.not119 = icmp eq i32 %i.by, 0
  br i1 %.not119, label %._crit_edge205, label %bb.v

._crit_edge205:                                   ; preds = %bb.u
  %.pre206 = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = load i64, ptr %i.j, align 8             ; 2 uses
  store i64 %i.bz, ptr %i.bb, align 8
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge205, %bb.v, %bb.t
  %i.cb = phi ptr [ %.pre206, %._crit_edge205 ], [ %i.ca, %bb.v ], [ %i.bw, %bb.t ] ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 5 uses
  %i.cd = and i32 %i.cc, 1
  %.not120 = icmp eq i32 %i.cd, 0
  br i1 %.not120, label %.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = and i32 %i.cc, 2
  %.not.i126 = icmp eq i32 %i.ce, 0
  br i1 %.not.i126, label %bb.y, label %raxGetData.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = lshr i32 %i.cc, 3                       ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = xor i32 %i.cf, 3
  %.neg.i = add nuw nsw i32 %i.ch, 1
  %i.ci = and i32 %.neg.i, 7
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = and i32 %i.cc, 4
  %.not11.i = icmp eq i32 %i.ck, 0
  %i.cl = shl nuw nsw i64 %i.cg, 3
  %spec.select.i127 = select i1 %.not11.i, i64 %i.cl, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %spec.select.i127
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %.0.copyload.i = load ptr, ptr %i.cp, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.x, %bb.y
  %.0.i = phi ptr [ %.0.copyload.i, %bb.y ], [ null, %bb.x ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i, ptr %i.cq, align 8, !tbaa !47
  br label %.thread161

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %i.cr = phi i32 [ %i.dx, %.preheader.backedge ], [ %i.u, %bb.e ]
  %i.cs = phi ptr [ %i.dp, %.preheader.backedge ], [ %i.v, %bb.e ] ; 2 uses
  %.191 = phi i1 [ true, %.preheader.backedge ], [ %.090, %bb.e ] ; 2 uses
  br i1 %.191, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !18
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thread157, label %raxStackPop.exit

.thread157:                                       ; preds = %bb.z
  %i.cw = load i32, ptr %0, align 8, !tbaa !39
  %i.cx = or i32 %i.cw, 2
  store i32 %i.cx, ptr %0, align 8, !tbaa !39
  store i64 %i.i, ptr %i.h, align 8, !tbaa !48
  store i64 %i.f, ptr %i.e, align 8, !tbaa !44
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  br label %.thread161

bb.aa:                                            ; preds = %.preheader
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !45  ; 2 uses
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !21
  br label %bb.ab

raxStackPop.exit:                                 ; preds = %bb.z
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !45  ; 2 uses
  %i.de = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %i.dj = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = add i64 %i.di, -1                       ; 2 uses
  store i64 %i.dk, ptr %i.h, align 8, !tbaa !31
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 3 uses
  store ptr %i.dn, ptr %i.j, align 8, !tbaa !49
  %.pre200 = load i32, ptr %i.dn, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %raxStackPop.exit
  %i.do = phi i32 [ %i.cr, %bb.aa ], [ %.pre200, %raxStackPop.exit ] ; 2 uses
  %i.dp = phi ptr [ %i.cs, %bb.aa ], [ %i.dn, %raxStackPop.exit ] ; 3 uses
  %i.dq = phi i8 [ %i.dc, %bb.aa ], [ %i.dh, %raxStackPop.exit ]
  %i.dr = phi i64 [ %i.cz, %bb.aa ], [ %i.de, %raxStackPop.exit ]
  %i.ds = phi ptr [ %i.cy, %bb.aa ], [ %i.dd, %raxStackPop.exit ] ; 3 uses
  %i.dt = and i32 %i.do, 4
  %.not107 = icmp eq i32 %i.dt, 0
  %i.du = lshr i32 %i.do, 3
  %narrow = select i1 %.not107, i32 1, i32 %i.du
  %i.dv = zext nneg i32 %narrow to i64
  %i.dw = sub i64 %i.dr, %i.dv                    ; 3 uses
  store i64 %i.dw, ptr %i.e, align 8, !tbaa !44
  %i.dx = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.dy = and i32 %i.dx, 4
  %.not108 = icmp eq i32 %i.dy, 0
  br i1 %.not108, label %bb.ac, label %.preheader.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.dz = lshr i32 %i.dx, 3                       ; 4 uses
  %i.ea = zext i1 %.191 to i32
  %i.eb = icmp samesign ugt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ad, label %.preheader.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  %i.ed = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  %i.ef = xor i32 %i.dz, 3
  %.neg = add nuw nsw i32 %i.ef, 1
  %i.eg = and i32 %.neg, 7
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.af
  %indvars.iv = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.088190 = phi ptr [ %i.ei, %bb.ad ], [ %i.em, %bb.af ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !21
  %i.el = icmp ugt i8 %i.ek, %i.dq
  br i1 %i.el, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.088190, i64 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ed
  br i1 %exitcond.not, label %.preheader.backedge, label %bb.ae, !llvm.loop !52

bb.ag:                                            ; preds = %bb.ae
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %.not109 = icmp eq i32 %i.dz, %i.en
  br i1 %.not109, label %.preheader.backedge, label %bb.ah

.preheader.backedge:                              ; preds = %bb.af, %bb.ag, %bb.ac, %bb.ab
  br label %.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv
  %i.ep = load i64, ptr %i.n, align 8, !tbaa !46
  %i.eq = add i64 %i.dw, 1                        ; 2 uses
  %i.er = icmp ult i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.es = icmp eq ptr %i.ds, %i.o
  %spec.select.i130 = select i1 %i.es, ptr null, ptr %i.ds ; 3 uses
  %i.et = shl i64 %i.eq, 1                        ; 2 uses
  %i.eu = tail call ptr @zrealloc(ptr noundef %spec.select.i130, i64 noundef %i.et) #28 ; 4 uses
  store ptr %i.eu, ptr %i.l, align 8, !tbaa !45
  %i.ev = icmp eq ptr %i.eu, null
  %.not.i131 = icmp eq ptr %spec.select.i130, null ; 2 uses
  br i1 %i.ev, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i131, label %bb.ak, label %.thread.i132

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load i64, ptr %i.e, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull align 8 %i.o, i64 %i.ew, i1 false)
  %.pre201.pre = load ptr, ptr %i.l, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@raxSeekGreatest:bb.a
  %i.bw = tail call noalias ptr @zmalloc(i64 noundef %i.bv) #27 ; 4 uses
  store ptr %i.bw, ptr %i.i, align 8, !tbaa !34
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.l, ptr %i.i, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.by, align 8, !tbaa !35
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %i.ca = shl i64 %i.bz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.l, i64 %i.ca, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.cb = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.bv) #28 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.q, label %.thread.i42

.thread.i42:                                      ; preds = %bb.p
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !34
  %.pre.i43 = load i64, ptr %i.k, align 8, !tbaa !33
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.cd, align 8, !tbaa !35
  br label %.thread.sink.split

bb.r:                                             ; preds = %.thread.i42, %bb.o
  %i.ce = phi ptr [ %i.cb, %.thread.i42 ], [ %i.bw, %bb.o ]
  %i.cf = phi i64 [ %.pre.i43, %.thread.i42 ], [ %i.bz, %bb.o ]
  %i.cg = shl i64 %i.cf, 1
  store i64 %i.cg, ptr %i.k, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.j, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r
  %i.ch = phi i64 [ %.pre32.i, %bb.r ], [ %i.br, %bb.k ] ; 2 uses
  %i.ci = phi ptr [ %i.ce, %bb.r ], [ %.pre31.i, %bb.k ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  store ptr %i.ay, ptr %i.cj, align 8, !tbaa !29
  %i.ck = add i64 %i.ch, 1
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !31
  %i.cl = select i1 %.not52, i64 -12, i64 -4
  %i.cm = getelementptr inbounds i8, ptr %i.bp, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  store i64 %i.cn, ptr %i.a, align 8
  %.cast = inttoptr i64 %i.cn to ptr              ; 2 uses
  %i.co = load i32, ptr %.cast, align 4           ; 2 uses
  %i.cp = lshr i32 %i.co, 3                       ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.thread, label %bb.b

.thread.sink.split:                               ; preds = %raxIteratorAddChars.exit.thread, %raxIteratorAddChars.exit40.thread, %bb.q, %bb.n
  %i.cq = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.cq, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %bb.s, %.thread.sink.split, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 0, %.thread.sink.split ], [ 1, %bb.s ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxIteratorPrevStep(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread100

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 1
  %.not69 = icmp eq i32 %i.c, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, -4
  store i32 %i.d, ptr %0, align 8, !tbaa !39
  br label %.thread100

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = icmp eq i32 %1, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.s = phi ptr [ %i.k, %bb.d ], [ %i.do, %.loopexit ] ; 2 uses
  %.062 = phi i1 [ %i.l, %bb.d ], [ true, %.loopexit ] ; 2 uses
  br i1 %.062, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %0, align 8, !tbaa !39
  %i.x = or i32 %i.w, 2
  store i32 %i.x, ptr %0, align 8, !tbaa !39
  store i64 %i.i, ptr %i.h, align 8, !tbaa !48
  store i64 %i.f, ptr %i.e, align 8, !tbaa !44
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  br label %.thread100

bb.h:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !45  ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %raxStackPop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !31
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  br label %raxStackPop.exit

raxStackPop.exit:                                 ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.an, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %raxStackPop.exit
  %i.ao = phi ptr [ %i.s, %bb.h ], [ %.0.i, %raxStackPop.exit ] ; 7 uses
  %i.ap = phi i8 [ %i.ac, %bb.h ], [ %i.ah, %raxStackPop.exit ]
  %i.aq = phi i64 [ %i.z, %bb.h ], [ %i.ae, %raxStackPop.exit ]
  %i.ar = phi ptr [ %i.y, %bb.h ], [ %i.ad, %raxStackPop.exit ] ; 3 uses
  %i.as = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.at = and i32 %i.as, 4
  %.not71 = icmp eq i32 %i.at, 0
  %i.au = lshr i32 %i.as, 3
  %narrow = select i1 %.not71, i32 1, i32 %i.au
  %i.av = zext nneg i32 %narrow to i64
  %i.aw = sub i64 %i.aq, %i.av                    ; 3 uses
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !44
  %i.ax = load i32, ptr %i.ao, align 4            ; 8 uses
  %i.ay = and i32 %i.ax, 4
  %.not72 = icmp eq i32 %i.ay, 0
  br i1 %.not72, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.az = lshr i32 %i.ax, 3                       ; 4 uses
  %i.ba = zext i1 %.062 to i32
  %i.bb = icmp samesign ugt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bc = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bd = xor i32 %i.az, 3
  %.neg = add nuw nsw i32 %i.bd, 1
  %i.be = and i32 %.neg, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bc, 3
  %i.bh = and i32 %i.ax, 1
  %.not73 = icmp eq i32 %i.bh, 0
  %i.bi = shl i32 %i.ax, 2
  %i.bj = and i32 %i.bi, 8
  %i.bk = xor i32 %i.bj, 8
  %narrow103 = select i1 %.not73, i32 0, i32 %i.bk
  %i.bl = zext nneg i32 %narrow103 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.bq = and i32 %i.ax, 3
  %.not104 = icmp eq i32 %i.bq, 1
  %i.br = select i1 %.not104, i64 -12, i64 -4
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %.0119 = add nsw i32 %i.az, -1
  %2 = zext nneg i32 %.0119 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  %indvars.iv = phi i64 [ %2, %bb.m ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.060120 = phi ptr [ %i.bs, %bb.m ], [ %i.bx, %bb.o ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = icmp ult i8 %i.bv, %i.ap
  br i1 %i.bw, label %.thread90, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds i8, ptr %.060120, i64 -8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = trunc nuw i64 %indvars.iv to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %bb.n, label %.loopexit, !llvm.loop !53

.thread90:                                        ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  %i.bz = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ca = add i64 %i.aw, 1                        ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.thread90
  %i.cc = icmp eq ptr %i.ar, %i.p
  %spec.select.i = select i1 %i.cc, ptr null, ptr %i.ar ; 3 uses
  %i.cd = shl i64 %i.ca, 1                        ; 2 uses
  %i.ce = tail call ptr @zrealloc(ptr noundef %spec.select.i, i64 noundef %i.cd) #28 ; 4 uses
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !45
  %i.cf = icmp eq ptr %i.ce, null
  %.not.i = icmp eq ptr %spec.select.i, null      ; 2 uses
  br i1 %i.cf, label %raxIteratorAddChars.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 8 %i.p, i64 %i.cg, i1 false)
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !45
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.pre = phi ptr [ %.pre.pre, %bb.r ], [ %i.ce, %bb.q ]
  store i64 %i.cd, ptr %i.o, align 8, !tbaa !46
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !44
  br label %bb.s

raxIteratorAddChars.exit.thread:                  ; preds = %bb.p
  %i.ch = select i1 %.not.i, ptr %i.p, ptr %spec.select.i
  store ptr %i.ch, ptr %i.m, align 8, !tbaa !45
  %i.ci = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ci, align 4, !tbaa !9
  br label %.thread100

bb.s:                                             ; preds = %.thread.i, %.thread90
  %i.cj = phi ptr [ %.pre, %.thread.i ], [ %i.ar, %.thread90 ]
  %i.ck = phi i64 [ %.pre.i, %.thread.i ], [ %i.aw, %.thread90 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %5 = load i8, ptr %i.by, align 1
  store i8 %5, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !44
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.e, align 8, !tbaa !44
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !31  ; 3 uses
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !33
  %i.cr = icmp eq i64 %i.cp, %i.cq
  %.pre31.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.cr, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cs = icmp eq ptr %.pre31.i, %i.r
  %i.ct = shl i64 %i.cp, 4                        ; 2 uses
  br i1 %i.cs, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cu = tail call noalias ptr @zmalloc(i64 noundef %i.ct) #27 ; 4 uses
  store ptr %i.cu, ptr %i.g, align 8, !tbaa !34
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.r, ptr %i.g, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.cw, align 8, !tbaa !35
  %i.cx = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.cx, align 4, !tbaa !9
  br label %.thread100

bb.w:                                             ; preds = %bb.u
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !33  ; 2 uses
  %i.cz = shl i64 %i.cy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %i.r, i64 %i.cz, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.da = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.ct) #28 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.y, label %.thread.i85

.thread.i85:                                      ; preds = %bb.x
  store ptr %i.da, ptr %i.g, align 8, !tbaa !34
  %.pre.i86 = load i64, ptr %i.q, align 8, !tbaa !33
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.dc, align 8, !tbaa !35
  %i.dd = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.dd, align 4, !tbaa !9
  br label %.thread100

bb.z:                                             ; preds = %.thread.i85, %bb.w
  %i.de = phi ptr [ %i.da, %.thread.i85 ], [ %i.cu, %bb.w ]
  %i.df = phi i64 [ %.pre.i86, %.thread.i85 ], [ %i.cy, %bb.w ]
  %i.dg = shl i64 %i.df, 1
  store i64 %i.dg, ptr %i.q, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.h, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  %i.dh = phi i64 [ %.pre32.i, %bb.z ], [ %i.cp, %bb.s ] ; 2 uses
  %i.di = phi ptr [ %i.de, %bb.z ], [ %.pre31.i, %bb.s ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.co, ptr %i.dj, align 8, !tbaa !29
  %i.dk = add i64 %i.dh, 1
  store i64 %i.dk, ptr %i.h, align 8, !tbaa !31
  %i.dl = load i64, ptr %.060120, align 8
  store i64 %i.dl, ptr %i.j, align 8
  %i.dm = tail call i32 @raxSeekGreatest(ptr noundef nonnull %0)
  %.not82 = icmp eq i32 %i.dm, 0
  br i1 %.not82, label %.thread100, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre132 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %.pre133 = load i32, ptr %.pre132, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %._crit_edge, %bb.l, %bb.k
  %i.dn = phi i32 [ %.pre133, %._crit_edge ], [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.o ] ; 4 uses
  %i.do = phi ptr [ %.pre132, %._crit_edge ], [ %i.ao, %bb.k ], [ %i.ao, %bb.l ], [ %i.ao, %bb.o ] ; 2 uses
  %i.dp = and i32 %i.dn, 1
  %.not83 = icmp eq i32 %i.dp, 0
  br i1 %.not83, label %bb.e, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.dq = and i32 %i.dn, 2
  %.not.i87 = icmp eq i32 %i.dq, 0
  br i1 %.not.i87, label %bb.ac, label %raxGetData.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dr = lshr i32 %i.dn, 3                       ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = xor i32 %i.dr, 3
  %.neg.i = add nuw nsw i32 %i.dt, 1
  %i.du = and i32 %.neg.i, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = and i32 %i.dn, 4
  %.not11.i = icmp eq i32 %i.dw, 0
  %i.dx = shl nuw nsw i64 %i.ds, 3
  %spec.select.i89 = select i1 %.not11.i, i64 %i.dx, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select.i89
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.0.copyload.i = load ptr, ptr %i.eb, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.ab, %bb.ac
  %.0.i88 = phi ptr [ %.0.copyload.i, %bb.ac ], [ null, %bb.ab ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i88, ptr %i.ec, align 8, !tbaa !47
  br label %.thread100

.thread100:                                       ; preds = %bb.aa, %bb.y, %bb.v, %raxIteratorAddChars.exit.thread, %raxGetData.exit, %bb.g, %bb.a, %bb.c
  %.5 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %raxGetData.exit ], [ 0, %raxIteratorAddChars.exit.thread ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.aa ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxSeek(ptr noundef initializes((32, 40), (176, 184), (192, 200)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
tailrecurse.peel.begin:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %.promoted = load i32, ptr %0, align 8, !tbaa !39 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = and i32 %.promoted, -4
  %i.g = or disjoint i32 %i.f, 1                  ; 2 uses
  store i32 %i.g, ptr %0, align 8, !tbaa !39
  %i.h = load i8, ptr %1, align 1, !tbaa !21
  switch i8 %i.h, label %bb.b [
    i8 62, label %.loopexit.sink.split
    i8 60, label %bb.a
    i8 61, label %.loopexit
    i8 94, label %.thread.peel
    i8 36, label %.thread
  ]

.thread.peel:                                     ; preds = %tailrecurse.peel.begin
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit175, label %.loopexit.sink.split

bb.a:                                             ; preds = %tailrecurse.peel.begin
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %tailrecurse.peel.begin
  %i.m = tail call ptr @__errno_location() #26
  store i32 0, ptr %i.m, align 4, !tbaa !9
  br label %bb.as

.loopexit.sink.split:                             ; preds = %tailrecurse.peel.begin, %.thread.peel, %bb.a
  %.sink = phi ptr [ %1, %bb.a ], [ %1, %tailrecurse.peel.begin ], [ @.str.5, %.thread.peel ]
  %.ph = phi i32 [ %.promoted, %bb.a ], [ %.promoted, %tailrecurse.peel.begin ], [ %i.g, %.thread.peel ]
  %.tr173232.ph = phi ptr [ %2, %bb.a ], [ %2, %tailrecurse.peel.begin ], [ null, %.thread.peel ]
  %.tr174226.ph = phi i64 [ %3, %bb.a ], [ %3, %tailrecurse.peel.begin ], [ 0, %.thread.peel ]
  %.ph263 = phi i1 [ false, %bb.a ], [ true, %tailrecurse.peel.begin ], [ true, %.thread.peel ]
  %.ph264 = phi i1 [ true, %bb.a ], [ false, %tailrecurse.peel.begin ], [ false, %.thread.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp ne i8 %i.o, 61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %tailrecurse.peel.begin
  %i.q = phi i32 [ %.promoted, %tailrecurse.peel.begin ], [ %.ph, %.loopexit.sink.split ]
  %.tr173232 = phi ptr [ %2, %tailrecurse.peel.begin ], [ %.tr173232.ph, %.loopexit.sink.split ] ; 5 uses
  %.tr174226 = phi i64 [ %3, %tailrecurse.peel.begin ], [ %.tr174226.ph, %.loopexit.sink.split ] ; 3 uses
  %i.r = phi i1 [ false, %tailrecurse.peel.begin ], [ %.ph263, %.loopexit.sink.split ] ; 4 uses
  %.not114 = phi i1 [ false, %tailrecurse.peel.begin ], [ %i.p, %.loopexit.sink.split ]
  %i.s = phi i1 [ false, %tailrecurse.peel.begin ], [ %.ph264, %.loopexit.sink.split ] ; 5 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit175, label %bb.h

.thread:                                          ; preds = %tailrecurse.peel.begin
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit175, label %bb.c

.loopexit175:                                     ; preds = %.thread, %.thread.peel, %.loopexit
  %i.ab = phi i32 [ %i.q, %.loopexit ], [ %.promoted, %.thread.peel ], [ %.promoted, %.thread ]
  %i.ac = or i32 %i.ab, 3
  store i32 %i.ac, ptr %0, align 8, !tbaa !39
  br label %bb.as

bb.c:                                             ; preds = %.thread
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !49
  %i.ae = tail call i32 @raxSeekGreatest(ptr noundef nonnull %0)
end_hunk_1
begin_hunk_2_@raxSeek:tailrecurse.peel.begin
bb.aq:                                            ; preds = %bb.n
  %i.fd = load i32, ptr %0, align 8, !tbaa !39
  %i.fe = or i32 %i.fd, 2
  store i32 %i.fe, ptr %0, align 8, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %raxGetData.exit145, %bb.v, %bb.ap, %.critedge138, %bb.ao, %bb.am, %bb.y, %bb.z, %bb.aa, %bb.ad, %bb.ag, %bb.ah, %bb.u, %bb.s, %bb.q, %bb.k, %bb.h, %bb.aq
  %.1 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.h ], [ 0, %bb.u ], [ 0, %bb.am ], [ 0, %bb.y ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %.critedge138 ], [ 1, %bb.ap ], [ 1, %bb.v ], [ 1, %raxGetData.exit145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.c, %bb.ar, %raxGetData.exit, %.loopexit175, %bb.b
  %.2 = phi i32 [ 1, %.loopexit175 ], [ 0, %bb.c ], [ 1, %raxGetData.exit ], [ 0, %bb.b ], [ %.1, %bb.ar ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxNext(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxIteratorNextStep(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !39
  %i.c = and i32 %i.b, 2
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 12, %bb.a ], [ 0, %bb.b ]
  %i.d = tail call ptr @__errno_location() #26
  store i32 %.sink, ptr %i.d, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxPrev(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxIteratorPrevStep(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !39
  %i.c = and i32 %i.b, 2
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 12, %bb.a ], [ 0, %bb.b ]
  %i.d = tail call ptr @__errno_location() #26
  store i32 %.sink, ptr %i.d, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxRandomWalk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !39
  %i.g = or i32 %i.f, 2
  store i32 %i.g, ptr %0, align 8, !tbaa !39
  br label %.critedge67

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = uitofp i64 %i.d to double
  %i.j = tail call double @log(double noundef %i.i) #24, !tbaa !9
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fadd double %i.k, 1.000000e+00
  %i.m = fptoui double %i.l to i64
  %i.n = shl i64 %i.m, 1
  %i.o = tail call i32 @rand() #24
  %i.p = sext i32 %i.o to i64
  %i.q = urem i64 %i.p, %i.n
  %i.r = add nuw i64 %i.q, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.050 = phi i64 [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.pre.pre = load i32, ptr %i.t, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.y
  %.044132 = phi ptr [ %i.t, %bb.e ], [ %.2, %bb.y ] ; 6 uses
  %.151131 = phi i64 [ %.050, %bb.e ], [ %spec.select65, %bb.y ]
  %.pre130 = phi i32 [ %.pre.pre, %bb.e ], [ %i.ds, %bb.y ] ; 2 uses
  %i.ac = and i32 %.pre130, 4
  %.not58 = icmp eq i32 %i.ac, 0
  %i.ad = lshr i32 %.pre130, 3
  %spec.select = select i1 %.not58, i32 %i.ad, i32 1 ; 2 uses
  %i.ae = tail call i32 @rand() #24
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = icmp ne ptr %.044132, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nuw nsw i32 %spec.select, %i.ai
  %i.ak = srem i32 %i.ae, %i.aj                   ; 3 uses
  %i.al = icmp eq i32 %i.ak, %spec.select
  br i1 %i.al, label %raxStackPop.exit, label %bb.f

raxStackPop.exit:                                 ; preds = %.critedge
  %i.am = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.an = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.ao, ptr %i.z, align 8, !tbaa !31
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 4
  %.not63 = icmp eq i32 %i.at, 0
  %i.au = lshr i32 %i.as, 3
  %narrow = select i1 %.not63, i32 1, i32 %i.au
  %i.av = zext nneg i32 %narrow to i64
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !44
  %i.ax = sub i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.v, align 8, !tbaa !44
  br label %bb.y

bb.f:                                             ; preds = %.critedge
  %i.ay = load i32, ptr %.044132, align 4         ; 2 uses
  %i.az = and i32 %i.ay, 4
  %.not59 = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.044132, i64 4 ; 2 uses
  br i1 %.not59, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = lshr i32 %i.ay, 3                       ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %raxIteratorAddChars.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load i64, ptr %i.u, align 8, !tbaa !46
  %i.bf = load i64, ptr %i.v, align 8, !tbaa !44  ; 2 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  %.pre103 = load ptr, ptr %i.w, align 8, !tbaa !45 ; 3 uses
  br i1 %i.bh, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp eq ptr %.pre103, %i.x
  %spec.select.i = select i1 %i.bi, ptr null, ptr %.pre103 ; 3 uses
  %i.bj = shl i64 %i.bg, 1                        ; 2 uses
  %i.bk = tail call ptr @zrealloc(ptr noundef %spec.select.i, i64 noundef %i.bj) #28 ; 4 uses
  store ptr %i.bk, ptr %i.w, align 8, !tbaa !45
  %i.bl = icmp eq ptr %i.bk, null
  %.not.i = icmp eq ptr %spec.select.i, null      ; 2 uses
  br i1 %i.bl, label %raxIteratorAddChars.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 8 %i.x, i64 %i.bm, i1 false)
  %.pre102.pre = load ptr, ptr %i.w, align 8, !tbaa !45
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.pre102 = phi ptr [ %.pre102.pre, %bb.k ], [ %i.bk, %bb.j ]
  store i64 %i.bj, ptr %i.u, align 8, !tbaa !46
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.h
  %i.bn = phi ptr [ %.pre102, %.thread.i ], [ %.pre103, %bb.h ]
  %i.bo = phi i64 [ %.pre.i, %.thread.i ], [ %i.bf, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull readonly align 4 %i.ba, i64 %i.bc, i1 false)
  br label %raxIteratorAddChars.exit.thread.sink.split

raxIteratorAddChars.exit:                         ; preds = %bb.i
  %i.bq = select i1 %.not.i, ptr %i.x, ptr %spec.select.i
  store ptr %i.bq, ptr %i.w, align 8, !tbaa !45
  %i.br = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.br, align 4, !tbaa !9
  br label %.critedge67

bb.m:                                             ; preds = %bb.f
  %i.bs = sext i32 %i.ak to i64
  %i.bt = getelementptr inbounds i8, ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.u, align 8, !tbaa !46
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !44  ; 2 uses
  %i.bw = add i64 %i.bv, 1                        ; 2 uses
  %i.bx = icmp ult i64 %i.bu, %i.bw
  %.pre105 = load ptr, ptr %i.w, align 8, !tbaa !45 ; 3 uses
  br i1 %i.bx, label %bb.n, label %raxIteratorAddChars.exit74

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %.pre105, %i.x
  %spec.select.i70 = select i1 %i.by, ptr null, ptr %.pre105 ; 3 uses
  %i.bz = shl i64 %i.bw, 1                        ; 2 uses
  %i.ca = tail call ptr @zrealloc(ptr noundef %spec.select.i70, i64 noundef %i.bz) #28 ; 4 uses
  store ptr %i.ca, ptr %i.w, align 8, !tbaa !45
  %i.cb = icmp eq ptr %i.ca, null
  %.not.i71 = icmp eq ptr %spec.select.i70, null  ; 2 uses
  br i1 %i.cb, label %raxIteratorAddChars.exit74.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i71, label %bb.p, label %.thread.i72

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 8 %i.x, i64 %i.cc, i1 false)
  %.pre104.pre = load ptr, ptr %i.w, align 8, !tbaa !45
  br label %.thread.i72

.thread.i72:                                      ; preds = %bb.p, %bb.o
  %.pre104 = phi ptr [ %.pre104.pre, %bb.p ], [ %i.ca, %bb.o ]
  store i64 %i.bz, ptr %i.u, align 8, !tbaa !46
  %.pre.i73 = load i64, ptr %i.v, align 8, !tbaa !44
  br label %raxIteratorAddChars.exit74

raxIteratorAddChars.exit74.thread:                ; preds = %bb.n
  %i.cd = select i1 %.not.i71, ptr %i.x, ptr %spec.select.i70
  store ptr %i.cd, ptr %i.w, align 8, !tbaa !45
  %i.ce = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ce, align 4, !tbaa !9
  br label %.critedge67

raxIteratorAddChars.exit74:                       ; preds = %bb.m, %.thread.i72
  %i.cf = phi ptr [ %.pre104, %.thread.i72 ], [ %.pre105, %bb.m ]
  %i.cg = phi i64 [ %.pre.i73, %.thread.i72 ], [ %i.bv, %bb.m ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %i.ci = load i8, ptr %i.bt, align 1
  store i8 %i.ci, ptr %i.ch, align 1
  br label %raxIteratorAddChars.exit.thread.sink.split

raxIteratorAddChars.exit.thread.sink.split:       ; preds = %raxIteratorAddChars.exit74, %bb.l
  %.sink124 = phi i64 [ %i.bc, %bb.l ], [ 1, %raxIteratorAddChars.exit74 ]
  %i.cj = load i64, ptr %i.v, align 8, !tbaa !44
  %i.ck = add i64 %i.cj, %.sink124
  store i64 %i.ck, ptr %i.v, align 8, !tbaa !44
  br label %raxIteratorAddChars.exit.thread

raxIteratorAddChars.exit.thread:                  ; preds = %raxIteratorAddChars.exit.thread.sink.split, %bb.g
  %i.cl = load i32, ptr %.044132, align 4
  %i.cm = load i64, ptr %i.z, align 8, !tbaa !31  ; 3 uses
  %i.cn = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.co = icmp eq i64 %i.cm, %i.cn
  %.pre31.i = load ptr, ptr %i.y, align 8, !tbaa !34 ; 3 uses
  br i1 %i.co, label %bb.q, label %bb.x

bb.q:                                             ; preds = %raxIteratorAddChars.exit.thread
  %i.cp = icmp eq ptr %.pre31.i, %i.ab
  %i.cq = shl i64 %i.cm, 4                        ; 2 uses
  br i1 %i.cp, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cr = tail call noalias ptr @zmalloc(i64 noundef %i.cq) #27 ; 4 uses
  store ptr %i.cr, ptr %i.y, align 8, !tbaa !34
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.ct, align 8, !tbaa !35
  %i.cu = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.cu, align 4, !tbaa !9
  br label %.critedge67

bb.t:                                             ; preds = %bb.r
  %i.cv = load i64, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.cw = shl i64 %i.cv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr nonnull align 8 %i.ab, i64 %i.cw, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.cx = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.cq) #28 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.v, label %.thread.i76

.thread.i76:                                      ; preds = %bb.u
  store ptr %i.cx, ptr %i.y, align 8, !tbaa !34
  %.pre.i77 = load i64, ptr %i.aa, align 8, !tbaa !33
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.cz, align 8, !tbaa !35
  %i.da = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.da, align 4, !tbaa !9
  br label %.critedge67

bb.w:                                             ; preds = %.thread.i76, %bb.t
  %i.db = phi ptr [ %i.cx, %.thread.i76 ], [ %i.cr, %bb.t ]
  %i.dc = phi i64 [ %.pre.i77, %.thread.i76 ], [ %i.cv, %bb.t ]
  %i.dd = shl i64 %i.dc, 1
  store i64 %i.dd, ptr %i.aa, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.z, align 8, !tbaa !31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %raxIteratorAddChars.exit.thread
  %i.de = phi i64 [ %.pre32.i, %bb.w ], [ %i.cm, %raxIteratorAddChars.exit.thread ] ; 2 uses
  %i.df = phi ptr [ %i.db, %bb.w ], [ %.pre31.i, %raxIteratorAddChars.exit.thread ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  store ptr %.044132, ptr %i.dg, align 8, !tbaa !29
  %i.dh = add i64 %i.de, 1
  store i64 %i.dh, ptr %i.z, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %.044132, i64 4
  %i.dj = lshr i32 %i.cl, 3                       ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk
  %i.dm = xor i32 %i.dj, 3
  %.neg = add nuw nsw i32 %i.dm, 1
  %i.dn = and i32 %.neg, 7
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do
  %i.dq = sext i32 %i.ak to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  %.0.copyload = load ptr, ptr %i.dr, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %raxStackPop.exit
  %.2 = phi ptr [ %i.ar, %raxStackPop.exit ], [ %.0.copyload, %bb.x ] ; 5 uses
  %i.ds = load i32, ptr %.2, align 4              ; 3 uses
  %i.dt = and i32 %i.ds, 1
  %sext = sub nsw i32 0, %i.dt
  %i.du = sext i32 %sext to i64
  %spec.select65 = add i64 %.151131, %i.du        ; 2 uses
  %.not = icmp ne i64 %spec.select65, 0
  %i.dv = and i32 %i.ds, 1
  %.not57 = icmp eq i32 %i.dv, 0
  %or.cond = or i1 %.not, %.not57
  br i1 %or.cond, label %.critedge, label %bb.z, !llvm.loop !55

bb.z:                                             ; preds = %bb.y
  store ptr %.2, ptr %i.s, align 8, !tbaa !49
  %i.dw = load i32, ptr %.2, align 4              ; 4 uses
  %i.dx = and i32 %i.dw, 2
  %.not.i78 = icmp eq i32 %i.dx, 0
  br i1 %.not.i78, label %bb.aa, label %raxGetData.exit

bb.aa:                                            ; preds = %bb.z
  %i.dy = lshr i32 %i.dw, 3                       ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = xor i32 %i.dy, 3
  %.neg.i = add nuw nsw i32 %i.ea, 1
  %i.eb = and i32 %.neg.i, 7
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = and i32 %i.dw, 4
  %.not11.i = icmp eq i32 %i.ed, 0
  %i.ee = shl nuw nsw i64 %i.dz, 3
  %spec.select.i80 = select i1 %.not11.i, i64 %i.ee, i64 8
  %i.ef = shl i32 %i.dw, 3
  %i.eg = and i32 %i.ef, 8
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.2, i64 %i.dz
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %spec.select.i80
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4
  %.0.copyload.i = load ptr, ptr %i.em, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.z, %bb.aa
  %.0.i79 = phi ptr [ %.0.copyload.i, %bb.aa ], [ null, %bb.z ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i79, ptr %i.en, align 8, !tbaa !47
  br label %.critedge67

.critedge67:                                      ; preds = %bb.v, %bb.s, %raxIteratorAddChars.exit74.thread, %raxIteratorAddChars.exit, %raxGetData.exit, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ 1, %raxGetData.exit ], [ 0, %raxIteratorAddChars.exit74.thread ], [ 0, %raxIteratorAddChars.exit ], [ 0, %bb.s ], [ 0, %bb.v ]
  ret i32 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #13
end_hunk_2
