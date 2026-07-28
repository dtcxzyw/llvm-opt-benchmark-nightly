inline.NumInlined: 24
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unspack:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.x) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call i32 @very_real_unpack(ptr noundef nonnull %i.x, i32 noundef %i.q, i32 noundef %i.l, i32 noundef %.049, i32 noundef %.048, ptr noundef nonnull %i.b, i32 noundef %.val, ptr noundef %1, i32 noundef %.val63)
  tail call void @free(ptr noundef nonnull %i.x) #8
  %.not60 = icmp eq i32 %i.ab, 0
  br i1 %.not60, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.val63, ptr %i.ad, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.val63, ptr %i.ae, align 4, !tbaa !26
  store i32 %3, ptr %7, align 4, !tbaa !27
  %i.af = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %6) #8
  %.not61 = icmp eq i32 %i.af, 0
  %i.ag = zext i1 %.not61 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.a, %bb.h, %bb.f
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.d ], [ %i.ag, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @very_real_unpack(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.UNSP, align 8               ; 61 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.a = add i32 %3, %2
  %i.b = and i32 %i.a, 255
  %i.c = shl i32 768, %i.b
  %i.d = add nuw nsw i32 %i.c, 1846
  %i.e = and i32 %3, 255
  %notmask = shl nsw i32 -1, %i.e
  %i.f = xor i32 %notmask, -1
  %i.g = and i32 %4, 255
  %notmask309 = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask309, -1
  %i.i = zext i32 %1 to i64
  %i.j = zext i32 %i.d to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = icmp samesign ugt i64 %i.k, %i.i
  br i1 %i.l, label %.thread490, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.j
  %i.m = add nsw i64 %i.j, -22
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !28
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !28
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !29

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1024, ptr %i.s, align 2, !tbaa !28
  store i16 1024, ptr %0, align 2, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 49 uses
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 53 uses
  store ptr %5, ptr %9, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 63 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !37
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 17 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i32 %1, ptr %i.ab, align 8, !tbaa !40
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !36
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !41
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !41
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread490

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !36
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !41
  br i1 %i.ay, label %.lr.ph, label %.thread490

.lr.ph:                                           ; preds = %get_byte.exit.4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 2 uses
  %.not325 = icmp eq i32 %8, 0                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 3 uses
  %i.bj = and i32 %2, 255
  %i.bk = sub i32 8, %2
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext i32 %8 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1606 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.aaw, %select.unfold ] ; 5 uses
  %.0247564 = phi i32 [ 0, %.lr.ph ], [ %.3250, %select.unfold ]
  %.0251561 = phi i32 [ 0, %.lr.ph ], [ %.3254, %select.unfold ] ; 13 uses
  %.0255558 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0259555 = phi i32 [ 1, %.lr.ph ], [ %.3262, %select.unfold ] ; 11 uses
  %.0263552 = phi i32 [ 1, %.lr.ph ], [ %.2265, %select.unfold ] ; 11 uses
  %.0266548 = phi i32 [ 1, %.lr.ph ], [ %.2268, %select.unfold ] ; 7 uses
  %.0269547 = phi i32 [ 0, %.lr.ph ], [ %.3272, %select.unfold ] ; 25 uses
  %.0273546 = phi i32 [ 0, %.lr.ph ], [ %.3276, %select.unfold ]
  %.0279541 = phi i32 [ %6, %.lr.ph ], [ %.3282, %select.unfold ] ; 4 uses
  %i.bq = shl i32 %.0251561, 4                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs ; 5 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %switch.i = icmp ult i32 %i.bu, 2
  br i1 %switch.i, label %.thread486, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 8 uses
  %.not49.i = icmp uge ptr %i.bt, %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 7 uses
  %.not50.i = icmp ule ptr %i.bx, %i.by
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %bb.k
  %i.bz = load i16, ptr %i.bt, align 2, !tbaa !28 ; 4 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.cc = lshr i32 %i.cb, 11
  %i.cd = mul i32 %i.cc, %i.ca                    ; 7 uses
  %i.ce = load i32, ptr %i.u, align 4, !tbaa !41  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 %i.cd, ptr %i.v, align 8, !tbaa !37
  %i.cg = sub nsw i32 2048, %i.ca
  %i.ch = lshr i32 %i.cg, 5
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = add i16 %i.bz, %i.ci
  store i16 %i.cj, ptr %i.bt, align 2, !tbaa !28
  %i.ck = icmp ult i32 %i.cd, 16777216
  br i1 %i.ck, label %bb.n, label %getbit_from_table.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = shl i32 %i.ce, 8
  %i.cm = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.cm, %i.cn
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.p:                                             ; preds = %bb.n
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.p, %bb.o
  %.0.i.i = phi i32 [ 255, %bb.o ], [ %i.cp, %bb.p ]
  %i.cr = or disjoint i32 %.0.i.i, %i.cl          ; 2 uses
  store i32 %i.cr, ptr %i.u, align 4, !tbaa !41
  %i.cs = shl nuw i32 %i.cd, 8                    ; 2 uses
  store i32 %i.cs, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.q:                                             ; preds = %bb.l
  %i.ct = sub i32 %i.cb, %i.cd                    ; 3 uses
  store i32 %i.ct, ptr %i.v, align 8, !tbaa !37
  %i.cu = sub nuw i32 %i.ce, %i.cd                ; 2 uses
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !41
  %i.cv = lshr i16 %i.bz, 5
  %i.cw = sub i16 %i.bz, %i.cv
  store i16 %i.cw, ptr %i.bt, align 2, !tbaa !28
  %i.cx = icmp ult i32 %i.ct, 16777216
  br i1 %i.cx, label %bb.r, label %.thread468

bb.r:                                             ; preds = %bb.q
  %i.cy = shl i32 %i.cu, 8
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.da = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i51.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.t:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.dd, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.t, %bb.s
  %.0.i52.i = phi i32 [ 255, %bb.s ], [ %i.dc, %bb.t ]
  %i.de = or disjoint i32 %.0.i52.i, %i.cy
  store i32 %i.de, ptr %i.u, align 4, !tbaa !41
  %i.df = shl nuw i32 %i.ct, 8
  store i32 %i.df, ptr %i.v, align 8, !tbaa !37
  br label %.thread468

getbit_from_table.exit:                           ; preds = %get_byte.exit.i, %bb.m
  %.promoted538 = phi i32 [ %i.cr, %get_byte.exit.i ], [ %i.ce, %bb.m ]
  %.promoted537 = phi i32 [ %i.cs, %get_byte.exit.i ], [ %i.cd, %bb.m ]
  %i.dg = lshr i32 %.0247564, %i.bl
  %i.dh = and i32 %.0269547, %i.f
  %i.di = shl i32 %i.dh, %i.bj
  %i.dj = add i32 %i.dg, %i.di
  %i.dk = mul i32 %i.dj, 768                      ; 2 uses
  %i.dl = icmp sgt i32 %.0251561, 3
  br i1 %i.dl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %getbit_from_table.exit
  %i.dm = icmp samesign ugt i32 %.0251561, 9
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = add nsw i32 %.0251561, -6
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.do = add nsw i32 %.0251561, -3
  br label %bb.x

bb.x:                                             ; preds = %getbit_from_table.exit, %bb.v, %bb.w
  %.1252 = phi i32 [ %i.dn, %bb.v ], [ %i.do, %bb.w ], [ 0, %getbit_from_table.exit ]
  %.not313 = icmp eq i32 %.0273546, 0
  br i1 %.not313, label %.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not325, label %.thread490, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = sub i32 %.0269547, %.0266548            ; 2 uses
  %.not316.not = icmp ult i32 %i.dp, %8
  br i1 %.not316.not, label %.thread, label %.thread490

.thread:                                          ; preds = %bb.z
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 %i.dq
  %i.ds = and i32 %.0279541, -256
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 2 uses
  %i.dw = add i32 %i.dk, 1846
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dx
  %i.dz = call i32 @get_100_bits_from_tablesize(ptr noundef nonnull %i.dy, ptr noundef nonnull %9, i32 noundef %i.dv)
  br label %bb.am

.split.i:                                         ; preds = %bb.x
  %i.ea = add i32 %i.dk, 1846
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eb
  %.promoted539 = load ptr, ptr %9, align 8
  %i.ed = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %getbit_from_table.exit.i, %.split.i
  %i.ee = phi ptr [ %.promoted539, %.split.i ], [ %i.fo, %getbit_from_table.exit.i ] ; 11 uses
  %i.ef = phi i32 [ %.promoted538, %.split.i ], [ %i.fp, %getbit_from_table.exit.i ] ; 5 uses
  %i.eg = phi i32 [ %.promoted537, %.split.i ], [ %i.fq, %getbit_from_table.exit.i ] ; 3 uses
  %.05.i = phi i32 [ 1, %.split.i ], [ %i.fr, %getbit_from_table.exit.i ] ; 3 uses
  %i.eh = shl nuw nsw i32 %.05.i, 1
  %i.ei = zext nneg i32 %.05.i to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ei ; 5 uses
  %.not49.i.i = icmp uge ptr %i.ej, %i.bw
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.not50.i.i = icmp ule ptr %i.ek, %i.by
  %or.cond55.i.i = select i1 %.not49.i.i, i1 %.not50.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.el = load i16, ptr %i.ej, align 2, !tbaa !28 ; 4 uses
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = lshr i32 %i.eg, 11
  %i.eo = mul i32 %i.en, %i.em                    ; 7 uses
  %i.ep = icmp ult i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.eo, ptr %i.v, align 8, !tbaa !37
  %i.eq = sub nsw i32 2048, %i.em
  %i.er = lshr i32 %i.eq, 5
  %i.es = trunc i32 %i.er to i16
  %i.et = add i16 %i.el, %i.es
  store i16 %i.et, ptr %i.ej, align 2, !tbaa !28
  %i.eu = icmp ult i32 %i.eo, 16777216
  br i1 %i.eu, label %bb.ae, label %getbit_from_table.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ev = shl i32 %i.ef, 8
  %.not.i.i.i = icmp ult ptr %i.ee, %i.ed
  br i1 %.not.i.i.i, label %bb.ag, label %bb.af
end_hunk_0
begin_hunk_1_@very_real_unpack:bb.a
  br i1 %or.cond55.i.i444.2, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %getbit_from_table.exit.i445.1
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445.2

bb.eq:                                            ; preds = %getbit_from_table.exit.i445.1
  %i.vx = load i16, ptr %i.vv, align 2, !tbaa !28 ; 4 uses
  %i.vy = zext i16 %i.vx to i32                   ; 2 uses
  %i.vz = lshr i32 %i.vq, 11
  %i.wa = mul i32 %i.vz, %i.vy                    ; 7 uses
  %i.wb = icmp ult i32 %i.vp, %i.wa
  br i1 %i.wb, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wc = sub i32 %i.vq, %i.wa                    ; 4 uses
  store i32 %i.wc, ptr %i.v, align 8, !tbaa !37
  %i.wd = sub nuw i32 %i.vp, %i.wa                ; 3 uses
  store i32 %i.wd, ptr %i.u, align 4, !tbaa !41
  %i.we = lshr i16 %i.vx, 5
  %i.wf = sub i16 %i.vx, %i.we
  store i16 %i.wf, ptr %i.vv, align 2, !tbaa !28
  %i.wg = icmp ult i32 %i.wc, 16777216
  br i1 %i.wg, label %bb.es, label %getbit_from_table.exit.i445.2

bb.es:                                            ; preds = %bb.er
  %i.wh = shl i32 %i.wd, 8
  %.not.i51.i.i449.2 = icmp ult ptr %i.vo, %i.se
  br i1 %.not.i51.i.i449.2, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450.2

bb.eu:                                            ; preds = %bb.es
  %i.wi = load i8, ptr %i.vo, align 1, !tbaa !8
  %i.wj = zext i8 %i.wi to i32
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vo, i64 1 ; 2 uses
  store ptr %i.wk, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450.2

get_byte.exit53.i.i450.2:                         ; preds = %bb.eu, %bb.et
  %i.wl = phi ptr [ %i.vo, %bb.et ], [ %i.wk, %bb.eu ]
  %.0.i52.i.i451.2 = phi i32 [ 255, %bb.et ], [ %i.wj, %bb.eu ]
  %i.wm = or disjoint i32 %.0.i52.i.i451.2, %i.wh ; 2 uses
  store i32 %i.wm, ptr %i.u, align 4, !tbaa !41
  %i.wn = shl nuw i32 %i.wc, 8                    ; 2 uses
  store i32 %i.wn, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.2

bb.ev:                                            ; preds = %bb.eq
  store i32 %i.wa, ptr %i.v, align 8, !tbaa !37
  %i.wo = sub nsw i32 2048, %i.vy
  %i.wp = lshr i32 %i.wo, 5
  %i.wq = trunc i32 %i.wp to i16
  %i.wr = add i16 %i.vx, %i.wq
  store i16 %i.wr, ptr %i.vv, align 2, !tbaa !28
  %i.ws = icmp ult i32 %i.wa, 16777216
  br i1 %i.ws, label %bb.ew, label %getbit_from_table.exit.i445.2

bb.ew:                                            ; preds = %bb.ev
  %i.wt = shl i32 %i.vp, 8
  %.not.i.i.i452.2 = icmp ult ptr %i.vo, %i.se
  br i1 %.not.i.i.i452.2, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453.2

bb.ey:                                            ; preds = %bb.ew
  %i.wu = load i8, ptr %i.vo, align 1, !tbaa !8
  %i.wv = zext i8 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vo, i64 1 ; 2 uses
  store ptr %i.ww, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453.2

get_byte.exit.i.i453.2:                           ; preds = %bb.ey, %bb.ex
  %i.wx = phi ptr [ %i.vo, %bb.ex ], [ %i.ww, %bb.ey ]
  %.0.i.i.i454.2 = phi i32 [ 255, %bb.ex ], [ %i.wv, %bb.ey ]
  %i.wy = or disjoint i32 %.0.i.i.i454.2, %i.wt   ; 2 uses
  store i32 %i.wy, ptr %i.u, align 4, !tbaa !41
  %i.wz = shl nuw i32 %i.wa, 8                    ; 2 uses
  store i32 %i.wz, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.2

getbit_from_table.exit.i445.2:                    ; preds = %get_byte.exit.i.i453.2, %bb.ev, %get_byte.exit53.i.i450.2, %bb.er, %bb.ep
  %i.xa = phi ptr [ %i.vo, %bb.ep ], [ %i.vo, %bb.ev ], [ %i.wx, %get_byte.exit.i.i453.2 ], [ %i.wl, %get_byte.exit53.i.i450.2 ], [ %i.vo, %bb.er ] ; 6 uses
  %i.xb = phi i32 [ %i.vp, %bb.ep ], [ %i.vp, %bb.ev ], [ %i.wy, %get_byte.exit.i.i453.2 ], [ %i.wm, %get_byte.exit53.i.i450.2 ], [ %i.wd, %bb.er ] ; 3 uses
  %i.xc = phi i32 [ %i.vq, %bb.ep ], [ %i.wa, %bb.ev ], [ %i.wz, %get_byte.exit.i.i453.2 ], [ %i.wn, %get_byte.exit53.i.i450.2 ], [ %i.wc, %bb.er ] ; 2 uses
  %.0.i.i446.2 = phi i32 [ 255, %bb.ep ], [ 0, %bb.ev ], [ 0, %get_byte.exit.i.i453.2 ], [ 1, %get_byte.exit53.i.i450.2 ], [ 1, %bb.er ] ; 2 uses
  %i.xd = shl nuw nsw i32 %i.vs, 1
  %i.xe = add nuw nsw i32 %.0.i.i446.2, %i.xd
  %i.xf = shl nuw nsw i32 %.0.i.i446.2, 2
  %i.xg = or i32 %i.vt, %i.xf
  %i.xh = zext nneg i32 %i.xe to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.xh ; 5 uses
  %.not49.i.i442.3 = icmp uge ptr %i.xi, %i.sz
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %.not50.i.i443.3 = icmp ule ptr %i.xj, %i.ta
  %or.cond55.i.i444.3 = select i1 %.not49.i.i442.3, i1 %.not50.i.i443.3, i1 false
  br i1 %or.cond55.i.i444.3, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %getbit_from_table.exit.i445.2
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445.3

bb.fa:                                            ; preds = %getbit_from_table.exit.i445.2
  %i.xk = load i16, ptr %i.xi, align 2, !tbaa !28 ; 4 uses
  %i.xl = zext i16 %i.xk to i32                   ; 2 uses
  %i.xm = lshr i32 %i.xc, 11
  %i.xn = mul i32 %i.xm, %i.xl                    ; 6 uses
  %i.xo = icmp ult i32 %i.xb, %i.xn
  br i1 %i.xo, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xp = sub i32 %i.xc, %i.xn                    ; 3 uses
  store i32 %i.xp, ptr %i.v, align 8, !tbaa !37
  %i.xq = sub nuw i32 %i.xb, %i.xn                ; 2 uses
  store i32 %i.xq, ptr %i.u, align 4, !tbaa !41
  %i.xr = lshr i16 %i.xk, 5
  %i.xs = sub i16 %i.xk, %i.xr
  store i16 %i.xs, ptr %i.xi, align 2, !tbaa !28
  %i.xt = icmp ult i32 %i.xp, 16777216
  br i1 %i.xt, label %bb.fc, label %getbit_from_table.exit.i445.3

bb.fc:                                            ; preds = %bb.fb
  %i.xu = shl i32 %i.xq, 8
  %.not.i51.i.i449.3 = icmp ult ptr %i.xa, %i.se
  br i1 %.not.i51.i.i449.3, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450.3

bb.fe:                                            ; preds = %bb.fc
  %i.xv = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.xw = zext i8 %i.xv to i32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store ptr %i.xx, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450.3

get_byte.exit53.i.i450.3:                         ; preds = %bb.fe, %bb.fd
  %.0.i52.i.i451.3 = phi i32 [ 255, %bb.fd ], [ %i.xw, %bb.fe ]
  %i.xy = or disjoint i32 %.0.i52.i.i451.3, %i.xu
  store i32 %i.xy, ptr %i.u, align 4, !tbaa !41
  %i.xz = shl nuw i32 %i.xp, 8
  store i32 %i.xz, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.3

bb.ff:                                            ; preds = %bb.fa
  store i32 %i.xn, ptr %i.v, align 8, !tbaa !37
  %i.ya = sub nsw i32 2048, %i.xl
  %i.yb = lshr i32 %i.ya, 5
  %i.yc = trunc i32 %i.yb to i16
  %i.yd = add i16 %i.xk, %i.yc
  store i16 %i.yd, ptr %i.xi, align 2, !tbaa !28
  %i.ye = icmp ult i32 %i.xn, 16777216
  br i1 %i.ye, label %bb.fg, label %getbit_from_table.exit.i445.3

bb.fg:                                            ; preds = %bb.ff
  %i.yf = shl i32 %i.xb, 8
  %.not.i.i.i452.3 = icmp ult ptr %i.xa, %i.se
  br i1 %.not.i.i.i452.3, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453.3

bb.fi:                                            ; preds = %bb.fg
  %i.yg = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.yh = zext i8 %i.yg to i32
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store ptr %i.yi, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453.3

get_byte.exit.i.i453.3:                           ; preds = %bb.fi, %bb.fh
  %.0.i.i.i454.3 = phi i32 [ 255, %bb.fh ], [ %i.yh, %bb.fi ]
  %i.yj = or disjoint i32 %.0.i.i.i454.3, %i.yf
  store i32 %i.yj, ptr %i.u, align 4, !tbaa !41
  %i.yk = shl nuw i32 %i.xn, 8
  store i32 %i.yk, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.3

getbit_from_table.exit.i445.3:                    ; preds = %get_byte.exit.i.i453.3, %bb.ff, %get_byte.exit53.i.i450.3, %bb.fb, %bb.ez
  %.0.i.i446.3 = phi i32 [ 2040, %bb.ez ], [ 0, %bb.ff ], [ 0, %get_byte.exit.i.i453.3 ], [ 8, %get_byte.exit53.i.i450.3 ], [ 8, %bb.fb ]
  %i.yl = or i32 %i.xg, %.0.i.i446.3
  %i.ym = or i32 %i.yl, %.0.i.i446
  br label %get_bb.exit460

get_bb.exit460:                                   ; preds = %getbit_from_table.exit.i445.3, %.preheader.split.us.i455
  %.0.i448 = phi i32 [ 2047, %.preheader.split.us.i455 ], [ %i.ym, %getbit_from_table.exit.i445.3 ]
  %i.yn = add i32 %i.sx, %.0.i448
  br label %bb.fj

bb.fj:                                            ; preds = %get_n_bits_from_table.exit, %get_bb.exit, %get_bb.exit460
  %.1240 = phi i32 [ %i.yn, %get_bb.exit460 ], [ %i.sc, %get_bb.exit ], [ %i.pm, %get_n_bits_from_table.exit ]
  %i.yo = add i32 %.1240, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.bw, %getbit_from_table.exit391, %bb.fj
  %.1267 = phi i32 [ %.1242, %getbit_from_table.exit391 ], [ %.0266548, %bb.bw ], [ %i.yo, %bb.fj ] ; 7 uses
  %.1264 = phi i32 [ %.0266548, %getbit_from_table.exit391 ], [ %.0263552, %bb.bw ], [ %.0266548, %bb.fj ]
  %.2261 = phi i32 [ %.1260, %getbit_from_table.exit391 ], [ %.0259555, %bb.bw ], [ %.0263552, %bb.fj ]
  %.3258 = phi i32 [ %.2257, %getbit_from_table.exit391 ], [ %.0255558, %bb.bw ], [ %.0259555, %bb.fj ]
  %.2253 = phi i32 [ %i.nj, %getbit_from_table.exit391 ], [ %i.ko, %bb.bw ], [ %i.nl, %bb.fj ]
  %.0243 = phi i32 [ %i.nh, %getbit_from_table.exit391 ], [ %i.km, %bb.bw ], [ %i.nm, %bb.fj ] ; 2 uses
  %.not331 = icmp eq i32 %.1267, 0
  br i1 %.not331, label %.thread490, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.yp = icmp ugt i32 %.1267, %.0269547
  br i1 %i.yp, label %.thread490, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yq = add i32 %.0243, 2                       ; 6 uses
  %i.yr = add i32 %.0243, 1                       ; 3 uses
  %i.ys = icmp uge i32 %i.yr, %8
  %or.cond = select i1 %.not325, i1 true, i1 %i.ys
  %.pre = zext i32 %.0269547 to i64               ; 3 uses
  br i1 %or.cond, label %split, label %10

10:                                               ; preds = %bb.fm
  %11 = zext i32 %i.yq to i64                     ; 2 uses
  %12 = add nuw nsw i64 %11, %.pre
  %.not334 = icmp samesign ugt i64 %12, %i.bm
  br i1 %.not334, label %split, label %13

13:                                               ; preds = %10
  %14 = sub i32 %.0269547, %.1267                 ; 2 uses
  %15 = zext i32 %14 to i64                       ; 2 uses
  %16 = add nuw nsw i64 %11, %15
  %.not336 = icmp samesign ugt i64 %16, %i.bm
  br i1 %.not336, label %split, label %iter.check813

iter.check813:                                    ; preds = %13
  %i.yt = add i32 %.0269547, 1
  %umax796 = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.yt)
  %i.yu = xor i32 %.0269547, -1
  %i.yv = add i32 %umax796, %i.yu
  %umin797 = tail call i32 @llvm.umin.i32(i32 %i.yv, i32 %i.yr)
  %i.yw = add i32 %umin797, 1                     ; 7 uses
  %min.iters.check = icmp ult i32 %i.yw, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check813
  %i.yx = add i32 %.0269547, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.yx)
  %i.yy = xor i32 %.0269547, -1
  %i.yz = add i32 %umax, %i.yy
  %umin = tail call i32 @llvm.umin.i32(i32 %i.yz, i32 %i.yr) ; 2 uses
  %i.za = xor i32 %.0269547, -1
  %i.zb = icmp ugt i32 %umin, %i.za
  %i.zc = xor i32 %14, -1
  %17 = icmp ugt i32 %umin, %i.zc
  %18 = or i1 %i.zb, %17
  %19 = sub nsw i64 %15, %.pre
  %diff.check = icmp ugt i64 %19, -32
  %or.cond836 = select i1 %18, i1 true, i1 %diff.check
  br i1 %or.cond836, label %.preheader.preheader, label %vector.main.loop.iter.check798

vector.main.loop.iter.check798:                   ; preds = %vector.scevcheck
  %min.iters.check799 = icmp ult i32 %i.yw, 32
  br i1 %min.iters.check799, label %vec.epilog.ph817, label %vector.ph800

vector.ph800:                                     ; preds = %vector.main.loop.iter.check798
  %n.mod.vf801 = and i32 %i.yw, 28
  %n.vec802 = and i32 %i.yw, -32                  ; 5 uses
  %i.zd = add i32 %.0269547, %n.vec802            ; 3 uses
  %i.ze = sub i32 %i.yq, %n.vec802
  %i.zf = add i32 %.0269547, 15
  br label %vector.body805

vector.body805:                                   ; preds = %vector.body805, %vector.ph800
  %index806 = phi i32 [ 0, %vector.ph800 ], [ %index.next808, %vector.body805 ] ; 2 uses
  %i.zg = phi i32 [ %i.zf, %vector.ph800 ], [ %i.zp, %vector.body805 ] ; 2 uses
  %i.zh = add i32 %.0269547, %index806            ; 2 uses
  %i.zi = sub i32 %i.zh, %.1267
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr %7, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %wide.load = load <16 x i8>, ptr %i.zk, align 1, !tbaa !8
  %wide.load807 = load <16 x i8>, ptr %i.zl, align 1, !tbaa !8 ; 2 uses
  %i.zm = zext i32 %i.zh to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %7, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  store <16 x i8> %wide.load, ptr %i.zn, align 1, !tbaa !8
  store <16 x i8> %wide.load807, ptr %i.zo, align 1, !tbaa !8
  %index.next808 = add nuw i32 %index806, 32      ; 2 uses
  %i.zp = add i32 %i.zg, 32
  %i.zq = icmp eq i32 %index.next808, %n.vec802
  br i1 %i.zq, label %middle.block809, label %vector.body805, !llvm.loop !48

middle.block809:                                  ; preds = %vector.body805
  %i.zr = extractelement <16 x i8> %wide.load807, i64 15
  %i.zs = add i32 %i.zg, 17
  %i.zt = icmp ult i32 %i.zs, %8
  %cmp.n810 = icmp eq i32 %i.yw, %n.vec802
  br i1 %cmp.n810, label %.loopexit, label %vec.epilog.iter.check815

vec.epilog.iter.check815:                         ; preds = %middle.block809
  %min.epilog.iters.check816 = icmp eq i32 %n.mod.vf801, 0
  br i1 %min.epilog.iters.check816, label %.preheader.preheader, label %vec.epilog.ph817, !prof !49

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check798, %vec.epilog.iter.check815
  %vec.epilog.resume.val811 = phi i32 [ %n.vec802, %vec.epilog.iter.check815 ], [ 0, %vector.main.loop.iter.check798 ]
  %bc.resume.val = phi i32 [ %i.zd, %vec.epilog.iter.check815 ], [ %.0269547, %vector.main.loop.iter.check798 ]
  %n.vec819 = and i32 %i.yw, -4                   ; 4 uses
  %i.zu = add i32 %.0269547, %n.vec819            ; 2 uses
  %i.zv = sub i32 %i.yq, %n.vec819
  %i.zw = add i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body825

vec.epilog.vector.body825:                        ; preds = %vec.epilog.vector.body825, %vec.epilog.ph817
  %index826 = phi i32 [ %vec.epilog.resume.val811, %vec.epilog.ph817 ], [ %index.next829, %vec.epilog.vector.body825 ] ; 2 uses
  %i.zx = phi i32 [ %i.zw, %vec.epilog.ph817 ], [ %i.aae, %vec.epilog.vector.body825 ] ; 2 uses
  %i.zy = add i32 %.0269547, %index826            ; 2 uses
  %i.zz = sub i32 %i.zy, %.1267
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw i8, ptr %7, i64 %i.aaa
  %wide.load828 = load <4 x i8>, ptr %i.aab, align 1, !tbaa !8 ; 2 uses
  %i.aac = zext i32 %i.zy to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %7, i64 %i.aac
  store <4 x i8> %wide.load828, ptr %i.aad, align 1, !tbaa !8
  %index.next829 = add nuw i32 %index826, 4       ; 2 uses
  %i.aae = add i32 %i.zx, 4
  %i.aaf = icmp eq i32 %index.next829, %n.vec819
  br i1 %i.aaf, label %vec.epilog.middle.block831, label %vec.epilog.vector.body825, !llvm.loop !50

vec.epilog.middle.block831:                       ; preds = %vec.epilog.vector.body825
  %i.aag = extractelement <4 x i8> %wide.load828, i64 3
  %i.aah = add i32 %i.zx, 1
  %i.aai = icmp ult i32 %i.aah, %8
  %cmp.n832 = icmp eq i32 %i.yw, %n.vec819
  br i1 %cmp.n832, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %iter.check813, %vec.epilog.iter.check815, %vec.epilog.middle.block831
  %.2271.ph = phi i32 [ %.0269547, %vector.scevcheck ], [ %.0269547, %iter.check813 ], [ %i.zd, %vec.epilog.iter.check815 ], [ %i.zu, %vec.epilog.middle.block831 ]
  %.1244.ph = phi i32 [ %i.yq, %vector.scevcheck ], [ %i.yq, %iter.check813 ], [ %i.ze, %vec.epilog.iter.check815 ], [ %i.zv, %vec.epilog.middle.block831 ]
  br label %.preheader

split:                                            ; preds = %13, %10, %bb.fm
  %i.aaj = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %8, ptr noundef %i.aaj, i32 noundef %i.yq) #8
  br label %.thread490

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.2271 = phi i32 [ %i.aaq, %.preheader ], [ %.2271.ph, %.preheader.preheader ] ; 3 uses
  %.1244 = phi i32 [ %i.aar, %.preheader ], [ %.1244.ph, %.preheader.preheader ]
  %i.aak = sub i32 %.2271, %.1267
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %7, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !8 ; 2 uses
  %i.aao = zext i32 %.2271 to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %7, i64 %i.aao
  store i8 %i.aan, ptr %i.aap, align 1, !tbaa !8
  %i.aaq = add i32 %.2271, 1                      ; 3 uses
  %i.aar = add i32 %.1244, -1                     ; 2 uses
  %i.aas = icmp ne i32 %i.aar, 0
  %i.aat = icmp ult i32 %i.aaq, %8                ; 2 uses
  %i.aau = and i1 %i.aat, %i.aas
  br i1 %i.aau, label %.preheader, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block831, %middle.block809
  %.lcssa783 = phi i8 [ %i.aag, %vec.epilog.middle.block831 ], [ %i.zr, %middle.block809 ], [ %i.aan, %.preheader ]
  %.lcssa782 = phi i32 [ %i.zu, %vec.epilog.middle.block831 ], [ %i.zd, %middle.block809 ], [ %i.aaq, %.preheader ]
  %.lcssa781 = phi i1 [ %i.aai, %vec.epilog.middle.block831 ], [ %i.zt, %middle.block809 ], [ %i.aat, %.preheader ]
  %i.aav = zext i8 %.lcssa783 to i32
  br i1 %.lcssa781, label %select.unfold, label %.thread490

select.unfold:                                    ; preds = %bb.an, %bb.bv, %.loopexit
  %.3282 = phi i32 [ %.0279541, %.loopexit ], [ %.0279541, %bb.bv ], [ %.1280466, %bb.an ]
  %.3276 = phi i32 [ 1, %.loopexit ], [ 1, %bb.bv ], [ 0, %bb.an ]
  %.3272 = phi i32 [ %.lcssa782, %.loopexit ], [ %i.kl, %bb.bv ], [ %i.fx, %bb.an ] ; 2 uses
  %.2268 = phi i32 [ %.1267, %.loopexit ], [ %.0266548, %bb.bv ], [ %.0266548, %bb.an ]
  %.2265 = phi i32 [ %.1264, %.loopexit ], [ %.0263552, %bb.bv ], [ %.0263552, %bb.an ]
  %.3262 = phi i32 [ %.2261, %.loopexit ], [ %.0259555, %bb.bv ], [ %.0259555, %bb.an ]
  %.4 = phi i32 [ %.3258, %.loopexit ], [ %.0255558, %bb.bv ], [ %.0255558, %bb.an ]
  %.3254 = phi i32 [ %.2253, %.loopexit ], [ %i.kd, %bb.bv ], [ %.1252, %bb.an ]
  %.3250 = phi i32 [ %i.aav, %.loopexit ], [ %i.ki, %bb.bv ], [ %.1248467, %bb.an ]
  %i.aaw = and i32 %.3272, %i.h
  %i.aax = load i32, ptr %i.t, align 8, !tbaa !33
  %.not311 = icmp eq i32 %i.aax, 0
  br i1 %.not311, label %bb.j, label %.thread490

.thread490:                                       ; preds = %select.unfold, %bb.fk, %.loopexit, %bb.fl, %bb.bu, %bb.bv, %bb.bt, %getbit_from_table.exit379, %bb.am, %bb.an, %bb.al, %bb.y, %bb.z, %get_byte.exit.3, %split, %get_byte.exit.4, %bb.a
  %.3 = phi i32 [ 1, %get_byte.exit.4 ], [ 2, %bb.a ], [ 1, %split ], [ 1, %get_byte.exit.3 ], [ 1, %bb.z ], [ 1, %select.unfold ], [ 0, %bb.fk ], [ 0, %.loopexit ], [ 1, %bb.fl ], [ 1, %bb.bu ], [ 0, %bb.bv ], [ 1, %bb.bt ], [ 1, %getbit_from_table.exit379 ], [ 1, %bb.am ], [ 0, %bb.an ], [ 1, %bb.al ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.3
}

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @get_byte(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 255, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @getbit_from_table(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not49 = icmp uge ptr %0, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %.not50 = icmp ule ptr %i.f, %i.g
  %or.cond55 = select i1 %.not49, i1 %.not50, i1 false
  br i1 %or.cond55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = load i16, ptr %0, align 2, !tbaa !28     ; 4 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = lshr i32 %i.l, 11
  %i.n = mul i32 %i.m, %i.j                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 3 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.n, ptr %i.k, align 8, !tbaa !37
  %i.r = sub nsw i32 2048, %i.j
  %i.s = lshr i32 %i.r, 5
  %i.t = trunc i32 %i.s to i16
  %i.u = add i16 %i.i, %i.t
  store i16 %i.u, ptr %0, align 2, !tbaa !28
  %i.v = icmp ult i32 %i.n, 16777216
  br i1 %i.v, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = shl i32 %i.p, 8
  %i.x = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.x, %i.z
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !33
  br label %get_byte.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ad, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ 255, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = or disjoint i32 %.0.i, %i.w
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !41
  %i.af = shl nuw i32 %i.n, 8
  store i32 %i.af, ptr %i.k, align 8, !tbaa !37
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ag = sub i32 %i.l, %i.n                      ; 3 uses
  store i32 %i.ag, ptr %i.k, align 8, !tbaa !37
  %i.ah = sub nuw i32 %i.p, %i.n                  ; 2 uses
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !41
  %i.ai = lshr i16 %i.i, 5
  %i.aj = sub i16 %i.i, %i.ai
  store i16 %i.aj, ptr %0, align 2, !tbaa !28
  %i.ak = icmp ult i32 %i.ag, 16777216
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = shl i32 %i.ah, 8
  %i.am = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  %.not.i51 = icmp ult ptr %i.am, %i.ao
  br i1 %.not.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !33
  br label %get_byte.exit53

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.as, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53

get_byte.exit53:                                  ; preds = %bb.k, %bb.l
  %.0.i52 = phi i32 [ 255, %bb.k ], [ %i.ar, %bb.l ]
  %i.at = or disjoint i32 %.0.i52, %i.al
  store i32 %i.at, ptr %i.o, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.ag, 8
  store i32 %i.au, ptr %i.k, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %get_byte.exit53, %bb.e, %get_byte.exit, %bb.c
  %.0 = phi i32 [ 255, %bb.c ], [ 0, %bb.e ], [ 0, %get_byte.exit ], [ 1, %get_byte.exit53 ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @get_100_bits_from_tablesize(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
end_hunk_1
