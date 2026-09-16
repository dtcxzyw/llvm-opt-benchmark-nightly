Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unsp?download=true
inline.NumInlined: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unspack:bb.a
  store i32 0, ptr %i.aa, align 4, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.v, ptr %i.ab, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.v, ptr %i.ac, align 4, !tbaa !24
  store i32 %3, ptr %7, align 4, !tbaa !25
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
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !10
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !26

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1024, ptr %i.s, align 2, !tbaa !10
  store i16 1024, ptr %0, align 2, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 47 uses
  store i32 0, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 51 uses
  store ptr %5, ptr %9, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 61 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !16
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 15 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  store i32 %1, ptr %i.ab, align 4, !tbaa !19
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !15
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !20
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !20
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !20
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread551

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !15
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !20
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
  %i.bs = phi i32 [ 0, %.lr.ph ], [ %i.adc, %select.unfold ] ; 5 uses
  %.0274638 = phi i32 [ 0, %.lr.ph ], [ %.3, %select.unfold ]
  %.0276635 = phi i32 [ 0, %.lr.ph ], [ %.3279, %select.unfold ] ; 13 uses
  %.0280628 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0284621 = phi i32 [ 1, %.lr.ph ], [ %.3287, %select.unfold ] ; 11 uses
  %.0288614 = phi i32 [ 1, %.lr.ph ], [ %.2290, %select.unfold ] ; 11 uses
  %.0291607 = phi i32 [ 1, %.lr.ph ], [ %.2293, %select.unfold ] ; 7 uses
  %.0294606 = phi i32 [ 0, %.lr.ph ], [ %.3297, %select.unfold ] ; 24 uses
  %.0298605 = phi i32 [ 0, %.lr.ph ], [ %.3301, %select.unfold ]
  %.0308598 = phi i32 [ %6, %.lr.ph ], [ %.3311, %select.unfold ] ; 4 uses
  %i.bt = shl i32 %.0276635, 4                    ; 2 uses
  %i.bu = add i32 %i.bt, %i.bs
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 5 uses
  %switch.i = icmp ult i32 %i.bx, 2
  br i1 %switch.i, label %bb.cm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 12 uses
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
  %i.cg = load i16, ptr %i.bw, align 2, !tbaa !10 ; 4 uses
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %i.cj = lshr i32 %i.ci, 11
  %i.ck = mul i32 %i.cj, %i.ch                    ; 7 uses
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !20  ; 4 uses
  %i.cm = icmp ult i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  store i32 %i.ck, ptr %i.v, align 8, !tbaa !16
  %i.cn = sub nsw i32 2048, %i.ch
  %i.co = lshr i32 %i.cn, 5
  %i.cp = trunc i32 %i.co to i16
  %i.cq = add i16 %i.cg, %i.cp
  store i16 %i.cq, ptr %i.bw, align 2, !tbaa !10
  %i.cr = icmp ult i32 %i.ck, 16777216
  br i1 %i.cr, label %bb.o, label %getbit_from_table.exit

bb.o:                                             ; preds = %bb.n
  %i.cs = shl nuw i32 %i.cl, 8
  %i.ct = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i.i = icmp ult ptr %i.ct, %i.cu
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cx, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ 255, %bb.p ], [ %i.cw, %bb.q ]
  %i.cy = or disjoint i32 %.0.i.i, %i.cs          ; 2 uses
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !20
  %i.cz = shl nuw i32 %i.ck, 8                    ; 2 uses
  store i32 %i.cz, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit

bb.r:                                             ; preds = %bb.m
  %i.da = sub i32 %i.ci, %i.ck                    ; 3 uses
  store i32 %i.da, ptr %i.v, align 8, !tbaa !16
  %i.db = sub nuw i32 %i.cl, %i.ck                ; 2 uses
  store i32 %i.db, ptr %i.u, align 4, !tbaa !20
  %i.dc = lshr i16 %i.cg, 5
  %i.dd = sub nuw i16 %i.cg, %i.dc
  store i16 %i.dd, ptr %i.bw, align 2, !tbaa !10
  %i.de = icmp ult i32 %i.da, 16777216
  br i1 %i.de, label %bb.s, label %.thread525

bb.s:                                             ; preds = %bb.r
  %i.df = shl i32 %i.db, 8
  %i.dg = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i55.i = icmp ult ptr %i.dg, %i.dh
  br i1 %.not.i55.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i

bb.u:                                             ; preds = %bb.s
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dk, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i

get_byte.exit57.i:                                ; preds = %bb.u, %bb.t
  %.0.i56.i = phi i32 [ 255, %bb.t ], [ %i.dj, %bb.u ]
  %i.dl = or disjoint i32 %.0.i56.i, %i.df
  store i32 %i.dl, ptr %i.u, align 4, !tbaa !20
  %i.dm = shl nuw i32 %i.da, 8
  store i32 %i.dm, ptr %i.v, align 8, !tbaa !16
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

end_hunk_0
begin_hunk_1_@very_real_unpack:bb.a
  %i.mh = load i32, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %i.mi = lshr i32 %i.mh, 11
  %i.mj = mul i32 %i.mi, %i.mg                    ; 6 uses
  %i.mk = load i32, ptr %i.u, align 4, !tbaa !20  ; 3 uses
  %i.ml = icmp ult i32 %i.mk, %i.mj
  br i1 %i.ml, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.mj, ptr %i.v, align 8, !tbaa !16
  %i.mm = sub nsw i32 2048, %i.mg
  %i.mn = lshr i32 %i.mm, 5
  %i.mo = trunc i32 %i.mn to i16
  %i.mp = add i16 %i.mf, %i.mo
  store i16 %i.mp, ptr %i.ly, align 2, !tbaa !10
  %i.mq = icmp ult i32 %i.mj, 16777216
  br i1 %i.mq, label %bb.ce, label %getbit_from_table.exit438

bb.ce:                                            ; preds = %bb.cd
  %i.mr = shl nuw i32 %i.mk, 8
  %i.ms = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.mt = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i.i435 = icmp ult ptr %i.ms, %i.mt
  br i1 %.not.i.i435, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i436

bb.cg:                                            ; preds = %bb.ce
  %i.mu = load i8, ptr %i.ms, align 1, !tbaa !8
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  store ptr %i.mw, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i436

get_byte.exit.i436:                               ; preds = %bb.cg, %bb.cf
  %.0.i.i437 = phi i32 [ 255, %bb.cf ], [ %i.mv, %bb.cg ]
  %i.mx = or disjoint i32 %.0.i.i437, %i.mr
  store i32 %i.mx, ptr %i.u, align 4, !tbaa !20
  %i.my = shl nuw i32 %i.mj, 8
  store i32 %i.my, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit438

bb.ch:                                            ; preds = %bb.cc
  %i.mz = sub i32 %i.mh, %i.mj                    ; 3 uses
  store i32 %i.mz, ptr %i.v, align 8, !tbaa !16
  %i.na = sub nuw i32 %i.mk, %i.mj                ; 2 uses
  store i32 %i.na, ptr %i.u, align 4, !tbaa !20
  %i.nb = lshr i16 %i.mf, 5
  %i.nc = sub nuw i16 %i.mf, %i.nb
  store i16 %i.nc, ptr %i.ly, align 2, !tbaa !10
  %i.nd = icmp ult i32 %i.mz, 16777216
  br i1 %i.nd, label %bb.ci, label %.thread545

bb.ci:                                            ; preds = %bb.ch
  %i.ne = shl i32 %i.na, 8
  %i.nf = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.ng = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i55.i432 = icmp ult ptr %i.nf, %i.ng
  br i1 %.not.i55.i432, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i433

bb.ck:                                            ; preds = %bb.ci
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !8
  %i.ni = zext i8 %i.nh to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  store ptr %i.nj, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i433

get_byte.exit57.i433:                             ; preds = %bb.ck, %bb.cj
  %.0.i56.i434 = phi i32 [ 255, %bb.cj ], [ %i.ni, %bb.ck ]
  %i.nk = or disjoint i32 %.0.i56.i434, %i.ne
  store i32 %i.nk, ptr %i.u, align 4, !tbaa !20
  %i.nl = shl nuw i32 %i.mz, 8
  store i32 %i.nl, ptr %i.v, align 8, !tbaa !16
  br label %.thread545

.thread547:                                       ; preds = %.thread539, %bb.cb
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %.thread545

.thread545:                                       ; preds = %bb.ch, %get_byte.exit57.i433, %.thread547
  %.pn565.in = add i32 %.0276635, 228
  %.pn565 = zext i32 %.pn565.in to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn565 ; 5 uses
  %.not52.i440 = icmp ult ptr %i.nm, %i.bz
  br i1 %.not52.i440, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread545
  %i.nn = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %i.np = add i64 %i.no, 2                        ; 2 uses
  %i.nq = add i64 %i.nn, %i.by                    ; 2 uses
  %.not53.i441 = icmp ule i64 %i.np, %i.nq
  %i.nr = icmp ugt i64 %i.np, %i.nn
  %or.cond.i442 = and i1 %i.nr, %.not53.i441
  %i.ns = icmp ugt i64 %i.nq, %i.no
  %or.cond54.i443 = and i1 %i.ns, %or.cond.i442
  br i1 %or.cond54.i443, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.j, %bb.cl, %.thread545
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit438

bb.cn:                                            ; preds = %bb.cl
  %i.nt = load i16, ptr %i.nm, align 2, !tbaa !10 ; 4 uses
  %i.nu = zext i16 %i.nt to i32                   ; 2 uses
  %i.nv = load i32, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %i.nw = lshr i32 %i.nv, 11
  %i.nx = mul i32 %i.nw, %i.nu                    ; 6 uses
  %i.ny = load i32, ptr %i.u, align 4, !tbaa !20  ; 3 uses
  %i.nz = icmp ult i32 %i.ny, %i.nx
  br i1 %i.nz, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  store i32 %i.nx, ptr %i.v, align 8, !tbaa !16
  %i.oa = sub nsw i32 2048, %i.nu
  %i.ob = lshr i32 %i.oa, 5
  %i.oc = trunc i32 %i.ob to i16
  %i.od = add i16 %i.nt, %i.oc
  store i16 %i.od, ptr %i.nm, align 2, !tbaa !10
  %i.oe = icmp ult i32 %i.nx, 16777216
  br i1 %i.oe, label %bb.cp, label %getbit_from_table.exit438

bb.cp:                                            ; preds = %bb.co
  %i.of = shl nuw i32 %i.ny, 8
  %i.og = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.oh = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i.i448 = icmp ult ptr %i.og, %i.oh
  br i1 %.not.i.i448, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i449

bb.cr:                                            ; preds = %bb.cp
  %i.oi = load i8, ptr %i.og, align 1, !tbaa !8
  %i.oj = zext i8 %i.oi to i32
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store ptr %i.ok, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i449

get_byte.exit.i449:                               ; preds = %bb.cr, %bb.cq
  %.0.i.i450 = phi i32 [ 255, %bb.cq ], [ %i.oj, %bb.cr ]
  %i.ol = or disjoint i32 %.0.i.i450, %i.of
  store i32 %i.ol, ptr %i.u, align 4, !tbaa !20
  %i.om = shl nuw i32 %i.nx, 8
  store i32 %i.om, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit438

bb.cs:                                            ; preds = %bb.cn
  %i.on = sub i32 %i.nv, %i.nx                    ; 3 uses
  store i32 %i.on, ptr %i.v, align 8, !tbaa !16
  %i.oo = sub nuw i32 %i.ny, %i.nx                ; 2 uses
  store i32 %i.oo, ptr %i.u, align 4, !tbaa !20
  %i.op = lshr i16 %i.nt, 5
  %i.oq = sub nuw i16 %i.nt, %i.op
  store i16 %i.oq, ptr %i.nm, align 2, !tbaa !10
  %i.or = icmp ult i32 %i.on, 16777216
  br i1 %i.or, label %bb.ct, label %getbit_from_table.exit438

bb.ct:                                            ; preds = %bb.cs
  %i.os = shl i32 %i.oo, 8
  %i.ot = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.ou = load ptr, ptr %i.z, align 8, !tbaa !17
  %.not.i55.i445 = icmp ult ptr %i.ot, %i.ou
  br i1 %.not.i55.i445, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i446

bb.cv:                                            ; preds = %bb.ct
  %i.ov = load i8, ptr %i.ot, align 1, !tbaa !8
  %i.ow = zext i8 %i.ov to i32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store ptr %i.ox, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i446

get_byte.exit57.i446:                             ; preds = %bb.cv, %bb.cu
  %.0.i56.i447 = phi i32 [ 255, %bb.cu ], [ %i.ow, %bb.cv ]
  %i.oy = or disjoint i32 %.0.i56.i447, %i.os
  store i32 %i.oy, ptr %i.u, align 4, !tbaa !20
  %i.oz = shl nuw i32 %i.on, 8
  store i32 %i.oz, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit438

getbit_from_table.exit438:                        ; preds = %bb.cm, %get_byte.exit57.i446, %bb.cs, %get_byte.exit.i449, %bb.co, %get_byte.exit.i436, %bb.cd
  %.1285 = phi i32 [ %.0284621, %get_byte.exit.i436 ], [ %.0284621, %bb.cd ], [ %.0288614, %bb.co ], [ %.0288614, %get_byte.exit.i449 ], [ %.0288614, %bb.cs ], [ %.0288614, %get_byte.exit57.i446 ], [ %.0288614, %bb.cm ]
  %.2282 = phi i32 [ %.0280628, %get_byte.exit.i436 ], [ %.0280628, %bb.cd ], [ %.0280628, %bb.co ], [ %.0280628, %get_byte.exit.i449 ], [ %.0284621, %bb.cs ], [ %.0284621, %get_byte.exit57.i446 ], [ %.0284621, %bb.cm ]
  %.1269 = phi i32 [ %.0288614, %get_byte.exit.i436 ], [ %.0288614, %bb.cd ], [ %.0284621, %bb.co ], [ %.0284621, %get_byte.exit.i449 ], [ %.0280628, %bb.cs ], [ %.0280628, %get_byte.exit57.i446 ], [ %.0280628, %bb.cm ]
  %i.pa = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bo, ptr noundef nonnull %9, i32 noundef %i.bs)
  %i.pb = icmp slt i32 %.0276635, 7
  %i.pc = select i1 %i.pb, i32 8, i32 11
  br label %bb.fu

getbit_from_table.exit399:                        ; preds = %get_byte.exit.i397, %bb.at
  %10 = icmp slt i32 %.0276635, 7
  %11 = select i1 %10, i32 7, i32 10
  %i.pd = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bm, ptr noundef nonnull %9, i32 noundef %i.bs) ; 2 uses
  %i.pe = tail call i32 @llvm.umin.i32(i32 %i.pd, i32 3)
  %i.pf = shl nuw nsw i32 %i.pe, 6
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 864
  %i.pj = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.pk = zext i32 %i.pj to i64
  %switch.i479 = icmp ult i32 %i.pj, 2            ; 5 uses
  %.promoted584 = load i32, ptr %i.v, align 8     ; 2 uses
  %.promoted585 = load i32, ptr %i.u, align 4     ; 2 uses
  %.promoted586 = load ptr, ptr %9, align 8       ; 2 uses
  %i.pl = load ptr, ptr %i.aa, align 8            ; 7 uses
  %i.pm = ptrtoint ptr %i.pl to i64               ; 7 uses
  %i.pn = add i64 %i.pm, %i.pk                    ; 12 uses
  %i.po = load ptr, ptr %i.z, align 8             ; 13 uses
  br i1 %switch.i479, label %.thread848, label %.lr.ph.i

.thread848:                                       ; preds = %getbit_from_table.exit399
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %.preheader.i454

.lr.ph.i:                                         ; preds = %getbit_from_table.exit399, %getbit_from_table.exit491
  %i.pp = phi ptr [ %i.rd, %getbit_from_table.exit491 ], [ %.promoted586, %getbit_from_table.exit399 ] ; 11 uses
  %i.pq = phi i32 [ %i.re, %getbit_from_table.exit491 ], [ %.promoted585, %getbit_from_table.exit399 ] ; 5 uses
  %i.pr = phi i32 [ %i.rf, %getbit_from_table.exit491 ], [ %.promoted584, %getbit_from_table.exit399 ] ; 3 uses
  %.010.i = phi i32 [ %i.ps, %getbit_from_table.exit491 ], [ 6, %getbit_from_table.exit399 ]
  %.079.i = phi i32 [ %i.rg, %getbit_from_table.exit491 ], [ 1, %getbit_from_table.exit399 ] ; 2 uses
  %i.ps = add nsw i32 %.010.i, -1                 ; 2 uses
  %i.pt = shl i32 %.079.i, 1
  %i.pu = zext i32 %.079.i to i64
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.pu ; 5 uses
  %.not52.i480 = icmp ult ptr %i.pv, %i.pl
  br i1 %.not52.i480, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i
  %i.pw = ptrtoint ptr %i.pv to i64               ; 2 uses
  %i.px = add i64 %i.pw, 2                        ; 2 uses
  %.not53.i481 = icmp ule i64 %i.px, %i.pn
  %i.py = icmp ugt i64 %i.px, %i.pm
  %or.cond.i482 = and i1 %i.py, %.not53.i481
  %i.pz = icmp ugt i64 %i.pn, %i.pw
  %or.cond54.i483 = and i1 %i.pz, %or.cond.i482
  br i1 %or.cond54.i483, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.lr.ph.i
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit491

bb.cy:                                            ; preds = %bb.cw
  %i.qa = load i16, ptr %i.pv, align 2, !tbaa !10 ; 4 uses
  %i.qb = zext i16 %i.qa to i32                   ; 2 uses
  %i.qc = lshr i32 %i.pr, 11
  %i.qd = mul i32 %i.qc, %i.qb                    ; 7 uses
  %i.qe = icmp ult i32 %i.pq, %i.qd
  br i1 %i.qe, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  store i32 %i.qd, ptr %i.v, align 8, !tbaa !16
  %i.qf = sub nsw i32 2048, %i.qb
  %i.qg = lshr i32 %i.qf, 5
  %i.qh = trunc i32 %i.qg to i16
  %i.qi = add i16 %i.qa, %i.qh
  store i16 %i.qi, ptr %i.pv, align 2, !tbaa !10
  %i.qj = icmp ult i32 %i.qd, 16777216
  br i1 %i.qj, label %bb.da, label %getbit_from_table.exit491

bb.da:                                            ; preds = %bb.cz
  %i.qk = shl nuw i32 %i.pq, 8
  %.not.i.i488 = icmp ult ptr %i.pp, %i.po
  br i1 %.not.i.i488, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i489

bb.dc:                                            ; preds = %bb.da
  %i.ql = load i8, ptr %i.pp, align 1, !tbaa !8
  %i.qm = zext i8 %i.ql to i32
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pp, i64 1 ; 2 uses
  store ptr %i.qn, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i489

get_byte.exit.i489:                               ; preds = %bb.dc, %bb.db
  %i.qo = phi ptr [ %i.pp, %bb.db ], [ %i.qn, %bb.dc ]
  %.0.i.i490 = phi i32 [ 255, %bb.db ], [ %i.qm, %bb.dc ]
  %i.qp = or disjoint i32 %.0.i.i490, %i.qk       ; 2 uses
  store i32 %i.qp, ptr %i.u, align 4, !tbaa !20
  %i.qq = shl nuw i32 %i.qd, 8                    ; 2 uses
  store i32 %i.qq, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit491

bb.dd:                                            ; preds = %bb.cy
  %i.qr = sub i32 %i.pr, %i.qd                    ; 4 uses
  store i32 %i.qr, ptr %i.v, align 8, !tbaa !16
  %i.qs = sub nuw i32 %i.pq, %i.qd                ; 3 uses
  store i32 %i.qs, ptr %i.u, align 4, !tbaa !20
  %i.qt = lshr i16 %i.qa, 5
  %i.qu = sub nuw i16 %i.qa, %i.qt
  store i16 %i.qu, ptr %i.pv, align 2, !tbaa !10
  %i.qv = icmp ult i32 %i.qr, 16777216
  br i1 %i.qv, label %bb.de, label %getbit_from_table.exit491

bb.de:                                            ; preds = %bb.dd
  %i.qw = shl i32 %i.qs, 8
  %.not.i55.i485 = icmp ult ptr %i.pp, %i.po
  br i1 %.not.i55.i485, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i486

bb.dg:                                            ; preds = %bb.de
  %i.qx = load i8, ptr %i.pp, align 1, !tbaa !8
  %i.qy = zext i8 %i.qx to i32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pp, i64 1 ; 2 uses
  store ptr %i.qz, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i486

get_byte.exit57.i486:                             ; preds = %bb.dg, %bb.df
  %i.ra = phi ptr [ %i.pp, %bb.df ], [ %i.qz, %bb.dg ]
  %.0.i56.i487 = phi i32 [ 255, %bb.df ], [ %i.qy, %bb.dg ]
  %i.rb = or disjoint i32 %.0.i56.i487, %i.qw     ; 2 uses
  store i32 %i.rb, ptr %i.u, align 4, !tbaa !20
  %i.rc = shl nuw i32 %i.qr, 8                    ; 2 uses
  store i32 %i.rc, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit491

getbit_from_table.exit491:                        ; preds = %bb.cx, %bb.cz, %get_byte.exit.i489, %bb.dd, %get_byte.exit57.i486
  %i.rd = phi ptr [ %i.pp, %bb.cx ], [ %i.pp, %bb.cz ], [ %i.qo, %get_byte.exit.i489 ], [ %i.ra, %get_byte.exit57.i486 ], [ %i.pp, %bb.dd ] ; 3 uses
  %i.re = phi i32 [ %i.pq, %bb.cx ], [ %i.pq, %bb.cz ], [ %i.qp, %get_byte.exit.i489 ], [ %i.rb, %get_byte.exit57.i486 ], [ %i.qs, %bb.dd ] ; 3 uses
  %i.rf = phi i32 [ %i.pr, %bb.cx ], [ %i.qd, %bb.cz ], [ %i.qq, %get_byte.exit.i489 ], [ %i.rc, %get_byte.exit57.i486 ], [ %i.qr, %bb.dd ] ; 3 uses
  %.0.i484 = phi i32 [ 255, %bb.cx ], [ 0, %bb.cz ], [ 0, %get_byte.exit.i489 ], [ 1, %get_byte.exit57.i486 ], [ 1, %bb.dd ] ; 2 uses
  %i.rg = add i32 %.0.i484, %i.pt                 ; 3 uses
  %.not.i452 = icmp eq i32 %i.ps, 0
  br i1 %.not.i452, label %get_n_bits_from_table.exit, label %.lr.ph.i

get_n_bits_from_table.exit:                       ; preds = %getbit_from_table.exit491
  %i.rh = add i32 %i.rg, -64                      ; 4 uses
  %i.ri = icmp ugt i32 %i.rh, 3
  br i1 %i.ri, label %bb.dh, label %bb.ft

bb.dh:                                            ; preds = %get_n_bits_from_table.exit
  %i.rj = and i32 %.0.i484, 1
  %i.rk = or disjoint i32 %i.rj, 2
  %i.rl = lshr i32 %i.rh, 1                       ; 2 uses
  %i.rm = add nsw i32 %i.rl, -1                   ; 2 uses
  %i.rn = and i32 %i.rm, 255
  %i.ro = shl i32 %i.rk, %i.rn                    ; 3 uses
  %i.rp = icmp slt i32 %i.rh, 14
  br i1 %i.rp, label %bb.di, label %.preheader.i454

bb.di:                                            ; preds = %bb.dh
  %reass.sub = sub i32 %i.ro, %i.rg
  %i.rq = add i32 %reass.sub, 751
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.rr
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.di, %getbit_from_table.exit504
  %i.rt = phi ptr [ %i.tf, %getbit_from_table.exit504 ], [ %i.rd, %bb.di ] ; 11 uses
  %i.ru = phi i32 [ %i.tg, %getbit_from_table.exit504 ], [ %i.re, %bb.di ] ; 5 uses
  %i.rv = phi i32 [ %i.th, %getbit_from_table.exit504 ], [ %i.rf, %bb.di ] ; 3 uses
  %.01319.i = phi i32 [ %i.tm, %getbit_from_table.exit504 ], [ 0, %bb.di ] ; 2 uses
  %.01418.i = phi i32 [ %i.tl, %getbit_from_table.exit504 ], [ 0, %bb.di ]
  %.01517.i = phi i32 [ %i.tj, %getbit_from_table.exit504 ], [ 1, %bb.di ] ; 2 uses
  %i.rw = zext i32 %.01517.i to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.rw ; 5 uses
  %.not52.i493 = icmp ult ptr %i.rx, %i.pl
  br i1 %.not52.i493, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.preheader.i
  %i.ry = ptrtoint ptr %i.rx to i64               ; 2 uses
  %i.rz = add i64 %i.ry, 2                        ; 2 uses
  %.not53.i494 = icmp ule i64 %i.rz, %i.pn
  %i.sa = icmp ugt i64 %i.rz, %i.pm
  %or.cond.i495 = and i1 %i.sa, %.not53.i494
  %i.sb = icmp ugt i64 %i.pn, %i.ry
  %or.cond54.i496 = and i1 %i.sb, %or.cond.i495
  br i1 %or.cond54.i496, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.preheader.i
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit504

bb.dl:                                            ; preds = %bb.dj
  %i.sc = load i16, ptr %i.rx, align 2, !tbaa !10 ; 4 uses
  %i.sd = zext i16 %i.sc to i32                   ; 2 uses
  %i.se = lshr i32 %i.rv, 11
  %i.sf = mul i32 %i.se, %i.sd                    ; 7 uses
  %i.sg = icmp ult i32 %i.ru, %i.sf
  br i1 %i.sg, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  store i32 %i.sf, ptr %i.v, align 8, !tbaa !16
  %i.sh = sub nsw i32 2048, %i.sd
  %i.si = lshr i32 %i.sh, 5
  %i.sj = trunc i32 %i.si to i16
  %i.sk = add i16 %i.sc, %i.sj
  store i16 %i.sk, ptr %i.rx, align 2, !tbaa !10
  %i.sl = icmp ult i32 %i.sf, 16777216
  br i1 %i.sl, label %bb.dn, label %getbit_from_table.exit504

bb.dn:                                            ; preds = %bb.dm
  %i.sm = shl nuw i32 %i.ru, 8
  %.not.i.i501 = icmp ult ptr %i.rt, %i.po
  br i1 %.not.i.i501, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i502

bb.dp:                                            ; preds = %bb.dn
  %i.sn = load i8, ptr %i.rt, align 1, !tbaa !8
  %i.so = zext i8 %i.sn to i32
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rt, i64 1 ; 2 uses
  store ptr %i.sp, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i502

get_byte.exit.i502:                               ; preds = %bb.dp, %bb.do
  %i.sq = phi ptr [ %i.rt, %bb.do ], [ %i.sp, %bb.dp ]
  %.0.i.i503 = phi i32 [ 255, %bb.do ], [ %i.so, %bb.dp ]
  %i.sr = or disjoint i32 %.0.i.i503, %i.sm       ; 2 uses
  store i32 %i.sr, ptr %i.u, align 4, !tbaa !20
  %i.ss = shl nuw i32 %i.sf, 8                    ; 2 uses
  store i32 %i.ss, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit504

bb.dq:                                            ; preds = %bb.dl
  %i.st = sub i32 %i.rv, %i.sf                    ; 4 uses
  store i32 %i.st, ptr %i.v, align 8, !tbaa !16
  %i.su = sub nuw i32 %i.ru, %i.sf                ; 3 uses
  store i32 %i.su, ptr %i.u, align 4, !tbaa !20
  %i.sv = lshr i16 %i.sc, 5
  %i.sw = sub nuw i16 %i.sc, %i.sv
  store i16 %i.sw, ptr %i.rx, align 2, !tbaa !10
  %i.sx = icmp ult i32 %i.st, 16777216
  br i1 %i.sx, label %bb.dr, label %getbit_from_table.exit504

bb.dr:                                            ; preds = %bb.dq
  %i.sy = shl i32 %i.su, 8
  %.not.i55.i498 = icmp ult ptr %i.rt, %i.po
  br i1 %.not.i55.i498, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i499

bb.dt:                                            ; preds = %bb.dr
  %i.sz = load i8, ptr %i.rt, align 1, !tbaa !8
  %i.ta = zext i8 %i.sz to i32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rt, i64 1 ; 2 uses
  store ptr %i.tb, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i499

get_byte.exit57.i499:                             ; preds = %bb.dt, %bb.ds
  %i.tc = phi ptr [ %i.rt, %bb.ds ], [ %i.tb, %bb.dt ]
  %.0.i56.i500 = phi i32 [ 255, %bb.ds ], [ %i.ta, %bb.dt ]
  %i.td = or disjoint i32 %.0.i56.i500, %i.sy     ; 2 uses
  store i32 %i.td, ptr %i.u, align 4, !tbaa !20
  %i.te = shl nuw i32 %i.st, 8                    ; 2 uses
  store i32 %i.te, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit504

getbit_from_table.exit504:                        ; preds = %bb.dk, %bb.dm, %get_byte.exit.i502, %bb.dq, %get_byte.exit57.i499
  %i.tf = phi ptr [ %i.rt, %bb.dk ], [ %i.rt, %bb.dm ], [ %i.sq, %get_byte.exit.i502 ], [ %i.tc, %get_byte.exit57.i499 ], [ %i.rt, %bb.dq ]
  %i.tg = phi i32 [ %i.ru, %bb.dk ], [ %i.ru, %bb.dm ], [ %i.sr, %get_byte.exit.i502 ], [ %i.td, %get_byte.exit57.i499 ], [ %i.su, %bb.dq ]
  %i.th = phi i32 [ %i.rv, %bb.dk ], [ %i.sf, %bb.dm ], [ %i.ss, %get_byte.exit.i502 ], [ %i.te, %get_byte.exit57.i499 ], [ %i.st, %bb.dq ]
  %.0.i497 = phi i32 [ 255, %bb.dk ], [ 0, %bb.dm ], [ 0, %get_byte.exit.i502 ], [ 1, %get_byte.exit57.i499 ], [ 1, %bb.dq ] ; 2 uses
  %i.ti = shl i32 %.01517.i, 1
  %i.tj = add i32 %.0.i497, %i.ti
  %i.tk = shl i32 %.0.i497, %.01319.i
  %i.tl = or i32 %i.tk, %.01418.i                 ; 2 uses
  %i.tm = add nuw nsw i32 %.01319.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.tm, %i.rm
  br i1 %exitcond.not.i, label %get_bb.exit, label %.preheader.i

get_bb.exit:                                      ; preds = %getbit_from_table.exit504
  %i.tn = add i32 %i.tl, %i.ro
  br label %bb.ft

.preheader.i454:                                  ; preds = %.thread848, %bb.dh
  %i.to = phi i32 [ poison, %.thread848 ], [ %i.ro, %bb.dh ]
  %i.tp = phi i32 [ 8032, %.thread848 ], [ %i.rl, %bb.dh ]
  %.promoted596843856 = phi ptr [ %.promoted586, %.thread848 ], [ %i.rd, %bb.dh ]
  %.promoted595844855 = phi i32 [ %.promoted585, %.thread848 ], [ %i.re, %bb.dh ]
  %.promoted594845854 = phi i32 [ %.promoted584, %.thread848 ], [ %i.rf, %bb.dh ]
  %i.tq = add nsw i32 %i.tp, -5
  br label %bb.du

bb.du:                                            ; preds = %bb.ea, %.preheader.i454
  %i.tr = phi ptr [ %.promoted596843856, %.preheader.i454 ], [ %.promoted593, %bb.ea ] ; 5 uses
  %.in.i = phi i32 [ %i.tq, %.preheader.i454 ], [ %i.tu, %bb.ea ]
  %.023.i = phi i32 [ 0, %.preheader.i454 ], [ %.1.i, %bb.ea ]
  %i.ts = phi i32 [ %.promoted594845854, %.preheader.i454 ], [ %.promoted591, %bb.ea ] ; 2 uses
  %i.tt = phi i32 [ %.promoted595844855, %.preheader.i454 ], [ %.promoted592, %bb.ea ] ; 3 uses
  %i.tu = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.tv = lshr i32 %i.ts, 1                       ; 5 uses
  store i32 %i.tv, ptr %i.v, align 8, !tbaa !16
  %i.tw = shl i32 %.023.i, 1                      ; 2 uses
  %.not21.i = icmp ult i32 %i.tt, %i.tv
  br i1 %.not21.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tx = sub nuw i32 %i.tt, %i.tv                ; 2 uses
  store i32 %i.tx, ptr %i.u, align 4, !tbaa !20
  %i.ty = or disjoint i32 %i.tw, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.tz = phi i32 [ %i.tx, %bb.dv ], [ %i.tt, %bb.du ] ; 2 uses
  %.1.i = phi i32 [ %i.ty, %bb.dv ], [ %i.tw, %bb.du ] ; 2 uses
  %i.ua = icmp ult i32 %i.ts, 33554432
  br i1 %i.ua, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.ub = shl nuw i32 %i.tv, 8                    ; 2 uses
  store i32 %i.ub, ptr %i.v, align 8, !tbaa !16
  %i.uc = shl i32 %i.tz, 8
  %.not.i.i456 = icmp ult ptr %i.tr, %i.po
  br i1 %.not.i.i456, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i457

bb.dz:                                            ; preds = %bb.dx
  %i.ud = load i8, ptr %i.tr, align 1, !tbaa !8
  %i.ue = zext i8 %i.ud to i32
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tr, i64 1 ; 2 uses
  store ptr %i.uf, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i457

get_byte.exit.i457:                               ; preds = %bb.dz, %bb.dy
  %i.ug = phi ptr [ %i.tr, %bb.dy ], [ %i.uf, %bb.dz ]
  %.0.i.i458 = phi i32 [ 255, %bb.dy ], [ %i.ue, %bb.dz ]
  %i.uh = or disjoint i32 %.0.i.i458, %i.uc       ; 2 uses
  store i32 %i.uh, ptr %i.u, align 4, !tbaa !20
  br label %bb.ea

bb.ea:                                            ; preds = %get_byte.exit.i457, %bb.dw
  %.promoted593 = phi ptr [ %i.ug, %get_byte.exit.i457 ], [ %i.tr, %bb.dw ] ; 12 uses
  %.promoted592 = phi i32 [ %i.uh, %get_byte.exit.i457 ], [ %i.tz, %bb.dw ] ; 6 uses
  %.promoted591 = phi i32 [ %i.ub, %get_byte.exit.i457 ], [ %i.tv, %bb.dw ] ; 4 uses
  %.not.i455 = icmp eq i32 %i.tu, 0
  br i1 %.not.i455, label %get_bitmap.exit, label %bb.du

get_bitmap.exit:                                  ; preds = %bb.ea
  %.not52.i506 = icmp ult ptr %i.bp, %i.pl
  %or.cond663 = select i1 %switch.i479, i1 true, i1 %.not52.i506
  br i1 %or.cond663, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %get_bitmap.exit
  %.not53.i507 = icmp ule i64 %i.br, %i.pn
  %i.ui = icmp ugt i64 %i.br, %i.pm
  %or.cond.i508 = and i1 %i.ui, %.not53.i507
  %i.uj = icmp ugt i64 %i.pn, %i.bq
  %or.cond54.i509 = and i1 %i.uj, %or.cond.i508
  br i1 %or.cond54.i509, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %get_bitmap.exit
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit517

bb.ed:                                            ; preds = %bb.eb
  %i.uk = load i16, ptr %i.bp, align 2, !tbaa !10 ; 4 uses
  %i.ul = zext i16 %i.uk to i32                   ; 2 uses
  %i.um = lshr i32 %.promoted591, 11
  %i.un = mul i32 %i.um, %i.ul                    ; 7 uses
  %i.uo = icmp ult i32 %.promoted592, %i.un
  br i1 %i.uo, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.un, ptr %i.v, align 8, !tbaa !16
  %i.up = sub nsw i32 2048, %i.ul
  %i.uq = lshr i32 %i.up, 5
  %i.ur = trunc i32 %i.uq to i16
  %i.us = add i16 %i.uk, %i.ur
  store i16 %i.us, ptr %i.bp, align 2, !tbaa !10
  %i.ut = icmp ult i32 %i.un, 16777216
  br i1 %i.ut, label %bb.ef, label %getbit_from_table.exit517

bb.ef:                                            ; preds = %bb.ee
  %i.uu = shl nuw i32 %.promoted592, 8
  %.not.i.i514 = icmp ult ptr %.promoted593, %i.po
  br i1 %.not.i.i514, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i515

bb.eh:                                            ; preds = %bb.ef
  %i.uv = load i8, ptr %.promoted593, align 1, !tbaa !8
  %i.uw = zext i8 %i.uv to i32
  %i.ux = getelementptr inbounds nuw i8, ptr %.promoted593, i64 1 ; 2 uses
  store ptr %i.ux, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i515

get_byte.exit.i515:                               ; preds = %bb.eh, %bb.eg
  %i.uy = phi ptr [ %.promoted593, %bb.eg ], [ %i.ux, %bb.eh ]
  %.0.i.i516 = phi i32 [ 255, %bb.eg ], [ %i.uw, %bb.eh ]
  %i.uz = or disjoint i32 %.0.i.i516, %i.uu       ; 2 uses
  store i32 %i.uz, ptr %i.u, align 4, !tbaa !20
  %i.va = shl nuw i32 %i.un, 8                    ; 2 uses
  store i32 %i.va, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517

bb.ei:                                            ; preds = %bb.ed
  %i.vb = sub i32 %.promoted591, %i.un            ; 4 uses
  store i32 %i.vb, ptr %i.v, align 8, !tbaa !16
  %i.vc = sub nuw i32 %.promoted592, %i.un        ; 3 uses
  store i32 %i.vc, ptr %i.u, align 4, !tbaa !20
  %i.vd = lshr i16 %i.uk, 5
  %i.ve = sub nuw i16 %i.uk, %i.vd
  store i16 %i.ve, ptr %i.bp, align 2, !tbaa !10
  %i.vf = icmp ult i32 %i.vb, 16777216
  br i1 %i.vf, label %bb.ej, label %getbit_from_table.exit517

bb.ej:                                            ; preds = %bb.ei
  %i.vg = shl i32 %i.vc, 8
  %.not.i55.i511 = icmp ult ptr %.promoted593, %i.po
  br i1 %.not.i55.i511, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i512

bb.el:                                            ; preds = %bb.ej
  %i.vh = load i8, ptr %.promoted593, align 1, !tbaa !8
  %i.vi = zext i8 %i.vh to i32
  %i.vj = getelementptr inbounds nuw i8, ptr %.promoted593, i64 1 ; 2 uses
  store ptr %i.vj, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i512

get_byte.exit57.i512:                             ; preds = %bb.el, %bb.ek
  %i.vk = phi ptr [ %.promoted593, %bb.ek ], [ %i.vj, %bb.el ]
  %.0.i56.i513 = phi i32 [ 255, %bb.ek ], [ %i.vi, %bb.el ]
  %i.vl = or disjoint i32 %.0.i56.i513, %i.vg     ; 2 uses
  store i32 %i.vl, ptr %i.u, align 4, !tbaa !20
  %i.vm = shl nuw i32 %i.vb, 8                    ; 2 uses
  store i32 %i.vm, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517

getbit_from_table.exit517:                        ; preds = %bb.ec, %bb.ee, %get_byte.exit.i515, %bb.ei, %get_byte.exit57.i512
  %i.vn = phi ptr [ %.promoted593, %bb.ec ], [ %.promoted593, %bb.ee ], [ %i.uy, %get_byte.exit.i515 ], [ %i.vk, %get_byte.exit57.i512 ], [ %.promoted593, %bb.ei ] ; 11 uses
  %i.vo = phi i32 [ %.promoted592, %bb.ec ], [ %.promoted592, %bb.ee ], [ %i.uz, %get_byte.exit.i515 ], [ %i.vl, %get_byte.exit57.i512 ], [ %i.vc, %bb.ei ] ; 5 uses
  %i.vp = phi i32 [ %.promoted591, %bb.ec ], [ %i.un, %bb.ee ], [ %i.va, %get_byte.exit.i515 ], [ %i.vm, %get_byte.exit57.i512 ], [ %i.vb, %bb.ei ] ; 3 uses
  %.0.i510 = phi i32 [ 255, %bb.ec ], [ 0, %bb.ee ], [ 0, %get_byte.exit.i515 ], [ 1, %get_byte.exit57.i512 ], [ 1, %bb.ei ] ; 2 uses
  %i.vq = add nuw nsw i32 %.0.i510, 2             ; 2 uses
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.vr ; 5 uses
  %.not52.i506.1 = icmp ult ptr %i.vs, %i.pl
  %or.cond663.1 = select i1 %switch.i479, i1 true, i1 %.not52.i506.1
  br i1 %or.cond663.1, label %bb.ew, label %bb.em

bb.em:                                            ; preds = %getbit_from_table.exit517
  %i.vt = ptrtoint ptr %i.vs to i64               ; 2 uses
  %i.vu = add i64 %i.vt, 2                        ; 2 uses
  %.not53.i507.1 = icmp ule i64 %i.vu, %i.pn
  %i.vv = icmp ugt i64 %i.vu, %i.pm
  %or.cond.i508.1 = and i1 %i.vv, %.not53.i507.1
  %i.vw = icmp ugt i64 %i.pn, %i.vt
  %or.cond54.i509.1 = and i1 %i.vw, %or.cond.i508.1
  br i1 %or.cond54.i509.1, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %bb.em
  %i.vx = load i16, ptr %i.vs, align 2, !tbaa !10 ; 4 uses
  %i.vy = zext i16 %i.vx to i32                   ; 2 uses
  %i.vz = lshr i32 %i.vp, 11
  %i.wa = mul i32 %i.vz, %i.vy                    ; 7 uses
  %i.wb = icmp ult i32 %i.vo, %i.wa
  br i1 %i.wb, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wc = sub i32 %i.vp, %i.wa                    ; 4 uses
  store i32 %i.wc, ptr %i.v, align 8, !tbaa !16
  %i.wd = sub nuw i32 %i.vo, %i.wa                ; 3 uses
  store i32 %i.wd, ptr %i.u, align 4, !tbaa !20
  %i.we = lshr i16 %i.vx, 5
  %i.wf = sub nuw i16 %i.vx, %i.we
  store i16 %i.wf, ptr %i.vs, align 2, !tbaa !10
  %i.wg = icmp ult i32 %i.wc, 16777216
  br i1 %i.wg, label %bb.ep, label %getbit_from_table.exit517.1

bb.ep:                                            ; preds = %bb.eo
  %i.wh = shl i32 %i.wd, 8
  %.not.i55.i511.1 = icmp ult ptr %i.vn, %i.po
end_hunk_1
begin_hunk_2_@very_real_unpack:bb.a

bb.ey:                                            ; preds = %bb.ex
  %i.xm = load i16, ptr %i.xh, align 2, !tbaa !10 ; 4 uses
  %i.xn = zext i16 %i.xm to i32                   ; 2 uses
  %i.xo = lshr i32 %i.xc, 11
  %i.xp = mul i32 %i.xo, %i.xn                    ; 7 uses
  %i.xq = icmp ult i32 %i.xb, %i.xp
  br i1 %i.xq, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xr = sub i32 %i.xc, %i.xp                    ; 4 uses
  store i32 %i.xr, ptr %i.v, align 8, !tbaa !16
  %i.xs = sub nuw i32 %i.xb, %i.xp                ; 3 uses
  store i32 %i.xs, ptr %i.u, align 4, !tbaa !20
  %i.xt = lshr i16 %i.xm, 5
  %i.xu = sub nuw i16 %i.xm, %i.xt
  store i16 %i.xu, ptr %i.xh, align 2, !tbaa !10
  %i.xv = icmp ult i32 %i.xr, 16777216
  br i1 %i.xv, label %bb.fa, label %getbit_from_table.exit517.2

bb.fa:                                            ; preds = %bb.ez
  %i.xw = shl i32 %i.xs, 8
  %.not.i55.i511.2 = icmp ult ptr %i.xa, %i.po
  br i1 %.not.i55.i511.2, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i512.2

bb.fc:                                            ; preds = %bb.fa
  %i.xx = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.xy = zext i8 %i.xx to i32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xa, i64 1 ; 2 uses
  store ptr %i.xz, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i512.2

get_byte.exit57.i512.2:                           ; preds = %bb.fc, %bb.fb
  %i.ya = phi ptr [ %i.xa, %bb.fb ], [ %i.xz, %bb.fc ]
  %.0.i56.i513.2 = phi i32 [ 255, %bb.fb ], [ %i.xy, %bb.fc ]
  %i.yb = or disjoint i32 %.0.i56.i513.2, %i.xw   ; 2 uses
  store i32 %i.yb, ptr %i.u, align 4, !tbaa !20
  %i.yc = shl nuw i32 %i.xr, 8                    ; 2 uses
  store i32 %i.yc, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517.2

bb.fd:                                            ; preds = %bb.ey
  store i32 %i.xp, ptr %i.v, align 8, !tbaa !16
  %i.yd = sub nsw i32 2048, %i.xn
  %i.ye = lshr i32 %i.yd, 5
  %i.yf = trunc i32 %i.ye to i16
  %i.yg = add i16 %i.xm, %i.yf
  store i16 %i.yg, ptr %i.xh, align 2, !tbaa !10
  %i.yh = icmp ult i32 %i.xp, 16777216
  br i1 %i.yh, label %bb.fe, label %getbit_from_table.exit517.2

bb.fe:                                            ; preds = %bb.fd
  %i.yi = shl nuw i32 %i.xb, 8
  %.not.i.i514.2 = icmp ult ptr %i.xa, %i.po
  br i1 %.not.i.i514.2, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i515.2

bb.fg:                                            ; preds = %bb.fe
  %i.yj = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.yk = zext i8 %i.yj to i32
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xa, i64 1 ; 2 uses
  store ptr %i.yl, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i515.2

get_byte.exit.i515.2:                             ; preds = %bb.fg, %bb.ff
  %i.ym = phi ptr [ %i.xa, %bb.ff ], [ %i.yl, %bb.fg ]
  %.0.i.i516.2 = phi i32 [ 255, %bb.ff ], [ %i.yk, %bb.fg ]
  %i.yn = or disjoint i32 %.0.i.i516.2, %i.yi     ; 2 uses
  store i32 %i.yn, ptr %i.u, align 4, !tbaa !20
  %i.yo = shl nuw i32 %i.xp, 8                    ; 2 uses
  store i32 %i.yo, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517.2

bb.fh:                                            ; preds = %bb.ex, %getbit_from_table.exit517.1
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit517.2

getbit_from_table.exit517.2:                      ; preds = %bb.fh, %get_byte.exit.i515.2, %bb.fd, %get_byte.exit57.i512.2, %bb.ez
  %i.yp = phi ptr [ %i.xa, %bb.fh ], [ %i.xa, %bb.fd ], [ %i.ym, %get_byte.exit.i515.2 ], [ %i.ya, %get_byte.exit57.i512.2 ], [ %i.xa, %bb.ez ] ; 6 uses
  %i.yq = phi i32 [ %i.xb, %bb.fh ], [ %i.xb, %bb.fd ], [ %i.yn, %get_byte.exit.i515.2 ], [ %i.yb, %get_byte.exit57.i512.2 ], [ %i.xs, %bb.ez ] ; 3 uses
  %i.yr = phi i32 [ %i.xc, %bb.fh ], [ %i.xp, %bb.fd ], [ %i.yo, %get_byte.exit.i515.2 ], [ %i.yc, %get_byte.exit57.i512.2 ], [ %i.xr, %bb.ez ] ; 2 uses
  %.0.i510.2 = phi i32 [ 255, %bb.fh ], [ 0, %bb.fd ], [ 0, %get_byte.exit.i515.2 ], [ 1, %get_byte.exit57.i512.2 ], [ 1, %bb.ez ] ; 2 uses
  %i.ys = shl nuw nsw i32 %i.xe, 1
  %i.yt = add nuw nsw i32 %.0.i510.2, %i.ys
  %i.yu = shl nuw nsw i32 %.0.i510.2, 2
  %i.yv = or i32 %i.xf, %i.yu
  %i.yw = zext nneg i32 %i.yt to i64
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.yw ; 5 uses
  %.not52.i506.3 = icmp ult ptr %i.yx, %i.pl
  %or.cond663.3 = select i1 %switch.i479, i1 true, i1 %.not52.i506.3
  br i1 %or.cond663.3, label %bb.fs, label %bb.fi

bb.fi:                                            ; preds = %getbit_from_table.exit517.2
  %i.yy = ptrtoint ptr %i.yx to i64               ; 2 uses
  %i.yz = add i64 %i.yy, 2                        ; 2 uses
  %.not53.i507.3 = icmp ule i64 %i.yz, %i.pn
  %i.za = icmp ugt i64 %i.yz, %i.pm
  %or.cond.i508.3 = and i1 %i.za, %.not53.i507.3
  %i.zb = icmp ugt i64 %i.pn, %i.yy
  %or.cond54.i509.3 = and i1 %i.zb, %or.cond.i508.3
  br i1 %or.cond54.i509.3, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.zc = load i16, ptr %i.yx, align 2, !tbaa !10 ; 4 uses
  %i.zd = zext i16 %i.zc to i32                   ; 2 uses
  %i.ze = lshr i32 %i.yr, 11
  %i.zf = mul i32 %i.ze, %i.zd                    ; 6 uses
  %i.zg = icmp ult i32 %i.yq, %i.zf
  br i1 %i.zg, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zh = sub i32 %i.yr, %i.zf                    ; 3 uses
  store i32 %i.zh, ptr %i.v, align 8, !tbaa !16
  %i.zi = sub nuw i32 %i.yq, %i.zf                ; 2 uses
  store i32 %i.zi, ptr %i.u, align 4, !tbaa !20
  %i.zj = lshr i16 %i.zc, 5
  %i.zk = sub nuw i16 %i.zc, %i.zj
  store i16 %i.zk, ptr %i.yx, align 2, !tbaa !10
  %i.zl = icmp ult i32 %i.zh, 16777216
  br i1 %i.zl, label %bb.fl, label %getbit_from_table.exit517.3

bb.fl:                                            ; preds = %bb.fk
  %i.zm = shl i32 %i.zi, 8
  %.not.i55.i511.3 = icmp ult ptr %i.yp, %i.po
  br i1 %.not.i55.i511.3, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit57.i512.3

bb.fn:                                            ; preds = %bb.fl
  %i.zn = load i8, ptr %i.yp, align 1, !tbaa !8
  %i.zo = zext i8 %i.zn to i32
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  store ptr %i.zp, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit57.i512.3

get_byte.exit57.i512.3:                           ; preds = %bb.fn, %bb.fm
  %.0.i56.i513.3 = phi i32 [ 255, %bb.fm ], [ %i.zo, %bb.fn ]
  %i.zq = or disjoint i32 %.0.i56.i513.3, %i.zm
  store i32 %i.zq, ptr %i.u, align 4, !tbaa !20
  %i.zr = shl nuw i32 %i.zh, 8
  store i32 %i.zr, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517.3

bb.fo:                                            ; preds = %bb.fj
  store i32 %i.zf, ptr %i.v, align 8, !tbaa !16
  %i.zs = sub nsw i32 2048, %i.zd
  %i.zt = lshr i32 %i.zs, 5
  %i.zu = trunc i32 %i.zt to i16
  %i.zv = add i16 %i.zc, %i.zu
  store i16 %i.zv, ptr %i.yx, align 2, !tbaa !10
  %i.zw = icmp ult i32 %i.zf, 16777216
  br i1 %i.zw, label %bb.fp, label %getbit_from_table.exit517.3

bb.fp:                                            ; preds = %bb.fo
  %i.zx = shl nuw i32 %i.yq, 8
  %.not.i.i514.3 = icmp ult ptr %i.yp, %i.po
  br i1 %.not.i.i514.3, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %get_byte.exit.i515.3

bb.fr:                                            ; preds = %bb.fp
  %i.zy = load i8, ptr %i.yp, align 1, !tbaa !8
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  store ptr %i.aaa, ptr %9, align 8, !tbaa !15
  br label %get_byte.exit.i515.3

get_byte.exit.i515.3:                             ; preds = %bb.fr, %bb.fq
  %.0.i.i516.3 = phi i32 [ 255, %bb.fq ], [ %i.zz, %bb.fr ]
  %i.aab = or disjoint i32 %.0.i.i516.3, %i.zx
  store i32 %i.aab, ptr %i.u, align 4, !tbaa !20
  %i.aac = shl nuw i32 %i.zf, 8
  store i32 %i.aac, ptr %i.v, align 8, !tbaa !16
  br label %getbit_from_table.exit517.3

bb.fs:                                            ; preds = %bb.fi, %getbit_from_table.exit517.2
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %getbit_from_table.exit517.3

getbit_from_table.exit517.3:                      ; preds = %bb.fs, %get_byte.exit.i515.3, %bb.fo, %get_byte.exit57.i512.3, %bb.fk
  %.0.i510.3 = phi i32 [ 2040, %bb.fs ], [ 0, %bb.fo ], [ 0, %get_byte.exit.i515.3 ], [ 8, %get_byte.exit57.i512.3 ], [ 8, %bb.fk ]
  %i.aad = or i32 %i.yv, %.0.i510.3
  %i.aae = or i32 %i.aad, %.0.i510
  %i.aaf = shl i32 %.1.i, 4
  %i.aag = add i32 %i.aaf, %i.to
  %i.aah = add i32 %i.aag, %i.aae
  br label %bb.ft

bb.ft:                                            ; preds = %get_n_bits_from_table.exit, %get_bb.exit, %getbit_from_table.exit517.3
  %.1 = phi i32 [ %i.aah, %getbit_from_table.exit517.3 ], [ %i.tn, %get_bb.exit ], [ %i.rh, %get_n_bits_from_table.exit ]
  %i.aai = add i32 %.1, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ca, %getbit_from_table.exit438, %bb.ft
  %.1292 = phi i32 [ %.1269, %getbit_from_table.exit438 ], [ %.0291607, %bb.ca ], [ %i.aai, %bb.ft ] ; 7 uses
  %.1289 = phi i32 [ %.0291607, %getbit_from_table.exit438 ], [ %.0288614, %bb.ca ], [ %.0291607, %bb.ft ]
  %.2286 = phi i32 [ %.1285, %getbit_from_table.exit438 ], [ %.0284621, %bb.ca ], [ %.0288614, %bb.ft ]
  %.3283 = phi i32 [ %.2282, %getbit_from_table.exit438 ], [ %.0280628, %bb.ca ], [ %.0284621, %bb.ft ]
  %.2278 = phi i32 [ %i.pc, %getbit_from_table.exit438 ], [ %i.lx, %bb.ca ], [ %11, %bb.ft ]
  %.0270 = phi i32 [ %i.pa, %getbit_from_table.exit438 ], [ %i.lv, %bb.ca ], [ %i.pd, %bb.ft ] ; 3 uses
  %.not365 = icmp eq i32 %.1292, 0
  br i1 %.not365, label %.thread551, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aaj = icmp ugt i32 %.1292, %.0294606
  br i1 %i.aaj, label %.thread551, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aak = add nuw nsw i32 %.0270, 2              ; 7 uses
  %i.aal = zext nneg i32 %i.aak to i64            ; 2 uses
  %.not366 = icmp ugt i32 %i.aak, %8
  %or.cond379 = select i1 %.not348, i1 true, i1 %.not366
  %.pre = zext i32 %.0294606 to i64               ; 3 uses
  br i1 %or.cond379, label %split, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aam = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  %i.aan = ptrtoint ptr %i.aam to i64             ; 2 uses
  %i.aao = add i64 %i.aal, %i.aan                 ; 2 uses
  %.not368 = icmp ule i64 %i.aao, %i.bl
  %i.aap = icmp ugt i64 %i.aao, %i.bk
  %or.cond380 = and i1 %.not368, %i.aap
  %i.aaq = icmp ugt i64 %i.bl, %i.aan
  %or.cond381 = and i1 %i.aaq, %or.cond380
  br i1 %or.cond381, label %bb.fy, label %split

bb.fy:                                            ; preds = %bb.fx
  %i.aar = sub nuw i32 %.0294606, %.1292          ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %7, i64 %i.aas
  %i.aau = ptrtoint ptr %i.aat to i64             ; 2 uses
  %i.aav = add i64 %i.aal, %i.aau                 ; 2 uses
  %.not370 = icmp ule i64 %i.aav, %i.bl
  %i.aaw = icmp ugt i64 %i.aav, %i.bk
  %or.cond382 = and i1 %.not370, %i.aaw
  %i.aax = icmp ugt i64 %i.bl, %i.aau
  %or.cond383 = and i1 %i.aax, %or.cond382
  br i1 %or.cond383, label %iter.check904, label %split

iter.check904:                                    ; preds = %bb.fy
  %i.aay = add i32 %.0294606, 1
  %umax888 = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.aay)
  %i.aaz = xor i32 %.0294606, -1
  %i.aba = add i32 %umax888, %i.aaz
  %i.abb = add nuw nsw i32 %.0270, 1
  %umin889 = tail call i32 @llvm.umin.i32(i32 %i.aba, i32 %i.abb) ; 3 uses
  %i.abc = add nuw nsw i32 %umin889, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i32 %umin889, 3
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check904
  %i.abd = add i32 %.0294606, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.abd)
  %i.abe = xor i32 %.0294606, -1
  %i.abf = add i32 %umax, %i.abe
  %i.abg = add nuw nsw i32 %.0270, 1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.abf, i32 %i.abg) ; 2 uses
  %i.abh = xor i32 %.0294606, -1
  %i.abi = icmp ugt i32 %umin, %i.abh
  %i.abj = xor i32 %i.aar, -1
  %i.abk = icmp ugt i32 %umin, %i.abj
  %i.abl = or i1 %i.abi, %i.abk
  %i.abm = sub nsw i64 %i.aas, %.pre
  %diff.check = icmp ugt i64 %i.abm, -32
  %or.cond926 = select i1 %i.abl, i1 true, i1 %diff.check
  br i1 %or.cond926, label %.preheader.preheader, label %vector.main.loop.iter.check890

vector.main.loop.iter.check890:                   ; preds = %vector.scevcheck
  %min.iters.check891 = icmp samesign ult i32 %umin889, 31
  br i1 %min.iters.check891, label %vec.epilog.ph908, label %vector.ph892

vector.ph892:                                     ; preds = %vector.main.loop.iter.check890
  %12 = and i32 %i.abc, 28
  %n.vec893 = and i32 %i.abc, 262112              ; 5 uses
  %13 = add i32 %.0294606, %n.vec893              ; 3 uses
  %14 = sub nsw i32 %i.aak, %n.vec893
  %i.abn = add i32 %.0294606, 15
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph892
  %index897 = phi i32 [ 0, %vector.ph892 ], [ %index.next899, %vector.body896 ] ; 2 uses
  %i.abo = phi i32 [ %i.abn, %vector.ph892 ], [ %i.abx, %vector.body896 ] ; 2 uses
  %i.abp = add i32 %.0294606, %index897           ; 2 uses
  %i.abq = sub i32 %i.abp, %.1292
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %7, i64 %i.abr ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %wide.load = load <16 x i8>, ptr %i.abs, align 1, !tbaa !8
  %wide.load898 = load <16 x i8>, ptr %i.abt, align 1, !tbaa !8 ; 2 uses
  %i.abu = zext i32 %i.abp to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %7, i64 %i.abu ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store <16 x i8> %wide.load, ptr %i.abv, align 1, !tbaa !8
  store <16 x i8> %wide.load898, ptr %i.abw, align 1, !tbaa !8
  %index.next899 = add nuw i32 %index897, 32      ; 2 uses
  %i.abx = add i32 %i.abo, 32
  %i.aby = icmp eq i32 %index.next899, %n.vec893
  br i1 %i.aby, label %middle.block900, label %vector.body896, !llvm.loop !27

middle.block900:                                  ; preds = %vector.body896
  %i.abz = extractelement <16 x i8> %wide.load898, i64 15
  %i.aca = add i32 %i.abo, 17
  %i.acb = icmp ult i32 %i.aca, %8
  %cmp.n901 = icmp eq i32 %i.abc, %n.vec893
  br i1 %cmp.n901, label %.loopexit, label %vec.epilog.iter.check906

vec.epilog.iter.check906:                         ; preds = %middle.block900
  %min.epilog.iters.check907 = icmp eq i32 %12, 0
  br i1 %min.epilog.iters.check907, label %.preheader.preheader, label %vec.epilog.ph908, !prof !32

vec.epilog.ph908:                                 ; preds = %vector.main.loop.iter.check890, %vec.epilog.iter.check906
  %vec.epilog.resume.val902 = phi i32 [ %n.vec893, %vec.epilog.iter.check906 ], [ 0, %vector.main.loop.iter.check890 ]
  %bc.resume.val = phi i32 [ %13, %vec.epilog.iter.check906 ], [ %.0294606, %vector.main.loop.iter.check890 ]
  %n.vec909 = and i32 %i.abc, 262140              ; 4 uses
  %15 = add i32 %.0294606, %n.vec909              ; 2 uses
  %16 = sub nsw i32 %i.aak, %n.vec909
  %i.acc = add i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body915

vec.epilog.vector.body915:                        ; preds = %vec.epilog.vector.body915, %vec.epilog.ph908
  %index916 = phi i32 [ %vec.epilog.resume.val902, %vec.epilog.ph908 ], [ %index.next919, %vec.epilog.vector.body915 ] ; 2 uses
  %i.acd = phi i32 [ %i.acc, %vec.epilog.ph908 ], [ %i.ack, %vec.epilog.vector.body915 ] ; 2 uses
  %i.ace = add i32 %.0294606, %index916           ; 2 uses
  %i.acf = sub i32 %i.ace, %.1292
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %7, i64 %i.acg
  %wide.load918 = load <4 x i8>, ptr %i.ach, align 1, !tbaa !8 ; 2 uses
  %i.aci = zext i32 %i.ace to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %7, i64 %i.aci
  store <4 x i8> %wide.load918, ptr %i.acj, align 1, !tbaa !8
  %index.next919 = add nuw i32 %index916, 4       ; 2 uses
  %i.ack = add i32 %i.acd, 4
  %i.acl = icmp eq i32 %index.next919, %n.vec909
  br i1 %i.acl, label %vec.epilog.middle.block921, label %vec.epilog.vector.body915, !llvm.loop !28

vec.epilog.middle.block921:                       ; preds = %vec.epilog.vector.body915
  %i.acm = extractelement <4 x i8> %wide.load918, i64 3
  %i.acn = add i32 %i.acd, 1
  %i.aco = icmp ult i32 %i.acn, %8
  %cmp.n922 = icmp eq i32 %i.abc, %n.vec909
  br i1 %cmp.n922, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %iter.check904, %vec.epilog.iter.check906, %vec.epilog.middle.block921
  %.2296.ph = phi i32 [ %.0294606, %vector.scevcheck ], [ %.0294606, %iter.check904 ], [ %13, %vec.epilog.iter.check906 ], [ %15, %vec.epilog.middle.block921 ]
  %.1271.ph = phi i32 [ %i.aak, %vector.scevcheck ], [ %i.aak, %iter.check904 ], [ %14, %vec.epilog.iter.check906 ], [ %16, %vec.epilog.middle.block921 ]
  br label %.preheader

split:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %i.acp = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %8, ptr noundef %i.acp, i32 noundef %i.aak) #7
  br label %.thread551

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.2296 = phi i32 [ %i.acw, %.preheader ], [ %.2296.ph, %.preheader.preheader ] ; 3 uses
  %.1271 = phi i32 [ %i.acx, %.preheader ], [ %.1271.ph, %.preheader.preheader ]
  %i.acq = sub i32 %.2296, %.1292
  %i.acr = zext i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %7, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !8 ; 2 uses
  %i.acu = zext i32 %.2296 to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %7, i64 %i.acu
  store i8 %i.act, ptr %i.acv, align 1, !tbaa !8
  %i.acw = add i32 %.2296, 1                      ; 3 uses
  %i.acx = add nsw i32 %.1271, -1                 ; 2 uses
  %i.acy = icmp ne i32 %i.acx, 0
  %i.acz = icmp ult i32 %i.acw, %8                ; 2 uses
  %i.ada = and i1 %i.acz, %i.acy
  br i1 %i.ada, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block921, %middle.block900
  %.lcssa877 = phi i8 [ %i.acm, %vec.epilog.middle.block921 ], [ %i.abz, %middle.block900 ], [ %i.act, %.preheader ]
  %.lcssa876 = phi i32 [ %15, %vec.epilog.middle.block921 ], [ %13, %middle.block900 ], [ %i.acw, %.preheader ]
  %.lcssa875 = phi i1 [ %i.aco, %vec.epilog.middle.block921 ], [ %i.acb, %middle.block900 ], [ %i.acz, %.preheader ]
  %i.adb = zext i8 %.lcssa877 to i32
  br i1 %.lcssa875, label %select.unfold, label %.thread551

select.unfold:                                    ; preds = %bb.aq, %bb.bz, %.loopexit
  %.3311 = phi i32 [ %.0308598, %.loopexit ], [ %.0308598, %bb.bz ], [ %.1309523, %bb.aq ]
  %.3301 = phi i32 [ 1, %.loopexit ], [ 1, %bb.bz ], [ 0, %bb.aq ]
  %.3297 = phi i32 [ %.lcssa876, %.loopexit ], [ %i.lu, %bb.bz ], [ %i.gp, %bb.aq ] ; 2 uses
  %.2293 = phi i32 [ %.1292, %.loopexit ], [ %.0291607, %bb.bz ], [ %.0291607, %bb.aq ]
  %.2290 = phi i32 [ %.1289, %.loopexit ], [ %.0288614, %bb.bz ], [ %.0288614, %bb.aq ]
  %.3287 = phi i32 [ %.2286, %.loopexit ], [ %.0284621, %bb.bz ], [ %.0284621, %bb.aq ]
  %.4 = phi i32 [ %.3283, %.loopexit ], [ %.0280628, %bb.bz ], [ %.0280628, %bb.aq ]
  %.3279 = phi i32 [ %.2278, %.loopexit ], [ %i.li, %bb.bz ], [ %.1277, %bb.aq ]
  %.3 = phi i32 [ %i.adb, %.loopexit ], [ %i.lr, %bb.bz ], [ %.1275524, %bb.aq ]
  %i.adc = and i32 %.3297, %i.h
  %i.add = load i32, ptr %i.t, align 8, !tbaa !14
  %.not345 = icmp eq i32 %i.add, 0
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 255, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @getbit_from_table(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
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
  store i32 1, ptr %i.l, align 8, !tbaa !14
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.m = load i16, ptr %0, align 2, !tbaa !10     ; 4 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = lshr i32 %i.p, 11
  %i.r = mul i32 %i.q, %i.n                       ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20   ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.o, align 8, !tbaa !16
  %i.v = sub nsw i32 2048, %i.n
  %i.w = lshr i32 %i.v, 5
  %i.x = trunc i32 %i.w to i16
  %i.y = add i16 %i.m, %i.x
  store i16 %i.y, ptr %0, align 2, !tbaa !10
  %i.z = icmp ult i32 %i.r, 16777216
  br i1 %i.z, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw i32 %i.t, 8
  %i.ab = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !14
  br label %get_byte.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ah, ptr %1, align 8, !tbaa !15
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 255, %bb.h ], [ %i.ag, %bb.i ]
  %i.ai = or disjoint i32 %.0.i, %i.aa
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !20
  %i.aj = shl nuw i32 %i.r, 8
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !16
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ak = sub i32 %i.p, %i.r                      ; 3 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !16
  %i.al = sub nuw i32 %i.t, %i.r                  ; 2 uses
  store i32 %i.al, ptr %i.s, align 4, !tbaa !20
  %i.am = lshr i16 %i.m, 5
  %i.an = sub nuw i16 %i.m, %i.am
  store i16 %i.an, ptr %0, align 2, !tbaa !10
  %i.ao = icmp ult i32 %i.ak, 16777216
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = shl i32 %i.al, 8
  %i.aq = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17
  %.not.i55 = icmp ult ptr %i.aq, %i.as
  br i1 %.not.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.at, align 8, !tbaa !14
  br label %get_byte.exit57

bb.m:                                             ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.aw, ptr %1, align 8, !tbaa !15
  br label %get_byte.exit57

get_byte.exit57:                                  ; preds = %bb.l, %bb.m
  %.0.i56 = phi i32 [ 255, %bb.l ], [ %i.av, %bb.m ]
  %i.ax = or disjoint i32 %.0.i56, %i.ap
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !20
  %i.ay = shl nuw i32 %i.ak, 8
  store i32 %i.ay, ptr %i.o, align 8, !tbaa !16
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
end_hunk_2
