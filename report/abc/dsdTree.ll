inline.NumInlined: 35
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Dsd_TreePrint_rec:bb.a
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !57
  %fputs = tail call i32 @fputs(ptr %i.gh, ptr %0) ; 0 uses
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.gi = load i32, ptr %6, align 4, !tbaa !31    ; 3 uses
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %6, align 4, !tbaa !31
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !31
  %i.gl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.gi) #18 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gm = load i16, ptr %i.c, align 8, !tbaa !16
  %i.gn = sext i16 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next, %i.gn
  br i1 %i.go, label %.peel.next, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.bn, %bb.bf, %bb.aw
  %i.gp = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %0) ; 0 uses
  %i.gq = load i16, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.gr = icmp sgt i16 %i.gq, 0
  br i1 %i.gr, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %._crit_edge
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = add nsw i32 %5, 6
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph195, %bb.bq
  %i.gu = phi i16 [ %i.gq, %.lr.ph195 ], [ %i.he, %bb.bq ]
  %indvars.iv214 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next215, %bb.bq ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv214
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !31 ; 2 uses
  %.not165 = icmp eq i32 %i.gw, 0
  br i1 %.not165, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gw) #18 ; 0 uses
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !17
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv214
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !18
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = and i64 %i.hb, -2
  %i.hd = inttoptr i64 %i.hc to ptr
  call fastcc void @Dsd_TreePrint_rec(ptr noundef %0, ptr noundef %i.hd, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.gt, ptr noundef %6, i32 noundef %7)
  %.pre = load i16, ptr %i.c, align 8, !tbaa !16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.he = phi i16 [ %i.gu, %bb.bo ], [ %.pre, %bb.bp ] ; 2 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.hf = sext i16 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next215, %i.hf
  br i1 %i.hg, label %bb.bo, label %.loopexit.thread, !llvm.loop !65

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge199, %._crit_edge206, %bb.a, %bb.f, %bb.b
  %.not189 = icmp eq ptr %i.g, null
  br i1 %.not189, label %bb.br, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.bq, %bb.av, %bb.aa, %.loopexit
  call void @free(ptr noundef nonnull %i.g) #18
  br label %bb.br

bb.br:                                            ; preds = %.loopexit, %.loopexit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Dsd_TreeFunc2Truth_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = xor i64 %i.c, 1                          ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %common.ret38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr1823 = phi ptr [ %i.k, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %accumulator.tr22 = phi i64 [ %i.l, %tailrecurse ], [ 0, %bb.a ] ; 3 uses
  %i.g = icmp eq ptr %.tr1823, %i.b
  br i1 %i.g, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = ptrtoint ptr %.tr1823 to i64             ; 2 uses
  %i.i = and i64 %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %tailrecurse

tailrecurse:                                      ; preds = %bb.b
  %i.j = and i64 %i.h, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = xor i64 %accumulator.tr22, -1            ; 2 uses
  %i.m = icmp eq i64 %i.j, %i.d
  br i1 %i.m, label %._crit_edge.loopexit, label %.lr.ph

common.ret38:                                     ; preds = %._crit_edge.loopexit, %bb.a, %bb.c
  %common.ret38.op = phi i64 [ %accumulator.ret.tr, %bb.c ], [ %i.ag, %._crit_edge.loopexit ], [ 0, %bb.a ]
  ret i64 %common.ret38.op

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = load i32, ptr %.tr1823, align 8, !tbaa !41
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1823, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1823, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = tail call i64 @Dsd_TreeFunc2Truth_rec(ptr noundef nonnull %0, ptr noundef %i.v)
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.y = tail call i64 @Dsd_TreeFunc2Truth_rec(ptr noundef nonnull %0, ptr noundef %i.x)
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.ac = and i64 %i.ab, %i.y
  %i.ad = xor i64 %i.ab, -1
  %i.ae = and i64 %i.w, %i.ad
  %i.af = or i64 %i.ac, %i.ae
  %accumulator.ret.tr = xor i64 %i.af, %accumulator.tr22
  br label %common.ret38

._crit_edge.loopexit:                             ; preds = %.lr.ph, %tailrecurse
  %accumulator.tr.lcssa.ph = phi i64 [ %i.l, %tailrecurse ], [ %accumulator.tr22, %.lr.ph ]
  %.0.ph = phi i64 [ 0, %tailrecurse ], [ -1, %.lr.ph ]
  %i.ag = xor i64 %.0.ph, %accumulator.tr.lcssa.ph
  br label %common.ret38
}

; Function Attrs: nounwind uwtable
define void @Dsd_TreePrint2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !8
  switch i32 %i.c, label %bb.q [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 5, label %bb.d
    i32 3, label %bb.m
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %.not99 = icmp eq i32 %3, 0
  %i.d = zext i1 %.not99 to i32
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.d) #18 ; 0 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not96 = icmp eq i32 %3, 0
  %i.f = select i1 %.not96, ptr @.str.3, ptr @.str.2
  %fputs97 = tail call i32 @fputs(ptr nonnull %i.f, ptr %0) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %fputs98 = tail call i32 @fputs(ptr %i.l, ptr %0) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %fputc91 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 8 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = icmp slt i16 %i.n, 7
  br i1 %i.o, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.p = tail call ptr @Dsd_TreeGetPrimeFunction(ptr noundef %1, ptr noundef nonnull %2) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.q = tail call i64 @Dsd_TreeFunc2Truth_rec(ptr noundef %1, ptr noundef %i.p)
  store i64 %i.q, ptr %i.b, align 8, !tbaa !80
  tail call void @Cudd_Ref(ptr noundef %i.p) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.p) #18
  %i.r = load i16, ptr %i.m, align 8, !tbaa !16
  %i.s = sext i16 %i.r to i32
  %i.t = call i32 @Abc_TtCanonicize(ptr noundef nonnull %i.b, i32 noundef %i.s, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.u = load i16, ptr %i.m, align 8, !tbaa !16
  %i.v = zext nneg i16 %i.u to i32
  %i.w = lshr i32 %i.t, %i.v
  %i.x = and i32 %i.w, 1
  %.not93 = icmp eq i32 %3, %i.x
  %i.y = select i1 %.not93, ptr @.str.3, ptr @.str.2
  %fputs94 = call i32 @fputs(ptr nonnull %i.y, ptr %0) ; 0 uses
  %i.z = load i16, ptr %i.m, align 8, !tbaa !16   ; 4 uses
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %5 = icmp samesign ugt i16 %i.z, 5
  %i.ab = add nsw i32 %i.aa, -2
  %i.ac = icmp slt i16 %i.z, 2
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !80
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 15                       ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 10
  %i.ah = or disjoint i32 %i.af, 48
  %i.ai = add nuw nsw i32 %i.af, 55
  %.0.i.i = select i1 %i.ag, i32 %i.ah, i32 %i.ai
  %fputc17.i = call i32 @fputc(i32 %.0.i.i, ptr %0) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp samesign ult i16 %i.z, 7
  %i.ak = add nsw i32 %i.aa, -6
  %i.al = shl nuw i32 1, %i.ak
  %i.am = select i1 %i.aj, i32 1, i32 %i.al       ; 2 uses
  %.not22.i = icmp slt i32 %i.am, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.an = zext nneg i32 %i.am to i64
  %.idx.i = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr i8, ptr %i.b, i64 %.idx.i
  %.021.i = getelementptr i8, ptr %i.ao, i64 -8
  %notmask.i = shl nsw i32 -1, %i.ab
  %i.ap = xor i32 %notmask.i, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = select i1 %5, i64 15, i64 %i.aq
  br label %bb.h

.loopexit.i:                                      ; preds = %bb.i
  %.0.i = getelementptr inbounds i8, ptr %.023.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.0.i, %i.b
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.h, !llvm.loop !81

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.023.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %.0.i, %.loopexit.i ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %i.ar, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.as = load i64, ptr %.023.i, align 8, !tbaa !80
  %i.at = shl nsw i64 %indvars.iv.i, 2
  %i.au = and i64 %i.at, 4294967292
  %i.av = lshr i64 %i.as, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15                       ; 3 uses
  %i.ay = icmp samesign ult i32 %i.ax, 10
  %i.az = or disjoint i32 %i.ax, 48
  %i.ba = add nuw nsw i32 %i.ax, 55
  %.0.i18.i = select i1 %i.ay, i32 %i.az, i32 %i.ba
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr %0) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bb = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.bb, label %bb.i, label %.loopexit.i, !llvm.loop !82

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.f, %bb.g
  %fputc95 = call i32 @fputc(i32 123, ptr %0)     ; 0 uses
  %i.bc = load i16, ptr %i.m, align 8, !tbaa !16
  %i.bd = icmp sgt i16 %i.bc, 0
  br i1 %i.bd, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %Abc_TtPrintHexRev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph110, %bb.j
  %indvars.iv119 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next120, %bb.j ] ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !54
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, -2
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = trunc i64 %i.bl to i32
  %i.bp = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.bq = lshr i32 %i.t, %i.bp
  %i.br = xor i32 %i.bq, %i.bo
  %i.bs = and i32 %i.br, 1
  call void @Dsd_TreePrint2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.bn, i32 noundef %i.bs, ptr noundef %4)
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.bt = load i16, ptr %i.m, align 8, !tbaa !16
  %i.bu = sext i16 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next120, %i.bu
  br i1 %i.bv, label %bb.j, label %._crit_edge111, !llvm.loop !83

._crit_edge111:                                   ; preds = %bb.j, %Abc_TtPrintHexRev.exit
  %i.bw = call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

bb.k:                                             ; preds = %bb.d
  %i.bx = zext nneg i16 %i.n to i32
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.bx) #18 ; 0 uses
  %fputc92 = tail call i32 @fputc(i32 123, ptr %0) ; 0 uses
  %i.bz = load i16, ptr %i.m, align 8, !tbaa !16
  %i.ca = icmp sgt i16 %i.bz, 0
  br i1 %i.ca, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph107, %bb.l
  %indvars.iv116 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next117, %bb.l ] ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv116
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.cf = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cg = and i64 %i.cf, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = trunc i64 %i.cf to i32
  %i.cj = and i32 %i.ci, 1
  tail call void @Dsd_TreePrint2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.ch, i32 noundef %i.cj, ptr noundef %4)
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.ck = load i16, ptr %i.m, align 8, !tbaa !16
  %i.cl = sext i16 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next117, %i.cl
  br i1 %i.cm, label %bb.l, label %._crit_edge108, !llvm.loop !84

._crit_edge108:                                   ; preds = %bb.l, %bb.k
  %i.cn = tail call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %.not86 = icmp eq i32 %3, 0
  %i.co = select i1 %.not86, ptr @.str.2, ptr @.str.3
  %fputs87 = tail call i32 @fputs(ptr nonnull %i.co, ptr %0) ; 0 uses
  %fputc88 = tail call i32 @fputc(i32 40, ptr %0) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !16
  %i.cr = icmp sgt i16 %i.cq, 0
  br i1 %i.cr, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph103, %bb.n
  %indvars.iv113 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next114, %bb.n ] ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv113
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, -2
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = trunc i64 %i.cw to i32
  %i.da = and i32 %i.cz, 1
  %i.db = xor i32 %i.da, 1
  tail call void @Dsd_TreePrint2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.cy, i32 noundef %i.db, ptr noundef %4)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.dc = load i16, ptr %i.cp, align 8, !tbaa !16
  %i.dd = sext i16 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next114, %i.dd
  br i1 %i.de, label %bb.n, label %._crit_edge104, !llvm.loop !85

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %fputc89 = tail call i32 @fputc(i32 41, ptr %0) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  %i.df = select i1 %.not, ptr @.str.3, ptr @.str.2
  %fputs = tail call i32 @fputs(ptr nonnull %i.df, ptr %0) ; 0 uses
  %fputc = tail call i32 @fputc(i32 91, ptr %0)   ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !16
  %i.di = icmp sgt i16 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, -2
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = trunc i64 %i.dn to i32
  %i.dr = and i32 %i.dq, 1
  tail call void @Dsd_TreePrint2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.dp, i32 noundef %i.dr, ptr noundef %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = load i16, ptr %i.dg, align 8, !tbaa !16
  %i.dt = sext i16 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %bb.p, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@Dsd_NodePrint_rec:bb.a
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %5, align 4, !tbaa !31
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %i.ej) #18 ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !41
  %i.ep = add i32 %i.eo, 97
  %i.eq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.ep) #18 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink207 = phi i32 [ 0, %bb.ak ], [ %i.ej, %bb.aj ]
  store i32 %.sink207, ptr %i.g, align 4, !tbaa !31
  br i1 %.not142.peel, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %fputc144.peel = tail call i32 @fputc(i32 39, ptr %0) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.er = load i16, ptr %i.c, align 8, !tbaa !16
  %i.es = icmp sgt i16 %i.er, 1
  br i1 %i.es, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.an, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 1, %bb.an ] ; 3 uses
  %i.et = load ptr, ptr %i.ec, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !18 ; 2 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = and i64 %i.ew, -2
  %i.ey = inttoptr i64 %i.ex to ptr               ; 3 uses
  %.not142 = icmp eq ptr %i.ev, %i.ey
  %fputc = tail call i32 @fputc(i32 44, ptr %0)   ; 0 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !8
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.peel.next
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !21
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !41
  %i.fe = add i32 %i.fd, 97
  %i.ff = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.fe) #18 ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %.peel.next
  %i.fg = load i32, ptr %5, align 4, !tbaa !31    ; 3 uses
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %5, align 4, !tbaa !31
  %i.fi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %i.fg) #18 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink208 = phi i32 [ 0, %bb.ao ], [ %i.fg, %bb.ap ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.sink208, ptr %i.fj, align 4, !tbaa !31
  br i1 %.not142, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %fputc144 = tail call i32 @fputc(i32 39, ptr %0) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i16, ptr %i.c, align 8, !tbaa !16
  %i.fl = sext i16 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %.peel.next, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.as, %bb.an, %bb.ah
  %i.fn = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %0) ; 0 uses
  %i.fo = load i16, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.fp = icmp sgt i16 %i.fo, 0
  br i1 %i.fp, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = add nsw i32 %4, 6
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph164, %bb.av
  %i.fs = phi i16 [ %i.fo, %.lr.ph164 ], [ %i.gc, %bb.av ]
  %indvars.iv183 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next184, %bb.av ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv183
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !31 ; 2 uses
  %.not141 = icmp eq i32 %i.fu, 0
  br i1 %.not141, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fu) #18 ; 0 uses
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !17
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv183
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = and i64 %i.fz, -2
  %i.gb = inttoptr i64 %i.ga to ptr
  call fastcc void @Dsd_NodePrint_rec(ptr noundef %0, ptr noundef %i.gb, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.fr, ptr noundef %5)
  %.pre210 = load i16, ptr %i.c, align 8, !tbaa !16
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.gc = phi i16 [ %i.fs, %bb.at ], [ %.pre210, %bb.au ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.gd = sext i16 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next184, %i.gd
  br i1 %i.ge, label %bb.at, label %.loopexit.thread, !llvm.loop !94

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge168, %._crit_edge175, %bb.a, %bb.c, %bb.b
  %.not158 = icmp eq ptr %i.g, null
  br i1 %.not158, label %bb.aw, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.av, %bb.ag, %bb.r, %.loopexit
  call void @free(ptr noundef nonnull %i.g) #18
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %.loopexit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Dsd_TreeGetPrimeFunctionOld(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi i16 [ %i.d, %.lr.ph ], [ %i.al, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.05356 = phi ptr [ %i.b, %.lr.ph ], [ %.154, %bb.d ] ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8
  %.not55 = icmp eq i32 %i.l, 2
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = xor i64 %i.o, 1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @Extra_bddFindOneCube(ptr noundef %0, ptr noundef %i.q) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.r) #18
  %i.s = tail call ptr @Cudd_Cofactor(ptr noundef %0, ptr noundef %.05356, ptr noundef %i.r) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.s) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.r) #18
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = tail call ptr @Extra_bddFindOneCube(ptr noundef %0, ptr noundef %i.x) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.y) #18
  %i.z = tail call ptr @Cudd_Cofactor(ptr noundef %0, ptr noundef %.05356, ptr noundef %i.y) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.z) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.y) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.05356) #18
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !41
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  %i.ak = tail call ptr @Cudd_bddIte(ptr noundef %0, ptr noundef %i.aj, ptr noundef %i.z, ptr noundef %i.s) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.ak) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.s) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.z) #18
  %.pre = load i16, ptr %i.c, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.al = phi i16 [ %.pre, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.154 = phi ptr [ %i.ak, %bb.c ], [ %.05356, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = sext i16 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.053.lcssa = phi ptr [ %i.b, %bb.a ], [ %.154, %bb.d ] ; 3 uses
  %.lcssa.in = phi i16 [ %i.d, %bb.a ], [ %i.al, %bb.d ] ; 3 uses
  %.lcssa = zext i16 %.lcssa.in to i64            ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ao = icmp sgt i16 %.lcssa.in, 0
  br i1 %i.ao, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 5 uses
  %xtraiter = and i64 %.lcssa, 3                  ; 3 uses
  %i.ar = icmp ult i16 %.lcssa.in, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %.lcssa, 32764
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph60.new
  %indvars.iv64 = phi i64 [ 0, %.lr.ph60.new ], [ %indvars.iv.next65.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.e ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @Dsd_TreeGetPrimeFunctionOld.Permute, i64 %i.ax
  %i.az = trunc nuw nsw i64 %indvars.iv64 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !31
  %indvars.iv.next65 = or disjoint i64 %indvars.iv64, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next65
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !41
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @Dsd_TreeGetPrimeFunctionOld.Permute, i64 %i.bf
  %i.bh = trunc nuw nsw i64 %indvars.iv.next65 to i32
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !31
  %indvars.iv.next65.1 = or disjoint i64 %indvars.iv64, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next65.1
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !41
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @Dsd_TreeGetPrimeFunctionOld.Permute, i64 %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv.next65.1 to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !31
  %indvars.iv.next65.2 = or disjoint i64 %indvars.iv64, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next65.2
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !41
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @Dsd_TreeGetPrimeFunctionOld.Permute, i64 %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv.next65.2 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !31
  %indvars.iv.next65.3 = add nuw nsw i64 %indvars.iv64, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge61.loopexit.unr-lcssa, label %bb.e, !llvm.loop !98

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %indvars.iv64.epil.init = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next65.3, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv64.epil = phi i64 [ %indvars.iv64.epil.init, %.epil.preheader ], [ %indvars.iv.next65.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv64.epil
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !41
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @Dsd_TreeGetPrimeFunctionOld.Permute, i64 %i.cd
  %i.cf = trunc nuw nsw i64 %indvars.iv64.epil to i32
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !31
  %indvars.iv.next65.epil = add nuw nsw i64 %indvars.iv64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.f, !llvm.loop !99

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit.unr-lcssa, %bb.f, %.preheader
  %i.cg = tail call ptr @Cudd_bddPermute(ptr noundef %0, ptr noundef %.053.lcssa, ptr noundef nonnull @Dsd_TreeGetPrimeFunctionOld.Permute) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.cg) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.053.lcssa) #18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge61, %._crit_edge
  %.2 = phi ptr [ %i.cg, %._crit_edge61 ], [ %.053.lcssa, %._crit_edge ] ; 2 uses
  tail call void @Cudd_Deref(ptr noundef %.2) #18
  ret ptr %.2
}

declare ptr @Extra_bddFindOneCube(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_Cofactor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddIte(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddPermute(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Cudd_Deref(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare void @Extra_PrintSymbols(ptr noundef, i8 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Dsd_Node_t_", !5, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !14, i64 32, !15, i64 40, !15, i64 42}
!10 = !{!"p1 _ZTS6DdNode", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p2 _ZTS11Dsd_Node_t_", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!9, !15, i64 40}
!17 = !{!9, !12, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS11Dsd_Node_t_", !11, i64 0}
!20 = !{!9, !10, i64 8}
!21 = !{!9, !10, i64 16}
!22 = !{!23, !5, i64 20}
!23 = !{!"Dsd_Manager_t_", !24, i64 0, !25, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32, !12, i64 40, !19, i64 48, !5, i64 56}
!24 = !{!"p1 _ZTS9DdManager", !11, i64 0}
!25 = !{!"p1 _ZTS9st__table", !11, i64 0}
!26 = !{!23, !12, i64 40}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!9, !15, i64 42}
!30 = distinct !{!30, !28}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = !{!42, !5, i64 0}
!42 = !{!"DdNode", !5, i64 0, !5, i64 4, !10, i64 8, !6, i64 16, !14, i64 32}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = !{!50, !5, i64 4}
!50 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !51, i64 8}
!51 = !{!"p1 omnipotent char", !11, i64 0}
!52 = !{!50, !5, i64 0}
!53 = !{!50, !51, i64 8}
!54 = !{!6, !6, i64 0}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!51, !51, i64 0}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28, !60}
!60 = !{!"llvm.loop.peeled.count", i32 1}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28, !60}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28, !60}
!65 = distinct !{!65, !28}
!66 = !{!67, !10, i64 40}
!67 = !{!"DdManager", !42, i64 0, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !68, i64 80, !68, i64 88, !5, i64 96, !5, i64 100, !69, i64 104, !69, i64 112, !69, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !70, i64 152, !70, i64 160, !71, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !69, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !72, i64 280, !14, i64 288, !14, i64 296, !69, i64 304, !5, i64 312, !73, i64 320, !73, i64 328, !73, i64 336, !73, i64 344, !72, i64 352, !73, i64 360, !72, i64 368, !5, i64 376, !74, i64 384, !74, i64 392, !72, i64 400, !10, i64 408, !51, i64 416, !72, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !69, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !69, i64 472, !69, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !75, i64 528, !75, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !76, i64 568, !51, i64 576, !77, i64 584, !77, i64 592, !77, i64 600, !77, i64 608, !78, i64 616, !78, i64 624, !5, i64 632, !14, i64 640, !14, i64 648, !14, i64 656, !5, i64 664, !14, i64 672, !14, i64 680, !69, i64 688, !69, i64 696, !69, i64 704, !69, i64 712, !69, i64 720, !69, i64 728, !5, i64 736, !10, i64 744, !10, i64 752, !14, i64 760}
!68 = !{!"p1 _ZTS7DdCache", !11, i64 0}
!69 = !{!"double", !6, i64 0}
!70 = !{!"p1 _ZTS10DdSubtable", !11, i64 0}
!71 = !{!"DdSubtable", !72, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!72 = !{!"p2 _ZTS6DdNode", !13, i64 0}
!73 = !{!"p1 int", !11, i64 0}
!74 = !{!"p1 long", !11, i64 0}
!75 = !{!"p1 _ZTS7MtrNode", !11, i64 0}
!76 = !{!"p1 _ZTS12DdLocalCache", !11, i64 0}
!77 = !{!"p1 _ZTS6DdHook", !11, i64 0}
!78 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!79 = !{!67, !73, i64 320}
!80 = !{!14, !14, i64 0}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = !{!23, !24, i64 0}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28, !60}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28, !60}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28, !60}
!94 = distinct !{!94, !28}
!95 = !{!67, !72, i64 352}
!96 = !{!10, !10, i64 0}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
