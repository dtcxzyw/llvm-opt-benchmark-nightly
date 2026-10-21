Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@New_BinOp:bb.a

scalar.ph95.prol:                                 ; preds = %scalar.ph95.preheader, %scalar.ph95.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph95.prol ], [ %indvars.iv.ph, %scalar.ph95.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph95.prol ], [ 0, %scalar.ph95.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.prol
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.prol
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph95.prol.loopexit, label %scalar.ph95.prol, !llvm.loop !155

scalar.ph95.prol.loopexit:                        ; preds = %scalar.ph95.prol, %scalar.ph95.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph95.preheader ], [ %indvars.iv.next.prol, %scalar.ph95.prol ]
  %i.cq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge, label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph95 ], [ %indvars.iv.unr, %scalar.ph95.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.1
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.1
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.2
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph95, !llvm.loop !156

._crit_edge:                                      ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95, %middle.block104, %Test_Dims.exit.thread
  %i.de = icmp eq i32 %3, 291
  %i.df = getelementptr inbounds nuw i8, ptr %spec.select, i64 60
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !22 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 262
  %or.cond = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %or.cond, label %.thread, label %._crit_edge._crit_edge

.thread:                                          ; preds = %._crit_edge
  store i64 1, ptr %i.by, align 8, !tbaa !23
  store i32 1, ptr %i.cb, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i64 1, ptr %i.di, align 8, !tbaa !26
  br label %.sink.split

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %switch.tableidx = add i32 %i.dg, -258          ; 2 uses
  %i.dj = icmp ult i32 %switch.tableidx, 5
  br i1 %i.dj, label %switch.lookup, label %bb.q

switch.lookup:                                    ; preds = %._crit_edge._crit_edge
  %i.dk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.New_BinOp, i64 %i.dk
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %.thread
  %Do_BinOp_dbl.sink = phi ptr [ @Do_BinOp_bit, %.thread ], [ %switch.load, %switch.lookup ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %Do_BinOp_dbl.sink, ptr %i.dl, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge, %.sink.split
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36
  tail call void %i.dn(ptr noundef nonnull %0, ptr noundef nonnull %i.w) #24
  br label %bb.s

bb.s:                                             ; preds = %Alloc_Node.exit.thread, %Alloc_Node.exit, %bb.r, %bb.q, %bb.a, %fits_parser_yyerror.exit
  %.059 = phi i32 [ -1, %fits_parser_yyerror.exit ], [ -1, %bb.a ], [ %i.p, %bb.q ], [ %i.p, %bb.r ], [ %i.p, %Alloc_Node.exit ], [ -1, %Alloc_Node.exit.thread ]
  ret i32 %.059
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @New_Deref(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, 6) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  %i.d = or i32 %3, %1
  %i.e = or i32 %i.d, %4
  %i.f = or i32 %i.e, %5
  %i.g = or i32 %i.f, %6
  %i.h = or i32 %i.g, %7
  %or.cond9.not = icmp sgt i32 %i.h, -1
  br i1 %or.cond9.not, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [384 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = icmp eq i32 %i.m, -1000
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %fits_parser_yyerror.exit

bb.e:                                             ; preds = %bb.d
  store i32 431, ptr %i.r, align 8, !tbaa !33
  br label %fits_parser_yyerror.exit

fits_parser_yyerror.exit:                         ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 1 dereferenceable(80) @str.15, i64 noundef 80, i1 false) #24
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 79
  store i8 0, ptr %i.t, align 1, !tbaa !10
  call void @ffpmsg(ptr noundef nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.as

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %Alloc_Node.exit

bb.g:                                             ; preds = %bb.f
  %i.z = shl nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.z, ptr %i.w, align 4, !tbaa !35
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.aa, 384
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.ab) #27 ; 3 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %Alloc_Node.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !17
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !34
  br label %Alloc_Node.exit

Alloc_Node.exit.thread:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 113, ptr %i.ad, align 8, !tbaa !33
  br label %bb.as

Alloc_Node.exit:                                  ; preds = %bb.f, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.h ], [ %i.j, %bb.f ] ; 7 uses
  %i.af = phi i32 [ %.pre.i, %bb.h ], [ %i.v, %bb.f ] ; 6 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !34
  %i.ah = icmp sgt i32 %i.af, -1
  br i1 %i.ah, label %bb.i, label %bb.as

bb.i:                                             ; preds = %Alloc_Node.exit
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [384 x i8], ptr %i.ae, i64 %i.ai ; 17 uses
  %i.ak = add nuw nsw i32 %2, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 %1, ptr %i.am, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw [384 x i8], ptr %i.ae, i64 %i.k ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %3, ptr %i.ao, align 8, !tbaa !21
  %i.ap = zext nneg i32 %3 to i64
  %i.aq = getelementptr inbounds nuw [384 x i8], ptr %i.ae, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store i32 %4, ptr %i.ar, align 4, !tbaa !21
  %i.as = zext nneg i32 %4 to i64
  %i.at = getelementptr inbounds nuw [384 x i8], ptr %i.ae, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 %5, ptr %i.au, align 8, !tbaa !21
  %i.av = sext i32 %5 to i64
  %i.aw = getelementptr inbounds [384 x i8], ptr %i.ae, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  store i32 %6, ptr %i.ax, align 4, !tbaa !21
  %i.ay = sext i32 %6 to i64
  %i.az = getelementptr inbounds [384 x i8], ptr %i.ae, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 %7, ptr %i.ba, align 8, !tbaa !21
  %8 = sext i32 %7 to i64
  %i.bb = getelementptr inbounds [384 x i8], ptr %i.ae, i64 %8 ; 3 uses
  %i.bc = load i32, ptr %i.an, align 8, !tbaa !24
  %i.bd = icmp eq i32 %i.bc, -1000
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !24
  %i.bf = icmp eq i32 %i.be, -1000
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bg = phi i1 [ false, %bb.i ], [ %i.bf, %bb.j ] ; 2 uses
  %exitcond.not = icmp eq i32 %2, 1
  br i1 %exitcond.not, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %i.at, align 8, !tbaa !24
  %i.bi = icmp eq i32 %i.bh, -1000
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = phi i1 [ false, %bb.l ], [ %i.bi, %bb.m ] ; 2 uses
  %exitcond.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond.not.1, label %.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load i32, ptr %i.aw, align 8, !tbaa !24
  %i.bl = icmp eq i32 %i.bk, -1000
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bm = phi i1 [ false, %bb.o ], [ %i.bl, %bb.p ] ; 2 uses
  %exitcond.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond.not.2, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.az, align 8, !tbaa !24
  %i.bo = icmp eq i32 %i.bn, -1000
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = phi i1 [ false, %bb.r ], [ %i.bo, %bb.s ] ; 2 uses
  %exitcond.not.3 = icmp eq i32 %2, 4             ; 2 uses
  %.not148 = xor i1 %i.bp, true
  %brmerge = select i1 %exitcond.not.3, i1 true, i1 %.not148
  %.mux = select i1 %exitcond.not.3, i1 %i.bp, i1 false
  br i1 %brmerge, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !24
  %i.br = icmp eq i32 %i.bq, -1000
  br label %.preheader

bb.v:                                             ; preds = %bb.ag
  %exitcond118.not = icmp eq i32 %2, 1
  br i1 %exitcond118.not, label %bb.ak, label %.preheader.1

.preheader.1:                                     ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %.preheader.1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !22
  %.not.1 = icmp eq i32 %i.bw, 259
  br i1 %.not.1, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %exitcond118.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond118.not.1, label %bb.ak, label %.preheader.2

.preheader.2:                                     ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.bz = icmp sgt i64 %i.by, 1
  br i1 %i.bz, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.preheader.2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22
  %.not.2 = icmp eq i32 %i.cb, 259
  br i1 %.not.2, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %exitcond118.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond118.not.2, label %bb.ak, label %.preheader.3

.preheader.3:                                     ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.ce = icmp sgt i64 %i.cd, 1
  br i1 %i.ce, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 60
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %.not.3 = icmp eq i32 %i.cg, 259
  br i1 %.not.3, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %exitcond118.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond118.not.3, label %bb.ak, label %.preheader.4

.preheader.4:                                     ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.cj = icmp sgt i64 %i.ci, 1
  br i1 %i.cj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 60
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %.not.4 = icmp eq i32 %i.cl, 259
  br i1 %.not.4, label %bb.ak, label %bb.ah

.preheader:                                       ; preds = %bb.t, %bb.k, %bb.n, %bb.q, %bb.u
  %.lcssa138 = phi i1 [ %i.bg, %bb.k ], [ %i.bj, %bb.n ], [ %i.bm, %bb.q ], [ %.mux, %bb.t ], [ %i.br, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.co = icmp sgt i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader
  %i.cp = load i32, ptr %i.u, align 8, !tbaa !34  ; 2 uses
  %.not.i98 = icmp eq i32 %i.cp, 0
  br i1 %.not.i98, label %Free_Last_Node.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.u, align 8, !tbaa !34
  br label %Free_Last_Node.exit

Free_Last_Node.exit:                              ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !33
  %.not.i99 = icmp eq i32 %i.cs, 0
  br i1 %.not.i99, label %bb.af, label %fits_parser_yyerror.exit100

bb.af:                                            ; preds = %Free_Last_Node.exit
  store i32 431, ptr %i.cr, align 8, !tbaa !33
  br label %fits_parser_yyerror.exit100

fits_parser_yyerror.exit100:                      ; preds = %Free_Last_Node.exit, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull align 1 dereferenceable(80) @str.14, i64 noundef 80, i1 false) #24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 79
  store i8 0, ptr %i.ct, align 1, !tbaa !10
  call void @ffpmsg(ptr noundef nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.as

bb.ag:                                            ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22
  %.not = icmp eq i32 %i.cv, 259
  br i1 %.not, label %bb.v, label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.ag
  %i.cw = load i32, ptr %i.u, align 8, !tbaa !34  ; 2 uses
  %.not.i101 = icmp eq i32 %i.cw, 0
  br i1 %.not.i101, label %Free_Last_Node.exit102, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.u, align 8, !tbaa !34
  br label %Free_Last_Node.exit102

Free_Last_Node.exit102:                           ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !33
  %.not.i103 = icmp eq i32 %i.cz, 0
  br i1 %.not.i103, label %bb.aj, label %fits_parser_yyerror.exit104

bb.aj:                                            ; preds = %Free_Last_Node.exit102
  store i32 431, ptr %i.cy, align 8, !tbaa !33
  br label %fits_parser_yyerror.exit104

fits_parser_yyerror.exit104:                      ; preds = %Free_Last_Node.exit102, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull align 1 dereferenceable(80) @str.13, i64 noundef 80, i1 false) #24
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 79
  store i8 0, ptr %i.da, align 1, !tbaa !10
  call void @ffpmsg(ptr noundef nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

bb.ak:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.v
  store i32 91, ptr %i.aj, align 8, !tbaa !24
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @Do_Deref, ptr %i.db, align 8, !tbaa !36
end_hunk_0
