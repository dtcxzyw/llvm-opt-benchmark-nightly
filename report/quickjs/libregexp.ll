Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@lre_parse_escape:bb.a
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21  ; 3 uses
  %i.cg = zext i8 %i.cf to i32                    ; 3 uses
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %or.cond.i112 = icmp ult i32 %i.ch, 10
  br i1 %or.cond.i112, label %from_hex.exit117.thread, label %bb.aj

bb.aj:                                            ; preds = %.preheader.preheader
  %i.ci = add i8 %i.cf, -65
  %or.cond3.i113 = icmp ult i8 %i.ci, 6
  br i1 %or.cond3.i113, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cj = add nsw i32 %i.cg, -55
  br label %from_hex.exit117.thread

bb.al:                                            ; preds = %bb.aj
  %i.ck = add nsw i32 %i.cg, -87
  %i.cl = add i8 %i.cf, -103
  %or.cond152 = icmp ult i8 %i.cl, -6
  br i1 %or.cond152, label %.thread147, label %from_hex.exit117.thread

from_hex.exit117.thread:                          ; preds = %bb.al, %.preheader.preheader, %bb.ak
  %.0.i116143 = phi i32 [ %i.ck, %bb.al ], [ %i.ch, %.preheader.preheader ], [ %i.cj, %bb.ak ]
  %i.cm = getelementptr i8, ptr %i.a, i64 8
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21  ; 3 uses
  %i.co = zext i8 %i.cn to i32                    ; 3 uses
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %or.cond.i112.1 = icmp ult i32 %i.cp, 10
  br i1 %or.cond.i112.1, label %from_hex.exit117.thread.1, label %bb.am

bb.am:                                            ; preds = %from_hex.exit117.thread
  %i.cq = add i8 %i.cn, -65
  %or.cond3.i113.1 = icmp ult i8 %i.cq, 6
  br i1 %or.cond3.i113.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = add nsw i32 %i.co, -87
  %i.cs = add i8 %i.cn, -103
  %or.cond152.1 = icmp ult i8 %i.cs, -6
  br i1 %or.cond152.1, label %.thread147, label %from_hex.exit117.thread.1

bb.ao:                                            ; preds = %bb.am
  %i.ct = add nsw i32 %i.co, -55
  br label %from_hex.exit117.thread.1

from_hex.exit117.thread.1:                        ; preds = %bb.ao, %bb.an, %from_hex.exit117.thread
  %.0.i116143.1 = phi i32 [ %i.cr, %bb.an ], [ %i.cp, %from_hex.exit117.thread ], [ %i.ct, %bb.ao ]
  %i.cu = getelementptr i8, ptr %i.a, i64 9
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !21  ; 3 uses
  %i.cw = zext i8 %i.cv to i32                    ; 3 uses
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %or.cond.i112.2 = icmp ult i32 %i.cx, 10
  br i1 %or.cond.i112.2, label %from_hex.exit117.thread.2, label %bb.ap

bb.ap:                                            ; preds = %from_hex.exit117.thread.1
  %i.cy = add i8 %i.cv, -65
  %or.cond3.i113.2 = icmp ult i8 %i.cy, 6
  br i1 %or.cond3.i113.2, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = add nsw i32 %i.cw, -87
  %i.da = add i8 %i.cv, -103
  %or.cond152.2 = icmp ult i8 %i.da, -6
  br i1 %or.cond152.2, label %.thread147, label %from_hex.exit117.thread.2

bb.ar:                                            ; preds = %bb.ap
  %i.db = add nsw i32 %i.cw, -55
  br label %from_hex.exit117.thread.2

from_hex.exit117.thread.2:                        ; preds = %bb.ar, %bb.aq, %from_hex.exit117.thread.1
  %.0.i116143.2 = phi i32 [ %i.cz, %bb.aq ], [ %i.cx, %from_hex.exit117.thread.1 ], [ %i.db, %bb.ar ]
  %i.dc = shl nsw i32 %.0.i116143, 8
  %i.dd = shl nsw i32 %.0.i116143.1, 4
  %i.de = or i32 %i.dc, %i.dd
  %i.df = or i32 %.0.i116143.2, %i.de
  %i.dg = getelementptr i8, ptr %i.a, i64 10
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21  ; 3 uses
  %i.di = zext i8 %i.dh to i32                    ; 3 uses
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %or.cond.i112.3 = icmp ult i32 %i.dj, 10
  br i1 %or.cond.i112.3, label %from_hex.exit117.thread.3, label %bb.as

bb.as:                                            ; preds = %from_hex.exit117.thread.2
  %i.dk = add i8 %i.dh, -65
  %or.cond3.i113.3 = icmp ult i8 %i.dk, 6
  br i1 %or.cond3.i113.3, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dl = add nsw i32 %i.di, -87
  %i.dm = add i8 %i.dh, -103
  %or.cond152.3 = icmp ult i8 %i.dm, -6
  br i1 %or.cond152.3, label %.thread147, label %from_hex.exit117.thread.3

bb.au:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.di, -55
  br label %from_hex.exit117.thread.3

from_hex.exit117.thread.3:                        ; preds = %bb.au, %bb.at, %from_hex.exit117.thread.2
  %.0.i116143.3 = phi i32 [ %i.dl, %bb.at ], [ %i.dj, %from_hex.exit117.thread.2 ], [ %i.dn, %bb.au ]
  %i.do = shl nsw i32 %i.df, 4
  %i.dp = or i32 %.0.i116143.3, %i.do             ; 2 uses
  %.mask.i118 = and i32 %i.dp, -1024
  %i.dq = icmp eq i32 %.mask.i118, 56320
  br i1 %i.dq, label %bb.av, label %.thread147

bb.av:                                            ; preds = %from_hex.exit117.thread.3
  %i.dr = getelementptr i8, ptr %i.a, i64 11
  %i.ds = shl nuw nsw i32 %i.bw, 10
  %i.dt = and i32 %i.ds, 1047552
  %i.du = add nuw nsw i32 %i.dt, 65536
  %i.dv = and i32 %i.dp, 1023
  %i.dw = or disjoint i32 %i.dv, %i.du
  br label %.thread147

bb.aw:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dx = zext nneg i8 %i.c to i32
  %i.dy = add nsw i32 %i.dx, -48                  ; 3 uses
  %i.dz = icmp eq i32 %1, 2
  br i1 %i.dz, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %.not = icmp eq i32 %i.dy, 0
  br i1 %.not, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.ea = load i8, ptr %i.b, align 1, !tbaa !21
  %i.eb = add i8 %i.ea, -58
  %i.ec = icmp ult i8 %i.eb, -10
  br i1 %i.ec, label %.thread147, label %.critedge

bb.az:                                            ; preds = %bb.aw
  %i.ed = load i8, ptr %i.b, align 1, !tbaa !21
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nsw i32 %i.ee, -48                  ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 7
  br i1 %i.eg, label %.thread147, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eh = shl nuw nsw i32 %i.dy, 3
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.ek = icmp samesign ugt i32 %i.ei, 31
  br i1 %i.ek, label %.thread147, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !21
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ugt i32 %i.en, 7
  br i1 %i.eo, label %.thread147, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ep = shl nuw nsw i32 %i.ei, 3
  %i.eq = or disjoint i32 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.thread147

.thread147:                                       ; preds = %bb.al, %bb.an, %bb.aq, %bb.at, %from_hex.exit99.thread, %bb.bc, %bb.az, %bb.ba, %bb.bb, %from_hex.exit111.thread.3, %bb.ah, %bb.ai, %bb.av, %from_hex.exit117.thread.3, %bb.u, %bb.a, %bb.ay, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.676 = phi ptr [ %scevgep174, %from_hex.exit117.thread.3 ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.l, %from_hex.exit99.thread ], [ %i.b, %bb.a ], [ %i.b, %bb.ay ], [ %scevgep174, %bb.ai ], [ %scevgep174, %bb.ah ], [ %scevgep174, %from_hex.exit111.thread.3 ], [ %i.ap, %bb.u ], [ %i.dr, %bb.av ], [ %i.ej, %bb.bb ], [ %i.er, %bb.bc ], [ %i.b, %bb.az ], [ %i.ej, %bb.ba ], [ %scevgep174, %bb.at ], [ %scevgep174, %bb.aq ], [ %scevgep174, %bb.an ], [ %scevgep174, %bb.al ]
  %.6 = phi i32 [ %i.bw, %from_hex.exit117.thread.3 ], [ 12, %bb.b ], [ 10, %bb.c ], [ 13, %bb.d ], [ 9, %bb.e ], [ 11, %bb.f ], [ %i.u, %from_hex.exit99.thread ], [ 8, %bb.a ], [ 0, %bb.ay ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ah ], [ %i.bw, %from_hex.exit111.thread.3 ], [ %i.al, %bb.u ], [ %i.dw, %bb.av ], [ %i.ei, %bb.bb ], [ %i.eq, %bb.bc ], [ %i.dy, %bb.az ], [ %i.ei, %bb.ba ], [ %i.bw, %bb.at ], [ %i.bw, %bb.aq ], [ %i.bw, %bb.an ], [ %i.bw, %bb.al ]
  store ptr %.676, ptr %0, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %from_hex.exit105.thread, %bb.x, %bb.z, %bb.ac, %bb.af, %bb.m, %bb.j, %bb.a, %bb.ax, %bb.ay, %.thread147
  %.279 = phi i32 [ -1, %bb.ax ], [ %.6, %.thread147 ], [ -1, %bb.m ], [ -2, %bb.a ], [ -1, %bb.ay ], [ -1, %bb.z ], [ -1, %bb.j ], [ -1, %bb.x ], [ -1, %bb.af ], [ -1, %bb.ac ], [ -1, %from_hex.exit105.thread ], [ -1, %bb.s ]
  ret i32 %.279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @lre_compile(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
dbuf_put_u16.exit:
  %7 = alloca %struct.REParseState, align 8       ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %6, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %3, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %5, ptr %i.g, align 8, !tbaa !85
  %i.h = and i32 %5, 272
  %i.i = icmp ne i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 4, !tbaa !30
  %i.l = and i32 %5, 32
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 78
  %8 = lshr i32 %5, 1
  %9 = trunc i32 %8 to i8
  %i.n = and i8 %9, 1
  store i8 %i.n, ptr %i.m, align 2, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 79
  %10 = lshr i32 %5, 2
  %11 = trunc i32 %10 to i8
  %i.p = and i8 %11, 1
  store i8 %i.p, ptr %i.o, align 1, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 80
  %12 = lshr i32 %5, 3
  %13 = trunc i32 %12 to i8
  %i.r = and i8 %13, 1
  store i8 %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 77
  %i.t = lshr i32 %5, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 1
  store i8 %i.v, ptr %i.s, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 3 uses
  store i32 1, ptr %i.w, align 4, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 -1, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 -1, ptr %i.y, align 4, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %6, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr @lre_bytecode_realloc, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  store ptr %6, ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  store ptr @lre_realloc, ptr %i.ad, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 14 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 36 uses
  %i.ag = trunc i32 %5 to i16
  call fastcc void @__dbuf_put_u16(ptr noundef nonnull %7, i16 noundef zeroext %i.ag)
  %.pre111 = load i64, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ah = icmp eq i64 %.pre, %.pre111
  br i1 %i.ah, label %bb.a, label %bb.b, !prof !42

bb.a:                                             ; preds = %dbuf_put_u16.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %dbuf_putc.exit

bb.b:                                             ; preds = %dbuf_put_u16.exit
  %i.ai = load ptr, ptr %7, align 8, !tbaa !43
  %i.aj = add i64 %.pre111, 1
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre111
  store i8 0, ptr %i.ak, align 1, !tbaa !21
  br label %dbuf_putc.exit

dbuf_putc.exit:                                   ; preds = %bb.a, %bb.b
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.am = load i64, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %dbuf_putc.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %dbuf_putc.exit83

bb.d:                                             ; preds = %dbuf_putc.exit
  %i.ao = load ptr, ptr %7, align 8, !tbaa !43
  %i.ap = add i64 %i.am, 1
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.aq, align 1, !tbaa !21
  br label %dbuf_putc.exit83

dbuf_putc.exit83:                                 ; preds = %bb.c, %bb.d
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.as = load i64, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 4
  br i1 %i.au, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %dbuf_putc.exit83
  %i.av = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %7, i32 noundef 0) ; 0 uses
  %.pre114.pre = load i64, ptr %i.af, align 8, !tbaa !40
  br label %dbuf_put_u32.exit

bb.f:                                             ; preds = %dbuf_putc.exit83
  %i.aw = load ptr, ptr %7, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  store i32 0, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.af, align 8, !tbaa !40
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  store i64 %i.az, ptr %i.af, align 8, !tbaa !40
  br label %dbuf_put_u32.exit

dbuf_put_u32.exit:                                ; preds = %bb.e, %bb.f
  %.pre114 = phi i64 [ %.pre114.pre, %bb.e ], [ %i.az, %bb.f ] ; 4 uses
  br i1 %.not, label %bb.g, label %re_emit_op_u32.exit87

bb.g:                                             ; preds = %dbuf_put_u32.exit
  %i.ba = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.bb = icmp eq i64 %i.ba, %.pre114
  br i1 %i.bb, label %bb.h, label %bb.i, !prof !42

bb.h:                                             ; preds = %bb.g
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 14)
  br label %dbuf_putc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %7, align 8, !tbaa !43
  %i.bd = add i64 %.pre114, 1
  store i64 %i.bd, ptr %i.af, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre114
  store i8 14, ptr %i.be, align 1, !tbaa !21
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.i, %bb.h
  %i.bf = load i64, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ult i64 %i.bh, 4
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !42

bb.j:                                             ; preds = %dbuf_putc.exit.i
  %i.bj = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %7, i32 noundef 6) ; 0 uses
  %.pre112 = load i64, ptr %i.af, align 8, !tbaa !40
  br label %re_emit_op_u32.exit

bb.k:                                             ; preds = %dbuf_putc.exit.i
  %i.bk = load ptr, ptr %7, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store i32 6, ptr %i.bl, align 1
  %i.bm = load i64, ptr %i.af, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, 4                        ; 2 uses
  store i64 %i.bn, ptr %i.af, align 8, !tbaa !40
  br label %re_emit_op_u32.exit

re_emit_op_u32.exit:                              ; preds = %bb.j, %bb.k
  %i.bo = phi i64 [ %.pre112, %bb.j ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.bq = icmp eq i64 %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !42

bb.l:                                             ; preds = %re_emit_op_u32.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 6)
  br label %re_emit_op.exit

bb.m:                                             ; preds = %re_emit_op_u32.exit
  %i.br = load ptr, ptr %7, align 8, !tbaa !43
  %i.bs = add i64 %i.bo, 1
  store i64 %i.bs, ptr %i.af, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i8 6, ptr %i.bt, align 1, !tbaa !21
  br label %re_emit_op.exit

re_emit_op.exit:                                  ; preds = %bb.l, %bb.m
  %i.bu = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.bv = load i64, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %re_emit_op.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 13)
  br label %dbuf_putc.exit.i86

bb.o:                                             ; preds = %re_emit_op.exit
  %i.bx = load ptr, ptr %7, align 8, !tbaa !43
  %i.by = add i64 %i.bv, 1
  store i64 %i.by, ptr %i.af, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 13, ptr %i.bz, align 1, !tbaa !21
  br label %dbuf_putc.exit.i86

dbuf_putc.exit.i86:                               ; preds = %bb.o, %bb.n
  %i.ca = load i64, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.cb = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.cc = sub i64 %i.cb, %i.ca
  %i.cd = icmp ult i64 %i.cc, 4
  br i1 %i.cd, label %bb.p, label %bb.q, !prof !42

bb.p:                                             ; preds = %dbuf_putc.exit.i86
  %i.ce = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %7, i32 noundef -11) ; 0 uses
  %.pre113 = load i64, ptr %i.af, align 8, !tbaa !40
  br label %re_emit_op_u32.exit87

bb.q:                                             ; preds = %dbuf_putc.exit.i86
  %i.cf = load ptr, ptr %7, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ca
  store i32 -11, ptr %i.cg, align 1
  %i.ch = load i64, ptr %i.af, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 4                        ; 2 uses
  store i64 %i.ci, ptr %i.af, align 8, !tbaa !40
  br label %re_emit_op_u32.exit87

re_emit_op_u32.exit87:                            ; preds = %bb.q, %bb.p, %dbuf_put_u32.exit
  %i.cj = phi i64 [ %i.ci, %bb.q ], [ %.pre113, %bb.p ], [ %.pre114, %dbuf_put_u32.exit ] ; 3 uses
  %i.ck = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.cl = icmp eq i64 %i.ck, %i.cj
  br i1 %i.cl, label %bb.r, label %bb.s, !prof !42

bb.r:                                             ; preds = %re_emit_op_u32.exit87
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 19)
  br label %dbuf_putc.exit.i88

bb.s:                                             ; preds = %re_emit_op_u32.exit87
  %i.cm = load ptr, ptr %7, align 8, !tbaa !43
  %i.cn = add i64 %i.cj, 1
  store i64 %i.cn, ptr %i.af, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj
  store i8 19, ptr %i.co, align 1, !tbaa !21
  br label %dbuf_putc.exit.i88

end_hunk_0
