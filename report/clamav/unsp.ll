inline.NumInlined: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unspack:bb.a
  store i32 %3, ptr %7, align 4, !tbaa !13
  %i.ad = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %6) #7
  %.not56 = icmp eq i32 %i.ad, 0
  %i.ae = zext i1 %.not56 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.loopexit, %bb.a, %bb.h, %bb.f, %bb.d
  %.047 = phi i32 [ 1, %bb.d ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %.loopexit ], [ %i.ae, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @very_real_unpack(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.UNSP, align 8               ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.a = add i32 %3, %2
  %i.b = and i32 %i.a, 255
  %i.c = shl i32 768, %i.b
  %i.d = add nuw nsw i32 %i.c, 1846
  %i.e = and i32 %3, 255
  %notmask = shl nsw i32 -1, %i.e
  %i.f = xor i32 %notmask, -1
  %i.g = and i32 %4, 255
  %notmask343 = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask343, -1
  %i.i = zext i32 %1 to i64
  %i.j = zext i32 %i.d to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = icmp samesign ugt i64 %i.k, %i.i
  br i1 %i.l, label %.thread551, label %vector.ph

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
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !14
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !16

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1024, ptr %i.s, align 2, !tbaa !14
  store i16 1024, ptr %0, align 2, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 47 uses
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 51 uses
  store ptr %5, ptr %9, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 61 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !24
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 15 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  store i32 %1, ptr %i.ab, align 4, !tbaa !27
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !23
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !28
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !28
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !28
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread551

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !23
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !28
  br i1 %i.ay, label %.lr.ph, label %.thread551

.lr.ph:                                           ; preds = %get_byte.exit.4
  %i.bg = and i32 %2, 255
  %i.bh = sub i32 8, %2
  %i.bi = and i32 %i.bh, 255
  %.not348 = icmp eq i32 %8, 0                    ; 4 uses
  %i.bj = zext i32 %8 to i64
  %i.bk = ptrtoint ptr %7 to i64                  ; 6 uses
  %i.bl = add i64 %i.bj, %i.bk                    ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1606 ; 5 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = add i64 %i.bq, 2                        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bs = phi i32 [ 0, %.lr.ph ], [ %i.acc, %select.unfold ] ; 5 uses
  %.0274638 = phi i32 [ 0, %.lr.ph ], [ %.3, %select.unfold ]
  %.0276635 = phi i32 [ 0, %.lr.ph ], [ %.3279, %select.unfold ] ; 13 uses
  %.0280628 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0284621 = phi i32 [ 1, %.lr.ph ], [ %.3287, %select.unfold ] ; 11 uses
  %.0288614 = phi i32 [ 1, %.lr.ph ], [ %.2290, %select.unfold ] ; 11 uses
  %.0291607 = phi i32 [ 1, %.lr.ph ], [ %.2293, %select.unfold ] ; 7 uses
  %.0294606 = phi i32 [ 0, %.lr.ph ], [ %.3297, %select.unfold ] ; 17 uses
  %.0298605 = phi i32 [ 0, %.lr.ph ], [ %.3301, %select.unfold ]
  %.0308598 = phi i32 [ %6, %.lr.ph ], [ %.3311, %select.unfold ] ; 4 uses
  %i.bt = shl i32 %.0276635, 4                    ; 2 uses
  %i.bu = add i32 %i.bt, %i.bs
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 5 uses
  %switch.i = icmp ult i32 %i.bx, 2
  br i1 %switch.i, label %bb.cm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 12 uses
  %.not52.i = icmp ult ptr %i.bw, %i.bz
  br i1 %.not52.i, label %.thread527, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cb = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cc = add i64 %i.cb, 2                        ; 2 uses
  %i.cd = add i64 %i.ca, %i.by                    ; 4 uses
  %.not53.i = icmp ule i64 %i.cc, %i.cd
  %i.ce = icmp ugt i64 %i.cc, %i.ca
  %or.cond.i = and i1 %i.ce, %.not53.i
  %i.cf = icmp ugt i64 %i.cd, %i.cb
  %or.cond54.i = and i1 %i.cf, %or.cond.i
  br i1 %or.cond54.i, label %bb.m, label %.thread527

bb.m:                                             ; preds = %bb.l
  %i.cg = load i16, ptr %i.bw, align 2, !tbaa !14 ; 4 uses
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.cj = lshr i32 %i.ci, 11
  %i.ck = mul i32 %i.cj, %i.ch                    ; 7 uses
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !28  ; 4 uses
  %i.cm = icmp ult i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  store i32 %i.ck, ptr %i.v, align 8, !tbaa !24
  %i.cn = sub nsw i32 2048, %i.ch
  %i.co = lshr i32 %i.cn, 5
  %i.cp = trunc i32 %i.co to i16
  %i.cq = add i16 %i.cg, %i.cp
  store i16 %i.cq, ptr %i.bw, align 2, !tbaa !14
  %i.cr = icmp ult i32 %i.ck, 16777216
  br i1 %i.cr, label %bb.o, label %getbit_from_table.exit

bb.o:                                             ; preds = %bb.n
  %i.cs = shl i32 %i.cl, 8
  %i.ct = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.ct, %i.cu
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cx, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ 255, %bb.p ], [ %i.cw, %bb.q ]
  %i.cy = or disjoint i32 %.0.i.i, %i.cs          ; 2 uses
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !28
  %i.cz = shl nuw i32 %i.ck, 8                    ; 2 uses
  store i32 %i.cz, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit

bb.r:                                             ; preds = %bb.m
  %i.da = sub i32 %i.ci, %i.ck                    ; 3 uses
  store i32 %i.da, ptr %i.v, align 8, !tbaa !24
  %i.db = sub nuw i32 %i.cl, %i.ck                ; 2 uses
  store i32 %i.db, ptr %i.u, align 4, !tbaa !28
  %i.dc = lshr i16 %i.cg, 5
  %i.dd = sub i16 %i.cg, %i.dc
  store i16 %i.dd, ptr %i.bw, align 2, !tbaa !14
  %i.de = icmp ult i32 %i.da, 16777216
  br i1 %i.de, label %bb.s, label %.thread525

bb.s:                                             ; preds = %bb.r
  %i.df = shl i32 %i.db, 8
  %i.dg = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i = icmp ult ptr %i.dg, %i.dh
  br i1 %.not.i55.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i

bb.u:                                             ; preds = %bb.s
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dk, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i

get_byte.exit57.i:                                ; preds = %bb.u, %bb.t
  %.0.i56.i = phi i32 [ 255, %bb.t ], [ %i.dj, %bb.u ]
  %i.dl = or disjoint i32 %.0.i56.i, %i.df
  store i32 %i.dl, ptr %i.u, align 4, !tbaa !28
  %i.dm = shl nuw i32 %i.da, 8
  store i32 %i.dm, ptr %i.v, align 8, !tbaa !24
  br label %.thread525

getbit_from_table.exit:                           ; preds = %get_byte.exit.i, %bb.n
  %.promoted582 = phi i32 [ %i.cy, %get_byte.exit.i ], [ %i.cl, %bb.n ]
  %.promoted581 = phi i32 [ %i.cz, %get_byte.exit.i ], [ %i.ck, %bb.n ]
  %i.dn = lshr i32 %.0274638, %i.bi
  %i.do = and i32 %.0294606, %i.f
  %i.dp = shl i32 %i.do, %i.bg
  %i.dq = add i32 %i.dn, %i.dp
  %i.dr = mul i32 %i.dq, 768                      ; 2 uses
  %i.ds = icmp sgt i32 %.0276635, 3
  br i1 %i.ds, label %bb.v, label %bb.y

bb.v:                                             ; preds = %getbit_from_table.exit
  %i.dt = icmp samesign ugt i32 %.0276635, 9
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.du = add nsw i32 %.0276635, -6
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dv = add nsw i32 %.0276635, -3
  br label %bb.y

bb.y:                                             ; preds = %getbit_from_table.exit, %bb.w, %bb.x
  %.1277 = phi i32 [ %i.du, %bb.w ], [ %i.dv, %bb.x ], [ 0, %getbit_from_table.exit ]
  %.not347 = icmp eq i32 %.0298605, 0
  br i1 %.not347, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not348, label %.thread551, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = sub i32 %.0294606, %.0291607
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 %i.dx ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = add i64 %i.dz, 1                        ; 2 uses
  %.not350 = icmp ule i64 %i.ea, %i.bl
  %i.eb = icmp ugt i64 %i.ea, %i.bk
  %or.cond = and i1 %.not350, %i.eb
  %i.ec = icmp ugt i64 %i.bl, %i.dz
  %or.cond372 = and i1 %i.ec, %or.cond
  br i1 %or.cond372, label %.thread, label %.thread551

.thread:                                          ; preds = %bb.aa
  %i.ed = and i32 %.0308598, -256
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef            ; 2 uses
  %i.eh = add i32 %i.dr, 1846
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ei
  %i.ek = call i32 @get_100_bits_from_tablesize(ptr noundef nonnull %i.ej, ptr noundef nonnull %9, i32 noundef %i.eg)
  br label %bb.ap

bb.ab:                                            ; preds = %bb.y
  %i.el = add i32 %i.dr, 1846
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.em
  %.promoted583 = load ptr, ptr %9, align 8
  %i.eo = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %getbit_from_table.exit478, %bb.ab
  %i.ep = phi ptr [ %.promoted583, %bb.ab ], [ %i.gc, %getbit_from_table.exit478 ] ; 11 uses
  %i.eq = phi i32 [ %.promoted582, %bb.ab ], [ %i.gd, %getbit_from_table.exit478 ] ; 5 uses
  %i.er = phi i32 [ %.promoted581, %bb.ab ], [ %i.ge, %getbit_from_table.exit478 ] ; 3 uses
  %.05.i = phi i32 [ 1, %bb.ab ], [ %i.gf, %getbit_from_table.exit478 ] ; 3 uses
  %i.es = shl nuw nsw i32 %.05.i, 1
  %i.et = zext nneg i32 %.05.i to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.et ; 5 uses
  %.not52.i467 = icmp ult ptr %i.eu, %i.bz
  br i1 %.not52.i467, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = add i64 %i.ev, 2                        ; 2 uses
  %.not53.i468 = icmp ule i64 %i.ew, %i.cd
  %i.ex = icmp ugt i64 %i.ew, %i.ca
  %or.cond.i469 = and i1 %i.ex, %.not53.i468
  %i.ey = icmp ugt i64 %i.cd, %i.ev
  %or.cond54.i470 = and i1 %i.ey, %or.cond.i469
  br i1 %or.cond54.i470, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit478

bb.af:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@very_real_unpack:bb.a
  br i1 %.not.i55.i511.2, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512.2

bb.fc:                                            ; preds = %bb.fa
  %i.xz = load i8, ptr %i.xc, align 1, !tbaa !8
  %i.ya = zext i8 %i.xz to i32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xc, i64 1 ; 2 uses
  store ptr %i.yb, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512.2

get_byte.exit57.i512.2:                           ; preds = %bb.fc, %bb.fb
  %i.yc = phi ptr [ %i.xc, %bb.fb ], [ %i.yb, %bb.fc ]
  %.0.i56.i513.2 = phi i32 [ 255, %bb.fb ], [ %i.ya, %bb.fc ]
  %i.yd = or disjoint i32 %.0.i56.i513.2, %i.xy   ; 2 uses
  store i32 %i.yd, ptr %i.u, align 4, !tbaa !28
  %i.ye = shl nuw i32 %i.xt, 8                    ; 2 uses
  store i32 %i.ye, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.2

bb.fd:                                            ; preds = %bb.ey
  store i32 %i.xr, ptr %i.v, align 8, !tbaa !24
  %i.yf = sub nsw i32 2048, %i.xp
  %i.yg = lshr i32 %i.yf, 5
  %i.yh = trunc i32 %i.yg to i16
  %i.yi = add i16 %i.xo, %i.yh
  store i16 %i.yi, ptr %i.xj, align 2, !tbaa !14
  %i.yj = icmp ult i32 %i.xr, 16777216
  br i1 %i.yj, label %bb.fe, label %getbit_from_table.exit517.2

bb.fe:                                            ; preds = %bb.fd
  %i.yk = shl i32 %i.xd, 8
  %.not.i.i514.2 = icmp ult ptr %i.xc, %i.pq
  br i1 %.not.i.i514.2, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515.2

bb.fg:                                            ; preds = %bb.fe
  %i.yl = load i8, ptr %i.xc, align 1, !tbaa !8
  %i.ym = zext i8 %i.yl to i32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xc, i64 1 ; 2 uses
  store ptr %i.yn, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515.2

get_byte.exit.i515.2:                             ; preds = %bb.fg, %bb.ff
  %i.yo = phi ptr [ %i.xc, %bb.ff ], [ %i.yn, %bb.fg ]
  %.0.i.i516.2 = phi i32 [ 255, %bb.ff ], [ %i.ym, %bb.fg ]
  %i.yp = or disjoint i32 %.0.i.i516.2, %i.yk     ; 2 uses
  store i32 %i.yp, ptr %i.u, align 4, !tbaa !28
  %i.yq = shl nuw i32 %i.xr, 8                    ; 2 uses
  store i32 %i.yq, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.2

bb.fh:                                            ; preds = %bb.ex, %getbit_from_table.exit517.1
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517.2

getbit_from_table.exit517.2:                      ; preds = %bb.fh, %get_byte.exit.i515.2, %bb.fd, %get_byte.exit57.i512.2, %bb.ez
  %i.yr = phi ptr [ %i.xc, %bb.fh ], [ %i.xc, %bb.fd ], [ %i.yo, %get_byte.exit.i515.2 ], [ %i.yc, %get_byte.exit57.i512.2 ], [ %i.xc, %bb.ez ] ; 6 uses
  %i.ys = phi i32 [ %i.xd, %bb.fh ], [ %i.xd, %bb.fd ], [ %i.yp, %get_byte.exit.i515.2 ], [ %i.yd, %get_byte.exit57.i512.2 ], [ %i.xu, %bb.ez ] ; 3 uses
  %i.yt = phi i32 [ %i.xe, %bb.fh ], [ %i.xr, %bb.fd ], [ %i.yq, %get_byte.exit.i515.2 ], [ %i.ye, %get_byte.exit57.i512.2 ], [ %i.xt, %bb.ez ] ; 2 uses
  %.0.i510.2 = phi i32 [ 255, %bb.fh ], [ 0, %bb.fd ], [ 0, %get_byte.exit.i515.2 ], [ 1, %get_byte.exit57.i512.2 ], [ 1, %bb.ez ] ; 2 uses
  %i.yu = shl nuw nsw i32 %i.xg, 1
  %i.yv = add nuw nsw i32 %.0.i510.2, %i.yu
  %i.yw = shl nuw nsw i32 %.0.i510.2, 2
  %i.yx = or i32 %i.xh, %i.yw
  %i.yy = zext nneg i32 %i.yv to i64
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.yy ; 5 uses
  %.not52.i506.3 = icmp ult ptr %i.yz, %i.pn
  %or.cond663.3 = select i1 %switch.i479, i1 true, i1 %.not52.i506.3
  br i1 %or.cond663.3, label %bb.fs, label %bb.fi

bb.fi:                                            ; preds = %getbit_from_table.exit517.2
  %i.za = ptrtoint ptr %i.yz to i64               ; 2 uses
  %i.zb = add i64 %i.za, 2                        ; 2 uses
  %.not53.i507.3 = icmp ule i64 %i.zb, %i.pp
  %i.zc = icmp ugt i64 %i.zb, %i.po
  %or.cond.i508.3 = and i1 %i.zc, %.not53.i507.3
  %i.zd = icmp ugt i64 %i.pp, %i.za
  %or.cond54.i509.3 = and i1 %i.zd, %or.cond.i508.3
  br i1 %or.cond54.i509.3, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.ze = load i16, ptr %i.yz, align 2, !tbaa !14 ; 4 uses
  %i.zf = zext i16 %i.ze to i32                   ; 2 uses
  %i.zg = lshr i32 %i.yt, 11
  %i.zh = mul i32 %i.zg, %i.zf                    ; 6 uses
  %i.zi = icmp ult i32 %i.ys, %i.zh
  br i1 %i.zi, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zj = sub i32 %i.yt, %i.zh                    ; 3 uses
  store i32 %i.zj, ptr %i.v, align 8, !tbaa !24
  %i.zk = sub nuw i32 %i.ys, %i.zh                ; 2 uses
  store i32 %i.zk, ptr %i.u, align 4, !tbaa !28
  %i.zl = lshr i16 %i.ze, 5
  %i.zm = sub i16 %i.ze, %i.zl
  store i16 %i.zm, ptr %i.yz, align 2, !tbaa !14
  %i.zn = icmp ult i32 %i.zj, 16777216
  br i1 %i.zn, label %bb.fl, label %getbit_from_table.exit517.3

bb.fl:                                            ; preds = %bb.fk
  %i.zo = shl i32 %i.zk, 8
  %.not.i55.i511.3 = icmp ult ptr %i.yr, %i.pq
  br i1 %.not.i55.i511.3, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512.3

bb.fn:                                            ; preds = %bb.fl
  %i.zp = load i8, ptr %i.yr, align 1, !tbaa !8
  %i.zq = zext i8 %i.zp to i32
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store ptr %i.zr, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512.3

get_byte.exit57.i512.3:                           ; preds = %bb.fn, %bb.fm
  %.0.i56.i513.3 = phi i32 [ 255, %bb.fm ], [ %i.zq, %bb.fn ]
  %i.zs = or disjoint i32 %.0.i56.i513.3, %i.zo
  store i32 %i.zs, ptr %i.u, align 4, !tbaa !28
  %i.zt = shl nuw i32 %i.zj, 8
  store i32 %i.zt, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.3

bb.fo:                                            ; preds = %bb.fj
  store i32 %i.zh, ptr %i.v, align 8, !tbaa !24
  %i.zu = sub nsw i32 2048, %i.zf
  %i.zv = lshr i32 %i.zu, 5
  %i.zw = trunc i32 %i.zv to i16
  %i.zx = add i16 %i.ze, %i.zw
  store i16 %i.zx, ptr %i.yz, align 2, !tbaa !14
  %i.zy = icmp ult i32 %i.zh, 16777216
  br i1 %i.zy, label %bb.fp, label %getbit_from_table.exit517.3

bb.fp:                                            ; preds = %bb.fo
  %i.zz = shl i32 %i.ys, 8
  %.not.i.i514.3 = icmp ult ptr %i.yr, %i.pq
  br i1 %.not.i.i514.3, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515.3

bb.fr:                                            ; preds = %bb.fp
  %i.aaa = load i8, ptr %i.yr, align 1, !tbaa !8
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store ptr %i.aac, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515.3

get_byte.exit.i515.3:                             ; preds = %bb.fr, %bb.fq
  %.0.i.i516.3 = phi i32 [ 255, %bb.fq ], [ %i.aab, %bb.fr ]
  %i.aad = or disjoint i32 %.0.i.i516.3, %i.zz
  store i32 %i.aad, ptr %i.u, align 4, !tbaa !28
  %i.aae = shl nuw i32 %i.zh, 8
  store i32 %i.aae, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.3

bb.fs:                                            ; preds = %bb.fi, %getbit_from_table.exit517.2
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517.3

getbit_from_table.exit517.3:                      ; preds = %bb.fs, %get_byte.exit.i515.3, %bb.fo, %get_byte.exit57.i512.3, %bb.fk
  %.0.i510.3 = phi i32 [ 2040, %bb.fs ], [ 0, %bb.fo ], [ 0, %get_byte.exit.i515.3 ], [ 8, %get_byte.exit57.i512.3 ], [ 8, %bb.fk ]
  %i.aaf = or i32 %i.yx, %.0.i510.3
  %i.aag = or i32 %i.aaf, %.0.i510
  %i.aah = shl i32 %.1.i, 4
  %i.aai = add i32 %i.aah, %i.tq
  %i.aaj = add i32 %i.aai, %i.aag
  br label %bb.ft

bb.ft:                                            ; preds = %get_n_bits_from_table.exit, %get_bb.exit, %getbit_from_table.exit517.3
  %.1 = phi i32 [ %i.aaj, %getbit_from_table.exit517.3 ], [ %i.tp, %get_bb.exit ], [ %i.rj, %get_n_bits_from_table.exit ]
  %i.aak = add i32 %.1, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ca, %getbit_from_table.exit438, %bb.ft
  %.1292 = phi i32 [ %.1269, %getbit_from_table.exit438 ], [ %.0291607, %bb.ca ], [ %i.aak, %bb.ft ] ; 7 uses
  %.1289 = phi i32 [ %.0291607, %getbit_from_table.exit438 ], [ %.0288614, %bb.ca ], [ %.0291607, %bb.ft ]
  %.2286 = phi i32 [ %.1285, %getbit_from_table.exit438 ], [ %.0284621, %bb.ca ], [ %.0288614, %bb.ft ]
  %.3283 = phi i32 [ %.2282, %getbit_from_table.exit438 ], [ %.0280628, %bb.ca ], [ %.0284621, %bb.ft ]
  %.2278 = phi i32 [ %i.pc, %getbit_from_table.exit438 ], [ %i.lx, %bb.ca ], [ %i.pe, %bb.ft ]
  %.0270 = phi i32 [ %i.pa, %getbit_from_table.exit438 ], [ %i.lv, %bb.ca ], [ %i.pf, %bb.ft ] ; 3 uses
  %.not365 = icmp eq i32 %.1292, 0
  br i1 %.not365, label %.thread551, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aal = icmp ugt i32 %.1292, %.0294606
  br i1 %i.aal, label %.thread551, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aam = add nuw nsw i32 %.0270, 2              ; 7 uses
  %i.aan = zext nneg i32 %i.aam to i64            ; 2 uses
  %.not366 = icmp ugt i32 %i.aam, %8
  %or.cond379 = select i1 %.not348, i1 true, i1 %.not366
  %.pre = zext i32 %.0294606 to i64               ; 11 uses
  br i1 %or.cond379, label %split, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aao = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  %i.aap = ptrtoint ptr %i.aao to i64             ; 2 uses
  %i.aaq = add i64 %i.aan, %i.aap                 ; 2 uses
  %.not368 = icmp ule i64 %i.aaq, %i.bl
  %i.aar = icmp ugt i64 %i.aaq, %i.bk
  %or.cond380 = and i1 %.not368, %i.aar
  %i.aas = icmp ugt i64 %i.bl, %i.aap
  %or.cond381 = and i1 %i.aas, %or.cond380
  br i1 %or.cond381, label %bb.fy, label %split

bb.fy:                                            ; preds = %bb.fx
  %i.aat = sub i32 %.0294606, %.1292              ; 2 uses
  %i.aau = zext i32 %i.aat to i64                 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 %i.aau
  %i.aaw = ptrtoint ptr %i.aav to i64             ; 2 uses
  %i.aax = add i64 %i.aan, %i.aaw                 ; 2 uses
  %.not370 = icmp ule i64 %i.aax, %i.bl
  %i.aay = icmp ugt i64 %i.aax, %i.bk
  %or.cond382 = and i1 %.not370, %i.aay
  %i.aaz = icmp ugt i64 %i.bl, %i.aaw
  %or.cond383 = and i1 %i.aaz, %or.cond382
  br i1 %or.cond383, label %iter.check904, label %split

iter.check904:                                    ; preds = %bb.fy
  %narrow = add nuw nsw i32 %.0270, 1
  %i.aba = add i32 %.0294606, 1
  %umax888 = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.aba)
  %i.abb = xor i32 %.0294606, -1
  %i.abc = add i32 %umax888, %i.abb
  %10 = tail call i32 @llvm.umin.i32(i32 %narrow, i32 %i.abc) ; 3 uses
  %narrow925 = add nuw nsw i32 %10, 1
  %11 = zext nneg i32 %narrow925 to i64           ; 5 uses
  %min.iters.check = icmp samesign ult i32 %10, 3
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check904
  %i.abd = add i32 %.0294606, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.abd)
  %12 = sub i32 %.0294606, %umax
  %13 = sub nuw nsw i32 -2, %.0270
  %umin = tail call i32 @llvm.umax.i32(i32 %12, i32 %13)
  %14 = icmp ult i32 %umin, %i.aat
  %i.abe = sub nsw i64 %i.aau, %.pre
  %diff.check = icmp ugt i64 %i.abe, -16
  %or.cond926 = select i1 %14, i1 true, i1 %diff.check
  br i1 %or.cond926, label %.preheader.preheader, label %vector.main.loop.iter.check890

vector.main.loop.iter.check890:                   ; preds = %vector.scevcheck
  %min.iters.check891 = icmp samesign ult i32 %10, 15
  br i1 %min.iters.check891, label %vec.epilog.ph908, label %vector.ph892

vector.ph892:                                     ; preds = %vector.main.loop.iter.check890
  %15 = and i64 %11, 12
  %n.vec893 = and i64 %11, 2147483632             ; 6 uses
  %16 = add nuw nsw i64 %n.vec893, %.pre          ; 2 uses
  %17 = trunc nuw nsw i64 %n.vec893 to i32
  %i.abf = sub nsw i32 %i.aam, %17
  %18 = add nuw nsw i64 %.pre, 15
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph892
  %index897 = phi i64 [ 0, %vector.ph892 ], [ %index.next898, %vector.body896 ] ; 2 uses
  %19 = phi i64 [ %18, %vector.ph892 ], [ %24, %vector.body896 ] ; 2 uses
  %20 = add nuw i64 %index897, %.pre              ; 2 uses
  %21 = trunc nuw i64 %20 to i32
  %22 = sub i32 %21, %.1292
  %23 = zext i32 %22 to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %7, i64 %23
  %wide.load898 = load <16 x i8>, ptr %i.abg, align 1, !tbaa !8 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %7, i64 %20
  store <16 x i8> %wide.load898, ptr %i.abh, align 1, !tbaa !8
  %index.next898 = add nuw i64 %index897, 16      ; 2 uses
  %24 = add nuw nsw i64 %19, 16
  %i.abi = icmp eq i64 %index.next898, %n.vec893
  br i1 %i.abi, label %middle.block900, label %vector.body896, !llvm.loop !29

middle.block900:                                  ; preds = %vector.body896
  %i.abj = extractelement <16 x i8> %wide.load898, i64 15
  %25 = trunc nuw nsw i64 %n.vec893 to i32
  %26 = add i32 %.0294606, %25
  %27 = trunc i64 %19 to i32
  %i.abk = add i32 %27, 1
  %28 = icmp ugt i32 %8, %i.abk
  %cmp.n901 = icmp eq i64 %n.vec893, %11
  br i1 %cmp.n901, label %.loopexit, label %vec.epilog.iter.check906

vec.epilog.iter.check906:                         ; preds = %middle.block900
  %min.epilog.iters.check907 = icmp eq i64 %15, 0
  br i1 %min.epilog.iters.check907, label %.preheader.preheader, label %vec.epilog.ph908, !prof !30

vec.epilog.ph908:                                 ; preds = %vector.main.loop.iter.check890, %vec.epilog.iter.check906
  %vec.epilog.resume.val901 = phi i64 [ %n.vec893, %vec.epilog.iter.check906 ], [ 0, %vector.main.loop.iter.check890 ]
  %bc.resume.val = phi i64 [ %16, %vec.epilog.iter.check906 ], [ %.pre, %vector.main.loop.iter.check890 ]
  %n.vec908 = and i64 %11, 2147483644             ; 5 uses
  %29 = add nuw nsw i64 %n.vec908, %.pre
  %30 = trunc nuw nsw i64 %n.vec908 to i32
  %i.abl = sub nsw i32 %i.aam, %30
  %31 = add nuw nsw i64 %bc.resume.val, 3
  br label %vec.epilog.vector.body915

vec.epilog.vector.body915:                        ; preds = %vec.epilog.vector.body915, %vec.epilog.ph908
  %index915 = phi i64 [ %vec.epilog.resume.val901, %vec.epilog.ph908 ], [ %index.next918, %vec.epilog.vector.body915 ] ; 2 uses
  %32 = phi i64 [ %31, %vec.epilog.ph908 ], [ %35, %vec.epilog.vector.body915 ] ; 2 uses
  %33 = add nuw i64 %index915, %.pre              ; 2 uses
  %34 = trunc nuw i64 %33 to i32
  %i.abm = sub i32 %34, %.1292
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %7, i64 %i.abn
  %wide.load918 = load <4 x i8>, ptr %i.abo, align 1, !tbaa !8 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %7, i64 %33
  store <4 x i8> %wide.load918, ptr %i.abp, align 1, !tbaa !8
  %index.next918 = add nuw i64 %index915, 4       ; 2 uses
  %35 = add nuw nsw i64 %32, 4
  %i.abq = icmp eq i64 %index.next918, %n.vec908
  br i1 %i.abq, label %vec.epilog.middle.block921, label %vec.epilog.vector.body915, !llvm.loop !31

vec.epilog.middle.block921:                       ; preds = %vec.epilog.vector.body915
  %i.abr = extractelement <4 x i8> %wide.load918, i64 3
  %36 = trunc nuw nsw i64 %n.vec908 to i32
  %37 = add i32 %.0294606, %36
  %38 = trunc i64 %32 to i32
  %i.abs = add i32 %38, 1
  %39 = icmp ugt i32 %8, %i.abs
  %cmp.n922 = icmp eq i64 %n.vec908, %11
  br i1 %cmp.n922, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %iter.check904, %vec.epilog.iter.check906, %vec.epilog.middle.block921
  %indvars.iv676.ph = phi i64 [ %.pre, %vector.scevcheck ], [ %.pre, %iter.check904 ], [ %16, %vec.epilog.iter.check906 ], [ %29, %vec.epilog.middle.block921 ]
  %.1271.ph = phi i32 [ %i.aam, %vector.scevcheck ], [ %i.aam, %iter.check904 ], [ %i.abf, %vec.epilog.iter.check906 ], [ %i.abl, %vec.epilog.middle.block921 ]
  br label %.preheader

split:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %i.abt = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %8, ptr noundef %i.abt, i32 noundef %i.aam) #7
  br label %.thread551

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv676 = phi i64 [ %indvars.iv.next677, %.preheader ], [ %indvars.iv676.ph, %.preheader.preheader ] ; 3 uses
  %.2296 = phi i32 [ %i.aby, %.preheader ], [ %.1271.ph, %.preheader.preheader ]
  %40 = trunc nuw i64 %indvars.iv676 to i32
  %i.abu = sub i32 %40, %.1292
  %i.abv = zext i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %7, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !8 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv676
  store i8 %i.abx, ptr %41, align 1, !tbaa !8
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next677 to i32 ; 2 uses
  %i.aby = add nsw i32 %.2296, -1                 ; 2 uses
  %i.abz = icmp ne i32 %i.aby, 0
  %42 = icmp ugt i32 %8, %indvars                 ; 2 uses
  %i.aca = and i1 %42, %i.abz
  br i1 %i.aca, label %.preheader, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block921, %middle.block900
  %.lcssa877 = phi i8 [ %i.abr, %vec.epilog.middle.block921 ], [ %i.abj, %middle.block900 ], [ %i.abx, %.preheader ]
  %.lcssa876.a = phi i32 [ %37, %vec.epilog.middle.block921 ], [ %26, %middle.block900 ], [ %indvars, %.preheader ]
  %.lcssa875 = phi i1 [ %39, %vec.epilog.middle.block921 ], [ %28, %middle.block900 ], [ %42, %.preheader ]
  %i.acb = zext i8 %.lcssa877 to i32
  br i1 %.lcssa875, label %select.unfold, label %.thread551

select.unfold:                                    ; preds = %bb.aq, %bb.bz, %.loopexit
  %.3311 = phi i32 [ %.0308598, %.loopexit ], [ %.0308598, %bb.bz ], [ %.1309523, %bb.aq ]
  %.3301 = phi i32 [ 1, %.loopexit ], [ 1, %bb.bz ], [ 0, %bb.aq ]
  %.3297 = phi i32 [ %.lcssa876.a, %.loopexit ], [ %i.lu, %bb.bz ], [ %i.gp, %bb.aq ] ; 2 uses
  %.2293 = phi i32 [ %.1292, %.loopexit ], [ %.0291607, %bb.bz ], [ %.0291607, %bb.aq ]
  %.2290 = phi i32 [ %.1289, %.loopexit ], [ %.0288614, %bb.bz ], [ %.0288614, %bb.aq ]
  %.3287 = phi i32 [ %.2286, %.loopexit ], [ %.0284621, %bb.bz ], [ %.0284621, %bb.aq ]
  %.4 = phi i32 [ %.3283, %.loopexit ], [ %.0280628, %bb.bz ], [ %.0280628, %bb.aq ]
  %.3279 = phi i32 [ %.2278, %.loopexit ], [ %i.li, %bb.bz ], [ %.1277, %bb.aq ]
  %.3 = phi i32 [ %i.acb, %.loopexit ], [ %i.lr, %bb.bz ], [ %.1275524, %bb.aq ]
  %i.acc = and i32 %.3297, %i.h
  %i.acd = load i32, ptr %i.t, align 8, !tbaa !19
  %.not345 = icmp eq i32 %i.acd, 0
  br i1 %.not345, label %bb.j, label %.thread551

.thread551:                                       ; preds = %select.unfold, %bb.fu, %.loopexit, %bb.fv, %bb.by, %bb.bz, %bb.bx, %getbit_from_table.exit425, %bb.ap, %bb.aq, %bb.ao, %bb.z, %bb.aa, %get_byte.exit.3, %split, %get_byte.exit.4, %bb.a
  %.3307 = phi i32 [ 1, %get_byte.exit.4 ], [ 2, %bb.a ], [ 1, %split ], [ 1, %get_byte.exit.3 ], [ 1, %bb.aa ], [ 1, %select.unfold ], [ 0, %bb.fu ], [ 0, %.loopexit ], [ 1, %bb.fv ], [ 1, %bb.by ], [ 0, %bb.bz ], [ 1, %bb.bx ], [ 1, %getbit_from_table.exit425 ], [ 1, %bb.ap ], [ 0, %bb.aq ], [ 1, %bb.ao ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.3307
}

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @get_byte(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 255, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @getbit_from_table(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not52 = icmp ult ptr %0, %i.e
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 2 uses
  %i.i = add i64 %i.f, %i.c                       ; 2 uses
  %.not53 = icmp ule i64 %i.h, %i.i
  %i.j = icmp ugt i64 %i.h, %i.f
  %or.cond = and i1 %i.j, %.not53
  %i.k = icmp ugt i64 %i.i, %i.g
  %or.cond54 = and i1 %i.k, %or.cond
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.m = load i16, ptr %0, align 2, !tbaa !14     ; 4 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = lshr i32 %i.p, 11
  %i.r = mul i32 %i.q, %i.n                       ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.o, align 8, !tbaa !24
  %i.v = sub nsw i32 2048, %i.n
  %i.w = lshr i32 %i.v, 5
  %i.x = trunc i32 %i.w to i16
  %i.y = add i16 %i.m, %i.x
  store i16 %i.y, ptr %0, align 2, !tbaa !14
  %i.z = icmp ult i32 %i.r, 16777216
  br i1 %i.z, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.aa = shl i32 %i.t, 8
  %i.ab = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  br label %get_byte.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ah, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 255, %bb.h ], [ %i.ag, %bb.i ]
  %i.ai = or disjoint i32 %.0.i, %i.aa
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !28
  %i.aj = shl nuw i32 %i.r, 8
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !24
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ak = sub i32 %i.p, %i.r                      ; 3 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !24
  %i.al = sub nuw i32 %i.t, %i.r                  ; 2 uses
  store i32 %i.al, ptr %i.s, align 4, !tbaa !28
  %i.am = lshr i16 %i.m, 5
  %i.an = sub i16 %i.m, %i.am
  store i16 %i.an, ptr %0, align 2, !tbaa !14
  %i.ao = icmp ult i32 %i.ak, 16777216
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = shl i32 %i.al, 8
  %i.aq = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %.not.i55 = icmp ult ptr %i.aq, %i.as
  br i1 %.not.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.at, align 8, !tbaa !19
  br label %get_byte.exit57

bb.m:                                             ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.aw, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit57

get_byte.exit57:                                  ; preds = %bb.l, %bb.m
  %.0.i56 = phi i32 [ 255, %bb.l ], [ %i.av, %bb.m ]
  %i.ax = or disjoint i32 %.0.i56, %i.ap
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !28
  %i.ay = shl nuw i32 %i.ak, 8
  store i32 %i.ay, ptr %i.o, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %get_byte.exit57, %bb.f, %get_byte.exit, %bb.d
  %.0 = phi i32 [ 255, %bb.d ], [ 0, %bb.f ], [ 0, %get_byte.exit ], [ 1, %get_byte.exit57 ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @get_100_bits_from_tablesize(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = and i32 %2, 255
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.027 = phi i32 [ 1, %bb.a ], [ %.2, %.loopexit ] ; 3 uses
  %.02326 = phi i32 [ %i.g, %bb.a ], [ %i.i, %.loopexit ] ; 2 uses
  %i.h = shl nuw nsw i32 %.02326, 1
  %i.i = and i32 %i.h, 254
  %i.j = lshr i32 %.02326, 7                      ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 8
end_hunk_1
begin_hunk_2_@get_n_bits_from_tablesize:bb.a
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bl
  %i.bn = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bm, ptr noundef %1)
  %i.bo = add nuw nsw i32 %i.bn, %i.bk            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bq
  %i.bs = tail call i32 @getbit_from_table(ptr noundef nonnull %i.br, ptr noundef %1)
  %i.bt = add nuw nsw i32 %i.bs, %i.bp            ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bv
  %i.bx = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bw, ptr noundef %1)
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = add nsw i32 %i.by, -240
  br label %get_n_bits_from_table.exit17

get_n_bits_from_table.exit17:                     ; preds = %.lr.ph.i13, %.lr.ph.i18, %.lr.ph.i
  %.0 = phi i32 [ %i.bz, %.lr.ph.i18 ], [ %i.s, %.lr.ph.i ], [ %i.al, %.lr.ph.i13 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @get_n_bits_from_table(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.a, %.lr.ph ], [ %1, %bb.a ]
  %.079 = phi i32 [ %i.f, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.a = add i32 %.010, -1                        ; 2 uses
  %i.b = shl i32 %.079, 1
  %i.c = zext i32 %.079 to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %i.e = tail call i32 @getbit_from_table(ptr noundef %i.d, ptr noundef %2)
  %i.f = add i32 %i.e, %i.b                       ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.07.lcssa = phi i32 [ 1, %bb.a ], [ %i.f, %.lr.ph ]
  %i.g = and i32 %1, 255
  %.neg = shl nsw i32 -1, %i.g
  %i.h = add i32 %.07.lcssa, %.neg
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @get_bb(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.01319 = phi i32 [ %i.i, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.01418 = phi i32 [ %i.h, %.preheader ], [ 0, %bb.a ]
  %.01517 = phi i32 [ %i.f, %.preheader ], [ 1, %bb.a ] ; 2 uses
  %i.b = zext i32 %.01517 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b
  %i.d = tail call i32 @getbit_from_table(ptr noundef %i.c, ptr noundef %2) ; 2 uses
  %i.e = shl i32 %.01517, 1
  %i.f = add i32 %i.d, %i.e
  %i.g = shl i32 %i.d, %.01319
  %i.h = or i32 %i.g, %.01418                     ; 2 uses
  %i.i = add nuw nsw i32 %.01319, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @get_bitmap(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !24
  %.promoted22 = load i32, ptr %i.c, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %.in = phi i32 [ %1, %.preheader ], [ %i.h, %bb.h ]
  %.023 = phi i32 [ 0, %.preheader ], [ %.1, %bb.h ]
  %i.f = phi i32 [ %.promoted, %.preheader ], [ %i.x, %bb.h ] ; 2 uses
  %i.g = phi i32 [ %.promoted22, %.preheader ], [ %i.w, %bb.h ] ; 3 uses
  %i.h = add nsw i32 %.in, -1                     ; 2 uses
  %i.i = lshr i32 %i.f, 1                         ; 5 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !24
  %i.j = shl i32 %.023, 1                         ; 2 uses
  %.not21 = icmp ult i32 %i.g, %i.i
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i32 %i.g, %i.i                   ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !28
  %i.l = or disjoint i32 %i.j, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]  ; 2 uses
  %i.n = icmp ult i32 %i.f, 33554432
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i32 %i.i, 8                      ; 2 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !24
  %i.p = shl i32 %i.m, 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not.i = icmp ult ptr %i.q, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 8, !tbaa !19
  br label %get_byte.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.q, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ 255, %bb.f ], [ %i.t, %bb.g ]
  %i.v = or disjoint i32 %.0.i, %i.p              ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %get_byte.exit, %bb.d
  %i.w = phi i32 [ %i.v, %get_byte.exit ], [ %i.m, %bb.d ]
  %i.x = phi i32 [ %i.o, %get_byte.exit ], [ %i.i, %bb.d ]
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.h, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %.1, %bb.h ]
  ret i32 %.016
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!11 = !{!10, !5, i64 12}
!12 = !{!10, !5, i64 4}
!13 = !{!10, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!20, !5, i64 24}
!20 = !{!"UNSP", !21, i64 0, !21, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !21, i64 32}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!20, !21, i64 0}
!24 = !{!20, !5, i64 16}
!25 = !{!20, !21, i64 8}
!26 = !{!20, !21, i64 32}
!27 = !{!20, !5, i64 28}
!28 = !{!20, !5, i64 20}
!29 = distinct !{!29, !17, !18}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = distinct !{!31, !17, !18}
!32 = distinct !{!32, !17}
end_hunk_2
