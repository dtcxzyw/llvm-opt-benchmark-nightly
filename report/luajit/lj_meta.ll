Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_meta?download=true
inline.NumInlined: 23
inline.NumDeleted: 1
begin_hunk_0_@lj_meta_equal_cd:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = lshr i32 %1, 8
  %i.e = and i32 %i.d, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f ; 6 uses
  %i.h = trunc i32 %1 to i8
  %trunc = and i8 %i.h, -2
  switch i8 %trunc, label %bb.e [
    i8 4, label %bb.b
    i8 6, label %bb.c
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 16
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !16
  %.mask = and i64 %i.l, -140737488355328
  %i.m = icmp eq i64 %.mask, -1548112371908608
  %spec.select = select i1 %i.m, ptr %i.g, ptr %i.k
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %i.p = and i64 %i.o, 140737488355327
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = lshr i32 %1, 16
  %i.y = xor i32 %i.x, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = or i64 %i.ab, -703687441776640
  store i64 %i.ac, ptr %.sroa.0, align 8, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = and i64 %i.ae, 140737488355327
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = lshr i32 %1, 16
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aq = lshr i32 %1, 16
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 47
  %i.at = xor i64 %i.as, -1
  store i64 %i.at, ptr %.sroa.0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.027 = phi ptr [ %i.k, %bb.b ], [ %.sroa.0, %bb.e ], [ %.sroa.0, %bb.c ], [ %i.ap, %bb.d ]
  %.0 = phi ptr [ %spec.select, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  %i.au = load i64, ptr %.0, align 8, !tbaa !16   ; 3 uses
  %i.av = ashr i64 %i.au, 47                      ; 3 uses
  switch i64 %i.av, label %bb.i [
    i64 -12, label %bb.g
    i64 -13, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.aw = and i64 %i.au, 140737488355327
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.az = and i64 %i.au, 140737488355327
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 432
  %i.bg = icmp ult i64 %i.av, -13
  %i.bh = sub nsw i64 21, %i.av
  %spec.select.i = select i1 %i.bg, i64 35, i64 %i.bh
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %spec.select.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.015.in.in.i = phi ptr [ %i.ay, %bb.g ], [ %i.bb, %bb.h ], [ %i.bi, %bb.i ]
  %.015.in.i = load i64, ptr %.015.in.in.i, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq i64 %.015.in.i, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.015.i = inttoptr i64 %.015.in.i to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 464
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = tail call ptr @lj_tab_getstr(ptr noundef nonnull %.015.i, ptr noundef %i.bo) #8 ; 2 uses
  %.not18.i = icmp eq ptr %i.bp, null
  br i1 %.not18.i, label %bb.l, label %lj_meta_lookup.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 248
  br label %lj_meta_lookup.exit

lj_meta_lookup.exit:                              ; preds = %bb.k, %bb.l
  %.1.i = phi ptr [ %i.bt, %bb.l ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bu = load i64, ptr %.1.i, align 8, !tbaa !16
  %.not30 = icmp eq i64 %i.bu, -1
  br i1 %.not30, label %bb.o, label %bb.m, !prof !28

bb.m:                                             ; preds = %lj_meta_lookup.exit
  %.val = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 40
  %.val31 = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.bw = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.by = and i64 %i.bx, 140737488355327
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !16
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.n, label %mmcall.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -93
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !27
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ci
  br label %mmcall.exit

mmcall.exit:                                      ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.cj, %bb.n ], [ %.val31, %bb.m ] ; 6 uses
  %i.ck = select i1 %.not, i64 ptrtoint (ptr @lj_cont_condt to i64), i64 ptrtoint (ptr @lj_cont_condf to i64)
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.ck, ptr %.0.i, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.cl, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.co = load i64, ptr %.1.i, align 8, !tbaa !16
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i64 -1, ptr %i.cn, align 8, !tbaa !16
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.cs = load i64, ptr %.027, align 8, !tbaa !16
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !16
  br label %bb.p

bb.o:                                             ; preds = %lj_meta_lookup.exit
  %i.ct = zext nneg i32 %i.a to i64
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %mmcall.exit
  %.028 = phi ptr [ %i.cp, %mmcall.exit ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_meta_comp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.b = ashr i64 %i.a, 47                        ; 4 uses
  %i.c = icmp eq i64 %i.b, -11
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.e = ashr i64 %i.d, 47                        ; 3 uses
  %i.f = icmp eq i64 %i.e, -11
  br i1 %i.f, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 1
  %.mask = and i64 %i.a, -140737488355328
  %i.g = icmp eq i64 %.mask, -1548112371908608
  %i.h = select i1 %i.g, ptr %1, ptr %2
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = ashr i64 %i.i, 47                        ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 -12, label %bb.d
    i64 -13, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.i, 140737488355327
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = and i64 %i.i, 140737488355327
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  %i.u = icmp ult i64 %i.j, -13
  %i.v = sub nsw i64 21, %i.j
  %spec.select.i = select i1 %i.u, i64 35, i64 %i.v
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %spec.select.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.015.in.in.i = phi ptr [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.w, %bb.f ]
  %.015.in.i = load i64, ptr %.015.in.in.i, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq i64 %.015.in.i, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.015.i = inttoptr i64 %.015.in.i to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15
  %i.z = inttoptr i64 %i.y to ptr
  %6 = zext nneg i32 %5 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %6
  %7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  %i.ab = load i64, ptr %7, align 8, !tbaa !18
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call ptr @lj_tab_getstr(ptr noundef nonnull %.015.i, ptr noundef %i.ac) #8 ; 2 uses
  %.not18.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i, label %bb.i, label %lj_meta_lookup.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  br label %lj_meta_lookup.exit

lj_meta_lookup.exit:                              ; preds = %bb.h, %bb.i
  %.1.i = phi ptr [ %i.ah, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ai = load i64, ptr %.1.i, align 8, !tbaa !16
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %.thread104, label %bb.j, !prof !28

bb.j:                                             ; preds = %lj_meta_lookup.exit
  %i.ak = and i32 %3, 1
  %.not71 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr i8, ptr %0, i64 32
  %.val76 = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 40
  %.val77 = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.an = getelementptr inbounds i8, ptr %.val76, i64 -16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = and i64 %i.ao, 140737488355327
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !16
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -93
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val76, i64 %i.az
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %i.ba, %bb.k ], [ %.val77, %bb.j ] ; 6 uses
  %i.bb = select i1 %.not71, i64 ptrtoint (ptr @lj_cont_condt to i64), i64 ptrtoint (ptr @lj_cont_condf to i64)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.bb, ptr %.0.i, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.bc, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bf = load i64, ptr %.1.i, align 8, !tbaa !16
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i64 -1, ptr %i.be, align 8, !tbaa !16
  %i.bh = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bj = load i64, ptr %2, align 8, !tbaa !16
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !16
  br label %bb.ai

bb.l:                                             ; preds = %bb.b
  %i.bk = icmp eq i64 %i.b, %i.e
  br i1 %i.bk, label %bb.m, label %bb.ah

bb.m:                                             ; preds = %bb.l
  %i.bl = icmp eq i64 %i.b, -5
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = and i64 %i.a, 140737488355327
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = and i64 %i.d, 140737488355327
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call i32 @lj_str_cmp(ptr noundef %i.bn, ptr noundef %i.bp) #8 ; 2 uses
  %i.br = and i32 %3, 2
  %.not70 = icmp eq i32 %i.br, 0
  %i.bs = icmp slt i32 %i.bq, 1
  %i.bt = zext i1 %i.bs to i32
  %.lobit = lshr i32 %i.bq, 31
  %i.bu = select i1 %.not70, i32 %.lobit, i32 %i.bt
  %i.bv = and i32 %3, 1
  %i.bw = xor i32 %i.bu, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = inttoptr i64 %i.bx to ptr
  br label %bb.ai

bb.o:                                             ; preds = %bb.ah, %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.ag, %bb.o
  %i.ca = phi i64 [ %i.a, %bb.o ], [ %.pre, %bb.ag ] ; 3 uses
  %.062 = phi ptr [ %1, %bb.o ], [ %.059, %bb.ag ] ; 3 uses
  %.059 = phi ptr [ %2, %bb.o ], [ %.062, %bb.ag ] ; 5 uses
  %.057 = phi i32 [ %3, %bb.o ], [ %i.fb, %bb.ag ] ; 3 uses
  %i.cb = and i32 %.057, 2
  %.not68 = icmp eq i32 %i.cb, 0                  ; 2 uses
  %i.cc = select i1 %.not68, i32 6, i32 7         ; 2 uses
  %i.cd = ashr i64 %i.ca, 47                      ; 3 uses
  switch i64 %i.cd, label %bb.s [
    i64 -12, label %bb.q
    i64 -13, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ce = and i64 %i.ca, 140737488355327
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ch = and i64 %i.ca, 140737488355327
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ck = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 432
  %i.cn = icmp ult i64 %i.cd, -13
  %i.co = sub nsw i64 21, %i.cd
  %spec.select.i84 = select i1 %i.cn, i64 35, i64 %i.co
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %spec.select.i84
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.015.in.in.i78 = phi ptr [ %i.cg, %bb.q ], [ %i.cj, %bb.r ], [ %i.cp, %bb.s ]
  %.015.in.i79 = load i64, ptr %.015.in.in.i78, align 8, !tbaa !16 ; 2 uses
  %.not.i80 = icmp eq i64 %.015.in.i79, 0
  %.pre120 = load i64, ptr %i.bz, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i80, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.015.i81 = inttoptr i64 %.015.in.i79 to ptr
  %i.cq = inttoptr i64 %.pre120 to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 432
  %i.cs = zext nneg i32 %i.cc to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = tail call ptr @lj_tab_getstr(ptr noundef nonnull %.015.i81, ptr noundef %i.cv) #8 ; 2 uses
  %.not18.i82 = icmp eq ptr %i.cw, null
  br i1 %.not18.i82, label %._crit_edge, label %lj_meta_lookup.exit85

._crit_edge:                                      ; preds = %bb.u
  %.pre119 = load i64, ptr %i.bz, align 8, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.cx = phi i64 [ %.pre119, %._crit_edge ], [ %.pre120, %bb.t ]
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 248
  br label %lj_meta_lookup.exit85

lj_meta_lookup.exit85:                            ; preds = %bb.u, %bb.v
  %.1.i83 = phi ptr [ %i.cz, %bb.v ], [ %i.cw, %bb.u ] ; 3 uses
  %i.da = load i64, ptr %.059, align 8, !tbaa !16 ; 3 uses
  %i.db = ashr i64 %i.da, 47                      ; 3 uses
  switch i64 %i.db, label %bb.y [
    i64 -12, label %bb.w
    i64 -13, label %bb.x
  ]

bb.w:                                             ; preds = %lj_meta_lookup.exit85
  %i.dc = and i64 %i.da, 140737488355327
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br label %bb.z

bb.x:                                             ; preds = %lj_meta_lookup.exit85
  %i.df = and i64 %i.da, 140737488355327
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  br label %bb.z

bb.y:                                             ; preds = %lj_meta_lookup.exit85
  %i.di = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 432
  %i.dl = icmp ult i64 %i.db, -13
  %i.dm = sub nsw i64 21, %i.db
  %spec.select.i92 = select i1 %i.dl, i64 35, i64 %i.dm
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %spec.select.i92
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.015.in.in.i86 = phi ptr [ %i.de, %bb.w ], [ %i.dh, %bb.x ], [ %i.dn, %bb.y ]
  %.015.in.i87 = load i64, ptr %.015.in.in.i86, align 8, !tbaa !16 ; 2 uses
  %.not.i88 = icmp eq i64 %.015.in.i87, 0
  %.pre123 = load i64, ptr %i.bz, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i88, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.015.i89 = inttoptr i64 %.015.in.i87 to ptr
  %i.do = inttoptr i64 %.pre123 to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 432
end_hunk_0
